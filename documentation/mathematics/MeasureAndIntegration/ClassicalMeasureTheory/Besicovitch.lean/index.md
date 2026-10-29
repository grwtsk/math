# Besicovitch

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69c4088316c800628826c79b2c643c22292baebf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/ClassicalMeasureTheory/Besicovitch.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Besicovitch.SatelliteConfig](declarations/besicovitch-satelliteconfig.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [HasBesicovitchCovering](declarations/hasbesicovitchcovering.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [Besicovitch.SatelliteConfig.instInhabited](declarations/besicovitch-satelliteconfig-instinhabited.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [inter'](declarations/inter.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [hlast'](declarations/hlast.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [BallPackage](declarations/ballpackage.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [unitBallPackage](declarations/unitballpackage.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [BallPackage.instInhabited](declarations/ballpackage-instinhabited.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [TauPackage](declarations/taupackage.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [TauPackage.instInhabited](declarations/taupackage-instinhabited.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [index](declarations/index.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [iUnionUpTo](declarations/iunionupto.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [monotone_iUnionUpTo](declarations/monotone-iunionupto.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [R](declarations/r.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [color](declarations/color.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [lastStep](declarations/laststep.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [lastStep_nonempty](declarations/laststep-nonempty.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mem_iUnionUpTo_lastStep](declarations/mem-iunionupto-laststep.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [color_lt](declarations/color-lt.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exist_disjoint_covering_families](declarations/exist-disjoint-covering-families.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exist_finset_disjoint_balls_large_measure](declarations/exist-finset-disjoint-balls-large-measure.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_disjoint_closedBall_covering_ae_of_finiteMeasure_aux](declarations/exists-disjoint-closedball-covering-ae-of-finitemeasure-aux.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_disjoint_closedBall_covering_ae_aux](declarations/exists-disjoint-closedball-covering-ae-aux.md) | 832 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [exists_disjoint_closedBall_covering_ae](declarations/exists-disjoint-closedball-covering-ae.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [exists_closedBall_covering_tsum_measure_le](declarations/exists-closedball-covering-tsum-measure-le.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [vitaliFamily](declarations/vitalifamily.md) | 1090 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [tendsto_filterAt](declarations/tendsto-filterat.md) | 1138 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [ae_tendsto_rnDeriv](declarations/ae-tendsto-rnderiv.md) | 1158 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](declarations/ae-tendsto-measure-inter-div-of-measurableset.md) | 1170 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [ae_tendsto_measure_inter_div](declarations/ae-tendsto-measure-inter-div.md) | 1187 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ef08aa610e821f4178b6c3b200e0023652fa3c4671df6ae9e3f072cc6b64318 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Besicovitch/Variant04ac278f9819b073bb97a4f79c43c7cb6b8312db971ec4865b4259981635cd9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
