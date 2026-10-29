# Data Finset Sigma

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `174016def3b66a76937b0d8a0f714b2f05942ed0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/DataFinsetSigma.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sigma](declarations/sigma.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_sigma](declarations/mem-sigma.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_sigma](declarations/coe-sigma.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sigma_nonempty](declarations/sigma-nonempty.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sigma_eq_empty](declarations/sigma-eq-empty.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [sigma_mono](declarations/sigma-mono.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pairwiseDisjoint_map_sigmaMk](declarations/pairwisedisjoint-map-sigmamk.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [disjiUnion_map_sigma_mk](declarations/disjiunion-map-sigma-mk.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sigma_eq_biUnion](declarations/sigma-eq-biunion.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sup_sigma](declarations/sup-sigma.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inf_sigma](declarations/inf-sigma.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [_root_.biSup_finsetSigma](declarations/root-bisup-finsetsigma.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [_root_.biSup_finsetSigma'](declarations/root-bisup-finsetsigma-source-edition-2.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [_root_.biInf_finsetSigma](declarations/root-biinf-finsetsigma-source-edition-2.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [_root_.biInf_finsetSigma'](declarations/root-biinf-finsetsigma.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [_root_.Set.biUnion_finsetSigma](declarations/root-set-biunion-finsetsigma.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [_root_.Set.biUnion_finsetSigma'](declarations/root-set-biunion-finsetsigma-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [_root_.Set.biInter_finsetSigma](declarations/root-set-biinter-finsetsigma.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [_root_.Set.biInter_finsetSigma'](declarations/root-set-biinter-finsetsigma-source-edition-2.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [sigmaLift](declarations/sigmalift.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mem_sigmaLift](declarations/mem-sigmalift.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mk_mem_sigmaLift](declarations/mk-mem-sigmalift.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [notMem_sigmaLift_of_ne_left](declarations/notmem-sigmalift-of-ne-left.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [notMem_sigmaLift_of_ne_right](declarations/notmem-sigmalift-of-ne-right.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sigmaLift_nonempty](declarations/sigmalift-nonempty.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [sigmaLift_eq_empty](declarations/sigmalift-eq-empty.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [sigmaLift_mono](declarations/sigmalift-mono.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [card_sigmaLift](declarations/card-sigmalift.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39e9fda3af62486b958b45c4d4680d246fe6bd6c078a44c98982e5b930932b82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Varianta52a5534a768755b08d684c15dfcc0d87900e0ba4e6ab31addaaaecd67634e4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
