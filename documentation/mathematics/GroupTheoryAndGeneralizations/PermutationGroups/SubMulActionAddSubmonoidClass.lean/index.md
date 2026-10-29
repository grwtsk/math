# Sub Mul Action Add Submonoid Class

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 43 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/SubMulAction/Variant1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94c0f2d2df4342d61ff347c294957a61109b19f6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionAddSubmonoidClass.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [SMulMemClass](declarations/smulmemclass.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `class` | [VAddMemClass](declarations/vaddmemclass.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [AddSubmonoidClass.nsmulMemClass](declarations/addsubmonoidclass-nsmulmemclass.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [AddSubgroupClass.zsmulMemClass](declarations/addsubgroupclass-zsmulmemclass.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [_root_.SMulMemClass.ofIsScalarTower](declarations/root-smulmemclass-ofisscalartower.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instIsScalarTower](declarations/instisscalartower.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instSMulCommClass](declarations/instsmulcommclass.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [val_smul](declarations/val-smul-source-edition-2.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mk_smul_mk](declarations/mk-smul-mk.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [smul_def](declarations/smul-def.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [forall_smul_mem_iff](declarations/forall-smul-mem-iff.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [val_smul_of_tower](declarations/val-smul-of-tower-source-edition-2.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mk_smul_of_tower_mk](declarations/mk-smul-of-tower-mk.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [smul_of_tower_def](declarations/smul-of-tower-def.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [SubAddAction](declarations/subaddaction.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [SubMulAction](declarations/submulaction.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mem_carrier](declarations/mem-carrier.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ext](declarations/ext.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [copy](declarations/copy.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [coe_copy](declarations/coe-copy.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [copy_eq](declarations/copy-eq.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [smul_mem](declarations/smul-mem.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [val_smul](declarations/val-smul.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [subtype](declarations/subtype-source-edition-2.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [subtype_apply](declarations/subtype-apply.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [subtype_injective](declarations/subtype-injective.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [subtype_eq_val](declarations/subtype-eq-val.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [subtype](declarations/subtype.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [subtype_apply](declarations/subtype-apply-source-edition-2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [subtype_injective](declarations/subtype-injective-source-edition-2.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [smul_of_tower_mem](declarations/smul-of-tower-mem.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [smul'](declarations/smul.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [isScalarTower](declarations/isscalartower-source-edition-2.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [isScalarTower'](declarations/isscalartower.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [val_smul_of_tower](declarations/val-smul-of-tower.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [smul_mem_iff'](declarations/smul-mem-iff.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `instance` | [isCentralScalar](declarations/iscentralscalar.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [mulAction'](declarations/mulaction.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [mulAction](declarations/mulaction-source-edition-2.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [val_image_orbit](declarations/val-image-orbit.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [val_preimage_orbit](declarations/val-preimage-orbit.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [mem_orbit_subMul_iff](declarations/mem-orbit-submul-iff.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [stabilizer_of_subMul.submonoid](declarations/stabilizer-of-submul-submonoid.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [orbitRel_of_subMul](declarations/orbitrel-of-submul.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [stabilizer_of_subMul](declarations/stabilizer-of-submul.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [compl_def](declarations/compl-def.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [zero_mem](declarations/zero-mem.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [neg_mem](declarations/neg-mem.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [neg_mem_iff](declarations/neg-mem-iff.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [val_neg](declarations/val-neg.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [smul_mem_iff](declarations/smul-mem-iff-source-edition-2.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [inclusion](declarations/inclusion.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [inclusion.toFun_eq_coe](declarations/inclusion-tofun-eq-coe.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [inclusion.coe_eq](declarations/inclusion-coe-eq.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `lemma` | [image_inclusion](declarations/image-inclusion.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [inclusion_injective](declarations/inclusion-injective.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [nonZeroSubMul](declarations/nonzerosubmul.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [smul_coe](declarations/smul-coe.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [orbitRel_nonZero_iff](declarations/orbitrel-nonzero-iff.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a786e3249da37ecd49f51b024dfd736b22a1baec5f5fa9acbe2afcd56a8101b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SubMulAction/Variant1b200910ada059592664ff7590c0e94b6e701cfb03242e8c25ee3c205b2eba62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
