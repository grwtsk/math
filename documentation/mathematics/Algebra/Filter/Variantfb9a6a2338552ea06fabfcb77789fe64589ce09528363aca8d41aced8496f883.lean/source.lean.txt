-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.EventuallyConstOfIsNoetherian.Variant3eb4e935d998854cf146f1dfc1fe5bd4abc281f18946c3d88a0a4a1f466709a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3eb4e935d998854cf146f1dfc1fe5bd4abc281f18946c3d88a0a4a1f466709a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.EventuallyConstOfIsNoetherian.Variant3eb4e935d998854cf146f1dfc1fe5bd4abc281f18946c3d88a0a4a1f466709a4","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"3eb4e935d998854cf146f1dfc1fe5bd4abc281f18946c3d88a0a4a1f466709a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Noetherian/Filter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro, Kevin Buzzard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kevin Buzzard
-/
import Mathlib.Order.Filter.EventuallyConst
import Mathlib.RingTheory.Noetherian.Defs

/-!
# Noetherian modules and finiteness of chains

## Main results

Let `R` be a ring and let `M` be an `R`-module.

* `eventuallyConst_of_isNoetherian`: an ascending chain of submodules in a
  Noetherian module is eventually constant

## References

* [M. F. Atiyah and I. G. Macdonald, *Introduction to commutative algebra*][atiyah-macdonald]
* [P. Samuel, *Algebraic Theory of Numbers*][samuel1967]

## Tags

Noetherian, noetherian, Noetherian ring, Noetherian module, noetherian ring, noetherian module

-/



namespace GRWTSK.Algebra.EventuallyConstOfIsNoetherian.Variant3eb4e935d998854cf146f1dfc1fe5bd4abc281f18946c3d88a0a4a1f466709a4

open Set Filter Pointwise

open IsNoetherian Submodule Function

section Semiring

variable {R M : Type*} [Semiring R] [AddCommMonoid M] [Module R M]

theorem eventuallyConst_of_isNoetherian [IsNoetherian R M] (f : ℕ →o Submodule R M) :
    atTop.EventuallyConst f := by
  simp_rw [eventuallyConst_atTop, eq_comm]
  exact (monotone_stabilizes_iff_noetherian.mpr inferInstance) f

end Semiring
