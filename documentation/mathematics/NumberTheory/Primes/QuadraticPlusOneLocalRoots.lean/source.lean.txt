/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.ConfigurationCounts
import Mathlib.Data.ZMod.Basic
import Mathlib.NumberTheory.LegendreSymbol.Basic
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Local roots of `x^2 + 1` modulo a positive modulus

The primary finite source is the set of natural representatives `0 <= a < d`
for which `d` divides `a^2 + 1`.  For positive moduli it is identified with
the corresponding root subtype in `ZMod d`.

Coprime moduli are combined through Mathlib's ring equivalence
`ZMod (m*n) ≃+* ZMod m × ZMod n`; no multiplicativity across noncoprime
moduli is asserted.  Prime local counts are derived from the pinned Legendre
symbol square-root count.

No prime-power lifting theorem, sieve lower bound, or quadratic-prime theorem
is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots

open scoped BigOperators
open Finset

noncomputable section

/-- Natural representatives of roots of `x^2 + 1` modulo `d`. -/
def quadraticPlusOneResidues (d : ℕ) : Finset ℕ :=
  (Finset.range d).filter fun a => d ∣ a ^ 2 + 1

/-- Exact membership in the natural representative root set. -/
theorem mem_quadraticPlusOneResidues
    {d a : ℕ} :
    a ∈ quadraticPlusOneResidues d ↔
      a < d ∧ d ∣ a ^ 2 + 1 := by
  simp [quadraticPlusOneResidues]

/-- Number of roots modulo `d`, represented in `[0,d)`. -/
def quadraticPlusOneRootCount (d : ℕ) : ℕ :=
  (quadraticPlusOneResidues d).card

/-- The corresponding root subtype in `ZMod d`.  Cardinality is used only
under a positive-modulus/`NeZero` hypothesis. -/
def QuadraticPlusOneZModRoot (d : ℕ) : Type :=
  {x : ZMod d // x ^ 2 = -1}

/-- The canonical finite root instance for nonzero moduli. -/
noncomputable instance quadraticPlusOneZModRootFintype (d : ℕ) [NeZero d] :
    Fintype (QuadraticPlusOneZModRoot d) :=
  inferInstanceAs (Fintype {x : ZMod d // x ^ 2 = -1})

/-- Natural representatives and `ZMod` roots are equivalent for nonzero
moduli. -/
noncomputable def quadraticPlusOneResiduesEquivZModRoots
    (d : ℕ) [NeZero d] :
    {a // a ∈ quadraticPlusOneResidues d} ≃
      QuadraticPlusOneZModRoot d where
  toFun a := by
    have ha := (mem_quadraticPlusOneResidues.mp a.2).2
    have haZ :
        (((a.1 ^ 2 + 1 : ℕ) : ℤ) : ZMod d) = 0 := by
      apply (ZMod.intCast_zmod_eq_zero_iff_dvd
        (((a.1 ^ 2 + 1 : ℕ) : ℤ)) d).2
      exact_mod_cast ha
    refine ⟨(a.1 : ZMod d), ?_⟩
    push_cast at haZ
    exact eq_neg_of_add_eq_zero_left haZ
  invFun x := by
    refine ⟨x.1.val, ?_⟩
    rw [mem_quadraticPlusOneResidues]
    constructor
    · exact x.1.val_lt
    · have hzero :
          (((x.1.val ^ 2 + 1 : ℕ) : ℤ) : ZMod d) = 0 := by
        push_cast
        rw [ZMod.natCast_zmod_val, x.2]
        ring
      have hdivZ :=
        (ZMod.intCast_zmod_eq_zero_iff_dvd
          (((x.1.val ^ 2 + 1 : ℕ) : ℤ)) d).1 hzero
      exact_mod_cast hdivZ
  left_inv a := by
    apply Subtype.ext
    simp only
    rw [ZMod.val_natCast_of_lt
      (mem_quadraticPlusOneResidues.mp a.2).1]
  right_inv x := by
    apply Subtype.ext
    exact ZMod.natCast_zmod_val x.1

/-- Natural representative count equals the `ZMod` root-subtype cardinality. -/
theorem quadraticPlusOneRootCount_eq_zmod
    (d : ℕ) [NeZero d] :
    quadraticPlusOneRootCount d =
      Fintype.card (QuadraticPlusOneZModRoot d) := by
  unfold quadraticPlusOneRootCount
  rw [← Fintype.card_coe]
  exact Fintype.card_congr
    (quadraticPlusOneResiduesEquivZModRoots d)

/-- CRT restricts to an equivalence of the root subtypes. -/
noncomputable def quadraticPlusOneZModRootsMulEquiv
    {m n : ℕ} [NeZero m] [NeZero n]
    (hcop : m.Coprime n) :
    QuadraticPlusOneZModRoot (m * n) ≃
      QuadraticPlusOneZModRoot m ×
        QuadraticPlusOneZModRoot n := by
  let e := ZMod.chineseRemainder hcop
  refine
    { toFun := fun z => ?_
      invFun := fun xy => ?_
      left_inv := ?_
      right_inv := ?_ }
  · let y := e z.1
    have hz := z.2
    have hmap := congrArg e hz
    refine
      (⟨y.1, ?_⟩,
       ⟨y.2, ?_⟩)
    · simpa [y, e] using congrArg Prod.fst hmap
    · simpa [y, e] using congrArg Prod.snd hmap
  · refine ⟨e.symm (xy.1.1, xy.2.1), ?_⟩
    apply e.injective
    simp only [map_pow, RingEquiv.apply_symm_apply, Prod.pow_mk, xy.1.2, xy.2.2, map_neg, map_one]
    rfl
  · intro z
    apply Subtype.ext
    simp [e]
  · intro xy
    apply Prod.ext <;> apply Subtype.ext <;> simp [e]

/-- Root counts are multiplicative on coprime positive moduli. -/
theorem quadraticPlusOneRootCount_mul
    {m n : ℕ} (hm : 0 < m) (hn : 0 < n)
    (hcop : m.Coprime n) :
    quadraticPlusOneRootCount (m * n) =
      quadraticPlusOneRootCount m *
        quadraticPlusOneRootCount n := by
  let : NeZero m := ⟨hm.ne'⟩
  let : NeZero n := ⟨hn.ne'⟩
  let : NeZero (m * n) := ⟨mul_ne_zero hm.ne' hn.ne'⟩
  rw [quadraticPlusOneRootCount_eq_zmod,
    quadraticPlusOneRootCount_eq_zmod,
    quadraticPlusOneRootCount_eq_zmod]
  rw [Fintype.card_congr
      (quadraticPlusOneZModRootsMulEquiv hcop),
    Fintype.card_prod]

/-- Modulus one has one residue class and it is a root. -/
theorem quadraticPlusOneRootCount_one :
    quadraticPlusOneRootCount 1 = 1 := by
  decide

/-- Modulus two has the single root represented by one. -/
theorem quadraticPlusOneRootCount_two :
    quadraticPlusOneRootCount 2 = 1 := by
  decide

/-- For an odd prime congruent to one modulo four, `-1` has exactly two
square roots. -/
theorem quadraticPlusOneRootCount_prime_mod_four_one
    {p : ℕ} (hp : Nat.Prime p)
    (hmod : p % 4 = 1) :
    quadraticPlusOneRootCount p = 2 := by
  let : Fact p.Prime := ⟨hp⟩
  let : NeZero p := ⟨hp.ne_zero⟩
  have hp2 : p ≠ 2 := by
    intro hp_eq
    subst p
    norm_num at hmod
  have hminus : (((-1 : ℤ) : ZMod p)) ≠ 0 := by
    norm_num
  have hsquare : IsSquare (-1 : ZMod p) :=
    (ZMod.exists_sq_eq_neg_one_iff (p := p)).2 (by omega)
  have hleg : legendreSym p (-1) = 1 :=
    (legendreSym.eq_one_iff p hminus).2 (by simpa using hsquare)
  have hcard := legendreSym.card_sqrts (p := p) hp2 (-1)
  rw [hleg] at hcard
  norm_num only at hcard
  have hzmod :
      Fintype.card (QuadraticPlusOneZModRoot p) = 2 := by
    have hsame : Fintype.card (QuadraticPlusOneZModRoot p) =
        {x : ZMod p | x ^ 2 = ((-1 : ℤ) : ZMod p)}.toFinset.card := by
      rw [Set.toFinset_card]
      apply Fintype.card_congr
      exact Equiv.subtypeEquivRight fun x => by simp
    rw [hsame]
    exact_mod_cast hcard
  rw [quadraticPlusOneRootCount_eq_zmod]
  exact hzmod

/-- For an odd prime congruent to three modulo four, `-1` has no square root. -/
theorem quadraticPlusOneRootCount_prime_mod_four_three
    {p : ℕ} (hp : Nat.Prime p)
    (hmod : p % 4 = 3) :
    quadraticPlusOneRootCount p = 0 := by
  let : Fact p.Prime := ⟨hp⟩
  let : NeZero p := ⟨hp.ne_zero⟩
  have hp2 : p ≠ 2 := by
    intro hp_eq
    subst p
    norm_num at hmod
  have hnsquare : ¬ IsSquare (-1 : ZMod p) := by
    intro hsquare
    have := (ZMod.exists_sq_eq_neg_one_iff (p := p)).1 hsquare
    omega
  have hleg : legendreSym p (-1) = -1 :=
    (legendreSym.eq_neg_one_iff p).2 (by simpa using hnsquare)
  have hcard := legendreSym.card_sqrts (p := p) hp2 (-1)
  rw [hleg] at hcard
  norm_num only at hcard
  have hzmod :
      Fintype.card (QuadraticPlusOneZModRoot p) = 0 := by
    have hsame : Fintype.card (QuadraticPlusOneZModRoot p) =
        {x : ZMod p | x ^ 2 = ((-1 : ℤ) : ZMod p)}.toFinset.card := by
      rw [Set.toFinset_card]
      apply Fintype.card_congr
      exact Equiv.subtypeEquivRight fun x => by simp
    rw [hsame]
    exact_mod_cast hcard
  rw [quadraticPlusOneRootCount_eq_zmod]
  exact hzmod

end
end GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots
