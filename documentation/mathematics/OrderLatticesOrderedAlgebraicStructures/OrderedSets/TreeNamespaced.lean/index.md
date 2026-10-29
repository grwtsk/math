# Tree Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48782d2e6baeb905f47b95a31507352d84872147`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/TreeNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [findAtom](declarations/findatom.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [findAtom_le](declarations/findatom-le.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [findAtom_bot](declarations/findatom-bot.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [pred_findAtom](declarations/pred-findatom.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [findAtom_eq_bot](declarations/findatom-eq-bot.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [findAtom_ne_bot](declarations/findatom-ne-bot.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isAtom_findAtom](declarations/isatom-findatom.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [isAtom_findAtom_iff](declarations/isatom-findatom-iff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instIsAtomic](declarations/instisatomic.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [RootedTree](declarations/rootedtree.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [SubRootedTree](declarations/subrootedtree.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [SubRootedTree.root](declarations/subrootedtree-root.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [RootedTree.subtree](declarations/rootedtree-subtree.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [RootedTree.root_subtree](declarations/rootedtree-root-subtree.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [RootedTree.subtree_root](declarations/rootedtree-subtree-root.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [SubRootedTree.ext](declarations/subrootedtree-ext.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [SubRootedTree.mem_iff](declarations/subrootedtree-mem-iff.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [SubRootedTree.coeTree](declarations/subrootedtree-coetree.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [SubRootedTree.bot_mem_iff](declarations/subrootedtree-bot-mem-iff.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [RootedTree.subtrees](declarations/rootedtree-subtrees.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [SubRootedTree.root_ne_bot_of_mem_subtrees](declarations/subrootedtree-root-ne-bot-of-mem-subtrees.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [RootedTree.mem_subtrees_disjoint_iff](declarations/rootedtree-mem-subtrees-disjoint-iff.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [RootedTree.subtrees_disjoint](declarations/rootedtree-subtrees-disjoint.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [RootedTree.subtreeOf](declarations/rootedtree-subtreeof.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [RootedTree.mem_subtreeOf](declarations/rootedtree-mem-subtreeof.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [RootedTree.subtreeOf_mem_subtrees](declarations/rootedtree-subtreeof-mem-subtrees.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dce90df0fc81ad927e0575cf4f84b0edf97f44d8f469c2507244ae7b7793028c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Tree/Variantd03f57b6009d9815639df251e17a9b5c097d8e1fadbfa489475450933ad718e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
