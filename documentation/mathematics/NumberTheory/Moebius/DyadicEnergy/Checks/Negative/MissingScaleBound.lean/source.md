# Complete source: GRWTSK.NumberTheory.Moebius.DyadicEnergy.Checks.Negative.MissingScaleBound

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb1aeb177fdcfc064e031fa284b08e48084972e2` · SHA-256 `86b36769a3b90022d589e4a16d8ccfad6a1f73390e85c8bc57f70b3044b5aa8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.DyadicEnergy
open GRWTSK.RiemannHypothesis.CCC
example : _root_.RiemannHypothesis := by
  exact riemannHypothesis_of_recordingScaleBound (C := 0) (r := 0) (by norm_num)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ed7e6d8c08e3680b74edf93447159bfb3d8e9df27c04540c6f2f1cecd5482ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/DyadicEnergy/Checks/Negative/MissingScaleBound.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
