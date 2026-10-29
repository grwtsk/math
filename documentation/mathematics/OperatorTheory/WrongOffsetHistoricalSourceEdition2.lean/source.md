# Complete source: GRWTSK.Spectral.FiniteVolume.Checks.Negative.WrongOffset

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1fdf373632e07b497b72c50dc9030243f2b31a32` · SHA-256 `cf1c07716248cd258c7ed09e816c4dff8532c1f51c4f7961b3eb81ff66c66712`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Spectral.SturmianFiniteVolume
open GRWTSK.Spectral.SturmianFiniteVolume

-- Deliberately false contract: discard the upper shift for arbitrary signed V.
example (N : ℕ) (α V ξ : ℝ) (origin : ℤ) (E : ℝ) :
    freeCount N E ≤ sturmianCount N α V ξ origin E := by
  exact (finite_count_comparison N α V ξ origin E).1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6f8a7c51db1bcaaf53fb7080401849d4c39e220c028771f9768895463189f75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/OperatorTheory/SpectralTheory/FiniteVolume/Checks/Negative/WrongOffset__SourceOccurrence8a2aa24f91a7f48db379a308.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
