-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Mu6.Variante3475453e971795d067bce9999caae48ff4339fe95b29a9270e17a67124f9ce5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3475453e971795d067bce9999caae48ff4339fe95b29a9270e17a67124f9ce5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.Mu6.Variante3475453e971795d067bce9999caae48ff4339fe95b29a9270e17a67124f9ce5","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"e3475453e971795d067bce9999caae48ff4339fe95b29a9270e17a67124f9ce5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/prime-budget/UpperProductFiniteSigns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Mu6.Variante3475453e971795d067bce9999caae48ff4339fe95b29a9270e17a67124f9ce5

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
