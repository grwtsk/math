-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SampleMatrix.Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SampleMatrix.Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/SubmatrixSurgeryTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix.SubmatrixSurgery
import BinaryMatrix.IntegralPermutationLift

/-!
# Tests for exact binary submatrix surgery

The selected rows and columns are non-contiguous, so the examples exercise the
ordered global embeddings rather than a rectangular offset shortcut.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SampleMatrix.Variant89e1f1c1a6b60bc15bbf14c00b05465c8a8a9b6cdcc5deda6feb84204cade8a5

namespace BinaryMatrixSubmatrixSurgeryTests

def sampleMatrix : BinMat 3 4 :=
  fun i j => decide ((i.val + j.val) % 2 = 1)

def sampleLocus : MatrixLocus 3 4 where
  rows := {0, 2}
  columns := {1, 3}

def replacement :
    BinMat sampleLocus.rows.card sampleLocus.columns.card :=
  fun i j => decide (i = j)

def sampleSurgery : BinarySubmatrixSurgery sampleMatrix sampleLocus :=
  BinarySubmatrixSurgery.replace sampleMatrix sampleLocus replacement

example : sampleLocus.rows.card = 2 := by native_decide

example : sampleLocus.columns.card = 2 := by native_decide

example : sampleLocus.rowEmbed (0 : Fin 2) = (0 : Fin 3) := by native_decide

example : sampleLocus.rowEmbed (1 : Fin 2) = (2 : Fin 3) := by native_decide

example : sampleLocus.columnEmbed (0 : Fin 2) = (1 : Fin 4) := by native_decide

example : sampleLocus.columnEmbed (1 : Fin 2) = (3 : Fin 4) := by native_decide

example :
    BinMat.extractSubmatrix sampleSurgery.result sampleLocus = replacement :=
  sampleSurgery.extract_result

example : sampleSurgery.result 0 1 = true := by native_decide

example : sampleSurgery.result 0 3 = false := by native_decide

example : sampleSurgery.result 2 1 = false := by native_decide

example : sampleSurgery.result 2 3 = true := by native_decide

example : sampleSurgery.result 1 2 = sampleMatrix 1 2 := by
  exact sampleSurgery.outside_unchanged 1 2 (Or.inl (by decide))

example :
    BinMat.implantSubmatrix sampleMatrix sampleLocus
        (BinMat.extractSubmatrix sampleMatrix sampleLocus) = sampleMatrix :=
  BinMat.implantSubmatrix_extractSubmatrix sampleMatrix sampleLocus

example {i : Fin 3} {j : Fin 4}
    (h : (i, j) ∈ BinMat.differenceSupport sampleSurgery.result sampleMatrix) :
    i ∈ sampleLocus.rows ∧ j ∈ sampleLocus.columns :=
  sampleSurgery.difference_support_inside h

/-! ## Row-major runtime refinement -/

def sampleMatrixMut : BinMatMut 3 4 :=
  BinMatMut.ofDecl sampleMatrix

def replacementMut :
    BinMatMut sampleLocus.rows.card sampleLocus.columns.card :=
  BinMatMut.ofDecl replacement

def sampleRuntimeSurgery :
    BinMatMutSurgeryRefinement sampleMatrixMut sampleLocus :=
  BinMatMutSurgeryRefinement.replace sampleMatrixMut sampleLocus replacementMut

example : sampleMatrixMut.toDecl = sampleMatrix := by simp [sampleMatrixMut]

example : replacementMut.toDecl = replacement := by simp [replacementMut]

example :
    sampleRuntimeSurgery.result.toDecl = sampleSurgery.result := by
  calc
    sampleRuntimeSurgery.result.toDecl =
        BinMat.implantSubmatrix sampleMatrixMut.toDecl sampleLocus
          replacementMut.toDecl := by
      simpa [sampleRuntimeSurgery] using
        BinMatMutSurgeryRefinement.replace_result_refines
          sampleMatrixMut sampleLocus replacementMut
    _ = BinMat.implantSubmatrix sampleMatrix sampleLocus replacement := by
      simp [sampleMatrixMut, replacementMut]
    _ = sampleSurgery.result := sampleSurgery.result_spec.symm

example :
    BinMatMut.flatIdx (0 : Fin 3) (1 : Fin 4) ∈
      sampleLocus.rowMajorOffsets := by
  native_decide

example :
    BinMatMut.flatIdx (1 : Fin 3) (1 : Fin 4) ∉
      sampleLocus.rowMajorOffsets := by
  native_decide

example (i : Fin 3) (j : Fin 4) :
    BinMatMut.flatIdx i j ∈ sampleLocus.rowMajorOffsets ↔
      i ∈ sampleLocus.rows ∧ j ∈ sampleLocus.columns :=
  sampleLocus.flatIdx_mem_rowMajorOffsets_iff i j

/-! A concrete two-state involution also checks the integral lift boundary. -/

def boolFinTwo : Bool ≃ Fin 2 where
  toFun
    | false => 0
    | true => 1
  invFun i := i = 1
  left_inv b := by cases b <;> rfl
  right_inv i := by fin_cases i <;> rfl

def boolNotInvolution :
    FinitePermutationDynamics.CertifiedInvolution Bool where
  act := not
  involutive b := by cases b <;> rfl
  support := Finset.univ
  support_spec b := by cases b <;> simp

def boolProjection : BinaryInvolutionProjection Bool :=
  BinaryInvolutionProjection.ofCertified 2 boolFinTwo boolNotInvolution

example : boolProjection.integralMatrix.det = -1 := by native_decide

example : boolProjection.integralMatrix * boolProjection.integralMatrix = 1 :=
  boolProjection.integralMatrix_mul_self

example : boolProjection.f2Matrix * boolProjection.f2Matrix = 1 :=
  boolProjection.f2Matrix_mul_self

end BinaryMatrixSubmatrixSurgeryTests
