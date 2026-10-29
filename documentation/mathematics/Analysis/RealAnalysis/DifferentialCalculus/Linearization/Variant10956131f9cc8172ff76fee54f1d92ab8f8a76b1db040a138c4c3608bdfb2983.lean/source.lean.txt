import Mathematics.Operational.Stability
import Mathlib.Analysis.Calculus.FDeriv.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

/-!
# Fixed-point linearization certificates

A spectral operator is relevant to a nonlinear update only after it is proved
to be that update's derivative at the named exact fixed point.  Hilbert
spectral conclusions require a second commuting-square certificate.
-/

namespace Mathematics.Operational

universe u v

/-- Fréchet derivative and an explicit local quadratic remainder estimate. -/
structure LinearizationCertificate
    {State : Type u}
    [NormedAddCommGroup State]
    [NormedSpace ℂ State]
    (operator : VersionedOperator State)
    (fixedPoint : CertifiedFixedPoint operator) where
  derivative : State →L[ℂ] State
  hasFDerivAt :
    HasFDerivAt operator.rawMap derivative
      (fixedPoint.point : State)
  radius : ℝ
  radius_positive : 0 < radius
  remainderConstant : ℝ
  remainderConstant_nonnegative :
    0 ≤ remainderConstant
  quadraticRemainder :
    ∀ displacement : State,
      ‖displacement‖ ≤ radius →
      ‖operator.rawMap
            ((fixedPoint.point : State) + displacement) -
          (fixedPoint.point : State) -
          derivative displacement‖ ≤
        remainderConstant * ‖displacement‖ ^ 2

/--
The Hilbert derivative represents the Banach derivative only through this
exact intertwining square.
-/
structure LinearizationIntertwining
    {BanachState : Type u}
    {HilbertState : Type v}
    [NormedAddCommGroup BanachState]
    [NormedSpace ℂ BanachState]
    [NormedAddCommGroup HilbertState]
    [NormedSpace ℂ HilbertState]
    (realization : BanachState →L[ℂ] HilbertState)
    (banachDerivative : BanachState →L[ℂ] BanachState) where
  hilbertDerivative :
    HilbertState →L[ℂ] HilbertState
  intertwines :
    hilbertDerivative.comp realization =
      realization.comp banachDerivative

namespace LinearizationIntertwining

variable
    {BanachState : Type u}
    {HilbertState : Type v}
    [NormedAddCommGroup BanachState]
    [NormedSpace ℂ BanachState]
    [NormedAddCommGroup HilbertState]
    [NormedSpace ℂ HilbertState]
    {realization : BanachState →L[ℂ] HilbertState}
    {banachDerivative : BanachState →L[ℂ] BanachState}

/-- Pointwise form of the exact derivative commuting square. -/
theorem apply
    (certificate :
      LinearizationIntertwining realization banachDerivative)
    (displacement : BanachState) :
    certificate.hilbertDerivative (realization displacement) =
      realization (banachDerivative displacement) := by
  simpa using
    congrArg
      (fun map ↦ map displacement)
      certificate.intertwines

end LinearizationIntertwining

/--
Finite-dimensional Hilbert Lyapunov-operator certificate.  The exact
quadratic inequality is proof-bearing; a floating-point eigenvalue list
cannot fill this field.
-/
structure FiniteLyapunovOperatorCertificate
    (HilbertState : Type u)
    [NormedAddCommGroup HilbertState]
    [InnerProductSpace ℂ HilbertState]
    [FiniteDimensional ℂ HilbertState] where
  derivative :
    HilbertState →L[ℂ] HilbertState
  energyOperator :
    HilbertState →L[ℂ] HilbertState
  energyOperator_selfAdjoint :
    ∀ left right,
      inner ℂ (energyOperator left) right =
        inner ℂ left (energyOperator right)
  coerciveConstant : ℝ
  coerciveConstant_positive : 0 < coerciveConstant
  energy_coercive :
    ∀ state,
      coerciveConstant * ‖state‖ ^ 2 ≤
        (inner ℂ state (energyOperator state)).re
  decrease : ℝ
  decrease_positive : 0 < decrease
  operator_decreases_energy :
    ∀ state,
      (inner ℂ (derivative state)
          (energyOperator (derivative state))).re ≤
        (inner ℂ state (energyOperator state)).re -
          decrease * ‖state‖ ^ 2
  coordinateCertificate : ObjectAddress

namespace FiniteLyapunovOperatorCertificate

/-- Rearranged exact energy decrease, useful to downstream stability proofs. -/
theorem decreased_energy_with_margin
    {HilbertState : Type u}
    [NormedAddCommGroup HilbertState]
    [InnerProductSpace ℂ HilbertState]
    [FiniteDimensional ℂ HilbertState]
    (certificate :
      FiniteLyapunovOperatorCertificate HilbertState)
    (state : HilbertState) :
    (inner ℂ (certificate.derivative state)
        (certificate.energyOperator
          (certificate.derivative state))).re +
        certificate.decrease * ‖state‖ ^ 2 ≤
      (inner ℂ state
        (certificate.energyOperator state)).re := by
  linarith [certificate.operator_decreases_energy state]

end FiniteLyapunovOperatorCertificate

/--
Exact or interval payloads remain data until a proved checker accepts them.
The checker theorem, not the payload, yields the proposition.
-/
structure VerifiedNumericalChecker
    (Payload : Type u)
    (Claim : Payload → Prop) where
  check : Payload → Bool
  sound : ∀ payload, check payload = true → Claim payload

namespace VerifiedNumericalChecker

theorem proves_after_acceptance
    {Payload : Type u}
    {Claim : Payload → Prop}
    (checker : VerifiedNumericalChecker Payload Claim)
    (payload : Payload)
    (accepted : checker.check payload = true) :
    Claim payload :=
  checker.sound payload accepted

end VerifiedNumericalChecker

end Mathematics.Operational
