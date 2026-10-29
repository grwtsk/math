-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BSDTheoremAutomorphicProvenanceSharedData.Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BSDTheoremAutomorphicProvenanceSharedData.Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3","mathematical_subject":"Computation.DataStructures","original_sha256":"b451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/Automorphic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.BSD.Assembly


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BSDTheoremAutomorphicProvenanceSharedData.Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD Automorphic

What is formalized:
Automorphic provenance, scope, object, and source-kind coherence interfaces.

What is certificate-gated:
All declarations in this component remain theorem-facing interfaces or conditional
unpackers. They do not construct BSD, analytic continuation, Mordell-Weil finite
generation, Sha finiteness, automorphy, or local arithmetic geometry.

What is not claimed:
No theorem in this file proves the Birch and Swinnerton-Dyer conjecture.

Primary mathematical source:
Internal Surface BSD proof-boundary and theorem-cone architecture.
-/

/--
Coherence between the BSD theorem assembly and automorphic provenance.

This certificate says that the global BSD theorem assembly, the analytic-object
coherence package, the analytic-continuation uniqueness package, and the wrapped
BSD certificate all use the same automorphic/modular provenance for analytic
continuation and the functional equation.

It is still an interface certificate. It does not prove modularity, automorphy,
analytic continuation, the functional equation, local Langlands compatibility,
or BSD.
-/
structure BSDTheoremAutomorphicProvenanceSharedData
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L) where
  analyticFunctionInterface :
    HasseWeilAnalyticFunctionInterfaceCertificate N P L
  analyticFunctionInterface_eq_assembly :
    analyticFunctionInterface = A
  analyticFunctionInterface_eq_automorphic :
    analyticFunctionInterface = AP.analyticFunctionInterface
  coefficientSystem :
    DirichletCoefficientSystemCertificate N L
  coefficientSystem_eq_assembly :
    coefficientSystem = A.coefficientSystem
  coefficientSystem_eq_automorphic :
    coefficientSystem = AP.analyticFunctionInterface.coefficientSystem
  eulerProductDirichletSeries :
    EulerProductDirichletSeriesCompatibilityCertificate N L
  eulerProductDirichletSeries_eq_assembly :
    eulerProductDirichletSeries = A.eulerProductDirichletSeries
  eulerProductDirichletSeries_eq_automorphic :
    eulerProductDirichletSeries =
      AP.analyticFunctionInterface.eulerProductDirichletSeries
  completedFunctionalEquation :
    CompletedFunctionalEquationNormalizationCertificate N P L
  completedFunctionalEquation_eq_assembly :
    completedFunctionalEquation = A.completedFunctionalEquation
  completedFunctionalEquation_eq_automorphic :
    completedFunctionalEquation =
      AP.analyticFunctionInterface.completedFunctionalEquation
  automorphicData :
    AutomorphicProvenanceObjectData N P L
  automorphicData_eq :
    automorphicData = AP.automorphicData
  centralGerm :
    CentralGermAtSEqOneData A.analyticObject
  centralGerm_eq_assembly :
    centralGerm = A.centralGerm
  boundary : List String

structure BSDTheoremAutomorphicProvenanceCoherenceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X)
    (T : BSDTheoremAssemblyCertificate L M N P X I)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A)
    (Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A)
    (R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L) where
  theoremAssemblyCertified :
    T.certifiedForBSD
  analyticFunctionCertified :
    A.certifiedForBSD
  analyticContinuationUniquenessCertified :
    U.certifiedForBSD
  theoremAnalyticObjectCoherenceCertified :
    Q.certifiedForBSD
  theoremAnalyticContinuationUniquenessCoherenceCertified :
    R.certifiedForBSD
  automorphicProvenanceCertified :
    AP.certifiedForBSD
  firstPartOrderUsesAutomorphicCentralGerm : Prop
  firstPartOrderUsesAutomorphicCentralGermCertified :
    firstPartOrderUsesAutomorphicCentralGerm
  secondPartLeadingCoefficientUsesAutomorphicCentralGerm : Prop
  secondPartLeadingCoefficientUsesAutomorphicCentralGermCertified :
    secondPartLeadingCoefficientUsesAutomorphicCentralGerm
  analyticContinuationInAssemblySuppliedByAutomorphicProvenance : Prop
  analyticContinuationInAssemblySuppliedByAutomorphicProvenanceCertified :
    analyticContinuationInAssemblySuppliedByAutomorphicProvenance
  functionalEquationInAssemblySuppliedByAutomorphicProvenance : Prop
  functionalEquationInAssemblySuppliedByAutomorphicProvenanceCertified :
    functionalEquationInAssemblySuppliedByAutomorphicProvenance
  sharedAutomorphicData :
    BSDTheoremAutomorphicProvenanceSharedData L N P A AP
  wrappedBSDCertificateUsesAutomorphicProvenance : Prop
  wrappedBSDCertificateUsesAutomorphicProvenanceCertified :
    wrappedBSDCertificateUsesAutomorphicProvenance
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD theorem / automorphic-provenance coherence quality required by
theorem-facing smooth BSD input.
-/
def BSDTheoremAutomorphicProvenanceCoherenceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    (Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP) :
    Prop :=
  T.certifiedForBSD ∧
  A.certifiedForBSD ∧
  U.certifiedForBSD ∧
  Q.certifiedForBSD ∧
  R.certifiedForBSD ∧
  AP.certifiedForBSD ∧
  Z.firstPartOrderUsesAutomorphicCentralGerm ∧
  Z.secondPartLeadingCoefficientUsesAutomorphicCentralGerm ∧
  Z.analyticContinuationInAssemblySuppliedByAutomorphicProvenance ∧
  Z.functionalEquationInAssemblySuppliedByAutomorphicProvenance ∧
  Z.sharedAutomorphicData.analyticFunctionInterface = A ∧
  Z.sharedAutomorphicData.analyticFunctionInterface =
    AP.analyticFunctionInterface ∧
  Z.sharedAutomorphicData.coefficientSystem = A.coefficientSystem ∧
  Z.sharedAutomorphicData.coefficientSystem =
    AP.analyticFunctionInterface.coefficientSystem ∧
  Z.sharedAutomorphicData.eulerProductDirichletSeries =
    A.eulerProductDirichletSeries ∧
  Z.sharedAutomorphicData.eulerProductDirichletSeries =
    AP.analyticFunctionInterface.eulerProductDirichletSeries ∧
  Z.sharedAutomorphicData.completedFunctionalEquation =
    A.completedFunctionalEquation ∧
  Z.sharedAutomorphicData.completedFunctionalEquation =
    AP.analyticFunctionInterface.completedFunctionalEquation ∧
  Z.sharedAutomorphicData.automorphicData = AP.automorphicData ∧
  Z.sharedAutomorphicData.centralGerm = A.centralGerm ∧
  Z.wrappedBSDCertificateUsesAutomorphicProvenance ∧
  Z.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDTheoremAutomorphicProvenanceCoherenceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    (Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP)
    (hsource :
      Z.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    Z.certifiedForBSD := by
  exact
    ⟨Z.theoremAssemblyCertified,
      Z.analyticFunctionCertified,
      Z.analyticContinuationUniquenessCertified,
      Z.theoremAnalyticObjectCoherenceCertified,
      Z.theoremAnalyticContinuationUniquenessCoherenceCertified,
      Z.automorphicProvenanceCertified,
      Z.firstPartOrderUsesAutomorphicCentralGermCertified,
      Z.secondPartLeadingCoefficientUsesAutomorphicCentralGermCertified,
      Z.analyticContinuationInAssemblySuppliedByAutomorphicProvenanceCertified,
      Z.functionalEquationInAssemblySuppliedByAutomorphicProvenanceCertified,
      Z.sharedAutomorphicData.analyticFunctionInterface_eq_assembly,
      Z.sharedAutomorphicData.analyticFunctionInterface_eq_automorphic,
      Z.sharedAutomorphicData.coefficientSystem_eq_assembly,
      Z.sharedAutomorphicData.coefficientSystem_eq_automorphic,
      Z.sharedAutomorphicData.eulerProductDirichletSeries_eq_assembly,
      Z.sharedAutomorphicData.eulerProductDirichletSeries_eq_automorphic,
      Z.sharedAutomorphicData.completedFunctionalEquation_eq_assembly,
      Z.sharedAutomorphicData.completedFunctionalEquation_eq_automorphic,
      Z.sharedAutomorphicData.automorphicData_eq,
      Z.sharedAutomorphicData.centralGerm_eq_assembly,
      Z.wrappedBSDCertificateUsesAutomorphicProvenanceCertified,
      hsource⟩

/--
Coherence between the BSD theorem assembly and supported automorphic scope.

This certificate says that the global BSD theorem assembly, automorphic
provenance, automorphic-provenance coherence, and automorphic-scope support all
use the same non-unspecified automorphic/modular source.

It is still an interface certificate. It does not prove modularity, automorphy,
local Langlands compatibility, analytic continuation, the functional equation,
or BSD.
-/
structure BSDTheoremAutomorphicScopeSharedData
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L)
    (S : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP) where
  declaredScope :
    AutomorphicProvenanceScope
  declaredScope_eq :
    declaredScope = AP.scope
  supportedScope :
    AutomorphicProvenanceScope
  supportedScope_eq :
    supportedScope = AP.scope
  scopeSupport :
    AutomorphicScopeSupportCertificate N L AP.scope
  scopeSupport_eq :
    scopeSupport = S.scopeSupport
  scopeTheoremData :
    AutomorphicScopeTheoremData N L AP.scope
  scopeTheoremData_eq :
    scopeTheoremData = S.scopeSupport.scopeTheoremData
  automorphicData :
    AutomorphicProvenanceObjectData N P L
  automorphicData_eq :
    automorphicData = AP.automorphicData
  automorphicDataScope_eq :
    automorphicData.scope = AP.scope
  scopeTheoremDataScope_eq :
    scopeTheoremData.theoremScope = AP.scope
  boundary : List String

structure BSDTheoremAutomorphicScopeCoherenceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X)
    (T : BSDTheoremAssemblyCertificate L M N P X I)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A)
    (Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A)
    (R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L)
    (Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP)
    (S : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP) where
  theoremAssemblyCertified :
    T.certifiedForBSD
  automorphicProvenanceCertified :
    AP.certifiedForBSD
  theoremAutomorphicProvenanceCoherenceCertified :
    Z.certifiedForBSD
  automorphicScopeCompatibilityCertified :
    S.certifiedForBSD
  sharedScopeData :
    BSDTheoremAutomorphicScopeSharedData L N P AP S
  wrappedBSDCertificateUsesSupportedScope : Prop
  wrappedBSDCertificateUsesSupportedScopeCertified :
    wrappedBSDCertificateUsesSupportedScope
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD theorem / automorphic-scope coherence quality required by theorem-facing
smooth BSD input.
-/
def BSDTheoremAutomorphicScopeCoherenceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP}
    {S : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP}
    (Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z S) :
    Prop :=
  T.certifiedForBSD ∧
  AP.certifiedForBSD ∧
  Z.certifiedForBSD ∧
  S.certifiedForBSD ∧
  Y.sharedScopeData.declaredScope = AP.scope ∧
  Y.sharedScopeData.supportedScope = AP.scope ∧
  Y.sharedScopeData.scopeSupport = S.scopeSupport ∧
  Y.sharedScopeData.scopeTheoremData = S.scopeSupport.scopeTheoremData ∧
  Y.sharedScopeData.automorphicData = AP.automorphicData ∧
  Y.sharedScopeData.automorphicData.scope = AP.scope ∧
  Y.sharedScopeData.scopeTheoremData.theoremScope = AP.scope ∧
  Y.wrappedBSDCertificateUsesSupportedScope ∧
  Y.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDTheoremAutomorphicScopeCoherenceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP}
    {S : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP}
    (Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z S)
    (hsource :
      Y.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    Y.certifiedForBSD := by
  exact
    ⟨Y.theoremAssemblyCertified,
      Y.automorphicProvenanceCertified,
      Y.theoremAutomorphicProvenanceCoherenceCertified,
      Y.automorphicScopeCompatibilityCertified,
      Y.sharedScopeData.declaredScope_eq,
      Y.sharedScopeData.supportedScope_eq,
      Y.sharedScopeData.scopeSupport_eq,
      Y.sharedScopeData.scopeTheoremData_eq,
      Y.sharedScopeData.automorphicData_eq,
      Y.sharedScopeData.automorphicDataScope_eq,
      Y.sharedScopeData.scopeTheoremDataScope_eq,
      Y.wrappedBSDCertificateUsesSupportedScopeCertified,
      hsource⟩

/--
Coherence between the BSD theorem assembly and the typed automorphic L-function
object descriptor.

This certificate says that the global BSD theorem assembly, automorphic
provenance, supported automorphic scope, theorem/scope coherence, and
Hasse-Weil automorphic-object compatibility package all use the same typed
automorphic L-function descriptor.

It is still an interface certificate. It does not construct modular forms,
Hilbert modular forms, automorphic representations, automorphic L-functions,
local Langlands compatibility, analytic continuation, the functional equation,
or BSD.
-/
structure BSDTheoremAutomorphicObjectSharedData
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L)
    (SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP)
    (O : HasseWeilAutomorphicObjectCompatibilityCertificate N P L AP) where
  scopeCompatibility :
    HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP
  scopeCompatibility_eq :
    scopeCompatibility = SC
  objectDescriptor :
    AutomorphicLFunctionObjectDescriptor N P L AP.scope
  objectDescriptor_eq :
    objectDescriptor = O.objectDescriptor
  automorphicData :
    AutomorphicProvenanceObjectData N P L
  automorphicData_eq :
    automorphicData = AP.automorphicData
  descriptorScopeSupport_eq :
    objectDescriptor.scopeSupport = O.scopeCompatibility.scopeSupport
  descriptorScope_eq :
    objectDescriptor.scopeSupport.scopeTheoremData.theoremScope = AP.scope
  objectKind :
    AutomorphicObjectKind
  objectKind_eq :
    objectKind = objectDescriptor.objectKind
  boundary : List String

structure BSDTheoremAutomorphicObjectCoherenceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X)
    (T : BSDTheoremAssemblyCertificate L M N P X I)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A)
    (Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A)
    (R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L)
    (Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP)
    (SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP)
    (Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z SC)
    (O : HasseWeilAutomorphicObjectCompatibilityCertificate N P L AP) where
  theoremAssemblyCertified :
    T.certifiedForBSD
  automorphicProvenanceCertified :
    AP.certifiedForBSD
  theoremAutomorphicProvenanceCoherenceCertified :
    Z.certifiedForBSD
  automorphicScopeCompatibilityCertified :
    SC.certifiedForBSD
  theoremAutomorphicScopeCoherenceCertified :
    Y.certifiedForBSD
  automorphicObjectCompatibilityCertified :
    O.certifiedForBSD
  sharedObjectData :
    BSDTheoremAutomorphicObjectSharedData L N P AP SC O
  wrappedBSDCertificateUsesTypedAutomorphicObject : Prop
  wrappedBSDCertificateUsesTypedAutomorphicObjectCertified :
    wrappedBSDCertificateUsesTypedAutomorphicObject
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD theorem / typed automorphic-object coherence quality required by
theorem-facing smooth BSD input.
-/
def BSDTheoremAutomorphicObjectCoherenceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP}
    {SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP}
    {Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z SC}
    {O : HasseWeilAutomorphicObjectCompatibilityCertificate N P L AP}
    (W : BSDTheoremAutomorphicObjectCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y O) :
    Prop :=
  T.certifiedForBSD ∧
  AP.certifiedForBSD ∧
  Z.certifiedForBSD ∧
  SC.certifiedForBSD ∧
  Y.certifiedForBSD ∧
  O.certifiedForBSD ∧
  W.sharedObjectData.scopeCompatibility = SC ∧
  W.sharedObjectData.objectDescriptor = O.objectDescriptor ∧
  W.sharedObjectData.automorphicData = AP.automorphicData ∧
  W.sharedObjectData.objectDescriptor.scopeSupport =
    O.scopeCompatibility.scopeSupport ∧
  W.sharedObjectData.objectDescriptor.scopeSupport.scopeTheoremData.theoremScope =
    AP.scope ∧
  W.sharedObjectData.objectKind =
    W.sharedObjectData.objectDescriptor.objectKind ∧
  W.wrappedBSDCertificateUsesTypedAutomorphicObject ∧
  W.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDTheoremAutomorphicObjectCoherenceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP}
    {SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP}
    {Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z SC}
    {O : HasseWeilAutomorphicObjectCompatibilityCertificate N P L AP}
    (W : BSDTheoremAutomorphicObjectCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y O)
    (hsource :
      W.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    W.certifiedForBSD := by
  exact
    ⟨W.theoremAssemblyCertified,
      W.automorphicProvenanceCertified,
      W.theoremAutomorphicProvenanceCoherenceCertified,
      W.automorphicScopeCompatibilityCertified,
      W.theoremAutomorphicScopeCoherenceCertified,
      W.automorphicObjectCompatibilityCertified,
      W.sharedObjectData.scopeCompatibility_eq,
      W.sharedObjectData.objectDescriptor_eq,
      W.sharedObjectData.automorphicData_eq,
      W.sharedObjectData.descriptorScopeSupport_eq,
      W.sharedObjectData.descriptorScope_eq,
      W.sharedObjectData.objectKind_eq,
      W.wrappedBSDCertificateUsesTypedAutomorphicObjectCertified,
      hsource⟩

/--
Coherence between the BSD theorem assembly and automorphic object-kind support.

This certificate says that the global BSD theorem assembly, theorem/typed-object
coherence, and the Hasse-Weil automorphic-object-kind compatibility package all
use the same typed automorphic descriptor and the same supported object kind.

It is still an interface certificate. It does not construct modular forms,
Hilbert modular forms, automorphic representations, automorphic L-functions,
local Langlands compatibility, analytic continuation, the functional equation,
or BSD.
-/
structure BSDTheoremAutomorphicObjectKindCoherenceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X)
    (T : BSDTheoremAssemblyCertificate L M N P X I)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A)
    (Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A)
    (R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L)
    (Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP)
    (SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP)
    (Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z SC)
    (Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L AP)
    (W : BSDTheoremAutomorphicObjectCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd.objectCompatibility) where
  theoremAssemblyCertified :
    T.certifiedForBSD
  theoremAutomorphicObjectCoherenceCertified :
    W.certifiedForBSD
  automorphicObjectKindCompatibilityCertified :
    Knd.certifiedForBSD
  theoremAssemblyUsesSupportedObjectKind : Prop
  theoremAssemblyUsesSupportedObjectKindCertified :
    theoremAssemblyUsesSupportedObjectKind
  firstPartUsesSupportedObjectKind : Prop
  firstPartUsesSupportedObjectKindCertified :
    firstPartUsesSupportedObjectKind
  secondPartUsesSupportedObjectKind : Prop
  secondPartUsesSupportedObjectKindCertified :
    secondPartUsesSupportedObjectKind
  analyticContinuationUsesSupportedObjectKind : Prop
  analyticContinuationUsesSupportedObjectKindCertified :
    analyticContinuationUsesSupportedObjectKind
  functionalEquationUsesSupportedObjectKind : Prop
  functionalEquationUsesSupportedObjectKindCertified :
    functionalEquationUsesSupportedObjectKind
  coefficientSystemUsesSupportedObjectKind : Prop
  coefficientSystemUsesSupportedObjectKindCertified :
    coefficientSystemUsesSupportedObjectKind
  localFactorsUseSupportedObjectKind : Prop
  localFactorsUseSupportedObjectKindCertified :
    localFactorsUseSupportedObjectKind
  archimedeanGammaFactorsUseSupportedObjectKind : Prop
  archimedeanGammaFactorsUseSupportedObjectKindCertified :
    archimedeanGammaFactorsUseSupportedObjectKind
  conductorAndRootNumberUseSupportedObjectKind : Prop
  conductorAndRootNumberUseSupportedObjectKindCertified :
    conductorAndRootNumberUseSupportedObjectKind
  centralGermUsesSupportedObjectKind : Prop
  centralGermUsesSupportedObjectKindCertified :
    centralGermUsesSupportedObjectKind
  wrappedBSDCertificateUsesSupportedObjectKind : Prop
  wrappedBSDCertificateUsesSupportedObjectKindCertified :
    wrappedBSDCertificateUsesSupportedObjectKind
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD theorem / automorphic-object-kind coherence quality required by
theorem-facing smooth BSD input.
-/
def BSDTheoremAutomorphicObjectKindCoherenceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP}
    {SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP}
    {Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z SC}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L AP}
    {W : BSDTheoremAutomorphicObjectCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd.objectCompatibility}
    (V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd W) :
    Prop :=
  T.certifiedForBSD ∧
  W.certifiedForBSD ∧
  Knd.certifiedForBSD ∧
  V.theoremAssemblyUsesSupportedObjectKind ∧
  V.firstPartUsesSupportedObjectKind ∧
  V.secondPartUsesSupportedObjectKind ∧
  V.analyticContinuationUsesSupportedObjectKind ∧
  V.functionalEquationUsesSupportedObjectKind ∧
  V.coefficientSystemUsesSupportedObjectKind ∧
  V.localFactorsUseSupportedObjectKind ∧
  V.archimedeanGammaFactorsUseSupportedObjectKind ∧
  V.conductorAndRootNumberUseSupportedObjectKind ∧
  V.centralGermUsesSupportedObjectKind ∧
  V.wrappedBSDCertificateUsesSupportedObjectKind ∧
  V.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDTheoremAutomorphicObjectKindCoherenceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP}
    {SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP}
    {Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z SC}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L AP}
    {W : BSDTheoremAutomorphicObjectCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd.objectCompatibility}
    (V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd W)
    (hsource :
      V.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    V.certifiedForBSD := by
  exact
    ⟨V.theoremAssemblyCertified,
      V.theoremAutomorphicObjectCoherenceCertified,
      V.automorphicObjectKindCompatibilityCertified,
      V.theoremAssemblyUsesSupportedObjectKindCertified,
      V.firstPartUsesSupportedObjectKindCertified,
      V.secondPartUsesSupportedObjectKindCertified,
      V.analyticContinuationUsesSupportedObjectKindCertified,
      V.functionalEquationUsesSupportedObjectKindCertified,
      V.coefficientSystemUsesSupportedObjectKindCertified,
      V.localFactorsUseSupportedObjectKindCertified,
      V.archimedeanGammaFactorsUseSupportedObjectKindCertified,
      V.conductorAndRootNumberUseSupportedObjectKindCertified,
      V.centralGermUsesSupportedObjectKindCertified,
      V.wrappedBSDCertificateUsesSupportedObjectKindCertified,
      hsource⟩

/--
Coherence between the BSD theorem assembly and automorphic analytic-source-kind
support.

This certificate says that the theorem assembly, the typed automorphic object
kind, and the typed automorphic analytic-source-kind package all refer to the
same supported analytic source kind for the Hasse-Weil input.

It is still an interface certificate. It does not construct modular forms,
Hilbert modular forms, automorphic representations, automorphic L-functions,
local Langlands compatibility, analytic continuation, the functional equation,
or BSD.
-/
structure BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate
    {C : LawfulShortWeierstrass.{u}}
    (L : HasseWeilLFunction C.K.field C.E)
    (M : SmoothMordellWeilInterface C)
    (N : NumberFieldCertificate C.K)
    (P : NumberFieldPlaceProductFormulaCertificate N)
    (X : Conjecture L M.MW)
    (I : BSDTheoremInput X)
    (T : BSDTheoremAssemblyCertificate L M N P X I)
    (A : HasseWeilAnalyticFunctionInterfaceCertificate N P L)
    (U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A)
    (Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A)
    (R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q)
    (AP : HasseWeilAutomorphicProvenanceCertificate N P L)
    (Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP)
    (SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP)
    (Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z SC)
    (Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L AP)
    (W : BSDTheoremAutomorphicObjectCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd.objectCompatibility)
    (V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd W)
    (Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
      N P L AP Knd) where
  theoremAssemblyCertified :
    T.certifiedForBSD
  theoremAutomorphicObjectKindCoherenceCertified :
    V.certifiedForBSD
  automorphicAnalyticSourceKindCompatibilityCertified :
    Src.certifiedForBSD
  theoremAssemblyUsesSupportedAnalyticSourceKind : Prop
  theoremAssemblyUsesSupportedAnalyticSourceKindCertified :
    theoremAssemblyUsesSupportedAnalyticSourceKind
  firstPartUsesSupportedAnalyticSourceKind : Prop
  firstPartUsesSupportedAnalyticSourceKindCertified :
    firstPartUsesSupportedAnalyticSourceKind
  secondPartUsesSupportedAnalyticSourceKind : Prop
  secondPartUsesSupportedAnalyticSourceKindCertified :
    secondPartUsesSupportedAnalyticSourceKind
  analyticContinuationUsesSupportedAnalyticSourceKind : Prop
  analyticContinuationUsesSupportedAnalyticSourceKindCertified :
    analyticContinuationUsesSupportedAnalyticSourceKind
  functionalEquationUsesSupportedAnalyticSourceKind : Prop
  functionalEquationUsesSupportedAnalyticSourceKindCertified :
    functionalEquationUsesSupportedAnalyticSourceKind
  coefficientSystemUsesSupportedAnalyticSourceKind : Prop
  coefficientSystemUsesSupportedAnalyticSourceKindCertified :
    coefficientSystemUsesSupportedAnalyticSourceKind
  localFactorsUseSupportedAnalyticSourceKind : Prop
  localFactorsUseSupportedAnalyticSourceKindCertified :
    localFactorsUseSupportedAnalyticSourceKind
  archimedeanGammaFactorsUseSupportedAnalyticSourceKind : Prop
  archimedeanGammaFactorsUseSupportedAnalyticSourceKindCertified :
    archimedeanGammaFactorsUseSupportedAnalyticSourceKind
  conductorAndRootNumberUseSupportedAnalyticSourceKind : Prop
  conductorAndRootNumberUseSupportedAnalyticSourceKindCertified :
    conductorAndRootNumberUseSupportedAnalyticSourceKind
  centralGermUsesSupportedAnalyticSourceKind : Prop
  centralGermUsesSupportedAnalyticSourceKindCertified :
    centralGermUsesSupportedAnalyticSourceKind
  wrappedBSDCertificateUsesSupportedAnalyticSourceKind : Prop
  wrappedBSDCertificateUsesSupportedAnalyticSourceKindCertified :
    wrappedBSDCertificateUsesSupportedAnalyticSourceKind
  analyticSourceKindSupportMatchesTheoremInput : Prop
  analyticSourceKindSupportMatchesTheoremInputCertified :
    analyticSourceKindSupportMatchesTheoremInput
  analyticSourceKindSupportMatchesAutomorphicObjectKind : Prop
  analyticSourceKindSupportMatchesAutomorphicObjectKindCertified :
    analyticSourceKindSupportMatchesAutomorphicObjectKind
  sourceStatus : AnalyticCertificateSourceStatus
  boundary : List String

/--
BSD theorem / automorphic analytic-source-kind coherence quality required by
theorem-facing smooth BSD input.
-/
def BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate.certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP}
    {SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP}
    {Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z SC}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L AP}
    {W : BSDTheoremAutomorphicObjectCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd.objectCompatibility}
    {V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd W}
    {Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
      N P L AP Knd}
    (AS : BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd W V Src) :
    Prop :=
  T.certifiedForBSD ∧
  V.certifiedForBSD ∧
  Src.certifiedForBSD ∧
  AS.theoremAssemblyUsesSupportedAnalyticSourceKind ∧
  AS.firstPartUsesSupportedAnalyticSourceKind ∧
  AS.secondPartUsesSupportedAnalyticSourceKind ∧
  AS.analyticContinuationUsesSupportedAnalyticSourceKind ∧
  AS.functionalEquationUsesSupportedAnalyticSourceKind ∧
  AS.coefficientSystemUsesSupportedAnalyticSourceKind ∧
  AS.localFactorsUseSupportedAnalyticSourceKind ∧
  AS.archimedeanGammaFactorsUseSupportedAnalyticSourceKind ∧
  AS.conductorAndRootNumberUseSupportedAnalyticSourceKind ∧
  AS.centralGermUsesSupportedAnalyticSourceKind ∧
  AS.wrappedBSDCertificateUsesSupportedAnalyticSourceKind ∧
  AS.analyticSourceKindSupportMatchesTheoremInput ∧
  AS.analyticSourceKindSupportMatchesAutomorphicObjectKind ∧
  AS.sourceStatus =
    AnalyticCertificateSourceStatus.suppliedByCertificate

theorem BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate.certifiedForBSD_of_fields
    {C : LawfulShortWeierstrass.{u}}
    {L : HasseWeilLFunction C.K.field C.E}
    {M : SmoothMordellWeilInterface C}
    {N : NumberFieldCertificate C.K}
    {P : NumberFieldPlaceProductFormulaCertificate N}
    {X : Conjecture L M.MW}
    {I : BSDTheoremInput X}
    {T : BSDTheoremAssemblyCertificate L M N P X I}
    {A : HasseWeilAnalyticFunctionInterfaceCertificate N P L}
    {U : HasseWeilAnalyticContinuationUniquenessCertificate N P L A}
    {Q : BSDTheoremAnalyticObjectCoherenceCertificate L M N P X I T A}
    {R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
      L M N P X I T A U Q}
    {AP : HasseWeilAutomorphicProvenanceCertificate N P L}
    {Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
      L M N P X I T A U Q R AP}
    {SC : HasseWeilAutomorphicScopeCompatibilityCertificate N P L AP}
    {Y : BSDTheoremAutomorphicScopeCoherenceCertificate
      L M N P X I T A U Q R AP Z SC}
    {Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate N P L AP}
    {W : BSDTheoremAutomorphicObjectCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd.objectCompatibility}
    {V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd W}
    {Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
      N P L AP Knd}
    (AS : BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate
      L M N P X I T A U Q R AP Z SC Y Knd W V Src)
    (hsource :
      AS.sourceStatus =
        AnalyticCertificateSourceStatus.suppliedByCertificate) :
    AS.certifiedForBSD := by
  exact
    ⟨AS.theoremAssemblyCertified,
      AS.theoremAutomorphicObjectKindCoherenceCertified,
      AS.automorphicAnalyticSourceKindCompatibilityCertified,
      AS.theoremAssemblyUsesSupportedAnalyticSourceKindCertified,
      AS.firstPartUsesSupportedAnalyticSourceKindCertified,
      AS.secondPartUsesSupportedAnalyticSourceKindCertified,
      AS.analyticContinuationUsesSupportedAnalyticSourceKindCertified,
      AS.functionalEquationUsesSupportedAnalyticSourceKindCertified,
      AS.coefficientSystemUsesSupportedAnalyticSourceKindCertified,
      AS.localFactorsUseSupportedAnalyticSourceKindCertified,
      AS.archimedeanGammaFactorsUseSupportedAnalyticSourceKindCertified,
      AS.conductorAndRootNumberUseSupportedAnalyticSourceKindCertified,
      AS.centralGermUsesSupportedAnalyticSourceKindCertified,
      AS.wrappedBSDCertificateUsesSupportedAnalyticSourceKindCertified,
      AS.analyticSourceKindSupportMatchesTheoremInputCertified,
      AS.analyticSourceKindSupportMatchesAutomorphicObjectKindCertified,
      hsource⟩
end BSD
end EllipticCurve
end Surface.Arithmetic

