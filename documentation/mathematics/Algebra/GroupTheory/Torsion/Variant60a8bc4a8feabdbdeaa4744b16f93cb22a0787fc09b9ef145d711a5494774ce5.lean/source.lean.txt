-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Pi.Variant34c3c2d564df981edbae4836658e5f9b570b94dfbe99f1f0c4b5890cd5872473","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34c3c2d564df981edbae4836658e5f9b570b94dfbe99f1f0c4b5890cd5872473","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Pi.Variant34c3c2d564df981edbae4836658e5f9b570b94dfbe99f1f0c4b5890cd5872473","mathematical_subject":"Algebra.Groups","original_sha256":"34c3c2d564df981edbae4836658e5f9b570b94dfbe99f1f0c4b5890cd5872473","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Pi/Torsion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.Group.Pi.Basic
public import Mathlib.Algebra.Group.Torsion

/-!
# Torsion of products

This file proves that products of torsion-free monoids are torsion-free.
-/


namespace GRWTSK.Algebra.GroupTheory.Pi.Variant34c3c2d564df981edbae4836658e5f9b570b94dfbe99f1f0c4b5890cd5872473

public section

assert_not_exists AddMonoidWithOne MonoidWithZero

variable {ι : Type*} {M : ι → Type*}

namespace Pi

@[to_additive]
instance instIsMulTorsionFree [∀ i, Monoid (M i)] [∀ i, IsMulTorsionFree (M i)] :
    IsMulTorsionFree (∀ i, M i) where
  pow_left_injective n hn a b hab := by ext i; exact pow_left_injective hn <| congr_fun hab i

end Pi
