# Frey Three Port Saturation

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d53ae46a7f0e4224eac7c639e98ef00e414295e9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FreyThreePortSaturation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [freyThreePortMatrix](declarations/freythreeportmatrix.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [freyTwoByTwoRowMinor](declarations/freytwobytworowminor.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [freyThreePortMaximalMinors](declarations/freythreeportmaximalminors.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [freyThreePortMaximalMinors_eq](declarations/freythreeportmaximalminors-eq.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [freyThreePortMaximalMinorIdeal](declarations/freythreeportmaximalminorideal.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [freyThreePortMaximalMinorIdeal_eq_top_of_bezout](declarations/freythreeportmaximalminorideal-eq-top-of-bezout.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [freyThreePortObstruction](declarations/freythreeportobstruction.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [freyThreePortObstruction_add](declarations/freythreeportobstruction-add.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [freyThreePortObstruction_smul](declarations/freythreeportobstruction-smul.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [freyThreePortObstructionLinear](declarations/freythreeportobstructionlinear.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [freyThreePortCompatible_iff_obstruction_eq_zero](declarations/freythreeportcompatible-iff-obstruction-eq-zero.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [freyThreePortObstruction_eval](declarations/freythreeportobstruction-eval.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [freyThreePortEval_recover_of_compatible](declarations/freythreeporteval-recover-of-compatible.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [freyThreePortObstructionSplit](declarations/freythreeportobstructionsplit.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [freyThreePortObstructionSplit_add](declarations/freythreeportobstructionsplit-add.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [freyThreePortObstructionSplit_smul](declarations/freythreeportobstructionsplit-smul.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [freyThreePortObstructionSplitLinear](declarations/freythreeportobstructionsplitlinear.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [freyThreePortObstruction_split_of_bezout](declarations/freythreeportobstruction-split-of-bezout.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [freyThreePortObstruction_surjective_of_bezout](declarations/freythreeportobstruction-surjective-of-bezout.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [freyThreePort_exact_of_bezout](declarations/freythreeport-exact-of-bezout.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [freyThreePortObstruction_comp_split_of_bezout](declarations/freythreeportobstruction-comp-split-of-bezout.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [PrimitiveAdditiveTriple.threePortObstruction](declarations/primitiveadditivetriple-threeportobstruction.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [PrimitiveAdditiveTriple.threePortObstructionSplit](declarations/primitiveadditivetriple-threeportobstructionsplit.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [PrimitiveAdditiveTriple.threePort_exact](declarations/primitiveadditivetriple-threeport-exact.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [PrimitiveAdditiveTriple.threePortObstruction_surjective](declarations/primitiveadditivetriple-threeportobstruction-surjective.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [PrimitiveAdditiveTriple.threePortObstruction_comp_split](declarations/primitiveadditivetriple-threeportobstruction-comp-split.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [PrimitiveAdditiveTriple.threePortMaximalMinorIdeal_eq_top](declarations/primitiveadditivetriple-threeportmaximalminorideal-eq-top.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [PrimitiveAdditiveTriple.threePortEval_not_surjective](declarations/primitiveadditivetriple-threeporteval-not-surjective.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99e55e07e12c7636b8ee7192e4737f35ea56782498c83e603310c7e4d0b1b2b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyThreePortSaturation.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
