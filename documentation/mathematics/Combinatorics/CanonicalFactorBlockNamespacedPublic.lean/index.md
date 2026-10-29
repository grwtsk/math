# Canonical Factor Block Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8568131a774a3ace406dd4653015337f5a5907d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/Combinatorics/CanonicalFactorBlockNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [halfOpenFactorExponent](declarations/halfopenfactorexponent.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [pow_halfOpenFactorExponent_le](declarations/pow-halfopenfactorexponent-le.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [lt_pow_halfOpenFactorExponent_succ](declarations/lt-pow-halfopenfactorexponent-succ.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [halfOpen_boundary_pair_uses_q_add_one](declarations/halfopen-boundary-pair-uses-q-add-one.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [IsEffectiveTypeIIShellPair](declarations/iseffectivetypeiishellpair.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [effectiveTypeIIShellPairs](declarations/effectivetypeiishellpairs.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_effectiveTypeIIShellPairs_iff](declarations/mem-effectivetypeiishellpairs-iff.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [TypeIIShellFactorBlock](declarations/typeiishellfactorblock.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [TypeIIShellFactorBlock.ext](declarations/typeiishellfactorblock-ext.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [TypeIIShellFactorBlock.ContainsLeft](declarations/typeiishellfactorblock-containsleft.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [TypeIIShellFactorBlock.ContainsRight](declarations/typeiishellfactorblock-containsright.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [TypeIIShellFactorBlock.Left](declarations/typeiishellfactorblock-left.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [TypeIIShellFactorBlock.Right](declarations/typeiishellfactorblock-right.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [TypeIIShellFactorBlock.leftFintype](declarations/typeiishellfactorblock-leftfintype.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [TypeIIShellFactorBlock.rightFintype](declarations/typeiishellfactorblock-rightfintype.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [effectiveShellPair_exponentRelation](declarations/effectiveshellpair-exponentrelation.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [shellFactorBlockOfPair](declarations/shellfactorblockofpair.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [relevantShellBlocks](declarations/relevantshellblocks.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [shellFactorBlockOfPair_mem_relevant](declarations/shellfactorblockofpair-mem-relevant.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [shellFactorBlockOfPair_left_mem](declarations/shellfactorblockofpair-left-mem.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [shellFactorBlockOfPair_right_mem](declarations/shellfactorblockofpair-right-mem.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [productShell_pair_has_relevant_exponents](declarations/productshell-pair-has-relevant-exponents.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [halfOpenFactorExponent_eq_of_mem](declarations/halfopenfactorexponent-eq-of-mem.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [relevantShellBlocks_unique_assignment](declarations/relevantshellblocks-unique-assignment.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [shellFactorBlockPairs](declarations/shellfactorblockpairs.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mem_shellFactorBlockPairs_iff](declarations/mem-shellfactorblockpairs-iff.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [relevantShellBlocks_pairwiseDisjoint](declarations/relevantshellblocks-pairwisedisjoint.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [productShell_eq_disjointUnion_factorBlocks](declarations/productshell-eq-disjointunion-factorblocks.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [relevantShellExponentPairs](declarations/relevantshellexponentpairs.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [exponentPair_mem_relevant](declarations/exponentpair-mem-relevant.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [card_relevantShellExponentPairs_le](declarations/card-relevantshellexponentpairs-le.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [card_relevantShellBlocks_le](declarations/card-relevantshellblocks-le.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [shellBlockLeftCoefficient](declarations/shellblockleftcoefficient.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [shellBlockRightCoefficient](declarations/shellblockrightcoefficient.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6837f65d367fb8a5eb250dc15fb08d020077237fc3197f9b7c0d7b076510d891 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalFactorBlock/Variant757bde06aedddb69772876d34af99eb5c7e8857c2c021eb96485bd5634ebb8b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
