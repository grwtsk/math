# Topology Locally Finite Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LocallyFinite/Variante4f4422217d2485a567712fb23c64bac7aaebd901d7354b3a328ec2d25270f3c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9e693eb4c7b0be189c182634bf59df514459f1a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologyLocallyFinitePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [LocallyFinite](declarations/locallyfinite.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [locallyFinite_of_finite](declarations/locallyfinite-of-finite.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [point_finite](declarations/point-finite.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [subset](declarations/subset.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [comp_injOn](declarations/comp-injon.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comp_injective](declarations/comp-injective.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [of_comp_surjective](declarations/of-comp-surjective.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [on_range](declarations/on-range.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [_root_.locallyFinite_iff_smallSets](declarations/root-locallyfinite-iff-smallsets.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eventually_smallSets](declarations/eventually-smallsets.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [exists_mem_basis](declarations/exists-mem-basis.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [nhdsWithin_iUnion](declarations/nhdswithin-iunion.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [continuousOn_iUnion'](declarations/continuouson-iunion.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [continuousOn_iUnion](declarations/continuouson-iunion-source-edition-2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [continuous'](declarations/continuous.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [continuous](declarations/continuous-source-edition-2.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [closure](declarations/closure.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [closure_iUnion](declarations/closure-iunion.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [isClosed_iUnion](declarations/isclosed-iunion.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [iInter_compl_mem_nhds](declarations/iinter-compl-mem-nhds.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_forall_eventually_eq_prod](declarations/exists-forall-eventually-eq-prod.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exists_forall_eventually_atTop_eventually_eq'](declarations/exists-forall-eventually-attop-eventually-eq.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [exists_forall_eventually_atTop_eventuallyEq](declarations/exists-forall-eventually-attop-eventuallyeq.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [preimage_continuous](declarations/preimage-continuous.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [prod_right](declarations/prod-right.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [prod_left](declarations/prod-left.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Equiv.locallyFinite_comp_iff](declarations/equiv-locallyfinite-comp-iff.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [locallyFinite_sum](declarations/locallyfinite-sum.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [LocallyFinite.sumElim](declarations/locallyfinite-sumelim.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [locallyFinite_option](declarations/locallyfinite-option.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [LocallyFinite.option_elim'](declarations/locallyfinite-option-elim.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [LocallyFinite.eventually_subset](declarations/locallyfinite-eventually-subset.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90d9bf2308e2719afd1abf8422aeac88af5cd232a27bfb1ccf3d096ecfb93a91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyFinite/Variante4f4422217d2485a567712fb23c64bac7aaebd901d7354b3a328ec2d25270f3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
