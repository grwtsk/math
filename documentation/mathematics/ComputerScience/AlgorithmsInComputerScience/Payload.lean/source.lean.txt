/-!
# Number payloads

The `Number` layer is the arithmetic semantics layer between finite Boolean
computation and analytic number theory.

A `Number.ArithmeticPayload` is finite arithmetic data: Möbius weights,
valuation support, determinant coefficients, and trace data.  It is no longer a
Boolean object, but it is still finite.  Therefore it still does not own
analytic convergence, analytic continuation, infinite Euler products, zero
locations, or trace formulas.

This is the key architectural correction:

  Boolean shadows are interpreted as finite arithmetic payloads first.
  Analytic number-theoretic authority is a separate later layer.
-/

namespace Number

/-- Reducer-facing finite arithmetic payload. -/
structure ArithmeticPayload where
  mobiusWeight : Int
  valuationSupport : List Nat
  hasPrimePowerDependence : Bool
  determinantCoeffs : List Int
  traceData : List Int
  finiteSound : Prop
  finiteSoundProof : finiteSound

theorem arithmetic_payload_sound
    (P : ArithmeticPayload) :
    P.finiteSound :=
  P.finiteSoundProof

/-- A finite arithmetic payload does not own analytic authority. -/
def ArithmeticPayloadOwnsAnalyticAuthority
    (_P : ArithmeticPayload) : Prop :=
  False

/-- A finite arithmetic payload does not own analytic continuation. -/
def ArithmeticPayloadOwnsAnalyticContinuation
    (_P : ArithmeticPayload) : Prop :=
  False

/-- A finite arithmetic payload does not own a global infinite Euler product. -/
def ArithmeticPayloadOwnsInfiniteEulerProduct
    (_P : ArithmeticPayload) : Prop :=
  False

theorem arithmetic_payload_not_analytic_authority
    (P : ArithmeticPayload) :
    ¬ ArithmeticPayloadOwnsAnalyticAuthority P := by
  intro h
  exact h

theorem arithmetic_payload_not_analytic_continuation
    (P : ArithmeticPayload) :
    ¬ ArithmeticPayloadOwnsAnalyticContinuation P := by
  intro h
  exact h

theorem arithmetic_payload_not_infinite_euler_product
    (P : ArithmeticPayload) :
    ¬ ArithmeticPayloadOwnsInfiniteEulerProduct P := by
  intro h
  exact h

/--
Boundary summary for finite arithmetic payloads.

The payload is a valid finite arithmetic object, but it does not cross analytic
number-theoretic authority boundaries.
-/
theorem arithmetic_payload_boundary_summary
    (P : ArithmeticPayload) :
    P.finiteSound ∧
      ¬ ArithmeticPayloadOwnsAnalyticAuthority P ∧
      ¬ ArithmeticPayloadOwnsAnalyticContinuation P ∧
      ¬ ArithmeticPayloadOwnsInfiniteEulerProduct P :=
  ⟨P.finiteSoundProof,
    arithmetic_payload_not_analytic_authority P,
    arithmetic_payload_not_analytic_continuation P,
    arithmetic_payload_not_infinite_euler_product P⟩

end Number
