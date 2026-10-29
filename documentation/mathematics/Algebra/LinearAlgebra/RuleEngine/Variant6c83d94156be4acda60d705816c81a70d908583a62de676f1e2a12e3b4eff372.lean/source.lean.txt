import Folder.Archive.IndexSpinRef
import Folder.Archive.PresentationRule
import Folder.Carrier.BinaryMatrixStream

/-!
# Folder.Archive.RuleEngine

Radiation role: archive-rule-engine
BinaryMatrix spine: This module applies presentation rules after index-spin atom realization to materialize BinaryMatrix layers.
Ontology: archive.rule_engine
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/

namespace Folder
namespace Archive

inductive BuiltinRuleId where
  | copy
  | identityPresentation
  | fixedpoint
deriving DecidableEq, Repr

structure RuleEngine where
  RuleId : Type
  decEqRuleId : DecidableEq RuleId
  resolve : RuleId → Option PresentationRule
  copyId : RuleId
  copy_resolves : resolve copyId = some copyRule

def copyRuleEngine : RuleEngine where
  RuleId := Unit
  decEqRuleId := inferInstance
  resolve := fun _ => some copyRule
  copyId := ()
  copy_resolves := rfl

structure LayerRecipe (A : MatrixAction) (E : RuleEngine) where
  ref : IndexSpinRef A
  rule : E.RuleId

def realizeLayerRecipe?
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary)
    (r : LayerRecipe A E) :
    Option Carrier.BinaryMatrix :=
  match realizeIndexSpin? A D r.ref, E.resolve r.rule with
  | some M, some R => some (R.apply M)
  | _, _ => none

def realizeLayerRecipeAsStep?
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary)
    (r : LayerRecipe A E)
    (input : Carrier.BinaryMatrix) :
    Option Carrier.BinaryMatrixStream.MatrixProofStep :=
  match realizeLayerRecipe? A E D r with
  | none => none
  | some output =>
      some
        { name := "realizeLayerRecipe"
          input := input
          output := output
          transition := fun _ => output
          realizes_transition := rfl }

theorem realize_copy_recipe
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary)
    (r : IndexSpinRef A)
    (M : Carrier.BinaryMatrix)
    (hget : realizeIndexSpin? A D r = some M) :
    realizeLayerRecipe? A E D { ref := r, rule := E.copyId } = some M := by
  simp [realizeLayerRecipe?, hget, E.copy_resolves, copyRule]

theorem copyRuleEngine_realize
    (D : MatrixAtomDictionary)
    (r : IndexSpinRef copyAction)
    (M : Carrier.BinaryMatrix)
    (hget : realizeIndexSpin? copyAction D r = some M) :
    realizeLayerRecipe? copyAction copyRuleEngine D
      { ref := r, rule := copyRuleEngine.copyId } = some M := by
  exact realize_copy_recipe copyAction copyRuleEngine D r M hget

end Archive
end Folder
