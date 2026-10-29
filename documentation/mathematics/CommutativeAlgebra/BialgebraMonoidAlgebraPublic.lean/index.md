# Bialgebra Monoid Algebra Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/MonoidAlgebra/Variantfe6a49b32b09c6fe47856cd19b794d710b8c5d3110a9f97253d23e76e95155ac.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5af9a71136ce353f26c2006bde666e2bc5cca56c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/CommutativeAlgebra/BialgebraMonoidAlgebraPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [isGroupLikeElem_single_one](declarations/isgrouplikeelem-single-one.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [span_isGroupLikeElem](declarations/span-isgrouplikeelem.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instBialgebra](declarations/instbialgebra.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [mapDomainBialgHom](declarations/mapdomainbialghom.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [mapDomainBialgHom_id](declarations/mapdomainbialghom-id.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [mapDomainBialgHom_comp](declarations/mapdomainbialghom-comp.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [mapDomainBialgHom_mapDomainBialgHom](declarations/mapdomainbialghom-mapdomainbialghom.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [mapDomainBialgHom_single](declarations/mapdomainbialghom-single.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [bialgHom_ext](declarations/bialghom-ext-source-edition-3.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [bialgHom_ext'](declarations/bialghom-ext-source-edition-2.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [counit_domCongr](declarations/counit-domcongr.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [domCongrBialgEquiv](declarations/domcongrbialgequiv.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [bialgEquivOfSubsingleton](declarations/bialgequivofsubsingleton.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [isGroupLikeElem_of](declarations/isgrouplikeelem-of-source-edition-2.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [liftGroupLikeBialgHom](declarations/liftgrouplikebialghom.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [toAdditiveBialgEquiv](declarations/toadditivebialgequiv.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [toAdditiveBialgEquiv_single](declarations/toadditivebialgequiv-single.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [liftMulEquiv](declarations/liftmulequiv-source-edition-2.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [convMul_algHom_single_one](declarations/convmul-alghom-single-one.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [convMul_bialgHom_single_one](declarations/convmul-bialghom-single-one.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [mapDomainBialgHom_mul](declarations/mapdomainbialghom-mul.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [comulAlgHom_comp_mapRingHom](declarations/comulalghom-comp-mapringhom-source-edition-2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [counitAlgHom_comp_mapRingHom](declarations/counitalghom-comp-mapringhom-source-edition-2.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [isGroupLikeElem_iff_mem_range_single_one](declarations/isgrouplikeelem-iff-mem-range-single-one.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [isGroupLikeElem_iff_mem_range_of](declarations/isgrouplikeelem-iff-mem-range-of.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [mapDomainOfBialgHomFun](declarations/mapdomainofbialghomfun.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [single_mapDomainOfBialgHomFun_one](declarations/single-mapdomainofbialghomfun-one.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mapDomainOfBialgHom](declarations/mapdomainofbialghom.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [single_mapDomainOfBialgHom](declarations/single-mapdomainofbialghom.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [mapDomainBialgHom_mapDomainOfBialgHom](declarations/mapdomainbialghom-mapdomainofbialghom.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [mapDomainOfBialgHom_mapDomainBialgHom](declarations/mapdomainofbialghom-mapdomainbialghom.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [mapDomainOfBialgHom_id](declarations/mapdomainofbialghom-id.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [mapDomainOfBialgHom_comp](declarations/mapdomainofbialghom-comp.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mapDomainBialgHomEquiv](declarations/mapdomainbialghomequiv.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [mapDomainBialgHomMulEquiv](declarations/mapdomainbialghommulequiv.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [bialgHom_ext'](declarations/bialghom-ext.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [isGroupLikeElem_of](declarations/isgrouplikeelem-of.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [toMultiplicativeBialgEquiv](declarations/tomultiplicativebialgequiv.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [toMultiplicativeBialgEquiv_single](declarations/tomultiplicativebialgequiv-single.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [liftMulEquiv](declarations/liftmulequiv.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [comulAlgHom_comp_mapRingHom](declarations/comulalghom-comp-mapringhom.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [counitAlgHom_comp_mapRingHom](declarations/counitalghom-comp-mapringhom.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isGroupLikeElem_iff_mem_range_of](declarations/isgrouplikeelem-iff-mem-range-of-source-edition-2.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [mapDomainBialgHomAddEquiv](declarations/mapdomainbialghomaddequiv.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [instBialgebra](declarations/instbialgebra-source-edition-2.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [comul_T](declarations/comul-t.md) | 440 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [counit_T](declarations/counit-t.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4f684a5e086e1461fc9a153c90f8629e9a4540ee612a77f13031249555620b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/MonoidAlgebra/Variantfe6a49b32b09c6fe47856cd19b794d710b8c5d3110a9f97253d23e76e95155ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
