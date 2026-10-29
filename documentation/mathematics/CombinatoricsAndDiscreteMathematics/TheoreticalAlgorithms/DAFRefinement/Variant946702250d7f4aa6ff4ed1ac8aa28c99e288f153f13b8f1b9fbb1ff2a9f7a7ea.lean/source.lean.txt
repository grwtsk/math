-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapSpecSystem.Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.MapSpecSystem.Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf","mathematical_subject":"Computation.DataStructures","original_sha256":"7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/Adapters/DAFRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Refinement
import BinaryMatrix

/-!
# Binary-matrix instance of framework refinement

The array-backed `BinMatMut` representation is connected to declarative
`BinMat` through `toDecl`.  This module packages the existing unary refinement
theorem as a `DAF.Refinement`: validity is intrinsic in the dependent array
size field, abstraction is `toDecl`, and optimized mapping commutes with the
declarative operation.

This does not identify raw array structure or proof fields observationally;
implementation values are compared only through their declarative meaning.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MapSpecSystem.Variant7da7fa0ac65a03da7e342153cd400b46c361a5399989fd20d0f659fb53f896cf

namespace BinaryMatrix.Adapters

/-- Declarative pointwise-map transition system. -/
def mapSpecSystem (m n : Nat) : DAF.System where
  Input := Bool → Bool
  State := BinMat m n
  Resolution := PUnit
  Observation := fun _ => BinMat m n
  step f matrix := BinMat.map f matrix
  observe := fun _ matrix => matrix

/-- Array-backed pointwise-map transition system observed through `toDecl`. -/
def mapImplSystem (m n : Nat) : DAF.System where
  Input := Bool → Bool
  State := BinMatMut m n
  Resolution := PUnit
  Observation := fun _ => BinMat m n
  step f matrix := matrix.mapInPlace f
  observe := fun _ matrix => matrix.toDecl

/-- The optimized unary matrix implementation refines its declarative system. -/
def mapRefinement (m n : Nat) :
    DAF.Refinement (mapSpecSystem m n) (mapImplSystem m n) where
  Valid := fun _ => True
  abstract := BinMatMut.toDecl
  mapInput := id
  mapResolution := id
  mapObservation := fun _ => id
  valid_step := by intros; trivial
  step_sound := by
    intro f matrix _
    exact matrix.mapInPlace_spec f
  observe_sound := by intros; rfl

@[simp]
theorem mapRefinement_abstract
    (matrix : BinMatMut m n) :
    (mapRefinement m n).abstract matrix = matrix.toDecl :=
  rfl

@[simp]
theorem mapRefinement_step_sound
    (f : Bool → Bool)
    (matrix : BinMatMut m n) :
    (mapRefinement m n).abstract
        ((mapImplSystem m n).step f matrix) =
      (mapSpecSystem m n).step f
        ((mapRefinement m n).abstract matrix) :=
  (mapRefinement m n).step_sound f matrix trivial

/-- Existing pointwise refinement is equality through the framework abstraction. -/
theorem refines_iff_abstract_eq
    (matrix : BinMatMut m n)
    (specification : BinMat m n) :
    BinMatMut.Refines matrix specification ↔
      (mapRefinement m n).abstract matrix = specification :=
  Iff.rfl

end BinaryMatrix.Adapters
