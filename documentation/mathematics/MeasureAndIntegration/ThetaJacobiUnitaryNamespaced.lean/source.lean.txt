-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FinitePowerSumAe.Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FinitePowerSumAe.Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/ThetaJacobiUnitary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ThetaPolynomialGraphCore
import Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho
import Mathlib.Analysis.InnerProductSpace.l2Space


namespace GRWTSK.Analysis.FinitePowerSumAe.Variant23ecc18bd25100a75fa3f1261a51b6c9f1f5b547c86e615ef9bcdee187fe6359

set_option autoImplicit false

/-!
# Pointed Jacobi coordinates for the continuous theta magnitude measure

Review-only construction over the recorded unmerged theta dependency closure.
The Hilbert basis is obtained from the literal monomials by Gram–Schmidt; its
unitary transports the maximal multiplication domain rather than declaring a
bounded operator. Positive magnitude coordinates retain no arithmetic parity
involution and do not identify the theta operator with the free Catalan model.
-/

namespace FormalResearch.RiemannHypothesis.ThetaJacobiUnitary

open MeasureTheory Polynomial Filter
open scoped Topology ComplexConjugate InnerProductSpace
open ThetaMomentMeasure ThetaMultiplicationAdapter ThetaMultiplicationDomain
open ThetaPolynomialGraphCore

noncomputable section

/-- Finite monomial combinations have their literal complex polynomial representative. -/
theorem finite_power_sum_ae (s : Finset ℕ) (c : ℕ → ℂ) {t : ℝ} (ht : 0 ≤ t) :
    (fun x : ℝ => (∑ n ∈ s, c n • powerVector t ht n : Lp ℂ 2 (momentMeasure t)) x) =ᵐ[momentMeasure t]
      fun x : ℝ => ∑ n ∈ s, c n * (x : ℂ) ^ n := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    filter_upwards [Lp.coeFn_zero ℂ 2 (momentMeasure t)] with x hx
    simpa only [Finset.sum_empty, Pi.zero_apply] using hx
  | @insert n s hn ih =>
    simp only [Finset.sum_insert hn]
    filter_upwards [Lp.coeFn_add (c n • powerVector t ht n) (∑ i ∈ s, c i • powerVector t ht i),
      Lp.coeFn_smul (c n) (powerVector t ht n), polynomialVector_ae (X ^ n) ht, ih]
      with x ha hs hp hi
    rw [ha]
    simp only [Pi.add_apply]
    rw [hs, hi]
    change c n * polynomialVector t ht (X ^ n) x + _ = _
    rw [hp]
    simp

/-- A real polynomial vanishing almost everywhere is zero, by strict theta positivity. -/
theorem real_polynomial_eq_zero_of_ae (p : ℝ[X]) {t : ℝ} (ht : 0 ≤ t)
    (hp : (fun x : ℝ => p.eval x) =ᵐ[momentMeasure t] 0) : p = 0 := by
  by_contra hn
  have hpos := polynomial_square_integral_positive p hn ht
  have hz : (∫ x : ℝ, p.eval x ^ 2 ∂momentMeasure t) = 0 := by
    calc
      _ = ∫ x : ℝ, (0 : ℝ) ∂momentMeasure t := by
        apply integral_congr_ae
        filter_upwards [hp] with x hx
        simp only [Pi.zero_apply] at hx
        simp [hx]
      _ = 0 := integral_zero ℝ ℝ
  linarith

/-- The actual complex monomial vectors are linearly independent at every theta scale. -/
theorem powers_linearIndependent {t : ℝ} (ht : 0 ≤ t) :
    LinearIndependent ℂ (powerVector t ht) := by
  classical
  rw [linearIndependent_iff']
  intro s c hc n hn
  have hz : (fun x : ℝ => ∑ j ∈ s, c j * (x : ℂ) ^ j) =ᵐ[momentMeasure t] 0 := by
    have ha := finite_power_sum_ae s c ht
    rw [hc] at ha
    exact ha.symm.trans (Lp.coeFn_zero ℂ 2 (momentMeasure t))
  let pr : ℝ[X] := ∑ j ∈ s, Polynomial.monomial j (c j).re
  let pi : ℝ[X] := ∑ j ∈ s, Polynomial.monomial j (c j).im
  have hr : pr = 0 := real_polynomial_eq_zero_of_ae pr ht (by
    filter_upwards [hz] with x hx
    have h := congrArg Complex.re hx
    simpa [pr, Polynomial.eval_finsetSum, Polynomial.eval_monomial,
      map_sum, Complex.mul_re, ← Complex.ofReal_pow] using h)
  have hi : pi = 0 := real_polynomial_eq_zero_of_ae pi ht (by
    filter_upwards [hz] with x hx
    have h := congrArg Complex.im hx
    simpa [pi, Polynomial.eval_finsetSum, Polynomial.eval_monomial,
      map_sum, Complex.mul_im, ← Complex.ofReal_pow] using h)
  apply Complex.ext
  · have h := congrArg (fun p : ℝ[X] => p.coeff n) hr
    simpa [pr, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial, hn] using h
  · have h := congrArg (fun p : ℝ[X] => p.coeff n) hi
    simpa [pi, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial, hn] using h

/-- Countable orthonormal polynomial vectors, in ascending degree and positive normalization. -/
def orthogonalPolynomial (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : Lp ℂ 2 (momentMeasure t) :=
  InnerProductSpace.gramSchmidtNormed ℂ (powerVector t ht) n

/-- The sequence is orthonormal because actual theta polynomial positivity gives independence. -/
theorem orthogonalPolynomial_orthonormal {t : ℝ} (ht : 0 ≤ t) :
    Orthonormal ℂ (orthogonalPolynomial t ht) :=
  InnerProductSpace.gramSchmidtNormed_orthonormal (powers_linearIndependent ht)

/-- Gram–Schmidt preserves the literal dense polynomial span. -/
theorem orthogonalPolynomial_span {t : ℝ} (ht : 0 ≤ t) :
    Submodule.span ℂ (Set.range (orthogonalPolynomial t ht)) = polynomialCore t ht := by
  change Submodule.span ℂ (Set.range (InnerProductSpace.gramSchmidtNormed ℂ (powerVector t ht))) = _
  rw [InnerProductSpace.span_gramSchmidtNormed_range,
    InnerProductSpace.span_gramSchmidt, polynomialCore_eq_span_powers]

/-- The actual countable theta polynomial Hilbert basis. -/
def polynomialHilbertBasis (t : ℝ) (ht : 0 ≤ t) :
    HilbertBasis ℕ ℂ (Lp ℂ 2 (momentMeasure t)) :=
  HilbertBasis.mk (orthogonalPolynomial_orthonormal ht) (by
    rw [orthogonalPolynomial_span ht,
      (Submodule.dense_iff_topologicalClosure_eq_top).mp (polynomialCore_dense ht)])

/-- Every Hilbert-basis vector is the specified normalized Gram–Schmidt polynomial. -/
theorem polynomialHilbertBasis_apply {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    polynomialHilbertBasis t ht n = orthogonalPolynomial t ht n := by
  exact congrFun (HilbertBasis.coe_mk _ _) n

/-- The pointed unitary from countable Jacobi coordinates into actual theta L². -/
def pointedUnitary (t : ℝ) (ht : 0 ≤ t) :
    lp (fun _ : ℕ => ℂ) 2 ≃ₗᵢ[ℂ] Lp ℂ 2 (momentMeasure t) :=
  (polynomialHilbertBasis t ht).repr.symm

/-- Each standard coordinate transports to its actual polynomial basis vector. -/
theorem pointedUnitary_single {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    pointedUnitary t ht (lp.single 2 n (1 : ℂ)) = orthogonalPolynomial t ht n := by
  rw [pointedUnitary, HilbertBasis.repr_symm_single, polynomialHilbertBasis_apply]

/-- The zeroth basis vector is the constant normalized by the actual theta mass. -/
theorem orthogonalPolynomial_zero {t : ℝ} (ht : 0 ≤ t) :
    orthogonalPolynomial t ht 0 = normalizedConstant t ht := by
  have hz : InnerProductSpace.gramSchmidt ℂ (powerVector t ht) 0 = constantVector t ht := by
    rw [InnerProductSpace.gramSchmidt_def]
    simp [powerVector, constantVector]
  change (‖InnerProductSpace.gramSchmidt ℂ (powerVector t ht) 0‖ : ℂ)⁻¹ •
    InnerProductSpace.gramSchmidt ℂ (powerVector t ht) 0 = _
  rw [hz, constantVector_norm ht]
  rfl

/-- The pointed normalization is U e₀ = 1 / √m₀, with no normalization of μ itself. -/
theorem pointedUnitary_zero {t : ℝ} (ht : 0 ≤ t) :
    pointedUnitary t ht (lp.single 2 0 (1 : ℂ)) = normalizedConstant t ht := by
  rw [pointedUnitary_single, orthogonalPolynomial_zero]

/-- The original cyclic vector transports with its literal √m₀ factor. -/
theorem pointedUnitary_rawPoint {t : ℝ} (ht : 0 ≤ t) :
    pointedUnitary t ht ((cyclicVectorNorm t : ℂ) • lp.single 2 0 (1 : ℂ)) =
      constantVector t ht := by
  rw [map_smul, pointedUnitary_zero, mass_smul_normalizedConstant]

/-- Literal maximal Jacobi domain: the preimage of D(M) under the constructed unitary. -/
def jacobiDomain (t : ℝ) (ht : 0 ≤ t) : Submodule ℂ (lp (fun _ : ℕ => ℂ) 2) :=
  (coordinateDomain (momentMeasure t)).comap (pointedUnitary t ht).toLinearEquiv.toLinearMap

/-- Domain membership retains the actual weighted L² multiplication condition. -/
theorem mem_jacobiDomain_iff {t : ℝ} (ht : 0 ≤ t) (f : lp (fun _ : ℕ => ℂ) 2) :
    f ∈ jacobiDomain t ht ↔ pointedUnitary t ht f ∈ coordinateDomain (momentMeasure t) :=
  Iff.rfl

/-- The same unitary restricted to the literal maximal domains. -/
def domainUnitary (t : ℝ) (ht : 0 ≤ t) :
    jacobiDomain t ht →ₗ[ℂ] coordinateDomain (momentMeasure t) :=
  (pointedUnitary t ht).toLinearEquiv.toLinearMap.submoduleComap _

/-- The actual unbounded theta operator in polynomial Jacobi coordinates. -/
def jacobiOperator (t : ℝ) (ht : 0 ≤ t) :
    lp (fun _ : ℕ => ℂ) 2 →ₗ.[ℂ] lp (fun _ : ℕ => ℂ) 2 where
  domain := jacobiDomain t ht
  toFun := (pointedUnitary t ht).symm.toLinearEquiv.toLinearMap.comp
    ((coordinateMultiplication (momentMeasure t)).toFun.comp (domainUnitary t ht))

/-- Exact intertwining includes the actual maximal domain. -/
theorem pointedUnitary_jacobiOperator {t : ℝ} (ht : 0 ≤ t) (f : jacobiDomain t ht) :
    pointedUnitary t ht (jacobiOperator t ht f) =
      coordinateMultiplication (momentMeasure t) (domainUnitary t ht f) :=
  (pointedUnitary t ht).apply_symm_apply _

/-- The transported maximal domain is dense; no boundedness premise is introduced. -/
theorem jacobiDomain_dense {t : ℝ} (ht : 0 ≤ t) :
    Dense (jacobiDomain t ht : Set (lp (fun _ : ℕ => ℂ) 2)) := by
  have : IsFiniteMeasure (momentMeasure t) := momentMeasure_finite ht
  exact (coordinateDomain_dense (momentMeasure t)).preimage
    (pointedUnitary t ht).toHomeomorph.isOpenMap

set_option backward.isDefEq.respectTransparency false in
/-- The actual theta Jacobi realization is symmetric by unitary transport. -/
theorem jacobiOperator_symmetric {t : ℝ} (ht : 0 ≤ t) :
    (jacobiOperator t ht).IsFormalAdjoint (jacobiOperator t ht) := by
  intro f g
  change jacobiDomain t ht at f g
  change ⟪jacobiOperator t ht f, (g : lp (fun _ : ℕ => ℂ) 2)⟫_ℂ =
    ⟪(f : lp (fun _ : ℕ => ℂ) 2), jacobiOperator t ht g⟫_ℂ
  rw [← (pointedUnitary t ht).inner_map_map,
    pointedUnitary_jacobiOperator]
  change ⟪coordinateMultiplication (momentMeasure t) (domainUnitary t ht f),
    (domainUnitary t ht g : Lp ℂ 2 (momentMeasure t))⟫_ℂ = _
  rw [coordinateMultiplication_formalAdjoint (momentMeasure t)]
  rw [← (pointedUnitary t ht).inner_map_map,
    pointedUnitary_jacobiOperator]
  rfl

open scoped LinearPMap

/-- Maximal self-adjointness survives the proved pointed unitary, with its literal domain. -/
theorem jacobiOperator_isSelfAdjoint {t : ℝ} (ht : 0 ≤ t) :
    IsSelfAdjoint (jacobiOperator t ht) := by
  let U := pointedUnitary t ht
  let M := coordinateMultiplication (momentMeasure t)
  let J := jacobiOperator t ht
  have hd : Dense (J.domain : Set (lp (fun _ : ℕ => ℂ) 2)) := jacobiDomain_dense ht
  have hsym := jacobiOperator_symmetric ht
  have hle : J ≤ J† := hsym.le_adjoint hd
  have hM : M† = M := LinearPMap.isSelfAdjoint_def.mp
    (theta_coordinateMultiplication_isSelfAdjoint ht)
  have hdom : J†.domain ≤ J.domain := by
    intro y hy
    have hyM : U y ∈ M†.domain := by
      apply LinearPMap.mem_adjoint_domain_of_exists
      refine ⟨U (J† ⟨y, hy⟩), ?_⟩
      intro z
      let x : J.domain := ⟨U.symm z, by
        change U (U.symm z) ∈ M.domain
        simpa only [LinearIsometryEquiv.apply_symm_apply] using z.property⟩
      have h := J.adjoint_isFormalAdjoint hd ⟨y, hy⟩ x
      have hz : domainUnitary t ht x = z := by
        apply Subtype.ext
        exact U.apply_symm_apply z
      rw [← U.inner_map_map, ← U.inner_map_map] at h
      change ⟪U (J† ⟨y, hy⟩), U x⟫_ℂ = ⟪U y, U (J x)⟫_ℂ at h
      have hU : U (J x) = M (domainUnitary t ht x) := pointedUnitary_jacobiOperator ht x
      rw [hU, hz] at h
      simpa only [x, LinearIsometryEquiv.apply_symm_apply] using h
    rw [hM] at hyM
    exact hyM
  apply LinearPMap.isSelfAdjoint_def.mpr
  exact (LinearPMap.eq_of_le_of_domain_eq hle (le_antisymm hle.1 hdom)).symm

/-- The domain-transported Jacobi operator has a closed graph. -/
theorem jacobiOperator_isClosed {t : ℝ} (ht : 0 ≤ t) :
    (jacobiOperator t ht).IsClosed := (jacobiOperator_isSelfAdjoint ht).isClosed

/-- The actual monomial trajectory in countable Jacobi coordinates. -/
def jacobiPowerVector (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : lp (fun _ : ℕ => ℂ) 2 :=
  (pointedUnitary t ht).symm (powerVector t ht n)

/-- The domain-respecting trajectory starts at the original √m₀ e₀ pointed vector. -/
theorem jacobiPowerVector_zero {t : ℝ} (ht : 0 ≤ t) :
    jacobiPowerVector t ht 0 = (cyclicVectorNorm t : ℂ) • lp.single 2 0 (1 : ℂ) := by
  apply (pointedUnitary t ht).injective
  rw [pointedUnitary_rawPoint]
  change pointedUnitary t ht ((pointedUnitary t ht).symm (powerVector t ht 0)) = _
  rw [LinearIsometryEquiv.apply_symm_apply]
  simp [powerVector, constantVector]

/-- All members of the literal polynomial trajectory belong to D(J). -/
theorem jacobiPowerVector_mem_domain {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    jacobiPowerVector t ht n ∈ jacobiDomain t ht := by
  rw [mem_jacobiDomain_iff]
  change pointedUnitary t ht ((pointedUnitary t ht).symm (powerVector t ht n)) ∈ _
  rw [LinearIsometryEquiv.apply_symm_apply]
  exact powerVector_mem_coordinateDomain n ht

/-- The monomial trajectory with the checked maximal-domain membership. -/
def jacobiPowerDomainVector (t : ℝ) (ht : 0 ≤ t) (n : ℕ) : jacobiDomain t ht :=
  ⟨jacobiPowerVector t ht n, jacobiPowerVector_mem_domain ht n⟩

/-- Domain-respecting iteration sends the actual n-th monomial to the next one. -/
theorem jacobiOperator_powerVector {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    jacobiOperator t ht (jacobiPowerDomainVector t ht n) = jacobiPowerVector t ht (n + 1) := by
  apply (pointedUnitary t ht).injective
  rw [pointedUnitary_jacobiOperator]
  have hd : domainUnitary t ht (jacobiPowerDomainVector t ht n) =
      polynomialDomainVector t ht (X ^ n) := by
    apply Subtype.ext
    exact (pointedUnitary t ht).apply_symm_apply _
  rw [hd, coordinateMultiplication_powerVector n ht]
  exact ((pointedUnitary t ht).apply_symm_apply _).symm

/-- Raw theta moments belong to the literal original pointed vector √m₀ e₀. -/
theorem rawPoint_power_inner {t : ℝ} (ht : 0 ≤ t) (n : ℕ) :
    ⟪(cyclicVectorNorm t : ℂ) • lp.single 2 0 (1 : ℂ), jacobiPowerVector t ht n⟫_ℂ =
      (moment t n : ℂ) := by
  rw [← (pointedUnitary t ht).inner_map_map, pointedUnitary_rawPoint]
  change ⟪constantVector t ht,
    pointedUnitary t ht ((pointedUnitary t ht).symm (powerVector t ht n))⟫_ℂ = _
  rw [LinearIsometryEquiv.apply_symm_apply]
  exact constant_power_inner n ht

end
end FormalResearch.RiemannHypothesis.ThetaJacobiUnitary
