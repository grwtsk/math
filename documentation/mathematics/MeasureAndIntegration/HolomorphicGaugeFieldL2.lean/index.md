# Holomorphic Gauge Field L2

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicGaugeFieldL2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31ad6b4463dd12613f6a0bbb294a3e9b9f45f3fc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/HolomorphicGaugeFieldL2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RawField](declarations/rawfield.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [unframe](declarations/unframe.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [frame](declarations/frame.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [unframe_frame](declarations/unframe-frame.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [frame_unframe](declarations/frame-unframe.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [chart_coordinate](declarations/chart-coordinate.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [square](declarations/square.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [square_eq](declarations/square-eq.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [fieldEnergy](declarations/fieldenergy.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [fieldEnergy_eq](declarations/fieldenergy-eq.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fieldEnergy_frame](declarations/fieldenergy-frame.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [FiniteField](declarations/finitefield.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [square_integrable](declarations/square-integrable.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [field_memLp](declarations/field-memlp.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ofMemLp](declarations/ofmemlp.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [fieldSetoid](declarations/fieldsetoid.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FieldL2](declarations/fieldl2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fieldClass](declarations/fieldclass.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fieldClass_eq_iff](declarations/fieldclass-eq-iff.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ofMemLp_congr_ae](declarations/ofmemlp-congr-ae.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toScalarL2](declarations/toscalarl2.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toScalarL2_class_ae](declarations/toscalarl2-class-ae.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [fromScalarL2](declarations/fromscalarl2.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [to_from](declarations/to-from.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [from_to](declarations/from-to.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [scalarEquiv](declarations/scalarequiv.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [quotientFieldEnergy](declarations/quotientfieldenergy.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pairing_eq](declarations/pairing-eq.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [pairing_cross_ae](declarations/pairing-cross-ae.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fieldPair_integrable](declarations/fieldpair-integrable.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [fieldPairing](declarations/fieldpairing.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fieldPairing_class](declarations/fieldpairing-class.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [quotientFieldEnergy_norm](declarations/quotientfieldenergy-norm.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [class_zero_iff](declarations/class-zero-iff.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [completedField](declarations/completedfield.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [targetEmbedding](declarations/targetembedding.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [targetEmbedding_normalizes](declarations/targetembedding-normalizes.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [fieldProjection](declarations/fieldprojection.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [fieldProjection_normalizes](declarations/fieldprojection-normalizes.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fieldProjection_idempotent](declarations/fieldprojection-idempotent.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [fieldProjection_realizes](declarations/fieldprojection-realizes.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fieldProjection_fixed_iff](declarations/fieldprojection-fixed-iff.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fieldProjection_pairing](declarations/fieldprojection-pairing.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [fieldProjection_energy_le](declarations/fieldprojection-energy-le.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [fieldProjection_targetEmbedding](declarations/fieldprojection-targetembedding.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [framed_spike_zero_class](declarations/framed-spike-zero-class.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [no_allFields_point_recovery](declarations/no-allfields-point-recovery.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=429c670adb956d9f160ffef1a0a5868204f6d7afcbf4f7e00e2ae9ea73f34955 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicGaugeFieldL2.lean","GRWTSK/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
