/-
ConstantFabricNegation — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 62ac0172a320a0f61fadf69974a5c9b1ef24da968a7bcd1de8040eddcdecc7af
Organized SHA-256: 405b0abab2f8b7c9e05166ff6f24bad0a657ad4410576edfbcc034d08d1118a9
PMD: 510.9.010 category theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Constant PUnit cells and literal contract coherence do not establish geometric realization, homotopy correctness, cryptographic security or performance. Names/versions are retained as metadata, not authority. Original namespaces are retained to preserve exact method/type-extension lookup; physical subject placement is GRWTSK. Distinct historical versions are separate uncompiled files and are not admitted together to an umbrella. -/

import BitMatrix.Adapters.DAFRefinement
import DAF.Fabric.Reaction

import GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteBooleanStructure.Variant62ac0172a320a0f6.CoordinatePresentations

/-!
# Binary matrices as fabric presentations

This adapter packages the existing declarative matrix and array-backed systems
as assembly presentations.  It reuses `BitMatrix.Adapters.mapRefinement`;
no `BitMatrix.ArrayBacked` refinement proof is duplicated.  Coordinate observations are
presentation morphisms, while executable matrices remain observationally
related to `BitMatrix` through `toMatrix`.
-/

namespace BitMatrix.Adapters.Fabric

open CategoryTheory

/-- The constant one-cell-per-degree shape used by the adapter fixture. -/
def constantMatrixShape : DAF.Fabric.Shape :=
  (Functor.const (SimplexCategoryᵒᵖ)).obj PUnit

/-- A coherent constant fabric hosting the declarative matrix presentation. -/
def matrixFabric (m n : Nat) : DAF.Fabric.Fabric where
  shape := constantMatrixShape
  presentation := fun _ _ => matrixPresentation m n
  contract := fun _ _ => DAF.Fabric.Presentation.Hom.id _
  contract_id := by intros; rfl
  contract_comp := by
    intros
    apply DAF.Fabric.Presentation.Hom.ext <;> rfl

/-- Pointwise Boolean negation as a coherent reaction of the constant fabric. -/
def notReaction (m n : Nat) :
    DAF.Fabric.Reaction (matrixFabric m n) (matrixFabric m n) where
  shapeMap := 𝟙 (matrixFabric m n).shape
  mapCell := fun x => x
  mapCell_eq := by intros; rfl
  mapCell_natural := by intros; rfl
  cellMap := fun _ => notContract m n
  contract_natural := by
    intros
    apply DAF.Fabric.Presentation.Hom.ext <;> rfl

end BitMatrix.Adapters.Fabric
