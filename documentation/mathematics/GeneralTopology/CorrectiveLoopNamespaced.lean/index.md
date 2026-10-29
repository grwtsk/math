# Corrective Loop Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 13 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5505d2d6d57d82cf092d7debbccff9d2db4bd3f4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/CorrectiveLoopNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [BeamState](declarations/beamstate.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [BeamCorrector](declarations/beamcorrector.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [BoundedBeamState](declarations/boundedbeamstate.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [boundedZeroBeamState](declarations/boundedzerobeamstate.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [zeroBeamState](declarations/zerobeamstate.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [zeroCorrector](declarations/zerocorrector.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [reverseCorrector](declarations/reversecorrector.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [applyCorrector](declarations/applycorrector.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [apply_zeroCorrector](declarations/apply-zerocorrector.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [reverse_zeroCorrector](declarations/reverse-zerocorrector.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [LoopState](declarations/loopstate.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [ledgerContains](declarations/ledgercontains.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ledgerContainsBool](declarations/ledgercontainsbool.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [ledgerContainsBool_correct](declarations/ledgercontainsbool-correct.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [activeContained](declarations/activecontained.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [residueCleared](declarations/residuecleared.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [contained_not_cleared](declarations/contained-not-cleared.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [FixedPointStatus](declarations/fixedpointstatus.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ledgerShiftStatus](declarations/ledgershiftstatus.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ledgerShiftStatus_expanded_implies_contains](declarations/ledgershiftstatus-expanded-implies-contains.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [stabilityStatus](declarations/stabilitystatus.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [stabilityStatus_containmentExpanded_implies_contains](declarations/stabilitystatus-containmentexpanded-implies-contains.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [stableContainment](declarations/stablecontainment.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [CorrectiveStep](declarations/correctivestep.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [correctiveReplayPhases](declarations/correctivereplayphases.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [correctiveReplayPhases_count](declarations/correctivereplayphases-count.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [correctiveReplayPhases_centerControlled](declarations/correctivereplayphases-centercontrolled.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [correctiveStep_continuous](declarations/correctivestep-continuous.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [residueFreeState](declarations/residuefreestate.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [residueFreeCorrectionStep](declarations/residuefreecorrectionstep.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [residueFreeCorrection_status](declarations/residuefreecorrection-status.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [containedResidueState](declarations/containedresiduestate.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [containedResidueCorrectionStep](declarations/containedresiduecorrectionstep.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [containedResidueCorrection_status](declarations/containedresiduecorrection-status.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [containedResidueCorrection_activeContained](declarations/containedresiduecorrection-activecontained.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [containedResidueCorrection_stableContainment](declarations/containedresiduecorrection-stablecontainment.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d142cc36a4f381f46cf44f30063a0956b107497822d8c85c8d55f60b1c8ee894 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e/Variantd4235ff5138e283d6a3c5163e28303a1c9dec1378e4cae593d49f2ea7e6d6679.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
