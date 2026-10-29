-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SubalgebraIsSimpleOrderOfFinrankPrime.Variant072dbf7d39449f0f07437b641232a37ddc502868ee9b21b4672e53aee38d556c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"072dbf7d39449f0f07437b641232a37ddc502868ee9b21b4672e53aee38d556c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SubalgebraIsSimpleOrderOfFinrankPrime.Variant072dbf7d39449f0f07437b641232a37ddc502868ee9b21b4672e53aee38d556c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"072dbf7d39449f0f07437b641232a37ddc502868ee9b21b4672e53aee38d556c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Algebra/Subalgebra/IsSimpleOrder.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.LinearAlgebra.FiniteDimensional.Basic
import Mathlib.LinearAlgebra.Dimension.FreeAndStrongRankCondition
import Mathlib.LinearAlgebra.FreeModule.StrongRankCondition

/-!
If `A` is a domain, and a finite-dimensional algebra over a field `F`, with prime dimension,
then there are no non-trivial `F`-subalgebras.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SubalgebraIsSimpleOrderOfFinrankPrime.Variant072dbf7d39449f0f07437b641232a37ddc502868ee9b21b4672e53aee38d556c

open Module Submodule

theorem Subalgebra.isSimpleOrder_of_finrank_prime (F A) [Field F] [Ring A] [IsDomain A]
    [Algebra F A] (hp : (finrank F A).Prime) : IsSimpleOrder (Subalgebra F A) :=
  { toNontrivial :=
      ⟨⟨⊥, ⊤, fun he =>
          Nat.not_prime_one ((Subalgebra.bot_eq_top_iff_finrank_eq_one.1 he).subst hp)⟩⟩
    eq_bot_or_eq_top := fun K => by
      haveI : FiniteDimensional _ _ := .of_finrank_pos hp.pos
      letI := divisionRingOfFiniteDimensional F K
      refine (hp.eq_one_or_self_of_dvd _ ⟨_, (finrank_mul_finrank F K A).symm⟩).imp ?_ fun h => ?_
      · exact fun h' => Subalgebra.eq_bot_of_finrank_one h'
      · exact
          Algebra.toSubmodule_eq_top.1 (eq_top_of_finrank_eq <| K.finrank_toSubmodule.trans h) }
-- TODO: `IntermediateField` version
