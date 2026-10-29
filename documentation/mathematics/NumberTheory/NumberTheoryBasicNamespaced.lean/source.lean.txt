-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.DvdSubPowOfDvdSub.Variant7653826e1237478acb349a3bf1f3d7e1c131fa86b886312a3dbc21333b8ed264","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7653826e1237478acb349a3bf1f3d7e1c131fa86b886312a3dbc21333b8ed264","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.DvdSubPowOfDvdSub.Variant7653826e1237478acb349a3bf1f3d7e1c131fa86b886312a3dbc21333b8ed264","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"7653826e1237478acb349a3bf1f3d7e1c131fa86b886312a3dbc21333b8ed264","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kenny Lau
-/
import Mathlib.Algebra.GeomSum
import Mathlib.RingTheory.Ideal.Quotient.Defs
import Mathlib.RingTheory.Ideal.Span

/-!
# Basic results in number theory

This file should contain basic results in number theory. So far, it only contains the essential
lemma in the construction of the ring of Witt vectors.

## Main statement

`dvd_sub_pow_of_dvd_sub` proves that for elements `a` and `b` in a commutative ring `R` and for
all natural numbers `p` and `k` if `p` divides `a-b` in `R`, then `p ^ (k + 1)` divides
`a ^ (p ^ k) - b ^ (p ^ k)`.
-/



namespace GRWTSK.Algebra.DvdSubPowOfDvdSub.Variant7653826e1237478acb349a3bf1f3d7e1c131fa86b886312a3dbc21333b8ed264

section

open Ideal Ideal.Quotient

theorem dvd_sub_pow_of_dvd_sub {R : Type*} [CommRing R] {p : ℕ} {a b : R} (h : (p : R) ∣ a - b)
    (k : ℕ) : (p ^ (k + 1) : R) ∣ a ^ p ^ k - b ^ p ^ k := by
  induction k with
  | zero => rwa [pow_one, pow_zero, pow_one, pow_one]
  | succ k ih =>
    rw [pow_succ p k, pow_mul, pow_mul, ← geom_sum₂_mul, pow_succ']
    refine mul_dvd_mul ?_ ih
    let f : R →+* R ⧸ span {(p : R)} := mk (span {(p : R)})
    have hf : ∀ r : R, (p : R) ∣ r ↔ f r = 0 := fun r ↦ by rw [eq_zero_iff_mem, mem_span_singleton]
    rw [hf, map_sub, sub_eq_zero] at h
    rw [hf, RingHom.map_geom_sum₂, map_pow, map_pow, h, geom_sum₂_self, mul_eq_zero_of_left]
    rw [← map_natCast f, eq_zero_iff_mem, mem_span_singleton]

end
