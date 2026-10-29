-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SymmetricMulVecMemRangeOfKernelOrthogonal.Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SymmetricMulVecMemRangeOfKernelOrthogonal.Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"d3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/ProvenanceRange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.NullCrossAnnihilation
import Mathlib.Analysis.Matrix.Hermitian
import Mathlib.Analysis.InnerProductSpace.Projection.FiniteDimensional

/-!
# Provenance cross range

This module closes the finite-dimensional range step in the singular Phase-II
Schur analysis.

For a symmetric matrix A, the range of the associated Euclidean linear map is
the orthogonal complement of its kernel.  Therefore any vector orthogonal to
every kernel vector lies in the range of A.

Combined with null-provenance cross annihilation, every cross-block vector B u
of a positive semidefinite block form lies in the range of the provenance block
A.  This removes the conceptual range obstruction independently of any
particular generalized-inverse implementation.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SymmetricMulVecMemRangeOfKernelOrthogonal.Variantd3ab6e4042e18dd064567d70bcd2d3c9333071a5fd293aa1dec26786b828ea03

namespace FormalResearch.PositiveAtlas

universe u v

variable {ι : Type u} {κ : Type v}
variable [Fintype ι]
variable [Fintype κ]

/-- For a symmetric finite real matrix, every vector orthogonal to the kernel
lies in the matrix range. -/
theorem symmetric_mulVec_mem_range_of_kernel_orthogonal
    (A : Matrix ι ι ℝ) (hA : A.IsSymm) (y : ι → ℝ)
    (hy : ∀ p : ι → ℝ, A.mulVec p = 0 → p ⬝ᵥ y = 0) :
    y ∈ LinearMap.range A.mulVecLin := by
  classical
  let T := A.toEuclideanLin
  have hT : T.IsSymmetric := by
    rw [Matrix.isSymmetric_toEuclideanLin_iff]
    exact Matrix.isHermitian_iff_isSymm.mpr hA
  let yE : EuclideanSpace ℝ ι := WithLp.toLp 2 y
  have hyOrth : yE ∈ (LinearMap.ker T)ᗮ := by
    rw [Submodule.mem_orthogonal]
    intro x hx
    have hx0 : A.mulVec (WithLp.ofLp x) = 0 := by
      have hTx : T x = 0 := LinearMap.mem_ker.mp hx
      have hTx' := congrArg WithLp.ofLp hTx
      simpa [T, Matrix.ofLp_toLpLin] using hTx'
    have hdot := hy (WithLp.ofLp x) hx0
    simpa [yE, EuclideanSpace.inner_eq_star_dotProduct, dotProduct_comm] using hdot
  have hyDouble : yE ∈ (LinearMap.range T)ᗮᗮ := by
    rw [hT.orthogonal_range]
    exact hyOrth
  have hyRange : yE ∈ LinearMap.range T := by
    have h := hyDouble
    rw [Submodule.orthogonal_orthogonal_eq_closure,
      Submodule.topologicalClosure_eq_self] at h
    exact h
  rcases hyRange with ⟨q, hq⟩
  refine ⟨WithLp.ofLp q, ?_⟩
  have hq' := congrArg WithLp.ofLp hq
  simpa [T, yE, Matrix.ofLp_toLpLin] using hq'

omit [Fintype κ] in
/-- The provenance matrix of a compatible positive block form is symmetric. -/
theorem compatible_provenanceMatrix_isSymm
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q) :
    A.IsSymm := by
  classical
  apply Matrix.IsSymm.ext
  intro i j
  let ei : ι → ℝ := Pi.single i 1
  let ej : ι → ℝ := Pi.single j 1
  have hsymm :=
    G.symmetric (provenanceInclusion ei) (provenanceInclusion ej)
  rw [hA, hA] at hsymm
  simp only [ei, ej, single_dotProduct, one_mul, Matrix.mulVec, dotProduct_single,
    mul_one] at hsymm
  exact hsymm.symm

/-- Positive block geometry forces every cross-block vector to lie in the range
of the provenance block. -/
theorem cross_mem_provenance_range
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (u : κ → ℝ) :
    B.mulVec u ∈ LinearMap.range A.mulVecLin := by
  apply symmetric_mulVec_mem_range_of_kernel_orthogonal
    A (compatible_provenanceMatrix_isSymm G A hA) (B.mulVec u)
  intro p hp
  exact matrix_kernel_cross_orthogonal G A B hA hB p hp u

/-- Equivalently, every autonomous input has an explicit provenance preimage for
its cross-block vector. -/
theorem exists_provenance_solution
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (u : κ → ℝ) :
    ∃ p : ι → ℝ, A.mulVec p = B.mulVec u := by
  rcases cross_mem_provenance_range G A B hA hB u with ⟨p, hp⟩
  exact ⟨p, hp⟩

end FormalResearch.PositiveAtlas
