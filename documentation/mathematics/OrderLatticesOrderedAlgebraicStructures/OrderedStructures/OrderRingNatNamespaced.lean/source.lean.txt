-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsComplEvenOdd.Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsComplEvenOdd.Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Ring/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Algebra.Order.GroupWithZero.Canonical
import Mathlib.Algebra.Order.Ring.Defs
import Mathlib.Algebra.Ring.Parity
import Mathlib.Data.Set.Basic

/-!
# The natural numbers form an ordered semiring

This file contains the commutative linear orderded semiring instance on the natural numbers.

See note [foundational algebra order theory].
-/


namespace GRWTSK.Algebra.UniversalAlgebra.IsComplEvenOdd.Variant15782284d64a37c49f2ec340a346d26cf1717512eb55297966503e763b3ef90d

namespace Nat

/-! ### Instances -/

instance instIsStrictOrderedRing : IsStrictOrderedRing ℕ where
  add_le_add_left := @Nat.add_le_add_left
  le_of_add_le_add_left := @Nat.le_of_add_le_add_left
  zero_le_one := Nat.le_of_lt (Nat.zero_lt_succ 0)
  mul_lt_mul_of_pos_left := @Nat.mul_lt_mul_of_pos_left
  mul_lt_mul_of_pos_right := @Nat.mul_lt_mul_of_pos_right
  exists_pair_ne := ⟨0, 1, ne_of_lt Nat.zero_lt_one⟩

instance instLinearOrderedCommMonoidWithZero : LinearOrderedCommMonoidWithZero ℕ where
  bot := 0
  bot_le := zero_le
  zero_le_one := zero_le_one
  mul_le_mul_left _ _ h c := Nat.mul_le_mul_left c h

/-! ### Miscellaneous lemmas -/

lemma isCompl_even_odd : IsCompl { n : ℕ | Even n } { n | Odd n } := by
  simp only [← Set.compl_setOf, isCompl_compl, ← not_even_iff_odd]

end Nat
