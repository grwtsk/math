import Mathematics.NeuralDiffusion.Decoder

/-!
# The theorem-complete neural diffusion architecture

This module assembles the exact state, analytic, arithmetic, and residue
components.  The completion theorem derives only consequences justified by
their typed certificates.  Decoder completeness remains a separate obligation.
-/

namespace Mathematics.NeuralDiffusion

universe u

noncomputable section

/--
An interior transition of the authoritative channel is indexed by its source
and carries the equation proving that the exact state did not change.

Analytic or learned relative state may evolve elsewhere; this record cannot
rename an arbitrary target as the exact continuation of `source`.
-/
structure ExactInteriorTransition (State : Type u) (source : State) where
  target : State
  target_eq_source : target = source

namespace ExactInteriorTransition

/-- The canonical unchanged exact-state transition. -/
def unchanged {State : Type u} (source : State) :
    ExactInteriorTransition State source where
  target := source
  target_eq_source := rfl

end ExactInteriorTransition

/--
A neural layer may compute freely in its analytic carrier, but an accepted
result is authoritative here only together with a proof that it is the exact
source state.  The fixed predicate is equality; it is not supplied by a
callback and cannot be weakened to an arbitrary proposition.
-/
structure SourceFixedCertifiedLayer
    (State : Type u) (A : Type u) (B : Type u)
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    (algebra : ConvolutionInvolution A)
    (diffuser : LinearDiffuser B)
    (transport : CompatibleTransport A B algebra diffuser) where
  layer : CertifiedLayer State A B algebra diffuser transport
  accepted_eq_source :
    ∀ source accepted,
      layer.step source = .accepted accepted →
        accepted = source

namespace SourceFixedCertifiedLayer

variable
    {State A B : Type u}
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    {algebra : ConvolutionInvolution A}
    {diffuser : LinearDiffuser B}
    {transport : CompatibleTransport A B algebra diffuser}

/-- Evaluate the analytic layer; authority is supplied only by
`accepted_eq_source`. -/
def step
    (layer :
      SourceFixedCertifiedLayer State A B algebra diffuser transport)
    (source : State) :
    CertificationResult State :=
  layer.layer.step source

/-- Every accepted exact-channel result is propositionally the source. -/
theorem accepted_state_is_source
    (layer :
      SourceFixedCertifiedLayer State A B algebra diffuser transport)
    {source accepted : State}
    (acceptedResult : layer.step source = .accepted accepted) :
    accepted = source :=
  layer.accepted_eq_source source accepted acceptedResult

end SourceFixedCertifiedLayer

/-- The complete synchronized architecture, parameterized by imported carriers. -/
structure Architecture
    (Object Probe A B K C Prism FormalScheme ArithmeticComplex
      InteriorClass SupportedClass Residue Divisor Invariant Obligation :
      Type u)
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    [AddCommGroup K] [AddCommGroup C]
    [Zero Residue] where
  stateSpace : ExactStateSpace Object Probe
  transportAlgebra : ConvolutionInvolution A
  diffuser : LinearDiffuser B
  transport :
    CompatibleTransport A B transportAlgebra diffuser
  certifiedLayer :
    SourceFixedCertifiedLayer stateSpace.State A B
      transportAlgebra diffuser transport
  prismaticReference :
    PrismaticAuthorityReference Prism FormalScheme ArithmeticComplex
  finiteModel : FiniteCochainModel (K := K) (C := C)
  arithmeticOperator :
    ArithmeticOperator finiteModel.finiteComplex
  residueChannel :
    ResidueChannel InteriorClass SupportedClass Residue
  classOf : stateSpace.State → InteriorClass
  residueDecision :
    ∀ state,
      ResidueDecision (residueChannel.residue (classOf state))
  interiorStep :
    ∀ source,
      ExactInteriorTransition stateSpace.State source
  divisor : Divisor
  targetStratum : stateSpace.State → String
  preservedInvariants : stateSpace.State → List Invariant
  continuationObligation : stateSpace.State → Obligation

namespace Architecture

variable
    {Object Probe A B K C Prism FormalScheme ArithmeticComplex
      InteriorClass SupportedClass Residue Divisor Invariant Obligation :
      Type u}
    [NormedAddCommGroup B] [NormedSpace ℝ B]
    [AddCommGroup K] [AddCommGroup C]
    [Zero Residue]

def totalStep
    (architecture :
      Architecture Object Probe A B K C Prism FormalScheme
        ArithmeticComplex InteriorClass SupportedClass Residue
        Divisor Invariant Obligation)
    (state : architecture.stateSpace.State) :
    TotalStepResult architecture.stateSpace.State Divisor Residue
      Invariant Obligation :=
  NeuralDiffusion.totalStep
    architecture.residueChannel
    architecture.classOf
    architecture.residueDecision
    (fun source ↦ (architecture.interiorStep source).target)
    architecture.divisor
    architecture.targetStratum
    architecture.preservedInvariants
    architecture.continuationObligation
    state

/-- The guarantees established by the formal completion theorem. -/
structure CompletionGuarantees
    (architecture :
      Architecture Object Probe A B K C Prism FormalScheme
        ArithmeticComplex InteriorClass SupportedClass Residue
        Divisor Invariant Obligation) : Prop where
  exactStatePreservation :
    ∀ {source accepted},
      architecture.certifiedLayer.step source = .accepted accepted →
        accepted = source
  interiorExactStatePreservation :
    ∀ source,
      (architecture.interiorStep source).target = source
  candidateGraphFunctionalBound :
    ∀ x y,
      architecture.diffuser.graphNorm
          (architecture.certifiedLayer.layer.analytic.candidate x -
            architecture.certifiedLayer.layer.analytic.candidate y) ≤
        architecture.certifiedLayer.layer.analytic.stabilityFactor *
          architecture.diffuser.graphNorm (x - y)
  convolutionInvolutionConsistency :
    ∀ a,
      architecture.transport.paired
          (architecture.transportAlgebra.star a) =
        architecture.transport.paired a
  cohomologicalFunctoriality :
    ∀ {x : K},
      architecture.finiteModel.finiteComplex.IsCocycle x →
        architecture.finiteModel.finiteComplex.IsCocycle
          (architecture.arithmeticOperator.chainMap.map x)
  cohomologyClassRespect :
    ∀ {x y : K},
      architecture.finiteModel.finiteComplex.Cohomologous x y →
        architecture.finiteModel.finiteComplex.Cohomologous
          (architecture.arithmeticOperator.chainMap.map x)
          (architecture.arithmeticOperator.chainMap.map y)
  boundaryExactness :
    ∀ state,
      (architecture.residueDecision state).activation = true ↔
        architecture.residueChannel.residue
          (architecture.classOf state) ≠ 0
  surgeryFidelity :
    ∀ state request,
      architecture.totalStep state = .boundary request →
        request.residue ≠ 0

/--
Neural diffusion--prismatic reconstruction theorem.

Every conclusion is discharged from a fixed law already present in the
architecture.  In particular, the theorem does not promote evidence digests to
mathematical authority and does not infer any decoder-completeness property.
-/
theorem completion
    (architecture :
      Architecture Object Probe A B K C Prism FormalScheme
        ArithmeticComplex InteriorClass SupportedClass Residue
        Divisor Invariant Obligation) :
    CompletionGuarantees architecture where
  exactStatePreservation acceptedResult :=
    architecture.certifiedLayer.accepted_state_is_source acceptedResult
  interiorExactStatePreservation source :=
    (architecture.interiorStep source).target_eq_source
  candidateGraphFunctionalBound x y :=
    architecture.certifiedLayer.layer.analytic.candidate_graphFunctional_lipschitz x y
  convolutionInvolutionConsistency a :=
    architecture.transport.paired_star a
  cohomologicalFunctoriality hx :=
    architecture.arithmeticOperator.induces_on_cocycles hx
  cohomologyClassRespect hxy :=
    architecture.arithmeticOperator.respects_cohomology_classes hxy
  boundaryExactness state :=
    (architecture.residueDecision state).activation_eq_true_iff
  surgeryFidelity _state request _hboundary :=
    request.residueNonzero

end Architecture

end

end Mathematics.NeuralDiffusion
