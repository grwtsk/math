import Folder.Boolean.NAND

/-!
# Folder.Boolean.Completeness

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.completeness
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Boolean

def compileToNand : BoolExpr → NandExpr
  | .var n => .var n
  | .tru => nandTrue
  | .fls => nandFalse
  | .not e => nandNot (compileToNand e)
  | .and a b => nandAnd (compileToNand a) (compileToNand b)
  | .or a b => nandOr (compileToNand a) (compileToNand b)
  | .xor a b => nandXor (compileToNand a) (compileToNand b)

theorem compileToNand_correct
    (e : BoolExpr)
    (ρ : Env) :
    (compileToNand e).eval ρ = e.eval ρ := by
  induction e with
  | var n =>
      rfl
  | tru =>
      simp [compileToNand]
  | fls =>
      simp [compileToNand]
  | not e ih =>
      simp [compileToNand, ih]
  | and a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | or a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | xor a b iha ihb =>
      simp [compileToNand, iha, ihb]

end Boolean
end Folder
