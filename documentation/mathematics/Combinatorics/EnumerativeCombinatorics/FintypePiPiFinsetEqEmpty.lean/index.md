# Fintype Pi Pi Finset Eq Empty

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a00ff269c940f25618b839ba807538c13880d71`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/EnumerativeCombinatorics/FintypePiPiFinsetEqEmpty.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [piFinset](declarations/pifinset.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [mem_piFinset](declarations/mem-pifinset.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [coe_piFinset](declarations/coe-pifinset.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [piFinset_subset](declarations/pifinset-subset.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [piFinset_eq_empty](declarations/pifinset-eq-empty.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [piFinset_empty](declarations/pifinset-empty.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [piFinset_nonempty](declarations/pifinset-nonempty.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [_root_.Finset.Nonempty.piFinset_const](declarations/root-finset-nonempty-pifinset-const.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [piFinset_of_isEmpty](declarations/pifinset-of-isempty.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [piFinset_singleton](declarations/pifinset-singleton.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [piFinset_subsingleton](declarations/pifinset-subsingleton.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [piFinset_disjoint_of_disjoint](declarations/pifinset-disjoint-of-disjoint.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [piFinset_image](declarations/pifinset-image.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [eval_image_piFinset_subset](declarations/eval-image-pifinset-subset.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [eval_image_piFinset](declarations/eval-image-pifinset.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [eval_image_piFinset_const](declarations/eval-image-pifinset-const.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [filter_piFinset_of_notMem](declarations/filter-pifinset-of-notmem.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [piFinset_update_eq_filter_piFinset_mem](declarations/pifinset-update-eq-filter-pifinset-mem.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [piFinset_update_singleton_eq_filter_piFinset_eq](declarations/pifinset-update-singleton-eq-filter-pifinset-eq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [Pi.instFintype](declarations/pi-instfintype.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Fintype.piFinset_univ](declarations/fintype-pifinset-univ.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [_root_.Function.Embedding.fintype](declarations/root-function-embedding-fintype.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [RelHom.instFintype](declarations/relhom-instfintype.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [RelEmbedding.instFintype](declarations/relembedding-instfintype.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [Finset.univ_pi_univ](declarations/finset-univ-pi-univ.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [piFinset_filter_const](declarations/pifinset-filter-const.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [piDiag_subset_piFinset](declarations/pidiag-subset-pifinset.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [Finite.pi](declarations/finite-pi-source-edition-2.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [Finite.pi'](declarations/finite-pi.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [forall_finite_image_eval_iff](declarations/forall-finite-image-eval-iff.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76b3c94cf592c9cda5028d40b048c31fef6446114f64f9b6a6118f73dd029523 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variantd4c3acd2f8e46d502474a11c9abf47a546429c11d8b7893088492053bad435ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
