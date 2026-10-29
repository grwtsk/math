-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CoeInj.Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CoeInj.Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Algebra/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Yury Kudryashov
-/
import Mathlib.RingTheory.SimpleRing.Basic
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Data.Rat.Cast.Defs

/-!
# Facts about `algebraMap` when the coefficient ring is a field.
-/


namespace GRWTSK.Algebra.CoeInj.Variant07021dd45ee6bcb9c322d40717c8f54d35bb9de56caddaa783a339be724580ab

namespace algebraMap

universe u v w u₁ v₁
section FieldNontrivial

variable {R A : Type*} [Field R] [CommSemiring A] [Nontrivial A] [Algebra R A]

@[norm_cast, simp]
theorem coe_inj {a b : R} : (↑a : A) = ↑b ↔ a = b :=
  (algebraMap R A).injective.eq_iff

@[norm_cast]
theorem lift_map_eq_zero_iff (a : R) : (↑a : A) = 0 ↔ a = 0 := map_eq_zero _

end FieldNontrivial

section SemifieldSemidivisionRing

variable {R : Type*} (A : Type*) [Semifield R] [DivisionSemiring A] [Algebra R A]

@[norm_cast]
theorem coe_inv (r : R) : ↑r⁻¹ = ((↑r)⁻¹ : A) :=
  map_inv₀ (algebraMap R A) r

@[norm_cast]
theorem coe_div (r s : R) : ↑(r / s) = (↑r / ↑s : A) :=
  map_div₀ (algebraMap R A) r s

@[norm_cast]
theorem coe_zpow (r : R) (z : ℤ) : ↑(r ^ z) = (r : A) ^ z :=
  map_zpow₀ (algebraMap R A) r z

end SemifieldSemidivisionRing

section FieldDivisionRing

variable (R A : Type*) [Field R] [DivisionRing A] [Algebra R A]

@[norm_cast]
theorem coe_ratCast (q : ℚ) : ↑(q : R) = (q : A) := map_ratCast (algebraMap R A) q

end FieldDivisionRing

end algebraMap
