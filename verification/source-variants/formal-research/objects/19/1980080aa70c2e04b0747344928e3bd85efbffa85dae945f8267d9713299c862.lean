import Folder.GrandChallenge.Complexity.SpheroidalShellPivot

/-!
# Folder.GrandChallenge.Complexity.InductionScalingControl

Radiation role: research-boundary
BinaryMatrix spine: This module records induction-scaling controls for glitched BinaryMatrixStream smoothing.
Ontology: complexity_induction_scaling_control
Pivot role: complexity
Zero typology: smoothing-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace Complexity

/--
Induction scaling data for a glitched traversal.

The scaling contract is the quantitative part of the smoothing route: either
glitch complexity decreases or a polynomial move bound is preserved.
-/
structure InductionScalingControl where
  glitch : GlitchedTraversal
  complexityMeasureLabel : String
  decreasesGlitchMeasure : Prop
  decreasesGlitchMeasure_certified : decreasesGlitchMeasure
  polynomialMoveBound : Prop
  polynomialMoveBound_certified : polynomialMoveBound
  sourceLabel : String

theorem induction_scaling_decreases_glitch_if_supplied
    (S : InductionScalingControl) :
    S.decreasesGlitchMeasure :=
  S.decreasesGlitchMeasure_certified

theorem induction_scaling_polynomial_move_bound_if_supplied
    (S : InductionScalingControl) :
    S.polynomialMoveBound :=
  S.polynomialMoveBound_certified

end Complexity
end GrandChallenge
end Folder
