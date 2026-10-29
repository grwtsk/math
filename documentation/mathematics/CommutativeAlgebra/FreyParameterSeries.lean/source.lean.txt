/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib monic polynomial quotients and formal power series (Apache-2.0).
Formalization assistance: OpenAI.

An explicit coefficient-algebra identification of compatible parameter
quotients with formal power series. Coefficients are not completed, and no
analytic convergence, metric comparison or arithmetic height bound is asserted.
These are unelaborated source proof scripts.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient
import Mathlib.RingTheory.PowerSeries.Trunc
import Mathlib.Algebra.Polynomial.Div
import Mathlib.Algebra.Algebra.Pi

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyParameterSeries

open FreyJetQuotient

variable {R : Type*} [CommRing R]

/-- Read a coefficient using the unique monic remainder. Only slots k<=N
are used for quotient-independent coefficient recovery below. -/
def coefficient (N k : ℕ) (u : Parameter R N) : R :=
  (AdjoinRoot.modByMonicHom (Polynomial.monic_X.pow (N + 1)) u).coeff k

/-- Low coefficients of a polynomial survive its quotient class unchanged. -/
theorem coefficient_mk (N k : ℕ) (hk : k ≤ N) (p : Polynomial R) :
    coefficient N k (AdjoinRoot.mk ((Polynomial.X : Polynomial R) ^ (N + 1)) p) =
      p.coeff k := by
  have h := AdjoinRoot.mk_leftInverse
    (Polynomial.monic_X.pow (N + 1) : ((Polynomial.X : Polynomial R) ^ (N + 1)).Monic)
    (AdjoinRoot.mk ((Polynomial.X : Polynomial R) ^ (N + 1)) p)
  have hd := AdjoinRoot.mk_eq_mk.mp h
  have hc := Polynomial.X_pow_dvd_iff.mp hd k (Nat.lt_succ_of_le hk)
  exact sub_eq_zero.mp (by simpa only [Polynomial.coeff_sub, coefficient] using hc)

@[simp] theorem coefficient_zero (N k : ℕ) : coefficient (R := R) N k 0 = 0 := by
  simp [coefficient]

/-- All retained coefficients, not a finite subset of samples, detect a quotient. -/
theorem coefficient_ext (N : ℕ) (u v : Parameter R N)
    (h : ∀ k, k ≤ N → coefficient N k u = coefficient N k v) : u = v := by
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective u
  obtain ⟨q, rfl⟩ := AdjoinRoot.mk_surjective v
  apply AdjoinRoot.mk_eq_mk.mpr
  apply Polynomial.X_pow_dvd_iff.mpr
  intro k hk
  rw [Polynomial.coeff_sub, sub_eq_zero]
  simpa only [coefficient_mk N k (Nat.le_of_lt_succ hk)] using
    h k (Nat.le_of_lt_succ hk)

/-- Truncation on representatives is the actual quotient map, not interpolation. -/
theorem parameterTruncate_mk (M N : ℕ) (hMN : M ≤ N) (p : Polynomial R) :
    parameterTruncate R M N hMN
      (AdjoinRoot.mk ((Polynomial.X : Polynomial R) ^ (N + 1)) p) =
        AdjoinRoot.mk ((Polynomial.X : Polynomial R) ^ (M + 1)) p := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq => simp only [map_add, hp, hq]
  | monomial n c =>
    rw [← Polynomial.C_mul_X_pow_eq_monomial]
    simp only [map_mul, map_pow, AdjoinRoot.mk_C, AdjoinRoot.mk_X]
    change parameterTruncate R M N hMN (parameterScalar R N c) *
        parameterTruncate R M N hMN (parameter R N) ^ n =
      parameterScalar R M c * parameter R M ^ n
    rw [parameterTruncate_scalar, parameterTruncate_parameter]

/-- Coefficient recovery is coherent across any decreasing pair of orders. -/
theorem coefficient_truncate (M N : ℕ) (hMN : M ≤ N) (k : ℕ) (hk : k ≤ M)
    (u : Parameter R N) :
    coefficient M k (parameterTruncate R M N hMN u) = coefficient N k u := by
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective u
  rw [parameterTruncate_mk, coefficient_mk M k hk,
    coefficient_mk N k (hk.trans hMN)]

/-- Truncate a formal power series to its actual polynomial quotient. -/
def seriesTrunc (N : ℕ) (f : PowerSeries R) : Parameter R N :=
  AdjoinRoot.mk ((Polynomial.X : Polynomial R) ^ (N + 1))
    (PowerSeries.trunc (N + 1) f)

@[simp] theorem coefficient_seriesTrunc (N k : ℕ) (hk : k ≤ N) (f : PowerSeries R) :
    coefficient N k (seriesTrunc N f) = PowerSeries.coeff k f := by
  rw [seriesTrunc, coefficient_mk N k hk, PowerSeries.coeff_trunc,
    if_pos (Nat.lt_succ_of_le hk)]

/-- Multiplication is preserved only after quotienting; polynomial truncation
by itself is not multiplicative. -/
theorem seriesTrunc_mul (N : ℕ) (f g : PowerSeries R) :
    seriesTrunc N (f * g) = seriesTrunc N f * seriesTrunc N g := by
  unfold seriesTrunc
  rw [← map_mul]
  apply AdjoinRoot.mk_eq_mk.mpr
  apply Polynomial.X_pow_dvd_iff.mpr
  intro k hk
  rw [Polynomial.coeff_sub, sub_eq_zero, PowerSeries.coeff_trunc, if_pos hk]
  simpa only [← Polynomial.coe_mul, Polynomial.coeff_coe] using
    (PowerSeries.coeff_mul_eq_coeff_trunc_mul_trunc f g hk)

/-- The finite projection is a genuine coefficient-algebra homomorphism. -/
def seriesTruncAlg (N : ℕ) : PowerSeries R →ₐ[R] Parameter R N where
  toFun := seriesTrunc N
  map_one' := by simp [seriesTrunc]
  map_mul' := seriesTrunc_mul N
  map_zero' := by simp [seriesTrunc]
  map_add' f g := by simp [seriesTrunc]
  commutes' c := by
    change seriesTrunc N (PowerSeries.C c) = parameterScalar R N c
    simp [seriesTrunc, parameterScalar]

/-- Formal-series projections commute with the independently defined truncations. -/
theorem seriesTrunc_compatible (M N : ℕ) (hMN : M ≤ N) (f : PowerSeries R) :
    parameterTruncate R M N hMN (seriesTrunc N f) = seriesTrunc M f := by
  apply coefficient_ext M
  intro k hk
  rw [coefficient_truncate M N hMN k hk,
    coefficient_seriesTrunc N k (hk.trans hMN), coefficient_seriesTrunc M k hk]

/-- The inverse-limit algebra is a subalgebra of the product, using the ACTUAL
finite truncation maps. There is no choice of unrelated representatives. -/
def compatibleParameters (R : Type*) [CommRing R] :
    Subalgebra R (∀ N : ℕ, Parameter R N) where
  carrier := {u | ∀ M N (hMN : M ≤ N), parameterTruncate R M N hMN (u N) = u M}
  mul_mem' := by
    intro u v hu hv M N hMN
    change parameterTruncate R M N hMN (u N * v N) = u M * v M
    rw [map_mul, hu M N hMN, hv M N hMN]
  add_mem' := by
    intro u v hu hv M N hMN
    change parameterTruncate R M N hMN (u N + v N) = u M + v M
    rw [map_add, hu M N hMN, hv M N hMN]
  zero_mem' := by
    intro M N hMN
    exact map_zero (parameterTruncate R M N hMN)
  one_mem' := by
    intro M N hMN
    exact map_one (parameterTruncate R M N hMN)
  algebraMap_mem' c := by
    intro M N hMN
    exact parameterTruncate_scalar M N hMN c

/-- Compatible parameter sequences with inherited pointwise ring operations. -/
abbrev Limit (R : Type*) [CommRing R] := ↥(compatibleParameters R)

/-- One formal series supplies all its compatible finite projections. -/
def fromSeries : PowerSeries R →ₐ[R] Limit R where
  toFun f := ⟨fun N => seriesTrunc N f, fun M N hMN => seriesTrunc_compatible M N hMN f⟩
  map_one' := by apply Subtype.ext; funext N; exact (seriesTruncAlg N).map_one
  map_mul' f g := by apply Subtype.ext; funext N; exact seriesTrunc_mul N f g
  map_zero' := by apply Subtype.ext; funext N; exact (seriesTruncAlg N).map_zero
  map_add' f g := by apply Subtype.ext; funext N; exact (seriesTruncAlg N).map_add f g
  commutes' c := by apply Subtype.ext; funext N; exact (seriesTruncAlg N).commutes c

/-- Recover coefficient n from level n. Compatibility makes this independent
of every larger level. No numerical sampling or convergence is involved. -/
def toSeries (u : Limit R) : PowerSeries R :=
  PowerSeries.mk (fun n => coefficient n n (u.val n))

/-- Recovering and then truncating returns every complete finite quotient. -/
theorem seriesTrunc_toSeries (N : ℕ) (u : Limit R) :
    seriesTrunc N (toSeries u) = u.val N := by
  apply coefficient_ext N
  intro k hk
  rw [coefficient_seriesTrunc N k hk]
  change coefficient k k (u.val k) = coefficient N k (u.val N)
  rw [← u.property k N hk]
  exact coefficient_truncate k N hk k (le_refl k) (u.val N)

/-- The reconstruction is the identity on all formal coefficients. -/
theorem toSeries_fromSeries (f : PowerSeries R) : toSeries (fromSeries f) = f := by
  ext k
  change coefficient k k (seriesTrunc k f) = PowerSeries.coeff k f
  exact coefficient_seriesTrunc k k (le_refl k) f

/-- The other inverse identity holds on compatible sequences, not just diagonals. -/
theorem fromSeries_toSeries (u : Limit R) : fromSeries (toSeries u) = u := by
  apply Subtype.ext
  funext N
  exact seriesTrunc_toSeries N u

/-- An explicit R-algebra equivalence; its inverse is the coefficient formula. -/
def seriesEquiv (R : Type*) [CommRing R] : PowerSeries R ≃ₐ[R] Limit R where
  toFun := fromSeries
  invFun := toSeries
  left_inv := toSeries_fromSeries
  right_inv := fromSeries_toSeries
  map_mul' := fromSeries.map_mul
  map_add' := fromSeries.map_add
  commutes' := fromSeries.commutes

/-- Equality of all finite projections detects a formal series. -/
theorem series_ext (f g : PowerSeries R)
    (h : ∀ N, seriesTrunc N f = seriesTrunc N g) : f = g := by
  apply (seriesEquiv R).injective
  apply Subtype.ext
  funext N
  exact h N

/-- The projection kernel is EXACTLY the T^(N+1) filtration condition. -/
theorem seriesTrunc_eq_zero_iff (N : ℕ) (f : PowerSeries R) :
    seriesTrunc N f = 0 ↔ (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣ f := by
  rw [PowerSeries.X_pow_dvd_iff]
  constructor
  · intro h k hk
    have hc := congrArg (coefficient N k) h
    simpa only [coefficient_seriesTrunc N k (Nat.le_of_lt_succ hk), coefficient_zero] using hc
  · intro h
    apply coefficient_ext N
    intro k hk
    rw [coefficient_seriesTrunc N k hk, coefficient_zero]
    exact h k (Nat.lt_succ_of_le hk)

/-- The formal parameter projects to the existing quotient parameter, including N=0. -/
theorem seriesTrunc_X (N : ℕ) :
    seriesTrunc N (PowerSeries.X : PowerSeries R) = parameter R N := by
  cases N with
  | zero =>
    have h : parameter R 0 = 0 := by simpa only [pow_one] using (parameter_pow (R := R) 0)
    simp [seriesTrunc, PowerSeries.trunc_one_X, h]
  | succ N =>
    simp [seriesTrunc, PowerSeries.trunc_X, parameter, AdjoinRoot.root]

/-- A nonzero formal tail can be invisible at any one finite order.
This explicitly prevents finite data from being called a complete series. -/
theorem invisible_tail [Nontrivial R] (N : ℕ) :
    (PowerSeries.X : PowerSeries R) ^ (N + 1) ≠ 0 ∧
      seriesTrunc N ((PowerSeries.X : PowerSeries R) ^ (N + 1)) = 0 := by
  constructor
  · intro h
    have hc := congrArg (PowerSeries.coeff (N + 1)) h
    simpa using hc
  · exact (seriesTrunc_eq_zero_iff N _).mpr dvd_rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyParameterSeries
