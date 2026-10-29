-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiKrylovWhitening.Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiKrylovWhitening.Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/e9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiKrylovNondegeneracy
import Mathlib.Analysis.Matrix.Order
import Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Basic

/-!
# Canonical whitening of the theta positive Krylov frame

The positive theta signed-moment Krylov frame has a positive-definite Gram
matrix whenever `N > 0` and `k <= L`.  This module uses only that proved
finite nondegeneracy to construct the canonical whitening transform

`U = (sqrt G)⁻¹`.

The square root is the positive continuous-functional-calculus square root of
the real symmetric Gram matrix.  The source proves

`U G Uᵀ = I`,

so `U A` is an orthonormal row frame.  Consequently the projectively
normalized theta parity-compression scalar is literally the determinant of
the parity-phase compression in this canonical orthonormal frame.

No sign is asserted for that determinant here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiKrylovWhitening.Variante9721ee20ed273b63669e4ffebe4a0ec6f315d76e4dbd3dae339a4957d5bcc26

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.PositiveAtlas.Grassmannian
open scoped MatrixOrder
noncomputable section

/-- Canonical inverse-square-root whitening transform of the positive theta
Krylov Gram matrix. -/
def thetaPhiKrylovWhitening
    (k L N : ℕ) (t : ℝ) :
    Matrix (Fin k) (Fin k) ℝ :=
  (CFC.sqrt
    (thetaPhiSignedMomentKrylovGram
      k L N t))⁻¹

/-- On a nondegenerate cutoff, the positive square root of the Krylov Gram
matrix is invertible. -/
theorem thetaPhiKrylovGramSqrt_isUnit
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    IsUnit
      (CFC.sqrt
        (thetaPhiSignedMomentKrylovGram
          k L N t)) := by
  let G :=
    thetaPhiSignedMomentKrylovGram k L N t
  have hG : G.PosDef := by
    dsimp [G]
    exact thetaPhiSignedMomentKrylovGram_posDef hk hN t
  have hGnonneg : 0 ≤ G :=
    hG.posSemidef.nonneg
  exact
    (CFC.isUnit_sqrt_iff G hGnonneg).mpr
      hG.isUnit

/-- The positive Gram square root is symmetric over the real matrices. -/
theorem thetaPhiKrylovGramSqrt_transpose
    (k L N : ℕ) (t : ℝ) :
    (CFC.sqrt
        (thetaPhiSignedMomentKrylovGram
          k L N t)).transpose =
      CFC.sqrt
        (thetaPhiSignedMomentKrylovGram
          k L N t) := by
  let G :=
    thetaPhiSignedMomentKrylovGram k L N t
  have hs :
      star (CFC.sqrt G) = CFC.sqrt G :=
    (CFC.sqrt_nonneg G).isSelfAdjoint.star_eq
  simpa [G, Matrix.star_eq_conjTranspose,
    Matrix.conjTranspose_eq_transpose_of_trivial] using hs

/-- The canonical whitening transform is itself symmetric. -/
theorem thetaPhiKrylovWhitening_transpose
    (k L N : ℕ) (t : ℝ) :
    (thetaPhiKrylovWhitening k L N t).transpose =
      thetaPhiKrylovWhitening k L N t := by
  unfold thetaPhiKrylovWhitening
  rw [Matrix.transpose_nonsing_inv,
    thetaPhiKrylovGramSqrt_transpose]

/-- On every nondegenerate cutoff, the canonical whitening transform has
nonzero determinant. -/
theorem thetaPhiKrylovWhitening_det_ne_zero
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    Matrix.det
        (thetaPhiKrylovWhitening k L N t) ≠ 0 := by
  let G :=
    thetaPhiSignedMomentKrylovGram k L N t
  have hsunit :
      IsUnit (CFC.sqrt G) := by
    dsimp [G]
    exact thetaPhiKrylovGramSqrt_isUnit hk hN t
  have hu :
      IsUnit (CFC.sqrt G)⁻¹ :=
    Matrix.isUnit_nonsing_inv_iff.mpr hsunit
  unfold thetaPhiKrylovWhitening
  dsimp [G] at hu
  exact
    ((Matrix.isUnit_iff_isUnit_det _).mp hu).ne_zero

/-- The canonical inverse square root whitens the positive theta Krylov Gram
matrix exactly. -/
theorem thetaPhiKrylovWhitening_gram
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiKrylovWhitening k L N t *
        thetaPhiSignedMomentKrylovGram k L N t *
          (thetaPhiKrylovWhitening k L N t).transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ) := by
  let G :=
    thetaPhiSignedMomentKrylovGram k L N t
  let S := CFC.sqrt G
  have hG : G.PosDef := by
    dsimp [G]
    exact thetaPhiSignedMomentKrylovGram_posDef hk hN t
  have hGnonneg : 0 ≤ G :=
    hG.posSemidef.nonneg
  have hsunit : IsUnit S := by
    dsimp [S]
    exact
      (CFC.isUnit_sqrt_iff G hGnonneg).mpr
        hG.isUnit
  have hsdet : IsUnit S.det :=
    (Matrix.isUnit_iff_isUnit_det S).mp hsunit
  let _ : Invertible S :=
    S.invertibleOfIsUnitDet hsdet
  have hsquare : S * S = G := by
    dsimp [S]
    exact CFC.sqrt_mul_sqrt_self G hGnonneg
  rw [thetaPhiKrylovWhitening_transpose]
  unfold thetaPhiKrylovWhitening
  change S⁻¹ * G * S⁻¹ = 1
  rw [← hsquare]
  rw [Matrix.inv_mul_cancel_left_of_invertible,
    Matrix.mul_inv_of_invertible]

/-- The canonically whitened positive theta Krylov frame. -/
def thetaPhiWhitenedKrylovFrame
    (k L N : ℕ) (t : ℝ) :
    Matrix (Fin k) (Fin L) ℝ :=
  thetaPhiKrylovWhitening k L N t *
    thetaPhiSignedMomentKrylovFrame k L N t

/-- The canonically whitened theta Krylov frame has orthonormal rows on every
nondegenerate cutoff. -/
theorem thetaPhiWhitenedKrylovFrame_gram
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedKrylovFrame k L N t *
        (thetaPhiWhitenedKrylovFrame
          k L N t).transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ) := by
  unfold thetaPhiWhitenedKrylovFrame
  rw [Matrix.transpose_mul]
  rw [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc
    (thetaPhiSignedMomentKrylovFrame k L N t)]
  rw [← Matrix.mul_assoc
    (thetaPhiKrylovWhitening k L N t)]
  change
    thetaPhiKrylovWhitening k L N t *
        thetaPhiSignedMomentKrylovGram k L N t *
          (thetaPhiKrylovWhitening k L N t).transpose =
      1
  exact thetaPhiKrylovWhitening_gram hk hN t

/-- The source-specific positive theta geometry discharges the previously
local orthonormalizability predicate on every nondegenerate finite cutoff. -/
theorem thetaPhiFiniteOrthonormalizable_of_nonzero_modes
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    ThetaPhiFiniteOrthonormalizable k L N t := by
  refine
    ⟨thetaPhiKrylovWhitening k L N t,
      thetaPhiKrylovWhitening_det_ne_zero hk hN t,
      ?_⟩
  exact thetaPhiWhitenedKrylovFrame_gram hk hN t

/-- Canonically whitened parity-phase compression. -/
def thetaPhiWhitenedParityCompression
    (k L N : ℕ) (t : ℝ) :
    Matrix (Fin k) (Fin k) ℝ :=
  involutionCompressionGram
    (thetaPhiWhitenedKrylovFrame k L N t)
    (thetaPhiParityInvolution L)

/-- The whitened parity compression is the congruence of the finite signed
Christoffel-Hankel matrix by the canonical inverse square root. -/
theorem thetaPhiWhitenedParityCompression_eq
    (k L N : ℕ) (t : ℝ) :
    thetaPhiWhitenedParityCompression k L N t =
      thetaPhiKrylovWhitening k L N t *
        thetaPhiChristoffelHankel k
          (fun n =>
            thetaPhiBaseSignedMomentTruncation
              L N n t) *
        (thetaPhiKrylovWhitening k L N t).transpose := by
  unfold thetaPhiWhitenedParityCompression
    thetaPhiWhitenedKrylovFrame
  rw [involutionCompressionGram_mul_left]
  rw [←
    thetaPhiChristoffelHankel_signedMomentTruncation_eq_involutionCompression]

/-- On every nondegenerate finite cutoff, the basis-invariant normalized theta
observable is exactly the determinant of the canonical orthonormal parity
compression. -/
theorem thetaPhiNormalizedParityCompression_eq_whitened_det
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiNormalizedParityCompression k L N t =
      Matrix.det
        (thetaPhiWhitenedParityCompression
          k L N t) := by
  apply
    thetaPhiNormalizedParityCompression_eq_det_of_orthonormalized
      k L N t
      (thetaPhiKrylovWhitening k L N t)
      (thetaPhiKrylovWhitening_det_ne_zero hk hN t)
  exact thetaPhiWhitenedKrylovFrame_gram hk hN t

/-- On nondegenerate finite cutoffs, the original finite signed
Christoffel-Hankel sign is exactly the sign of the canonical orthonormal
spectral-phase compression. -/
theorem thetaPhiWhitenedParityCompression_nonnegative_iff
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    0 ≤
        Matrix.det
          (thetaPhiWhitenedParityCompression
            k L N t) ↔
      0 ≤
        Matrix.det
          (thetaPhiChristoffelHankel k
            (fun n =>
              thetaPhiBaseSignedMomentTruncation
                L N n t)) := by
  rw [←
    thetaPhiNormalizedParityCompression_eq_whitened_det
      hk hN t]
  exact
    thetaPhiNormalizedParityCompression_nonnegative_iff
      hk hN t

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
