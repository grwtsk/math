-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MapListProd.Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MapListProd.Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/RingEquiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Callum Sutton, Yury Kudryashov
-/
import Mathlib.Algebra.Ring.Equiv
import Mathlib.Algebra.Ring.Opposite
import Mathlib.Algebra.BigOperators.Group.Finset.Defs

/-!
# Results about mapping big operators across ring equivalences
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MapListProd.Variant23fb6f70abffcca4ea7cf606e032709d48c1226be774bb7649ba8d9c60494478

namespace RingEquiv

variable {α R S : Type*}

protected theorem map_list_prod [Semiring R] [Semiring S] (f : R ≃+* S) (l : List R) :
    f l.prod = (l.map f).prod := map_list_prod f l

protected theorem map_list_sum [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S]
    (f : R ≃+* S) (l : List R) : f l.sum = (l.map f).sum := map_list_sum f l

/-- An isomorphism into the opposite ring acts on the product by acting on the reversed elements -/
protected theorem unop_map_list_prod [Semiring R] [Semiring S] (f : R ≃+* Sᵐᵒᵖ) (l : List R) :
    MulOpposite.unop (f l.prod) = (l.map (MulOpposite.unop ∘ f)).reverse.prod :=
  unop_map_list_prod f l

protected theorem map_multiset_prod [CommSemiring R] [CommSemiring S] (f : R ≃+* S)
    (s : Multiset R) : f s.prod = (s.map f).prod :=
  map_multiset_prod f s

protected theorem map_multiset_sum [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S]
    (f : R ≃+* S) (s : Multiset R) : f s.sum = (s.map f).sum :=
  map_multiset_sum f s

protected theorem map_prod [CommSemiring R] [CommSemiring S] (g : R ≃+* S) (f : α → R)
    (s : Finset α) : g (∏ x ∈ s, f x) = ∏ x ∈ s, g (f x) :=
  map_prod g f s

protected theorem map_sum [NonUnitalNonAssocSemiring R] [NonUnitalNonAssocSemiring S] (g : R ≃+* S)
    (f : α → R) (s : Finset α) : g (∑ x ∈ s, f x) = ∑ x ∈ s, g (f x) :=
  map_sum g f s

end RingEquiv
