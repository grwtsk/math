import FormalResearch.RiemannHypothesis.ThetaPhiWhitenedProjection
import Mathlib.Analysis.Matrix.Spectrum

/-!
# Spectrum of the canonically whitened theta phase compression

For every nondegenerate finite theta cutoff, the canonical compressed phase

`C = B J Bᵀ`

is real symmetric and satisfies `C^2 <= I`.  This module converts that
matrix-order contraction into the corresponding spectral statement:

`-1 <= lambda_i(C) <= 1`.

It also records the exact determinant product over those real eigenvalues and
defines the negative-eigenvalue count that remains to be controlled for the
theta determinant sign.

No parity statement for the negative spectrum is proved here.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

noncomputable section

/-- The canonical whitened phase compression is Hermitian (symmetric over the
reals). -/
theorem thetaPhiWhitenedParityCompression_isHermitian
    (k L N : ℕ) (t : ℝ) :
    (thetaPhiWhitenedParityCompression k L N t).IsHermitian := by
  change
    (thetaPhiWhitenedParityCompression k L N t).conjTranspose =
      thetaPhiWhitenedParityCompression k L N t
  rw [Matrix.conjTranspose_eq_transpose_of_trivial,
    thetaPhiWhitenedParityCompression_transpose]

/-- Every eigenvalue of the canonical whitened phase compression has square
at most one. -/
theorem thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ)
    (i : Fin k) :
    ((thetaPhiWhitenedParityCompression_isHermitian
      k L N t).eigenvalues i) ^ 2 ≤ 1 := by
  let C := thetaPhiWhitenedParityCompression k L N t
  have hC : C.IsHermitian := by
    dsimp [C]
    exact thetaPhiWhitenedParityCompression_isHermitian k L N t
  let lambda : ℝ := hC.eigenvalues i
  let v : Fin k → ℝ :=
    fun j => hC.eigenvectorBasis i j
  have hCv :
      C.mulVec v = lambda • v := by
    dsimp [lambda, v]
    exact hC.mulVec_eigenvectorBasis i
  let D : Matrix (Fin k) (Fin k) ℝ :=
    (1 : Matrix (Fin k) (Fin k) ℝ) - C * C
  have hD : D.PosSemidef := by
    dsimp [D, C]
    exact
      thetaPhiWhitenedParityCompression_phaseDefect_posSemidef
        hk hN t
  have hDv :
      D.mulVec v = (1 - lambda ^ 2) • v := by
    dsimp [D]
    rw [Matrix.sub_mulVec, Matrix.one_mulVec,
      ← Matrix.mulVec_mulVec, hCv, Matrix.mulVec_smul, hCv]
    ext j
    simp [Pi.smul_apply]
    ring
  have hvinner :
      @inner ℝ (EuclideanSpace ℝ (Fin k)) _
          (hC.eigenvectorBasis i)
          (hC.eigenvectorBasis i) = 1 := by
    rw [inner_self_eq_norm_sq_to_K,
      hC.eigenvectorBasis.orthonormal.1 i]
    norm_num
  have hvdot : v ⬝ᵥ v = 1 := by
    rw [EuclideanSpace.inner_eq_star_dotProduct] at hvinner
    simpa [v, star_trivial, dotProduct_comm] using hvinner
  have hquad := hD.dotProduct_mulVec_nonneg v
  rw [hDv] at hquad
  simp only [star_trivial, dotProduct_smul,
    smul_eq_mul, hvdot, mul_one] at hquad
  have hlam : lambda ^ 2 ≤ 1 :=
    sub_nonneg.mp hquad
  change lambda ^ 2 ≤ 1
  exact hlam

/-- Every eigenvalue of the canonical compressed phase lies in the closed
interval [-1,1]. -/
theorem thetaPhiWhitenedParityCompression_eigenvalue_mem_Icc
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ)
    (i : Fin k) :
    (thetaPhiWhitenedParityCompression_isHermitian
      k L N t).eigenvalues i ∈ Set.Icc (-1 : ℝ) 1 := by
  have hsq :=
    thetaPhiWhitenedParityCompression_eigenvalue_sq_le_one
      hk hN t i
  constructor <;> nlinarith

/-- The finite theta normalized determinant is the product of the real
eigenvalues of the canonical whitened phase compression. -/
theorem thetaPhiNormalizedParityCompression_eq_prod_eigenvalues
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiNormalizedParityCompression k L N t =
      ∏ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i := by
  rw [thetaPhiNormalizedParityCompression_eq_whitened_det
    hk hN t]
  simpa using
    (thetaPhiWhitenedParityCompression_isHermitian
      k L N t).det_eq_prod_eigenvalues

/-- Number of strictly negative eigenvalues of the canonical finite theta
phase compression, counted with the fixed spectral-theorem indexing. -/
def thetaPhiWhitenedNegativeEigenvalueCount
    (k L N : ℕ) (t : ℝ) : ℕ :=
  Fintype.card
    {i : Fin k //
      (thetaPhiWhitenedParityCompression_isHermitian
        k L N t).eigenvalues i < 0}

/-- Explicit remaining finite inertia-parity target.  Zero eigenvalues are
allowed; when none occur, even negative inertia is the expected determinant
nonnegativity criterion to prove next. -/
def ThetaPhiWhitenedNegativeInertiaParity : Prop :=
  ∀ k L N : ℕ, ∀ t : ℝ,
    k ≤ L → 0 < N →
      (∀ i : Fin k,
        (thetaPhiWhitenedParityCompression_isHermitian
          k L N t).eigenvalues i ≠ 0) →
      Even
        (thetaPhiWhitenedNegativeEigenvalueCount
          k L N t)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
