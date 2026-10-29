# Complete source: GRWTSK.Analysis.OperatorTheory.SpectralTheory.FiniteVolume.Checks.Negative.WrongOffset

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `382420555ea5c50bbb8a3d36860a5e37ddbc9ecf` · SHA-256 `ab76dc39a0a697d8816013289d3e61bc1cd104b17a163ea46e27dea06365e726`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.OperatorTheory.SpectralTheory.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume

-- Deliberately false contract: discard the upper shift for arbitrary signed V.
example (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    freeCount N E ≤ sturmianCount N α V ξ origin E := by
  exact (finite_count_comparison N α V ξ origin E).1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca1b24ffba52a68564924fe87dc7fd468c7e37110dbb81926eb82471b900fcbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongOffset__SourceOccurrence3caa111bdb5681ba0ba0e90a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
