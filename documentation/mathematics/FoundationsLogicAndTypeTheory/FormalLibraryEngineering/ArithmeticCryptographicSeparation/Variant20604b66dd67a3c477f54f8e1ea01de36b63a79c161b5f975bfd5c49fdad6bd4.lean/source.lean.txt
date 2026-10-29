import Mathematics.Resolution.CryptographicCouplingBridge
import Mathematics.Resolution.CryptographicCouplingFrontier
import Mathematics.Resolution.EffectivePresentation

/-!
# Arithmetic and cryptographic conclusions remain separate

Analytic trace-and-purity arguments prove discrepancy upper bounds.
Adversary certificates and reductions prove model-specific work lower bounds.
Neither conclusion is a constructor for the other.
-/

namespace Mathematics.Resolution

/-- A proof-bearing analytic upper bound. -/
structure AnalyticDiscrepancyBound
    (Scale : Type*) (discrepancy majorant : Scale → ℝ) where
  sound : ∀ scale, |discrepancy scale| ≤ majorant scale

/-- A proof-bearing lower bound in one declared computational model. -/
structure CryptographicWorkBound
    (Attack : Type*) (successful : Attack → Prop) (work : Attack → Nat) where
  lowerBound : Nat
  sound : ∀ attack, successful attack → lowerBound ≤ work attack

/-- The two conclusions are retained as independent certificate channels. -/
structure SeparatedSquareRootConclusions
    (Scale Attack : Type*)
    (discrepancy majorant : Scale → ℝ)
    (successful : Attack → Prop)
    (work : Attack → Nat) where
  analytic : AnalyticDiscrepancyBound Scale discrepancy majorant
  cryptographic : CryptographicWorkBound Attack successful work

/--
The precise false ontological claim says that inverse cost factors through the
ordinary automorphism obtained after resource erasure.
-/
def OntologicalHardnessClaim : Prop :=
  CostedEquiv.InverseCostFactorsThroughErasure Unit

theorem ontologicalHardnessClaim_false :
    ¬ OntologicalHardnessClaim :=
  CostedEquiv.inverseCost_does_not_factor_through_erasure Unit

/-- The false topological mechanism is refuted by an actual proof. -/
def ontologicalHardnessVerdict :
    CryptographicCouplingVerdict OntologicalHardnessClaim :=
  .refuted ontologicalHardnessClaim_false

@[simp]
theorem ontologicalHardnessVerdict_is_refuted :
    ontologicalHardnessVerdict.IsRefuted :=
  trivial

@[simp]
theorem ontologicalHardnessVerdict_not_certified :
    ¬ ontologicalHardnessVerdict.IsCertified :=
  id

/--
The stronger arithmetic-to-cryptographic claim is not refuted merely because
the ontological shortcut fails.  Its authoritative conservative status is the
three macro-unknown frontier.  The source, kernel, locality, naturality, and
reduction nodes remain machine-readable internal refinements of those macros.
-/
def arithmeticCryptographicCouplingVerdict
    (Claim : Prop) :
    ArithmeticSecurityMacroVerdict Claim :=
  terminalArithmeticSecurityVerdict Claim

@[simp]
theorem arithmeticCryptographicCouplingVerdict_unknowns
    (Claim : Prop) :
    (arithmeticCryptographicCouplingVerdict Claim).unknowns =
      terminalArithmeticSecurityMacros :=
  rfl

@[simp]
theorem arithmeticCryptographicCouplingVerdict_not_certified
    (Claim : Prop) :
    ¬ (arithmeticCryptographicCouplingVerdict Claim).IsCertified :=
  id

@[simp]
theorem arithmeticCryptographicCouplingVerdict_not_refuted
    (Claim : Prop) :
    ¬ (arithmeticCryptographicCouplingVerdict Claim).IsRefuted :=
  id

end Mathematics.Resolution
