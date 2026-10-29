# Weights

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6122bede893542c7e45486e2105864243847b480`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Weights.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [preWeightSpace](declarations/preweightspace.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_preWeightSpace](declarations/mem-preweightspace.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [exists_preWeightSpace_zero_le_ker_of_isNoetherian](declarations/exists-preweightspace-zero-le-ker-of-isnoetherian.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [weight_vector_multiplication](declarations/weight-vector-multiplication.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [lie_mem_preWeightSpace_of_mem_preWeightSpace](declarations/lie-mem-preweightspace-of-mem-preweightspace.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [weightSpace](declarations/weightspace.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_weightSpace](declarations/mem-weightspace.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [zero_weightSpace_eq_top_of_nilpotent'](declarations/zero-weightspace-eq-top-of-nilpotent.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coe_weightSpace_of_top](declarations/coe-weightspace-of-top.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [zero_weightSpace_eq_top_of_nilpotent](declarations/zero-weightspace-eq-top-of-nilpotent-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [IsWeight](declarations/isweight.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [isWeight_zero_of_nilpotent](declarations/isweight-zero-of-nilpotent.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [isNilpotent_toEndomorphism_weightSpace_zero](declarations/isnilpotent-toendomorphism-weightspace-zero.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [rootSpace](declarations/rootspace.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [zero_rootSpace_eq_top_of_nilpotent](declarations/zero-rootspace-eq-top-of-nilpotent.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [IsRoot](declarations/isroot.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [rootSpace_comap_eq_weightSpace](declarations/rootspace-comap-eq-weightspace.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lie_mem_weightSpace_of_mem_weightSpace](declarations/lie-mem-weightspace-of-mem-weightspace.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [rootSpaceWeightSpaceProductAux](declarations/rootspaceweightspaceproductaux.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [rootSpaceWeightSpaceProduct](declarations/rootspaceweightspaceproduct.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_rootSpaceWeightSpaceProduct_tmul](declarations/coe-rootspaceweightspaceproduct-tmul.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [rootSpaceProduct](declarations/rootspaceproduct.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rootSpaceProduct_def](declarations/rootspaceproduct-def.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [rootSpaceProduct_tmul](declarations/rootspaceproduct-tmul.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [zeroRootSubalgebra](declarations/zerorootsubalgebra.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_zeroRootSubalgebra](declarations/coe-zerorootsubalgebra.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mem_zeroRootSubalgebra](declarations/mem-zerorootsubalgebra.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toLieSubmodule_le_rootSpace_zero](declarations/toliesubmodule-le-rootspace-zero.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [le_zeroRootSubalgebra](declarations/le-zerorootsubalgebra.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [zeroRootSubalgebra_normalizer_eq_self](declarations/zerorootsubalgebra-normalizer-eq-self.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [is_cartan_of_zeroRootSubalgebra_eq](declarations/is-cartan-of-zerorootsubalgebra-eq.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [zeroRootSubalgebra_eq_of_is_cartan](declarations/zerorootsubalgebra-eq-of-is-cartan.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [zeroRootSubalgebra_eq_iff_is_cartan](declarations/zerorootsubalgebra-eq-iff-is-cartan.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [weightSpace'](declarations/weightspace-source-edition-2.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [coe_weightSpace'](declarations/coe-weightspace.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2961fcda2bdf6f00c19199cab7680f71b825b90f63a75fa0dc4c819ab5336116 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Weights/Variant3f60edc97826127b087bb53a6f49ea093ea511226af09aa2b127324f097bff9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
