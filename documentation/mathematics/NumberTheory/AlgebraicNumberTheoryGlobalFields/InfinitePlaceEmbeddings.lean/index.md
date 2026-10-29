# Infinite Place Embeddings

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b641817ccaecb6d81def132fbd6d782978a18853`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/AlgebraicNumberTheoryGlobalFields/InfinitePlaceEmbeddings.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [card](declarations/card.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [range_eval_eq_rootSet_minpoly](declarations/range-eval-eq-rootset-minpoly.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coeff_bdd_of_norm_le](declarations/coeff-bdd-of-norm-le.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [finite_of_norm_le](declarations/finite-of-norm-le.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pow_eq_one_of_norm_eq_one](declarations/pow-eq-one-of-norm-eq-one.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [NumberField.place](declarations/numberfield-place.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [NumberField.place_apply](declarations/numberfield-place-apply.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lift](declarations/lift.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [lift_comp_algebraMap](declarations/lift-comp-algebramap.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [lift_algebraMap_apply](declarations/lift-algebramap-apply.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `abbrev` | [conjugate](declarations/conjugate.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [conjugate_coe_eq](declarations/conjugate-coe-eq.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [place_conjugate](declarations/place-conjugate.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [IsReal](declarations/isreal.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [isReal_iff](declarations/isreal-iff.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [isReal_conjugate_iff](declarations/isreal-conjugate-iff.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsReal.embedding](declarations/isreal-embedding.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [IsReal.coe_embedding_apply](declarations/isreal-coe-embedding-apply.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [IsReal.comp](declarations/isreal-comp.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isReal_comp_iff](declarations/isreal-comp-iff.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [exists_comp_symm_eq_of_comp_eq](declarations/exists-comp-symm-eq-of-comp-eq.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [IsConj](declarations/isconj.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [IsConj.eq](declarations/isconj-eq.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [IsConj.ext](declarations/isconj-ext.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsConj.ext_iff](declarations/isconj-ext-iff.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsConj.isReal_comp](declarations/isconj-isreal-comp.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isConj_one_iff](declarations/isconj-one-iff.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [IsConj.symm](declarations/isconj-symm.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [isConj_symm](declarations/isconj-symm-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1755fc430bd2a2776009ec8c3a50fa3fb4027fca31a0a7b5bbb71c60f9d89779 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/Embeddings/Variantc87adc249dcfb2349d5f7f64ff48c71f56190c0c4e7f17710f09d694fd94625d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
