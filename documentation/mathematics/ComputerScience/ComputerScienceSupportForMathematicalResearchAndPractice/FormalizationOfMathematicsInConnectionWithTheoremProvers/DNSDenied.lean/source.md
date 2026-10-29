# DNSDenied — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d3501e423c0ceaf79b2d3cbc4dd956324d76af65` · SHA-256 `5a2334ffaf754272de74495f906bc88fe75601fae3109101a8188ed51805add4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/- Reserved-only DNS/network probe, with no credentials or host data. The
   independent observer must still check actual network/VM configuration. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import socket\ns=socket.socket(socket.AF_INET,socket.SOCK_DGRAM);s.settimeout(0.5)\ntry:\n s.sendto(bytes(12),('192.0.2.1',53))\nexcept OSError:\n pass\nelse:\n raise RuntimeError('reserved DNS egress was permitted')\nfinally:\n s.close()\ntry:\n socket.getaddrinfo('noe-qualification.invalid',9,type=socket.SOCK_STREAM)\nexcept socket.gaierror:\n pass\nelse:\n raise RuntimeError('reserved invalid name unexpectedly resolved')"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic DNS isolation probe failed")
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05c3f1eead0777ce8495b39b7321396e99ecda5f5912c63155d9ec3bc8c02d16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DNSDenied/Variant5a2334ffaf754272de74495f906bc88fe75601fae3109101a8188ed51805add4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
