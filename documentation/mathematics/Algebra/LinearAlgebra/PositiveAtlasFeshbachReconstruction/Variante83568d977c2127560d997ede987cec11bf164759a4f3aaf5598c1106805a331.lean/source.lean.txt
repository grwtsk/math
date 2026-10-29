import FormalResearch.PositiveAtlas.FeshbachReconstruction

/-!
Exact rational fixtures with nonzero cross coupling. The full rank-one packet
has a nontrivial kernel and a zero Schur center, so these examples check the
minus sign and reconstruction coordinates rather than only diagonal packets.
AI attribution: Codex authored these fixtures.
-/

namespace FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures

open Matrix
open scoped Matrix

private def two : Matrix Unit Unit ℚ := fun _ _ => 2

private instance : Invertible two where
  invOf := fun _ _ => 1 / 2
  invOf_mul_self := by
    ext i j
    change (∑ _ : Unit, (1 / 2 : ℚ) * 2) = if i = j then 1 else 0
    norm_num
  mul_invOf_self := by
    ext i j
    change (∑ _ : Unit, (2 : ℚ) * (1 / 2)) = if i = j then 1 else 0
    norm_num

private theorem inverse_two : ⅟two = (fun _ _ => (1 / 2 : ℚ)) := rfl

/-- Nonzero cross coupling reconstructs the eliminated coordinate with a minus sign. -/
theorem nonzero_cross_lift : lift two two (fun _ => 3) = (fun _ => 3, fun _ => -3) := by
  ext <;> norm_num [lift_apply, inverse_two, two, Matrix.mulVec, dotProduct]

/-- The coupled full packet annihilates a nonzero reconstructed vector. -/
theorem nonzero_cross_kernel :
    blockMap two two two two (fun _ => 3, fun _ => -3) = 0 := by
  ext <;> norm_num [blockMap_apply, two, Matrix.mulVec, dotProduct]

/-- The Schur center is exactly zero, without discarding the cross correction. -/
theorem nonzero_cross_schur : schur two two two two = 0 := by
  ext i j
  norm_num [schur, inverse_two, two, Matrix.mul_apply]

/-- Reconstruction fixes the first coordinate and replaces an unrelated second coordinate. -/
theorem nonzero_cross_projection :
    project two two (fun _ => 3, fun _ => 7) = (fun _ => 3, fun _ => -3) := by
  exact nonzero_cross_lift

end FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures
