import FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian
import FormalResearch.PositiveAtlas.Grassmannian.ToeplitzMinors

/-!
# Reversible signed graph planes at every finite stage

The actual matrix is [I | J M], where (J M) i j = (-1)^(N-1-i) M (N-1-i) j.
The identity block proves rank N, including N = 0. Recovery and injectivity are
proved independently of positivity. The arbitrary-rank minor-sign correspondence
is an exact unproved proposition below, not an axiom or an assumed structure field.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian.SignedGraph

noncomputable section

/-- The columns of the identity block, in their natural order. -/
def leftColumn {N : ℕ} (i : Fin N) : Fin (N + N) := ⟨i.val, by omega⟩

/-- The columns of the signed right block, in their natural order. -/
def rightColumn {N : ℕ} (j : Fin N) : Fin (N + N) := ⟨N + j.val, by omega⟩

/-- Signed reversal of rows; its signs are retained rather than squared away. -/
def signedBlock {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) : Matrix (Fin N) (Fin N) ℝ :=
  fun i j => (-1 : ℝ) ^ i.rev.val * M i.rev j

/-- An actual full-width frame with the prescribed first-block normalization. -/
def frame {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) : Matrix (Fin N) (Fin (N + N)) ℝ :=
  fun i j => if h : j.val < N then
    (1 : Matrix (Fin N) (Fin N) ℝ) i ⟨j.val, h⟩
  else signedBlock M i ⟨j.val - N, by omega⟩

/-- The left pivot is exactly the identity, before any rank hypothesis. -/
theorem frame_pivot {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) :
    columnSubmatrix (frame M) leftColumn = 1 := by
  ext i j
  change (if h : j.val < N then
    (1 : Matrix (Fin N) (Fin N) ℝ) i ⟨j.val, h⟩ else _) = _
  rw [dif_pos j.isLt]

/-- Reading the right columns returns the signed reversed original entries. -/
theorem frame_right {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) (i j : Fin N) :
    frame M i (rightColumn j) = signedBlock M i j := by
  have hn : ¬ N + j.val < N := by omega
  simp [frame, rightColumn, hn]

/-- The unit pivot supplies a nonzero minor, including the empty determinant. -/
theorem frame_pivot_det {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) :
    columnMinor (frame M) leftColumn = 1 := by
  rw [columnMinor, frame_pivot, Matrix.det_one]

/-- The constructed frame has the required rank; half dimension is not presumed. -/
theorem frame_rank {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) : (frame M).rank = N := by
  apply rank_eq_of_columnMinor_ne_zero (frame M) leftColumn
  rw [frame_pivot_det]
  norm_num

/-- Decode the normalized frame without a choice of basis or a limiting procedure. -/
def recover {N : ℕ} (A : Matrix (Fin N) (Fin (N + N)) ℝ) : Matrix (Fin N) (Fin N) ℝ :=
  fun i j => A i.rev (rightColumn j) / (-1 : ℝ) ^ i.val

/-- Exact recovery of every original matrix entry. -/
theorem recover_frame {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) : recover (frame M) = M := by
  ext i j
  have hs : (-1 : ℝ) ^ i.val ≠ 0 := pow_ne_zero _ (by norm_num)
  simp [recover, frame_right, signedBlock, hs]

/-- The frame encoding is injective independently of signs or positivity. -/
theorem frame_injective {N : ℕ} : Function.Injective (frame (N := N)) := by
  intro M Q h
  have he := congrArg recover h
  simpa only [recover_frame] using he

/-- The full-rank representative carried by the intrinsic construction. -/
def fullRankFrame {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) : FullRankFrame N (N + N) :=
  ⟨frame M, frame_rank M⟩

/-- The image is an actual N-dimensional subspace of a 2N-dimensional real space. -/
def plane {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) : IntrinsicPlane N (N + N) :=
  representedPlane (fullRankFrame M)

/-- Passing to row spaces does not discard the matrix in this fixed pivot chart. -/
theorem plane_injective {N : ℕ} : Function.Injective (plane (N := N)) := by
  intro M Q h
  have hr : frameRowSpace (frame M) = frameRowSpace (frame Q) := congrArg Subtype.val h
  apply frame_injective
  exact normalized_eq_of_frameRowSpace_eq (frame M) (frame Q) leftColumn
    (frame_pivot M) (frame_pivot Q) hr

/-- A nonnegative constructed frame certifies membership in the intrinsic nonnegative locus. -/
theorem intrinsicNonnegative_of_frame {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ)
    (h : AllOrderedMinorsNonneg (frame M)) : IntrinsicNonnegative (plane M) :=
  ⟨fullRankFrame M, rfl, h⟩

/-- General-rank sign correspondence remains an explicit theorem target, not an assumption. -/
def MinorCorrespondence : Prop :=
  ∀ N : ℕ, ∀ M : Matrix (Fin N) (Fin N) ℝ,
    Toeplitz.FiniteNonnegative M ↔ AllOrderedMinorsNonneg (frame M)

end

end FormalResearch.PositiveAtlas.Grassmannian.SignedGraph
