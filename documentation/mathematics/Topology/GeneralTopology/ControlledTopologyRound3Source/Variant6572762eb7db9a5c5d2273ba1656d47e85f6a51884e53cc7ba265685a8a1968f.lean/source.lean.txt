-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.DetGramMulLeft.Variantdee07983e49967aacb234343b166d7e72e87ee66a5951dd30a1e9e610f6bc0d2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dee07983e49967aacb234343b166d7e72e87ee66a5951dd30a1e9e610f6bc0d2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.DetGramMulLeft.Variantdee07983e49967aacb234343b166d7e72e87ee66a5951dd30a1e9e610f6bc0d2","mathematical_subject":"Topology.GeneralTopology","original_sha256":"dee07983e49967aacb234343b166d7e72e87ee66a5951dd30a1e9e610f6bc0d2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/artifacts/atlas-ghh/pivots/ControlledTopology-round3-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PivotOrthonormal
import FormalResearch.PositiveAtlas.Grassmannian.PivotChartTopology

/-!
# Intrinsic open controlled pivot cover

A homogeneous Gram-determinant inequality recognizes the orthonormal margin
on every full-rank representative. Its polynomial strict inequality is open
in every actual normalized chart. This proves intrinsic openness without
assuming a continuous global orthonormal basis or pivot selection.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/


namespace GRWTSK.Topology.GeneralTopology.DetGramMulLeft.Variantdee07983e49967aacb234343b166d7e72e87ee66a5951dd30a1e9e610f6bc0d2

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

variable {k n : ℕ}

/-- The actual Gram determinant scales by the square of the row-change determinant. -/
theorem det_gram_mul_left (U : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin n) ℝ) :
    ((U * A) * (U * A).transpose).det = U.det ^ 2 * (A * A.transpose).det := by
  have he : (U * A) * (U * A).transpose = U * (A * A.transpose) * U.transpose := by
    rw [Matrix.transpose_mul]
    simp only [Matrix.mul_assoc]
  rw [he, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose]
  ring

/-- Homogeneous margin test on arbitrary actual matrix representatives. -/
def controlledGramPivotDomain (I : Fin k ↪o Fin n) : Set (Matrix (Fin k) (Fin n) ℝ) :=
  {A | controlledPivotThreshold k n ^ 2 * (A * A.transpose).det < columnMinor A I ^ 2}

/-- The homogeneous test agrees with the specified absolute determinant margin on orthonormal rows. -/
theorem controlledGramPivotDomain_orthonormal_iff (A : Matrix (Fin k) (Fin n) ℝ)
    (hA : A * A.transpose = 1) (I : Fin k ↪o Fin n) :
    A ∈ controlledGramPivotDomain I ↔ A ∈ controlledPivotDomain I := by
  have hδ : 0 ≤ controlledPivotThreshold k n := by
    unfold controlledPivotThreshold
    positivity
  change controlledPivotThreshold k n ^ 2 * (A * A.transpose).det < columnMinor A I ^ 2 ↔
    controlledPivotThreshold k n < |columnMinor A I|
  rw [hA, Matrix.det_one, mul_one, ← sq_abs (columnMinor A I)]
  exact sq_lt_sq₀ hδ (abs_nonneg _)

/-- Actual invertible row changes preserve the homogeneous controlled test. -/
theorem controlledGramPivotDomain_mul_left_iff (U : Matrix (Fin k) (Fin k) ℝ)
    (hU : U.det ≠ 0) (A : Matrix (Fin k) (Fin n) ℝ) (I : Fin k ↪o Fin n) :
    U * A ∈ controlledGramPivotDomain I ↔ A ∈ controlledGramPivotDomain I := by
  change controlledPivotThreshold k n ^ 2 * ((U * A) * (U * A).transpose).det <
      columnMinor (U * A) I ^ 2 ↔
    controlledPivotThreshold k n ^ 2 * (A * A.transpose).det < columnMinor A I ^ 2
  rw [det_gram_mul_left, columnMinor_mul_left, mul_pow]
  have he : controlledPivotThreshold k n ^ 2 * (U.det ^ 2 * (A * A.transpose).det) =
      U.det ^ 2 * (controlledPivotThreshold k n ^ 2 * (A * A.transpose).det) := by ring
  rw [he]
  exact mul_lt_mul_iff_right₀ (sq_pos_of_ne_zero hU)

/-- The homogeneous strict polynomial inequality gives an actual open matrix domain. -/
theorem isOpen_controlledGramPivotDomain (I : Fin k ↪o Fin n) :
    IsOpen (controlledGramPivotDomain I) := by
  have hgram : Continuous (fun A : Matrix (Fin k) (Fin n) ℝ => (A * A.transpose).det) :=
    (continuous_id.matrix_mul continuous_id.matrix_transpose).matrix_det
  exact isOpen_lt (continuous_const.mul hgram) ((continuous_columnMinor I).pow 2)

/-- Intrinsic controlled domain, with full-rank actual representatives retained. -/
def intrinsicControlledPivotDomain (I : Fin k ↪o Fin n) : Set (IntrinsicPlane k n) :=
  {P | ∃ A : FullRankFrame k n, representedPlane A = P ∧ A.val ∈ controlledGramPivotDomain I}

/-- Every full-rank representative recognizes intrinsic controlled membership. -/
theorem representedPlane_mem_intrinsicControlledPivotDomain_iff
    (A : FullRankFrame k n) (I : Fin k ↪o Fin n) :
    representedPlane A ∈ intrinsicControlledPivotDomain I ↔
      A.val ∈ controlledGramPivotDomain I := by
  constructor
  · rintro ⟨B, hB, hBI⟩
    obtain ⟨U, hU, hBA⟩ := exists_rowChange_of_frameRowSpace_eq A.val B.val B.property
      ((representedPlane_eq_iff A B).mp hB.symm)
    rw [hBA] at hBI
    exact (controlledGramPivotDomain_mul_left_iff U hU A.val I).mp hBI
  · intro hA
    exact ⟨A, rfl, hA⟩

/-- Intrinsic controlled domains are actual open sets in the proved final chart topology. -/
theorem isOpen_intrinsicControlledPivotDomain (I : Fin k ↪o Fin n) :
    IsOpen (intrinsicControlledPivotDomain I) := by
  rw [isOpen_coinduced, isOpen_sigma_iff]
  intro J
  have he : (Sigma.mk J ⁻¹' (intrinsicAtlasMap ⁻¹' intrinsicControlledPivotDomain I)) =
      {B : NormalizedPivotFrame J | B.val ∈ controlledGramPivotDomain I} := by
    ext B
    exact representedPlane_mem_intrinsicControlledPivotDomain_iff
      ⟨B.val, normalizedPivotFrame_rank J B⟩ I
  rw [he]
  exact (isOpen_controlledGramPivotDomain I).preimage continuous_subtype_val

/-- The actual intrinsic open controlled family covers every dimension-k plane. -/
theorem intrinsicControlledPivotDomain_cover (P : IntrinsicPlane k n) :
    ∃ I : Fin k ↪o Fin n, P ∈ intrinsicControlledPivotDomain I := by
  obtain ⟨A, I, hAP, hA, hI⟩ := intrinsicPlane_controlled_orthonormal_pivot P
  refine ⟨I, A, hAP, ?_⟩
  exact (controlledGramPivotDomain_orthonormal_iff A.val hA I).mpr hI

/-- The intrinsic open test is exactly the specified margin on every orthonormal representative. -/
theorem orthonormal_representedPlane_mem_intrinsicControlledPivotDomain_iff
    (A : FullRankFrame k n) (hA : A.val * A.val.transpose = 1) (I : Fin k ↪o Fin n) :
    representedPlane A ∈ intrinsicControlledPivotDomain I ↔ A.val ∈ controlledPivotDomain I := by
  rw [representedPlane_mem_intrinsicControlledPivotDomain_iff,
    controlledGramPivotDomain_orthonormal_iff A.val hA I]

end

end FormalResearch.PositiveAtlas.Grassmannian
