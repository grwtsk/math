# Field

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9926a3bca42651438233aab0c20d077755569f1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/Field.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FieldLike](declarations/fieldlike.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sub](declarations/sub.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [square](declarations/square.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cube](declarations/cube.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [FieldLawCertificate](declarations/fieldlawcertificate.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [FieldEqCertificate](declarations/fieldeqcertificate.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [LawfulFieldLike](declarations/lawfulfieldlike.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [FieldLawCertificate.zero_ne_one_visible](declarations/fieldlawcertificate-zero-ne-one-visible.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [LawfulFieldLike.zero_ne_one](declarations/lawfulfieldlike-zero-ne-one.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [FieldEqCertificate.ne_of_eq_false](declarations/fieldeqcertificate-ne-of-eq-false.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [FieldEqCertificate.eq_false_of_ne](declarations/fieldeqcertificate-eq-false-of-ne.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [LawfulFieldLike.eq_false_of_ne](declarations/lawfulfieldlike-eq-false-of-ne.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [LawfulFieldLike.ne_of_eq_false](declarations/lawfulfieldlike-ne-of-eq-false.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [NumberFieldLike](declarations/numberfieldlike.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [NumberFieldCertificate](declarations/numberfieldcertificate.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [NumberFieldCertificate.certifiedForBSD](declarations/numberfieldcertificate-certifiedforbsd.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [NumberFieldCertificate.certifiedForBSD_of_fields](declarations/numberfieldcertificate-certifiedforbsd-of-fields.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [NumberFieldCertificate.finiteDimensionalOverQ_of_certifiedForBSD](declarations/numberfieldcertificate-finitedimensionaloverq-of-certifiedforbsd.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [NumberFieldCertificate.characteristicZero_of_certifiedForBSD](declarations/numberfieldcertificate-characteristiczero-of-certifiedforbsd.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `inductive` | [NumberFieldArithmeticSourceStatus](declarations/numberfieldarithmeticsourcestatus.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [NumberFieldPlaceKind](declarations/numberfieldplacekind.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [NumberFieldPlaceData](declarations/numberfieldplacedata.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [NumberFieldProductFormulaData](declarations/numberfieldproductformuladata.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [NumberFieldPlaceProductFormulaCertificate](declarations/numberfieldplaceproductformulacertificate.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [NumberFieldPlaceProductFormulaCertificate.certifiedForBSD](declarations/numberfieldplaceproductformulacertificate-certifiedforbsd.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [NumberFieldPlaceProductFormulaCertificate.certifiedForBSD_of_fields](declarations/numberfieldplaceproductformulacertificate-certifiedforbsd-of-fields.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [NumberFieldProjectiveSpaceData](declarations/numberfieldprojectivespacedata.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [NumberFieldProjectiveHeightData](declarations/numberfieldprojectiveheightdata.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [NumberFieldProjectiveHeightCertificate](declarations/numberfieldprojectiveheightcertificate.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [NumberFieldProjectiveHeightCertificate.certifiedForBSD](declarations/numberfieldprojectiveheightcertificate-certifiedforbsd.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [NumberFieldProjectiveHeightCertificate.certifiedForBSD_of_fields](declarations/numberfieldprojectiveheightcertificate-certifiedforbsd-of-fields.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [NumberFieldNorthcottData](declarations/numberfieldnorthcottdata.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [NumberFieldNorthcottCertificate](declarations/numberfieldnorthcottcertificate.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [NumberFieldNorthcottCertificate.certifiedForBSD](declarations/numberfieldnorthcottcertificate-certifiedforbsd.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [NumberFieldNorthcottCertificate.certifiedForBSD_of_fields](declarations/numberfieldnorthcottcertificate-certifiedforbsd-of-fields.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [FiniteEnumeration](declarations/finiteenumeration.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [FiniteFieldLike](declarations/finitefieldlike.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [SymbolicFiniteField](declarations/symbolicfinitefield-source-edition-2.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [symbolicFiniteField](declarations/symbolicfinitefield.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [countWhere](declarations/countwhere.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [residueFieldOps](declarations/residuefieldops.md) | 582 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=905693fa5f0bdc6810a64102fd9afcfec16827f025a0f54fb91457274f4974bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variant942cdb024b30ebc7b6433c586da67d9114607c6aaa23cf0f57eaf91f64861736.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
