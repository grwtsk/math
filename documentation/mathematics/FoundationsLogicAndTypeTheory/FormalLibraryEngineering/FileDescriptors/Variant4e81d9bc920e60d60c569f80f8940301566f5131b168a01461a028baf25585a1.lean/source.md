# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FileDescriptors.Variant4e81d9bc920e60d60c569f80f8940301566f5131b168a01461a028baf25585a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50fb0b1d58b7f62640b2eadbc02d5891dc626417` · SHA-256 `4e81d9bc920e60d60c569f80f8940301566f5131b168a01461a028baf25585a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/- Probe descriptor numbers only; never print environment or descriptor data. -/
#eval do
  let result ← IO.Process.output {
    cmd := "/usr/local/bin/python3"
    args := #["-I", "-B", "-c",
      "import pathlib\nextra=[p.name for p in pathlib.Path('/proc/self/fd').iterdir() if p.name not in ('0','1','2') and p.exists()]\nassert not extra"]
  }
  if result.exitCode != 0 then
    throw (IO.userError "synthetic unexpected-descriptor probe failed")
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=679c3a164f1b8ef875b84fe85817a13232a12d0db96f7ddf3eefcddc1d980ed0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FileDescriptors/Variant4e81d9bc920e60d60c569f80f8940301566f5131b168a01461a028baf25585a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
