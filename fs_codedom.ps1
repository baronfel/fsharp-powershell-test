# load local deps after paket install
Add-Type -Path "./packages/FSharp.Compiler.CodeDom/lib/net40/FSharp.Compiler.CodeDom.dll"
Add-Type -Path "./packages/FSharp.Core/lib/net40/FSharp.Core.dll"

$Provider = New-Object -TypeName FSharp.Compiler.CodeDom.FSharpCodeProvider

$FSharpCode = @"
namespace Test

module Test =
    let rec loop n =
        if n <= 0 
        then () 
        else 
            printfn "%d" n
            loop (n-1)
"@

$FSharpType = Add-Type -TypeDefinition $FSharpCode -CodeDomProvider $Provider -PassThru | Where-Object { $_.IsPublic }
$FSharpType::loop(4)