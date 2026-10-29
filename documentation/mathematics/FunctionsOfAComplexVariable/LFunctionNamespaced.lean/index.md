# LFunction Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**176 observed declarations and anonymous commands**, 56 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71bbf346b0fa6dca7768cb204fefec97a1d230e4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionsOfAComplexVariable/LFunctionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [SymbolicComplexPoint](declarations/symboliccomplexpoint.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [SymbolicComplexVariable](declarations/symboliccomplexvariable.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [SymbolicComplexVariable.sEqOne](declarations/symboliccomplexvariable-seqone.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [SymbolicComplexVariable.sEqOne_point](declarations/symboliccomplexvariable-seqone-point.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [LocalEulerFactorShape](declarations/localeulerfactorshape.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [LocalEulerFactorSourceStatus](declarations/localeulerfactorsourcestatus.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [LocalEulerFactor](declarations/localeulerfactor.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [BadReductionCertificate](declarations/badreductioncertificate.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [GoodReductionLocalFactorCertificate](declarations/goodreductionlocalfactorcertificate.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [goodFactor](declarations/goodfactor.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [goodFactorFromCertificate](declarations/goodfactorfromcertificate.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [badFactor](declarations/badfactor.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [goodFactor_shape](declarations/goodfactor-shape.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [goodFactor_goodReduction](declarations/goodfactor-goodreduction.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [LocalEulerFactor.certifiedForBSD](declarations/localeulerfactor-certifiedforbsd.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [goodFactorFromCertificate_certifiedForBSD](declarations/goodfactorfromcertificate-certifiedforbsd.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [badFactor_certifiedForBSD](declarations/badfactor-certifiedforbsd.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [FinitePlaceDescriptor](declarations/finiteplacedescriptor.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [LocalEulerFactorFinitePlaceCertificate](declarations/localeulerfactorfiniteplacecertificate.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [LocalEulerFactorFinitePlaceCertificate.certifiedForBSD](declarations/localeulerfactorfiniteplacecertificate-certifiedforbsd.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [LocalEulerFactorFinitePlaceCertificate.certifiedForBSD_of_fields](declarations/localeulerfactorfiniteplacecertificate-certifiedforbsd-of-fields.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [LocalEulerFactorFinitePlaceCertificate.residueCharacteristicPrime_of_certifiedForBSD](declarations/localeulerfactorfiniteplacecertificate-residuecharacteristicprime-of-cer.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [LocalEulerFactorFinitePlaceCertificate.primeMatchesResidueCharacteristic_of_certifiedForBSD](declarations/localeulerfactorfiniteplacecertificate-primematchesresiduecharacteristic.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [LocalEulerFactorFinitePlaceCertificate.factorCertified_of_certifiedForBSD](declarations/localeulerfactorfiniteplacecertificate-factorcertified-of-certifiedforbs.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [ResidueFieldNormData](declarations/residuefieldnormdata.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `inductive` | [AnalyticCertificateSourceStatus](declarations/analyticcertificatesourcestatus.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [LocalEulerFactorResidueNormCertificate](declarations/localeulerfactorresiduenormcertificate.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [LocalEulerFactorResidueNormCertificate.certifiedForBSD](declarations/localeulerfactorresiduenormcertificate-certifiedforbsd.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [LocalEulerFactorResidueNormCertificate.certifiedForBSD_of_fields](declarations/localeulerfactorresiduenormcertificate-certifiedforbsd-of-fields.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [LocalEulerFactorResidueNormCertificate.localNorm_eq_cardinality](declarations/localeulerfactorresiduenormcertificate-localnorm-eq-cardinality.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [LocalEulerFactorResidueNormCertificate.residueNorm_cardinalityPositive](declarations/localeulerfactorresiduenormcertificate-residuenorm-cardinalitypositive.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `inductive` | [ConductorMetadataStatus](declarations/conductormetadatastatus.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `inductive` | [GammaFactorMetadataStatus](declarations/gammafactormetadatastatus.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `inductive` | [CompletedLFunctionShape](declarations/completedlfunctionshape.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [CompletedLFunctionShape.certifiedForBSD](declarations/completedlfunctionshape-certifiedforbsd.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [HasseWeilLFunction](declarations/hasseweillfunction.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [completedShape_visible](declarations/completedshape-visible.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [HasseWeilLFunction.localFactorsCertifiedForBSD](declarations/hasseweillfunction-localfactorscertifiedforbsd.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [HasseWeilLFunction.certifiedForBSD](declarations/hasseweillfunction-certifiedforbsd.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [HasseWeilResidueNormCompatibilityCertificate](declarations/hasseweilresiduenormcompatibilitycertificate.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [HasseWeilResidueNormCompatibilityCertificate.certifiedForBSD](declarations/hasseweilresiduenormcompatibilitycertificate-certifiedforbsd.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasseWeilResidueNormCompatibilityCertificate.certifiedForBSD_of_fields](declarations/hasseweilresiduenormcompatibilitycertificate-certifiedforbsd-of-fields.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [ArchimedeanGammaFactorData](declarations/archimedeangammafactordata.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [HasseWeilArchimedeanGammaFactorCertificate](declarations/hasseweilarchimedeangammafactorcertificate.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [HasseWeilArchimedeanGammaFactorCertificate.certifiedForBSD](declarations/hasseweilarchimedeangammafactorcertificate-certifiedforbsd.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [HasseWeilArchimedeanGammaFactorCertificate.certifiedForBSD_of_fields](declarations/hasseweilarchimedeangammafactorcertificate-certifiedforbsd-of-fields.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [HasseWeilArchimedeanGammaFactorCertificate.realGammaFactorCompatible](declarations/hasseweilarchimedeangammafactorcertificate-realgammafactorcompatible.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [HasseWeilArchimedeanGammaFactorCertificate.complexGammaFactorCompatible](declarations/hasseweilarchimedeangammafactorcertificate-complexgammafactorcompatible.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `inductive` | [AnalyticContinuationDomain](declarations/analyticcontinuationdomain.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `inductive` | [AnalyticContinuationKind](declarations/analyticcontinuationkind.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [GoodReductionPointCountData](declarations/goodreductionpointcountdata.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `structure` | [GoodReductionPointCountCertificate](declarations/goodreductionpointcountcertificate.md) | 713 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [GoodReductionPointCountCertificate.certifiedForBSD](declarations/goodreductionpointcountcertificate-certifiedforbsd.md) | 731 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [GoodReductionPointCountCertificate.certifiedForBSD_of_fields](declarations/goodreductionpointcountcertificate-certifiedforbsd-of-fields.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [GoodReductionPointCountCertificate.frobeniusTrace_eq_localFactorAp](declarations/goodreductionpointcountcertificate-frobeniustrace-eq-localfactorap.md) | 769 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [GoodReductionPointCountCertificate.pointCountFormula](declarations/goodreductionpointcountcertificate-pointcountformula.md) | 778 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `structure` | [HasseWeilPointCountCompatibilityCertificate](declarations/hasseweilpointcountcompatibilitycertificate.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [HasseWeilPointCountCompatibilityCertificate.certifiedForBSD](declarations/hasseweilpointcountcompatibilitycertificate-certifiedforbsd.md) | 814 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [HasseWeilPointCountCompatibilityCertificate.certifiedForBSD_of_fields](declarations/hasseweilpointcountcompatibilitycertificate-certifiedforbsd-of-fields.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `inductive` | [LocalReductionType](declarations/localreductiontype.md) | 847 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `structure` | [LocalConductorExponentCertificate](declarations/localconductorexponentcertificate.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [LocalConductorExponentCertificate.certifiedForBSD](declarations/localconductorexponentcertificate-certifiedforbsd.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [LocalConductorExponentCertificate.certifiedForBSD_of_fields](declarations/localconductorexponentcertificate-certifiedforbsd-of-fields.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [LocalConductorExponentCertificate.finitePlace_certifiedForBSD](declarations/localconductorexponentcertificate-finiteplace-certifiedforbsd.md) | 904 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `structure` | [ConductorLocalCompatibilityCertificate](declarations/conductorlocalcompatibilitycertificate.md) | 920 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [ConductorLocalCompatibilityCertificate.certifiedForBSD](declarations/conductorlocalcompatibilitycertificate-certifiedforbsd.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [ConductorLocalCompatibilityCertificate.certifiedForBSD_of_fields](declarations/conductorlocalcompatibilitycertificate-certifiedforbsd-of-fields.md) | 963 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [ConductorLocalCompatibilityCertificate.conductorSupplied_of_certifiedForBSD](declarations/conductorlocalcompatibilitycertificate-conductorsupplied-of-certifiedfor.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [ConductorLocalCompatibilityCertificate.localFactorsCompatible_of_certifiedForBSD](declarations/conductorlocalcompatibilitycertificate-localfactorscompatible-of-certifi.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [ConductorLocalCompatibilityCertificate.localConductorExponentsCompatible_of_certifiedForBSD](declarations/conductorlocalcompatibilitycertificate-localconductorexponentscompatible.md) | 1007 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `structure` | [GlobalConductorData](declarations/globalconductordata.md) | 1026 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `structure` | [GlobalConductorDescriptor](declarations/globalconductordescriptor.md) | 1044 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `structure` | [MinimalModelNeronData](declarations/minimalmodelnerondata.md) | 1057 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `structure` | [MinimalModelConductorProvenanceCertificate](declarations/minimalmodelconductorprovenancecertificate.md) | 1076 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [MinimalModelConductorProvenanceCertificate.certifiedForBSD](declarations/minimalmodelconductorprovenancecertificate-certifiedforbsd.md) | 1089 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [MinimalModelConductorProvenanceCertificate.certifiedForBSD_of_fields](declarations/minimalmodelconductorprovenancecertificate-certifiedforbsd-of-fields.md) | 1099 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [MinimalModelConductorProvenanceCertificate.localMinimalityAtFinitePlaces](declarations/minimalmodelconductorprovenancecertificate-localminimalityatfiniteplaces.md) | 1114 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [GlobalConductorDescriptor.finiteSupport](declarations/globalconductordescriptor-finitesupport.md) | 1122 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `structure` | [BadReductionLocalFactorData](declarations/badreductionlocalfactordata.md) | 1137 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `structure` | [BadReductionLocalFactorArithmeticCertificate](declarations/badreductionlocalfactorarithmeticcertificate.md) | 1171 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [BadReductionLocalFactorArithmeticCertificate.certifiedForBSD](declarations/badreductionlocalfactorarithmeticcertificate-certifiedforbsd.md) | 1206 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [BadReductionLocalFactorArithmeticCertificate.certifiedForBSD_of_fields](declarations/badreductionlocalfactorarithmeticcertificate-certifiedforbsd-of-fields.md) | 1226 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `structure` | [HasseWeilBadReductionCompatibilityCertificate](declarations/hasseweilbadreductioncompatibilitycertificate.md) | 1254 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [HasseWeilBadReductionCompatibilityCertificate.certifiedForBSD](declarations/hasseweilbadreductioncompatibilitycertificate-certifiedforbsd.md) | 1278 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [HasseWeilBadReductionCompatibilityCertificate.certifiedForBSD_of_fields](declarations/hasseweilbadreductioncompatibilitycertificate-certifiedforbsd-of-fields.md) | 1295 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `inductive` | [BadReductionKind](declarations/badreductionkind.md) | 1313 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `inductive` | [BadReductionEulerFactorShape](declarations/badreductioneulerfactorshape.md) | 1322 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `structure` | [TypedBadReductionLocalFactorShapeCertificate](declarations/typedbadreductionlocalfactorshapecertificate.md) | 1336 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [TypedBadReductionLocalFactorShapeCertificate.certifiedForBSD](declarations/typedbadreductionlocalfactorshapecertificate-certifiedforbsd.md) | 1368 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [TypedBadReductionLocalFactorShapeCertificate.certifiedForBSD_of_fields](declarations/typedbadreductionlocalfactorshapecertificate-certifiedforbsd-of-fields.md) | 1384 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `structure` | [HasseWeilTypedBadReductionShapeCompatibilityCertificate](declarations/hasseweiltypedbadreductionshapecompatibilitycertificate.md) | 1408 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [HasseWeilTypedBadReductionShapeCompatibilityCertificate.certifiedForBSD](declarations/hasseweiltypedbadreductionshapecompatibilitycertificate-certifiedforbsd-source-edition-2.md) | 1435 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [HasseWeilTypedBadReductionShapeCompatibilityCertificate.certifiedForBSD_of_fields](declarations/hasseweiltypedbadreductionshapecompatibilitycertificate-certifiedforbsd.md) | 1453 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `structure` | [GlobalConductorAssemblyCertificate](declarations/globalconductorassemblycertificate.md) | 1478 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [GlobalConductorAssemblyCertificate.certifiedForBSD](declarations/globalconductorassemblycertificate-certifiedforbsd.md) | 1503 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `theorem` | [GlobalConductorAssemblyCertificate.certifiedForBSD_of_fields](declarations/globalconductorassemblycertificate-certifiedforbsd-of-fields.md) | 1517 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `theorem` | [GlobalConductorAssemblyCertificate.conductorLocal_certifiedForBSD](declarations/globalconductorassemblycertificate-conductorlocal-certifiedforbsd.md) | 1539 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `theorem` | [GlobalConductorAssemblyCertificate.localExponentsAssembleConductor_of_certifiedForBSD](declarations/globalconductorassemblycertificate-localexponentsassembleconductor-of-ce.md) | 1549 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `theorem` | [GlobalConductorAssemblyCertificate.minimalModelProvenance_certifiedForBSD](declarations/globalconductorassemblycertificate-minimalmodelprovenance-certifiedforbs.md) | 1559 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `structure` | [EulerProductCoverageCertificate](declarations/eulerproductcoveragecertificate.md) | 1575 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [EulerProductCoverageCertificate.certifiedForBSD](declarations/eulerproductcoveragecertificate-certifiedforbsd.md) | 1591 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `theorem` | [EulerProductCoverageCertificate.certifiedForBSD_of_source](declarations/eulerproductcoveragecertificate-certifiedforbsd-of-source.md) | 1601 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `inductive` | [CoefficientNormalization](declarations/coefficientnormalization.md) | 1617 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `structure` | [DirichletCoefficientData](declarations/dirichletcoefficientdata.md) | 1629 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `structure` | [DirichletCoefficientSystemCertificate](declarations/dirichletcoefficientsystemcertificate.md) | 1670 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [DirichletCoefficientSystemCertificate.certifiedForBSD](declarations/dirichletcoefficientsystemcertificate-certifiedforbsd.md) | 1697 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `theorem` | [DirichletCoefficientSystemCertificate.certifiedForBSD_of_fields](declarations/dirichletcoefficientsystemcertificate-certifiedforbsd-of-fields.md) | 1717 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `inductive` | [EulerProductConvergenceRegion](declarations/eulerproductconvergenceregion.md) | 1740 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `structure` | [EulerProductDirichletConvergenceData](declarations/eulerproductdirichletconvergencedata.md) | 1753 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `structure` | [EulerProductDirichletSeriesCompatibilityCertificate](declarations/eulerproductdirichletseriescompatibilitycertificate.md) | 1791 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [EulerProductDirichletSeriesCompatibilityCertificate.certifiedForBSD](declarations/eulerproductdirichletseriescompatibilitycertificate-certifiedforbsd.md) | 1831 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `theorem` | [EulerProductDirichletSeriesCompatibilityCertificate.certifiedForBSD_of_fields](declarations/eulerproductdirichletseriescompatibilitycertificate-certifiedforbsd-of-f.md) | 1856 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `inductive` | [FunctionalEquationCenter](declarations/functionalequationcenter.md) | 1882 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `inductive` | [FunctionalEquationSign](declarations/functionalequationsign.md) | 1889 | `BLOCKED_NATIVE_ADMISSION` |
| 115 | `def` | [FunctionalEquationSign.certifiedOrExplicit](declarations/functionalequationsign-certifiedorexplicit.md) | 1897 | `BLOCKED_NATIVE_ADMISSION` |
| 116 | `inductive` | [CompletedEquationShape](declarations/completedequationshape.md) | 1903 | `BLOCKED_NATIVE_ADMISSION` |
| 117 | `structure` | [AnalyticContinuationCertificate](declarations/analyticcontinuationcertificate.md) | 1910 | `BLOCKED_NATIVE_ADMISSION` |
| 118 | `structure` | [FunctionalEquationCertificate](declarations/functionalequationcertificate.md) | 1918 | `BLOCKED_NATIVE_ADMISSION` |
| 119 | `def` | [AnalyticContinuationCertificate.certifiedForBSD](declarations/analyticcontinuationcertificate-certifiedforbsd.md) | 1931 | `BLOCKED_NATIVE_ADMISSION` |
| 120 | `def` | [FunctionalEquationCertificate.certifiedForBSD](declarations/functionalequationcertificate-certifiedforbsd.md) | 1943 | `BLOCKED_NATIVE_ADMISSION` |
| 121 | `structure` | [RootNumberData](declarations/rootnumberdata.md) | 1959 | `BLOCKED_NATIVE_ADMISSION` |
| 122 | `structure` | [CompletedFunctionalEquationNormalizationCertificate](declarations/completedfunctionalequationnormalizationcertificate.md) | 1983 | `BLOCKED_NATIVE_ADMISSION` |
| 123 | `def` | [CompletedFunctionalEquationNormalizationCertificate.certifiedForBSD](declarations/completedfunctionalequationnormalizationcertificate-certifiedforbsd.md) | 2029 | `BLOCKED_NATIVE_ADMISSION` |
| 124 | `theorem` | [CompletedFunctionalEquationNormalizationCertificate.certifiedForBSD_of_fields](declarations/completedfunctionalequationnormalizationcertificate-certifiedforbsd-of-f.md) | 2053 | `BLOCKED_NATIVE_ADMISSION` |
| 125 | `inductive` | [HasseWeilAnalyticObjectKind](declarations/hasseweilanalyticobjectkind.md) | 2081 | `BLOCKED_NATIVE_ADMISSION` |
| 126 | `structure` | [HasseWeilAnalyticObjectData](declarations/hasseweilanalyticobjectdata.md) | 2094 | `BLOCKED_NATIVE_ADMISSION` |
| 127 | `structure` | [CentralGermAtSEqOneData](declarations/centralgermatseqonedata.md) | 2124 | `BLOCKED_NATIVE_ADMISSION` |
| 128 | `structure` | [HasseWeilAnalyticFunctionInterfaceCertificate](declarations/hasseweilanalyticfunctioninterfacecertificate.md) | 2158 | `BLOCKED_NATIVE_ADMISSION` |
| 129 | `def` | [HasseWeilAnalyticFunctionInterfaceCertificate.certifiedForBSD](declarations/hasseweilanalyticfunctioninterfacecertificate-certifiedforbsd.md) | 2211 | `BLOCKED_NATIVE_ADMISSION` |
| 130 | `theorem` | [HasseWeilAnalyticFunctionInterfaceCertificate.certifiedForBSD_of_fields](declarations/hasseweilanalyticfunctioninterfacecertificate-certifiedforbsd-of-fields.md) | 2237 | `BLOCKED_NATIVE_ADMISSION` |
| 131 | `structure` | [HasseWeilAnalyticContinuationUniquenessCertificate](declarations/hasseweilanalyticcontinuationuniquenesscertificate.md) | 2278 | `BLOCKED_NATIVE_ADMISSION` |
| 132 | `def` | [HasseWeilAnalyticContinuationUniquenessCertificate.certifiedForBSD](declarations/hasseweilanalyticcontinuationuniquenesscertificate-certifiedforbsd.md) | 2335 | `BLOCKED_NATIVE_ADMISSION` |
| 133 | `theorem` | [HasseWeilAnalyticContinuationUniquenessCertificate.certifiedForBSD_of_fields](declarations/hasseweilanalyticcontinuationuniquenesscertificate-certifiedforbsd-of-fi.md) | 2357 | `BLOCKED_NATIVE_ADMISSION` |
| 134 | `inductive` | [AutomorphicProvenanceScope](declarations/automorphicprovenancescope.md) | 2388 | `BLOCKED_NATIVE_ADMISSION` |
| 135 | `structure` | [AutomorphicScopeTheoremData](declarations/automorphicscopetheoremdata.md) | 2403 | `BLOCKED_NATIVE_ADMISSION` |
| 136 | `structure` | [AutomorphicScopeSupportCertificate](declarations/automorphicscopesupportcertificate.md) | 2431 | `BLOCKED_NATIVE_ADMISSION` |
| 137 | `def` | [AutomorphicScopeSupportCertificate.certifiedForBSD](declarations/automorphicscopesupportcertificate-certifiedforbsd.md) | 2458 | `BLOCKED_NATIVE_ADMISSION` |
| 138 | `theorem` | [AutomorphicScopeSupportCertificate.certifiedForBSD_of_fields](declarations/automorphicscopesupportcertificate-certifiedforbsd-of-fields.md) | 2475 | `BLOCKED_NATIVE_ADMISSION` |
| 139 | `structure` | [AutomorphicProvenanceObjectData](declarations/automorphicprovenanceobjectdata.md) | 2505 | `BLOCKED_NATIVE_ADMISSION` |
| 140 | `structure` | [HasseWeilAutomorphicProvenanceCertificate](declarations/hasseweilautomorphicprovenancecertificate.md) | 2553 | `BLOCKED_NATIVE_ADMISSION` |
| 141 | `def` | [HasseWeilAutomorphicProvenanceCertificate.certifiedForBSD](declarations/hasseweilautomorphicprovenancecertificate-certifiedforbsd.md) | 2604 | `BLOCKED_NATIVE_ADMISSION` |
| 142 | `theorem` | [HasseWeilAutomorphicProvenanceCertificate.certifiedForBSD_of_fields](declarations/hasseweilautomorphicprovenancecertificate-certifiedforbsd-of-fields.md) | 2629 | `BLOCKED_NATIVE_ADMISSION` |
| 143 | `structure` | [HasseWeilAutomorphicScopeCompatibilityCertificate](declarations/hasseweilautomorphicscopecompatibilitycertificate.md) | 2667 | `BLOCKED_NATIVE_ADMISSION` |
| 144 | `def` | [HasseWeilAutomorphicScopeCompatibilityCertificate.certifiedForBSD](declarations/hasseweilautomorphicscopecompatibilitycertificate-certifiedforbsd.md) | 2692 | `BLOCKED_NATIVE_ADMISSION` |
| 145 | `theorem` | [HasseWeilAutomorphicScopeCompatibilityCertificate.certifiedForBSD_of_fields](declarations/hasseweilautomorphicscopecompatibilitycertificate-certifiedforbsd-of-fie.md) | 2707 | `BLOCKED_NATIVE_ADMISSION` |
| 146 | `inductive` | [AutomorphicObjectKind](declarations/automorphicobjectkind.md) | 2731 | `BLOCKED_NATIVE_ADMISSION` |
| 147 | `structure` | [AutomorphicLFunctionObjectDescriptor](declarations/automorphiclfunctionobjectdescriptor.md) | 2746 | `BLOCKED_NATIVE_ADMISSION` |
| 148 | `def` | [AutomorphicLFunctionObjectDescriptor.certifiedForBSD](declarations/automorphiclfunctionobjectdescriptor-certifiedforbsd.md) | 2826 | `BLOCKED_NATIVE_ADMISSION` |
| 149 | `theorem` | [AutomorphicLFunctionObjectDescriptor.certifiedForBSD_of_fields](declarations/automorphiclfunctionobjectdescriptor-certifiedforbsd-of-fields.md) | 2848 | `BLOCKED_NATIVE_ADMISSION` |
| 150 | `structure` | [HasseWeilAutomorphicObjectCompatibilityCertificate](declarations/hasseweilautomorphicobjectcompatibilitycertificate.md) | 2881 | `BLOCKED_NATIVE_ADMISSION` |
| 151 | `def` | [HasseWeilAutomorphicObjectCompatibilityCertificate.certifiedForBSD](declarations/hasseweilautomorphicobjectcompatibilitycertificate-certifiedforbsd.md) | 2923 | `BLOCKED_NATIVE_ADMISSION` |
| 152 | `theorem` | [HasseWeilAutomorphicObjectCompatibilityCertificate.certifiedForBSD_of_fields](declarations/hasseweilautomorphicobjectcompatibilitycertificate-certifiedforbsd-of-fi.md) | 2945 | `BLOCKED_NATIVE_ADMISSION` |
| 153 | `structure` | [AutomorphicObjectKindSupportCertificate](declarations/automorphicobjectkindsupportcertificate.md) | 2983 | `BLOCKED_NATIVE_ADMISSION` |
| 154 | `def` | [AutomorphicObjectKindSupportCertificate.certifiedForBSD](declarations/automorphicobjectkindsupportcertificate-certifiedforbsd.md) | 3021 | `BLOCKED_NATIVE_ADMISSION` |
| 155 | `theorem` | [AutomorphicObjectKindSupportCertificate.certifiedForBSD_of_fields](declarations/automorphicobjectkindsupportcertificate-certifiedforbsd-of-fields.md) | 3043 | `BLOCKED_NATIVE_ADMISSION` |
| 156 | `structure` | [HasseWeilAutomorphicObjectKindCompatibilityCertificate](declarations/hasseweilautomorphicobjectkindcompatibilitycertificate.md) | 3076 | `BLOCKED_NATIVE_ADMISSION` |
| 157 | `def` | [HasseWeilAutomorphicObjectKindCompatibilityCertificate.certifiedForBSD](declarations/hasseweilautomorphicobjectkindcompatibilitycertificate-certifiedforbsd.md) | 3105 | `BLOCKED_NATIVE_ADMISSION` |
| 158 | `theorem` | [HasseWeilAutomorphicObjectKindCompatibilityCertificate.certifiedForBSD_of_fields](declarations/hasseweilautomorphicobjectkindcompatibilitycertificate-certifiedforbsd-o.md) | 3122 | `BLOCKED_NATIVE_ADMISSION` |
| 159 | `inductive` | [AutomorphicAnalyticSourceKind](declarations/automorphicanalyticsourcekind.md) | 3149 | `BLOCKED_NATIVE_ADMISSION` |
| 160 | `structure` | [AutomorphicAnalyticSourceDescriptor](declarations/automorphicanalyticsourcedescriptor.md) | 3165 | `BLOCKED_NATIVE_ADMISSION` |
| 161 | `def` | [AutomorphicAnalyticSourceDescriptor.certifiedForBSD](declarations/automorphicanalyticsourcedescriptor-certifiedforbsd.md) | 3221 | `BLOCKED_NATIVE_ADMISSION` |
| 162 | `theorem` | [AutomorphicAnalyticSourceDescriptor.certifiedForBSD_of_fields](declarations/automorphicanalyticsourcedescriptor-certifiedforbsd-of-fields.md) | 3246 | `BLOCKED_NATIVE_ADMISSION` |
| 163 | `structure` | [HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate](declarations/hasseweilautomorphicanalyticsourcecompatibilitycertificate.md) | 3282 | `BLOCKED_NATIVE_ADMISSION` |
| 164 | `def` | [HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate.certifiedForBSD](declarations/hasseweilautomorphicanalyticsourcecompatibilitycertificate-certifiedforb-source-edition-2.md) | 3313 | `BLOCKED_NATIVE_ADMISSION` |
| 165 | `theorem` | [HasseWeilAutomorphicAnalyticSourceCompatibilityCertificate.certifiedForBSD_of_fields](declarations/hasseweilautomorphicanalyticsourcecompatibilitycertificate-certifiedforb.md) | 3333 | `BLOCKED_NATIVE_ADMISSION` |
| 166 | `structure` | [AutomorphicAnalyticSourceKindSupportCertificate](declarations/automorphicanalyticsourcekindsupportcertificate.md) | 3367 | `BLOCKED_NATIVE_ADMISSION` |
| 167 | `def` | [AutomorphicAnalyticSourceKindSupportCertificate.certifiedForBSD](declarations/automorphicanalyticsourcekindsupportcertificate-certifiedforbsd.md) | 3406 | `BLOCKED_NATIVE_ADMISSION` |
| 168 | `theorem` | [AutomorphicAnalyticSourceKindSupportCertificate.certifiedForBSD_of_fields](declarations/automorphicanalyticsourcekindsupportcertificate-certifiedforbsd-of-field.md) | 3429 | `BLOCKED_NATIVE_ADMISSION` |
| 169 | `structure` | [HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate](declarations/hasseweilautomorphicanalyticsourcekindcompatibilitycertificate.md) | 3463 | `BLOCKED_NATIVE_ADMISSION` |
| 170 | `def` | [HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate.certifiedForBSD](declarations/hasseweilautomorphicanalyticsourcekindcompatibilitycertificate-certified.md) | 3493 | `BLOCKED_NATIVE_ADMISSION` |
| 171 | `theorem` | [HasseWeilAutomorphicAnalyticSourceKindCompatibilityCertificate.certifiedForBSD_of_fields](declarations/hasseweilautomorphicanalyticsourcekindcompatibilitycertificate-certified-source-edition-2.md) | 3512 | `BLOCKED_NATIVE_ADMISSION` |
| 172 | `structure` | [OrderOfVanishingCertificate](declarations/orderofvanishingcertificate.md) | 3535 | `BLOCKED_NATIVE_ADMISSION` |
| 173 | `def` | [OrderOfVanishingCertificate.certifiedForBSD](declarations/orderofvanishingcertificate-certifiedforbsd.md) | 3548 | `BLOCKED_NATIVE_ADMISSION` |
| 174 | `theorem` | [sEqOne_point_visible](declarations/seqone-point-visible.md) | 3555 | `BLOCKED_NATIVE_ADMISSION` |
| 175 | `def` | [orderOfVanishing](declarations/orderofvanishing.md) | 3560 | `BLOCKED_NATIVE_ADMISSION` |
| 176 | `def` | [completedLFunctionShape](declarations/completedlfunctionshape-source-edition-2.md) | 3567 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0a33f0c552d8bb22ac9fcc313aca81cf2bb6208c3736a49fd0a3a54c9efa945 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/LFunction/Variantf258460504415961a5e6ec57f33cc9d2859eee5ed0adcaa22d028f63a37539c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
