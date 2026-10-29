-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Endo.Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Endo.Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf","mathematical_subject":"Topology.GeneralTopology","original_sha256":"15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/Spectral/Ext/FredholmDetShift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  spectral-rh/Spectral/Ext/FredholmDetShift.lean
  ---------------------------------------------
  Fredholm determinant for the holomorphic family
      λ ↦ (T − λ • Id)
  when `T` has compact resolvent, plus the
  “zero ↔ spectrum” characterisation.
-/

import Mathlib.Analysis.Fredholm
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Topology.Algebra.Module  -- for `ContinuousLinearMap.id`


namespace GRWTSK.Topology.GeneralTopology.Endo.Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf

open Spectrum ContinuousLinearMap

namespace Fredholm.Determinant

variable {𝕜 : Type*} [IsROrC 𝕜]
variable {E  : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]

/-- Continuous endomorphisms. -/
abbrev Endo := E →L[𝕜] E

variable (T : Endo)

/-- **Assumption** : `T` has compact resolvent, provided by the caller. -/
variable (hComp : Compact (T.comp (ContinuousLinearMap.id 𝕜 E)))

/-! --------------------------------------------------------------------!
    1.  Holomorphic shift family and determinant
    -------------------------------------------------------------------- -/

/-- The family `λ ↦ T - λ • Id`. -/
@[simp] noncomputable
def shiftOp (λ : 𝕜) : Endo :=
  T - λ • ContinuousLinearMap.id 𝕜 E

/-- `λ ↦ shiftOp T λ` is continuous (helpful for holomorphy statements). -/
lemma shiftOp_continuous : Continuous (shiftOp T) := by
  simpa using
    (continuous_const.sub
      (continuous_const.smul continuous_id))

/-- The Fredholm determinant `det_F( T − λ·Id )`. -/
noncomputable
def shift (λ : 𝕜) : 𝕜 :=
  fredholmDet (shiftOp T λ)

/-! --------------------------------------------------------------------!
    2.  Zero set equals the spectrum
    -------------------------------------------------------------------- -/

/--
For a compact-resolvent operator `T`,
`shift T λ = 0` **iff** `λ` belongs to the spectrum of `T`.
-/
lemma shift_zero_iff (λ : 𝕜) :
    shift T λ = 0 ↔ λ ∈ spectrum 𝕜 T := by
  -- `fredholmDet_zero_iff_eigenvalue_of_compact` is exactly this statement.
  simpa [shift, shiftOp] using
    fredholmDet_zero_iff_eigenvalue_of_compact hComp λ

end Fredholm.Determinant
