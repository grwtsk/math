# Zero Flow ODEFinite Zero Configuration — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38b7384f47df9bf8e5267e94d2b77c32b0770e0e` · SHA-256 `2cfb6af624953c6957a72306676cff6214142ebccae70f3eb241f67c07e8ece8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.ResearchTopos.RodgersTaoHeat

/-!
# Folder.ResearchTopos.ZeroFlowODE

Radiation role: research-boundary
BinaryMatrix spine: This module gives a finite toy zero-flow configuration, not a BinaryMatrix theorem.
Ontology: research_topos.zero_flow_ode
Pivot role: spectral
Zero typology: debruijn-newman
Contract boundary: toy-model
Composite stack role: research-topos
-/

namespace Folder
namespace ResearchTopos

structure FiniteZeroConfiguration where
  n : Nat
  pos : Fin n → ℝ
  strictlyIncreasing :
    ∀ i j : Fin n, i.val < j.val → pos i < pos j

noncomputable def pairwiseRepulsionVelocity
    (X : FiniteZeroConfiguration)
    (k : Fin X.n) : ℝ :=
  ∑ j : Fin X.n, if _ : j = k then 0 else 2 / (X.pos k - X.pos j)

structure ZeroFlowStep where
  before : FiniteZeroConfiguration
  after : FiniteZeroConfiguration
  dt : ℝ
  updateLaw : Prop

structure ArithmeticProgressionConfiguration
    (X : FiniteZeroConfiguration) where
  spacing : ℝ
  spacing_pos : 0 < spacing
  arithmetic :
    ∀ i j : Fin X.n,
      X.pos j - X.pos i =
        (j.val : ℝ) * spacing - (i.val : ℝ) * spacing

theorem finite_zero_config_ordered
    (X : FiniteZeroConfiguration)
    {i j : Fin X.n}
    (h : i.val < j.val) :
    X.pos i < X.pos j :=
  X.strictlyIncreasing i j h

end ResearchTopos
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b4424a1a7802a57c1b1246e1065ad9500019a471de561d9c104393a8689192e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroFlowODE/Variant2cfb6af624953c6957a72306676cff6214142ebccae70f3eb241f67c07e8ece8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
