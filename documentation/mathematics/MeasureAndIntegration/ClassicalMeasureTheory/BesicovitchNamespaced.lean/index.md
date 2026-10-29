# Besicovitch Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `999c868f4720485989fcdd7dda1ab5b4cb7b5af4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/BesicovitchNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Besicovitch.SatelliteConfig](declarations/besicovitch-satelliteconfig.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [HasBesicovitchCovering](declarations/hasbesicovitchcovering.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Besicovitch.SatelliteConfig.instInhabited](declarations/besicovitch-satelliteconfig-instinhabited.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [inter'](declarations/inter.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [hlast'](declarations/hlast.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [BallPackage](declarations/ballpackage.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [unitBallPackage](declarations/unitballpackage.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [BallPackage.instInhabited](declarations/ballpackage-instinhabited.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [TauPackage](declarations/taupackage.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [TauPackage.instInhabited](declarations/taupackage-instinhabited.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [index](declarations/index.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [iUnionUpTo](declarations/iunionupto.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [monotone_iUnionUpTo](declarations/monotone-iunionupto.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [R](declarations/r.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [color](declarations/color.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [lastStep](declarations/laststep.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lastStep_nonempty](declarations/laststep-nonempty.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_iUnionUpTo_lastStep](declarations/mem-iunionupto-laststep.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [color_lt](declarations/color-lt.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exist_disjoint_covering_families](declarations/exist-disjoint-covering-families.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exist_finset_disjoint_balls_large_measure](declarations/exist-finset-disjoint-balls-large-measure.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_disjoint_closedBall_covering_ae_of_finiteMeasure_aux](declarations/exists-disjoint-closedball-covering-ae-of-finitemeasure-aux.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_disjoint_closedBall_covering_ae_aux](declarations/exists-disjoint-closedball-covering-ae-aux.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [exists_disjoint_closedBall_covering_ae](declarations/exists-disjoint-closedball-covering-ae.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [exists_closedBall_covering_tsum_measure_le](declarations/exists-closedball-covering-tsum-measure-le.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [vitaliFamily](declarations/vitalifamily.md) | 1098 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tendsto_filterAt](declarations/tendsto-filterat.md) | 1146 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ae_tendsto_rnDeriv](declarations/ae-tendsto-rnderiv.md) | 1166 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](declarations/ae-tendsto-measure-inter-div-of-measurableset.md) | 1178 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ae_tendsto_measure_inter_div](declarations/ae-tendsto-measure-inter-div.md) | 1195 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae4e21dcc8ae1b3378713c553e3a40199650a6a78138d168cc20e5e9364667f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Besicovitch/Variantf5c6e90c6905ed3195dddadbd99eeeb21dd28d1abb779f60584c4d16c62e8497.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
