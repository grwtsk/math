# Rational Map

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 41 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d59b9102d2dfc449e2da16f0d28631b21cda0758`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RationalMap.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialMap](declarations/partialmap.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [PartialMap.IsOver](declarations/partialmap-isover.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [ext_iff](declarations/ext-iff.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [ext](declarations/ext.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [restrict](declarations/restrict.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [restrict_id](declarations/restrict-id.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [restrict_id_hom](declarations/restrict-id-hom.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [restrict_restrict](declarations/restrict-restrict.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [restrict_restrict_hom](declarations/restrict-restrict-hom.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [compHom](declarations/comphom.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [_root_.AlgebraicGeometry.Scheme.Hom.toPartialMap](declarations/root-algebraicgeometry-scheme-hom-topartialmap.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isOver_iff](declarations/isover-iff.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [isOver_iff_eq_restrict](declarations/isover-iff-eq-restrict.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [fromSpecStalkOfMem](declarations/fromspecstalkofmem.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `abbrev` | [fromFunctionField](declarations/fromfunctionfield.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [fromSpecStalkOfMem_restrict](declarations/fromspecstalkofmem-restrict.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [fromFunctionField_restrict](declarations/fromfunctionfield-restrict.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ofFromSpecStalk](declarations/offromspecstalk.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [ofFromSpecStalk_comp](declarations/offromspecstalk-comp.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [mem_domain_ofFromSpecStalk](declarations/mem-domain-offromspecstalk.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [fromSpecStalkOfMem_ofFromSpecStalk](declarations/fromspecstalkofmem-offromspecstalk.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [fromSpecStalkOfMem_compHom](declarations/fromspecstalkofmem-comphom.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [fromSpecStalkOfMem_toPartialMap](declarations/fromspecstalkofmem-topartialmap.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [equiv](declarations/equiv.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [equivalence_rel](declarations/equivalence-rel.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [restrict_equiv](declarations/restrict-equiv.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [equiv_of_fromSpecStalkOfMem_eq](declarations/equiv-of-fromspecstalkofmem-eq.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [Opens.isDominant_ι](declarations/opens-isdominant.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [Opens.isDominant_homOfLE](declarations/opens-isdominant-homofle.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [equiv_iff_of_isSeparated_of_le](declarations/equiv-iff-of-isseparated-of-le.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [equiv_iff_of_isSeparated](declarations/equiv-iff-of-isseparated.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [equiv_iff_of_domain_eq_of_isSeparated](declarations/equiv-iff-of-domain-eq-of-isseparated.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [equiv_toPartialMap_iff_of_isSeparated](declarations/equiv-topartialmap-iff-of-isseparated.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [RationalMap](declarations/rationalmap.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [PartialMap.toRationalMap](declarations/partialmap-torationalmap.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `abbrev` | [Hom.toRationalMap](declarations/hom-torationalmap.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `class` | [RationalMap.IsOver](declarations/rationalmap-isover.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [PartialMap.toRationalMap_surjective](declarations/partialmap-torationalmap-surjective.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [RationalMap.exists_rep](declarations/rationalmap-exists-rep.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [PartialMap.toRationalMap_eq_iff](declarations/partialmap-torationalmap-eq-iff.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [PartialMap.restrict_toRationalMap](declarations/partialmap-restrict-torationalmap.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [RationalMap.exists_partialMap_over](declarations/rationalmap-exists-partialmap-over.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [RationalMap.compHom](declarations/rationalmap-comphom.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [RationalMap.compHom_toRationalMap](declarations/rationalmap-comphom-torationalmap.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [PartialMap.exists_restrict_isOver](declarations/partialmap-exists-restrict-isover.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [RationalMap.isOver_iff](declarations/rationalmap-isover-iff.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [PartialMap.isOver_toRationalMap_iff_of_isSeparated](declarations/partialmap-isover-torationalmap-iff-of-isseparated.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [RationalMap.fromFunctionField](declarations/rationalmap-fromfunctionfield.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [RationalMap.fromFunctionField_toRationalMap](declarations/rationalmap-fromfunctionfield-torationalmap.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [RationalMap.ofFunctionField](declarations/rationalmap-offunctionfield.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [RationalMap.fromFunctionField_ofFunctionField](declarations/rationalmap-fromfunctionfield-offunctionfield.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [RationalMap.eq_of_fromFunctionField_eq](declarations/rationalmap-eq-of-fromfunctionfield-eq.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [RationalMap.equivFunctionField](declarations/rationalmap-equivfunctionfield.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [RationalMap.equivFunctionFieldOver](declarations/rationalmap-equivfunctionfieldover.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [RationalMap.domain](declarations/rationalmap-domain.md) | 475 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [PartialMap.le_domain_toRationalMap](declarations/partialmap-le-domain-torationalmap.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [RationalMap.mem_domain](declarations/rationalmap-mem-domain.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [RationalMap.dense_domain](declarations/rationalmap-dense-domain.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [RationalMap.openCoverDomain](declarations/rationalmap-opencoverdomain.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [RationalMap.toPartialMap](declarations/rationalmap-topartialmap.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [PartialMap.toPartialMap_toRationalMap_restrict](declarations/partialmap-topartialmap-torationalmap-restrict.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [RationalMap.toRationalMap_toPartialMap](declarations/rationalmap-torationalmap-topartialmap.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2cfe8ced8392571bd3e22d85129b94fde2557eac82f3dbc9e17cfd95ca9d4a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
