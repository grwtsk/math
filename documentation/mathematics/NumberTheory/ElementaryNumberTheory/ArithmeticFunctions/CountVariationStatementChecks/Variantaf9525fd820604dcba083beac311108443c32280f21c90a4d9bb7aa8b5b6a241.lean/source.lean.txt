-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SquarefreeCount.Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.SquarefreeCount.Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"d35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/CountVariationStatementChecks.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SquarefreeCount
import FormalResearch.RiemannHypothesis.SourceComparison.FiniteAbelVariation


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.SquarefreeCount.Variantd35b574266ab8a73c25e50a3c03bd743ce0da961bf98f692c6c6996dcd7bd534

open FormalResearch.RiemannHypothesis.SourceComparison

-- Finite coprime counting includes the actual modulus, divisors, and integer quotient.
section CoprimeCountStatements
open Finset CoprimeCount

example (h j : ℕ) : coprimeCount h j =
    ((Icc 1 j).filter (fun k ↦ Nat.Coprime k h)).card := rfl

example (h : ℕ) : coprimeDensity h =
    ∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ) := rfl

example (n : ℕ) : (∑ e ∈ n.divisors, (ArithmeticFunction.moebius e : ℝ)) =
    if n = 1 then 1 else 0 := CoprimeCount.sum_moebius_divisors n

example (h k : ℕ) (hh : 1 ≤ h) :
    (if Nat.Coprime k h then (1 : ℝ) else 0) =
      ∑ e ∈ h.divisors, if e ∣ k then (ArithmeticFunction.moebius e : ℝ) else 0 :=
  CoprimeCount.coprime_indicator_eq h k hh

example (j e : ℕ) : ((Icc 1 j).filter (fun k ↦ e ∣ k)).card = j / e :=
  CoprimeCount.positive_multiples_card j e

example (h j : ℕ) (hh : 1 ≤ h) :
    (((Icc 1 j).filter (fun k ↦ Nat.Coprime k h)).card : ℝ) =
      ∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) * ((j / e : ℕ) : ℝ) :=
  CoprimeCount.coprimeCount_eq_moebius_floor h j hh

example (j e : ℕ) (he : 1 ≤ e) :
    |((j / e : ℕ) : ℝ) - (j : ℝ) / (e : ℝ)| ≤ 1 :=
  CoprimeCount.natural_division_error j e he

example (h j : ℕ) (hh : 1 ≤ h) :
    |(coprimeCount h j : ℝ) -
      (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (j : ℝ)| ≤
      (h.divisors.card : ℝ) := CoprimeCount.coprimeCount_error_le h j hh

example (h : ℕ) (hh : 1 ≤ h) :
    (coprimeCount h h : ℝ) =
      (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) * (h : ℝ) :=
  CoprimeCount.coprimeCount_period h hh

example (h j : ℕ) : ((Icc 1 j).filter (fun k ↦ Nat.Coprime k h)).card ≤ j :=
  CoprimeCount.coprimeCount_le h j

example (h : ℕ) (hh : 1 ≤ h) :
    0 ≤ ∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ) :=
  CoprimeCount.coprimeDensity_nonneg h hh

example (h : ℕ) (hh : 1 ≤ h) :
    (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) ≤ 1 :=
  CoprimeCount.coprimeDensity_le_one h hh
end CoprimeCountStatements

-- Both square-root tail endpoints remain finite and exact.
section ReciprocalSquareTailStatements
open Finset

example (Y Z : ℕ) (hY : 1 ≤ Y) (hYZ : Y ≤ Z) :
    (∑ d ∈ Ioc Y Z, 1 / (d : ℝ) ^ 2) ≤ 1 / (Y : ℝ) :=
  ReciprocalSquareTail.reciprocal_square_tail_le Y Z hY hYZ

example (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc (Nat.sqrt j) (Nat.sqrt G), 1 / (d : ℝ) ^ 2) ≤
      2 * Real.sqrt (j : ℝ) := ReciprocalSquareTail.sqrt_cutoff_tail_le j G hj hjG

example (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc ⌊Real.sqrt (j : ℝ)⌋₊ ⌊Real.sqrt (G : ℝ)⌋₊,
      1 / (d : ℝ) ^ 2) ≤ 2 * Real.sqrt (j : ℝ) :=
  ReciprocalSquareTail.floor_sqrt_cutoff_tail_le j G hj hjG
end ReciprocalSquareTailStatements

-- Square-divisor inversion retains the literal Möbius square and coprimality slots.
section SquarefreeCountStatements
open Finset CoprimeCount SquarefreeCount

example (n : ℕ) : halfFactorization n =
    n.factorization.mapRange (fun a ↦ a / 2) (by decide) := rfl

example (n : ℕ) : squareDivisorRoot n = (halfFactorization n).prod (· ^ ·) := rfl

example (n : ℕ) : halfFactorization n ≤ n.factorization :=
  SquarefreeCount.halfFactorization_le n

example (n : ℕ) : squareDivisorRoot n ≠ 0 := SquarefreeCount.squareDivisorRoot_ne_zero n

example (n : ℕ) : (squareDivisorRoot n).factorization = halfFactorization n :=
  SquarefreeCount.squareDivisorRoot_factorization n

example (n d : ℕ) (hn : n ≠ 0) : d ^ 2 ∣ n ↔ d ∣ squareDivisorRoot n :=
  SquarefreeCount.square_dvd_iff_dvd_root n d hn

example (n : ℕ) (hn : n ≠ 0) : squareDivisorRoot n = 1 ↔ Squarefree n :=
  SquarefreeCount.root_eq_one_iff_squarefree n hn

example (n : ℕ) (hn : n ≠ 0) :
    n.divisors.filter (fun d ↦ d ^ 2 ∣ n) = (squareDivisorRoot n).divisors :=
  SquarefreeCount.squareDivisors_eq_root_divisors n hn

example (n : ℕ) (hn : n ≠ 0) : (ArithmeticFunction.moebius n : ℝ) ^ 2 =
    ∑ d ∈ n.divisors, if d ^ 2 ∣ n then (ArithmeticFunction.moebius d : ℝ) else 0 :=
  SquarefreeCount.moebius_square_eq_sum_squareDivisors n hn

example (n j : ℕ) (hn : 1 ≤ n) (hnj : n ≤ j) :
    n.divisors.filter (fun d ↦ d ^ 2 ∣ n) =
      (Icc 1 (Nat.sqrt j)).filter (fun d ↦ d ^ 2 ∣ n) :=
  SquarefreeCount.squareDivisors_eq_Icc n j hn hnj

example (n j : ℕ) (hn : 1 ≤ n) (hnj : n ≤ j) :
    (ArithmeticFunction.moebius n : ℝ) ^ 2 =
      ∑ d ∈ Icc 1 (Nat.sqrt j), if d ^ 2 ∣ n then
        (ArithmeticFunction.moebius d : ℝ) else 0 :=
  SquarefreeCount.moebius_square_eq_sum_Icc n j hn hnj

example (h j a : ℕ) (ha : 1 ≤ a) (hah : Nat.Coprime a h) :
    ((Icc 1 j).filter (fun n ↦ a ∣ n ∧ Nat.Coprime n h)).card =
      ((Icc 1 (j / a)).filter (fun k ↦ Nat.Coprime k h)).card :=
  SquarefreeCount.coprime_multiples_card h j a ha hah

example (h j : ℕ) : squarefreeCoprimeCount h j =
    ∑ g ∈ Icc 1 j, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      (if Nat.Coprime g h then 1 else 0) := rfl

example (h j d : ℕ) (hd : 1 ≤ d) :
    (∑ g ∈ Icc 1 j, (if d ^ 2 ∣ g then (1 : ℝ) else 0) *
      (if Nat.Coprime g h then 1 else 0)) =
      if Nat.Coprime d h then (coprimeCount h (j / d ^ 2) : ℝ) else 0 :=
  SquarefreeCount.coprime_multiples_sum h j d hd

example (h j : ℕ) :
    (∑ g ∈ Icc 1 j, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
      (if Nat.Coprime g h then 1 else 0)) =
      ∑ d ∈ Icc 1 (Nat.sqrt j), (ArithmeticFunction.moebius d : ℝ) *
        (if Nat.Coprime d h then (coprimeCount h (j / d ^ 2) : ℝ) else 0) :=
  SquarefreeCount.squarefreeCoprimeCount_eq h j

example (h j a : ℕ) (hh : 1 ≤ h) (ha : 1 ≤ a) :
    |(coprimeCount h (j / a) : ℝ) -
      (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) *
        (j : ℝ) / (a : ℝ)| ≤ (h.divisors.card : ℝ) :=
  SquarefreeCount.coprimeCount_div_error h j a hh ha

example (h D : ℕ) : finiteSquarefreeDensity h D =
    (∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) *
      ∑ d ∈ Icc 1 D, if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) ^ 2 else 0 := rfl

example (h j : ℕ) (hh : 1 ≤ h) :
    |squarefreeCoprimeCount h j -
      (j : ℝ) * finiteSquarefreeDensity h (Nat.sqrt j)| ≤
      (h.divisors.card : ℝ) * (Nat.sqrt j : ℝ) :=
  SquarefreeCount.squarefreeCoprimeCount_error_le h j hh

example (h Y Z : ℕ) (hh : 1 ≤ h) (hYZ : Y ≤ Z) :
    |finiteSquarefreeDensity h Z - finiteSquarefreeDensity h Y| ≤
      ∑ d ∈ Ioc Y Z, 1 / (d : ℝ) ^ 2 :=
  SquarefreeCount.finiteSquarefreeDensity_difference_le h Y Z hh hYZ

example (h j G : ℕ) (hh : 1 ≤ h) (hj : 1 ≤ j) (hjG : j ≤ G) :
    |(∑ g ∈ Icc 1 j, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        (if Nat.Coprime g h then 1 else 0)) -
      ((∑ e ∈ h.divisors, (ArithmeticFunction.moebius e : ℝ) / (e : ℝ)) *
        ∑ d ∈ Icc 1 (Nat.sqrt G), if Nat.Coprime d h then
          (ArithmeticFunction.moebius d : ℝ) / (d : ℝ) ^ 2 else 0) * (j : ℝ)| ≤
      ((h.divisors.card : ℝ) + 2) * Real.sqrt (j : ℝ) :=
  SquarefreeCount.fixedDensity_error_le h j G hh hj hjG
end SquarefreeCountStatements

-- The finite Abel transport keeps its terminal atom and the full positive difference range.
section FiniteAbelVariationStatements
open Finset

example (b e : ℕ → ℝ) (G : ℕ) : (∑ g ∈ Icc 1 G, b g * e g) =
    (∑ g ∈ Icc 1 G, b g) * e G +
      ∑ j ∈ Ico 1 G, (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1)) :=
  FiniteAbelVariation.sum_Icc_mul_by_parts_Ico b e G

example (b e : ℕ → ℝ) (G : ℕ) : (∑ g ∈ Icc 1 G, b g * e g) =
    (∑ g ∈ Icc 1 G, b g) * e G +
      ∑ j ∈ Icc 1 (G - 1), (∑ g ∈ Icc 1 j, b g) * (e j - e (j + 1)) :=
  FiniteAbelVariation.sum_Icc_mul_by_parts b e G

example (a : ℕ → ℝ) (δ : ℝ) (j : ℕ) :
    (∑ g ∈ Icc 1 j, (a g - δ)) = (∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ) :=
  FiniteAbelVariation.centered_sum a δ j

example (a e : ℕ → ℝ) (δ : ℝ) (G : ℕ) :
    (∑ g ∈ Icc 1 G, a g * e g) - δ * (∑ g ∈ Icc 1 G, e g) =
      ((∑ g ∈ Icc 1 G, a g) - δ * (G : ℝ)) * e G +
        ∑ j ∈ Icc 1 (G - 1),
          ((∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)) * (e j - e (j + 1)) :=
  FiniteAbelVariation.centered_sum_mul_by_parts a e δ G

example (a e : ℕ → ℝ) (δ C : ℝ) (G : ℕ)
    (hbound : ∀ j ∈ Icc 1 G,
      |(∑ g ∈ Icc 1 j, a g) - δ * (j : ℝ)| ≤ C * Real.sqrt (j : ℝ)) :
    |(∑ g ∈ Icc 1 G, a g * e g) - δ * (∑ g ∈ Icc 1 G, e g)| ≤
      C * (Real.sqrt (G : ℝ) * |e G| +
        ∑ j ∈ Icc 1 (G - 1), Real.sqrt (j : ℝ) * |e j - e (j + 1)|) :=
  FiniteAbelVariation.weighted_error_abs_le_sqrt_variation a e δ C G hbound

example (a e : ℕ → ℝ) (δ C : ℝ) :
    |(∑ g ∈ Icc 1 0, a g * e g) - δ * (∑ g ∈ Icc 1 0, e g)| =
      C * (Real.sqrt (0 : ℝ) * |e 0| +
        ∑ j ∈ Icc 1 (0 - 1 : ℕ), Real.sqrt (j : ℝ) * |e j - e (j + 1)|) :=
  FiniteAbelVariation.weighted_error_zero a e δ C
end FiniteAbelVariationStatements
