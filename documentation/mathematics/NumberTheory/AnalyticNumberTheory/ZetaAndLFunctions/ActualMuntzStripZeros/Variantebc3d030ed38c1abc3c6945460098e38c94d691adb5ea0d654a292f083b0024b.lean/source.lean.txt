import ActualMuntzMellinProduct
import QuarticBumpEnergy

/-! Literal actual source zero transport in its nonvanishing halfstrip.
Direction grwtsk contributors; focused scratch proof OpenAI Codex.
This transform identity does not assert a dilation closure or RH. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMuntzStripZeros
open ContinuousResearch.ActualMuntzMellinDomain ContinuousResearch.ActualMuntzMellinProduct

theorem actual_source_mellin_halfstrip_ne_zero {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) : mellin (complexSource A) s ≠ 0 := by
  exact ContinuousResearch.QuarticBumpEnergy.actual_mellin_halfstrip_nonzero hA hl hu

theorem actual_muntz_mellin_halfstrip_zero_iff {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (complexMuntz A) s = 0 ↔ riemannZeta s = 0 := by
  have hn := actual_source_mellin_halfstrip_ne_zero hA hl hu
  rw [actual_muntz_mellin_strip hA (by linarith) hu,mul_eq_zero]
  simp only [hn,or_false]

theorem actual_muntz_mellin_halfstrip_ne_zero_iff {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) (hu : s.re < 1) :
    mellin (complexMuntz A) s ≠ 0 ↔ riemannZeta s ≠ 0 :=
  not_congr (actual_muntz_mellin_halfstrip_zero_iff hA hl hu)

end ContinuousResearch.ActualMuntzStripZeros

/- Exact public type, proof and trusted dependency audits. -/

#check ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero
#print ContinuousResearch.ActualMuntzStripZeros.actual_source_mellin_halfstrip_ne_zero

#check ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff
#print ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_zero_iff

#check ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
#print axioms ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
#print ContinuousResearch.ActualMuntzStripZeros.actual_muntz_mellin_halfstrip_ne_zero_iff
