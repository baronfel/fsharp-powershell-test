## FSharp-Powershell Add-Type Integration Test

### Init

Run `.paket/paket.exe restore` to download the FSharp.Compiler.CodeDom and FSharp.Core libraries.
The versions are described in `paket.dependencies` and explicit locked versions are in `paket.lock`

### Test

Run `fs_codedom.ps1` to demonstrate loading the CodeDom Provider and using it to generate and run code

### Result

```
D:\code\scratch> .\fs_codedom.ps1
4
3
2
1
```