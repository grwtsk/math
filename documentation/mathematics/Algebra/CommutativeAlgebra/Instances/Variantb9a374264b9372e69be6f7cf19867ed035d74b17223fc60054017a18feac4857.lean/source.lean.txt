-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.Prod.Varianta7b51cf80d99c8ec3c6df00367d75f83b8e1b870b88138c0bbf57d4e088d61bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7b51cf80d99c8ec3c6df00367d75f83b8e1b870b88138c0bbf57d4e088d61bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.Prod.Varianta7b51cf80d99c8ec3c6df00367d75f83b8e1b870b88138c0bbf57d4e088d61bc","mathematical_subject":"Algebra.Polynomials","original_sha256":"a7b51cf80d99c8ec3c6df00367d75f83b8e1b870b88138c0bbf57d4e088d61bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Artinian/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Algebra.Divisibility.Prod
import Mathlib.Algebra.Polynomial.FieldDivision
import Mathlib.RingTheory.Artinian.Module

/-!
# Instances related to Artinian rings

We show that every reduced Artinian ring and the polynomial ring over it
are decomposition monoids, and every reduced Artinian ring is semisimple.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.Prod.Varianta7b51cf80d99c8ec3c6df00367d75f83b8e1b870b88138c0bbf57d4e088d61bc

namespace IsArtinianRing

variable (R : Type*) [CommRing R] [IsArtinianRing R] [IsReduced R]

attribute [local instance] fieldOfSubtypeIsMaximal

instance : DecompositionMonoid R := MulEquiv.decompositionMonoid (equivPi R)

instance : DecompositionMonoid (Polynomial R) :=
  MulEquiv.decompositionMonoid <| (Polynomial.mapEquiv <| equivPi R).trans (Polynomial.piEquiv _)

end IsArtinianRing
