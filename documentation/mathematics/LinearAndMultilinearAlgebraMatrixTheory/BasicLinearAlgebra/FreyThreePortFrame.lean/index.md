# Frey Three Port Frame

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9fcd23e798f4c139872f50308893055b2a36672b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyThreePortFrame.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FreySectionCoordinates](declarations/freysectioncoordinates.md) | 15 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [FreyThreePortValues](declarations/freythreeportvalues.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [FreyTwoPortValues](declarations/freytwoportvalues.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [freyThreePortEval](declarations/freythreeporteval.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [freyThreePortEval_add](declarations/freythreeporteval-add.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [freyThreePortEval_smul](declarations/freythreeporteval-smul.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [freyThreePortEvalLinear](declarations/freythreeportevallinear.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [freyThreePortRecover](declarations/freythreeportrecover.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [freyThreePortRecover_add](declarations/freythreeportrecover-add.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [freyThreePortRecover_smul](declarations/freythreeportrecover-smul.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [freyThreePortRecoverLinear](declarations/freythreeportrecoverlinear.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [freyThreePortRecover_leftInverse_of_bezout](declarations/freythreeportrecover-leftinverse-of-bezout.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [freyThreePortEval_injective_of_bezout](declarations/freythreeporteval-injective-of-bezout.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [freyThreePortRecover_comp_eval_of_bezout](declarations/freythreeportrecover-comp-eval-of-bezout.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [FreyThreePortCompatible](declarations/freythreeportcompatible.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [freyThreePortEval_compatible](declarations/freythreeporteval-compatible.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [freyTwoPortEval](declarations/freytwoporteval.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [freyTwoPort_difference](declarations/freytwoport-difference.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [freyXSection](declarations/freyxsection.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [recoverABCValues](declarations/recoverabcvalues.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [PrimitiveAdditiveTriple.bezoutA](declarations/primitiveadditivetriple-bezouta.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [PrimitiveAdditiveTriple.bezoutB](declarations/primitiveadditivetriple-bezoutb.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [PrimitiveAdditiveTriple.bezout_identity](declarations/primitiveadditivetriple-bezout-identity.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [PrimitiveAdditiveTriple.threePortEval](declarations/primitiveadditivetriple-threeporteval.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [PrimitiveAdditiveTriple.threePortRecover](declarations/primitiveadditivetriple-threeportrecover.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [PrimitiveAdditiveTriple.threePortRecover_comp_eval](declarations/primitiveadditivetriple-threeportrecover-comp-eval.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [PrimitiveAdditiveTriple.threePortEval_injective](declarations/primitiveadditivetriple-threeporteval-injective.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [PrimitiveAdditiveTriple.threePortEval_x](declarations/primitiveadditivetriple-threeporteval-x.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [PrimitiveAdditiveTriple.recoverABC_threePortEval_x](declarations/primitiveadditivetriple-recoverabc-threeporteval-x.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [PrimitiveAdditiveTriple.twoPort_x_difference](declarations/primitiveadditivetriple-twoport-x-difference.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bede2823e7b19084c2b09aea9672cbfa2cc0c378c7839a73970f7704fd6c1c93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortFrame.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
