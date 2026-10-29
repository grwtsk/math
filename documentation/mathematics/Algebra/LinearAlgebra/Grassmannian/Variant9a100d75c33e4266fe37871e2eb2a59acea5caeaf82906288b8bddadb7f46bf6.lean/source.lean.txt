import FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition

/-!
# Involution compressions of Grassmannian frames

For a real frame `A : k x N` and an ambient operator `J : N x N`,
the matrix

`A J A^T`

is the bilinear-form compression of `J` to the row frame.

The determinant transforms under a row-basis change `A |-> U A` by the
positive square `det(U)^2`.  Consequently, whenever the row frame is
full-rank, the sign of the compression determinant depends only on the
Grassmannian row space.

This is finite matrix algebra.  No positivity of `J`, spectral theorem, or
Riemann-hypothesis implication is assumed.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

/-- Bilinear-form compression of an ambient matrix to a row frame. -/
def involutionCompressionGram {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ) :
    Matrix (Fin k) (Fin k) ℝ :=
  A * J * A.transpose

/-- A symmetric ambient operator gives a symmetric compressed matrix. -/
theorem involutionCompressionGram_transpose
    {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ)
    (hJ : J.transpose = J) :
    (involutionCompressionGram A J).transpose =
      involutionCompressionGram A J := by
  unfold involutionCompressionGram
  rw [Matrix.transpose_mul, Matrix.transpose_mul, hJ,
    Matrix.transpose_transpose]
  rw [Matrix.mul_assoc]

/-- Left row-basis change acts by congruence on the compression. -/
theorem involutionCompressionGram_mul_left
    {k N : ℕ}
    (U : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ) :
    involutionCompressionGram (U * A) J =
      U * involutionCompressionGram A J * U.transpose := by
  unfold involutionCompressionGram
  rw [Matrix.transpose_mul]
  simp only [Matrix.mul_assoc]

/-- The compression determinant changes by the square of the row-basis
determinant. -/
theorem det_involutionCompressionGram_mul_left
    {k N : ℕ}
    (U : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ) :
    Matrix.det (involutionCompressionGram (U * A) J) =
      (Matrix.det U) ^ 2 *
        Matrix.det (involutionCompressionGram A J) := by
  rw [involutionCompressionGram_mul_left]
  rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose]
  ring

/-- For an invertible row-basis change, nonnegativity of the compression
determinant is unchanged. -/
theorem involutionCompressionGram_nonnegative_iff_mul_left
    {k N : ℕ}
    (U : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ)
    (hU : Matrix.det U ≠ 0) :
    0 ≤ Matrix.det (involutionCompressionGram (U * A) J) ↔
      0 ≤ Matrix.det (involutionCompressionGram A J) := by
  rw [det_involutionCompressionGram_mul_left]
  exact mul_nonneg_iff_of_pos_left (sq_pos_of_ne_zero hU)

/-- Projectively normalized involution-compression determinant.  The
ordinary frame Gram determinant removes the squared row-basis gauge. -/
def normalizedInvolutionCompression
    {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ) : ℝ :=
  Matrix.det (involutionCompressionGram A J) /
    Matrix.det (A * A.transpose)

/-- The ordinary frame Gram determinant has the same squared row-basis
transformation law as the involution compression. -/
theorem det_frameGram_mul_left
    {k N : ℕ}
    (U : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin N) ℝ) :
    Matrix.det ((U * A) * (U * A).transpose) =
      (Matrix.det U) ^ 2 *
        Matrix.det (A * A.transpose) := by
  have h :=
    det_involutionCompressionGram_mul_left
      U A (1 : Matrix (Fin N) (Fin N) ℝ)
  simpa [involutionCompressionGram] using h

/-- The normalized compression is exactly invariant under every invertible
row-basis change. -/
theorem normalizedInvolutionCompression_mul_left
    {k N : ℕ}
    (U : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ)
    (hU : Matrix.det U ≠ 0) :
    normalizedInvolutionCompression (U * A) J =
      normalizedInvolutionCompression A J := by
  unfold normalizedInvolutionCompression
  rw [det_involutionCompressionGram_mul_left,
    det_frameGram_mul_left]
  exact mul_div_mul_left _ _ (pow_ne_zero 2 hU)

/-- In an orthonormal row frame the normalized compression is just the
compression determinant itself. -/
theorem normalizedInvolutionCompression_eq_det_of_gram_one
    {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ)
    (hgram : A * A.transpose =
      (1 : Matrix (Fin k) (Fin k) ℝ)) :
    normalizedInvolutionCompression A J =
      Matrix.det (involutionCompressionGram A J) := by
  unfold normalizedInvolutionCompression
  rw [hgram, Matrix.det_one, div_one]

/-- On actual full-rank frames, the sign of the compression determinant
descends to the Grassmannian row space. -/
theorem involutionCompressionGram_nonnegative_iff_of_rowSpace_eq
    {k N : ℕ}
    (A B : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ)
    (hB : B.rank = k)
    (hspace : frameRowSpace A = frameRowSpace B) :
    0 ≤ Matrix.det (involutionCompressionGram A J) ↔
      0 ≤ Matrix.det (involutionCompressionGram B J) := by
  obtain ⟨U, hU, hBA⟩ :=
    exists_rowChange_of_frameRowSpace_eq A B hB hspace
  rw [hBA]
  exact
    (involutionCompressionGram_nonnegative_iff_mul_left
      U A J hU).symm

end

end FormalResearch.PositiveAtlas.Grassmannian
