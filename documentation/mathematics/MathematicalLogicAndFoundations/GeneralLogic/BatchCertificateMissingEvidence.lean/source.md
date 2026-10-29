# Complete source: GRWTSK.Logic.FiniteSequences.Checks.Negative.BatchCertificateMissingEvidence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a02ba1e0733cc53ce5e2546168e13eedf188b69` · SHA-256 `f0d8510a0db792a2669e899a89284bc1f4a50bb3254e89fbb2bd50506140263a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.FiniteSequences.BatchCertificate

open GRWTSK.Logic.FiniteSequences.DecisionCertificate
open GRWTSK.Logic.FiniteSequences.BatchCertificate

-- Expected type mismatch: old evidence proves length zero of [], not of the full appended history.
example : Certificate Nat Nat :=
  { entries := [(11, 7)]
    predicate := emptyHistoryCertificate.predicate
    evidence := emptyHistoryCertificate.evidence }
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19322378ce172531899d1316e758a222c3d7f2d1d5df8543dd4498e80eea6174 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Negative/BatchCertificateMissingEvidence__SourceOccurrence14cbfaa92b39ea7d091510c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
