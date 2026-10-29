-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiWhitenedProjection.Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaPhiWhitenedProjection.Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/f44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiKrylovWhitening
import Mathlib.Analysis.Matrix.Order

/-!
# Projection defect of the canonically whitened theta phase

For a nondegenerate finite theta cutoff, let

* `B` be the canonically whitened positive Krylov frame, so `B Bᵀ = I`;
* `P = Bᵀ B` be its ambient orthogonal projection;
* `J` be the parity/spectral-phase involution;
* `C = B J Bᵀ` be the compressed phase.

This module isolates the exact obstruction to the compressed phase itself
being an involution.  The projection `P` is symmetric and idempotent, and

`I - C^2 = B J (I - P) J Bᵀ`.

Thus the finite phase defect is exactly the part of the ambient involution
that leaves the theta Krylov subspace before returning to it.  This is an
algebraic identity; no sign or positivity of the defect is asserted here.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPhiWhitenedProjection.Variantf44b4b7e7b9e119cfcd9a602862e372511378ec84f364aa8ad4b3689f854447c

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open FormalResearch.PositiveAtlas.Grassmannian
open scoped MatrixOrder
noncomputable section

/-- Ambient orthogonal projection associated with the canonically whitened
theta Krylov frame. -/
def thetaPhiWhitenedProjection
    (k L N : ℕ) (t : ℝ) :
    Matrix (Fin L) (Fin L) ℝ :=
  (thetaPhiWhitenedKrylovFrame k L N t).transpose *
    thetaPhiWhitenedKrylovFrame k L N t

/-- The ambient theta Krylov projection is symmetric. -/
theorem thetaPhiWhitenedProjection_transpose
    (k L N : ℕ) (t : ℝ) :
    (thetaPhiWhitenedProjection k L N t).transpose =
      thetaPhiWhitenedProjection k L N t := by
  unfold thetaPhiWhitenedProjection
  rw [Matrix.transpose_mul, Matrix.transpose_transpose]

/-- On a nondegenerate cutoff, the ambient theta Krylov projection is
idempotent. -/
theorem thetaPhiWhitenedProjection_sq
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedProjection k L N t *
        thetaPhiWhitenedProjection k L N t =
      thetaPhiWhitenedProjection k L N t := by
  let B :=
    thetaPhiWhitenedKrylovFrame k L N t
  have hBB : B * B.transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ) := by
    dsimp [B]
    exact thetaPhiWhitenedKrylovFrame_gram hk hN t
  change
    (B.transpose * B) * (B.transpose * B) =
      B.transpose * B
  calc
    (B.transpose * B) * (B.transpose * B) =
        B.transpose * ((B * B.transpose) * B) := by
          simp only [Matrix.mul_assoc]
    _ = B.transpose * ((1 : Matrix (Fin k) (Fin k) ℝ) * B) := by
          rw [hBB]
    _ = B.transpose * B := by
          rw [Matrix.one_mul]

/-- The canonically whitened parity compression is symmetric. -/
theorem thetaPhiWhitenedParityCompression_transpose
    (k L N : ℕ) (t : ℝ) :
    (thetaPhiWhitenedParityCompression k L N t).transpose =
      thetaPhiWhitenedParityCompression k L N t := by
  unfold thetaPhiWhitenedParityCompression
  exact
    involutionCompressionGram_transpose
      (thetaPhiWhitenedKrylovFrame k L N t)
      (thetaPhiParityInvolution L)
      (thetaPhiParityInvolution_transpose L)

/-- Exact finite phase-defect identity: failure of the compressed phase to
square to one is precisely the complementary-projection excursion. -/
theorem thetaPhiWhitenedParityCompression_phaseDefect
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    (1 : Matrix (Fin k) (Fin k) ℝ) -
        thetaPhiWhitenedParityCompression k L N t *
          thetaPhiWhitenedParityCompression k L N t =
      thetaPhiWhitenedKrylovFrame k L N t *
        thetaPhiParityInvolution L *
        ((1 : Matrix (Fin L) (Fin L) ℝ) -
          thetaPhiWhitenedProjection k L N t) *
        thetaPhiParityInvolution L *
        (thetaPhiWhitenedKrylovFrame k L N t).transpose := by
  let B :=
    thetaPhiWhitenedKrylovFrame k L N t
  let J := thetaPhiParityInvolution L
  let P := thetaPhiWhitenedProjection k L N t
  let C := thetaPhiWhitenedParityCompression k L N t
  have hBB : B * B.transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ) := by
    dsimp [B]
    exact thetaPhiWhitenedKrylovFrame_gram hk hN t
  have hJJ : J * J =
      (1 : Matrix (Fin L) (Fin L) ℝ) := by
    dsimp [J]
    exact thetaPhiParityInvolution_sq L
  have hP : P = B.transpose * B := by
    rfl
  have hC : C = B * J * B.transpose := by
    rfl
  have hfirst :
      B * J * J * B.transpose =
        (1 : Matrix (Fin k) (Fin k) ℝ) := by
    rw [Matrix.mul_assoc B J J, hJJ,
      Matrix.mul_one, hBB]
  have hsq :
      C * C =
        B * J * P * J * B.transpose := by
    rw [hC, hP]
    simp only [Matrix.mul_assoc]
  change
    (1 : Matrix (Fin k) (Fin k) ℝ) - C * C =
      B * J *
        ((1 : Matrix (Fin L) (Fin L) ℝ) - P) *
        J * B.transpose
  rw [Matrix.mul_sub, Matrix.sub_mul, Matrix.sub_mul]
  simp only [Matrix.mul_one]
  rw [hfirst, ← hsq]


/-- Complementary excursion of the ambient parity phase away from the
canonically whitened theta Krylov subspace. -/
def thetaPhiWhitenedPhaseExcursion
    (k L N : ℕ) (t : ℝ) :
    Matrix (Fin L) (Fin k) ℝ :=
  ((1 : Matrix (Fin L) (Fin L) ℝ) -
      thetaPhiWhitenedProjection k L N t) *
    thetaPhiParityInvolution L *
    (thetaPhiWhitenedKrylovFrame k L N t).transpose

/-- The complementary projection is symmetric. -/
theorem thetaPhiWhitenedComplementProjection_transpose
    (k L N : ℕ) (t : ℝ) :
    ((1 : Matrix (Fin L) (Fin L) ℝ) -
        thetaPhiWhitenedProjection k L N t).transpose =
      (1 : Matrix (Fin L) (Fin L) ℝ) -
        thetaPhiWhitenedProjection k L N t := by
  rw [Matrix.transpose_sub, Matrix.transpose_one,
    thetaPhiWhitenedProjection_transpose]

/-- On a nondegenerate cutoff, the complementary projection is idempotent. -/
theorem thetaPhiWhitenedComplementProjection_sq
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    ((1 : Matrix (Fin L) (Fin L) ℝ) -
        thetaPhiWhitenedProjection k L N t) *
      ((1 : Matrix (Fin L) (Fin L) ℝ) -
        thetaPhiWhitenedProjection k L N t) =
      (1 : Matrix (Fin L) (Fin L) ℝ) -
        thetaPhiWhitenedProjection k L N t := by
  let P := thetaPhiWhitenedProjection k L N t
  have hP : P * P = P := by
    dsimp [P]
    exact thetaPhiWhitenedProjection_sq hk hN t
  change
    ((1 : Matrix (Fin L) (Fin L) ℝ) - P) *
        (1 - P) =
      1 - P
  rw [Matrix.mul_sub, Matrix.mul_one,
    Matrix.sub_mul, Matrix.one_mul, hP,
    sub_self, sub_zero]

/-- The phase defect is exactly the Gram matrix of the complementary
excursion. -/
theorem thetaPhiWhitenedParityCompression_phaseDefect_eq_gram
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    (1 : Matrix (Fin k) (Fin k) ℝ) -
        thetaPhiWhitenedParityCompression k L N t *
          thetaPhiWhitenedParityCompression k L N t =
      (thetaPhiWhitenedPhaseExcursion k L N t).transpose *
        thetaPhiWhitenedPhaseExcursion k L N t := by
  rw [thetaPhiWhitenedParityCompression_phaseDefect hk hN t]
  unfold thetaPhiWhitenedPhaseExcursion
  rw [Matrix.transpose_mul, Matrix.transpose_mul,
    Matrix.transpose_transpose,
    thetaPhiParityInvolution_transpose,
    thetaPhiWhitenedComplementProjection_transpose]
  let Q :=
    (1 : Matrix (Fin L) (Fin L) ℝ) -
      thetaPhiWhitenedProjection k L N t
  have hQ : Q * Q = Q := by
    dsimp [Q]
    exact thetaPhiWhitenedComplementProjection_sq hk hN t
  change
    thetaPhiWhitenedKrylovFrame k L N t *
          thetaPhiParityInvolution L *
        Q *
      thetaPhiParityInvolution L *
        (thetaPhiWhitenedKrylovFrame k L N t).transpose =
      thetaPhiWhitenedKrylovFrame k L N t *
          (thetaPhiParityInvolution L * Q) *
        (Q * thetaPhiParityInvolution L *
          (thetaPhiWhitenedKrylovFrame k L N t).transpose)
  simp only [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc Q Q, hQ]

/-- The canonical compressed parity phase has positive-semidefinite squared
defect on every nondegenerate finite cutoff. -/
theorem thetaPhiWhitenedParityCompression_phaseDefect_posSemidef
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    ((1 : Matrix (Fin k) (Fin k) ℝ) -
        thetaPhiWhitenedParityCompression k L N t *
          thetaPhiWhitenedParityCompression k L N t).PosSemidef := by
  rw [thetaPhiWhitenedParityCompression_phaseDefect_eq_gram
    hk hN t]
  simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
    Matrix.posSemidef_conjTranspose_mul_self
      (thetaPhiWhitenedPhaseExcursion k L N t)

/-- Vanishing of the phase defect is equivalent to vanishing of the
complementary excursion. -/
theorem thetaPhiWhitenedParityCompression_phaseDefect_eq_zero_iff
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    (1 : Matrix (Fin k) (Fin k) ℝ) -
          thetaPhiWhitenedParityCompression k L N t *
            thetaPhiWhitenedParityCompression k L N t =
        0 ↔
      thetaPhiWhitenedPhaseExcursion k L N t = 0 := by
  rw [thetaPhiWhitenedParityCompression_phaseDefect_eq_gram
    hk hN t]
  let E := thetaPhiWhitenedPhaseExcursion k L N t
  change E.transpose * E = 0 ↔ E = 0
  constructor
  · intro h
    have htrace :
        (E.transpose * E).trace = 0 := by
      rw [h]
      simp
    apply
      (Matrix.trace_conjTranspose_mul_self_eq_zero_iff
        (A := E)).mp
    simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using htrace
  · intro h
    rw [h]
    simp

/-- Exact finite phase invariance condition: the ambient parity phase carries
the whitened theta Krylov subspace into itself. -/
def ThetaPhiWhitenedPhaseInvariant
    (k L N : ℕ) (t : ℝ) : Prop :=
  ((1 : Matrix (Fin L) (Fin L) ℝ) -
      thetaPhiWhitenedProjection k L N t) *
    thetaPhiParityInvolution L *
    (thetaPhiWhitenedKrylovFrame k L N t).transpose =
    0

/-- The complementary excursion vanishes exactly when the finite phase
invariance condition holds. -/
theorem thetaPhiWhitenedPhaseExcursion_eq_zero_iff
    (k L N : ℕ) (t : ℝ) :
    thetaPhiWhitenedPhaseExcursion k L N t = 0 ↔
      ThetaPhiWhitenedPhaseInvariant k L N t := by
  rfl

/-- On a nondegenerate cutoff, exact phase invariance is equivalent to the
compressed phase being an involution. -/
theorem thetaPhiWhitenedPhaseInvariant_iff_sq_one
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    ThetaPhiWhitenedPhaseInvariant k L N t ↔
      thetaPhiWhitenedParityCompression k L N t *
          thetaPhiWhitenedParityCompression k L N t =
        (1 : Matrix (Fin k) (Fin k) ℝ) := by
  rw [← thetaPhiWhitenedPhaseExcursion_eq_zero_iff]
  rw [←
    thetaPhiWhitenedParityCompression_phaseDefect_eq_zero_iff
      hk hN t]
  constructor
  · intro h
    exact (sub_eq_zero.mp h).symm
  · intro h
    exact sub_eq_zero.mpr h.symm

/-- Matrix-order form of the finite contraction certificate. -/
theorem thetaPhiWhitenedParityCompression_sq_le_one
    {k L N : ℕ} (hk : k ≤ L) (hN : 0 < N) (t : ℝ) :
    thetaPhiWhitenedParityCompression k L N t *
        thetaPhiWhitenedParityCompression k L N t ≤
      (1 : Matrix (Fin k) (Fin k) ℝ) := by
  rw [Matrix.le_iff]
  exact
    thetaPhiWhitenedParityCompression_phaseDefect_posSemidef
      hk hN t

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
