# Number Theory Basic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e916ca23b5631d5ba6e88b6bcc01b5cd43e9a13` · SHA-256 `7653826e1237478acb349a3bf1f3d7e1c131fa86b886312a3dbc21333b8ed264`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee1da863e3d9939909a975ef607a667484d0935dee9bfbac3996d0de0239dee5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant7653826e1237478acb349a3bf1f3d7e1c131fa86b886312a3dbc21333b8ed264.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
