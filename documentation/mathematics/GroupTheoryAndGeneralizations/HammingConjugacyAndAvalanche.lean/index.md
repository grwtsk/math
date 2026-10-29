# Hamming Conjugacy And Avalanche

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `939839c3e9609bb3d0795c633e28ae2b2098cbad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/HammingConjugacyAndAvalanche.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [coordinatePermutationHom](declarations/coordinatepermutationhom.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coordinatePermutationHom_apply](declarations/coordinatepermutationhom-apply.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coordinatePermutation_basisBit](declarations/coordinatepermutation-basisbit.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [basisBit_injective](declarations/basisbit-injective.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coordinatePermutationHom_injective](declarations/coordinatepermutationhom-injective.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [coordinatePermutationEmbedding](declarations/coordinatepermutationembedding.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [hammingDistance](declarations/hammingdistance.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hammingDistance_self](declarations/hammingdistance-self.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hammingDistance_comm](declarations/hammingdistance-comm.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [hammingDistance_eq_zero_iff](declarations/hammingdistance-eq-zero-iff.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [HammingIso](declarations/hammingiso.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [HammingIso.toPerm](declarations/hammingiso-toperm.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [HammingIso.toPerm_apply](declarations/hammingiso-toperm-apply.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [xorBits_cancel_both_right](declarations/xorbits-cancel-both-right.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coordinatePermutation_zero](declarations/coordinatepermutation-zero.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [HammingIso.hammingDistance_toPerm](declarations/hammingiso-hammingdistance-toperm.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HammingIso.toPerm_injective](declarations/hammingiso-toperm-injective.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [conjugate](declarations/conjugate.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [conjugate_apply](declarations/conjugate-apply.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [conjugate_one](declarations/conjugate-one.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [conjugate_self](declarations/conjugate-self.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [conjugate_pow](declarations/conjugate-pow.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HammingIso.toPerm_symm_apply](declarations/hammingiso-toperm-symm-apply.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [HammingIso.toPerm_symm_xor_basis](declarations/hammingiso-toperm-symm-xor-basis.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HammingIso.toPerm_xor_cancel](declarations/hammingiso-toperm-xor-cancel.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [bitDerivative_conjugate_hammingIso](declarations/bitderivative-conjugate-hammingiso.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [derivativeBit_conjugate_hammingIso](declarations/derivativebit-conjugate-hammingiso.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [sacCount_conjugate_hammingIso](declarations/saccount-conjugate-hammingiso.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [strictSAC_conjugate_hammingIso](declarations/strictsac-conjugate-hammingiso.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [sacEntry_conjugate_hammingIso](declarations/sacentry-conjugate-hammingiso.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [sum_sacEntry_relabel](declarations/sum-sacentry-relabel.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [sacScore_conjugate_hammingIso](declarations/sacscore-conjugate-hammingiso.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [varianceScore_conjugate_hammingIso](declarations/variancescore-conjugate-hammingiso.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ab0f34693f5f9858a031f2a7d940bcfe5e085c841d0e9d553a8333c4683a067 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/BasicGroupTheory/GroupActions/FiniteBooleanStructure/Variantec14e8913e14ac2b/HammingConjugacyAndAvalanche.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
