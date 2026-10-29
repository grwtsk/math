# Zeta Commutator Root

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `981a1cc9fa992da80fbfbda71df863dd1aa8a7a2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaCommutatorRoot.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpectralPoint](declarations/spectralpoint.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [ModuleCarrier](declarations/modulecarrier.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Operator](declarations/operator.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sourceId](declarations/sourceid.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [sourceRevision](declarations/sourcerevision.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [normalizationId](declarations/normalizationid.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [invalidationKey](declarations/invalidationkey.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [firstProjection](declarations/firstprojection.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [coordinateOperator](declarations/coordinateoperator.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [upperShift](declarations/uppershift.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lowerShift](declarations/lowershift.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [upperShift_mul_lowerShift_ne_lowerShift_mul_upperShift](declarations/uppershift-mul-lowershift-ne-lowershift-mul-uppershift.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [root](declarations/root.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [binding](declarations/binding.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [commutatorAt_eq_coordinateOperator](declarations/commutatorat-eq-coordinateoperator.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [heightAt_eq_im](declarations/heightat-eq-im.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coordinate_injective](declarations/coordinate-injective.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nontrivialZetaZero_heightAt_eq_im](declarations/nontrivialzetazero-heightat-eq-im.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [RootStatement](declarations/rootstatement.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rootStatement](declarations/rootstatement-source-edition-2.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rootStatement_of_rh](declarations/rootstatement-of-rh.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [localProfile](declarations/localprofile.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [localProfile_status](declarations/localprofile-status.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rootStatement_implies_rh_iff](declarations/rootstatement-implies-rh-iff.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [chart](declarations/chart.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [binding_matches_chart](declarations/binding-matches-chart.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `inductive` | [OperatorAxiomKind](declarations/operatoraxiomkind.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [operatorAxiomDisposition](declarations/operatoraxiomdisposition.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [operatorAxiom_not_discharged](declarations/operatoraxiom-not-discharged.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `inductive` | [HeightComparisonKind](declarations/heightcomparisonkind.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [heightComparisonDisposition](declarations/heightcomparisondisposition.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [zetaSpectralImaginary_discharged](declarations/zetaspectralimaginary-discharged.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unresolved_height_comparison_not_discharged](declarations/unresolved-height-comparison-not-discharged.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=481fe7317a20a1701a8e4cc97ef403037bc3e8ed438b4a10b4e231c81b38d33a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ZetaCommutatorRoot.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
