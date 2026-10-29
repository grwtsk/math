-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SimpleModule.Variant15aec5bfdd8524ecc59bcf88be6801c1a7b64283da2bb80f034fe8f7fce41d6b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15aec5bfdd8524ecc59bcf88be6801c1a7b64283da2bb80f034fe8f7fce41d6b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SimpleModule.Variant15aec5bfdd8524ecc59bcf88be6801c1a7b64283da2bb80f034fe8f7fce41d6b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"15aec5bfdd8524ecc59bcf88be6801c1a7b64283da2bb80f034fe8f7fce41d6b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/RingTheory/SimpleModule/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
module

public import Mathlib.RingTheory.SimpleModule.Basic


namespace GRWTSK.Algebra.LinearAlgebra.SimpleModule.Variant15aec5bfdd8524ecc59bcf88be6801c1a7b64283da2bb80f034fe8f7fce41d6b

variable {R S : Type*} [Ring R] [Ring S]
  {M' : Type*} [AddCommGroup M'] [Module R M'] {N'} [AddCommGroup N'] [Module S N']
  {σ : R →+* S} (l : M' →ₛₗ[σ] N')

-- TODO: generalize Submodule.equivMapOfInjective from InvPair to RingHomSurjective
proof_wanted LinearMap.isSemisimpleModule_of_injective (_ : Function.Injective l)
    [IsSemisimpleModule S N'] : IsSemisimpleModule R M'

--TODO: generalize LinearMap.quotKerEquivOfSurjective to SemilinearMaps + RingHomSurjective
proof_wanted LinearMap.isSemisimpleModule_of_surjective (_ : Function.Surjective l)
    [IsSemisimpleModule R M'] : IsSemisimpleModule S N'
