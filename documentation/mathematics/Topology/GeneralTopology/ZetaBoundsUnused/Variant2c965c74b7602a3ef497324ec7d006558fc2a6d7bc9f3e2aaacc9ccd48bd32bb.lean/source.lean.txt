-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.LogDerivZetaBndAlt.Varianta7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.LogDerivZetaBndAlt.Varianta7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25","mathematical_subject":"Topology.GeneralTopology","original_sha256":"a7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Unused/ZetaBoundsUnused.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import PrimeNumberTheoremAnd.ZetaBounds


namespace GRWTSK.Topology.GeneralTopology.LogDerivZetaBndAlt.Varianta7da6ba418da9d787836d4c5171fa032c49eeb90715ae499e9f4be5efc2f5f25

open Complex Filter Set
local notation (name := riemannzeta2) "ζ" => riemannZeta
local notation (name := derivriemannzeta2) "ζ'" => deriv riemannZeta

blueprint_comment /--
It would perhaps (?) be better to refactor this entire file so that we're not using explicit
constants but instead systematically using big Oh notation... The punchline would be:
-/

@[blueprint
  (title := "LogDerivZetaBndAlt")
  (statement := /--
    There is an $A>0$ so that for $1-A/\log^9 |t| \le \sigma < 1$ and $|t|\to\infty$,
    $$
    |\frac {\zeta'}{\zeta} (\sigma+it)| \ll \log^9 |t|.
    $$
    (Same statement but using big-Oh and filters.)
  -/)
  (proof := /-- Same as above. -/)
  (latexEnv := "lemma")]
lemma LogDerivZetaBndAlt :
    ∃ A > 0, ∀ (σ) (_ : σ ∈ Ico ((1 : ℝ) / 2) (1 : ℝ)),
    (fun (t : ℝ) ↦ ζ' (σ + t * I) / ζ (σ + t * I)) =O[cocompact ℝ ⊓
      Filter.principal {t | 1 - A / Real.log |t| ^ 9 < σ}]
        fun t ↦ Real.log |t| ^ 9 := by
  obtain ⟨A, hA, C, _, h⟩ := LogDerivZetaBnd
  refine ⟨A, hA.1, fun σ ⟨σ_ge, σ_lt⟩ ↦ ?_⟩
  -- This could all be done much cleaner; TODO: refactor
  rw [Asymptotics.isBigO_iff]
  use C
  rw [eventually_inf, cocompact_eq_atBot_atTop]
  refine ⟨{t : ℝ | 4 ≤ |t|}, ?_, {t | 1 - A / Real.log |t| ^ 9 < σ},
    fun ⦃a⦄ a ↦ a, fun t ⟨t_ge, ht⟩ ↦ ?_⟩
  · rw [mem_sup]
    refine ⟨?_, ?_⟩
    · simp only [mem_atBot_sets, mem_setOf_eq]
      refine ⟨-4, fun b hb ↦ ?_⟩
      rw [_root_.abs_of_nonpos (by linarith)]
      linarith
    · simp only [mem_atTop_sets, ge_iff_le, mem_setOf_eq]
      refine ⟨4, fun b hb ↦ ?_⟩
      rwa [_root_.abs_of_nonneg (by linarith)]
  simp only [mem_setOf_eq] at ht
  convert h σ t (by linarith [mem_Ici.mp t_ge]) ⟨ht.le, (by bound)⟩
  simp only [mem_setOf_eq] at t_ge
  have := Real.log_nonneg (by linarith : 1 ≤ |t|)
  simp only [Real.norm_eq_abs, norm_pow, abs_eq_self.mpr, this]
