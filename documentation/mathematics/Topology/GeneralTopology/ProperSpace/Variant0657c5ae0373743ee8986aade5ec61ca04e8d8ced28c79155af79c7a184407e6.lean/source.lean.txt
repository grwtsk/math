-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.TangentConeAtNonemptyOfProperSpace.Variant6166c995da074c0836f914eacb79f68a7d465e0b79c870580aaa04c6985cf501","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6166c995da074c0836f914eacb79f68a7d465e0b79c870580aaa04c6985cf501","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.TangentConeAtNonemptyOfProperSpace.Variant6166c995da074c0836f914eacb79f68a7d465e0b79c870580aaa04c6985cf501","mathematical_subject":"Topology.GeneralTopology","original_sha256":"6166c995da074c0836f914eacb79f68a7d465e0b79c870580aaa04c6985cf501","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Calculus/TangentCone/ProperSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
module

public import Mathlib.Analysis.Normed.Module.Seminorm.Norm
public import Mathlib.Analysis.Calculus.TangentCone.Defs

/-!
# Tangent cone in a proper space

In this file we prove that the tangent cone of a set in a proper normed space
at an accumulation point of this set is nontrivial.
-/


namespace GRWTSK.Topology.GeneralTopology.TangentConeAtNonemptyOfProperSpace.Variant6166c995da074c0836f914eacb79f68a7d465e0b79c870580aaa04c6985cf501

public section

open Filter Set Metric NormedField
open scoped Topology

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
  {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/-- In a proper space, the tangent cone at a non-isolated point is nontrivial. -/
theorem tangentConeAt_nonempty_of_properSpace [ProperSpace E]
    {s : Set E} {x : E} (hx : AccPt x (𝓟 s)) :
    (tangentConeAt 𝕜 s x ∩ {0}ᶜ).Nonempty := by
  /- Take a sequence `d n` tending to `0` such that `x + d n ∈ s`. Taking `c n` of the order
  of `1 / d n`. Then `c n • d n` belongs to a fixed annulus. By compactness, one can extract
  a subsequence converging to a limit `l`. Then `l` is nonzero, and by definition it belongs to
  the tangent cone. -/
  obtain ⟨u, -, u_pos, u_lim⟩ :
      ∃ u, StrictAnti u ∧ (∀ (n : ℕ), 0 < u n) ∧ Tendsto u atTop (𝓝 (0 : ℝ)) :=
    exists_seq_strictAnti_tendsto (0 : ℝ)
  have A n : ∃ y ∈ closedBall x (u n) ∩ s, y ≠ x :=
    accPt_iff_nhds.mp hx _ (closedBall_mem_nhds _ (u_pos n))
  choose v hv hvx using A
  choose hvu hvs using hv
  let d := fun n ↦ v n - x
  have M n : x + d n ∈ s \ {x} := by simp [d, hvs, hvx]
  let ⟨r, hr⟩ := exists_one_lt_norm 𝕜
  have W n := rescale_to_shell hr zero_lt_one (x := d n) (by simpa using (M n).2)
  choose c c_ne c_le le_c hc using W
  obtain ⟨l, l_mem, φ, φ_strict, hφ⟩ :
      ∃ l ∈ Metric.closedBall (0 : E) 1 \ Metric.ball (0 : E) (1 / ‖r‖),
      ∃ (φ : ℕ → ℕ), StrictMono φ ∧ Tendsto ((fun n ↦ c n • d n) ∘ φ) atTop (𝓝 l) := by
    apply IsCompact.tendsto_subseq _ (fun n ↦ ?_)
    · exact (isCompact_closedBall 0 1).diff Metric.isOpen_ball
    simp only [Set.mem_sdiff, Metric.mem_closedBall, dist_zero_right, (c_le n).le,
      Metric.mem_ball, not_lt, true_and, le_c n]
  refine ⟨l, ?_, ?_⟩; swap
  · push _ ∈ _
    contrapose l_mem
    simp only [one_div, l_mem, Set.mem_sdiff, Metric.mem_closedBall, dist_self, zero_le_one,
      Metric.mem_ball, inv_pos, norm_pos_iff, ne_eq, not_not, true_and]
    contrapose! hr
    simp [hr]
  apply mem_tangentConeAt_of_seq atTop (c ∘ φ) (d ∘ φ)
  · refine Tendsto.comp ?_ φ_strict.tendsto_atTop
    exact squeeze_zero_norm (by simpa [dist_eq_norm] using hvu) u_lim
  · exact .of_forall fun n ↦ (M _).1
  · exact hφ
