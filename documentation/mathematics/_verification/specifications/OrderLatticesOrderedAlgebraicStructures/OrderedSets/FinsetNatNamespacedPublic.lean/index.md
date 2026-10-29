# Verification target: Finset Nat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6392b11fb2c972b6b55fd1ad96859ecbd0bc2610",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant2b126470b09f9d1cfabae0d14504bc547cffea70b8e2d1446a38492557754d0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6392b11fb2c972b6b55fd1ad96859ecbd0bc2610`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant2b126470b09f9d1cfabae0d14504bc547cffea70b8e2d1446a38492557754d0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nat/Variant2b126470b09f9d1cfabae0d14504bc547cffea70b8e2d1446a38492557754d0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/instlocallyfiniteorder.md) | 42 | `declaration-track:675e8ea619197fdf81ced2074105852772e65c44b28c7014244bdf53ab4a86a5` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/instance.md) | 52 | `declaration-track:74e1521e601c3b44749a0763f8d53a876c894a045806b1823f5b79a96b79bf4c` |
| 3 | `theorem` | [Icc_eq_range'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/icc-eq-range.md) | 56 | `result-track:d26ecee6a5eccc7e01381476df51b5c948801c04b11b5bf151f0e507c05d4503` |
| 4 | `theorem` | [Ico_eq_range'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ico-eq-range.md) | 59 | `result-track:0d17574a6c7c218063a6d486809f0d2d0cd343e7772db73780f57f0a32dd7c8a` |
| 5 | `theorem` | [Ioc_eq_range'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ioc-eq-range.md) | 62 | `result-track:c86fcaad062b4a33f063ad6db141a02327e8f74c4b8e25ed3878ed8649123cba` |
| 6 | `theorem` | [Ioo_eq_range'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ioo-eq-range.md) | 65 | `result-track:baa5620e3cbb60c402267903e7d7d17675002efa10ee970445d1365c037b3e9c` |
| 7 | `theorem` | [uIcc_eq_range'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/uicc-eq-range.md) | 68 | `result-track:d6af5e990f6e3bb70e7de83d6967f042e479c04c69d3cd24c1c6f89bf1585408` |
| 8 | `theorem` | [Iio_eq_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/iio-eq-range.md) | 71 | `result-track:8d0beb4e18bfb4f28c77b91d251bca2b83048b05e76c16e9a22167f5754336eb` |
| 9 | `theorem` | [Ico_zero_eq_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ico-zero-eq-range.md) | 75 | `result-track:e1e381494268a118f32ddac41346cc84a1bdce9c4de2355c7439e7589733a987` |
| 10 | `lemma` | [range_eq_Icc_zero_sub_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/range-eq-icc-zero-sub-one.md) | 78 | `result-track:4348f0af8ab729e19985a514e925b407b8c3fd3b876cb80f455ccf4873d03c03` |
| 11 | `theorem` | [Finset Nat Namespaced Public](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/range-eq-ico.md) | 81 | `result-track:c18719a71bbc1e994436667246cb7d525160a6911c8322f5031895e3fcb1b5dc` |
| 12 | `theorem` | [range_succ_eq_Icc_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/range-succ-eq-icc-zero.md) | 84 | `result-track:02efda1f403b374ac9864961df097ff3efe6652893c6bda72b494a513e21407a` |
| 13 | `theorem` | [range_succ_eq_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/range-succ-eq-iic.md) | 87 | `result-track:6515653145137f8086878b443676aa71ff8f699389457f699d961085445f5fe5` |
| 14 | `lemma` | [card_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/card-icc.md) | 91 | `result-track:c27c9634f8dbf88ea31c6f686841d4c3dd14eb362a3b89bbd27e3c60a43e4f8d` |
| 15 | `lemma` | [card_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/card-ico.md) | 92 | `result-track:fde48ded34a1c4510105e7ae718dd506f055218de642963e381b018597516f34` |
| 16 | `lemma` | [card_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/card-ioc.md) | 93 | `result-track:a963255f870ef50f610e72af313be9a8e55786fcc815c95e0342ec52ac6c48ae` |
| 17 | `lemma` | [card_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/card-ioo.md) | 94 | `result-track:a46a0d55423ed564f989cacf3da3fee3cebdcfdc13cf664581b577dcf247bb40` |
| 18 | `theorem` | [card_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/card-uicc.md) | 97 | `result-track:dffd122bfc58adf5e6dc0ec6f57fe9cb927d81f22ca3d3ef87866a235342ab85` |
| 19 | `lemma` | [card_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/card-iic.md) | 101 | `result-track:bd6898638627f8ad338327e0c0484b8d99a34a9156f06e852f1358fafae45959` |
| 20 | `theorem` | [card_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/card-iio.md) | 104 | `result-track:d7813cb91da4751fb676c5309a71034e02ca88065d96e11feb04a30a037f1ce2` |
| 21 | `theorem` | [Ico_succ_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ico-succ-singleton.md) | 109 | `result-track:51d37c3d50686f1bfc4e174bbfe4cd6f4b45b4c207e2936cb1469f0ec4f8519b` |
| 22 | `theorem` | [Ico_pred_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ico-pred-singleton.md) | 112 | `result-track:f1a2d1f3cfbd581ab040bfc4a057dc64c702cf2963bb03a4c8fec0084df21937` |
| 23 | `theorem` | [Ioc_succ_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ioc-succ-singleton.md) | 118 | `result-track:023c9a460c2da18bc40bb3717654cb916cb2bfcc46c7de901c817db525a2063f` |
| 24 | `lemma` | [mem_Ioc_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/mem-ioc-succ-source-edition-2.md) | 122 | `result-track:8a18a6ba8553b0e34359358f5b8c0ba6a59aa5114a18144a34101cee265e0419` |
| 25 | `lemma` | [mem_Ioc_succ'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/mem-ioc-succ.md) | 124 | `result-track:8858b8095d63c17be2f7ea559c66992e7c53b4189c4ca12280c144af72688bee` |
| 26 | `theorem` | [image_sub_const_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/image-sub-const-ico.md) | 127 | `result-track:36599ad3bf3d48e944312d7978f87bef4cb24b2df68f57234e3accbc2a93b28e` |
| 27 | `theorem` | [Ico_image_const_sub_eq_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ico-image-const-sub-eq-ico.md) | 135 | `result-track:0ef224dd73e7309d23e8a85f14c079aa2e20c53f0a621b66bc757281bbcac757` |
| 28 | `theorem` | [Ico_succ_left_eq_erase_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ico-succ-left-eq-erase-ico.md) | 143 | `result-track:706dd32ff2952c8f60fd890d3873b563a33a78e83deaaadf5e40389561eb07c3` |
| 29 | `theorem` | [Ico_succ_right_eq_insert_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/ico-succ-right-eq-insert-ico.md) | 148 | `result-track:5a3ee5135e2bf8c6beee8823068e32e2301e28ef9ce59358c5b8aaa567b46478` |
| 30 | `theorem` | [mod_injOn_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/mod-injon-ico.md) | 153 | `result-track:ce14cd2074b5dda747da7a801ad897268eb48c8eeccb378bf391acb0725130ad` |
| 31 | `theorem` | [image_Ico_mod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/image-ico-mod.md) | 179 | `result-track:2a185d10d4f8ed2dbda03d3d66c70da2266231b60f8a5516b3fdfda1993b7df3` |
| 32 | `theorem` | [multiset_Ico_map_mod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/multiset-ico-map-mod.md) | 206 | `result-track:d9248bc0353e234facb00572c63b965d5d19822e3d3d43ac96406b8def799201` |
| 33 | `lemma` | [toFinset_range'_1](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/tofinset-range-1.md) | 218 | `result-track:64554fe3214dba31b624f1d495f2cb21ea8f4dc3a3daa0241b929eda73337b4a` |
| 34 | `lemma` | [toFinset_range'_1_1](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/tofinset-range-1-1.md) | 222 | `result-track:f68ce095b7e2d06474a867097204bdce3d530b3709f28e1f9f5e408dd676a2d6` |
| 35 | `lemma` | [toFinset_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/tofinset-range.md) | 226 | `result-track:f4e1482b6f1a6ad6b054c53ba2f0d24e7be547e33c2c8d8b90fbe317e9331d18` |
| 36 | `theorem` | [range_image_pred_top_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/range-image-pred-top-sub.md) | 234 | `result-track:97602bdeed329427004e787f46735d003fb15eb73124d716d73db2766b5a0fa4` |
| 37 | `theorem` | [range_add_eq_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/range-add-eq-union.md) | 241 | `result-track:e156fd317d7689d8971c9d7e24a825565155c03760caa13183d9fd117beacfdc` |
| 38 | `theorem` | [Nat.decreasing_induction_of_not_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/nat-decreasing-induction-of-not-bddabove.md) | 257 | `result-track:83f53994d44d3af0736ab5be2480914be1fb092020842ecc6c5fc8e612f92b55` |
| 39 | `lemma` | [Nat.strong_decreasing_induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/nat-strong-decreasing-induction.md) | 263 | `result-track:439637b7a7ba554011d7f89a7c1843f234ae069d032875bb4195deaaf3ebd9ca` |
| 40 | `theorem` | [Nat.decreasing_induction_of_infinite](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/nat-decreasing-induction-of-infinite.md) | 275 | `result-track:997ec5e3035ef05fb5f5d2e0817ce74df0406ba2658d7ce28a5e5daa62e804de` |
| 41 | `theorem` | [Nat.cauchy_induction'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/nat-cauchy-induction-source-edition-2.md) | 279 | `result-track:7d93f5e9179926b9faf5a5d43fd627a6d993c066c9d478ef789010ebc7a7dd19` |
| 42 | `theorem` | [Nat.cauchy_induction](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/nat-cauchy-induction.md) | 287 | `result-track:30bf6dd5677970d740dc1d35cc0d222854b304ebc2ae82bec08b8819d80bf0dd` |
| 43 | `theorem` | [Nat.cauchy_induction_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/nat-cauchy-induction-mul.md) | 291 | `result-track:240d18d01ef93e2bcce74c327fda77d343147a3bcfffeefdb964cde9cc853048` |
| 44 | `theorem` | [Nat.cauchy_induction_two_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/nat-cauchy-induction-two-mul.md) | 298 | `result-track:ab763f393c5df6c6917393778a9338a8430c3433ec1ea055d6912722608231ff` |
| 45 | `theorem` | [Nat.pow_imp_self_of_one_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FinsetNatNamespacedPublic.lean/declarations/nat-pow-imp-self-of-one-lt.md) | 302 | `result-track:98f03d134064bf6e763cccc69efc672d80c3f2caa65aa502f938e266d9fab670` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d6e2893d5e7a6371f51b52a0f3d0326b6753c0f9ad3c61d070aabe87389ddb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant2b126470b09f9d1cfabae0d14504bc547cffea70b8e2d1446a38492557754d0a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Nat/Variant2b126470b09f9d1cfabae0d14504bc547cffea70b8e2d1446a38492557754d0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
