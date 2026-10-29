import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic.NormNum.Prime
set_option autoImplicit false
open ArithmeticFunction
example : moebius 6 = 1 := by
  rw [show (6 : ℕ) = 2 * 3 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (2 : ℕ).gcd 3 = 1 by decide),
    moebius_apply_prime (by norm_num), moebius_apply_prime (by norm_num)]
  norm_num
example : moebius 30 = -1 := by
  rw [show (30 : ℕ) = (2 * 3) * 5 by rfl,
    isMultiplicative_moebius.map_mul_of_coprime (show (6 : ℕ).gcd 5 = 1 by decide),
    isMultiplicative_moebius.map_mul_of_coprime (show (2 : ℕ).gcd 3 = 1 by decide)]
  norm_num [moebius_apply_prime (by norm_num : Nat.Prime 2),
    moebius_apply_prime (by norm_num : Nat.Prime 3),
    moebius_apply_prime (by norm_num : Nat.Prime 5)]
example : (30 : ℕ).divisors = {1,2,3,5,6,10,15,30} := by
  norm_num [Nat.divisors]
  decide
