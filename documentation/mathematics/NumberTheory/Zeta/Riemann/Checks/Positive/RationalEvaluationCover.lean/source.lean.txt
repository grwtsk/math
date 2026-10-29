/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRationalEvaluationCover

set_option autoImplicit false

/-!
# A source-bound closed rectangle from a checked non-real arithmetic sample

The same degree-12/16-term power data used in the preceding point example now
certify a closed disk and its inscribed rectangle. Ordinary decide scripts are
NOT executed here; external rational calculations are not a kernel replay.
The result does not enlarge the maintained height window or locate any zero.
-/
namespace GRWTSK.RiemannHypothesis.Checks.RationalEvaluationCover
open Complex Set
open CriticalStripHeightDescent CriticalStripHeightDescent.RationalEvaluationPatch
open CriticalStripHeightDescent.RationalPatchCover
open GRWTSK.Analysis.Complex.SymmetricPair.Rational

def baseOne : RationalPowerEvaluation.Proposal := ⟨12,16,⟨1,0⟩,0⟩
def baseTwo : RationalPowerEvaluation.Proposal :=
  ⟨12,16,⟨479611/1048576,-24899/65536⟩,1/524288⟩

def actual : RationalEvaluationPatch.Data where
  cutoff := 2
  point := ⟨3/4,1⟩
  evaluation := ⟨[baseOne,baseTwo]⟩
  radius := 1/128
  sigma := 1/2
  auxiliary := 1/16
  normBound := 2
  sampleLower := 9/10

theorem actual_check : actual.check=true := by decide
example : actual.derivativeBound=(269/7 : ℚ) := by decide
example : actual.sampleError=
    (589540179889963/3463461627494400 : ℚ) := by decide
example : (2/5 : ℚ) ≤ actual.margin := by decide

def box : Rectangle := ⟨191/256,193/256,255/256,257/256⟩
def packets : Fin 1 → RationalEvaluationPatch.Data := fun _ => actual
def tree : Tree 1 := .leaf 0

theorem checked : coverCheck packets tree box=true := by decide

-- Both children include their seam and reuse the same validated source patch.
def splitTree : Tree 1 := .splitReal (3/4)
  (.splitImag 1 (.leaf 0) (.leaf 0)) (.splitImag 1 (.leaf 0) (.leaf 0))
example : coverCheck packets splitTree box=true := by decide
example : box.carrier.Nonempty := cover_nonempty checked
example : coverCheck packets (.splitReal box.left (.leaf 0) (.leaf 0)) box=false := by decide

noncomputable def cover : FiniteVariationCover poleNormalizedZeta box.carrier :=
  checkedCover checked

/-- Every disk point is covered, not just the rational center or rectangle vertices. -/
theorem disk_norm_lower {s : ℂ} (hs : s ∈ actual.disk.carrier) :
    (2/5 : ℝ) ≤ ‖poleNormalizedZeta s‖ := by
  have hm : (2/5 : ℚ) ≤ actual.margin := by decide
  exact (show (2/5 : ℝ) ≤ (actual.margin : ℝ) from by exact_mod_cast hm).trans
    (RationalEvaluationPatch.Data.source_norm_lower actual_check hs)

theorem box_norm_lower {s : ℂ} (hs : s ∈ box.carrier) :
    (2/5 : ℝ) ≤ ‖poleNormalizedZeta s‖ :=
  cover_norm_lower checked (m := 2/5) (fun _ => by decide) hs

theorem box_clear : NoTargetZero box.carrier := noTargetZero_of_check checked

theorem reflected_box_clear : NoTargetZero {z | criticalReflection z ∈ box.carrier} :=
  noTargetZero_reflected checked

-- Closed exterior corners and interior points, including both rectangle real edges.
example : (⟨191/256,255/256⟩ : ℂ) ∈ box.carrier := by norm_num [box,Rectangle.carrier]
example : (⟨193/256,257/256⟩ : ℂ) ∈ box.carrier := by norm_num [box,Rectangle.carrier]
example : (⟨3/4,1⟩ : ℂ) ∈ box.carrier := by norm_num [box,Rectangle.carrier]

-- A point outside the actual cover is not licensed by any successful sample bit.
example : (⟨3/4,2⟩ : ℂ) ∉ box.carrier := by norm_num [box,Rectangle.carrier]
example : coverCheck packets tree {box with top := 2}=false := by decide
example : coverCheck packets tree {box with left := 1}=false := by decide

-- Geometry, analytic denominators, sample direction, and complete support are guards.
example : ({actual with radius := 0} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with radius := 1/32} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with auxiliary := 0} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with auxiliary := 1/2} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with sigma := 3/4} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with normBound := 1} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with sampleLower := 1} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with sampleLower := -1} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with point := ⟨3/4,2⟩} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with cutoff := 0} : RationalEvaluationPatch.Data).check=false := by decide
example : ({actual with evaluation := ⟨[baseOne]⟩} : RationalEvaluationPatch.Data).check=false := by decide

-- Adding a clear region does not erase any existing zero-permitting region.
example {U : Set ℂ} (C : ZeroIsolation.ZeroPermittingCover U) :
    (extendMixed checked C).count=C.count := rfl
example {U : Set ℂ} (C : ZeroIsolation.ZeroPermittingCover U) (i : Fin C.count) :
    (extendMixed checked C).regions i=C.regions i := rfl

-- The next window still requires an actual complete source-domain inclusion.
example {U : Set ℂ} (C : ZeroIsolation.ZeroPermittingCover U)
    (hcover : ZeroIsolation.HeightFiber.successorBox 17 ⊆ U ∪ box.carrier) : WindowRH 18 :=
  window_successor_of_mixed_extension checked SeventeenBandJet.windowRH_seventeen C hcover

end GRWTSK.RiemannHypothesis.Checks.RationalEvaluationCover
