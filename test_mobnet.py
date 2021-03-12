import torch

m = torch.jit.load('mobnet.pt')
m.eval()
f = torch.jit.freeze(m)
f._save_for_lite_interpreter('mobnet_lite.pt')

# torch._C._fancy_compile(f.graph, [1, 3, 224, 224])

compiled = torch._C._jit_to_backend("nnc", f, {"forward": {"sizes": [1, 3, 224, 224]}})
compiled._save_for_lite_interpreter('mobnet_compiled.pt')
