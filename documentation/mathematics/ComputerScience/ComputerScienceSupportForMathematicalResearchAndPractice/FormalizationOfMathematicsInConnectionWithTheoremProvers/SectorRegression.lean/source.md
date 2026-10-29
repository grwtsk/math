# Sector Regression — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b113c973d207a3c0bf8cebbc2f2841ab5bd2e01` · SHA-256 `fa7e93fb1ba3f05e62e56c36350d376b18147ad280cbd073ce3cb747f9067d87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.SectorProducts
open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz.Sector

#check @PFOrder
#print PFOrder
#print fixture_pfThree
#print axioms fixture_pfThree
#print fixture_negative_orderFour
#print axioms fixture_negative_orderFour
#print fixture_not_pfFour
#print axioms fixture_not_pfFour

example (a : ℕ → ℝ) : PFOrder 0 a := pfOrder_zero a
example (η : ℝ) (hη : 0 ≤ η) (R : ℕ) :
    PFOrder R (Quadratic.coefficient (2 * η * Real.cos 0) (η ^ 2)) :=
  quadratic_pfOrder η 0 R hη le_rfl (by simpa using Real.pi_pos.le)
example : PFOrder 3 (Quadratic.coefficient (2 * Real.cos (Real.pi / 4)) 1) := by
  simpa using quadratic_pfOrder 1 (Real.pi / 4) 3 (by norm_num)
    (by positivity) (by norm_num; linarith)
example (r c : Fin 3 ↪o ℕ) : 0 ≤ minor (Quadratic.coefficient (3 / 2) 1) r c :=
  fixture_pfThree 3 le_rfl r c
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc8762d37acb8ecdd91e08efc3594a92efacab000c54bb1fe03fc2aa7f75b162 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fa7e93fb1ba3f05e62e56c36350d376b18147ad280cbd073ce3cb747f9067d87SectorRegression/Variantfa7e93fb1ba3f05e62e56c36350d376b18147ad280cbd073ce3cb747f9067d87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
