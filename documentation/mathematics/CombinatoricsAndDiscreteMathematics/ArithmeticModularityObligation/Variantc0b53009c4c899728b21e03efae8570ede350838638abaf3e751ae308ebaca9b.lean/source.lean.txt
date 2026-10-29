import Mathlib.Tactic.DeriveFintype
import Mathematics.Resolution.Conservative

/-!
# Arithmetic--modularity unknown-obligation ledger

Every unresolved premise named by the two supplied specifications has its own
constructor.  Missing evidence remains `unknown`; it is never represented by
`False`, rejection, zero, or an absent bit.
-/

namespace Mathematics.Resolution

/-- Stable names for all currently exposed arithmetic--modularity obligations. -/
inductive ArithmeticModularityObligation
  | rhetoricalSemantics
  | cubeBijection
  | cubeDimension
  | banachRealization
  | permutationRepresentation
  | semanticAutomorphisms
  | ontologyConnectivity
  | cycleOrbitReduction
  | functionalDuality
  | functionalFitMetric
  | functionalFitOptimality
  | functionalEquationDefect
  | pseudospectralStability
  | bitfieldFormat
  | bitfieldRange
  | bitfieldUpperBound
  | quantizationStability
  | structuralFunctionalError
  | localErrorAggregation
  | resolutionSchedule
  | bitfieldSquareRootBudget
  | equationDomain
  | nullstellensatz
  | schemeSemantics
  | geometricFamily
  | cohomologicalEligibility
  | cubeCoding
  | cubeCodingEquivariance
  | automorphismAction
  | automorphismPresentation
  | transportFunctor
  | holonomy
  | holonomyGenerators
  | cycleConsistency
  | galoisAction
  | galoisCocycle
  | descentCocycle
  | effectiveDescent
  | descentCompatibility
  | yonedaProfile
  | yonedaCompleteness
  | arithmeticEnhancement
  | heckeAction
  | heckeEigenstructure
  | structuralCoupling
  | projectorOrigin
  | arithmeticEssentiality
  | nonfactorization
  | automorphy
  | localGlobalCompatibility
  | scaleAndNorm
  | discrepancyIdentification
  | invariantProjection
  | invariantBias
  | traceIdentity
  | traceRegularization
  | traceRemainder
  | tracePurityBridge
  | spectralHalfPlane
  | weightScaleNormalization
  | exceptionalSpectrum
  | spectralMultiplicity
  | spectralConditioning
  | jordanOrder
  | logarithmicMechanism
  | uniformConstants
  | smallScales
  | squareRootConclusion
  deriving DecidableEq, Repr, Fintype

/-- Intrinsic proof stages; the stage is evidence organization, not authority. -/
inductive ArithmeticModularityStage
  | ontology
  | bitfield
  | polynomialGeometry
  | symmetryHolonomy
  | descent
  | yoneda
  | arithmetic
  | discrepancyTrace
  | spectral
  | uniformClosure
  deriving DecidableEq, Repr

/-- The stable stage containing each named obligation. -/
def ArithmeticModularityObligation.stage :
    ArithmeticModularityObligation → ArithmeticModularityStage
  | .rhetoricalSemantics
  | .cubeBijection
  | .cubeDimension
  | .banachRealization
  | .permutationRepresentation
  | .semanticAutomorphisms
  | .ontologyConnectivity
  | .cycleOrbitReduction
  | .functionalDuality
  | .functionalFitMetric
  | .functionalFitOptimality
  | .functionalEquationDefect
  | .pseudospectralStability => .ontology
  | .bitfieldFormat
  | .bitfieldRange
  | .bitfieldUpperBound
  | .quantizationStability
  | .structuralFunctionalError
  | .localErrorAggregation
  | .resolutionSchedule
  | .bitfieldSquareRootBudget => .bitfield
  | .equationDomain
  | .nullstellensatz
  | .schemeSemantics
  | .geometricFamily
  | .cohomologicalEligibility
  | .cubeCoding
  | .cubeCodingEquivariance => .polynomialGeometry
  | .automorphismAction
  | .automorphismPresentation
  | .transportFunctor
  | .holonomy
  | .holonomyGenerators
  | .cycleConsistency => .symmetryHolonomy
  | .galoisAction
  | .galoisCocycle
  | .descentCocycle
  | .effectiveDescent
  | .descentCompatibility => .descent
  | .yonedaProfile
  | .yonedaCompleteness => .yoneda
  | .arithmeticEnhancement
  | .heckeAction
  | .heckeEigenstructure
  | .structuralCoupling
  | .projectorOrigin
  | .arithmeticEssentiality
  | .nonfactorization
  | .automorphy
  | .localGlobalCompatibility => .arithmetic
  | .scaleAndNorm
  | .discrepancyIdentification
  | .invariantProjection
  | .invariantBias
  | .traceIdentity
  | .traceRegularization
  | .traceRemainder => .discrepancyTrace
  | .tracePurityBridge
  | .spectralHalfPlane
  | .weightScaleNormalization
  | .exceptionalSpectrum
  | .spectralMultiplicity
  | .spectralConditioning
  | .jordanOrder
  | .logarithmicMechanism => .spectral
  | .uniformConstants
  | .smallScales
  | .squareRootConclusion => .uniformClosure

/--
The final outcome keeps proof, refutation, and named unknowns disjoint.  An
unknown result must expose at least one concrete remaining obligation.
-/
inductive CertificateConservativeVerdict (Claim : Prop)
  | certified (proof : Claim)
  | refuted (proof : ¬ Claim)
  | unknown
      (obligations : Finset ArithmeticModularityObligation)
      (nonempty : obligations.Nonempty)

namespace CertificateConservativeVerdict

variable {Claim : Prop}

/-- One missing proof creates a named unknown, not a refutation. -/
def ofMissing
    (obligation : ArithmeticModularityObligation) :
    CertificateConservativeVerdict Claim :=
  .unknown {obligation} (by simp)

/-- Predicate selecting only the certified constructor. -/
def IsCertified : CertificateConservativeVerdict Claim → Prop
  | .certified _ => True
  | .refuted _ => False
  | .unknown _ _ => False

/-- Predicate selecting only the explicitly refuted constructor. -/
def IsRefuted : CertificateConservativeVerdict Claim → Prop
  | .certified _ => False
  | .refuted _ => True
  | .unknown _ _ => False

/-- Certified status exposes an actual proof of the claim. -/
theorem certified_sound
    (verdict : CertificateConservativeVerdict Claim)
    (certified : verdict.IsCertified) :
    Claim := by
  cases verdict with
  | certified proof => exact proof
  | refuted _ => exact False.elim certified
  | unknown _ _ => exact False.elim certified

/-- Refuted status exposes an actual proof of the negation. -/
theorem refuted_sound
    (verdict : CertificateConservativeVerdict Claim)
    (refuted : verdict.IsRefuted) :
    ¬ Claim := by
  cases verdict with
  | certified _ => exact False.elim refuted
  | refuted proof => exact proof
  | unknown _ _ => exact False.elim refuted

/-- Extract the exact named frontier only from the unknown constructor. -/
def unknowns :
    CertificateConservativeVerdict Claim →
      Finset ArithmeticModularityObligation
  | .certified _ => ∅
  | .refuted _ => ∅
  | .unknown obligations _ => obligations

@[simp]
theorem not_certified_ofMissing
    (obligation : ArithmeticModularityObligation) :
    ¬ (ofMissing (Claim := Claim) obligation).IsCertified :=
  id

@[simp]
theorem not_refuted_ofMissing
    (obligation : ArithmeticModularityObligation) :
    ¬ (ofMissing (Claim := Claim) obligation).IsRefuted :=
  id

@[simp]
theorem unknowns_ofMissing
    (obligation : ArithmeticModularityObligation) :
    (ofMissing (Claim := Claim) obligation).unknowns = {obligation} :=
  rfl

end CertificateConservativeVerdict

end Mathematics.Resolution
