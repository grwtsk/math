# Group Finsupp Namespaced

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ca1da52a2379751bbc9093966cda0a207e24b84`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupFinsuppNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instAdd](declarations/instadd.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [coe_add](declarations/coe-add.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [add_apply](declarations/add-apply.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [support_add](declarations/support-add.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [support_add_eq](declarations/support-add-eq.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [instAddZeroClass](declarations/instaddzeroclass.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instIsLeftCancelAdd](declarations/instisleftcanceladd.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [addEquivFunOnFinite](declarations/addequivfunonfinite.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Group Finsupp Namespaced](declarations/finsuppunique.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instIsRightCancelAdd](declarations/instisrightcanceladd.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instIsCancelAdd](declarations/instiscanceladd.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [applyAddHom](declarations/applyaddhom.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [coeFnAddHom](declarations/coefnaddhom.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mapRange_add](declarations/maprange-add-source-edition-2.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [mapRange_add'](declarations/maprange-add.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [embDomain.addMonoidHom](declarations/embdomain-addmonoidhom.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [embDomain_add](declarations/embdomain-add.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [instNatSMul](declarations/instnatsmul.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [instAddMonoid](declarations/instaddmonoid.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [instAddCommMonoid](declarations/instaddcommmonoid.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [instNeg](declarations/instneg.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [coe_neg](declarations/coe-neg.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [neg_apply](declarations/neg-apply.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [mapRange_neg](declarations/maprange-neg.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [mapRange_neg'](declarations/maprange-neg-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instSub](declarations/instsub.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [coe_sub](declarations/coe-sub.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [sub_apply](declarations/sub-apply.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [mapRange_sub](declarations/maprange-sub.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mapRange_sub'](declarations/maprange-sub-source-edition-2.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instIntSMul](declarations/instintsmul.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instAddGroup](declarations/instaddgroup.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instAddCommGroup](declarations/instaddcommgroup.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [support_neg](declarations/support-neg.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [support_sub](declarations/support-sub.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b26443c0f37bb585c97d08ae9332f66c0b5cf7918e3f2951ebfaee1d9784ba3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Finsupp/Variant7289364a67376bdc330042a7af1d827859665406e4967133336d99a0696edf35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
