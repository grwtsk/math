import FormalResearch.RiemannHypothesis.ThetaPhiWhitenedSpectrum
import Mathlib.Analysis.Convex.SpecificFunctions.Deriv

/-!
# Inertia parity and the finite theta determinant sign

The canonical whitened phase compression has real spectrum in `[-1,1]`,
and the normalized finite theta determinant is the product of that spectrum.

This module supplies the finite sign bridge:

* for a nonzero finite real family, even negative count gives positive product;
* if a compressed-phase eigenvalue is zero, the determinant is already zero;
* therefore the open negative-inertia parity criterion implies
  nonnegativity of every finite normalized theta compression;
* the existing positive-Gram normalization then transfers that sign to the
  finite signed Christoffel-Hankel determinant.

No proof of the negative-inertia parity criterion itself is asserted here.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- A finite nonzero real family with an even number of negative entries has
strictly positive product. -/
theorem fintypeProd_pos_of_even_negative_count
    {ι : Type*} [Fintype ι] (f : ι → ℝ)
    (hnz : ∀ i, f i ≠ 0)
    (heven : Even (Fintype.card {i // f i < 0})) :
    0 < ∏ i, f i := by
  classical
  have hnegEven :
      Even ((Finset.univ.filter fun i => f i < 0).card) := by
    simpa only [Fintype.card_subtype] using heven
  have hfilters :
      (Finset.univ.filter fun i => f i ≤ 0) =
        Finset.univ.filter fun i => f i < 0 := by
    ext i
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    constructor
    · intro hi
      exact lt_of_le_of_ne hi (hnz i)
    · exact le_of_lt
  have hnonposEven :
      Even ((Finset.univ.filter fun i => f i ≤ 0).card) := by
    rw [hfilters]
    exact hnegEven
  have hnonneg : 0 ≤ ∏ i, f i := by
    simpa using
      (Finset.prod_nonneg_of_card_nonpos_even
        (f := f) (s := Finset.univ) hnonposEven)
  have hprodne : (∏ i, f i) ≠ 0 := by
    exact Finset.prod_ne_zero_iff.mpr fun i _ => hnz i
  exact lt_of_le_of_ne hnonneg (Ne.symm hprodne)

/-- With no zero compressed-phase eigenvalue, even negative inertia makes the
normalized finite theta determinant strictly positive. -/
theorem thetaPhiNormalizedParityCompression_pos_of_even_negativeInertia
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ)
    (hnz :
      ∀ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i ≠ 0)
    (heven :
      Even
        (thetaPhiWhitenedNegativeEigenvalueCount
          k L N t)) :
    0 < thetaPhiNormalizedParityCompression k L N t := by
  rw [thetaPhiNormalizedParityCompression_eq_prod_eigenvalues
    hk hN t]
  apply fintypeProd_pos_of_even_negative_count
  · exact hnz
  · simpa [thetaPhiWhitenedNegativeEigenvalueCount] using heven

/-- The open negative-inertia parity criterion is sufficient for
nonnegativity of every nondegenerate finite normalized theta compression.
Zero spectral values require no parity argument because the product is then
zero. -/
theorem thetaPhiNormalizedParityCompression_nonnegative_of_negativeInertiaParity
    (hparity : ThetaPhiWhitenedNegativeInertiaParity)
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤ thetaPhiNormalizedParityCompression k L N t := by
  by_cases hz :
      ∃ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i = 0
  · rw [thetaPhiNormalizedParityCompression_eq_prod_eigenvalues
      hk hN t]
    obtain ⟨i, hi⟩ := hz
    rw [Finset.prod_eq_zero (Finset.mem_univ i) hi]
  · have hnz :
        ∀ i : Fin k,
          (thetaPhiWhitenedParityCompression_isHermitian
            k L N t).eigenvalues i ≠ 0 := by
      intro i hi
      exact hz ⟨i, hi⟩
    have heven :
        Even
          (thetaPhiWhitenedNegativeEigenvalueCount
            k L N t) :=
      hparity k L N t hk hN hnz
    exact
      (thetaPhiNormalizedParityCompression_pos_of_even_negativeInertia
        hk hN t hnz heven).le

/-- The same inertia-parity criterion transfers through the positive Gram
normalization to the original finite signed Christoffel-Hankel determinant. -/
theorem thetaPhiChristoffelHankel_nonnegative_of_negativeInertiaParity
    (hparity : ThetaPhiWhitenedNegativeInertiaParity)
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤
      Matrix.det
        (thetaPhiChristoffelHankel k
          (fun n =>
            thetaPhiBaseSignedMomentTruncation
              L N n t)) := by
  exact
    (thetaPhiNormalizedParityCompression_nonnegative_iff
      hk hN t).mp
      (thetaPhiNormalizedParityCompression_nonnegative_of_negativeInertiaParity
        hparity hk hN t)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
