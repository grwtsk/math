# Upper Product Finite Signs — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8aae2aa8f43d9c29e8c66b3fb7009ca999b47f35` · SHA-256 `e3475453e971795d067bce9999caae48ff4339fe95b29a9270e17a67124f9ce5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

set_option autoImplicit false

namespace UpperProductFiniteSignsScratch
open Finset
noncomputable section

private theorem mu6 : ArithmeticFunction.moebius 6 = 1 := by
  have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
    (by decide : Nat.Coprime 2 3)
  norm_num [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 3)] at h
  exact h

private theorem mu7 : ArithmeticFunction.moebius 7 = -1 :=
  ArithmeticFunction.moebius_apply_prime (by norm_num)

private theorem mu8 : ArithmeticFunction.moebius 8 = 0 := by
  simpa using ArithmeticFunction.moebius_apply_prime_pow
    (p := 2) (k := 3) (by norm_num) (by norm_num)

private theorem mu9 : ArithmeticFunction.moebius 9 = 0 := by
  simpa using ArithmeticFunction.moebius_apply_prime_pow
    (p := 3) (k := 2) (by norm_num) (by norm_num)

private theorem mu10 : ArithmeticFunction.moebius 10 = 1 := by
  have h := ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
    (by decide : Nat.Coprime 2 5)
  norm_num [ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 2),
    ArithmeticFunction.moebius_apply_prime (by norm_num : Nat.Prime 5)] at h
  exact h

/-- The complete upper half at N=10 has positive cumulative product mass at 36. -/
theorem upper_cutoff_36 :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 36 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = 1 := by
  have hset : Ioc 5 10 = ({6, 7, 8, 9, 10} : Finset ℕ) := by decide
  norm_num [hset, mu6, mu7, mu8, mu9, mu10]

/-- The same complete upper half has negative cumulative product mass at 42. -/
theorem upper_cutoff_42 :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10, if i*j ≤ 42 then
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ) else 0) = -1 := by
  have hset : Ioc 5 10 = ({6, 7, 8, 9, 10} : Finset ℕ) := by decide
  norm_num [hset, mu6, mu7, mu8, mu9, mu10]

/-- All ordered pairs in the same upper square give this exact six-product combination. -/
theorem upper_square_10_eq (F : ℕ → ℝ) :
    (∑ i ∈ Ioc 5 10, ∑ j ∈ Ioc 5 10,
      (ArithmeticFunction.moebius i : ℝ)*(ArithmeticFunction.moebius j : ℝ)*F (i*j)) =
      F 36 - 2*F 42 + F 49 + 2*F 60 - 2*F 70 + F 100 := by
  have hset : Ioc 5 10 = ({6, 7, 8, 9, 10} : Finset ℕ) := by decide
  norm_num [hset, mu6, mu7, mu8, mu9, mu10]
  ring

end
end UpperProductFiniteSignsScratch
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc30be242127a596c9245e0a6bf15468c0d7256602554728fb430f9b23ed606e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperProductFiniteSigns/Variante3475453e971795d067bce9999caae48ff4339fe95b29a9270e17a67124f9ce5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
