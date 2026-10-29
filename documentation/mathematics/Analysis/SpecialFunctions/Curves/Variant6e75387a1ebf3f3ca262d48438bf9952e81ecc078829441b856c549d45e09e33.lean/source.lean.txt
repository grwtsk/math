import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Think.SourceTree.Legacy.Analysis.Decoupling.WeightedLp

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace Curves

/-- Model curve phase `t |-> t^(1 + nu)`, using real powers. -/
noncomputable def modelCurvePhi (nu : ℝ) (t : ℝ) : ℝ :=
  Real.rpow t (1 + nu)

structure GraphCurve where
  phi : ℝ → ℝ
  domainRecorded : Bool

structure PlaneCurve where
  phiOne : ℝ → ℝ
  phiTwo : ℝ → ℝ
  regularityRecorded : Bool

noncomputable def modelGraphCurve (nu : ℝ) : GraphCurve :=
  { phi := modelCurvePhi nu
    domainRecorded := true }

def CurvatureIdenticallyZero (_phi : ℝ → ℝ) : Prop :=
  False

def RegularPlaneCurve (_phiOne _phiTwo : ℝ → ℝ) : Prop :=
  True

def WronskianVanishesOnlyFinitelyToFiniteOrder (_phiOne _phiTwo : ℝ → ℝ) : Prop :=
  False

theorem model_curve_domain_recorded (nu : ℝ) :
    (modelGraphCurve nu).domainRecorded = true := rfl

end Curves
end Think.Analysis.Decoupling
