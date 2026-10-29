# CStar Algebra Matrix

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Matrix/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd4f2a74305ede1d35827fb7ad57733c242a0607`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/CStarAlgebraMatrix.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [entry_norm_bound_of_unitary](declarations/entry-norm-bound-of-unitary.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [entrywise_sup_norm_bound_of_unitary](declarations/entrywise-sup-norm-bound-of-unitary.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [toEuclideanCLM](declarations/toeuclideanclm.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coe_toEuclideanCLM_eq_toEuclideanLin](declarations/coe-toeuclideanclm-eq-toeuclideanlin.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [toEuclideanCLM_piLp_equiv_symm](declarations/toeuclideanclm-pilp-equiv-symm.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [piLp_equiv_toEuclideanCLM](declarations/pilp-equiv-toeuclideanclm.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [l2OpNormedAddCommGroupAux](declarations/l2opnormedaddcommgroupaux.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [l2OpNormedRingAux](declarations/l2opnormedringaux.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [instL2OpMetricSpace](declarations/instl2opmetricspace.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [instL2OpNormedAddCommGroup](declarations/instl2opnormedaddcommgroup.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [l2_opNorm_def](declarations/l2-opnorm-def.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [l2_opNNNorm_def](declarations/l2-opnnnorm-def.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [l2_opNorm_conjTranspose](declarations/l2-opnorm-conjtranspose.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [l2_opNNNorm_conjTranspose](declarations/l2-opnnnorm-conjtranspose.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [l2_opNorm_conjTranspose_mul_self](declarations/l2-opnorm-conjtranspose-mul-self.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [l2_opNNNorm_conjTranspose_mul_self](declarations/l2-opnnnorm-conjtranspose-mul-self.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [l2_opNorm_mulVec](declarations/l2-opnorm-mulvec.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [l2_opNNNorm_mulVec](declarations/l2-opnnnorm-mulvec.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [l2_opNorm_mul](declarations/l2-opnorm-mul.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [l2_opNNNorm_mul](declarations/l2-opnnnorm-mul.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [instL2OpNormedSpace](declarations/instl2opnormedspace.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [instL2OpNormedRing](declarations/instl2opnormedring.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [cstar_norm_def](declarations/cstar-norm-def.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [cstar_nnnorm_def](declarations/cstar-nnnorm-def.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [instL2OpNormedAlgebra](declarations/instl2opnormedalgebra.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [instCStarRing](declarations/instcstarring.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ef2c3d3e6939bfd5d56527af80837e62a5df3d9edf186db687bbee1ea73cd94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/MatrixTheory/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean","GRWTSK/Analysis/Matrix/Variantcf3b1a4198979ea64344e1c6d2fef0eabdccc42e5c5da5c044699512a075d64f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
