# Shapes Functor To Types

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 22 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05b2ed572481f041f5ecef43e20dfaac928bfaeb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFunctorToTypes.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [prod](declarations/prod.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [prod.fst](declarations/prod-fst.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [prod.snd](declarations/prod-snd.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [prod.lift](declarations/prod-lift.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [prod.lift_fst](declarations/prod-lift-fst.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [prod.lift_snd](declarations/prod-lift-snd.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [binaryProductCone](declarations/binaryproductcone.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [binaryProductLimit](declarations/binaryproductlimit.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [binaryProductLimitCone](declarations/binaryproductlimitcone.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [binaryProductIso](declarations/binaryproductiso.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [binaryProductIso_hom_comp_fst](declarations/binaryproductiso-hom-comp-fst.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [binaryProductIso_hom_comp_snd](declarations/binaryproductiso-hom-comp-snd.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [binaryProductIso_inv_comp_fst](declarations/binaryproductiso-inv-comp-fst.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [binaryProductIso_inv_comp_fst_apply](declarations/binaryproductiso-inv-comp-fst-apply.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [binaryProductIso_inv_comp_snd](declarations/binaryproductiso-inv-comp-snd.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [binaryProductIso_inv_comp_snd_apply](declarations/binaryproductiso-inv-comp-snd-apply.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [prodMk](declarations/prodmk.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [prodMk_fst](declarations/prodmk-fst.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [prodMk_snd](declarations/prodmk-snd.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [prod_ext](declarations/prod-ext-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [binaryProductEquiv](declarations/binaryproductequiv.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [prod_ext'](declarations/prod-ext.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [coprod](declarations/coprod.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [coprod.inl](declarations/coprod-inl.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [coprod.inr](declarations/coprod-inr.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [coprod.desc](declarations/coprod-desc.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [coprod.desc_inl](declarations/coprod-desc-inl.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [coprod.desc_inr](declarations/coprod-desc-inr.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [binaryCoproductCocone](declarations/binarycoproductcocone.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [binaryCoproductColimit](declarations/binarycoproductcolimit.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [binaryCoproductColimitCocone](declarations/binarycoproductcolimitcocone.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [binaryCoproductIso](declarations/binarycoproductiso.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [inl_comp_binaryCoproductIso_hom](declarations/inl-comp-binarycoproductiso-hom.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [inl_comp_binaryCoproductIso_hom_apply](declarations/inl-comp-binarycoproductiso-hom-apply.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [inr_comp_binaryCoproductIso_hom](declarations/inr-comp-binarycoproductiso-hom.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [inr_comp_binaryCoproductIso_hom_apply](declarations/inr-comp-binarycoproductiso-hom-apply.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [inl_comp_binaryCoproductIso_inv](declarations/inl-comp-binarycoproductiso-inv.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [inl_comp_binaryCoproductIso_inv_apply](declarations/inl-comp-binarycoproductiso-inv-apply.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [inr_comp_binaryCoproductIso_inv](declarations/inr-comp-binarycoproductiso-inv.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [inr_comp_binaryCoproductIso_inv_apply](declarations/inr-comp-binarycoproductiso-inv-apply.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [coprodInl](declarations/coprodinl.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `abbrev` | [coprodInr](declarations/coprodinr.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [binaryCoproductEquiv](declarations/binarycoproductequiv.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87d32e09031ae65a06e051c1de87dcccedb555667e88fe4600184a19399bc64f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variantef7f1b12dedbb02123de281e89a78d667b49475deab98635dd6b45fe392e0d71.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
