# Actual Psi Landau Dependency Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e894c423a028ae1b29b8d022a6d7537cbbfb7c39` · SHA-256 `0c7191e1ac06c917d925b1c7b79b2cc60ca7ff77eec8df7476187624bb8b6ea4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPsiIntegerExact
import FormalResearch.RiemannHypothesis.Landau.Bridge

set_option autoImplicit false
open FormalResearch.RiemannHypothesis.SourceActualPoleMomentAnnihilation
open FormalResearch.RiemannHypothesis.SourceActualPsiIntegerExact
open FormalResearch.RiemannHypothesis.Landau.Bridge

#check original_estimate_of_actual_psi_floor_upper
#print axioms original_estimate_of_actual_psi_floor_upper
#check riemann_hypothesis_of_uniform_lower_bound
#print axioms riemann_hypothesis_of_uniform_lower_bound

example {K R : ℝ} (hR : 1 ≤ R)
    (hpsi : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) :
    _root_.RiemannHypothesis := by
  exact riemann_hypothesis_of_uniform_lower_bound
    (original_estimate_of_actual_psi_floor_upper hR hpsi)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cf4ed90689be0f09a387182433d42bb3cad75e0f3eb1730382a5ad855056150 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPsiLandauDependencyAudit/Variant0c7191e1ac06c917d925b1c7b79b2cc60ca7ff77eec8df7476187624bb8b6ea4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
