# Group Law

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**88 observed declarations and anonymous commands**, 60 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `761140093e66cc83e6c64f13f018ada1046a2f3d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/DynamicalSystemsAndErgodicTheory/GroupLaw.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [GroupLawCertificate](declarations/grouplawcertificate.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [neg](declarations/neg.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [add](declarations/add.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [zero_add](declarations/zero-add.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [add_zero](declarations/add-zero.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [add_comm](declarations/add-comm.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [add_assoc](declarations/add-assoc.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [LawfulGroupLawCertificate](declarations/lawfulgrouplawcertificate.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [LawfulGroupLawCertificate.charNeTwoThree](declarations/lawfulgrouplawcertificate-charnetwothree.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [LawfulGroupLawCertificate.zero_ne_one](declarations/lawfulgrouplawcertificate-zero-ne-one.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [LawfulGroupLawCertificate.add](declarations/lawfulgrouplawcertificate-add.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [LawfulGroupLawCertificate.add_comm](declarations/lawfulgrouplawcertificate-add-comm.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [LawfulGroupLawCertificate.add_assoc](declarations/lawfulgrouplawcertificate-add-assoc.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ProjectiveWeierstrassModelData](declarations/projectiveweierstrassmodeldata.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [ProjectiveWeierstrassClosureCertificate](declarations/projectiveweierstrassclosurecertificate.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ProjectiveWeierstrassClosureCertificate.certifiedForBSD](declarations/projectiveweierstrassclosurecertificate-certifiedforbsd.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ProjectiveWeierstrassClosureCertificate.certifiedForBSD_of_fields](declarations/projectiveweierstrassclosurecertificate-certifiedforbsd-of-fields.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ProjectiveWeierstrassClosureCertificate.curvePoint_on_projectiveModel](declarations/projectiveweierstrassclosurecertificate-curvepoint-on-projectivemodel.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [ProjectiveWeierstrassClosureCertificate.infinity_on_projectiveModel](declarations/projectiveweierstrassclosurecertificate-infinity-on-projectivemodel.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ProjectiveWeierstrassClosureCertificate.curveInfinity_maps_to_pointAtInfinity](declarations/projectiveweierstrassclosurecertificate-curveinfinity-maps-to-pointatinf.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [ProjectiveLineCubicIntersectionData](declarations/projectivelinecubicintersectiondata.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [ProjectiveIntersectionMultiplicityData](declarations/projectiveintersectionmultiplicitydata.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [ProjectiveLineCubicIntersectionCertificate](declarations/projectivelinecubicintersectioncertificate.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ProjectiveLineCubicIntersectionCertificate.certifiedForBSD](declarations/projectivelinecubicintersectioncertificate-certifiedforbsd.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.certifiedForBSD_of_fields](declarations/projectivelinecubicintersectioncertificate-certifiedforbsd-of-fields.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.intersection_on_line](declarations/projectivelinecubicintersectioncertificate-intersection-on-line.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.intersection_on_cubic](declarations/projectivelinecubicintersectioncertificate-intersection-on-cubic.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.lineIntersectionCount_eq_three](declarations/projectivelinecubicintersectioncertificate-lineintersectioncount-eq-thre.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.multiplicityPositive](declarations/projectivelinecubicintersectioncertificate-multiplicitypositive.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ProjectiveLineCubicIntersectionCertificate.tangentMultiplicityPositive](declarations/projectivelinecubicintersectioncertificate-tangentmultiplicitypositive.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [ChordTangentAssociativityData](declarations/chordtangentassociativitydata.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [ChordTangentAssociativityCertificate](declarations/chordtangentassociativitycertificate.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [ChordTangentAssociativityCertificate.certifiedForBSD](declarations/chordtangentassociativitycertificate-certifiedforbsd.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [ChordTangentAssociativityCertificate.certifiedForBSD_of_fields](declarations/chordtangentassociativitycertificate-certifiedforbsd-of-fields.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [ChordTangentAssociativityCertificate.divisorLinearEquivalenceWitness](declarations/chordtangentassociativitycertificate-divisorlinearequivalencewitness.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ChordTangentAssociativityCertificate.principalDivisorLineWitness](declarations/chordtangentassociativitycertificate-principaldivisorlinewitness.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ChordTangentAssociativityCertificate.cayleyBacharachWitness](declarations/chordtangentassociativitycertificate-cayleybacharachwitness.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ChordTangentAssociativityCertificate.associativityConfigurationWitness](declarations/chordtangentassociativitycertificate-associativityconfigurationwitness.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [ChordTangentIdentityInverseCommutativityData](declarations/chordtangentidentityinversecommutativitydata.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [ChordTangentIdentityInverseCommutativityCertificate](declarations/chordtangentidentityinversecommutativitycertificate.md) | 612 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD](declarations/chordtangentidentityinversecommutativitycertificate-certifiedforbsd.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [ChordTangentIdentityInverseCommutativityCertificate.certifiedForBSD_of_fields](declarations/chordtangentidentityinversecommutativitycertificate-certifiedforbsd-of-f.md) | 695 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [ChordTangentIdentityInverseCommutativityCertificate.pointAtInfinityIdentity](declarations/chordtangentidentityinversecommutativitycertificate-pointatinfinityident.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [ChordTangentIdentityInverseCommutativityCertificate.inverseReflection](declarations/chordtangentidentityinversecommutativitycertificate-inversereflection.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [ChordTangentIdentityInverseCommutativityCertificate.chordSymmetry](declarations/chordtangentidentityinversecommutativitycertificate-chordsymmetry.md) | 757 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [DegreeZeroDivisorClassData](declarations/degreezerodivisorclassdata.md) | 774 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `structure` | [DegreeZeroDivisorClassCertificate](declarations/degreezerodivisorclasscertificate.md) | 812 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [DegreeZeroDivisorClassCertificate.certifiedForBSD](declarations/degreezerodivisorclasscertificate-certifiedforbsd.md) | 824 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [DegreeZeroDivisorClassCertificate.certifiedForBSD_of_fields](declarations/degreezerodivisorclasscertificate-certifiedforbsd-of-fields.md) | 848 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [DegreeZeroDivisorClassCertificate.principalDivisor_class_zero](declarations/degreezerodivisorclasscertificate-principaldivisor-class-zero.md) | 865 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [DegreeZeroDivisorClassCertificate.pointClass_eq_classOfDivisor](declarations/degreezerodivisorclasscertificate-pointclass-eq-classofdivisor.md) | 875 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [DegreeZeroDivisorClassCertificate.pointDivisor_degreeZero](declarations/degreezerodivisorclasscertificate-pointdivisor-degreezero.md) | 885 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [DegreeZeroDivisorClassCertificate.pointAtInfinityClass_eq_zero](declarations/degreezerodivisorclasscertificate-pointatinfinityclass-eq-zero.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `structure` | [ChordTangentPicardProvenanceCertificate](declarations/chordtangentpicardprovenancecertificate.md) | 909 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [ChordTangentPicardProvenanceCertificate.certifiedForBSD](declarations/chordtangentpicardprovenancecertificate-certifiedforbsd.md) | 945 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [ChordTangentPicardProvenanceCertificate.certifiedForBSD_of_fields](declarations/chordtangentpicardprovenancecertificate-certifiedforbsd-of-fields.md) | 962 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `structure` | [ChordTangentOperationData](declarations/chordtangentoperationdata.md) | 995 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `structure` | [ChordTangentGroupLawCertificate](declarations/chordtangentgrouplawcertificate.md) | 1058 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [ChordTangentGroupLawCertificate.certifiedForBSD](declarations/chordtangentgrouplawcertificate-certifiedforbsd.md) | 1102 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [ChordTangentGroupLawCertificate.certifiedForBSD_of_fields](declarations/chordtangentgrouplawcertificate-certifiedforbsd-of-fields.md) | 1151 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [ChordTangentGroupLawCertificate.chordLine_contains_left](declarations/chordtangentgrouplawcertificate-chordline-contains-left.md) | 1194 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [ChordTangentGroupLawCertificate.tangentLine_tangentAt](declarations/chordtangentgrouplawcertificate-tangentline-tangentat.md) | 1204 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [ChordTangentGroupLawCertificate.add_eq_reflected_chord_third](declarations/chordtangentgrouplawcertificate-add-eq-reflected-chord-third.md) | 1213 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [ChordTangentGroupLawCertificate.reflection_eq_negPoint](declarations/chordtangentgrouplawcertificate-reflection-eq-negpoint.md) | 1224 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [ChordTangentGroupLawCertificate.intersectionTheory_certifiedForBSD](declarations/chordtangentgrouplawcertificate-intersectiontheory-certifiedforbsd.md) | 1233 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [ChordTangentGroupLawCertificate.associativityGeometry_certifiedForBSD](declarations/chordtangentgrouplawcertificate-associativitygeometry-certifiedforbsd.md) | 1242 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [ChordTangentGroupLawCertificate.identityInverseCommutativityGeometry_certifiedForBSD](declarations/chordtangentgrouplawcertificate-identityinversecommutativitygeometry-cer.md) | 1251 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [ChordTangentGroupLawCertificate.picardProvenance_certifiedForBSD](declarations/chordtangentgrouplawcertificate-picardprovenance-certifiedforbsd.md) | 1260 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `structure` | [SmoothGroupLawCertificate](declarations/smoothgrouplawcertificate.md) | 1276 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [SmoothGroupLawCertificate.chordTangent_certifiedForBSD](declarations/smoothgrouplawcertificate-chordtangent-certifiedforbsd.md) | 1287 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [SmoothGroupLawCertificate.intersectionTheory_certifiedForBSD](declarations/smoothgrouplawcertificate-intersectiontheory-certifiedforbsd.md) | 1294 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [SmoothGroupLawCertificate.associativityGeometry_certifiedForBSD](declarations/smoothgrouplawcertificate-associativitygeometry-certifiedforbsd.md) | 1303 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [SmoothGroupLawCertificate.identityInverseCommutativityGeometry_certifiedForBSD](declarations/smoothgrouplawcertificate-identityinversecommutativitygeometry-certified.md) | 1312 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [SmoothGroupLawCertificate.picardProvenance_certifiedForBSD](declarations/smoothgrouplawcertificate-picardprovenance-certifiedforbsd.md) | 1321 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [SmoothGroupLawCertificate.groupLaw_matches_picard_transport](declarations/smoothgrouplawcertificate-grouplaw-matches-picard-transport.md) | 1330 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [SmoothGroupLawCertificate.chordTangent_matches_picard_addition](declarations/smoothgrouplawcertificate-chordtangent-matches-picard-addition.md) | 1339 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [SmoothGroupLawCertificate.add_assoc_matches_geometric_associativity](declarations/smoothgrouplawcertificate-add-assoc-matches-geometric-associativity.md) | 1351 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [SmoothGroupLawCertificate.add_comm_matches_chord_symmetry](declarations/smoothgrouplawcertificate-add-comm-matches-chord-symmetry.md) | 1360 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [SmoothGroupLawCertificate.neg_matches_geometric_inverse](declarations/smoothgrouplawcertificate-neg-matches-geometric-inverse.md) | 1369 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [SmoothGroupLawCertificate.zero_laws_match_point_at_infinity](declarations/smoothgrouplawcertificate-zero-laws-match-point-at-infinity.md) | 1378 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [SmoothGroupLawCertificate.add_matches_chord_tangent](declarations/smoothgrouplawcertificate-add-matches-chord-tangent.md) | 1393 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [SmoothGroupLawCertificate.zero_matches_point_at_infinity](declarations/smoothgrouplawcertificate-zero-matches-point-at-infinity.md) | 1400 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `theorem` | [SmoothGroupLawCertificate.discriminant_ne_zero](declarations/smoothgrouplawcertificate-discriminant-ne-zero.md) | 1407 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `theorem` | [SmoothGroupLawCertificate.no_affine_singular_point](declarations/smoothgrouplawcertificate-no-affine-singular-point.md) | 1414 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `theorem` | [SmoothGroupLawCertificate.charNeTwoThree](declarations/smoothgrouplawcertificate-charnetwothree.md) | 1421 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [SmoothGroupLawCertificate.add](declarations/smoothgrouplawcertificate-add.md) | 1428 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [SmoothGroupLawCertificate.add_comm](declarations/smoothgrouplawcertificate-add-comm.md) | 1435 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [SmoothGroupLawCertificate.add_assoc](declarations/smoothgrouplawcertificate-add-assoc.md) | 1443 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65dfee1b1257a0bac8da9df3b55edd6d3a206bcf4cac40e00fedd401a4a86907 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/DifferentialEquationsAndDynamicalSystems/GroupLaw/Varianta6379b559a91ddf1bc47911d6b5da857a2554f4838ac828da1c938c4e2e85c89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
