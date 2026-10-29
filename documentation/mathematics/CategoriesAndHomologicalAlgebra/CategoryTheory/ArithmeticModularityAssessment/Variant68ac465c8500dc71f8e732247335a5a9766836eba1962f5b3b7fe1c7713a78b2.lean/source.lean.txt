import Mathematics.Resolution.ArithmeticModularityObligation

/-!
# Research assessment for arithmetic--modularity obligations

This file records how an obligation may be approached.  Literature routes are
advice only: the assessment API deliberately contains no proof of a target
claim and cannot construct a certified verdict.
-/

namespace Mathematics.Resolution

/-- The least kind of additional evidence presently required. -/
inductive ResearchRequirement
  | specification
  | establishedTheorem
  | frontierHypothesis
  | newInvariant
  deriving DecidableEq, Repr

/-- Literature blocks named by the supplied research report. -/
inductive LiteratureNode
  | nullstellensatz
  | fpqcDescent
  | galoisCategory
  | yoneda
  | holonomy
  | properBaseChange
  | cohomologicalTrace
  | purity
  | selbergTrace
  | arthurTrace
  | tateThesis
  | connesTrace
  | localLanglands
  | localGlobalCompatibility
  | scholzeTorsion
  | perturbationTheory
  | ramanujanTemperedness
  deriving DecidableEq, Repr

/-- Nonauthoritative research routing metadata. -/
structure ArithmeticModularityAssessment where
  requirement : ResearchRequirement
  literature : List LiteratureNode

/-- Exhaustive assessment of the complete refined obligation vocabulary. -/
def ArithmeticModularityObligation.assessment :
    ArithmeticModularityObligation →
      ArithmeticModularityAssessment
  | .equationDomain
  | .schemeSemantics
  | .geometricFamily
  | .automorphismAction
  | .automorphismPresentation
  | .transportFunctor
  | .holonomyGenerators
  | .cycleConsistency
  | .galoisAction
  | .descentCocycle
  | .descentCompatibility
  | .arithmeticEnhancement
  | .scaleAndNorm
  | .discrepancyIdentification
  | .invariantProjection
  | .uniformConstants
  | .smallScales
  | .cubeDimension
  | .banachRealization
  | .semanticAutomorphisms
  | .functionalFitMetric
  | .bitfieldFormat
  | .bitfieldRange =>
      ⟨.specification, []⟩
  | .nullstellensatz =>
      ⟨.establishedTheorem, [.nullstellensatz]⟩
  | .cohomologicalEligibility =>
      ⟨.establishedTheorem,
        [.properBaseChange, .cohomologicalTrace, .purity]⟩
  | .permutationRepresentation =>
      ⟨.establishedTheorem, [.perturbationTheory]⟩
  | .holonomy =>
      ⟨.establishedTheorem, [.holonomy]⟩
  | .galoisCocycle =>
      ⟨.establishedTheorem, [.galoisCategory]⟩
  | .effectiveDescent =>
      ⟨.establishedTheorem, [.fpqcDescent, .galoisCategory]⟩
  | .yonedaProfile
  | .yonedaCompleteness =>
      ⟨.establishedTheorem, [.yoneda]⟩
  | .heckeAction
  | .heckeEigenstructure =>
      ⟨.establishedTheorem,
        [.localLanglands, .localGlobalCompatibility,
          .scholzeTorsion]⟩
  | .invariantBias =>
      ⟨.establishedTheorem, [.cohomologicalTrace]⟩
  | .traceIdentity =>
      ⟨.establishedTheorem,
        [.cohomologicalTrace, .selbergTrace, .arthurTrace]⟩
  | .traceRemainder =>
      ⟨.establishedTheorem,
        [.cohomologicalTrace, .selbergTrace, .arthurTrace]⟩
  | .tracePurityBridge
  | .weightScaleNormalization =>
      ⟨.establishedTheorem, [.cohomologicalTrace, .purity]⟩
  | .spectralMultiplicity =>
      ⟨.establishedTheorem, [.purity, .perturbationTheory]⟩
  | .spectralConditioning
  | .jordanOrder
  | .logarithmicMechanism =>
      ⟨.establishedTheorem, [.perturbationTheory]⟩
  | .functionalDuality =>
      ⟨.establishedTheorem, [.tateThesis, .connesTrace]⟩
  | .functionalEquationDefect =>
      ⟨.establishedTheorem,
        [.tateThesis, .connesTrace, .perturbationTheory]⟩
  | .pseudospectralStability
  | .bitfieldUpperBound
  | .localErrorAggregation =>
      ⟨.establishedTheorem, [.perturbationTheory]⟩
  | .automorphy
  | .localGlobalCompatibility =>
      ⟨.frontierHypothesis,
        [.localLanglands, .localGlobalCompatibility,
          .scholzeTorsion]⟩
  | .traceRegularization
  | .exceptionalSpectrum =>
      ⟨.frontierHypothesis, [.arthurTrace, .selbergTrace]⟩
  | .spectralHalfPlane =>
      ⟨.frontierHypothesis, [.purity, .ramanujanTemperedness]⟩
  | .quantizationStability
  | .structuralFunctionalError
  | .resolutionSchedule
  | .bitfieldSquareRootBudget
  | .squareRootConclusion =>
      ⟨.frontierHypothesis, [.perturbationTheory]⟩
  | .rhetoricalSemantics
  | .cubeBijection
  | .cubeCoding
  | .cubeCodingEquivariance
  | .ontologyConnectivity
  | .cycleOrbitReduction
  | .functionalFitOptimality
  | .structuralCoupling
  | .projectorOrigin
  | .arithmeticEssentiality
  | .nonfactorization =>
      ⟨.newInvariant, []⟩

/--
Research advice preserves the obligation as unknown.  Neither a literature
name nor an assessment class can certify or refute an arbitrary claim.
-/
def ArithmeticModularityObligation.advisoryVerdict
    (obligation : ArithmeticModularityObligation)
    (Claim : Prop) :
    CertificateConservativeVerdict Claim :=
  CertificateConservativeVerdict.ofMissing obligation

@[simp]
theorem advisoryVerdict_not_certified
    (obligation : ArithmeticModularityObligation)
    (Claim : Prop) :
    ¬ (obligation.advisoryVerdict Claim).IsCertified :=
  id

@[simp]
theorem advisoryVerdict_not_refuted
    (obligation : ArithmeticModularityObligation)
    (Claim : Prop) :
    ¬ (obligation.advisoryVerdict Claim).IsRefuted :=
  id

end Mathematics.Resolution
