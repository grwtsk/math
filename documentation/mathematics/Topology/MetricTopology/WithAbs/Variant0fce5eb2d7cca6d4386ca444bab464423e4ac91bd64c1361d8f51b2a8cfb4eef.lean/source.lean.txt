-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.IsometryOfComp.Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.IsometryOfComp.Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb","mathematical_subject":"Topology.MetricSpaces","original_sha256":"2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Normed/Field/WithAbs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Salvatore Mercuri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Salvatore Mercuri
-/
import Mathlib.Analysis.Normed.Module.Completion
import Mathlib.Analysis.Normed.Ring.WithAbs

/-!
# WithAbs for fields

This extends the `WithAbs` mechanism to fields, providing a type synonym for a field which depends
on an absolute value. This is useful when dealing with several absolute values on the same field.

In particular this allows us to define the completion of a field at a given absolute value.
-/


namespace GRWTSK.Topology.MetricTopology.IsometryOfComp.Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb

open Topology

noncomputable section

variable {R S : Type*} [Semiring S] [PartialOrder S] [IsOrderedRing S]

namespace WithAbs

section more_instances

instance normedField [Field R] (v : AbsoluteValue R ℝ) : NormedField (WithAbs v) :=
  v.toNormedField

end more_instances

/-!
### The completion of a field at an absolute value.
-/

variable {K : Type*} [Field K] {v : AbsoluteValue K ℝ}
  {L : Type*} [NormedField L] {f : WithAbs v →+* L}

/-- If the absolute value `v` factors through an embedding `f` into a normed field, then
`f` is an isometry. -/
theorem isometry_of_comp (h : ∀ x, ‖f x‖ = v x) : Isometry f :=
  Isometry.of_dist_eq <| fun x y => by simp only [‹NormedField L›.dist_eq, ← f.map_sub, h]; rfl

/-- If the absolute value `v` factors through an embedding `f` into a normed field, then
the pseudo metric space associated to the absolute value is the same as the pseudo metric space
induced by `f`. -/
theorem pseudoMetricSpace_induced_of_comp (h : ∀ x, ‖f x‖ = v x) :
    PseudoMetricSpace.induced f inferInstance = (normedField v).toPseudoMetricSpace := by
  ext; exact isometry_of_comp h |>.dist_eq _ _

/-- If the absolute value `v` factors through an embedding `f` into a normed field, then
the uniform structure associated to the absolute value is the same as the uniform structure
induced by `f`. -/
theorem uniformSpace_comap_eq_of_comp (h : ∀ x, ‖f x‖ = v x) :
    UniformSpace.comap f inferInstance = (normedField v).toUniformSpace := by
  simp only [← pseudoMetricSpace_induced_of_comp h, PseudoMetricSpace.toUniformSpace]

/-- If the absolute value `v` factors through an embedding `f` into a normed field, then
`f` is uniform inducing. -/
theorem isUniformInducing_of_comp (h : ∀ x, ‖f x‖ = v x) : IsUniformInducing f :=
  isUniformInducing_iff_uniformSpace.2 <| uniformSpace_comap_eq_of_comp h

end WithAbs

namespace AbsoluteValue

open WithAbs

variable {K : Type*} [Field K] (v : AbsoluteValue K ℝ)

/-- The completion of a field with respect to a real absolute value. -/
abbrev Completion := UniformSpace.Completion (WithAbs v)

@[deprecated (since := "2024-12-01")] alias completion := Completion

namespace Completion

instance : Coe K v.Completion :=
  inferInstanceAs <| Coe (WithAbs v) (UniformSpace.Completion (WithAbs v))

variable {L : Type*} [NormedField L] [CompleteSpace L] {f : WithAbs v →+* L} {v}

/-- If the absolute value of a normed field factors through an embedding into another normed field
`L`, then we can extend that embedding to an embedding on the completion `v.Completion →+* L`. -/
abbrev extensionEmbedding_of_comp (h : ∀ x, ‖f x‖ = v x) : v.Completion →+* L :=
  UniformSpace.Completion.extensionHom _
    (WithAbs.isUniformInducing_of_comp h).uniformContinuous.continuous

theorem extensionEmbedding_of_comp_coe (h : ∀ x, ‖f x‖ = v x) (x : K) :
    extensionEmbedding_of_comp h x = f x := by
  rw [← UniformSpace.Completion.extensionHom_coe f
    (WithAbs.isUniformInducing_of_comp h).uniformContinuous.continuous]

/-- If the absolute value of a normed field factors through an embedding into another normed field,
then the extended embedding `v.Completion →+* L` preserves distances. -/
theorem extensionEmbedding_dist_eq_of_comp (h : ∀ x, ‖f x‖ = v x) (x y : v.Completion) :
    dist (extensionEmbedding_of_comp h x) (extensionEmbedding_of_comp h y) =
      dist x y := by
  refine UniformSpace.Completion.induction_on₂ x y ?_ (fun x y => ?_)
  · refine isClosed_eq ?_ continuous_dist
    exact continuous_iff_continuous_dist.1 UniformSpace.Completion.continuous_extension
  · simp only [extensionEmbedding_of_comp_coe]
    exact UniformSpace.Completion.dist_eq x y ▸ (WithAbs.isometry_of_comp h).dist_eq _ _

/-- If the absolute value of a normed field factors through an embedding into another normed field,
then the extended embedding `v.Completion →+* L` is an isometry. -/
theorem isometry_extensionEmbedding_of_comp (h : ∀ x, ‖f x‖ = v x) :
    Isometry (extensionEmbedding_of_comp h) :=
  Isometry.of_dist_eq <| extensionEmbedding_dist_eq_of_comp h

/-- If the absolute value of a normed field factors through an embedding into another normed field,
then the extended embedding `v.Completion →+* L` is a closed embedding. -/
theorem isClosedEmbedding_extensionEmbedding_of_comp (h : ∀ x, ‖f x‖ = v x) :
    IsClosedEmbedding (extensionEmbedding_of_comp h) :=
  (isometry_extensionEmbedding_of_comp h).isClosedEmbedding

/-- If the absolute value of a normed field factors through an embedding into another normed field
that is locally compact, then the completion of the first normed field is also locally compact. -/
theorem locallyCompactSpace [LocallyCompactSpace L] (h : ∀ x, ‖f x‖ = v x) :
    LocallyCompactSpace (v.Completion) :=
  (isClosedEmbedding_extensionEmbedding_of_comp h).locallyCompactSpace

end AbsoluteValue.Completion
