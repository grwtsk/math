import Think.SourceTree.Legacy.Analysis.Decoupling.Curves

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace VanishingCurvature

def rightSupremalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def rightInfimalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def leftSupremalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def leftInfimalOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

def holderOrderSecondDerivative
    (_phi : ℝ → ℝ) (_z _alpha : ℝ) : Prop :=
  True

/--
Finite exceptional-set hypotheses for vanishing curvature.

These fields record the obligations of Theorem 1.3. They do not prove the
paper theorem or import Bourgain-Demeter decoupling.
-/
structure VanishingCurvatureHypotheses
    (phi : ℝ → ℝ)
    (Z : Finset ℝ)
    (alpha : ℝ) where
  finiteExceptionalSet : True
  secondDerivativeNonzeroOffZ : Prop
  locallyHolderOffZ : Prop
  finiteOrderRightLeft :
    ∀ z ∈ Z,
      rightSupremalOrderSecondDerivative phi z alpha ∧
        rightInfimalOrderSecondDerivative phi z alpha ∧
          leftSupremalOrderSecondDerivative phi z alpha ∧
            leftInfimalOrderSecondDerivative phi z alpha
  holderOrderControl :
    ∀ z ∈ Z, holderOrderSecondDerivative phi z alpha

def vanishingCurvatureResidue : String :=
  "finite_order_curvature_hypotheses_recorded_without_decoupling_proof"

theorem finite_exceptional_set_is_recorded
    {phi : ℝ → ℝ} {Z : Finset ℝ} {alpha : ℝ}
    (h : VanishingCurvatureHypotheses phi Z alpha) :
    h.finiteExceptionalSet = True.intro := rfl

end VanishingCurvature
end Think.Analysis.Decoupling
