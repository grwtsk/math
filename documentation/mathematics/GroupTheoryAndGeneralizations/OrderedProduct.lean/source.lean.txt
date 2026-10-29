/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Developed with OpenAI Codex. Lean checks the proof terms.
-/
import Mathlib.Algebra.Group.Basic
import Mathlib.Algebra.Group.Commute.Basic
import Mathlib.Data.Nat.Basic

/-!
# Ordered interval products

Established monoid and group identities, with the newest factor on the left.
Same-order inverse conjugation requires commuting factors and the stated
edgewise conjugation law. No analytic or spectral estimate is asserted.
Lean and mathlib supply the upstream algebraic structures and lemmas.
-/

set_option relaxedAutoImplicit false

namespace GRWTSK.Algebra

universe u v w

/-- Ordered interval product. The most recent factor is always on the left. -/
def orderedProduct {G : Type u} [Monoid G] (A : ℕ → G) (n : ℕ) : ℕ → G :=
  Nat.rec 1 (fun k r => A (n + k) * r)



@[simp]
theorem orderedProduct_zero {G : Type u} [Monoid G] (A : ℕ → G) (n : ℕ) :
    orderedProduct A n 0 = 1 := rfl



/-- Successor factors act on the left, fixing the product convention. -/
@[simp] theorem orderedProduct_succ {G : Type u} [Monoid G] (A : ℕ → G) (n k : ℕ) :
    orderedProduct A n (k + 1) = A (n + k) * orderedProduct A n k := rfl



/-- Two consecutive intervals concatenate with the later interval on the left. -/
theorem orderedProduct_add {G : Type u} [Monoid G] (A : ℕ → G) (n m k : ℕ) :
    orderedProduct A n (m + k) =
      orderedProduct A (n + k) m * orderedProduct A n k := by
  induction m with
  | zero => simp
  | succ m ih =>
    simp only [Nat.succ_add, orderedProduct_succ, ih]
    simp [Nat.add_comm, Nat.add_left_comm, mul_assoc]



/-- A varying gauge has the next inverse on the left and the current gauge on the right. -/
def gaugeTransfer {G : Type u} [Group G] (A B : ℕ → G) (n : ℕ) : G :=
  (B (n + 1))⁻¹ * A n * B n



/-- Gauge factors telescope exactly to the interval endpoint gauges. -/
theorem orderedProduct_gaugeTransfer {G : Type u} [Group G]
    (A B : ℕ → G) (n k : ℕ) :
    orderedProduct (gaugeTransfer A B) n k =
      (B (n + k))⁻¹ * orderedProduct A n k * B n := by
  induction k with
  | zero => simp
  | succ k ih =>
    simp only [orderedProduct_succ, gaugeTransfer, ih]
    simp [Nat.add_assoc, mul_assoc]



set_option autoImplicit false

/-- Conjugation transports each edge in its original traversal order. -/
theorem orderedProduct_conjugation {G : Type u} [Group G]
    (A : ℕ → G) (H : G) (n k : ℕ) :
    orderedProduct (fun i => H * A i * H⁻¹) n k =
      H * orderedProduct A n k * H⁻¹ := by
  have he : gaugeTransfer A (fun _ => H⁻¹) = (fun i => H * A i * H⁻¹) := by
    funext i
    simp [gaugeTransfer]
  rw [← he]
  simpa using orderedProduct_gaugeTransfer A (fun _ => H⁻¹) n k



/-- A fixed edge commutes with a finite product of edges that commute with it. -/
theorem commute_orderedProduct {G : Type u} [Monoid G]
    (A : ℕ → G) (g : G) (h : ∀ i, Commute g (A i)) (n k : ℕ) :
    Commute g (orderedProduct A n k) := by
  induction k with
  | zero => exact Commute.one_right _
  | succ k ih => exact (h (n + k)).mul_right ih



/-- Commuting edges are the extra hypothesis permitting same-order inversion. -/
theorem orderedProduct_inverse_commuting {G : Type u} [Group G]
    (A : ℕ → G) (h : ∀ i j, Commute (A i) (A j)) (n k : ℕ) :
    orderedProduct (fun i => (A i)⁻¹) n k = (orderedProduct A n k)⁻¹ := by
  induction k with
  | zero => simp
  | succ k ih =>
    rw [orderedProduct_succ, orderedProduct_succ, ih, mul_inv_rev]
    exact (commute_orderedProduct A (A (n + k)) (h (n + k)) n k).inv_inv.eq



/-- A common commuting family with edgewise inverse conjugation has inverse loop transport. -/
theorem orderedProduct_sign_inverse {G : Type u} [Group G]
    (A : ℕ → G) (T : G) (hcomm : ∀ i j, Commute (A i) (A j))
    (hflip : ∀ i, T * A i * T⁻¹ = (A i)⁻¹) (n k : ℕ) :
    T * orderedProduct A n k * T⁻¹ = (orderedProduct A n k)⁻¹ := by
  rw [← orderedProduct_conjugation]
  have he : (fun i => T * A i * T⁻¹) = fun i => (A i)⁻¹ := funext hflip
  rw [he]
  exact orderedProduct_inverse_commuting A hcomm n k




end GRWTSK.Algebra
