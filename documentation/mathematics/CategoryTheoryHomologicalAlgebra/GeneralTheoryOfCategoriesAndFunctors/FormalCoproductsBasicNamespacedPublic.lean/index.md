# Formal Coproducts Basic Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8b3ac6620686d8e6e4edc00395f4c7a630b222b30ba76899b9322b45a5d3d867.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cde92e55dd45a87c7877796ba19de8ea6540b46`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FormalCoproductsBasicNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [FormalCoproduct](declarations/formalcoproduct.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Hom](declarations/hom.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [category](declarations/category.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [hom_ext](declarations/hom-ext.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [hom_ext_iff](declarations/hom-ext-iff.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [hom_ext_iff'](declarations/hom-ext-iff-source-edition-2.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isoOfComponents](declarations/isoofcomponents.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [incl](declarations/incl.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Hom.fromIncl](declarations/hom-fromincl.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Hom.asSigma](declarations/hom-assigma.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [Hom.fromIncl_asSigma](declarations/hom-fromincl-assigma.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [inclHomEquiv](declarations/inclhomequiv.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [fullyFaithfulIncl](declarations/fullyfaithfulincl.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [homOfPiHom](declarations/homofpihom.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [cofan](declarations/cofan.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [cofan_inj](declarations/cofan-inj-source-edition-2.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [cofan_inj_f_fst](declarations/cofan-inj-f-fst.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [cofan_inj_f_snd](declarations/cofan-inj-f-snd.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [cofan_inj_φ](declarations/cofan-inj.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [cofanHomEquiv](declarations/cofanhomequiv.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [isColimitCofan](declarations/iscolimitcofan.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [coproductIsoCofanPt](declarations/coproductisocofanpt.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [ι_comp_coproductIsoCofanPt](declarations/comp-coproductisocofanpt.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toFun](declarations/tofun.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [cofanPtIsoSelf](declarations/cofanptisoself.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [inj_comp_cofanPtIsoSelf_hom](declarations/inj-comp-cofanptisoself-hom.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [fromIncl_comp_cofanPtIsoSelf_inv](declarations/fromincl-comp-cofanptisoself-inv.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [coproductIsoSelf](declarations/coproductisoself.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [ι_comp_coproductIsoSelf_hom](declarations/comp-coproductisoself-hom.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [fromIncl_comp_coproductIsoSelf_inv](declarations/fromincl-comp-coproductisoself-inv.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [objIsoOfEq](declarations/objisoofeq.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [objIsoOfEq_rfl](declarations/objisoofeq-rfl.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [objIsoOfEq_trans](declarations/objisoofeq-trans.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [objIsoOfEq_symm](declarations/objisoofeq-symm.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [isTerminalIncl](declarations/isterminalincl.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [pullbackCone](declarations/pullbackcone.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [pullbackCone_fst_f](declarations/pullbackcone-fst-f.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [pullbackCone_fst_φ](declarations/pullbackcone-fst.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [pullbackCone_snd_f](declarations/pullbackcone-snd-f.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [pullbackCone_snd_φ](declarations/pullbackcone-snd.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [pullbackCone_condition](declarations/pullbackcone-condition.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [homPullbackEquiv](declarations/hompullbackequiv.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [isLimitPullbackCone](declarations/islimitpullbackcone.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [hasPullback_of_pullbackCone](declarations/haspullback-of-pullbackcone.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [isPullback](declarations/ispullback.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [eval](declarations/eval.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [evalCompInclIsoId](declarations/evalcompinclisoid.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [isColimitEvalMapCoconeCofan](declarations/iscolimitevalmapcoconecofan.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `abbrev` | [yoneda](declarations/yoneda.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `abbrev` | [uliftYoneda](declarations/uliftyoneda.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `abbrev` | [shrinkYoneda](declarations/shrinkyoneda.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [evalOp](declarations/evalop.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [evalOpCompInlIsoId](declarations/evalopcompinlisoid.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [isLimitEvalMapConeCofanOp](declarations/islimitevalmapconecofanop.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c0a79369400cce1d50c1695b4fa44a948d73ef1cbd9530e343607a0c77ad66cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8b3ac6620686d8e6e4edc00395f4c7a630b222b30ba76899b9322b45a5d3d867.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
