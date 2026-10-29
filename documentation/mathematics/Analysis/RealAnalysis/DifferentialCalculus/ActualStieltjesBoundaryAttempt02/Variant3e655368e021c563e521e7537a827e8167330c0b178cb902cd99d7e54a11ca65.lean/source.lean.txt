-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualTermTSumOne.Variant57b857343829684873bef5942d0398a8d545580007ffb023252c6a4c6666227b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"57b857343829684873bef5942d0398a8d545580007ffb023252c6a4c6666227b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ActualTermTSumOne.Variant57b857343829684873bef5942d0398a8d545580007ffb023252c6a4c6666227b","mathematical_subject":"Analysis.Calculus","original_sha256":"57b857343829684873bef5942d0398a8d545580007ffb023252c6a4c6666227b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass21/stieltjes_boundary/ActualStieltjesBoundary-attempt02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualFirstStieltjes
import Mathlib.NumberTheory.Harmonic.ZetaAsymp
import Mathlib.Analysis.Complex.RealDeriv

/-! Actual real-right regularization and the complex boundary derivative adapter.
Research direction grwtsk contributors; focused scratch construction OpenAI Codex.
The concrete actual termTSum derivative premise is explicit until independently supplied.
No RH or arithmetic witness is asserted. -/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualTermTSumOne.Variant57b857343829684873bef5942d0398a8d545580007ffb023252c6a4c6666227b

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualStieltjesBoundary
open Set Filter
open scoped Topology
open ContinuousResearch.ActualFirstStieltjes

 theorem actual_termTSum_one :
    ZetaAsymptotics.termTSum 1 = 1-Real.eulerMascheroniConstant :=
  ZetaAsymptotics.term_tsum_one.tsum_eq

 theorem actual_regular_zeta_real_right {s : ℝ} (hs : 1 ≤ s) :
    riemannZeta₀ (s : ℂ) = ((1-s*ZetaAsymptotics.termTSum s : ℝ) : ℂ) := by
  rcases eq_or_lt_of_le hs with he | he
  · subst s
    simp [actual_termTSum_one]
  · have hc : (s : ℂ) ≠ 1 := by
      exact_mod_cast (ne_of_gt he)
    calc
      riemannZeta₀ (s : ℂ) = riemannZeta (s : ℂ)-1/((s:ℂ)-1) := by
        simp [riemannZeta₀,hc,one_div]
      _ = (((∑' n : ℕ, 1/(n+1:ℝ)^s)-1/(s-1) : ℝ) : ℂ) := by
        simp only [Complex.ofReal_sub,Complex.ofReal_div,Complex.ofReal_one,
          sub_left_inj,Complex.ofReal_tsum]
        rw [zeta_eq_tsum_one_div_nat_add_one_cpow (by simpa using he)]
        congr 1 with n
        rw [Complex.ofReal_cpow (by positivity)]
        norm_cast
      _ = _ := congrArg (fun x : ℝ => (x : ℂ)) (ZetaAsymptotics.zeta_limit_aux1 he)

 theorem actual_real_regular_derivative_of_termTSum
    (hF : HasDerivAt ZetaAsymptotics.termTSum
      (Real.eulerMascheroniConstant+firstStieltjesConstant-1) (1:ℝ)) :
    HasDerivAt (fun s : ℝ => 1-s*ZetaAsymptotics.termTSum s)
      (-firstStieltjesConstant) 1 := by
  have h := (hasDerivAt_const (1:ℝ) (1:ℝ)).sub ((hasDerivAt_id (1:ℝ)).mul hF)
  convert! h using 1
  rw [actual_termTSum_one]
  ring

 theorem actual_regular_zeta_derivative_of_termTSum
    (hF : HasDerivAt ZetaAsymptotics.termTSum
      (Real.eulerMascheroniConstant+firstStieltjesConstant-1) (1:ℝ)) :
    deriv riemannZeta₀ (1:ℂ) = -(firstStieltjesConstant:ℂ) := by
  have hreal := (actual_real_regular_derivative_of_termTSum hF).ofReal_comp.hasDerivWithinAt
    (s:=Ici (1:ℝ))
  have hright : HasDerivWithinAt (fun s : ℝ => riemannZeta₀ (s:ℂ))
      (-(firstStieltjesConstant:ℂ)) (Ici 1) 1 := by
    simpa only [Complex.ofReal_neg] using
      hreal.congr_of_mem (fun s hs => actual_regular_zeta_real_right hs) self_mem_Ici
  have hcomplex := (differentiable_riemannZeta₀ (1:ℂ)).hasDerivAt
  have hreald := hcomplex.comp_ofReal (z:= (1:ℝ))
  exact UniqueDiffWithinAt.eq_deriv (Ici (1:ℝ))
    ((uniqueDiffOn_Ici (1:ℝ)) 1 self_mem_Ici) hreald.hasDerivWithinAt hright

end ContinuousResearch.ActualStieltjesBoundary
