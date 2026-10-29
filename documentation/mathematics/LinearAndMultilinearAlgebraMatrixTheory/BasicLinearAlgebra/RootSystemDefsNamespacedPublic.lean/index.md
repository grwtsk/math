# Root System Defs Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**111 observed declarations and anonymous commands**, 95 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant2213cc12e9e6960406d11ab909fd5a752fc9f77d5db88cd3cf304876bf5706b4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5478ae62af8e8ed266c7c2b864c5cd25ca47246`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemDefsNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RootPairing](declarations/rootpairing.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [RootDatum](declarations/rootdatum.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [IsRootSystem](declarations/isrootsystem.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [flip](declarations/flip.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [flip_flip](declarations/flip-flip.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [flipEquiv](declarations/flipequiv.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [ne_zero](declarations/ne-zero.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [ne_zero'](declarations/ne-zero-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [zero_notMem_range_root](declarations/zero-notmem-range-root.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [zero_notMem_range_coroot](declarations/zero-notmem-range-coroot.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [exists_ne_zero](declarations/exists-ne-zero-source-edition-2.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [exists_ne_zero'](declarations/exists-ne-zero.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [nontrivial](declarations/nontrivial-source-edition-2.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [nontrivial'](declarations/nontrivial.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [root'](declarations/root.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [coroot'](declarations/coroot.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [root'_ne_zero](declarations/root-ne-zero.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [coroot'_ne_zero](declarations/coroot-ne-zero.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [pairing](declarations/pairing.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [pairing_flip](declarations/pairing-flip.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [root_coroot_eq_pairing](declarations/root-coroot-eq-pairing-source-edition-3.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [root'_coroot_eq_pairing](declarations/root-coroot-eq-pairing.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [root_coroot'_eq_pairing](declarations/root-coroot-eq-pairing-source-edition-2.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [coroot_root_eq_pairing](declarations/coroot-root-eq-pairing.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [pairing_same](declarations/pairing-same.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [pairing_eq_add_of_root_eq_add](declarations/pairing-eq-add-of-root-eq-add.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [pairing_eq_add_of_root_eq_smul_add_smul](declarations/pairing-eq-add-of-root-eq-smul-add-smul.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [coroot_root_two](declarations/coroot-root-two.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [reflection](declarations/reflection.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [root_reflectionPerm](declarations/root-reflectionperm.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mapsTo_reflection_root](declarations/mapsto-reflection-root.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [reflection_apply](declarations/reflection-apply.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [reflection_apply_root](declarations/reflection-apply-root.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [reflection_apply_self](declarations/reflection-apply-self.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [reflection_same](declarations/reflection-same.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [reflection_inv](declarations/reflection-inv.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [reflection_sq](declarations/reflection-sq.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [reflectionPerm_sq](declarations/reflectionperm-sq.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [reflectionPerm_inv](declarations/reflectionperm-inv.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [reflectionPerm_self](declarations/reflectionperm-self.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [reflectionPerm_involutive](declarations/reflectionperm-involutive.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [reflectionPerm_symm](declarations/reflectionperm-symm.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [bijOn_reflection_root](declarations/bijon-reflection-root.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [reflection_image_eq](declarations/reflection-image-eq.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [coreflection](declarations/coreflection.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [coroot_reflectionPerm](declarations/coroot-reflectionperm.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [mapsTo_coreflection_coroot](declarations/mapsto-coreflection-coroot.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [coreflection_apply](declarations/coreflection-apply.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [coreflection_apply_coroot](declarations/coreflection-apply-coroot.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [coreflection_apply_self](declarations/coreflection-apply-self.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [coreflection_same](declarations/coreflection-same.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [coreflection_inv](declarations/coreflection-inv.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [coreflection_sq](declarations/coreflection-sq.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [bijOn_coreflection_coroot](declarations/bijon-coreflection-coroot.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [coreflection_image_eq](declarations/coreflection-image-eq.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [coreflection_eq_flip_reflection](declarations/coreflection-eq-flip-reflection.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [reflection_reflectionPerm](declarations/reflection-reflectionperm.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [reflection_dualMap_eq_coreflection](declarations/reflection-dualmap-eq-coreflection.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [coroot_eq_coreflection_of_root_eq](declarations/coroot-eq-coreflection-of-root-eq.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [coroot'_reflectionPerm](declarations/coroot-reflectionperm-source-edition-2.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [coroot'_reflection](declarations/coroot-reflection.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `lemma` | [pairing_reflectionPerm](declarations/pairing-reflectionperm.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `lemma` | [toPerfPair_conj_reflection](declarations/toperfpair-conj-reflection.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `lemma` | [toPerfPair_flip_conj_coreflection](declarations/toperfpair-flip-conj-coreflection.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `lemma` | [pairing_reflectionPerm_self_left](declarations/pairing-reflectionperm-self-left.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `lemma` | [pairing_reflectionPerm_self_right](declarations/pairing-reflectionperm-self-right.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [indexNeg](declarations/indexneg.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `lemma` | [ne_neg](declarations/ne-neg.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `lemma` | [root_eq_neg_iff](declarations/root-eq-neg-iff.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `lemma` | [coroot_eq_neg_iff](declarations/coroot-eq-neg-iff.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `lemma` | [neg_mem_range_root_iff](declarations/neg-mem-range-root-iff.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `lemma` | [neg_mem_range_coroot_iff](declarations/neg-mem-range-coroot-iff.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `lemma` | [neg_root_mem](declarations/neg-root-mem.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `lemma` | [neg_coroot_mem](declarations/neg-coroot-mem.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `lemma` | [smul_coroot_eq_of_root_eq_smul](declarations/smul-coroot-eq-of-root-eq-smul.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `lemma` | [coroot_eq_smul_coroot_iff](declarations/coroot-eq-smul-coroot-iff.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `lemma` | [mem_range_root_of_mem_range_reflection_of_mem_range_root](declarations/mem-range-root-of-mem-range-reflection-of-mem-range-root.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `lemma` | [mem_range_coroot_of_mem_range_coreflection_of_mem_range_coroot](declarations/mem-range-coroot-of-mem-range-coreflection-of-mem-range-coroot.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `lemma` | [pairing_smul_root_eq](declarations/pairing-smul-root-eq.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `lemma` | [pairing_smul_coroot_eq](declarations/pairing-smul-coroot-eq.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `lemma` | [two_nsmul_reflection_eq_of_perm_eq](declarations/two-nsmul-reflection-eq-of-perm-eq.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `lemma` | [reflectionPerm_eq_reflectionPerm_iff_of_isSMulRegular](declarations/reflectionperm-eq-reflectionperm-iff-of-issmulregular.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `lemma` | [reflectionPerm_eq_reflectionPerm_iff_of_span](declarations/reflectionperm-eq-reflectionperm-iff-of-span.md) | 541 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `lemma` | [reflectionPerm_eq_reflectionPerm_iff](declarations/reflectionperm-eq-reflectionperm-iff.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `lemma` | [toPerfPair_comp_root](declarations/toperfpair-comp-root.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `lemma` | [toPerfPair_flip_comp_coroot](declarations/toperfpair-flip-comp-coroot.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [coxeterWeight](declarations/coxeterweight.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `lemma` | [coxeterWeight_flip](declarations/coxeterweight-flip.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `lemma` | [coxeterWeight_swap](declarations/coxeterweight-swap.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [IsOrthogonal](declarations/isorthogonal.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `lemma` | [isOrthogonal_symm](declarations/isorthogonal-symm-source-edition-2.md) | 581 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `lemma` | [isOrthogonal_comm](declarations/isorthogonal-comm.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `lemma` | [IsOrthogonal.flip](declarations/isorthogonal-flip.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `lemma` | [IsOrthogonal.symm](declarations/isorthogonal-symm.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `lemma` | [IsOrthogonal.reflection_apply_left](declarations/isorthogonal-reflection-apply-left.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `lemma` | [IsOrthogonal.reflection_apply_right](declarations/isorthogonal-reflection-apply-right.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `lemma` | [IsOrthogonal.coreflection_apply_left](declarations/isorthogonal-coreflection-apply-left.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `lemma` | [IsOrthogonal.coreflection_apply_right](declarations/isorthogonal-coreflection-apply-right.md) | 610 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `lemma` | [isFixedPt_reflection_of_isOrthogonal](declarations/isfixedpt-reflection-of-isorthogonal.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `lemma` | [reflectionPerm_eq_of_pairing_eq_zero](declarations/reflectionperm-eq-of-pairing-eq-zero.md) | 626 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `lemma` | [reflectionPerm_eq_of_pairing_eq_zero'](declarations/reflectionperm-eq-of-pairing-eq-zero-source-edition-2.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `lemma` | [reflectionPerm_eq_iff_smul_root](declarations/reflectionperm-eq-iff-smul-root.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `lemma` | [reflectionPerm_eq_iff_smul_coroot](declarations/reflectionperm-eq-iff-smul-coroot.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `lemma` | [pairing_eq_zero_iff](declarations/pairing-eq-zero-iff-source-edition-2.md) | 643 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `lemma` | [pairing_eq_zero_iff'](declarations/pairing-eq-zero-iff.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `lemma` | [coxeterWeight_zero_iff_isOrthogonal](declarations/coxeterweight-zero-iff-isorthogonal.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `lemma` | [isOrthogonal_iff_pairing_eq_zero](declarations/isorthogonal-iff-pairing-eq-zero.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `lemma` | [isFixedPt_reflectionPerm_iff](declarations/isfixedpt-reflectionperm-iff.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `def` | [map](declarations/map.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `instance` | [(anonymous)](declarations/instance.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d58ea7b54f3744bd7eea94c1e1d2cc057837b3612a12333a054a94959ff8024f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant2213cc12e9e6960406d11ab909fd5a752fc9f77d5db88cd3cf304876bf5706b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
