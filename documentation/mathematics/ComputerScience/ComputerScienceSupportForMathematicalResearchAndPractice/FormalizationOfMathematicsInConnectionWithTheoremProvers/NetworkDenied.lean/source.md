# Network Denied — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14cdf1a309ecd5a29b0301202a8c0dd96387e4e6` · SHA-256 `5e1ec7c5ec035dd552af1f69701b8577b5a6cb635d0cf30f885d958b78205ac6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Synthetic documentation-address probe; never sends secrets or live payloads. -/
import Lean

#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import socket,sys; s=socket.socket(); s.settimeout(1);\ntry: s.connect(('192.0.2.1',9))\nexcept OSError: sys.exit(0)\nsys.exit(17)"] }
  unless result.exitCode == 0 do
    throw (IO.userError "qualification network boundary failed")
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21d6e29dee84a42b2ada05336e51eaf522af74e0db54b0c3cf57523ec71575e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NetworkDenied/Variant5e1ec7c5ec035dd552af1f69701b8577b5a6cb635d0cf30f885d958b78205ac6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
