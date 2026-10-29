-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DirichletPolynomialPairProductComplex.Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DirichletPolynomialPairProductComplex.Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/WeightedDirichletPolynomialProduct.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.DirichletPolynomialProduct
import Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Order.Interval.Finset.Nat

/-!
# Folder.Rebuild.AnalyticNumberTheory.WeightedDirichletPolynomialProduct

Weighted finite Dirichlet-polynomial Cauchy products.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirichletPolynomialPairProductComplex.Variant8bc563d977fd0b1d443f7799130fea2264792dd11e73f55d025bdf86779a6181

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators

noncomputable def dirichletPolynomialPairProductComplex
    (a b : ArithFn Complex)
    (σ : Real)
    (N : Nat) : Complex :=
  ∑ de ∈ (Finset.Icc 1 N).product (Finset.Icc 1 N),
    a de.1 * b de.2 *
      (((posWeightReal σ (de.1 * de.2) : Real) : Complex))

/--
Checked weighted finite Cauchy product in pair-indexed form.

This is a finite identity for Dirichlet polynomials. It is not the infinite
Dirichlet-series Cauchy product and does not assert analytic Euler products.
-/
theorem dirichletPolynomialComplex_mul_pair_expanded
    (a b : ArithFn Complex)
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialComplex a σ N *
      dirichletPolynomialComplex b σ N =
    ∑ d ∈ Finset.Icc 1 N, ∑ e ∈ Finset.Icc 1 N,
      a d * b e *
        (((posWeightReal σ (d * e) : Real) : Complex)) := by
  unfold dirichletPolynomialComplex
  calc
    (∑ i ∈ Finset.Icc 1 N, a i * ↑(posWeightReal σ i)) *
        (∑ j ∈ Finset.Icc 1 N, b j * ↑(posWeightReal σ j))
        = ∑ i ∈ Finset.Icc 1 N, ∑ j ∈ Finset.Icc 1 N,
            (a i * ↑(posWeightReal σ i)) * (b j * ↑(posWeightReal σ j)) := by
            rw [Finset.sum_mul_sum]
    _ = ∑ i ∈ Finset.Icc 1 N, ∑ j ∈ Finset.Icc 1 N,
          a i * b j * ↑(posWeightReal σ (i * j)) := by
          refine Finset.sum_congr rfl ?_
          intro i hi
          refine Finset.sum_congr rfl ?_
          intro j hj
          have hipos : 0 < i :=
            lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hi).1
          have hjpos : 0 < j :=
            lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hj).1
          have hw := posWeightComplex_mul σ hipos hjpos
          rw [hw]
          ring

theorem dirichletPolynomialComplex_mul_pair
    (a b : ArithFn Complex)
    (σ : Real)
    (N : Nat) :
    dirichletPolynomialComplex a σ N *
      dirichletPolynomialComplex b σ N =
    dirichletPolynomialPairProductComplex a b σ N := by
  rw [dirichletPolynomialComplex_mul_pair_expanded]
  unfold dirichletPolynomialPairProductComplex
  exact
    (Finset.sum_product
      (Finset.Icc 1 N)
      (Finset.Icc 1 N)
      (fun de : Nat × Nat =>
        a de.1 * b de.2 *
          (((posWeightReal σ (de.1 * de.2) : Real) : Complex)))).symm

end AnalyticNumberTheory
end Rebuild
end Folder
