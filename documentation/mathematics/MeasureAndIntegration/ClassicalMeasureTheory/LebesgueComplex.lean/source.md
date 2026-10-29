# Lebesgue Complex — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `694263be461597ac5f6e6d1966d14bc9759f5d0c` · SHA-256 `7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.MeasureTheory.Measure.Haar.InnerProductSpace
import Mathlib.MeasureTheory.Constructions.BorelSpace.Complex

/-!
# Lebesgue measure on `ℂ`

In this file, we consider the Lebesgue measure on `ℂ` defined as the push-forward of the volume
on `ℝ²` under the natural isomorphism and prove that it is equal to the measure `volume` of `ℂ`
coming from its `InnerProductSpace` structure over `ℝ`. For that, we consider the two frequently
used ways to represent `ℝ²` in `mathlib`: `ℝ × ℝ` and `Fin 2 → ℝ`, define measurable equivalences
(`MeasurableEquiv`) to both types and prove that both of them are volume preserving (in the sense
of `MeasureTheory.measurePreserving`).
-/

open MeasureTheory

noncomputable section

namespace Complex

/-- Measurable equivalence between `ℂ` and `ℝ² = Fin 2 → ℝ`. -/
def measurableEquivPi : ℂ ≃ᵐ (Fin 2 → ℝ) :=
  basisOneI.equivFun.toContinuousLinearEquiv.toHomeomorph.toMeasurableEquiv

@[simp]
theorem measurableEquivPi_apply (a : ℂ) :
    measurableEquivPi a = ![a.re, a.im] := rfl

@[simp]
theorem measurableEquivPi_symm_apply (p : (Fin 2) → ℝ) :
    measurableEquivPi.symm p = (p 0) + (p 1) * I := rfl

/-- Measurable equivalence between `ℂ` and `ℝ × ℝ`. -/
def measurableEquivRealProd : ℂ ≃ᵐ ℝ × ℝ :=
  equivRealProdCLM.toHomeomorph.toMeasurableEquiv

@[simp]
theorem measurableEquivRealProd_apply (a : ℂ) : measurableEquivRealProd a = (a.re, a.im) := rfl

@[simp]
theorem measurableEquivRealProd_symm_apply (p : ℝ × ℝ) :
    measurableEquivRealProd.symm p = {re := p.1, im := p.2} := rfl

theorem volume_preserving_equiv_pi : MeasurePreserving measurableEquivPi := by
  convert (measurableEquivPi.symm.measurable.measurePreserving volume).symm
  rw [← addHaarMeasure_eq_volume_pi, ← Basis.parallelepiped_basisFun, ← Basis.addHaar,
    measurableEquivPi, Homeomorph.toMeasurableEquiv_symm_coe,
    ContinuousLinearEquiv.symm_toHomeomorph, ContinuousLinearEquiv.coe_toHomeomorph,
    Basis.map_addHaar, eq_comm]
  exact (Basis.addHaar_eq_iff _ _).mpr Complex.orthonormalBasisOneI.volume_parallelepiped

theorem volume_preserving_equiv_real_prod : MeasurePreserving measurableEquivRealProd :=
  (volume_preserving_finTwoArrow ℝ).comp volume_preserving_equiv_pi

end Complex
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de96dab2da120c109764cb4287415692bec77cee716111daf31c4e88fcf7d582 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Complex/Variant7300ac5a5d258028caff84d8ded945944a677db584570968a057bdaca05d23af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
