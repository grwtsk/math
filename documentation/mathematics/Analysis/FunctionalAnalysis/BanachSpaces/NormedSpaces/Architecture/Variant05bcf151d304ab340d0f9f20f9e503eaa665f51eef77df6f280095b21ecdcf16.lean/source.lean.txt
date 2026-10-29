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
    CertifiedLayer stateSpace.State A B
      transportAlgebra diffuser transport
  prismaticAuthority :
    PrismaticAuthority Prism FormalScheme ArithmeticComplex
  finiteModel : FiniteCochainModel (K := K) (C := C)
  arithmeticOperator :
    ArithmeticOperator finiteModel.finiteComplex
  residueChannel :
    ResidueChannel InteriorClass SupportedClass Residue
  classOf : stateSpace.State → InteriorClass
  residueDecision :
    ∀ state,
      ResidueDecision (residueChannel.residue (classOf state))
  interiorStep : stateSpace.State → stateSpace.State
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
    architecture.interiorStep
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
    ∀ state,
      (∃ accepted,
        architecture.certifiedLayer.step state = .accepted accepted) ∨
      architecture.certifiedLayer.step state = .reject
  spectralStability :
    ∀ x y,
      architecture.diffuser.graphNorm
          (architecture.certifiedLayer.analytic.candidate x -
            architecture.certifiedLayer.analytic.candidate y) ≤
        architecture.certifiedLayer.analytic.stabilityFactor *
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
  exactStatePreservation state :=
    architecture.certifiedLayer.exact_state_preservation state
  spectralStability x y :=
    architecture.certifiedLayer.analytic.spectral_stability x y
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
