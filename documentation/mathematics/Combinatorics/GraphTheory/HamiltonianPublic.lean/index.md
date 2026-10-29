# Hamiltonian Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 39 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3eeb27ff32b0125c6eaea3e4986c7bb9a4dea09`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/GraphTheory/HamiltonianPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsHamiltonian](declarations/ishamiltonian.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [IsHamiltonian.map](declarations/ishamiltonian-map.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [IsHamiltonian.mem_support](declarations/ishamiltonian-mem-support.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [IsHamiltonian.isPath](declarations/ishamiltonian-ispath.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [IsPath.isHamiltonian_of_mem](declarations/ispath-ishamiltonian-of-mem.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [IsPath.isHamiltonian_iff](declarations/ispath-ishamiltonian-iff.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsHamiltonian.of_subsingleton](declarations/ishamiltonian-of-subsingleton.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [IsHamiltonian.fintype](declarations/ishamiltonian-fintype.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [IsHamiltonian.finite](declarations/ishamiltonian-finite.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [not_isHamiltonian_of_infinite](declarations/not-ishamiltonian-of-infinite.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [IsHamiltonian.toFinset_support](declarations/ishamiltonian-tofinset-support.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsHamiltonian.setOfPred_support](declarations/ishamiltonian-setofpred-support.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [IsHamiltonian.length_eq](declarations/ishamiltonian-length-eq.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [IsHamiltonian.length_support](declarations/ishamiltonian-length-support.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [IsHamiltonian.supportGetEquiv](declarations/ishamiltonian-supportgetequiv.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [IsHamiltonian.getVertEquiv](declarations/ishamiltonian-getvertequiv.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isHamiltonian_iff_support_get_bijective](declarations/ishamiltonian-iff-support-get-bijective.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [IsHamiltonian.getVert_surjective](declarations/ishamiltonian-getvert-surjective.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [IsHamiltonian.injective_of_isPath_map](declarations/ishamiltonian-injective-of-ispath-map.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [isHamiltonian_iff_isPath_and_length_eq](declarations/ishamiltonian-iff-ispath-and-length-eq.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [isHamiltonian_transfer](declarations/ishamiltonian-transfer.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [IsHamiltonianCycle](declarations/ishamiltoniancycle.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [IsHamiltonianCycle.isCycle](declarations/ishamiltoniancycle-iscycle.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsHamiltonianCycle.map](declarations/ishamiltoniancycle-map.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsHamiltonianCycle.finite](declarations/ishamiltoniancycle-finite.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [not_isHamiltonianCycle_of_infinite](declarations/not-ishamiltoniancycle-of-infinite.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isHamiltonianCycle_isCycle_and_isHamiltonian_tail](declarations/ishamiltoniancycle-iscycle-and-ishamiltonian-tail.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isHamiltonianCycle_iff_isCycle_and_support_count_tail_eq_one](declarations/ishamiltoniancycle-iff-iscycle-and-support-count-tail-eq-one.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [IsHamiltonianCycle.mem_support](declarations/ishamiltoniancycle-mem-support.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsHamiltonianCycle.length_eq](declarations/ishamiltoniancycle-length-eq.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [IsHamiltonianCycle.count_support_self](declarations/ishamiltoniancycle-count-support-self.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsHamiltonianCycle.support_count_of_ne](declarations/ishamiltoniancycle-support-count-of-ne.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [isHamiltonianCycle_iff_isCycle_and_length_eq](declarations/ishamiltoniancycle-iff-iscycle-and-length-eq.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [isHamiltonianCycle_rotate](declarations/ishamiltoniancycle-rotate.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [isHamiltonianCycle_transfer](declarations/ishamiltoniancycle-transfer.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [IsHamiltonian](declarations/ishamiltonian-source-edition-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsHamiltonian.exists_isHamiltonianCycle](declarations/ishamiltonian-exists-ishamiltoniancycle.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsHamiltonian.mono](declarations/ishamiltonian-mono.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [not_isHamiltonian_of_isEmpty](declarations/not-ishamiltonian-of-isempty.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsHamiltonian.connected](declarations/ishamiltonian-connected.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsHamiltonian.of_card_eq_one](declarations/ishamiltonian-of-card-eq-one.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [not_isHamiltonian_of_card_eq_two](declarations/not-ishamiltonian-of-card-eq-two.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [not_isHamiltonian_bot_of_card_ne_one](declarations/not-ishamiltonian-bot-of-card-ne-one.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [IsHamiltonian.of_unique](declarations/ishamiltonian-of-unique.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsBridge.not_isHamiltonian](declarations/isbridge-not-ishamiltonian.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03a439116b5bb693051a15ce172a883edb5866d5a5251bc76bb1aa29dd1668c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Hamiltonian/Variant1e6a46b62dc95eb39818ac88edbaf87969367c230c7d8368e6f515a5cb6f0cc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
