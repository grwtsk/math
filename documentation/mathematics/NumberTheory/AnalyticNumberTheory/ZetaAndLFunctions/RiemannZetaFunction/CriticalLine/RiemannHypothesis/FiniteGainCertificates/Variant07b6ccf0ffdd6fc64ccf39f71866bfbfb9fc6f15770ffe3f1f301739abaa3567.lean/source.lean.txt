-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CertifiedAction.Variantc8a5857b77dd57d284ac676c42d2d693be66e9d874fa75e027752d3a4b99da53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c8a5857b77dd57d284ac676c42d2d693be66e9d874fa75e027752d3a4b99da53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CertifiedAction.Variantc8a5857b77dd57d284ac676c42d2d693be66e9d874fa75e027752d3a4b99da53","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c8a5857b77dd57d284ac676c42d2d693be66e9d874fa75e027752d3a4b99da53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/FiniteGainCertificates.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/-!
# Exact finite gain certificates

Positive gain improves the desired lower bound. All uncontrolled successors of
an exposed action must satisfy the certificate. Source coverage, mandatory
processing, reconstruction and a scale-independent terminal budget are separate
obligations; this module does not manufacture them.

Research direction, selection and evaluation: grwtsk contributors.
Computational and formalization assistance: OpenAI Codex / ChatGPT.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CertifiedAction.Variantc8a5857b77dd57d284ac676c42d2d693be66e9d874fa75e027752d3a4b99da53

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.FiniteGainCertificates

open scoped BigOperators

/-- Exact action mask: every retained uncontrolled successor is checked. -/
def CertifiedAction {S X : Type*} (legal : S → X → S → Prop)
    (gain : S → X → S → ℝ) (h : S → ℝ) (s : S) (a : X) : Prop :=
  ∀ s', legal s a s' → 0 ≤ gain s a s' + h s - h s'

/-- A positional policy exposes only certified actions; existence is a premise. -/
def CertifiedPolicy {S X : Type*} (legal : S → X → S → Prop)
    (gain : S → X → S → ℝ) (h : S → ℝ) (policy : S → X) : Prop :=
  ∀ s, CertifiedAction legal gain h s (policy s)

/-- The one-step sign convention matches terminal potential minus initial potential. -/
theorem edge_lower {g hi hj q e : ℝ} (hc : 0 ≤ g + hi - hj)
    (hb : g - e ≤ q) : hj - hi - e ≤ q := by
  linarith

/-- Native one-sided lifting retains accumulated signed errors and both endpoints. -/
theorem telescope {S : Type*} (s : ℕ → S) (h : S → ℝ)
    (g q e : ℕ → ℝ) (N : ℕ)
    (hc : ∀ i < N, 0 ≤ g i + h (s i) - h (s (i + 1)))
    (hb : ∀ i < N, g i - e i ≤ q i) :
    h (s N) - h (s 0) - ∑ i ∈ Finset.range N, e i ≤
      ∑ i ∈ Finset.range N, q i := by
  have hs : (∑ i ∈ Finset.range N, (h (s (i + 1)) - h (s i) - e i)) ≤
      ∑ i ∈ Finset.range N, q i := by
    apply Finset.sum_le_sum
    intro i hi
    exact edge_lower (hc i (Finset.mem_range.mp hi)) (hb i (Finset.mem_range.mp hi))
  rw [Finset.sum_sub_distrib, Finset.sum_range_sub (fun i => h (s i)) N] at hs
  exact hs

/-- A universal successor mask certifies every covered actual policy trajectory. -/
theorem policy_telescope {S X : Type*} (legal : S → X → S → Prop)
    (gain : S → X → S → ℝ) (h : S → ℝ) (policy : S → X)
    (hp : CertifiedPolicy legal gain h policy) (s : ℕ → S)
    (q e : ℕ → ℝ) (N : ℕ)
    (hl : ∀ i < N, legal (s i) (policy (s i)) (s (i + 1)))
    (hb : ∀ i < N, gain (s i) (policy (s i)) (s (i + 1)) - e i ≤ q i) :
    h (s N) - h (s 0) - ∑ i ∈ Finset.range N, e i ≤
      ∑ i ∈ Finset.range N, q i :=
  telescope s h _ q e N (fun i hi => hp _ _ (hl i hi)) hb

/-- A terminal estimate needs the combined potential/error budget for that terminal. -/
theorem terminal_lower {S : Type*} (s : ℕ → S) (h : S → ℝ)
    (g q e : ℕ → ℝ) (N : ℕ) (c : ℝ)
    (hc : ∀ i < N, 0 ≤ g i + h (s i) - h (s (i + 1)))
    (hb : ∀ i < N, g i - e i ≤ q i)
    (hbudget : h (s 0) - h (s N) + ∑ i ∈ Finset.range N, e i ≤ c) :
    -c ≤ ∑ i ∈ Finset.range N, q i := by
  have ht := telescope s h g q e N hc hb
  linarith

/-- All-prefix debt follows only when the endpoint budget holds at every prefix. -/
theorem prefix_lower {S : Type*} (s : ℕ → S) (h : S → ℝ)
    (g q e : ℕ → ℝ) (c : ℝ)
    (hc : ∀ i, 0 ≤ g i + h (s i) - h (s (i + 1)))
    (hb : ∀ i, g i - e i ≤ q i)
    (hbudget : ∀ N, h (s 0) - h (s N) + ∑ i ∈ Finset.range N, e i ≤ c) :
    ∀ N, -c ≤ ∑ i ∈ Finset.range N, q i := by
  intro N
  exact terminal_lower s h g q e N c (fun i _ => hc i) (fun i _ => hb i) (hbudget N)

/-- An exact certificate excludes a negative closed trajectory. -/
theorem closed_walk_nonneg {S : Type*} (s : ℕ → S) (h : S → ℝ)
    (g : ℕ → ℝ) (N : ℕ) (hs : s N = s 0)
    (hc : ∀ i < N, 0 ≤ g i + h (s i) - h (s (i + 1))) :
    0 ≤ ∑ i ∈ Finset.range N, g i := by
  have ht := telescope s h g g (fun _ => 0) N hc (fun _ _ => by simp)
  simpa [hs] using ht

/-- A reset of gain +c closes a prefix below -c with strictly negative gain. -/
theorem reset_negative {debt c : ℝ} (hp : debt < -c) : debt + c < 0 := by
  linarith

/-- Repetition of an actual negative closed walk defeats every finite credit.
The legal repetition/positional compatibility must be established by its caller. -/
theorem negative_walk_exceeds_credit {w : ℝ} (hw : w < 0) (c : ℝ) :
    ∃ k : ℕ, (k : ℝ) * w < -c := by
  obtain ⟨k, hk⟩ := exists_nat_gt (c / (-w))
  have hn : 0 < -w := by linarith
  have hm : c < (k : ℝ) * (-w) := (div_lt_iff₀ hn).mp hk
  exact ⟨k, by linarith⟩

/-- The sufficient nonnegative-storage route still requires a uniform error budget. -/
theorem nonnegative_storage_budget {S : Type*} (s : ℕ → S) (h : S → ℝ)
    (e : ℕ → ℝ) (N : ℕ) {initial errors : ℝ}
    (hi : h (s 0) ≤ initial) (ht : 0 ≤ h (s N))
    (he : ∑ i ∈ Finset.range N, e i ≤ errors) :
    h (s 0) - h (s N) + ∑ i ∈ Finset.range N, e i ≤ initial + errors := by
  linarith

end FormalResearch.RiemannHypothesis.FiniteGainCertificates
