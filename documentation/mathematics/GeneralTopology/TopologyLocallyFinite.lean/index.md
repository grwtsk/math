# Topology Locally Finite

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `573732189552e9aef7fb9c78b281dcb2b0d9ded2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/TopologyLocallyFinite.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [LocallyFinite](declarations/locallyfinite.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [locallyFinite_of_finite](declarations/locallyfinite-of-finite.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [point_finite](declarations/point-finite.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [subset](declarations/subset.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [comp_injOn](declarations/comp-injon.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [comp_injective](declarations/comp-injective.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [_root_.locallyFinite_iff_smallSets](declarations/root-locallyfinite-iff-smallsets.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [eventually_smallSets](declarations/eventually-smallsets.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [exists_mem_basis](declarations/exists-mem-basis.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [nhdsWithin_iUnion](declarations/nhdswithin-iunion.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [continuousOn_iUnion'](declarations/continuouson-iunion.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [continuousOn_iUnion](declarations/continuouson-iunion-source-edition-2.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [continuous'](declarations/continuous.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [continuous](declarations/continuous-source-edition-2.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [closure](declarations/closure.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [closure_iUnion](declarations/closure-iunion.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isClosed_iUnion](declarations/isclosed-iunion.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [iInter_compl_mem_nhds](declarations/iinter-compl-mem-nhds.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_forall_eventually_eq_prod](declarations/exists-forall-eventually-eq-prod.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exists_forall_eventually_atTop_eventually_eq'](declarations/exists-forall-eventually-attop-eventually-eq.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exists_forall_eventually_atTop_eventuallyEq](declarations/exists-forall-eventually-attop-eventuallyeq.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [preimage_continuous](declarations/preimage-continuous.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [prod_right](declarations/prod-right.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [prod_left](declarations/prod-left.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Equiv.locallyFinite_comp_iff](declarations/equiv-locallyfinite-comp-iff.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [locallyFinite_sum](declarations/locallyfinite-sum.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [LocallyFinite.sumElim](declarations/locallyfinite-sumelim.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [locallyFinite_option](declarations/locallyfinite-option.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [LocallyFinite.option_elim'](declarations/locallyfinite-option-elim.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [LocallyFinite.eventually_subset](declarations/locallyfinite-eventually-subset.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23ef760300dc8d5e1578811b83d755095681b2531424f1f9df1ee05fe47107ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocallyFinite/Variant70c3caf86205ff3e3497caee7fea166b5d2577e43d548c4b8e80c93a2cb7ad7c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
