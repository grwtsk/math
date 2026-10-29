# Inverse Attempt — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b352135c7988d7924c7b80c42b12400e8381659` · SHA-256 `23d67b5c7acc8f94e8f772fd1cf501f6a352c1890de66d1e3b031c3b2545a1ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import formal.c2.C1
open C2
/- Deliberately incomplete research attempt, excluded from accepted compilation.
   Failure is not refutation. Full composition obligations remain open. -/
theorem full_record_inverse (r : Record) (h : Supported r) : decode (bytes r) = some r := by
  simp only [decode, bytes, envelope]

theorem canonical_reconstruction (b : Bytes) (r : Record) (h : decode b = some r) : bytes r = b := by
  simp only [bytes, envelope]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d3dfdbb188646f376b70a58c4300425a4e547ae4fe5f87252f99f1203b701d4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InverseAttempt/Variant23d67b5c7acc8f94e8f772fd1cf501f6a352c1890de66d1e3b031c3b2545a1ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
