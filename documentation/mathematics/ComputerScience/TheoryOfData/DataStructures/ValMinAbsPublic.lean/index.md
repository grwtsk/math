# Val Min Abs Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `75220e7726639638f208b1fd8186b8aaa2b97abb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/ValMinAbsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [valMinAbs](declarations/valminabs.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [valMinAbs_def_zero](declarations/valminabs-def-zero.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [valMinAbs_def_pos](declarations/valminabs-def-pos.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [coe_valMinAbs](declarations/coe-valminabs.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [injective_valMinAbs](declarations/injective-valminabs.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [valMinAbs_inj](declarations/valminabs-inj.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [valMinAbs_nonneg_iff](declarations/valminabs-nonneg-iff.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [valMinAbs_mul_two_eq_iff](declarations/valminabs-mul-two-eq-iff.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [valMinAbs_mem_Ioc](declarations/valminabs-mem-ioc.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [valMinAbs_spec](declarations/valminabs-spec.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [natAbs_valMinAbs_le](declarations/natabs-valminabs-le.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_neg_of_valMinAbs_eq_neg_valMinAbs](declarations/eq-neg-of-valminabs-eq-neg-valminabs.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [valMinAbs_zero](declarations/valminabs-zero.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [valMinAbs_eq_zero](declarations/valminabs-eq-zero.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [natCast_natAbs_valMinAbs](declarations/natcast-natabs-valminabs.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [valMinAbs_neg_of_ne_half](declarations/valminabs-neg-of-ne-half.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [natAbs_valMinAbs_neg](declarations/natabs-valminabs-neg.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [natAbs_valMinAbs_eq_natAbs_valMinAbs](declarations/natabs-valminabs-eq-natabs-valminabs.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [abs_valMinAbs_eq_abs_valMinAbs](declarations/abs-valminabs-eq-abs-valminabs.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [val_eq_ite_valMinAbs](declarations/val-eq-ite-valminabs.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [prime_ne_zero](declarations/prime-ne-zero.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [valMinAbs_natAbs_eq_min](declarations/valminabs-natabs-eq-min.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [valMinAbs_natCast_of_le_half](declarations/valminabs-natcast-of-le-half.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [valMinAbs_natCast_of_half_lt](declarations/valminabs-natcast-of-half-lt.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [valMinAbs_natCast_eq_self](declarations/valminabs-natcast-eq-self.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [natAbs_valMinAbs_add_le](declarations/natabs-valminabs-add-le.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a392ffcee4b0b67b79909b760cff26299e1bdf55d09121cf3f6c68433091df8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ValMinAbs/Variant0bade970f555cd66666423c37bd00d704520ebd6c761479a5c33415175949056.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
