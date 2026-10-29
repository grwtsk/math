-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.UnitsEqOne.Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.UnitsEqOne.Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b","mathematical_subject":"Algebra.Groups","original_sha256":"b7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Nat/Units.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.Group.Units.Defs
import Mathlib.Logic.Unique

/-!
# The unit of the natural numbers
-/


namespace GRWTSK.Algebra.GroupTheory.UnitsEqOne.Variantb7fa1b4b99c58bcf27dd771fa4b23bad7f554b37e9934ae82808045d43a3914b

assert_not_exists MonoidWithZero DenselyOrdered

namespace Nat

/-! #### Units -/

lemma units_eq_one (u : ℕˣ) : u = 1 := Units.ext <| Nat.eq_one_of_dvd_one ⟨u.inv, u.val_inv.symm⟩

lemma addUnits_eq_zero (u : AddUnits ℕ) : u = 0 :=
  AddUnits.ext <| (Nat.eq_zero_of_add_eq_zero u.val_neg).1

instance unique_units : Unique ℕˣ where
  default := 1
  uniq := Nat.units_eq_one

instance unique_addUnits : Unique (AddUnits ℕ) where
  default := 0
  uniq := Nat.addUnits_eq_zero

/-- Alias of `isUnit_iff_eq_one` for discoverability. -/
protected lemma isUnit_iff {n : ℕ} : IsUnit n ↔ n = 1 := isUnit_iff_eq_one

/-- Alias of `isAddUnit_iff_eq_zero` for discoverability. -/
protected lemma isAddUnit_iff {n : ℕ} : IsAddUnit n ↔ n = 0 := isAddUnit_iff_eq_zero

end Nat
