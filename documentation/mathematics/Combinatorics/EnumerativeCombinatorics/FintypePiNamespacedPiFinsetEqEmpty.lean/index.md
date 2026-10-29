# Fintype Pi Namespaced Pi Finset Eq Empty

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a8afcfbb191875bddaa2c438d262100f91ba1bc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FintypePiNamespacedPiFinsetEqEmpty.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [piFinset](declarations/pifinset.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_piFinset](declarations/mem-pifinset.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_piFinset](declarations/coe-pifinset.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [piFinset_subset](declarations/pifinset-subset.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [piFinset_eq_empty](declarations/pifinset-eq-empty.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [piFinset_empty](declarations/pifinset-empty.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [piFinset_nonempty](declarations/pifinset-nonempty.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Fintype Pi Namespaced Pi Finset Eq Empty](declarations/pifinset-const.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [piFinset_of_isEmpty](declarations/pifinset-of-isempty.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [piFinset_singleton](declarations/pifinset-singleton.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [piFinset_subsingleton](declarations/pifinset-subsingleton.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [piFinset_disjoint_of_disjoint](declarations/pifinset-disjoint-of-disjoint.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [piFinset_image](declarations/pifinset-image.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [eval_image_piFinset_subset](declarations/eval-image-pifinset-subset.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [eval_image_piFinset](declarations/eval-image-pifinset.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [eval_image_piFinset_const](declarations/eval-image-pifinset-const.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [filter_piFinset_of_notMem](declarations/filter-pifinset-of-notmem.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [piFinset_update_eq_filter_piFinset_mem](declarations/pifinset-update-eq-filter-pifinset-mem.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [piFinset_update_singleton_eq_filter_piFinset_eq](declarations/pifinset-update-singleton-eq-filter-pifinset-eq.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [Pi.instFintype](declarations/pi-instfintype.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Fintype.piFinset_univ](declarations/fintype-pifinset-univ.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [Fintype Pi Namespaced Pi Finset Eq Empty](declarations/fintype.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [RelHom.instFintype](declarations/relhom-instfintype.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [RelEmbedding.instFintype](declarations/relembedding-instfintype.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Finset.univ_pi_univ](declarations/finset-univ-pi-univ.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [piFinset_filter_const](declarations/pifinset-filter-const.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [piDiag_subset_piFinset](declarations/pidiag-subset-pifinset.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Finite.pi](declarations/finite-pi-source-edition-2.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Finite.pi'](declarations/finite-pi.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [forall_finite_image_eval_iff](declarations/forall-finite-image-eval-iff.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1c607f4f1916853772296547399d922db39db7963d0c5fb59df3ca7454fe4c7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Varianta11a439205be641b50e13be0ef8455d1868ba6358adbe7c1a6779a50683eaed6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
