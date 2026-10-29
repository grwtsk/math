import Folder.Analysis.Cubic

/-!
# Folder.Analysis.CubicIntegration

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: analysis.cubic_integration
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Analysis

namespace Cubic

noncomputable def integral (p : Cubic) (lo hi : ℝ) : ℝ :=
  p.antiderivativeEval hi - p.antiderivativeEval lo

@[simp]
theorem integral_same (p : Cubic) (x : ℝ) :
    p.integral x x = 0 := by
  simp [integral]

theorem integral_add_interval
    (p : Cubic) (a b c : ℝ) :
    p.integral a b + p.integral b c = p.integral a c := by
  unfold integral
  ring

end Cubic

end Analysis
end Folder
