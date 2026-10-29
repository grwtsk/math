-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.BinaryMatrixRefinementRule.Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BinaryMatrixRefinementRule.Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01","mathematical_subject":"Foundations.Unclassified","original_sha256":"5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/DiscreteGeometry/BinaryMatrixRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.DiscreteGeometry.FramedCellTopology

/-!
# Folder.Rebuild.DiscreteGeometry.BinaryMatrixRefinement

BinaryMatrix-native padding, local block refinement, and renormalized
observables.

The carrier remains `Folder.Carrier.BinaryMatrix`.  Bit words are only an
addressing/flattening convenience elsewhere; the geometry-facing operations in
this file act directly on finite matrices.
-/


namespace GRWTSK.Algebra.LinearAlgebra.BinaryMatrixRefinementRule.Variant5d454d43f03dfe0335007cf5b713991eeaeee05d1a49027bb8973d010753bd01

namespace Folder
namespace Rebuild
namespace DiscreteGeometry

noncomputable section

open scoped BigOperators

/-- Exterior zero-shell padding around a binary matrix. -/
def padMatrix
    (P : Pad2)
    (M : Carrier.BinaryMatrix) : Carrier.BinaryMatrix :=
  Carrier.BinaryMatrix.ofFunction
    (P.top + M.m + P.bottom)
    (P.left + M.n + P.right)
    fun i j =>
      if hi : P.top ≤ i.val ∧ i.val < P.top + M.m then
        if hj : P.left ≤ j.val ∧ j.val < P.left + M.n then
          M.get
            ⟨i.val - P.top, by omega⟩
            ⟨j.val - P.left, by omega⟩
        else
          0
      else
        0

@[simp]
theorem padMatrix_rows
    (P : Pad2)
    (M : Carrier.BinaryMatrix) :
    (padMatrix P M).rows = P.top + M.m + P.bottom :=
  rfl

@[simp]
theorem padMatrix_cols
    (P : Pad2)
    (M : Carrier.BinaryMatrix) :
    (padMatrix P M).cols = P.left + M.n + P.right :=
  rfl

/-- A local block-refinement rule for `BinaryMatrix` cells. -/
structure BinaryMatrixRefinementRule where
  scale : Nat
  scale_pos : 0 < scale
  split : Carrier.Bit → Fin scale → Fin scale → Carrier.Bit

/-- A refinement rule that does not create nonzero cells from zero cells. -/
structure ZeroPreservingRefinementRule extends BinaryMatrixRefinementRule where
  zero_split : ∀ i j, split 0 i j = 0

/--
Analytic renormalization data for a refined `scale x scale` block.

Nonconstant refinement patterns should be observed through real-valued mass,
density, energy, or kernel data rather than forced back into a single bit.
-/
structure BinaryMatrixRenormalizationRule where
  scale : Nat
  scale_pos : 0 < scale
  blockMass : (Fin scale → Fin scale → Carrier.Bit) → ℝ
  zero_mass : blockMass (fun _ _ => 0) = 0

/-- Replace every coarse matrix cell by its local `scale x scale` split block. -/
def refineMatrix
    (R : BinaryMatrixRefinementRule)
    (M : Carrier.BinaryMatrix) : Carrier.BinaryMatrix :=
  Carrier.BinaryMatrix.ofFunction
    (M.m * R.scale)
    (M.n * R.scale)
    fun I J =>
      let row : Fin M.m :=
        ⟨I.val / R.scale, by
          have hcomm : I.val < R.scale * M.m := by
            simpa [Nat.mul_comm] using I.isLt
          exact Nat.div_lt_of_lt_mul hcomm⟩
      let col : Fin M.n :=
        ⟨J.val / R.scale, by
          have hcomm : J.val < R.scale * M.n := by
            simpa [Nat.mul_comm] using J.isLt
          exact Nat.div_lt_of_lt_mul hcomm⟩
      let localRow : Fin R.scale :=
        ⟨I.val % R.scale, Nat.mod_lt I.val R.scale_pos⟩
      let localCol : Fin R.scale :=
        ⟨J.val % R.scale, Nat.mod_lt J.val R.scale_pos⟩
      R.split (M.get row col) localRow localCol

@[simp]
theorem refineMatrix_rows
    (R : BinaryMatrixRefinementRule)
    (M : Carrier.BinaryMatrix) :
    (refineMatrix R M).rows = M.m * R.scale :=
  rfl

@[simp]
theorem refineMatrix_cols
    (R : BinaryMatrixRefinementRule)
    (M : Carrier.BinaryMatrix) :
    (refineMatrix R M).cols = M.n * R.scale :=
  rfl

/-- Constant binary refinement: every subcell receives the original bit. -/
def constRefinementRule
    (q : Nat)
    (hq : 0 < q) : BinaryMatrixRefinementRule where
  scale := q
  scale_pos := hq
  split b _ _ := b

/-- Constant binary refinement as a zero-preserving rule. -/
def constZeroPreservingRefinementRule
    (q : Nat)
    (hq : 0 < q) : ZeroPreservingRefinementRule where
  scale := q
  scale_pos := hq
  split b _ _ := b
  zero_split _ _ := rfl

def refineConst
    (q : Nat)
    (hq : 0 < q)
    (M : Carrier.BinaryMatrix) : Carrier.BinaryMatrix :=
  refineMatrix (constRefinementRule q hq) M

/--
Top-left binary zoom-out from a refined matrix back to a chosen coarse shape.

This is an exact binary zoom-out only for constant blocks.  Nonconstant blocks
belong to the analytic renormalization layer.
-/
def zoomOutTopLeft
    (q : Nat)
    (_hq : 0 < q)
    (m n : Nat)
    (M : Carrier.BinaryMatrix) : Carrier.BinaryMatrix :=
  Carrier.BinaryMatrix.ofFunction m n fun i j =>
    if hi : i.val * q < M.m then
      if hj : j.val * q < M.n then
        M.get ⟨i.val * q, hi⟩ ⟨j.val * q, hj⟩
      else
        0
    else
      0

/-- Constant block refinement zooms back out to the original matrix exactly. -/
theorem zoomOut_refine_const
    (q : Nat)
    (hq : 0 < q)
    (M : Carrier.BinaryMatrix) :
    zoomOutTopLeft q hq M.m M.n (refineConst q hq M) = M := by
  cases M with
  | mk m n A =>
    apply congrArg (fun A' => Carrier.BinaryMatrix.ofFunction m n A')
    funext i j
    have hi : i.val * q < m * q :=
      Nat.mul_lt_mul_of_pos_right i.isLt hq
    have hj : j.val * q < n * q :=
      Nat.mul_lt_mul_of_pos_right j.isLt hq
    change
      (if hi' : i.val * q < m * q then
        if hj' : j.val * q < n * q then
          A ⟨(i.val * q) / q, _⟩ ⟨(j.val * q) / q, _⟩
        else
          0
      else
        0) = A i j
    rw [dif_pos hi, dif_pos hj]
    congr
    · exact Nat.mul_div_cancel i.val hq
    · exact Nat.mul_div_cancel j.val hq

/-- Zero-preserving rules refine the all-zero matrix to the all-zero matrix. -/
theorem refineMatrix_zero_of_zeroPreserving
    (R : ZeroPreservingRefinementRule)
    (m n : Nat) :
    refineMatrix R.toBinaryMatrixRefinementRule (Carrier.BinaryMatrix.zero m n) =
      Carrier.BinaryMatrix.zero (m * R.scale) (n * R.scale) := by
  apply congrArg
    (fun A' => Carrier.BinaryMatrix.ofFunction (m * R.scale) (n * R.scale) A')
  funext i j
  change
    R.split 0
      ⟨i.val % R.scale, Nat.mod_lt i.val R.scale_pos⟩
      ⟨j.val % R.scale, Nat.mod_lt j.val R.scale_pos⟩ = 0
  exact R.zero_split _ _

def bitMass
    (b : Carrier.Bit) : ℝ :=
  b.val

def matrixMass
    (M : Carrier.BinaryMatrix) : ℝ :=
  ∑ i : Fin M.m, ∑ j : Fin M.n, bitMass (M.get i j)

def matrixDensity
    (M : Carrier.BinaryMatrix) : ℝ :=
  if _h : M.cellCount = 0 then
    0
  else
    matrixMass M / (M.cellCount : ℝ)

/--
Extract a `scale x scale` block from a matrix at coarse coordinate `(i, j)`.
Out-of-bounds subcells are read as zero, so the definition is total.
-/
def blockAt
    (q : Nat)
    (_hq : 0 < q)
    (m n : Nat)
    (M : Carrier.BinaryMatrix)
    (i : Fin m)
    (j : Fin n) :
    Fin q → Fin q → Carrier.Bit :=
  fun a b =>
    if hi : i.val * q + a.val < M.m then
      if hj : j.val * q + b.val < M.n then
        M.get ⟨i.val * q + a.val, hi⟩ ⟨j.val * q + b.val, hj⟩
      else
        0
    else
      0

/-- Sum a real block observable over a chosen coarse grid. -/
def renormalizedMass
    (ρ : BinaryMatrixRenormalizationRule)
    (m n : Nat)
    (M : Carrier.BinaryMatrix) : ℝ :=
  ∑ i : Fin m, ∑ j : Fin n,
    ρ.blockMass (blockAt ρ.scale ρ.scale_pos m n M i j)

/-- A simple squared-density observable for finite binary matrices. -/
def renormalizedEnergy
    (M : Carrier.BinaryMatrix) : ℝ :=
  (matrixDensity M) ^ 2

end

end DiscreteGeometry
end Rebuild
end Folder
