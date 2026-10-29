import GRWTSK.NumberTheory.Zeta.ResponseBoundZeroConversions

/-! Concrete reciprocal-Laplace frequency model for the BMID research route.
The head/tail/residual are fixed formulas, rather than arbitrary fields that
can conceal the target as their head. No Bessel comparison is asserted.
The identification and tail are explicit contracts, discharged in
ConcreteIdentification and ConcreteTail. The signed head budget remains open.
Integrability is part of the identification contract; the integral's fallback
value cannot certify it.
-/
noncomputable section
open MeasureTheory Set
namespace EulerP04RH.ConcreteRightLine

/-- The literal finite-time return kernel at the declared right-line scale. -/
def timeKernel (c T τ : ℝ) : ℂ :=
  ∫ u : ℝ in Icc 0 T,
    Complex.exp (((2*c-1:ℝ)+τ*Complex.I)*(u:ℂ))

def density (c T t s : ℝ) : ℂ :=
  RightLine.pickupKernel c t * starRingEnd ℂ (RightLine.pickupKernel c s) *
    timeKernel c T (t-s)

def kernelEnergy (c T : ℝ) : ℝ :=
  ((2*Real.pi)^2)⁻¹ * (∫ t : ℝ, ∫ s : ℝ, density c T t s).re

def head (c H T : ℝ) : ℝ :=
  ((2*Real.pi)^2)⁻¹ *
    (∫ t : ℝ in Icc (-H) H, ∫ s : ℝ in Icc (-H) H, density c T t s).re

def tail (c H T : ℝ) : ℝ := kernelEnergy c T-head c H T

def Identification (c : ℝ) : Prop :=
  ∀ T : ℝ, 0 ≤ T →
    Integrable (fun pair : ℝ × ℝ => density c T pair.1 pair.2) ∧
      (∀ t : ℝ, Integrable (density c T t)) ∧
      Integrable (fun t : ℝ => ∫ s : ℝ, density c T t s) ∧
      kernelEnergy c T=PPNCP04.energy T

def TailBudget (c : ℝ) (height : ℝ → ℝ) : Prop :=
  PPNCP04.PolynomialBound (fun T => |tail c (height T) T|)

def SignedHeadResidueBudget (c : ℝ) (height : ℝ → ℝ) : Prop :=
  PPNCP04.PolynomialBound (fun T => head c (height T) T-PPNCP04.diagonal T)

/-- Source adapter only: arithmetic head and tail estimates are separate. -/
def toDecomposition (c : ℝ) (hc : 1 < c) (identified : Identification c) :
    ExactDecomposition where
  route := .reciprocalZeta
  rightLine := c
  rightLine_gt_one := hc
  head := head c
  tail := tail c
  residual := fun _ T => -PPNCP04.diagonal T
  sourceIdentity := by
    intro T H hT _hH
    have he := (identified T hT).2.2.2
    rw [tail,he,PPNCP04.energy_eq_diagonal_add_cross]
    ring

/-- Concrete fixed-kernel obligations close the literal target with signs retained. -/
theorem concrete_route_implies_literal_P04 {c : ℝ} (hc : 1 < c)
    (height : ℝ → ℝ) (heightValid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (identified : Identification c) (tailBound : TailBudget c height)
    (headResidueBound : SignedHeadResidueBudget c height) : PPNCP04.P04 := by
  apply assembly_implies_literal_P04 (toDecomposition c hc identified) height heightValid
  · exact tailBound
  · change PPNCP04.PolynomialBound (fun T => head c (height T) T + -PPNCP04.diagonal T)
    simpa only [SignedHeadResidueBudget,sub_eq_add_neg] using headResidueBound

theorem concrete_route_implies_literal_RH {c : ℝ} (hc : 1 < c)
    (height : ℝ → ℝ) (heightValid : ∀ T : ℝ, 0 ≤ T → 1 ≤ height T)
    (identified : Identification c) (tailBound : TailBudget c height)
    (headResidueBound : SignedHeadResidueBudget c height) : _root_.RiemannHypothesis :=
  LaplaceEnergy.literal_RH_of_P04
    (concrete_route_implies_literal_P04 hc height heightValid identified tailBound headResidueBound)

end EulerP04RH.ConcreteRightLine

#print axioms EulerP04RH.ConcreteRightLine.concrete_route_implies_literal_P04
#print axioms EulerP04RH.ConcreteRightLine.concrete_route_implies_literal_RH
