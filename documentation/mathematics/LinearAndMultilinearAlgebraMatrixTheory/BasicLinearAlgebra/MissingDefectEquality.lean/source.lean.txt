import GRWTSK.Analysis.OperatorTheory.SpectralTheory.MatrixCountComparison
open GRWTSK.Spectral.MatrixCountComparison
example {ι : Type*} [Fintype ι] [DecidableEq ι] {A B : Matrix ι ι ℝ}
    (hA : A.IsHermitian) (hB : B.IsHermitian)
    (K : EuclideanSpace ℝ ι →ₗ[ℝ] ℝ) (E : ℝ) :
    eigenvalueCount hB E ≤ eigenvalueCount hA E + Module.finrank ℝ ℝ := by
  exact eigenvalueCount_le_add_finrank_of_kernel hA hB K E
