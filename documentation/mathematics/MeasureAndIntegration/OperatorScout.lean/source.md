# Operator Scout — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccde91a09a96cf0ad4383b5eb39f605c461a7eee` · SHA-256 `028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential
import FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission
import Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

set_option autoImplicit false
namespace OperatorScoutScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison
open FixedSourceKernel FixedKernelAdmission HalfLineExponential
noncomputable section
abbrev FullH := Lp ℂ 2 (volume : Measure ℝ)

def fullShift (a : ℝ) : FullH →ₗᵢ[ℂ] FullH :=
  Lp.compMeasurePreservingₗᵢ ℂ (fun x : ℝ => x - a) (measurePreserving_sub_right volume a)

theorem fullShift_ae (a : ℝ) (f : FullH) :
    fullShift a f =ᵐ[volume] (fun x : ℝ => f (x - a)) :=
  Lp.coeFn_compMeasurePreserving f (measurePreserving_sub_right volume a)

theorem fullShift_continuous (f : FullH) : Continuous (fun a : ℝ => fullShift a f) := by
  let g : ℝ → C(ℝ, ℝ) := fun a => ⟨fun x => x - a, continuous_id.sub continuous_const⟩
  have hg : Continuous g := ContinuousMap.continuous_of_continuous_uncurry g (by
    change Continuous (fun p : ℝ × ℝ => p.2 - p.1)
    fun_prop)
  exact continuous_const.compMeasurePreservingLp hg
    (fun a => measurePreserving_sub_right volume a) (by norm_num)

theorem halfLine_zeroExtension_memLp (f : H) :
    MemLp ((Ioi (0 : ℝ)).indicator (fun x => f x)) 2 volume := by
  apply (memLp_indicator_iff_restrict measurableSet_Ioi).mpr
  exact Lp.memLp f

theorem weighted_shift_integrable (f : FullH) :
    Integrable (fun a : ℝ => (fixedKernel a : ℂ) • fullShift a f) := by
  refine (fixedKernel_integrable.norm.mul_const ‖f‖).mono' ?_ ?_
  · have hk : Integrable (fun a : ℝ => (fixedKernel a : ℂ)) := fixedKernel_integrable.ofReal
    exact hk.aestronglyMeasurable.smul (fullShift_continuous f).aestronglyMeasurable
  · filter_upwards [] with a
    simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map]
    exact le_rfl

/-- A vector-valued integral only; no half-line convolution operator is claimed here. -/
def bochnerVector (f : FullH) : FullH := ∫ a : ℝ, (fixedKernel a : ℂ) • fullShift a f

theorem bochnerVector_norm_le (f : FullH) :
    ‖bochnerVector f‖ ≤ (∫ a : ℝ, ‖fixedKernel a‖) * ‖f‖ := by
  calc
    _ ≤ ∫ a : ℝ, ‖(fixedKernel a : ℂ) • fullShift a f‖ := norm_integral_le_integral_norm _
    _ = _ := by
      simp only [norm_smul, Complex.norm_real, LinearIsometry.norm_map, integral_mul_const]

end
end OperatorScoutScratch
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=804aeb0b6aed1889b1c1b714156a20187f6e353089e0ecb10d22ecec469be480 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/OperatorScout/Variant028e72b747baa382360a45e242d376ed089803e396dfd91fc3f6dae07206f0b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
