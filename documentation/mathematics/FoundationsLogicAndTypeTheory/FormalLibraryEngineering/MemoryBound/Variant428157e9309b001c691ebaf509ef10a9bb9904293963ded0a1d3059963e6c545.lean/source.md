# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MemoryBound.Variant428157e9309b001c691ebaf509ef10a9bb9904293963ded0a1d3059963e6c545

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb13f65630fad8a2a1b582f48ec554e7a6ede335` · SHA-256 `428157e9309b001c691ebaf509ef10a9bb9904293963ded0a1d3059963e6c545`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/- Qualification control for the reviewed 3 GiB parent RLIMIT_AS. The child
   verifies that inherited soft/hard limit, lowers both to 256 MiB and requires
   a caught allocation denial after an initial 32 MiB allocation. The finite
   attempt remains at most 48 allocations of 32 MiB. This probes inheritance
   and subordinate virtual-address denial, not cgroup OOM or VM physical peak.
   The separate 1 GiB workload / 1152 MiB VM bounds remain unchanged. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import resource\nexpected=3*1024*1024*1024\nif resource.getrlimit(resource.RLIMIT_AS)!=(expected,expected):\n raise RuntimeError('inherited address-space limit differs from reviewed helper')\nlimited=256*1024*1024\nresource.setrlimit(resource.RLIMIT_AS,(limited,limited))\nif resource.getrlimit(resource.RLIMIT_AS)!=(limited,limited):\n raise RuntimeError('subordinate address-space limit not established')\nblocks=[]\ntry:\n for i in range(48): blocks.append(bytearray(32*1024*1024))\nexcept MemoryError:\n if not blocks: raise RuntimeError('bounded probe could not make its initial allocation')\nelse:\n raise RuntimeError('subordinate address-space denial not observed')"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic inherited/subordinate address-space control failed")
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c68636f106cfe48b73687354fe3f2b504609cb70569e41551f095b269314fb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MemoryBound/Variant428157e9309b001c691ebaf509ef10a9bb9904293963ded0a1d3059963e6c545.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
