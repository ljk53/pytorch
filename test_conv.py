import torch
import torch.nn as nn

class Net(nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        self.conv1 = nn.Sequential(
            nn.Conv2d(3, 16, 3),
            nn.BatchNorm2d(16),
            nn.ReLU6(inplace=True),
        )
        self.conv2 = nn.Sequential(
            nn.Conv2d(16, 32, 3),
            nn.BatchNorm2d(32),
            nn.ReLU6(inplace=True),
        )
        self.conv3 = nn.Sequential(
            nn.Conv2d(32, 64, 3),
            nn.BatchNorm2d(64),
            nn.ReLU6(inplace=True),
        )

    def forward(self, x):
        r1 = self.conv1(x)
        r2 = self.conv2(r1)
        return self.conv3(r2)

n = Net()
m = torch.jit.script(n)
m.eval()
torch.jit.save(m, 'conv.pt')

f = torch.jit.freeze(m)
f._save_for_lite_interpreter('conv_lite.pt')
print(f.forward(torch.ones([1, 3, 32, 32])))

#torch._C._fancy_compile(f.graph, [4, 4])
compiled = torch._C._jit_to_backend("nnc", f, {"forward": {"sizes": [1, 3, 32, 32]}})
compiled._save_for_lite_interpreter('conv_compiled.pt')
