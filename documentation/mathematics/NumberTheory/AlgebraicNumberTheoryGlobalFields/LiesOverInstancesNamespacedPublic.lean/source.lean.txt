-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.CompletionMap.Variant1d3eafd27903237536ee0a60472dcf9734e7982fa6f37e6d941097acbfd5847d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d3eafd27903237536ee0a60472dcf9734e7982fa6f37e6d941097acbfd5847d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CompletionMap.Variant1d3eafd27903237536ee0a60472dcf9734e7982fa6f37e6d941097acbfd5847d","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"1d3eafd27903237536ee0a60472dcf9734e7982fa6f37e6d941097acbfd5847d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/NumberTheory/NumberField/Completion/LiesOverInstances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Salvatore Mercuri. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Salvatore Mercuri
-/
module

public import Mathlib.NumberTheory.NumberField.Completion.InfinitePlace

/-!
# `LiesOver` instances for completions of number fields

If `L` and `K` are number fields such that `Algebra K L` then this algebra extends
naturally to the completions of `K` and `L` at places, whenever the place of `L` lies
over the place of `K`. This file contains the relevant instances and properties of this extension
as `scoped` instances. These are scoped because they create non-defeq instance diamonds when
`K = L`.
-/


namespace GRWTSK.NumberTheory.CompletionMap.Variant1d3eafd27903237536ee0a60472dcf9734e7982fa6f37e6d941097acbfd5847d

public section

namespace NumberField.LiesOver

open InfinitePlace InfinitePlace.Completion

variable {K L : Type*} [Field K] [Field L] [Algebra K L] {v : InfinitePlace K} {w : InfinitePlace L}
variable [w.LiesOver v]

/-- The ring homomorphism `v.Completion →+* w.Completion` induced by `algebraMap K L`, when `w`
lies over `v`. -/
noncomputable def completionMap : v.Completion →+* w.Completion :=
  ((Completion.equiv w).symm.toRingHom.comp <|
    UniformSpace.Completion.mapRingHom _ (LiesOver.isometry_algebraMap w v).continuous).comp <|
    (Completion.equiv v).toRingHom

theorem continuous_completionMap : Continuous (completionMap (v := v) (w := w)) :=
  (continuous_ofCompletion w).comp <|
    UniformSpace.Completion.continuous_map.comp (continuous_toCompletion v)

theorem completionMap_coe (x : WithAbs v.1) :
    completionMap (x : v.Completion) = ((algebraMap (WithAbs v.1) (WithAbs w.1) x : WithAbs w.1) :
      w.Completion) :=
  Completion.ext <| UniformSpace.Completion.mapRingHom_coe _ x

/-- If `w` lies over `v`, then `w.Completion` is a `v.Completion`-algebra. -/
noncomputable scoped instance : Algebra v.Completion w.Completion := completionMap.toAlgebra

scoped instance : IsScalarTower K v.Completion w.Completion :=
  .of_algebraMap_eq fun x ↦ by
    have h : algebraMap K v.Completion x = ((WithAbs.toAbs v.1 x : WithAbs v.1) : v.Completion) :=
      rfl
    rw [RingHom.algebraMap_toAlgebra, h, completionMap_coe]
    apply Completion.ext
    rw [Completion.algebraMap_toCompletion, UniformSpace.Completion.algebraMap_def]
    simp [WithAbs.algebraMap_left_apply, WithAbs.algebraMap_right_apply]

scoped instance : ContinuousSMul v.Completion w.Completion where
  continuous_smul := (continuous_completionMap.comp continuous_fst).mul continuous_snd

end NumberField.LiesOver
