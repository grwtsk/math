/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib commutative rings, divisibility and ring tactics (Apache-2.0).
Formalization assistance: OpenAI.

Finite nilpotent implicit lifting for d*z+h*z^2+z^3=e^2. The inverse of d
is explicit. Precision grows by powers of e, not by changing a Gram matrix.
No completed-local-ring identification, analytic convergence, conductor or
height-upper-bound theorem is asserted here. These are source proof scripts.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyQuadraticJet

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRecursion

variable {A : Type*} [CommRing A]

/-- Fixed-Jacobian iteration. j is supplied explicitly, not defined by division. -/
def step (j h e z : A) : A := j * (e ^ 2 - h * z ^ 2 - z ^ 3)

/-- A finite recursive approximant starting at the selected cubic root. -/
def iterate (j h e : A) : ℕ → A
  | 0 => 0
  | n + 1 => step j h e (iterate j h e n)

/-- The shifted cubic residual, retaining the same d, h and parameter e. -/
def residual (d h e z : A) : A := d * z + h * z ^ 2 + z ^ 3 - e ^ 2

@[simp] theorem iterate_zero (j h e : A) : iterate j h e 0 = 0 := rfl

@[simp] theorem iterate_one (j h e : A) : iterate j h e 1 = j * e ^ 2 := by
  simp [iterate, step]

/-- Every approximant has the required zero constant and zero first jet. -/
theorem square_dvd_iterate (j h e : A) (n : ℕ) : e ^ 2 ∣ iterate j h e n := by
  induction n with
  | zero => simp [iterate]
  | succ n ih =>
    obtain ⟨u, hu⟩ := ih
    refine ⟨j * (1 - h * e ^ 2 * u ^ 2 - e ^ 4 * u ^ 3), ?_⟩
    rw [iterate, step, hu]
    ring

/-- On the square-parameter ideal, one step gains two powers of precision. -/
theorem step_gain_two (j h e z w : A) (k : ℕ)
    (hz : e ^ 2 ∣ z) (hw : e ^ 2 ∣ w) (hzw : e ^ k ∣ z - w) :
    e ^ (k + 2) ∣ step j h e z - step j h e w := by
  obtain ⟨u, hu⟩ := hz
  obtain ⟨v, hv⟩ := hw
  obtain ⟨c, hc⟩ := hzw
  refine ⟨-j * c * (h * (u + v) + e ^ 2 * (u ^ 2 + u * v + v ^ 2)), ?_⟩
  calc
    step j h e z - step j h e w =
        (z - w) * (-j * (h * (z + w) + z ^ 2 + z * w + w ^ 2)) := by
          unfold step
          ring
    _ = _ := by rw [hc, hu, hv, pow_add]; ring

/-- Consecutive approximants agree through order 2n+1. -/
theorem consecutive_dvd (j h e : A) (n : ℕ) :
    e ^ (2 * n + 2) ∣ iterate j h e (n + 1) - iterate j h e n := by
  induction n with
  | zero =>
    refine ⟨j, ?_⟩
    simp [iterate, step, mul_comm]
  | succ n ih =>
    change e ^ (2 * (n + 1) + 2) ∣
      step j h e (iterate j h e (n + 1)) - step j h e (iterate j h e n)
    rw [show 2 * (n + 1) + 2 = (2 * n + 2) + 2 by omega]
    exact step_gain_two j h e _ _ _
      (square_dvd_iterate j h e (n + 1)) (square_dvd_iterate j h e n) ih

/-- The actual cubic residual is tied to the consecutive-step difference. -/
theorem residual_eq_step_difference (d j h e z : A) (hdj : d * j = 1) :
    residual d h e z = -d * (step j h e z - z) := by
  unfold residual step
  linear_combination (e ^ 2 - h * z ^ 2 - z ^ 3) * hdj

/-- Exact residual precision at every finite stage, with no convergence premise. -/
theorem residual_dvd (d j h e : A) (hdj : d * j = 1) (n : ℕ) :
    e ^ (2 * n + 2) ∣ residual d h e (iterate j h e n) := by
  rw [residual_eq_step_difference d j h e _ hdj]
  exact dvd_mul_of_dvd_right (consecutive_dvd j h e n) (-d)

/-- Once the precision power vanishes, the finite approximant solves the cubic. -/
theorem iterate_solves (d j h e : A) (hdj : d * j = 1) (n : ℕ)
    (he : e ^ (2 * n + 2) = 0) :
    d * iterate j h e n + h * iterate j h e n ^ 2 + iterate j h e n ^ 3 = e ^ 2 := by
  have hz : residual d h e (iterate j h e n) = 0 := by
    simpa only [he, zero_dvd_iff] using residual_dvd d j h e hdj n
  exact sub_eq_zero.mp hz

/-- A solution is a fixed point of the very same iteration. -/
theorem solution_fixed (d j h e z : A) (hdj : d * j = 1)
    (hz : d * z + h * z ^ 2 + z ^ 3 = e ^ 2) : step j h e z = z := by
  unfold step
  calc
    j * (e ^ 2 - h * z ^ 2 - z ^ 3) = j * (d * z) := by
      congr 1
      linear_combination -hz
    _ = (d * j) * z := by ring
    _ = z := by rw [hdj, one_mul]

/-- A root reducing to the anchor already has zero first jet in the y chart. -/
theorem solution_square_dvd (d j h e z : A) (hdj : d * j = 1)
    (hez : e ∣ z) (hz : d * z + h * z ^ 2 + z ^ 3 = e ^ 2) : e ^ 2 ∣ z := by
  obtain ⟨u, hu⟩ := hez
  have hh : e ^ 2 ∣ e ^ 2 - h * z ^ 2 - z ^ 3 := by
    refine ⟨1 - h * u ^ 2 - e * u ^ 3, ?_⟩
    rw [hu]
    ring
  have hs := solution_fixed d j h e z hdj hz
  rw [← hs]
  exact dvd_mul_of_dvd_right hh j

/-- Any two solutions at the same root agree in a nilpotent parameter ring.
The congruence-to-root hypotheses are essential; other cubic roots are excluded. -/
theorem solution_unique (d j h e z w : A) (hdj : d * j = 1)
    (hz0 : e ∣ z) (hw0 : e ∣ w)
    (hz : d * z + h * z ^ 2 + z ^ 3 = e ^ 2)
    (hw : d * w + h * w ^ 2 + w ^ 3 = e ^ 2)
    (N : ℕ) (he : e ^ N = 0) : z = w := by
  have hz2 := solution_square_dvd d j h e z hdj hz0 hz
  have hw2 := solution_square_dvd d j h e w hdj hw0 hw
  have hzf := solution_fixed d j h e z hdj hz
  have hwf := solution_fixed d j h e w hdj hw
  have hprec : ∀ n : ℕ, e ^ (2 * n) ∣ z - w := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      have hh := step_gain_two j h e z w (2 * n) hz2 hw2 ih
      rw [hzf, hwf] at hh
      simpa only [Nat.mul_add, Nat.mul_one] using hh
  have he2 : e ^ (2 * N) = 0 := by
    calc
      e ^ (2 * N) = e ^ N * e ^ N := by
        rw [← pow_add]
        congr 1
        omega
      _ = 0 := by rw [he, zero_mul]
  have hz0' : z - w = 0 := by simpa only [he2, zero_dvd_iff] using hprec N
  exact sub_eq_zero.mp hz0'

/-- A larger power also vanishes. No characteristic or reducedness assumption is used. -/
theorem power_zero_of_le (e : A) {k l : ℕ} (hk : e ^ k = 0) (hkl : k ≤ l) :
    e ^ l = 0 := by
  calc
    e ^ l = e ^ k * e ^ (l - k) := by
      rw [← pow_add]
      congr 1
      omega
    _ = 0 := by rw [hk, zero_mul]

/-- Once two stages both exceed the nilpotence order, they give the SAME root. -/
theorem iterate_stable (d j h e : A) (hdj : d * j = 1)
    (K m n : ℕ) (he : e ^ K = 0)
    (hm : K ≤ 2 * m + 2) (hn : K ≤ 2 * n + 2) :
    iterate j h e m = iterate j h e n := by
  have he2 : e ∣ e ^ 2 := ⟨e, by ring⟩
  exact solution_unique d j h e _ _ hdj
    (he2.trans (square_dvd_iterate j h e m))
    (he2.trans (square_dvd_iterate j h e n))
    (iterate_solves d j h e hdj m (power_zero_of_le e he hm))
    (iterate_solves d j h e hdj n (power_zero_of_le e he hn)) K he

/-- All approximants commute with ring maps, including quotient truncations
and base changes with the SAME mapped inverse-Jacobian witness. -/
theorem map_iterate {B : Type*} [CommRing B] (f : A →+* B)
    (j h e : A) (n : ℕ) :
    f (iterate j h e n) = iterate (f j) (f h) (f e) n := by
  induction n with
  | zero => simp [iterate]
  | succ n ih => simp [iterate, step, ih]

/-- Reflection of the y parameter fixes the x displacement at every stage.
This is fiber-parameter parity, not a Euclidean reflection theorem. -/
theorem iterate_neg_parameter (j h e : A) (n : ℕ) :
    iterate j h (-e) n = iterate j h e n := by
  induction n with
  | zero => rfl
  | succ n ih => simp [iterate, step, ih]

/-- A conservative common-denominator exponent. It is not a sharp valuation. -/
def denominatorExponent : ℕ → ℕ
  | 0 => 0
  | n + 1 => 3 * denominatorExponent n + 1

/-- Division-free numerator recursion. With integral polynomial inputs, every
numerator remains integral; only powers of the original d are needed. -/
def numerator (d h e : A) : ℕ → A
  | 0 => 0
  | n + 1 => d ^ (3 * denominatorExponent n) * e ^ 2 -
      h * d ^ denominatorExponent n * numerator d h e n ^ 2 - numerator d h e n ^ 3

/-- The division-free numerator also commutes with every coefficient ring map. -/
theorem map_numerator {B : Type*} [CommRing B] (f : A →+* B)
    (d h e : A) (n : ℕ) :
    f (numerator d h e n) = numerator (f d) (f h) (f e) n := by
  induction n with
  | zero => simp [numerator]
  | succ n ih => simp [numerator, ih]

/-- Explicit denominator clearing, proved over any commutative ring with d*j=1.
Applied to polynomial rings, this retains depth rather than replacing it by support. -/
theorem denominator_clears (d j h e : A) (hdj : d * j = 1) (n : ℕ) :
    d ^ denominatorExponent n * iterate j h e n = numerator d h e n := by
  induction n with
  | zero => simp [denominatorExponent, iterate, numerator]
  | succ n ih =>
    have hp : d ^ (3 * denominatorExponent n) = (d ^ denominatorExponent n) ^ 3 := by
      rw [← pow_mul]
      congr 1
      omega
    calc
      d ^ denominatorExponent (n + 1) * iterate j h e (n + 1) =
          (d * j) * (d ^ (3 * denominatorExponent n) * e ^ 2 -
            h * d ^ denominatorExponent n * (d ^ denominatorExponent n * iterate j h e n) ^ 2 -
            (d ^ denominatorExponent n * iterate j h e n) ^ 3) := by
              simp only [denominatorExponent, iterate, step, pow_add, pow_one, hp]
              ring
      _ = numerator d h e (n + 1) := by simp only [hdj, ih, one_mul, numerator]

/-- Exact accounting identity for the conservative exponent recurrence. -/
theorem denominatorExponent_identity (n : ℕ) :
    2 * denominatorExponent n + 1 = 3 ^ n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [denominatorExponent, pow_succ]
    omega

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetRecursion
