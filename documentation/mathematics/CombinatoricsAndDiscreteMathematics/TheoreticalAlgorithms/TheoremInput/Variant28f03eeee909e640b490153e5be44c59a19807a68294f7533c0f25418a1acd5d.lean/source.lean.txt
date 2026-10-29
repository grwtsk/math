-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SmoothBSDTheoremInput.Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.SmoothBSDTheoremInput.Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361","mathematical_subject":"Computation.DataStructures","original_sha256":"822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Arithmetic/EllipticCurve/BSD/TheoremInput.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Arithmetic.EllipticCurve.BSD.Automorphic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SmoothBSDTheoremInput.Variant822fe3a5af012323267d3a38a0b3e758307abd17fae0e3a5d9a69e53ad700361

namespace Surface.Arithmetic
namespace EllipticCurve
namespace BSD

universe u

/-!
# BSD TheoremInput

What is formalized:
Smooth and packed BSD theorem-input packages and unpacking lemmas.

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
A theorem-facing BSD input over a smooth lawful short-Weierstrass curve.

This does not prove BSD. It packages the existing BSD certificate input together
with a smooth Mordell-Weil interface, so BSD-facing rank data is tied to the
smooth curve and smooth group-law gate.

The rank certificate used in the first BSD part is required to be the same
finite-generation certificate carried by the smooth Mordell-Weil interface.
-/
structure SmoothBSDTheoremInput
    (C : LawfulShortWeierstrass.{u}) where
  baseNumberField : NumberFieldCertificate C.K
  baseNumberFieldCertifiedForBSD :
    baseNumberField.certifiedForBSD
  baseNumberFieldPlaceProductFormula :
    NumberFieldPlaceProductFormulaCertificate baseNumberField
  baseNumberFieldPlaceProductFormulaCertifiedForBSD :
    baseNumberFieldPlaceProductFormula.certifiedForBSD
  baseNumberFieldProjectiveHeight :
    NumberFieldProjectiveHeightCertificate baseNumberFieldPlaceProductFormula
  baseNumberFieldProjectiveHeightCertifiedForBSD :
    baseNumberFieldProjectiveHeight.certifiedForBSD
  baseNumberFieldNorthcott :
    NumberFieldNorthcottCertificate baseNumberFieldProjectiveHeight
  baseNumberFieldNorthcottCertifiedForBSD :
    baseNumberFieldNorthcott.certifiedForBSD
  smoothMW : SmoothMordellWeilInterface C
  smoothMWCertifiedForBSD :
    smoothMW.certifiedForBSD
  localHeightBasePlaceCompatibilityCertifiedForBSD :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate smoothMW,
      P.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        baseNumberField
        P.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD
  heightNorthcottCompatibilityCertifiedForBSD :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate smoothMW,
      P.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        baseNumberField
        P.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD ∧
        ∃ R : CanonicalHeightNorthcottCompatibilityCertificate
          baseNumberField
          baseNumberFieldPlaceProductFormula
          baseNumberFieldProjectiveHeight
          baseNumberFieldNorthcott
          B,
          R.certifiedForBSD
  L : HasseWeilLFunction C.K.field C.E
  lFunctionCertifiedForBSD :
    L.certifiedForBSD
  archimedeanGammaFactorsCertifiedForBSD :
    ∃ G : HasseWeilArchimedeanGammaFactorCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      G.certifiedForBSD
  completedFunctionalEquationCertifiedForBSD :
    ∃ FE : CompletedFunctionalEquationNormalizationCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      FE.certifiedForBSD
  analyticHasseWeilFunctionCertifiedForBSD :
    ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD
  analyticContinuationUniquenessCertifiedForBSD :
    ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        U.certifiedForBSD
  automorphicProvenanceCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD
  automorphicScopeCompatibilityCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ S : HasseWeilAutomorphicScopeCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        S.certifiedForBSD
  automorphicObjectCompatibilityCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ O : HasseWeilAutomorphicObjectCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        O.certifiedForBSD
  automorphicObjectKindCompatibilityCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        Knd.certifiedForBSD
  automorphicAnalyticSourceCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        Knd.certifiedForBSD ∧
        ∃ S : HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A Knd,
          S.certifiedForBSD
  automorphicAnalyticSourceKindCompatibilityCertifiedForBSD :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      baseNumberField baseNumberFieldPlaceProductFormula L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L A,
        Knd.certifiedForBSD ∧
        ∃ Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A Knd,
          Src.certifiedForBSD
  eulerProductCoverageCertifiedForBSD :
    ∃ EC : EulerProductCoverageCertificate L,
      EC.certifiedForBSD
  eulerProductDirichletSeriesCompatibleCertifiedForBSD :
    ∃ EC : EulerProductDirichletSeriesCompatibilityCertificate
      baseNumberField L,
      EC.certifiedForBSD
  localFactorsCompatibleWithBaseNumberField :
    ∀ F ∈ L.localFactors,
      ∃ LC : LocalEulerFactorFinitePlaceCertificate baseNumberField F,
        LC.certifiedForBSD
  localFactorsResidueNormCompatibleCertifiedForBSD :
    ∃ RC : HasseWeilResidueNormCompatibilityCertificate
      baseNumberField L,
      RC.certifiedForBSD
  localFactorsPointCountCompatibleCertifiedForBSD :
    ∃ PC : HasseWeilPointCountCompatibilityCertificate
      baseNumberField L,
      PC.certifiedForBSD
  badLocalFactorsArithmeticCompatibleCertifiedForBSD :
    ∃ BC : HasseWeilBadReductionCompatibilityCertificate
      baseNumberField L,
      BC.certifiedForBSD
  badLocalFactorsTypedShapeCompatibleCertifiedForBSD :
    ∃ TC : HasseWeilTypedBadReductionShapeCompatibilityCertificate
      baseNumberField L,
      TC.certifiedForBSD
  conductorLocalCompatibilityCertifiedForBSD :
    ∃ CC : ConductorLocalCompatibilityCertificate baseNumberField L,
      CC.certifiedForBSD
  globalConductorAssemblyCertifiedForBSD :
    ∃ GC : GlobalConductorAssemblyCertificate baseNumberField L,
      GC.certifiedForBSD
  conjecture : Conjecture L smoothMW.MW
  rankCertificateMatchesSmoothMW :
    conjecture.first.rankCertificate = smoothMW.finiteGeneration
  analyticContinuationAssumptionPresent :
    ∃ A : AnalyticContinuationCertificate L,
      conjecture.assumptions.analyticContinuation? = some A
  functionalEquationAssumptionPresent :
    ∃ F : FunctionalEquationCertificate L,
      conjecture.assumptions.functionalEquation? = some F
  analyticContinuationCertifiedForBSD :
    ∃ A : AnalyticContinuationCertificate L,
      conjecture.assumptions.analyticContinuation? = some A ∧
      A.certifiedForBSD
  functionalEquationCertifiedForBSD :
    ∃ F : FunctionalEquationCertificate L,
      conjecture.assumptions.functionalEquation? = some F ∧
      F.certifiedForBSD
  mordellWeilAssumptionMatchesSmoothMW :
    conjecture.assumptions.mordellWeil? =
      some smoothMW.finiteGeneration
  orderAssumptionMatchesFirstPart :
    conjecture.assumptions.orderCertificate? =
      some conjecture.first.orderCertificate
  orderCertificateAtSEqOne :
    conjecture.first.orderCertificate.point =
      SymbolicComplexVariable.sEqOne
  orderCertificateCertifiedForBSD :
    conjecture.first.orderCertificate.certifiedForBSD
  rootNumberParityCompatibilityCertifiedForBSD :
    ∃ R : BSDRootNumberParityCompatibilityCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture.first,
      R.certifiedForBSD
  firstPartAssemblyCertifiedForBSD :
    ∃ A : BSDFirstPartAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture.first,
      A.certifiedForBSD
  secondPartComponentsSupplied :
    conjecture.second.componentsSupplied
  tamagawaProductCertifiedForBSD :
    ∃ TP : TamagawaProductCertificate
      baseNumberField L conjecture.second,
      TP.certifiedForBSD
  regulatorCertifiedForBSD :
    ∃ R : RegulatorCertificate smoothMW conjecture.second,
      R.certifiedForBSD
  regulatorCanonicalHeightCompatibilityCertifiedForBSD :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate smoothMW,
      P.certifiedForBSD ∧
      ∃ R : RegulatorCertificate smoothMW conjecture.second,
        R.certifiedForBSD ∧
        ∃ Q : RegulatorCanonicalHeightCompatibilityCertificate
          smoothMW conjecture.second P R,
          Q.certifiedForBSD
  leadingCoefficientCertifiedForBSD :
    ∃ LC : LeadingCoefficientCertificate
      L smoothMW.MW conjecture.first conjecture.second,
      LC.certifiedForBSD
  leadingCoefficientAnalyticNormalizationCertifiedForBSD :
    ∃ LC : LeadingCoefficientCertificate
      L smoothMW.MW conjecture.first conjecture.second,
      LC.certifiedForBSD ∧
      ∃ A : LeadingCoefficientAnalyticNormalizationCertificate
        L smoothMW.MW conjecture.first conjecture.second
        baseNumberField baseNumberFieldPlaceProductFormula LC,
        A.certifiedForBSD
  periodProductCertifiedForBSD :
    ∃ PP : PeriodProductCertificate
      smoothMW baseNumberField conjecture.second,
      PP.certifiedForBSD
  tateShafarevichCertifiedForBSD :
    ∃ T : TateShafarevichComponentCertificate
      smoothMW conjecture.second,
      T.certifiedForBSD
  torsionOrderCertifiedForBSD :
    ∃ T : TorsionOrderCertificate
      smoothMW conjecture.second,
      T.certifiedForBSD
  secondPartAssemblyCertifiedForBSD :
    ∃ A : BSDSecondPartAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture.first conjecture.second,
      A.certifiedForBSD
  input : BSDTheoremInput conjecture
  theoremAssemblyCertifiedForBSD :
    ∃ A : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      A.certifiedForBSD
  theoremAnalyticObjectCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
          L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
          conjecture input T A,
          Q.certifiedForBSD
  theoremAnalyticContinuationUniquenessCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD
  theoremAutomorphicProvenanceCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD
  theoremAutomorphicScopeCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ S : HasseWeilAutomorphicScopeCompatibilityCertificate
                    baseNumberField baseNumberFieldPlaceProductFormula L AP,
                    S.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                      conjecture input T A U Q R AP Z S,
                      Y.certifiedForBSD
  theoremAutomorphicObjectCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    baseNumberField baseNumberFieldPlaceProductFormula L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                      conjecture input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ O : HasseWeilAutomorphicObjectCompatibilityCertificate
                        baseNumberField baseNumberFieldPlaceProductFormula L AP,
                        O.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                          conjecture input T A U Q R AP Z SC Y O,
                          W.certifiedForBSD
  theoremAutomorphicObjectKindCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    baseNumberField baseNumberFieldPlaceProductFormula L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                      conjecture input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
                        baseNumberField baseNumberFieldPlaceProductFormula L AP,
                        Knd.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                          conjecture input T A U Q R AP Z SC Y Knd.objectCompatibility,
                          W.certifiedForBSD ∧
                          ∃ V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
                            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                            conjecture input T A U Q R AP Z SC Y Knd W,
                            V.certifiedForBSD
  theoremAutomorphicAnalyticSourceKindCoherenceCertifiedForBSD :
    ∃ T : BSDTheoremAssemblyCertificate
      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
      conjecture input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        baseNumberField baseNumberFieldPlaceProductFormula L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          baseNumberField baseNumberFieldPlaceProductFormula L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
            conjecture input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
              conjecture input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                baseNumberField baseNumberFieldPlaceProductFormula L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                  conjecture input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    baseNumberField baseNumberFieldPlaceProductFormula L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                      conjecture input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
                        baseNumberField baseNumberFieldPlaceProductFormula L AP,
                        Knd.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                          conjecture input T A U Q R AP Z SC Y Knd.objectCompatibility,
                          W.certifiedForBSD ∧
                          ∃ V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
                            L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                            conjecture input T A U Q R AP Z SC Y Knd W,
                            V.certifiedForBSD ∧
                            ∃ Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
                              baseNumberField baseNumberFieldPlaceProductFormula L AP Knd,
                              Src.certifiedForBSD ∧
                              ∃ AS : BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate
                                L smoothMW baseNumberField baseNumberFieldPlaceProductFormula
                                conjecture input T A U Q R AP Z SC Y Knd W V Src,
                                AS.certifiedForBSD
  boundary : List String

/-- Rank extracted from the smooth BSD input. -/
def SmoothBSDTheoremInput.rank
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    Nat :=
  S.smoothMW.rank

/-- The smooth BSD input carries certificate-grade number-field provenance. -/
theorem SmoothBSDTheoremInput.baseNumberField_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.baseNumberField.certifiedForBSD :=
  S.baseNumberFieldCertifiedForBSD

theorem SmoothBSDTheoremInput.baseNumberField_finiteDimensionalOverQ
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.baseNumberField.finiteDimensionalOverQ :=
  S.baseNumberField_certifiedForBSD.1

theorem SmoothBSDTheoremInput.baseNumberField_characteristicZero
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.baseNumberField.characteristicZero :=
  S.baseNumberField_certifiedForBSD.2

/-- The smooth BSD input carries base-place/product-formula provenance. -/
theorem SmoothBSDTheoremInput.baseNumberFieldPlaceProductFormula_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.baseNumberFieldPlaceProductFormula.certifiedForBSD :=
  S.baseNumberFieldPlaceProductFormulaCertifiedForBSD

/-- The smooth BSD input carries base projective-height provenance. -/
theorem SmoothBSDTheoremInput.baseNumberFieldProjectiveHeight_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.baseNumberFieldProjectiveHeight.certifiedForBSD :=
  S.baseNumberFieldProjectiveHeightCertifiedForBSD

/-- The smooth BSD input carries Northcott finite-height provenance. -/
theorem SmoothBSDTheoremInput.baseNumberFieldNorthcott_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.baseNumberFieldNorthcott.certifiedForBSD :=
  S.baseNumberFieldNorthcottCertifiedForBSD

/-- The smooth BSD input links local-height decomposition to base places. -/
theorem SmoothBSDTheoremInput.localHeightBasePlaceCompatibility_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate S.smoothMW,
      P.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        S.baseNumberField
        P.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD :=
  S.localHeightBasePlaceCompatibilityCertifiedForBSD

/-- The smooth BSD input links height descent to base-field Northcott provenance. -/
theorem SmoothBSDTheoremInput.heightNorthcottCompatibility_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate S.smoothMW,
      P.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        S.baseNumberField
        P.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD ∧
        ∃ R : CanonicalHeightNorthcottCompatibilityCertificate
          S.baseNumberField
          S.baseNumberFieldPlaceProductFormula
          S.baseNumberFieldProjectiveHeight
          S.baseNumberFieldNorthcott
          B,
          R.certifiedForBSD :=
  S.heightNorthcottCompatibilityCertifiedForBSD

/-- The smooth BSD input links rational points to the projective height used by Northcott. -/
theorem SmoothBSDTheoremInput.weierstrassProjectiveHeightEmbedding_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate S.smoothMW,
      P.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        S.baseNumberField
        P.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD ∧
        ∃ R : CanonicalHeightNorthcottCompatibilityCertificate
          S.baseNumberField
          S.baseNumberFieldPlaceProductFormula
          S.baseNumberFieldProjectiveHeight
          S.baseNumberFieldNorthcott
          B,
          R.certifiedForBSD ∧
          R.weierstrassProjectiveHeightEmbedding.certifiedForBSD := by
  rcases S.heightNorthcottCompatibility_certifiedForBSD with
    ⟨P, hP, B, hB, R, hR⟩
  exact
    ⟨P, hP, B, hB, R, hR,
      CanonicalHeightNorthcottCompatibilityCertificate.weierstrassProjectiveHeightEmbedding_certifiedForBSD
        hR⟩

/--
The rank certificate used by the first BSD part is the smooth Mordell-Weil
finite-generation certificate.
-/
theorem SmoothBSDTheoremInput.rankCertificate_eq_smoothMW
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.conjecture.first.rankCertificate = S.smoothMW.finiteGeneration :=
  S.rankCertificateMatchesSmoothMW

/--
The rank appearing in the first BSD part agrees with the smooth Mordell-Weil
rank extracted from the smooth interface.
-/
theorem SmoothBSDTheoremInput.rankCertificate_rank_eq_smooth_rank
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    Surface.Arithmetic.EllipticCurve.rank
      S.conjecture.first.rankCertificate = S.rank := by
  rw [S.rankCertificateMatchesSmoothMW]
  rfl

/-- The smooth BSD input carries certificate-grade smooth Mordell-Weil data. -/
theorem SmoothBSDTheoremInput.smoothMW_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.smoothMW.certifiedForBSD :=
  S.smoothMWCertifiedForBSD

/-- The smooth BSD input attaches the Mordell-Weil descriptor to the same curve. -/
theorem SmoothBSDTheoremInput.smoothMW_ownsUnderlyingCurve
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.smoothMW.ownsUnderlyingCurve :=
  S.smoothMWCertifiedForBSD.2.2.1

/-- The smooth BSD input carries certificate-grade rational-point locus data. -/
theorem SmoothBSDTheoremInput.rationalPointLocus_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.smoothMW.rationalPointLocusCertifiedForBSD :=
  S.smoothMWCertifiedForBSD.2.2.2.1

/-- The smooth BSD input carries finite-generation theorem provenance. -/
theorem SmoothBSDTheoremInput.finiteGenerationProvenance_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.smoothMW.finiteGenerationProvenanceCertifiedForBSD :=
  S.smoothMWCertifiedForBSD.2.2.2.2

/-- The smooth BSD input carries Kummer/Selmer finite-control provenance. -/
theorem SmoothBSDTheoremInput.kummerSelmerFiniteControl_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate S.smoothMW,
      P.certifiedForBSD ∧
      P.weakDescent.kummerSelmer.certifiedForBSD := by
  rcases S.finiteGenerationProvenance_certifiedForBSD with ⟨P, hP⟩
  exact
    ⟨P, hP,
      MordellWeilFiniteGenerationProvenanceCertificate.kummerSelmer_certifiedForBSD
        hP⟩

/-- The smooth BSD input carries canonical-height height-descent provenance. -/
theorem SmoothBSDTheoremInput.heightDescentProvenance_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate S.smoothMW,
      P.certifiedForBSD ∧
      P.heightDescentProvenance.certifiedForBSD :=
  SmoothMordellWeilInterface.heightDescentProvenance_certifiedForBSD
    S.smoothMWCertifiedForBSD

/-- The smooth BSD input carries local-height decomposition provenance. -/
theorem SmoothBSDTheoremInput.localHeightDecomposition_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate S.smoothMW,
      P.certifiedForBSD ∧
      P.heightDescentProvenance.localHeightDecomposition.certifiedForBSD := by
  rcases S.finiteGenerationProvenance_certifiedForBSD with ⟨P, hP⟩
  exact
    ⟨P, hP,
      MordellWeilFiniteGenerationProvenanceCertificate.localHeightDecomposition_certifiedForBSD
        hP⟩

/-- The smooth BSD input carries BSD-quality global L-function metadata. -/
theorem SmoothBSDTheoremInput.lFunction_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.L.certifiedForBSD :=
  S.lFunctionCertifiedForBSD

/--
The smooth BSD input carries archimedean gamma-factor provenance for the
completed Hasse-Weil package.
-/
theorem SmoothBSDTheoremInput.archimedeanGammaFactors_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ G : HasseWeilArchimedeanGammaFactorCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      G.certifiedForBSD :=
  S.archimedeanGammaFactorsCertifiedForBSD

/--
The smooth BSD input carries completed functional-equation normalization
compatible with the completed shape, conductor, gamma factors, central point,
root number, and Euler product.
-/
theorem SmoothBSDTheoremInput.completedFunctionalEquation_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ FE : CompletedFunctionalEquationNormalizationCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      FE.certifiedForBSD :=
  S.completedFunctionalEquationCertifiedForBSD

/--
The smooth BSD input carries analytic-function interface provenance for the
Hasse-Weil L-function metadata package.
-/
theorem SmoothBSDTheoremInput.analyticHasseWeilFunction_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      A.certifiedForBSD :=
  S.analyticHasseWeilFunctionCertifiedForBSD

/--
The smooth BSD input carries uniqueness/coherence provenance for the analytic
continuation of the Hasse-Weil analytic interface.
-/
theorem SmoothBSDTheoremInput.analyticContinuationUniqueness_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      A.certifiedForBSD ∧
      ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
        U.certifiedForBSD :=
  S.analyticContinuationUniquenessCertifiedForBSD

/--
The smooth BSD theorem input carries automorphic/modularity provenance for the
analytic continuation and functional equation of its Hasse-Weil L-function.
-/
theorem SmoothBSDTheoremInput.automorphicProvenance_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      A.certifiedForBSD :=
  S.automorphicProvenanceCertifiedForBSD

/--
The smooth BSD theorem input carries support for the declared automorphic
provenance scope.
-/
theorem SmoothBSDTheoremInput.automorphicScopeCompatibility_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      A.certifiedForBSD ∧
      ∃ Q : HasseWeilAutomorphicScopeCompatibilityCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
        Q.certifiedForBSD :=
  S.automorphicScopeCompatibilityCertifiedForBSD

/--
The smooth BSD theorem input carries a typed automorphic L-function object
descriptor compatible with its Hasse-Weil automorphic provenance package.
-/
theorem SmoothBSDTheoremInput.automorphicObjectCompatibility_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      A.certifiedForBSD ∧
      ∃ O : HasseWeilAutomorphicObjectCompatibilityCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
        O.certifiedForBSD :=
  S.automorphicObjectCompatibilityCertifiedForBSD

/--
The smooth BSD theorem input carries compatibility between the automorphic
object kind and its typed automorphic source descriptor.
-/
theorem SmoothBSDTheoremInput.automorphicObjectKindCompatibility_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
        Knd.certifiedForBSD :=
  S.automorphicObjectKindCompatibilityCertifiedForBSD

/--
The smooth BSD theorem input carries a typed theorem or external-source
descriptor for the automorphic analytic input.
-/
theorem SmoothBSDTheoremInput.automorphicAnalyticSource_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
        Knd.certifiedForBSD ∧
        ∃ Q : HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate
          S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A Knd,
          Q.certifiedForBSD :=
  S.automorphicAnalyticSourceCertifiedForBSD

/--
The smooth BSD theorem input carries kind-support compatibility for the typed
automorphic analytic source.
-/
theorem SmoothBSDTheoremInput.automorphicAnalyticSourceKindCompatibility_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
        Knd.certifiedForBSD ∧
        ∃ Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
          S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A Knd,
          Src.certifiedForBSD :=
  S.automorphicAnalyticSourceKindCompatibilityCertifiedForBSD

/-- The smooth BSD input carries certified Euler-product coverage data. -/
theorem SmoothBSDTheoremInput.eulerProductCoverage_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ EC : EulerProductCoverageCertificate S.L,
      EC.certifiedForBSD :=
  S.eulerProductCoverageCertifiedForBSD

/--
The smooth BSD input carries coefficient-system compatibility between the Euler
product and the global Dirichlet/ideal series package.
-/
theorem SmoothBSDTheoremInput.eulerProductDirichletSeriesCompatible_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ EC : EulerProductDirichletSeriesCompatibilityCertificate
      S.baseNumberField S.L,
      EC.certifiedForBSD :=
  S.eulerProductDirichletSeriesCompatibleCertifiedForBSD

/-- The smooth BSD input attaches each listed local factor to a finite base-field place. -/
theorem SmoothBSDTheoremInput.localFactors_compatibleWithBaseNumberField
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∀ F ∈ S.L.localFactors,
      ∃ LC : LocalEulerFactorFinitePlaceCertificate S.baseNumberField F,
        LC.certifiedForBSD :=
  S.localFactorsCompatibleWithBaseNumberField

/--
The smooth BSD input links each local factor to residue-field norm provenance at
its finite place.
-/
theorem SmoothBSDTheoremInput.localFactorsResidueNormCompatible_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ RC : HasseWeilResidueNormCompatibilityCertificate
      S.baseNumberField S.L,
      RC.certifiedForBSD :=
  S.localFactorsResidueNormCompatibleCertifiedForBSD

/-- The smooth BSD input links good local factors to point-count/Frobenius data. -/
theorem SmoothBSDTheoremInput.localFactorsPointCountCompatible_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ PC : HasseWeilPointCountCompatibilityCertificate
      S.baseNumberField S.L,
      PC.certifiedForBSD :=
  S.localFactorsPointCountCompatibleCertifiedForBSD

/-- The smooth BSD input links bad local factors to reduction/conductor data. -/
theorem SmoothBSDTheoremInput.badLocalFactorsArithmeticCompatible_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ BC : HasseWeilBadReductionCompatibilityCertificate
      S.baseNumberField S.L,
      BC.certifiedForBSD :=
  S.badLocalFactorsArithmeticCompatibleCertifiedForBSD

/--
The smooth BSD input links bad local factors to typed reduction and local-factor
shape data.
-/
theorem SmoothBSDTheoremInput.badLocalFactorsTypedShapeCompatible_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ TC : HasseWeilTypedBadReductionShapeCompatibilityCertificate
      S.baseNumberField S.L,
      TC.certifiedForBSD :=
  S.badLocalFactorsTypedShapeCompatibleCertifiedForBSD

/--
The smooth BSD input carries certified compatibility between conductor metadata
and the finite-place local-factor package.
-/
theorem SmoothBSDTheoremInput.conductorLocalCompatibility_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ CC : ConductorLocalCompatibilityCertificate S.baseNumberField S.L,
      CC.certifiedForBSD :=
  S.conductorLocalCompatibilityCertifiedForBSD

/--
The smooth BSD input carries a certificate that local conductor exponents assemble
the supplied global conductor descriptor.
-/
theorem SmoothBSDTheoremInput.globalConductorAssembly_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ GC : GlobalConductorAssemblyCertificate S.baseNumberField S.L,
      GC.certifiedForBSD :=
  S.globalConductorAssemblyCertifiedForBSD

/-- The smooth BSD input advertises an analytic-continuation assumption. -/
theorem SmoothBSDTheoremInput.has_analyticContinuationAssumption
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : AnalyticContinuationCertificate S.L,
      S.conjecture.assumptions.analyticContinuation? = some A :=
  S.analyticContinuationAssumptionPresent

/-- The smooth BSD input advertises a functional-equation assumption. -/
theorem SmoothBSDTheoremInput.has_functionalEquationAssumption
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ F : FunctionalEquationCertificate S.L,
      S.conjecture.assumptions.functionalEquation? = some F :=
  S.functionalEquationAssumptionPresent

/-- The smooth BSD input carries BSD-quality analytic continuation data. -/
theorem SmoothBSDTheoremInput.has_certifiedAnalyticContinuationForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : AnalyticContinuationCertificate S.L,
      S.conjecture.assumptions.analyticContinuation? = some A ∧
      A.certifiedForBSD :=
  S.analyticContinuationCertifiedForBSD

/-- The smooth BSD input carries BSD-quality functional equation data. -/
theorem SmoothBSDTheoremInput.has_certifiedFunctionalEquationForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ F : FunctionalEquationCertificate S.L,
      S.conjecture.assumptions.functionalEquation? = some F ∧
      F.certifiedForBSD :=
  S.functionalEquationCertifiedForBSD

/-- The Mordell-Weil assumption is the smooth Mordell-Weil finite-generation certificate. -/
theorem SmoothBSDTheoremInput.mordellWeilAssumption_eq_smoothMW
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.conjecture.assumptions.mordellWeil? =
      some S.smoothMW.finiteGeneration :=
  S.mordellWeilAssumptionMatchesSmoothMW

/-- The order-of-vanishing assumption is the first-part order certificate. -/
theorem SmoothBSDTheoremInput.orderAssumption_eq_firstPart
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.conjecture.assumptions.orderCertificate? =
      some S.conjecture.first.orderCertificate :=
  S.orderAssumptionMatchesFirstPart

/-- The order certificate in the first BSD part is at the typed point `s = 1`. -/
theorem SmoothBSDTheoremInput.orderCertificate_at_sEqOne
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.conjecture.first.orderCertificate.point =
      SymbolicComplexVariable.sEqOne :=
  S.orderCertificateAtSEqOne

/-- The smooth BSD input carries BSD-quality order-of-vanishing data. -/
theorem SmoothBSDTheoremInput.orderCertificate_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.conjecture.first.orderCertificate.certifiedForBSD :=
  S.orderCertificateCertifiedForBSD

/--
The smooth BSD input carries certificate-level compatibility between the
functional-equation root number and the parity of the central zero order.
-/
theorem SmoothBSDTheoremInput.rootNumberParityCompatibility_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ R : BSDRootNumberParityCompatibilityCertificate
      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
      S.conjecture.first,
      R.certifiedForBSD :=
  S.rootNumberParityCompatibilityCertifiedForBSD

/--
The smooth BSD input carries one assembly certificate for the rank/order
identity in the first BSD part.
-/
theorem SmoothBSDTheoremInput.firstPartAssembly_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : BSDFirstPartAssemblyCertificate
      S.L S.smoothMW S.baseNumberField
      S.baseNumberFieldPlaceProductFormula S.conjecture.first,
      A.certifiedForBSD :=
  S.firstPartAssemblyCertifiedForBSD

/-- The smooth BSD input carries supplied component data for the second part. -/
theorem SmoothBSDTheoremInput.secondPart_componentsSupplied
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.conjecture.second.componentsSupplied :=
  S.secondPartComponentsSupplied

/--
The smooth BSD input carries local Tamagawa/component-group provenance for the
second BSD part.
-/
theorem SmoothBSDTheoremInput.tamagawaProduct_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ TP : TamagawaProductCertificate
      S.baseNumberField S.L S.conjecture.second,
      TP.certifiedForBSD :=
  S.tamagawaProductCertifiedForBSD

/--
The smooth BSD input carries Neron-Tate height-pairing/regulator provenance for
the second BSD part.
-/
theorem SmoothBSDTheoremInput.regulator_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ R : RegulatorCertificate S.smoothMW S.conjecture.second,
      R.certifiedForBSD :=
  S.regulatorCertifiedForBSD

/--
The smooth BSD input links the regulator height pairing to the canonical-height
package used for Mordell-Weil finite generation.
-/
theorem SmoothBSDTheoremInput.regulatorCanonicalHeightCompatibility_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ P : MordellWeilFiniteGenerationProvenanceCertificate S.smoothMW,
      P.certifiedForBSD ∧
      ∃ R : RegulatorCertificate S.smoothMW S.conjecture.second,
        R.certifiedForBSD ∧
        ∃ Q : RegulatorCanonicalHeightCompatibilityCertificate
          S.smoothMW S.conjecture.second P R,
          Q.certifiedForBSD :=
  S.regulatorCanonicalHeightCompatibilityCertifiedForBSD

/--
The smooth BSD input carries Taylor-expansion/leading-coefficient provenance for
the second BSD part.
-/
theorem SmoothBSDTheoremInput.leadingCoefficient_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ LC : LeadingCoefficientCertificate
      S.L S.smoothMW.MW S.conjecture.first S.conjecture.second,
      LC.certifiedForBSD :=
  S.leadingCoefficientCertifiedForBSD

/--
The smooth BSD input ties the leading coefficient to the same analytic germ as
the Euler-product/Dirichlet-series and completed-normalization package.
-/
theorem SmoothBSDTheoremInput.leadingCoefficientAnalyticNormalization_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ LC : LeadingCoefficientCertificate
      S.L S.smoothMW.MW S.conjecture.first S.conjecture.second,
      LC.certifiedForBSD ∧
      ∃ A : LeadingCoefficientAnalyticNormalizationCertificate
        S.L S.smoothMW.MW S.conjecture.first S.conjecture.second
        S.baseNumberField S.baseNumberFieldPlaceProductFormula LC,
        A.certifiedForBSD :=
  S.leadingCoefficientAnalyticNormalizationCertifiedForBSD

/--
The smooth BSD input carries archimedean period/Neron-differential provenance
for the second BSD part.
-/
theorem SmoothBSDTheoremInput.periodProduct_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ PP : PeriodProductCertificate
      S.smoothMW S.baseNumberField S.conjecture.second,
      PP.certifiedForBSD :=
  S.periodProductCertifiedForBSD

/--
The smooth BSD input carries Tate-Shafarevich group/order provenance for the
second BSD part.
-/
theorem SmoothBSDTheoremInput.tateShafarevich_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : TateShafarevichComponentCertificate
      S.smoothMW S.conjecture.second,
      T.certifiedForBSD :=
  S.tateShafarevichCertifiedForBSD

/--
The smooth BSD input carries Mordell-Weil torsion-subgroup/order provenance for
the second BSD part.
-/
theorem SmoothBSDTheoremInput.torsionOrder_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : TorsionOrderCertificate
      S.smoothMW S.conjecture.second,
      T.certifiedForBSD :=
  S.torsionOrderCertifiedForBSD

/--
The smooth BSD input carries one assembly certificate for the normalized
second-part leading-coefficient identity.
-/
theorem SmoothBSDTheoremInput.secondPartAssembly_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : BSDSecondPartAssemblyCertificate
      S.L S.smoothMW S.baseNumberField
      S.baseNumberFieldPlaceProductFormula
      S.conjecture.first S.conjecture.second,
      A.certifiedForBSD :=
  S.secondPartAssemblyCertifiedForBSD

/--
The smooth BSD theorem input carries one global assembly certificate tying the
wrapped BSD certificate to the certified first- and second-part assembly gates.
-/
theorem SmoothBSDTheoremInput.theoremAssembly_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ A : BSDTheoremAssemblyCertificate
      S.L S.smoothMW S.baseNumberField
      S.baseNumberFieldPlaceProductFormula
      S.conjecture S.input,
      A.certifiedForBSD :=
  S.theoremAssemblyCertifiedForBSD

/--
The smooth BSD theorem input carries coherence between the global theorem
assembly and the analytic Hasse-Weil function interface.
-/
theorem SmoothBSDTheoremInput.theoremAnalyticObjectCoherence_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : BSDTheoremAssemblyCertificate
      S.L S.smoothMW S.baseNumberField
      S.baseNumberFieldPlaceProductFormula
      S.conjecture S.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
        A.certifiedForBSD ∧
        ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
          S.L S.smoothMW S.baseNumberField
          S.baseNumberFieldPlaceProductFormula
          S.conjecture S.input T A,
          Q.certifiedForBSD :=
  S.theoremAnalyticObjectCoherenceCertifiedForBSD

/--
The smooth BSD theorem input carries coherence between theorem assembly and the
unique analytic continuation of the Hasse-Weil analytic interface.
-/
theorem SmoothBSDTheoremInput.theoremAnalyticContinuationUniquenessCoherence_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : BSDTheoremAssemblyCertificate
      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
      S.conjecture S.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
            S.conjecture S.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
              S.conjecture S.input T A U Q,
              R.certifiedForBSD :=
  S.theoremAnalyticContinuationUniquenessCoherenceCertifiedForBSD

/--
The smooth BSD theorem input carries coherence between theorem assembly and
automorphic/modularity provenance.
-/
theorem SmoothBSDTheoremInput.theoremAutomorphicProvenanceCoherence_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : BSDTheoremAssemblyCertificate
      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
      S.conjecture S.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
            S.conjecture S.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
              S.conjecture S.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                  S.conjecture S.input T A U Q R AP,
                  Z.certifiedForBSD :=
  S.theoremAutomorphicProvenanceCoherenceCertifiedForBSD

/--
The smooth BSD theorem input carries coherence between theorem assembly and the
same supported non-unspecified automorphic scope.
-/
theorem SmoothBSDTheoremInput.theoremAutomorphicScopeCoherence_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : BSDTheoremAssemblyCertificate
      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
      S.conjecture S.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
            S.conjecture S.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
              S.conjecture S.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                  S.conjecture S.input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                      S.conjecture S.input T A U Q R AP Z SC,
                      Y.certifiedForBSD :=
  S.theoremAutomorphicScopeCoherenceCertifiedForBSD

/--
The smooth BSD theorem input carries coherence between theorem assembly and the
same typed automorphic L-function object descriptor.
-/
theorem SmoothBSDTheoremInput.theoremAutomorphicObjectCoherence_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : BSDTheoremAssemblyCertificate
      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
      S.conjecture S.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
            S.conjecture S.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
              S.conjecture S.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                  S.conjecture S.input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                      S.conjecture S.input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ O : HasseWeilAutomorphicObjectCompatibilityCertificate
                        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP,
                        O.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                          S.conjecture S.input T A U Q R AP Z SC Y O,
                          W.certifiedForBSD :=
  S.theoremAutomorphicObjectCoherenceCertifiedForBSD

/--
The smooth BSD theorem input carries coherence between theorem assembly and the
same supported object kind of the same typed automorphic L-function descriptor.
-/
theorem SmoothBSDTheoremInput.theoremAutomorphicObjectKindCoherence_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : BSDTheoremAssemblyCertificate
      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
      S.conjecture S.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
            S.conjecture S.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
              S.conjecture S.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                  S.conjecture S.input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                      S.conjecture S.input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
                        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP,
                        Knd.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                          S.conjecture S.input T A U Q R AP Z SC Y Knd.objectCompatibility,
                          W.certifiedForBSD ∧
                          ∃ V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
                            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                            S.conjecture S.input T A U Q R AP Z SC Y Knd W,
                            V.certifiedForBSD :=
  S.theoremAutomorphicObjectKindCoherenceCertifiedForBSD

/--
The smooth BSD theorem input carries theorem-level coherence for the typed
automorphic analytic-source kind.
-/
theorem SmoothBSDTheoremInput.theoremAutomorphicAnalyticSourceKindCoherence_certifiedForBSD
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ∃ T : BSDTheoremAssemblyCertificate
      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
      S.conjecture S.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
            S.conjecture S.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
              S.conjecture S.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                  S.conjecture S.input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                      S.conjecture S.input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
                        S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP,
                        Knd.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                          S.conjecture S.input T A U Q R AP Z SC Y Knd.objectCompatibility,
                          W.certifiedForBSD ∧
                          ∃ V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
                            S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                            S.conjecture S.input T A U Q R AP Z SC Y Knd W,
                            V.certifiedForBSD ∧
                            ∃ Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
                              S.baseNumberField S.baseNumberFieldPlaceProductFormula S.L AP Knd,
                              Src.certifiedForBSD ∧
                              ∃ AS : BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate
                                S.L S.smoothMW S.baseNumberField S.baseNumberFieldPlaceProductFormula
                                S.conjecture S.input T A U Q R AP Z SC Y Knd W V Src,
                                AS.certifiedForBSD :=
  S.theoremAutomorphicAnalyticSourceKindCoherenceCertifiedForBSD

/-- The smooth BSD input carries nonzero discriminant. -/
theorem SmoothBSDTheoremInput.discriminant_ne_zero
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    C.E.discriminant ≠ C.K.field.zero :=
  S.smoothMW.discriminant_ne_zero

/-- The smooth BSD input carries absence of affine singular points. -/
theorem SmoothBSDTheoremInput.no_affine_singular_point
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    ¬ Nonempty (AffineSingularPoint C) :=
  S.smoothMW.no_affine_singular_point

/-- The first BSD part certified by the wrapped theorem input. -/
theorem SmoothBSDTheoremInput.firstPartCertified
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    firstPart S.conjecture.first :=
  S.input.certificate.firstPartCertified

/--
The smooth Mordell-Weil rank equals the certified order of vanishing whenever
the wrapped BSD first-part certificate is supplied.
-/
theorem SmoothBSDTheoremInput.smooth_rank_eq_orderOfVanishing
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    S.rank = orderOfVanishing S.conjecture.first.orderCertificate := by
  have hfirst : firstPart S.conjecture.first :=
    S.firstPartCertified
  unfold firstPart at hfirst
  have hrank :
      Surface.Arithmetic.EllipticCurve.rank
        S.conjecture.first.rankCertificate = S.rank :=
    S.rankCertificate_rank_eq_smooth_rank
  exact hrank.symm.trans hfirst

/-- The second BSD part certified by the wrapped theorem input. -/
theorem SmoothBSDTheoremInput.secondPartCertified
    {C : LawfulShortWeierstrass.{u}}
    (S : SmoothBSDTheoremInput C) :
    secondPart S.conjecture.second :=
  S.input.certificate.secondPartCertified

/--
Packed smooth BSD theorem input.

This existential-style package lets downstream flow, trace, or Hilbert records
carry a BSD theorem input together with the smooth lawful short-Weierstrass and
smooth Mordell-Weil gates.
-/
structure PackedSmoothBSDTheoremInput where
  C : LawfulShortWeierstrass.{u}
  input : SmoothBSDTheoremInput C
  boundary : List String

/-- Rank extracted from a packed smooth BSD input. -/
def PackedSmoothBSDTheoremInput.rank
    (P : PackedSmoothBSDTheoremInput.{u}) :
    Nat :=
  P.input.rank

/-- Packed smooth BSD input carries nonzero discriminant. -/
theorem PackedSmoothBSDTheoremInput.discriminant_ne_zero
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.C.E.discriminant ≠ P.C.K.field.zero :=
  P.input.discriminant_ne_zero

/-- Packed smooth BSD input carries absence of affine singular points. -/
theorem PackedSmoothBSDTheoremInput.no_affine_singular_point
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ¬ Nonempty (AffineSingularPoint P.C) :=
  P.input.no_affine_singular_point

/-- The first BSD part certified by the packed smooth theorem input. -/
theorem PackedSmoothBSDTheoremInput.firstPart
    (P : PackedSmoothBSDTheoremInput.{u}) :
    firstPart P.input.conjecture.first :=
  P.input.firstPartCertified

/-- The second BSD part certified by the packed smooth theorem input. -/
theorem PackedSmoothBSDTheoremInput.secondPart
    (P : PackedSmoothBSDTheoremInput.{u}) :
    secondPart P.input.conjecture.second :=
  P.input.secondPartCertified

/--
The packed smooth BSD input identifies the smooth Mordell-Weil rank with the
certified order of vanishing from the enclosed first BSD part.
-/
theorem PackedSmoothBSDTheoremInput.smooth_rank_eq_orderOfVanishing
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.rank = orderOfVanishing P.input.conjecture.first.orderCertificate :=
  P.input.smooth_rank_eq_orderOfVanishing

/-- The packed smooth BSD input carries certificate-grade number-field provenance. -/
theorem PackedSmoothBSDTheoremInput.baseNumberField_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.baseNumberField.certifiedForBSD :=
  P.input.baseNumberField_certifiedForBSD

/-- The packed smooth BSD input carries base-place/product-formula provenance. -/
theorem PackedSmoothBSDTheoremInput.baseNumberFieldPlaceProductFormula_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.baseNumberFieldPlaceProductFormula.certifiedForBSD :=
  P.input.baseNumberFieldPlaceProductFormula_certifiedForBSD

/-- The packed smooth BSD input carries base projective-height provenance. -/
theorem PackedSmoothBSDTheoremInput.baseNumberFieldProjectiveHeight_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.baseNumberFieldProjectiveHeight.certifiedForBSD :=
  P.input.baseNumberFieldProjectiveHeight_certifiedForBSD

/-- The packed smooth BSD input carries Northcott finite-height provenance. -/
theorem PackedSmoothBSDTheoremInput.baseNumberFieldNorthcott_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.baseNumberFieldNorthcott.certifiedForBSD :=
  P.input.baseNumberFieldNorthcott_certifiedForBSD

/-- The packed smooth BSD input links local-height decomposition to base places. -/
theorem PackedSmoothBSDTheoremInput.localHeightBasePlaceCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ Q : MordellWeilFiniteGenerationProvenanceCertificate P.input.smoothMW,
      Q.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        P.input.baseNumberField
        Q.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD :=
  P.input.localHeightBasePlaceCompatibility_certifiedForBSD

/-- The packed smooth BSD input links height descent to Northcott provenance. -/
theorem PackedSmoothBSDTheoremInput.heightNorthcottCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ Q : MordellWeilFiniteGenerationProvenanceCertificate P.input.smoothMW,
      Q.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        P.input.baseNumberField
        Q.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD ∧
        ∃ R : CanonicalHeightNorthcottCompatibilityCertificate
          P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.baseNumberFieldProjectiveHeight
          P.input.baseNumberFieldNorthcott
          B,
          R.certifiedForBSD :=
  P.input.heightNorthcottCompatibility_certifiedForBSD

/-- The packed smooth BSD input links rational points to the Northcott projective height. -/
theorem PackedSmoothBSDTheoremInput.weierstrassProjectiveHeightEmbedding_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ Q : MordellWeilFiniteGenerationProvenanceCertificate P.input.smoothMW,
      Q.certifiedForBSD ∧
      ∃ B : CanonicalHeightBasePlaceCompatibilityCertificate
        P.input.baseNumberField
        Q.heightDescentProvenance.localHeightDecomposition,
        B.certifiedForBSD ∧
        ∃ R : CanonicalHeightNorthcottCompatibilityCertificate
          P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.baseNumberFieldProjectiveHeight
          P.input.baseNumberFieldNorthcott
          B,
          R.certifiedForBSD ∧
          R.weierstrassProjectiveHeightEmbedding.certifiedForBSD :=
  P.input.weierstrassProjectiveHeightEmbedding_certifiedForBSD

/-- The packed smooth BSD input carries certificate-grade smooth Mordell-Weil data. -/
theorem PackedSmoothBSDTheoremInput.smoothMW_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.smoothMW.certifiedForBSD :=
  P.input.smoothMW_certifiedForBSD

/-- The packed smooth BSD input attaches the Mordell-Weil descriptor to the same curve. -/
theorem PackedSmoothBSDTheoremInput.smoothMW_ownsUnderlyingCurve
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.smoothMW.ownsUnderlyingCurve :=
  P.input.smoothMW_ownsUnderlyingCurve

/-- The packed smooth BSD input carries certificate-grade rational-point locus data. -/
theorem PackedSmoothBSDTheoremInput.rationalPointLocus_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.smoothMW.rationalPointLocusCertifiedForBSD :=
  P.input.rationalPointLocus_certifiedForBSD

/-- The packed smooth BSD input carries finite-generation theorem provenance. -/
theorem PackedSmoothBSDTheoremInput.finiteGenerationProvenance_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.smoothMW.finiteGenerationProvenanceCertifiedForBSD :=
  P.input.finiteGenerationProvenance_certifiedForBSD

/-- The packed smooth BSD input carries Kummer/Selmer finite-control provenance. -/
theorem PackedSmoothBSDTheoremInput.kummerSelmerFiniteControl_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ Q : MordellWeilFiniteGenerationProvenanceCertificate P.input.smoothMW,
      Q.certifiedForBSD ∧
      Q.weakDescent.kummerSelmer.certifiedForBSD :=
  P.input.kummerSelmerFiniteControl_certifiedForBSD

/-- The packed smooth BSD input carries canonical-height height-descent provenance. -/
theorem PackedSmoothBSDTheoremInput.heightDescentProvenance_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ Q : MordellWeilFiniteGenerationProvenanceCertificate P.input.smoothMW,
      Q.certifiedForBSD ∧
      Q.heightDescentProvenance.certifiedForBSD :=
  P.input.heightDescentProvenance_certifiedForBSD

/-- The packed smooth BSD input carries local-height decomposition provenance. -/
theorem PackedSmoothBSDTheoremInput.localHeightDecomposition_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ Q : MordellWeilFiniteGenerationProvenanceCertificate P.input.smoothMW,
      Q.certifiedForBSD ∧
      Q.heightDescentProvenance.localHeightDecomposition.certifiedForBSD :=
  P.input.localHeightDecomposition_certifiedForBSD

/-- The packed smooth BSD input carries BSD-quality global L-function metadata. -/
theorem PackedSmoothBSDTheoremInput.lFunction_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.L.certifiedForBSD :=
  P.input.lFunction_certifiedForBSD

/--
The packed smooth BSD input carries archimedean gamma-factor provenance for the
completed Hasse-Weil package.
-/
theorem PackedSmoothBSDTheoremInput.archimedeanGammaFactors_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ G : HasseWeilArchimedeanGammaFactorCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      G.certifiedForBSD :=
  P.input.archimedeanGammaFactors_certifiedForBSD

/--
The packed smooth BSD input carries completed functional-equation normalization
compatible with the completed shape, conductor, gamma factors, central point,
root number, and Euler product.
-/
theorem PackedSmoothBSDTheoremInput.completedFunctionalEquation_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ FE : CompletedFunctionalEquationNormalizationCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      FE.certifiedForBSD :=
  P.input.completedFunctionalEquation_certifiedForBSD

/--
The packed smooth BSD input carries analytic-function interface provenance for
the Hasse-Weil L-function metadata package.
-/
theorem PackedSmoothBSDTheoremInput.analyticHasseWeilFunction_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      A.certifiedForBSD :=
  P.input.analyticHasseWeilFunction_certifiedForBSD

/--
The packed smooth BSD input carries uniqueness/coherence provenance for the
analytic continuation of the Hasse-Weil analytic interface.
-/
theorem PackedSmoothBSDTheoremInput.analyticContinuationUniqueness_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      A.certifiedForBSD ∧
      ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L A,
        U.certifiedForBSD :=
  P.input.analyticContinuationUniqueness_certifiedForBSD

/--
The packed smooth BSD theorem input carries automorphic/modularity provenance
for the analytic continuation and functional equation of its Hasse-Weil
L-function.
-/
theorem PackedSmoothBSDTheoremInput.automorphicProvenance_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      A.certifiedForBSD :=
  P.input.automorphicProvenance_certifiedForBSD

/--
The packed smooth BSD theorem input carries support for the declared automorphic
provenance scope.
-/
theorem PackedSmoothBSDTheoremInput.automorphicScopeCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      A.certifiedForBSD ∧
      ∃ Q : HasseWeilAutomorphicScopeCompatibilityCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L A,
        Q.certifiedForBSD :=
  P.input.automorphicScopeCompatibility_certifiedForBSD

/--
The packed smooth BSD theorem input carries a typed automorphic L-function
object descriptor compatible with its Hasse-Weil automorphic provenance package.
-/
theorem PackedSmoothBSDTheoremInput.automorphicObjectCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      A.certifiedForBSD ∧
      ∃ O : HasseWeilAutomorphicObjectCompatibilityCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L A,
        O.certifiedForBSD :=
  P.input.automorphicObjectCompatibility_certifiedForBSD

/--
The packed smooth BSD theorem input carries automorphic-object-kind
compatibility for its typed automorphic source descriptor.
-/
theorem PackedSmoothBSDTheoremInput.automorphicObjectKindCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L A,
        Knd.certifiedForBSD :=
  P.input.automorphicObjectKindCompatibility_certifiedForBSD

/--
The packed smooth BSD theorem input carries a typed automorphic analytic-source
descriptor.
-/
theorem PackedSmoothBSDTheoremInput.automorphicAnalyticSource_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L A,
        Knd.certifiedForBSD ∧
        ∃ Q : HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate
          P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.L A Knd,
          Q.certifiedForBSD :=
  P.input.automorphicAnalyticSource_certifiedForBSD

/--
The packed smooth BSD theorem input carries kind-support compatibility for the
typed automorphic analytic source.
-/
theorem PackedSmoothBSDTheoremInput.automorphicAnalyticSourceKindCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : HasseWeilAutomorphicProvenanceCertificate
      P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.L,
      A.certifiedForBSD ∧
      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L A,
        Knd.certifiedForBSD ∧
        ∃ Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
          P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.L A Knd,
          Src.certifiedForBSD :=
  P.input.automorphicAnalyticSourceKindCompatibility_certifiedForBSD

/-- The packed smooth BSD input carries certified Euler-product coverage data. -/
theorem PackedSmoothBSDTheoremInput.eulerProductCoverage_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ EC : EulerProductCoverageCertificate P.input.L,
      EC.certifiedForBSD :=
  P.input.eulerProductCoverage_certifiedForBSD

/--
The packed smooth BSD input carries coefficient-system compatibility between the
Euler product and the global Dirichlet/ideal series package.
-/
theorem PackedSmoothBSDTheoremInput.eulerProductDirichletSeriesCompatible_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ EC : EulerProductDirichletSeriesCompatibilityCertificate
      P.input.baseNumberField P.input.L,
      EC.certifiedForBSD :=
  P.input.eulerProductDirichletSeriesCompatible_certifiedForBSD

/-- The packed smooth BSD input attaches each listed local factor to a finite base-field place. -/
theorem PackedSmoothBSDTheoremInput.localFactors_compatibleWithBaseNumberField
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∀ F ∈ P.input.L.localFactors,
      ∃ LC : LocalEulerFactorFinitePlaceCertificate P.input.baseNumberField F,
        LC.certifiedForBSD :=
  P.input.localFactors_compatibleWithBaseNumberField

/--
The packed smooth BSD input links each local factor to residue-field norm
provenance at its finite place.
-/
theorem PackedSmoothBSDTheoremInput.localFactorsResidueNormCompatible_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ RC : HasseWeilResidueNormCompatibilityCertificate
      P.input.baseNumberField P.input.L,
      RC.certifiedForBSD :=
  P.input.localFactorsResidueNormCompatible_certifiedForBSD

/-- The packed smooth BSD input links good local factors to point-count/Frobenius data. -/
theorem PackedSmoothBSDTheoremInput.localFactorsPointCountCompatible_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ PC : HasseWeilPointCountCompatibilityCertificate
      P.input.baseNumberField P.input.L,
      PC.certifiedForBSD :=
  P.input.localFactorsPointCountCompatible_certifiedForBSD

/-- The packed smooth BSD input links bad local factors to reduction/conductor data. -/
theorem PackedSmoothBSDTheoremInput.badLocalFactorsArithmeticCompatible_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ BC : HasseWeilBadReductionCompatibilityCertificate
      P.input.baseNumberField P.input.L,
      BC.certifiedForBSD :=
  P.input.badLocalFactorsArithmeticCompatible_certifiedForBSD

/--
The packed smooth BSD input links bad local factors to typed reduction and
local-factor shape data.
-/
theorem PackedSmoothBSDTheoremInput.badLocalFactorsTypedShapeCompatible_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ TC : HasseWeilTypedBadReductionShapeCompatibilityCertificate
      P.input.baseNumberField P.input.L,
      TC.certifiedForBSD :=
  P.input.badLocalFactorsTypedShapeCompatible_certifiedForBSD

/--
The packed smooth BSD input carries certified compatibility between conductor
metadata and the finite-place local-factor package.
-/
theorem PackedSmoothBSDTheoremInput.conductorLocalCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ CC : ConductorLocalCompatibilityCertificate
      P.input.baseNumberField P.input.L,
      CC.certifiedForBSD :=
  P.input.conductorLocalCompatibility_certifiedForBSD

/--
The packed smooth BSD input carries a certificate that local conductor exponents
assemble the supplied global conductor descriptor.
-/
theorem PackedSmoothBSDTheoremInput.globalConductorAssembly_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ GC : GlobalConductorAssemblyCertificate
      P.input.baseNumberField P.input.L,
      GC.certifiedForBSD :=
  P.input.globalConductorAssembly_certifiedForBSD

/--
The packed smooth BSD input carries the `s = 1` point condition for the
order-of-vanishing certificate.
-/
theorem PackedSmoothBSDTheoremInput.orderCertificate_at_sEqOne
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.conjecture.first.orderCertificate.point =
      SymbolicComplexVariable.sEqOne :=
  P.input.orderCertificate_at_sEqOne

/-- The packed smooth BSD input carries BSD-quality order-of-vanishing data. -/
theorem PackedSmoothBSDTheoremInput.orderCertificate_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.conjecture.first.orderCertificate.certifiedForBSD :=
  P.input.orderCertificate_certifiedForBSD

/--
The packed smooth BSD input carries certificate-level compatibility between the
functional-equation root number and the parity of the central zero order.
-/
theorem PackedSmoothBSDTheoremInput.rootNumberParityCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ R : BSDRootNumberParityCompatibilityCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula P.input.conjecture.first,
      R.certifiedForBSD :=
  P.input.rootNumberParityCompatibility_certifiedForBSD

/--
The packed smooth BSD input carries one assembly certificate for the rank/order
identity in the first BSD part.
-/
theorem PackedSmoothBSDTheoremInput.firstPartAssembly_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : BSDFirstPartAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula P.input.conjecture.first,
      A.certifiedForBSD :=
  P.input.firstPartAssembly_certifiedForBSD

/-- The packed smooth BSD input carries supplied component data for the second part. -/
theorem PackedSmoothBSDTheoremInput.secondPart_componentsSupplied
    (P : PackedSmoothBSDTheoremInput.{u}) :
    P.input.conjecture.second.componentsSupplied :=
  P.input.secondPart_componentsSupplied

/--
The packed smooth BSD input carries local Tamagawa/component-group provenance for
the second BSD part.
-/
theorem PackedSmoothBSDTheoremInput.tamagawaProduct_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ TP : TamagawaProductCertificate
      P.input.baseNumberField P.input.L P.input.conjecture.second,
      TP.certifiedForBSD :=
  P.input.tamagawaProduct_certifiedForBSD

/--
The packed smooth BSD input carries Neron-Tate height-pairing/regulator
provenance for the second BSD part.
-/
theorem PackedSmoothBSDTheoremInput.regulator_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ R : RegulatorCertificate
      P.input.smoothMW P.input.conjecture.second,
      R.certifiedForBSD :=
  P.input.regulator_certifiedForBSD

/--
The packed smooth BSD input links regulator provenance to the canonical-height
package used for Mordell-Weil finite generation.
-/
theorem PackedSmoothBSDTheoremInput.regulatorCanonicalHeightCompatibility_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ Qfg : MordellWeilFiniteGenerationProvenanceCertificate P.input.smoothMW,
      Qfg.certifiedForBSD ∧
      ∃ R : RegulatorCertificate P.input.smoothMW P.input.conjecture.second,
        R.certifiedForBSD ∧
        ∃ Q : RegulatorCanonicalHeightCompatibilityCertificate
          P.input.smoothMW P.input.conjecture.second Qfg R,
          Q.certifiedForBSD :=
  P.input.regulatorCanonicalHeightCompatibility_certifiedForBSD

/--
The packed smooth BSD input carries Taylor-expansion/leading-coefficient
provenance for the second BSD part.
-/
theorem PackedSmoothBSDTheoremInput.leadingCoefficient_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ LC : LeadingCoefficientCertificate
      P.input.L P.input.smoothMW.MW
      P.input.conjecture.first P.input.conjecture.second,
      LC.certifiedForBSD :=
  P.input.leadingCoefficient_certifiedForBSD

/--
The packed smooth BSD input ties the leading coefficient to the same analytic
germ as the Euler-product/Dirichlet-series and completed-normalization package.
-/
theorem PackedSmoothBSDTheoremInput.leadingCoefficientAnalyticNormalization_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ LC : LeadingCoefficientCertificate
      P.input.L P.input.smoothMW.MW
      P.input.conjecture.first P.input.conjecture.second,
      LC.certifiedForBSD ∧
      ∃ A : LeadingCoefficientAnalyticNormalizationCertificate
        P.input.L P.input.smoothMW.MW
        P.input.conjecture.first P.input.conjecture.second
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula LC,
        A.certifiedForBSD :=
  P.input.leadingCoefficientAnalyticNormalization_certifiedForBSD

/--
The packed smooth BSD input carries archimedean period/Neron-differential
provenance for the second BSD part.
-/
theorem PackedSmoothBSDTheoremInput.periodProduct_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ PP : PeriodProductCertificate
      P.input.smoothMW P.input.baseNumberField P.input.conjecture.second,
      PP.certifiedForBSD :=
  P.input.periodProduct_certifiedForBSD

/--
The packed smooth BSD input carries Tate-Shafarevich group/order provenance for
the second BSD part.
-/
theorem PackedSmoothBSDTheoremInput.tateShafarevich_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ T : TateShafarevichComponentCertificate
      P.input.smoothMW P.input.conjecture.second,
      T.certifiedForBSD :=
  P.input.tateShafarevich_certifiedForBSD

/--
The packed smooth BSD input carries Mordell-Weil torsion-subgroup/order
provenance for the second BSD part.
-/
theorem PackedSmoothBSDTheoremInput.torsionOrder_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ T : TorsionOrderCertificate
      P.input.smoothMW P.input.conjecture.second,
      T.certifiedForBSD :=
  P.input.torsionOrder_certifiedForBSD

/--
The packed smooth BSD input carries one assembly certificate for the normalized
second-part leading-coefficient identity.
-/
theorem PackedSmoothBSDTheoremInput.secondPartAssembly_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : BSDSecondPartAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.conjecture.first P.input.conjecture.second,
      A.certifiedForBSD :=
  P.input.secondPartAssembly_certifiedForBSD

/--
The packed smooth BSD theorem input carries global theorem-assembly provenance.
-/
theorem PackedSmoothBSDTheoremInput.theoremAssembly_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : BSDTheoremAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.conjecture P.input.input,
      A.certifiedForBSD :=
  P.input.theoremAssembly_certifiedForBSD

/--
The packed smooth BSD theorem input carries theorem/analytic-object coherence.
-/
theorem PackedSmoothBSDTheoremInput.theoremAnalyticObjectCoherence_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ T : BSDTheoremAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.conjecture P.input.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L,
        A.certifiedForBSD ∧
        ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
          P.input.L P.input.smoothMW P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.conjecture P.input.input T A,
          Q.certifiedForBSD :=
  P.input.theoremAnalyticObjectCoherence_certifiedForBSD

/--
The packed smooth BSD theorem input carries theorem/unique-continuation
coherence.
-/
theorem PackedSmoothBSDTheoremInput.theoremAnalyticContinuationUniquenessCoherence_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ T : BSDTheoremAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.conjecture P.input.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        P.input.baseNumberField P.input.baseNumberFieldPlaceProductFormula
        P.input.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          P.input.baseNumberField P.input.baseNumberFieldPlaceProductFormula
          P.input.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            P.input.L P.input.smoothMW P.input.baseNumberField
            P.input.baseNumberFieldPlaceProductFormula
            P.input.conjecture P.input.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              P.input.L P.input.smoothMW P.input.baseNumberField
              P.input.baseNumberFieldPlaceProductFormula
              P.input.conjecture P.input.input T A U Q,
              R.certifiedForBSD :=
  P.input.theoremAnalyticContinuationUniquenessCoherence_certifiedForBSD

/--
The packed smooth BSD theorem input carries theorem/automorphic-provenance
coherence.
-/
theorem PackedSmoothBSDTheoremInput.theoremAutomorphicProvenanceCoherence_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ T : BSDTheoremAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.conjecture P.input.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            P.input.L P.input.smoothMW P.input.baseNumberField
            P.input.baseNumberFieldPlaceProductFormula
            P.input.conjecture P.input.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              P.input.L P.input.smoothMW P.input.baseNumberField
              P.input.baseNumberFieldPlaceProductFormula
              P.input.conjecture P.input.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                P.input.baseNumberField
                P.input.baseNumberFieldPlaceProductFormula
                P.input.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  P.input.L P.input.smoothMW P.input.baseNumberField
                  P.input.baseNumberFieldPlaceProductFormula
                  P.input.conjecture P.input.input T A U Q R AP,
                  Z.certifiedForBSD :=
  P.input.theoremAutomorphicProvenanceCoherence_certifiedForBSD

/--
The packed smooth BSD theorem input carries theorem/automorphic-scope coherence.
-/
theorem PackedSmoothBSDTheoremInput.theoremAutomorphicScopeCoherence_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ T : BSDTheoremAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.conjecture P.input.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            P.input.L P.input.smoothMW P.input.baseNumberField
            P.input.baseNumberFieldPlaceProductFormula
            P.input.conjecture P.input.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              P.input.L P.input.smoothMW P.input.baseNumberField
              P.input.baseNumberFieldPlaceProductFormula
              P.input.conjecture P.input.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                P.input.baseNumberField
                P.input.baseNumberFieldPlaceProductFormula
                P.input.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  P.input.L P.input.smoothMW P.input.baseNumberField
                  P.input.baseNumberFieldPlaceProductFormula
                  P.input.conjecture P.input.input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    P.input.baseNumberField
                    P.input.baseNumberFieldPlaceProductFormula
                    P.input.L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      P.input.L P.input.smoothMW P.input.baseNumberField
                      P.input.baseNumberFieldPlaceProductFormula
                      P.input.conjecture P.input.input T A U Q R AP Z SC,
                      Y.certifiedForBSD :=
  P.input.theoremAutomorphicScopeCoherence_certifiedForBSD

/--
The packed smooth BSD theorem input carries theorem/typed-automorphic-object
coherence.
-/
theorem PackedSmoothBSDTheoremInput.theoremAutomorphicObjectCoherence_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ T : BSDTheoremAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.conjecture P.input.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            P.input.L P.input.smoothMW P.input.baseNumberField
            P.input.baseNumberFieldPlaceProductFormula
            P.input.conjecture P.input.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              P.input.L P.input.smoothMW P.input.baseNumberField
              P.input.baseNumberFieldPlaceProductFormula
              P.input.conjecture P.input.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                P.input.baseNumberField
                P.input.baseNumberFieldPlaceProductFormula
                P.input.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  P.input.L P.input.smoothMW P.input.baseNumberField
                  P.input.baseNumberFieldPlaceProductFormula
                  P.input.conjecture P.input.input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    P.input.baseNumberField
                    P.input.baseNumberFieldPlaceProductFormula
                    P.input.L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      P.input.L P.input.smoothMW P.input.baseNumberField
                      P.input.baseNumberFieldPlaceProductFormula
                      P.input.conjecture P.input.input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ O : HasseWeilAutomorphicObjectCompatibilityCertificate
                        P.input.baseNumberField
                        P.input.baseNumberFieldPlaceProductFormula
                        P.input.L AP,
                        O.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          P.input.L P.input.smoothMW P.input.baseNumberField
                          P.input.baseNumberFieldPlaceProductFormula
                          P.input.conjecture P.input.input T A U Q R AP Z SC Y O,
                          W.certifiedForBSD :=
  P.input.theoremAutomorphicObjectCoherence_certifiedForBSD

/--
The packed smooth BSD theorem input carries theorem/automorphic-object-kind
coherence.
-/
theorem PackedSmoothBSDTheoremInput.theoremAutomorphicObjectKindCoherence_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ T : BSDTheoremAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.conjecture P.input.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            P.input.L P.input.smoothMW P.input.baseNumberField
            P.input.baseNumberFieldPlaceProductFormula
            P.input.conjecture P.input.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              P.input.L P.input.smoothMW P.input.baseNumberField
              P.input.baseNumberFieldPlaceProductFormula
              P.input.conjecture P.input.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                P.input.baseNumberField
                P.input.baseNumberFieldPlaceProductFormula
                P.input.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  P.input.L P.input.smoothMW P.input.baseNumberField
                  P.input.baseNumberFieldPlaceProductFormula
                  P.input.conjecture P.input.input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    P.input.baseNumberField
                    P.input.baseNumberFieldPlaceProductFormula
                    P.input.L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      P.input.L P.input.smoothMW P.input.baseNumberField
                      P.input.baseNumberFieldPlaceProductFormula
                      P.input.conjecture P.input.input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
                        P.input.baseNumberField
                        P.input.baseNumberFieldPlaceProductFormula
                        P.input.L AP,
                        Knd.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          P.input.L P.input.smoothMW P.input.baseNumberField
                          P.input.baseNumberFieldPlaceProductFormula
                          P.input.conjecture P.input.input T A U Q R AP Z SC Y
                          Knd.objectCompatibility,
                          W.certifiedForBSD ∧
                          ∃ V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
                            P.input.L P.input.smoothMW P.input.baseNumberField
                            P.input.baseNumberFieldPlaceProductFormula
                            P.input.conjecture P.input.input T A U Q R AP Z SC Y Knd W,
                            V.certifiedForBSD :=
  P.input.theoremAutomorphicObjectKindCoherence_certifiedForBSD

/--
The packed smooth BSD theorem input carries theorem-level coherence for the typed
automorphic analytic-source kind.
-/
theorem PackedSmoothBSDTheoremInput.theoremAutomorphicAnalyticSourceKindCoherence_certifiedForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ T : BSDTheoremAssemblyCertificate
      P.input.L P.input.smoothMW P.input.baseNumberField
      P.input.baseNumberFieldPlaceProductFormula
      P.input.conjecture P.input.input,
      T.certifiedForBSD ∧
      ∃ A : HasseWeilAnalyticFunctionInterfaceCertificate
        P.input.baseNumberField
        P.input.baseNumberFieldPlaceProductFormula
        P.input.L,
        A.certifiedForBSD ∧
        ∃ U : HasseWeilAnalyticContinuationUniquenessCertificate
          P.input.baseNumberField
          P.input.baseNumberFieldPlaceProductFormula
          P.input.L A,
          U.certifiedForBSD ∧
          ∃ Q : BSDTheoremAnalyticObjectCoherenceCertificate
            P.input.L P.input.smoothMW
            P.input.baseNumberField
            P.input.baseNumberFieldPlaceProductFormula
            P.input.conjecture P.input.input T A,
            Q.certifiedForBSD ∧
            ∃ R : BSDTheoremAnalyticContinuationUniquenessCoherenceCertificate
              P.input.L P.input.smoothMW
              P.input.baseNumberField
              P.input.baseNumberFieldPlaceProductFormula
              P.input.conjecture P.input.input T A U Q,
              R.certifiedForBSD ∧
              ∃ AP : HasseWeilAutomorphicProvenanceCertificate
                P.input.baseNumberField
                P.input.baseNumberFieldPlaceProductFormula
                P.input.L,
                AP.certifiedForBSD ∧
                ∃ Z : BSDTheoremAutomorphicProvenanceCoherenceCertificate
                  P.input.L P.input.smoothMW
                  P.input.baseNumberField
                  P.input.baseNumberFieldPlaceProductFormula
                  P.input.conjecture P.input.input T A U Q R AP,
                  Z.certifiedForBSD ∧
                  ∃ SC : HasseWeilAutomorphicScopeCompatibilityCertificate
                    P.input.baseNumberField
                    P.input.baseNumberFieldPlaceProductFormula
                    P.input.L AP,
                    SC.certifiedForBSD ∧
                    ∃ Y : BSDTheoremAutomorphicScopeCoherenceCertificate
                      P.input.L P.input.smoothMW
                      P.input.baseNumberField
                      P.input.baseNumberFieldPlaceProductFormula
                      P.input.conjecture P.input.input T A U Q R AP Z SC,
                      Y.certifiedForBSD ∧
                      ∃ Knd : HasseWeilAutomorphicObjectKindCompatibilityCertificate
                        P.input.baseNumberField
                        P.input.baseNumberFieldPlaceProductFormula
                        P.input.L AP,
                        Knd.certifiedForBSD ∧
                        ∃ W : BSDTheoremAutomorphicObjectCoherenceCertificate
                          P.input.L P.input.smoothMW
                          P.input.baseNumberField
                          P.input.baseNumberFieldPlaceProductFormula
                          P.input.conjecture P.input.input T A U Q R AP Z SC Y
                          Knd.objectCompatibility,
                          W.certifiedForBSD ∧
                          ∃ V : BSDTheoremAutomorphicObjectKindCoherenceCertificate
                            P.input.L P.input.smoothMW
                            P.input.baseNumberField
                            P.input.baseNumberFieldPlaceProductFormula
                            P.input.conjecture P.input.input T A U Q R AP Z SC Y Knd W,
                            V.certifiedForBSD ∧
                            ∃ Src : HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate
                              P.input.baseNumberField
                              P.input.baseNumberFieldPlaceProductFormula
                              P.input.L AP Knd,
                              Src.certifiedForBSD ∧
                              ∃ AS : BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate
                                P.input.L P.input.smoothMW
                                P.input.baseNumberField
                                P.input.baseNumberFieldPlaceProductFormula
                                P.input.conjecture P.input.input T A U Q R AP Z SC Y Knd W V Src,
                                AS.certifiedForBSD :=
  P.input.theoremAutomorphicAnalyticSourceKindCoherence_certifiedForBSD

/-- The packed smooth BSD input carries BSD-quality analytic continuation data. -/
theorem PackedSmoothBSDTheoremInput.has_certifiedAnalyticContinuationForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ A : AnalyticContinuationCertificate P.input.L,
      P.input.conjecture.assumptions.analyticContinuation? = some A ∧
      A.certifiedForBSD :=
  P.input.has_certifiedAnalyticContinuationForBSD

/-- The packed smooth BSD input carries BSD-quality functional equation data. -/
theorem PackedSmoothBSDTheoremInput.has_certifiedFunctionalEquationForBSD
    (P : PackedSmoothBSDTheoremInput.{u}) :
    ∃ F : FunctionalEquationCertificate P.input.L,
      P.input.conjecture.assumptions.functionalEquation? = some F ∧
      F.certifiedForBSD :=
  P.input.has_certifiedFunctionalEquationForBSD

/--
A readiness seed for downstream dashboards.

`theoremInputAvailable` records that some BSD certificate input was supplied.
`smoothTheoremInputAvailable` records that the input is tied to a smooth lawful
short-Weierstrass curve and smooth Mordell-Weil gate.
-/
structure BSDTheoremSeed where
  theoremInputAvailable : Prop
  smoothTheoremInputAvailable : Prop
  sourceDescription : String
  boundary : List String

/-- A theorem seed produced from an actual raw BSD theorem input. -/
def BSDTheoremSeed.fromInput
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    {C : Conjecture L MW}
    (_I : BSDTheoremInput C) :
    BSDTheoremSeed where
  theoremInputAvailable := True
  smoothTheoremInputAvailable := False
  sourceDescription := "Raw BSD theorem input wraps a supplied BSDCertificate."
  boundary := [
    "This seed records that a BSDCertificate object was supplied.",
    "It does not certify the smooth lawful curve or smooth Mordell-Weil gates."
  ]

/-- A theorem seed produced from a raw packed BSD theorem input. -/
def BSDTheoremSeed.fromPackedInput
    (_I : PackedBSDTheoremInput.{u}) :
    BSDTheoremSeed where
  theoremInputAvailable := True
  smoothTheoremInputAvailable := False
  sourceDescription := "Raw packed BSD theorem input wraps a supplied BSDCertificate."
  boundary := [
    "This seed records that a packed BSD theorem input was supplied.",
    "It does not certify the smooth lawful curve or smooth Mordell-Weil gates."
  ]

/-- A theorem seed produced from a smooth BSD theorem input. -/
def BSDTheoremSeed.fromSmoothInput
    {C : LawfulShortWeierstrass.{u}}
    (_S : SmoothBSDTheoremInput C) :
    BSDTheoremSeed where
  theoremInputAvailable := True
  smoothTheoremInputAvailable := True
  sourceDescription := "Smooth BSD theorem input wraps a supplied BSDCertificate and smooth Mordell-Weil gate."
  boundary := [
    "This seed records that a smooth BSD theorem input was supplied.",
    "It does not construct BSD; the enclosed BSDCertificate remains the authority."
  ]

/-- A theorem seed produced from a packed smooth BSD theorem input. -/
def BSDTheoremSeed.fromPackedSmoothInput
    (_I : PackedSmoothBSDTheoremInput.{u}) :
    BSDTheoremSeed where
  theoremInputAvailable := True
  smoothTheoremInputAvailable := True
  sourceDescription := "Packed smooth BSD theorem input wraps a supplied BSDCertificate and smooth Mordell-Weil gate."
  boundary := [
    "This seed records that a packed smooth BSD theorem input was supplied.",
    "It does not construct BSD; the enclosed BSDCertificate remains the authority."
  ]

theorem BSDTheoremInput.firstPart
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    {C : Conjecture L MW}
    (I : BSDTheoremInput C) :
    firstPart C.first :=
  I.certificate.firstPartCertified

theorem BSDTheoremInput.secondPart
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    {C : Conjecture L MW}
    (I : BSDTheoremInput C) :
    secondPart C.second :=
  I.certificate.secondPartCertified

theorem PackedBSDTheoremInput.firstPart
    (I : PackedBSDTheoremInput.{u}) :
    firstPart I.conjecture.first :=
  I.input.firstPart

theorem PackedBSDTheoremInput.secondPart
    (I : PackedBSDTheoremInput.{u}) :
    secondPart I.conjecture.second :=
  I.input.secondPart

theorem firstPart_fromCertificate
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    {C : Conjecture L MW}
    (B : BSDCertificate C) :
    firstPart C.first :=
  B.firstPartCertified

theorem secondPart_fromCertificate
    {L : HasseWeilLFunction K E}
    {MW : MordellWeilGroup.{u}}
    {C : Conjecture L MW}
    (B : BSDCertificate C) :
    secondPart C.second :=
  B.secondPartCertified
end BSD
end EllipticCurve
end Surface.Arithmetic

