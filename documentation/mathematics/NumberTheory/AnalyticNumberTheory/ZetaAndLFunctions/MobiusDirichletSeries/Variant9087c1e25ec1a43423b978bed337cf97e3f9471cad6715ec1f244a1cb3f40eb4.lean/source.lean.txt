-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MobiusComplex.Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.MobiusComplex.Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/MobiusDirichletSeries.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.Mobius
import Folder.Rebuild.NumberTheory.DirichletConvolution
import Folder.Rebuild.AnalyticNumberTheory.ComplexDirichletSeries
import Mathlib.NumberTheory.LSeries.Convolution

/-!
# Folder.Rebuild.AnalyticNumberTheory.MobiusDirichletSeries

The Möbius coefficients and their Dirichlet series in the rebuild branch.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.MobiusComplex.Variant6757791a312be3ad4b3ba1403654f45231655a6e52213d8c2ff58e31e66622ba

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open ArithmeticFunction
open scoped ArithmeticFunction.Moebius
open scoped ArithmeticFunction.zeta
open scoped BigOperators
open scoped LSeries.notation

def mobiusComplex : ArithFn Complex :=
  fun n => ((ArithmeticFunction.moebius n : Int) : Complex)

noncomputable def mobiusDirichletSeries
    (s : Complex) : Complex :=
  complexDirichletSeries mobiusComplex s

theorem norm_mobiusComplex_le_one
    (n : Nat) :
    ‖mobiusComplex n‖ ≤ 1 := by
  rcases ArithmeticFunction.moebius_eq_or n with h | h | h
  · simp [mobiusComplex, h]
  · simp [mobiusComplex, h]
  · simp [mobiusComplex, h]

/--
The Möbius Dirichlet series is absolutely convergent for `Re(s) > 1`.

This is the standard half-plane of absolute convergence. It does not use
analytic continuation, zero-free regions, PNT, RH, or generalized RH.
-/
theorem mobiusDirichlet_absSummable
    {s : Complex}
    (hs : 1 < s.re) :
    ComplexDirichletAbsSummable mobiusComplex s :=
  complexDirichletSeries_absSummable_of_bounded_coeff
    mobiusComplex
    (s := s)
    (C := 1)
    hs
    zero_le_one
    norm_mobiusComplex_le_one

theorem mobiusDirichletSeries_eq_tsum
    (s : Complex) :
    mobiusDirichletSeries s =
      ∑' n : Nat, mobiusComplex n * complexWeight s n :=
  rfl

def epsilonComplex : ArithFn Complex :=
  fun n => if n = 1 then 1 else 0

theorem one_conv_mobius_eq_epsilon_complex :
    dirichletConv oneArithFnComplex mobiusComplex = epsilonComplex := by
  funext n
  have h := congrArg (fun F : ArithmeticFunction Complex => F n)
    (ArithmeticFunction.coe_zeta_mul_coe_moebius (R := Complex))
  rw [ArithmeticFunction.mul_apply] at h
  rw [Nat.sum_divisorsAntidiagonal
    (fun d e =>
      ((ζ : ArithmeticFunction Complex) d) *
        ((↑μ : ArithmeticFunction Complex) e))] at h
  have hclean :
      (∑ d ∈ n.divisors,
          ((ArithmeticFunction.moebius (n / d) : Int) : Complex)) =
        if n = 1 then 1 else 0 := by
    calc
      (∑ d ∈ n.divisors,
          ((ArithmeticFunction.moebius (n / d) : Int) : Complex))
          =
            ∑ d ∈ n.divisors,
              ((ζ : ArithmeticFunction Complex) d) *
                ((↑μ : ArithmeticFunction Complex) (n / d)) := by
              apply Finset.sum_congr rfl
              intro d hd
              simp [ArithmeticFunction.zeta_apply,
                Nat.ne_of_gt (Nat.pos_of_mem_divisors hd)]
      _ = if n = 1 then 1 else 0 := by
              simpa [ArithmeticFunction.one_apply] using h
  simpa [dirichletConv, oneArithFnComplex, mobiusComplex, epsilonComplex] using hclean

theorem lseries_one_convolution_mobius_eq_delta :
    LSeries.convolution oneArithFnComplex mobiusComplex = LSeries.delta := by
  calc
    LSeries.convolution oneArithFnComplex mobiusComplex
        =
          LSeries.convolution
            (⇑(ζ : ArithmeticFunction Complex))
            (⇑(↑μ : ArithmeticFunction Complex)) := by
            apply LSeries.convolution_congr
            · intro n hn
              simp [oneArithFnComplex, ArithmeticFunction.zeta_apply, hn]
            · intro n hn
              rfl
    _ = ⇑((ζ : ArithmeticFunction Complex) * (↑μ : ArithmeticFunction Complex)) :=
            ArithmeticFunction.coe_mul
              (ζ : ArithmeticFunction Complex)
              (↑μ : ArithmeticFunction Complex)
    _ = ⇑(1 : ArithmeticFunction Complex) := by
            rw [ArithmeticFunction.coe_zeta_mul_coe_moebius]
    _ = LSeries.delta := by
            funext n
            simp [LSeries.delta, ArithmeticFunction.one_apply]

end AnalyticNumberTheory
end Rebuild
end Folder
