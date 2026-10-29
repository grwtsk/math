/- Intended rejection: the actual positive zero-cutoff density sum cannot obey the proposed bound. -/
import GRWTSK.Analysis.MellinTransform.Checks.Positive.GaussianDensityMoments
open GRWTSK.Analysis.MellinTransform.GaussianDensityMoments
open GRWTSK.Analysis.MellinTransform.GaussianDensityMoments.Checks
example : ∃C : ℝ,0<C ∧
    (∑'j : ℕ,gaussianRemoteMoment exampleWindow exampleWindow_compact 0 1 1 0 j)≤
      C*(1:ℝ)^(1:ℝ)/(0:ℝ)^1 := by
  obtain ⟨C,hC,h⟩ := gaussianRemoteMoment_summed exampleWindow exampleWindow_compact 0 1 1 (by norm_num)
  exact ⟨C,hC,(h 1 0 (by norm_num) (le_refl (0:ℝ))).2⟩
