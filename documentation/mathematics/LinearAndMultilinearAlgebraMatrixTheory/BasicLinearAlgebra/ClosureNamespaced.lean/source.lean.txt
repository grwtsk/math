-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SquareRootAssemblyCertificate.Variant72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SquareRootAssemblyCertificate.Variant72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/ConnesBitfield/Closure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.ConnesBitfield.Equivariance
import Mathematics.ConnesBitfield.OrbitSymmetry
import Mathematics.ConnesBitfield.CrossedProductOperator
import Mathematics.ConnesBitfield.MatrixFiberCrossedProduct
import Mathematics.ConnesBitfield.HilbertTransport
import Mathematics.ConnesBitfield.Cut
import Mathematics.ConnesBitfield.TraceBounds
import Mathematics.ConnesBitfield.TraceScale
import Mathematics.ConnesBitfield.TraceStability
import Mathematics.ConnesBitfield.Typicality
import Mathematics.ConnesBitfield.UnknownLedger
import Mathematics.MobiusOntology.SquareRootNorm

/-!
# Boundary-law, committed-realization, and family-limit closure

Boundary-law mode is deterministic and uses the canonical invariant trace.
Its square-root bound is derived from the exact trace decomposition rather
than stored as an assembly premise.
Concentration and typicality enter only through the committed-realization
extension.  Ensemble convergence enters only through the family-limit
extension.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SquareRootAssemblyCertificate.Variant72ed857faf10858cc1423bcd55680f3872f8a5b1a0c24c2b6b69cb79500b77ce

namespace Mathematics.ConnesBitfield

universe uScale uTest uSchedule uArithmetic uSemantic
universe uPlace uArithmeticLocal uBitfieldLocal

structure SquareRootAssemblyCertificate
    (Scale : Type uScale)
    (TestFunction : Type uTest) where
  mass : Scale → ℝ
  discrepancy :
    Scale → TestFunction → ℂ
  discrepancyNorm : Scale → ℝ
  testNorm : TestFunction → ℝ
  logarithmicOrder : Nat
  massAtLeastOne :
    ∀ scale, 1 ≤ mass scale
  testNormNonnegative :
    ∀ test, 0 ≤ testNorm test
  mainBiasConstant : ℝ
  traceConstant : ℝ
  regularizationConstant : ℝ
  bitfieldConstant : ℝ
  componentConstantsNonnegative :
    0 ≤ mainBiasConstant ∧
    0 ≤ traceConstant ∧
    0 ≤ regularizationConstant ∧
    0 ≤ bitfieldConstant
  discrepancyNormUpperBound :
    ∀ scale bound,
      0 ≤ bound →
      (∀ test,
        ‖discrepancy scale test‖ ≤
          bound * testNorm test) →
      discrepancyNorm scale ≤ bound

namespace SquareRootAssemblyCertificate

def totalConstant
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (certificate :
      SquareRootAssemblyCertificate Scale TestFunction) : ℝ :=
  certificate.mainBiasConstant +
    certificate.traceConstant +
    certificate.regularizationConstant +
    certificate.bitfieldConstant

theorem totalConstant_nonnegative
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (certificate :
      SquareRootAssemblyCertificate Scale TestFunction) :
    0 ≤ certificate.totalConstant := by
  rcases certificate.componentConstantsNonnegative with
    ⟨mainNonnegative, traceNonnegative,
      regularizationNonnegative, bitfieldNonnegative⟩
  exact
    add_nonneg
      (add_nonneg
        (add_nonneg
          mainNonnegative traceNonnegative)
        regularizationNonnegative)
      bitfieldNonnegative

def toSquareRootNormCertificate
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    (certificate :
      SquareRootAssemblyCertificate Scale TestFunction)
    (deterministicDiscrepancyBound :
      ∀ scale,
        certificate.discrepancyNorm scale ≤
          certificate.totalConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (certificate.mass scale)
              certificate.logarithmicOrder) :
    Mathematics.MobiusOntology.SquareRootNormCertificate Scale where
  mass := certificate.mass
  discrepancyNorm := certificate.discrepancyNorm
  logarithmicOrder := certificate.logarithmicOrder
  constant := certificate.totalConstant
  massAtLeastOne := certificate.massAtLeastOne
  constantNonnegative := certificate.totalConstant_nonnegative
  bound := deterministicDiscrepancyBound

end SquareRootAssemblyCertificate

theorem norm_add_four_le
    (first second third fourth : ℂ) :
    ‖first + second + third + fourth‖ ≤
      ‖first‖ + ‖second‖ + ‖third‖ + ‖fourth‖ := by
  calc
    ‖first + second + third + fourth‖ ≤
        ‖first + second + third‖ + ‖fourth‖ :=
      norm_add_le _ _
    _ ≤
        (‖first + second‖ + ‖third‖) +
          ‖fourth‖ :=
      add_le_add_right (norm_add_le _ _) _
    _ ≤
        ((‖first‖ + ‖second‖) + ‖third‖) +
          ‖fourth‖ :=
      add_le_add_right
        (add_le_add_right (norm_add_le _ _) _)
        _

/--
The deterministic boundary-law package.  No sampled realization occurs in
this structure.
-/
structure BoundaryLawSquareRootPackage
    (Scale : Type uScale)
    (TestFunction : Type uTest)
    (Schedule : Type uSchedule) where
  cut : SpectralClosureCut
  system : RandomBitfieldSystem
  crossedProduct :
    FiniteCrossedProductModel system
  lawCarrier : WassersteinLawCarrier system
  dynamics :
    ScheduleKernelFamily system lawCarrier Schedule
  equivariance :
    EquivariantScheduleKernelCertificate
      crossedProduct dynamics
  orbitReynolds :
    OrbitReynoldsCertificate crossedProduct
  invariantLawRealizesSystemLaw :
    lawCarrier.realize dynamics.invariantLaw =
      system.law
  spectral :
    BitfieldSpectralOperator system
  matrixFiberCrossedProduct :
    MatrixFiberCrossedProductModel
      crossedProduct spectral.dim
  matrixFiberCrossedProductRepresentation :
    MatrixFiberCrossedProductRepresentation
      matrixFiberCrossedProduct
  matrixFiberHilbertTransport :
    MatrixFiberHilbertTransportCertificate
      matrixFiberCrossedProductRepresentation
  crossedProductOperator :
    SelfAdjointCrossedProductOperator
      crossedProduct spectral.dim
  crossedProductOperatorElement :
    MatrixFiberCrossedProductElement
      system crossedProduct.Automorphism
        spectral.dim
  crossedProductOperatorRepresentation :
    matrixFiberCrossedProductRepresentation.represent
        crossedProductOperatorElement =
      crossedProductOperator.operator
  fiberCompression :
    Matrix
        (BitfieldHilbertIndex
          system spectral.dim)
        (BitfieldHilbertIndex
          system spectral.dim)
        ℂ →
      Bitfield system.bits →
        Matrix
          (Fin spectral.dim)
          (Fin spectral.dim)
          ℂ
  crossedProductOperatorFibers :
    ∀ state,
      fiberCompression
          crossedProductOperator.operator state =
        spectral.operator state
  crossedProductSemisimplicity :
    CrossedProductSemisimplicityCertificate
      crossedProductOperator
  operatorRealization :
    BitfieldOperatorRealization spectral
  operatorPurity :
    OperatorPurityCertificate spectral
  trace :
    ArithmeticBitfieldTraceCertificate
      spectral Scale TestFunction
  invariantProjectionTransportInvariant :
    ∀ automorphism,
      matrixFiberCrossedProduct.fiberAction.transport
          automorphism *
          trace.invariantProjection.projection *
          (matrixFiberCrossedProduct.fiberAction.transport
            automorphism)ᴴ =
        trace.invariantProjection.projection
  traceBoundToCut : Prop
  traceBoundToCutProof : traceBoundToCut
  traceCrossedProductElement :
    Scale → TestFunction →
      MatrixFiberCrossedProductElement
        system crossedProduct.Automorphism
          spectral.dim
  reducedTraceIsCanonicalCrossedProductTrace :
    ∀ scale test,
      trace.rawTraceTerm scale test =
        canonicalMatrixFiberCrossedProductTrace
          (traceCrossedProductElement scale test)
  spectralSize :
    UniformSpectralSizeCertificate
      spectral operatorPurity Scale
  traceScale :
    TraceScaleCertificate
      trace operatorPurity spectralSize
  traceBounds :
    TraceSquareRootBounds trace
  assembly :
    SquareRootAssemblyCertificate Scale TestFunction
  discrepancyMatchesTrace :
    assembly.discrepancy =
      trace.discrepancy
  massMatchesTraceScale :
    assembly.mass = traceScale.mass
  massMatchesTraceBounds :
    assembly.mass = traceBounds.mass
  massMatchesSpectralSize :
    assembly.mass = spectralSize.mass
  testNormMatchesTraceScale :
    assembly.testNorm = traceScale.testNorm
  testNormMatchesTraceBounds :
    assembly.testNorm = traceBounds.testNorm
  logarithmicOrderMatchesTraceScale :
    assembly.logarithmicOrder =
      traceScale.logarithmicOrder
  logarithmicOrderMatchesTraceBounds :
    assembly.logarithmicOrder =
      traceBounds.logarithmicOrder
  mainBiasConstantMatches :
    assembly.mainBiasConstant =
      traceBounds.mainBiasConstant
  traceConstantMatches :
    assembly.traceConstant =
      traceScale.traceConstant
  regularizationConstantMatches :
    assembly.regularizationConstant =
      traceBounds.regularizationConstant
  bitfieldConstantMatches :
    assembly.bitfieldConstant =
      traceBounds.bitfieldConstant

theorem BoundaryLawSquareRootPackage.deterministicDiscrepancyBound
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule) :
    ∀ scale,
      package.assembly.discrepancyNorm scale ≤
        package.assembly.totalConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (package.assembly.mass scale)
            package.assembly.logarithmicOrder := by
  intro scale
  have weightNonnegative :
      0 ≤
        Mathematics.MobiusOntology.squareRootWeight
          (package.assembly.mass scale)
          package.assembly.logarithmicOrder := by
    apply mul_nonneg
    · exact Real.sqrt_nonneg _
    · exact pow_nonneg
        (add_nonneg zero_le_one
          (Real.log_nonneg
            (package.assembly.massAtLeastOne scale)))
        _
  have boundNonnegative :
      0 ≤
        package.assembly.totalConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (package.assembly.mass scale)
            package.assembly.logarithmicOrder :=
    mul_nonneg
      package.assembly.totalConstant_nonnegative
      weightNonnegative
  apply package.assembly.discrepancyNormUpperBound
    scale
    (package.assembly.totalConstant *
      Mathematics.MobiusOntology.squareRootWeight
        (package.assembly.mass scale)
        package.assembly.logarithmicOrder)
    boundNonnegative
  intro test
  have mainBound :=
    package.traceBounds.mainTermBound scale test
  have traceBound :=
    package.traceScale.trace_scale_bound scale test
  have regularizationBound :=
    package.traceBounds.regularizationRemainderBound
      scale test
  have bitfieldBound :=
    package.traceBounds.bitfieldRemainderBound
      scale test
  rw [← package.massMatchesTraceBounds,
    ← package.testNormMatchesTraceBounds,
    ← package.logarithmicOrderMatchesTraceBounds,
    ← package.mainBiasConstantMatches] at mainBound
  rw [← package.massMatchesTraceScale,
    ← package.testNormMatchesTraceScale,
    ← package.logarithmicOrderMatchesTraceScale,
    ← package.traceConstantMatches] at traceBound
  rw [← package.massMatchesTraceBounds,
    ← package.testNormMatchesTraceBounds,
    ← package.logarithmicOrderMatchesTraceBounds,
    ← package.regularizationConstantMatches] at
      regularizationBound
  rw [← package.massMatchesTraceBounds,
    ← package.testNormMatchesTraceBounds,
    ← package.logarithmicOrderMatchesTraceBounds,
    ← package.bitfieldConstantMatches] at
      bitfieldBound
  calc
    ‖package.assembly.discrepancy scale test‖ =
        ‖package.trace.mainTerm scale test +
          package.trace.traceTerm scale test +
          package.trace.regularizationRemainder scale test +
          package.trace.bitfieldRemainder scale test‖ := by
      rw [package.discrepancyMatchesTrace,
        package.trace.traceIdentity]
    _ ≤
        ‖package.trace.mainTerm scale test‖ +
          ‖package.trace.traceTerm scale test‖ +
          ‖package.trace.regularizationRemainder
            scale test‖ +
          ‖package.trace.bitfieldRemainder scale test‖ :=
      norm_add_four_le _ _ _ _
    _ ≤
        package.assembly.mainBiasConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
            package.assembly.testNorm test +
          package.assembly.traceConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
            package.assembly.testNorm test +
          package.assembly.regularizationConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
            package.assembly.testNorm test +
          package.assembly.bitfieldConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
            package.assembly.testNorm test :=
      add_le_add
        (add_le_add
          (add_le_add mainBound traceBound)
          regularizationBound)
        bitfieldBound
    _ =
        package.assembly.totalConstant *
            Mathematics.MobiusOntology.squareRootWeight
              (package.assembly.mass scale)
              package.assembly.logarithmicOrder *
          package.assembly.testNorm test := by
      simp [SquareRootAssemblyCertificate.totalConstant]
      ring

theorem boundary_law_square_root
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule) :
    Mathematics.MobiusOntology.SquareRootNormFinite
      package.assembly.mass
      package.assembly.discrepancyNorm
      package.assembly.logarithmicOrder :=
  Mathematics.MobiusOntology.squareRootNorm_finite
    (package.assembly.toSquareRootNormCertificate
      package.deterministicDiscrepancyBound)

theorem boundary_law_schedule_bound
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule)
    (schedule : Nat → Schedule)
    (depth : Nat)
    (initial : package.lawCarrier.Law) :
    package.lawCarrier.wasserstein
        (package.dynamics.iterateLaw
          schedule depth initial)
        package.dynamics.invariantLaw ≤
      package.dynamics.contraction ^ depth *
        package.lawCarrier.wasserstein
          initial package.dynamics.invariantLaw :=
  package.dynamics.iterateLaw_wasserstein_le
    schedule depth initial

theorem boundary_law_schedule_preserves_admissibility
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule)
    (schedule : Schedule)
    {state nextState : Bitfield package.system.bits}
    (stateAdmissible :
      package.system.admissible state)
    (transitionPresent :
      (package.dynamics.kernel schedule)
          .transitionWeight state nextState ≠ 0) :
    package.system.admissible nextState :=
  (package.dynamics.kernel schedule)
    .preservesAdmissibility
      stateAdmissible transitionPresent

theorem boundary_law_trace_scale
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule)
    (scale : Scale)
    (test : TestFunction) :
    ‖package.trace.traceTerm scale test‖ ≤
      package.traceScale.traceConstant *
        Mathematics.MobiusOntology.squareRootWeight
          (package.traceScale.mass scale)
          package.traceScale.logarithmicOrder *
        package.traceScale.testNorm test :=
  package.traceScale.trace_scale_bound scale test

theorem boundary_law_trace_identity
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule)
    (scale : Scale)
    (test : TestFunction) :
    package.trace.discrepancy scale test =
      package.trace.mainTerm scale test +
        package.trace.traceTerm scale test +
        package.trace.regularizationRemainder scale test +
        package.trace.bitfieldRemainder scale test :=
  package.trace.traceIdentity scale test

theorem boundary_law_canonical_crossed_product_trace_identity
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule)
    (scale : Scale)
    (test : TestFunction) :
    package.trace.discrepancy scale test =
      package.trace.mainTerm scale test +
        package.trace.traceScaling scale test *
          canonicalMatrixFiberCrossedProductTrace
            (package.traceCrossedProductElement
              scale test) +
        package.trace.regularizationRemainder scale test +
        package.trace.bitfieldRemainder scale test := by
  rw [package.trace.traceIdentity]
  simp only [
    ArithmeticBitfieldTraceCertificate.traceTerm]
  rw [
    package.reducedTraceIsCanonicalCrossedProductTrace]

theorem boundary_law_critical_line
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule)
    (state : Bitfield package.system.bits)
    (index : Fin package.spectral.dim) :
    (package.operatorPurity.spectralParameterMap
      state index).re = (1 : ℝ) / 2 :=
  package.operatorPurity.criticalLine state index

theorem boundary_law_jordan_order_zero
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule)
    (state : Bitfield package.system.bits)
    (index : Fin package.spectral.dim) :
    package.operatorPurity.jordanOrder state index = 0 :=
  package.operatorPurity.jordanOrderZero state index

theorem boundary_law_crossed_product_jordan_order_zero
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (package :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule)
    (index :
      BitfieldHilbertIndex
        package.system package.spectral.dim) :
    package.crossedProductSemisimplicity.jordanOrder
        index = 0 :=
  package.crossedProductSemisimplicity.jordanOrderZero
    index

/--
Optional comparison layer for a perturbed kernel/operator/correspondence
realization over one accepted boundary package.
-/
structure BoundaryLawStabilityExtension
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (boundary :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule) where
  lawPerturbation :
    InvariantLawPerturbation boundary.dynamics
  traceStability :
    ∀ scale test,
      BoundaryTraceStabilityCertificate
        lawPerturbation boundary.trace scale test

theorem boundary_law_global_stability
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule}
    (extension :
      BoundaryLawStabilityExtension boundary)
    (scale : Scale)
    (test : TestFunction) :
    (extension.traceStability scale test)
        .globalDiscrepancyDefect ≤
      (extension.traceStability scale test)
        .globalBound :=
  boundary_trace_stability
    (extension.traceStability scale test)

/--
The optional arithmetic-scale bridge for a perturbation comparison.  Global
trace stability alone does not construct this certificate.
-/
structure UniformBoundaryStabilityScaleCertificate
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule}
    (extension :
      BoundaryLawStabilityExtension boundary) where
  stabilityConstant : ℝ
  stabilityConstantNonnegative :
    0 ≤ stabilityConstant
  globalBoundAtSquareRootScale :
    ∀ scale test,
      boundary.assembly.testNorm test ≤ 1 →
      (extension.traceStability scale test).globalBound ≤
        stabilityConstant *
          Mathematics.MobiusOntology.squareRootWeight
            (boundary.assembly.mass scale)
            boundary.assembly.logarithmicOrder

theorem boundary_law_perturbation_square_root_bound
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {boundary :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule}
    {extension :
      BoundaryLawStabilityExtension boundary}
    (scaleCertificate :
      UniformBoundaryStabilityScaleCertificate
        extension)
    (scale : Scale)
    (test : TestFunction)
    (unitTest :
      boundary.assembly.testNorm test ≤ 1) :
    (extension.traceStability scale test)
        .globalDiscrepancyDefect ≤
      scaleCertificate.stabilityConstant *
        Mathematics.MobiusOntology.squareRootWeight
          (boundary.assembly.mass scale)
          boundary.assembly.logarithmicOrder :=
  le_trans
    (boundary_law_global_stability
      extension scale test)
    (scaleCertificate.globalBoundAtSquareRootScale
      scale test unitTest)

/-- Optional sampled-realization layer. -/
structure CommittedRealizationExtension
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (boundary :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule) where
  influence :
    BitfieldInfluenceCertificate boundary.trace
  concentration :
    BitfieldConcentrationCertificate influence
  typicalRealization :
    CertifiedTypicalRealization influence
  massMatchesBoundary :
    influence.mass = boundary.assembly.mass
  testNormMatchesBoundary :
    influence.testNorm = boundary.assembly.testNorm
  logarithmicOrderMatchesBoundary :
    influence.logarithmicOrder =
      boundary.assembly.logarithmicOrder

/-- Optional family-limit layer. -/
structure FamilyLimitExtension
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (boundary :
      BoundaryLawSquareRootPackage
        Scale TestFunction Schedule) where
  ensembleLimit :
    UniformEnsembleLimitCertificate boundary.trace

/-- The five-interface semantic closure for boundary-law mode. -/
structure ConnesRandomBitfieldClosure
    (Scale : Type uScale)
    (TestFunction : Type uTest)
    (Schedule : Type uSchedule)
    (ArithmeticState : Type uArithmetic)
    (SemanticBoundary : Type uSemantic)
    (Place : Type uPlace)
    (ArithmeticLocal : Type uArithmeticLocal)
    (BitfieldLocal : Type uBitfieldLocal) where
  boundary :
    BoundaryLawSquareRootPackage
      Scale TestFunction Schedule
  arithmeticEncoding :
    EquivariantArithmeticBitfieldEncoding
      ArithmeticState Scale
      boundary.crossedProduct
  invariantTraceCorrespondence :
    boundary.trace.arithmeticSideIdentified ∧
    boundary.trace.spectralSideIdentified ∧
    boundary.trace.transformIdentified ∧
    boundary.trace.allNormalizationFactorsIdentified ∧
    boundary.trace.arithmeticSpectrumEqualsBitfieldSpectrum ∧
    boundary.trace.spectralTransform.normalizationDeclared
  boundaryIdentification :
    BoundarySemanticIdentification
      boundary.dynamics SemanticBoundary
  uniformTraceScale :
    boundary.traceScale.normalizationMatchesReducedTrace ∧
    boundary.traceScale.uniformInScale
  localGlobalCompatibility :
    LocalGlobalArithmeticCompatibility
      Place ArithmeticLocal BitfieldLocal

theorem connes_random_bitfield_square_root
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    {ArithmeticState : Type uArithmetic}
    {SemanticBoundary : Type uSemantic}
    {Place : Type uPlace}
    {ArithmeticLocal : Type uArithmeticLocal}
    {BitfieldLocal : Type uBitfieldLocal}
    (certificate :
      ConnesRandomBitfieldClosure
        Scale TestFunction Schedule ArithmeticState
        SemanticBoundary Place
        ArithmeticLocal BitfieldLocal) :
    Mathematics.MobiusOntology.SquareRootNormFinite
      certificate.boundary.assembly.mass
      certificate.boundary.assembly.discrepancyNorm
      certificate.boundary.assembly.logarithmicOrder :=
  boundary_law_square_root certificate.boundary

structure CommittedConnesRandomBitfieldClosure
    (Scale : Type uScale)
    (TestFunction : Type uTest)
    (Schedule : Type uSchedule)
    (ArithmeticState : Type uArithmetic)
    (SemanticBoundary : Type uSemantic)
    (Place : Type uPlace)
    (ArithmeticLocal : Type uArithmeticLocal)
    (BitfieldLocal : Type uBitfieldLocal) where
  boundaryClosure :
    ConnesRandomBitfieldClosure
      Scale TestFunction Schedule ArithmeticState
      SemanticBoundary Place
      ArithmeticLocal BitfieldLocal
  committedRealization :
    CommittedRealizationExtension
      boundaryClosure.boundary

structure FamilyLimitConnesRandomBitfieldClosure
    (Scale : Type uScale)
    (TestFunction : Type uTest)
    (Schedule : Type uSchedule)
    (ArithmeticState : Type uArithmetic)
    (SemanticBoundary : Type uSemantic)
    (Place : Type uPlace)
    (ArithmeticLocal : Type uArithmeticLocal)
    (BitfieldLocal : Type uBitfieldLocal) where
  boundaryClosure :
    ConnesRandomBitfieldClosure
      Scale TestFunction Schedule ArithmeticState
      SemanticBoundary Place
      ArithmeticLocal BitfieldLocal
  familyLimit :
    FamilyLimitExtension boundaryClosure.boundary

end Mathematics.ConnesBitfield
