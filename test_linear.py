import torch
import torch.nn as nn

class Net(nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        self.weights = torch.ones(4, 4) * 8

    def forward(self, x):
        return x + self.weights

n = Net()
m = torch.jit.script(n)
m.eval()
f = torch.jit.freeze(m)
f._save_for_lite_interpreter('linear_lite.pt')

#torch._C._fancy_compile(f.graph, [4, 4])
compiled = torch._C._jit_to_backend("nnc", f, {"forward": {"sizes": [4, 4]}})
compiled._save_for_lite_interpreter('linear_compiled.pt')
