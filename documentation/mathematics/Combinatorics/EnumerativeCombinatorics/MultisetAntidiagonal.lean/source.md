# Multiset Antidiagonal — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fc54006f78ba11608a189592f49ee85c77f725a` · SHA-256 `ab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Multiset.Powerset

/-!
# The antidiagonal on a multiset.

The antidiagonal of a multiset `s` consists of all pairs `(t₁, t₂)`
such that `t₁ + t₂ = s`. These pairs are counted with multiplicities.
-/

assert_not_exists OrderedCommMonoid Ring

universe u

namespace Multiset

open List

variable {α β : Type*}

/-- The antidiagonal of a multiset `s` consists of all pairs `(t₁, t₂)`
    such that `t₁ + t₂ = s`. These pairs are counted with multiplicities. -/
def antidiagonal (s : Multiset α) : Multiset (Multiset α × Multiset α) :=
  Quot.liftOn s (fun l ↦ (revzip (powersetAux l) : Multiset (Multiset α × Multiset α)))
    fun _ _ h ↦ Quot.sound (revzip_powersetAux_perm h)

theorem antidiagonal_coe (l : List α) : @antidiagonal α l = revzip (powersetAux l) :=
  rfl

@[simp]
theorem antidiagonal_coe' (l : List α) : @antidiagonal α l = revzip (powersetAux' l) :=
  Quot.sound revzip_powersetAux_perm_aux'

/-- A pair `(t₁, t₂)` of multisets is contained in `antidiagonal s`
    if and only if `t₁ + t₂ = s`. -/
@[simp]
theorem mem_antidiagonal {s : Multiset α} {x : Multiset α × Multiset α} :
    x ∈ antidiagonal s ↔ x.1 + x.2 = s :=
  Quotient.inductionOn s fun l ↦ by
    dsimp only [quot_mk_to_coe, antidiagonal_coe]
    refine ⟨fun h => revzip_powersetAux h, fun h ↦ ?_⟩
    have _ := Classical.decEq α
    simp only [revzip_powersetAux_lemma l revzip_powersetAux, h.symm, mem_coe,
      List.mem_map, mem_powersetAux]
    obtain ⟨x₁, x₂⟩ := x
    exact ⟨x₁, le_add_right _ _, by rw [add_tsub_cancel_left x₁ x₂]⟩

@[simp]
theorem antidiagonal_map_fst (s : Multiset α) : (antidiagonal s).map Prod.fst = powerset s :=
  Quotient.inductionOn s fun l ↦ by simp [powersetAux']

@[simp]
theorem antidiagonal_map_snd (s : Multiset α) : (antidiagonal s).map Prod.snd = powerset s :=
  Quotient.inductionOn s fun l ↦ by simp [powersetAux']

@[simp]
theorem antidiagonal_zero : @antidiagonal α 0 = {(0, 0)} :=
  rfl

@[simp]
theorem antidiagonal_cons (a : α) (s) :
    antidiagonal (a ::ₘ s) =
      map (Prod.map id (cons a)) (antidiagonal s) + map (Prod.map (cons a) id) (antidiagonal s) :=
  Quotient.inductionOn s fun l ↦ by
    simp only [revzip, reverse_append, quot_mk_to_coe, coe_eq_coe, powersetAux'_cons, cons_coe,
      map_coe, antidiagonal_coe', coe_add]
    rw [← zip_map, ← zip_map, zip_append, (_ : _ ++ _ = _)]
    · congr
      · simp only [List.map_id]
      · rw [map_reverse]
      · simp
    · simp

theorem antidiagonal_eq_map_powerset [DecidableEq α] (s : Multiset α) :
    s.antidiagonal = s.powerset.map fun t ↦ (s - t, t) := by
  induction' s using Multiset.induction_on with a s hs
  · simp only [antidiagonal_zero, powerset_zero, Multiset.zero_sub, map_singleton]
  · simp_rw [antidiagonal_cons, powerset_cons, map_add, hs, map_map, Function.comp, Prod.map_apply,
      id, sub_cons, erase_cons_head]
    rw [add_comm]
    congr 1
    refine Multiset.map_congr rfl fun x hx ↦ ?_
    rw [cons_sub_of_le _ (mem_powerset.mp hx)]

@[simp]
theorem card_antidiagonal (s : Multiset α) : card (antidiagonal s) = 2 ^ card s := by
  have := card_powerset s
  rwa [← antidiagonal_map_fst, card_map] at this

end Multiset
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abb9aedb73f2a80c5822c36b08fc27b8b63e31dfd73b0d1dcf43454de306f458 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantab704e4996d4aba68f530631fe706e57086aa9482eb2dce3ed6bbab01eafa773.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
