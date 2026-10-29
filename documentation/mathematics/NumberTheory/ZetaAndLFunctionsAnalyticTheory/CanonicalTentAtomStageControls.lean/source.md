# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.CanonicalTentAtomStageControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f049693cd31299cad46da85ecd402b0357a8831` · SHA-256 `b9fbdb07d3fdb3e765b33aecf1d897f95b7d520aa60fc6e26baff123afdc56e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage
import GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerExplicitFormulaSource
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage.Checks

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.RiemannHypothesis.PrimePowerExplicitFormulaSource

/-- The requested linear atom-stage alignment is an actual constructed record. -/
theorem square_two_readout_alignment :
    stageReadout (squareAtomStage 2) (squareLogTest 2) =
      squareTentMangoldt 2 :=
  stageReadout_squareLogTest_eq 2

/-- The same arithmetic source is an exact finite positive Gram after the
square-root change of test. -/
theorem square_two_energy_alignment :
    stageEnergy (squareAtomStage 2) (squareRootAmplitude 2) =
      squareTentMangoldt 2 :=
  stageEnergy_squareRootAmplitude_eq 2

/-- Linear source and positive Gram coincide only after the typed test change
g -> sqrt(g), not by pretending the same test is used. -/
theorem square_two_change_of_test :
    stageReadout (squareAtomStage 2) (squareLogTest 2) =
      stageEnergy (squareAtomStage 2) (squareRootAmplitude 2) :=
  squareRoot_quadraticization 2

/-- The prior same-test obstruction remains valid. -/
theorem same_test_quadraticization_still_false :
    atomWeight (unitAtom primeTwo) * (2 : ℝ) ≠
      atomWeight (unitAtom primeTwo) * (2 : ℝ) ^ 2 :=
  atom_linear_ne_quadratic_at_two (unitAtom primeTwo)

/-- The fourth channel retains a dynamic stage rather than becoming a fourth
triangle phase. -/
theorem triangle_remains_three :
    Nat.card GRWTSK.Geometry.ThreePlusOne.TrianglePhase = 3 := by
  norm_num [GRWTSK.Geometry.ThreePlusOne.TrianglePhase]

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage.Checks
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37a6b0bc34cb0a6c355ee459605b38764c18210d9ecf87f30a2ad279fda3bb51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/CanonicalTentAtomStageControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
