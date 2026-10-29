-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.DvdChooseAddSubOneIff.Variant47ea0b7c82ba3dc1841080c7f68658eb8c907e0cfd7b13f7c20496f61611976f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"47ea0b7c82ba3dc1841080c7f68658eb8c907e0cfd7b13f7c20496f61611976f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.EnumerativeCombinatorics.SourceCorpus.DvdChooseAddSubOneIff.Variant47ea0b7c82ba3dc1841080c7f68658eb8c907e0cfd7b13f7c20496f61611976f","mathematical_subject":"Combinatorics.EnumerativeCombinatorics","original_sha256":"47ea0b7c82ba3dc1841080c7f68658eb8c907e0cfd7b13f7c20496f61611976f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/Choose/Consecutive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Adam Kiezun. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Kiezun
-/
module

public import Mathlib.Data.Nat.Choose.Basic
public import Mathlib.Data.Nat.Prime.Defs

import Mathlib.Data.Nat.Factorial.BigOperators
import Mathlib.Data.Nat.Prime.Factorial

/-!
# Binomial coefficients and consecutive products

This file contains results relating divisibility of binomial coefficients to divisibility of
consecutive products.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.DvdChooseAddSubOneIff.Variant47ea0b7c82ba3dc1841080c7f68658eb8c907e0cfd7b13f7c20496f61611976f

public section

namespace Nat

namespace Prime

variable {p k n : ℕ}

lemma dvd_choose_add_sub_one_iff (hp : Prime p) (hpn : n < p) :
    p ∣ choose (k + n - 1) n ↔ ∃ i < n, p ∣ k + i := by
  rw [← hp.dvd_ascFactorial_iff, Nat.ascFactorial_eq_factorial_mul_choose']
  exact ⟨fun h => dvd_mul_of_dvd_right h (n !),
    fun h => (hp.coprime_factorial_of_lt hpn).dvd_of_dvd_mul_left h⟩

lemma dvd_choose_iff (hp : Prime p) (hpn : n < p) (hnk : n ≤ k) :
    p ∣ choose k n ↔ ∃ i < n, p ∣ k - i := by
  by_cases hn0 : n = 0
  · grind [dvd_one, Nat.not_prime_one]
  rw [show k = (k - n + 1) + n - 1 by grind, hp.dvd_choose_add_sub_one_iff hpn]
  constructor <;>
    rintro ⟨i, hlt, hdvd⟩ <;>
    refine ⟨n - i - 1, by grind, ?_⟩ <;>
    convert hdvd using 1 <;>
    grind

end Prime

end Nat
