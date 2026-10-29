# Verification target: Coset Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "614f663419b27d156f65a333ed44a8668f7c0409",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `614f663419b27d156f65a333ed44a8668f7c0409`.

Source path: `GRWTSK/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Quotient` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.MulOpposite` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftcoset.md) | 56 | `declaration-track:8d6301c5f358fe462e079d3f5a4e3968e93dcfb45a9a81d993c489f8079aa252` |
| 2 | `def` | [rightCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightcoset.md) | 64 | `declaration-track:9bb46b0a2fa40dc0d43374476c1444b27c853db4c4bd56084cfdce5dbc392ea4` |
| 3 | `theorem` | [mem_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mem-leftcoset.md) | 88 | `result-track:257915bbb7142eb11cdc8e09b623e5ba192dafcf4b329c661c07fcfbf04257db` |
| 4 | `theorem` | [mem_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mem-rightcoset.md) | 94 | `result-track:676936691da79d4f0ffe51bca7d4b2e8e8e62e677c5a9bbc0580561bdd362576` |
| 5 | `def` | [LeftCosetEquivalence](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftcosetequivalence.md) | 101 | `declaration-track:2619265bd9dddc5c557080f9c42fca9afc36748bdaa0ac71e0f0dd7f4cc18f1d` |
| 6 | `theorem` | [leftCosetEquivalence_rel](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftcosetequivalence-rel.md) | 107 | `result-track:41900504b12364f812177bac54979ca43557b13f0c7b1ee7d5724030c8d0c742` |
| 7 | `def` | [RightCosetEquivalence](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightcosetequivalence.md) | 114 | `declaration-track:8771e5dffd2e8a9c9ea31d13e7ace856467425a3ea55d623b44e4a4de45a1687` |
| 8 | `theorem` | [rightCosetEquivalence_rel](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightcosetequivalence-rel.md) | 120 | `result-track:ab27d0fa0bbf367693484259024cc376179a1de0e9a585d371d021c84df6eb6a` |
| 9 | `theorem` | [leftCoset_assoc](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftcoset-assoc.md) | 132 | `result-track:4ab43de825e6827e7372859a9e7edbe9bc078c2fe22ce48de28cd8247803d3cb` |
| 10 | `theorem` | [rightCoset_assoc](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightcoset-assoc.md) | 138 | `result-track:c2c130002587871310dd9c7200a5b9d5d3ec976c1fe0ffb897086da05c30637e` |
| 11 | `theorem` | [leftCoset_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftcoset-rightcoset.md) | 144 | `result-track:695bf0a2884ef7ea1b89dee0ea983a6e2ee2a163d9e1a5600d95a056b2af34a8` |
| 12 | `theorem` | [one_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/one-leftcoset.md) | 156 | `result-track:5bebf87922d41b23ce8958df7b753f9eab0095063307c288c63564869df3b9b9` |
| 13 | `theorem` | [rightCoset_one](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightcoset-one.md) | 162 | `result-track:0e77dfaa2ff0bc32fe9144f08196182597fadc428baccc484854ff1a7df3ae8a` |
| 14 | `theorem` | [mem_own_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mem-own-leftcoset.md) | 176 | `result-track:3da40efebc3c58779ab7a3e548d7f8f22dee71fc96e1e4b4b5241eb791498bb8` |
| 15 | `theorem` | [mem_own_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mem-own-rightcoset.md) | 183 | `result-track:cbfa1700eb05dfd782906be0da830f601ce2168cb078c5de115485c5cddc80f5` |
| 16 | `theorem` | [mem_leftCoset_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mem-leftcoset-leftcoset.md) | 190 | `result-track:d0414c334249f160a57c00df699ed950f0da0dba1ae981ddff679cd7124d5b58` |
| 17 | `theorem` | [mem_rightCoset_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mem-rightcoset-rightcoset.md) | 196 | `result-track:3500e6eed45f26cb15095b578244e6ddb880183f34c7994792360992c84fe074` |
| 18 | `theorem` | [mem_leftCoset_iff](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mem-leftcoset-iff.md) | 208 | `result-track:9534891e14da4747d633fbc053cb570698608cd96fa3d5e9ba04c36c69939f68` |
| 19 | `theorem` | [mem_rightCoset_iff](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mem-rightcoset-iff.md) | 214 | `result-track:196155f13601e8279f03999ebd726a25a3af122a49012d9e78a91907d90c25d9` |
| 20 | `theorem` | [leftCoset_mem_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftcoset-mem-leftcoset.md) | 228 | `result-track:16c29873f22209643a3aade4c1a863ca18c188a064ae7caa398d3039d6dfb5c3` |
| 21 | `theorem` | [rightCoset_mem_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightcoset-mem-rightcoset.md) | 234 | `result-track:8a709b200ada36141254d21c59dd28752a8ed48930b5ee392762237924f31931` |
| 22 | `theorem` | [orbit_subgroup_eq_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/orbit-subgroup-eq-rightcoset.md) | 240 | `result-track:2ca1ede481aec12fd3c6ed0974df3112a313dd7003dff62d79f686c5caf3337d` |
| 23 | `theorem` | [orbit_subgroup_eq_self_of_mem](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/orbit-subgroup-eq-self-of-mem.md) | 246 | `result-track:6d6347c4014e0304344a27f27c7d59d6512e92708a022ee83af356aaa29a7f6c` |
| 24 | `theorem` | [orbit_subgroup_one_eq_self](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/orbit-subgroup-one-eq-self.md) | 252 | `result-track:f5b53e15d2acd858fd0f8bfc8cefeb805c84611dbb5fc18fb6c143c8fc70ab9d` |
| 25 | `theorem` | [eq_cosets_of_normal](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/eq-cosets-of-normal.md) | 258 | `result-track:5bf7e163b88061b90b20f31f18d4c83a962669c1099cf5eb90f84b868c0610d8` |
| 26 | `theorem` | [normal_of_eq_cosets](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/normal-of-eq-cosets.md) | 264 | `result-track:8af43f2a8e11b2ec228e1e640279c7fd15d0d5e7bffdefdecb9c2059c96f32e4` |
| 27 | `theorem` | [normal_iff_eq_cosets](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/normal-iff-eq-cosets.md) | 271 | `result-track:82f561db414587f39e856013e547021dd0f9404e3aea3270efaa97e842d630be` |
| 28 | `theorem` | [leftCoset_eq_iff](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftcoset-eq-iff.md) | 277 | `result-track:64d4ce782f85cbbf40f0866320b200c7f089b41eccf6e239584917d2b733ff98` |
| 29 | `theorem` | [rightCoset_eq_iff](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightcoset-eq-iff.md) | 293 | `result-track:754385eef6ea0da08112096333bd26ae637864df9d0b2e4432d84d99405d4d80` |
| 30 | `def` | [leftRel](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftrel.md) | 321 | `declaration-track:e5d9b81b4ad65cc544c833f9662c1d742ec0de8e797d81f31a3f23b8430b1a09` |
| 31 | `theorem` | [leftRel_apply](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftrel-apply.md) | 329 | `result-track:0948675bce1e3f10b71aa79c323d36c596ae34384806395c417a271b762b8dad` |
| 32 | `theorem` | [leftRel_eq](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftrel-eq.md) | 342 | `result-track:bf22d0104037db7d132ad87a69d7f6a273cf9638773209a24e22b202f48c75ec` |
| 33 | `theorem` | [leftRel_r_eq_leftCosetEquivalence](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftrel-r-eq-leftcosetequivalence.md) | 349 | `result-track:7b9b6031c001140e9ca09a000719d01f39afa203a5e3873282a6a6ba979912a7` |
| 34 | `instance` | [leftRelDecidable](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftreldecidable.md) | 357 | `declaration-track:ccecedde263ef5c697b38437ceddaf6df6342a705b9f2dfa95fb4e8bc39eed0e` |
| 35 | `instance` | [instHasQuotientSubgroup](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/insthasquotientsubgroup.md) | 367 | `declaration-track:5a1ecdf98023bea0d09aa79525cfa55c3068ff8823bb77f666140b2e255eca60` |
| 36 | `def` | [rightRel](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightrel.md) | 374 | `declaration-track:7d2145a0190c3e633c168baa15820ade63dc0ccc6390e6665e1d142f71ff2392` |
| 37 | `theorem` | [rightRel_apply](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightrel-apply.md) | 382 | `result-track:90db28392591c42f3185f93e114ddca3e55e64d51fe8934dea2cba913daff016` |
| 38 | `theorem` | [rightRel_eq](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightrel-eq.md) | 393 | `result-track:a06ceaa4a913be5288a66d6ac273440c04d8b44d6ae7af42d0b4056ccda2cc00` |
| 39 | `theorem` | [rightRel_r_eq_rightCosetEquivalence](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightrel-r-eq-rightcosetequivalence.md) | 400 | `result-track:5c41e5777e71b2ba3469ccce763be8575dabe4c8664fee23b4cf9b37b7b3e62a` |
| 40 | `instance` | [rightRelDecidable](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightreldecidable.md) | 408 | `declaration-track:c7b84850dded657cd56a37195a5f7096baa7ec9473208ab22eac6fc8b879b92c` |
| 41 | `def` | [quotientRightRelEquivQuotientLeftRel](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientrightrelequivquotientleftrel.md) | 416 | `declaration-track:400a27d97921323bedf1b486f5c9b81eac2c9e689ed43b57e1ce82e292f38de1` |
| 42 | `instance` | [fintypeQuotientRightRel](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/fintypequotientrightrel.md) | 444 | `declaration-track:de62a83386a87bdcfabcb180ff78b0ac32df1749b04790cb8451cc516018a4da` |
| 43 | `theorem` | [card_quotient_rightRel](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/card-quotient-rightrel.md) | 451 | `result-track:39e664c62b876860c0b0fc6a0a6910176f0c1fe6218d92920b9237795dcaa4d0` |
| 44 | `instance` | [fintype](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/fintype.md) | 464 | `declaration-track:1ea66e794adec9075d8c89772a323ef0695d29e4086125002d64eef9f272c042` |
| 45 | `abbrev` | [mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mk.md) | 471 | `declaration-track:0277dd85eb9089d7f59ac6c7e0117910b497780a45bf2ef3ac064d632e7c5a60` |
| 46 | `theorem` | [mk_surjective](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mk-surjective.md) | 477 | `result-track:117df731268897fb90f49ec2b8e1423142e3792f3bc3ef0654d533a320bd2a4e` |
| 47 | `lemma` | [range_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/range-mk.md) | 483 | `result-track:d14fe85de440a962cf6bb41523eeaa6076f84768e967dfd57eb9a8d9c30e27a4` |
| 48 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/induction-on-source-edition-2.md) | 486 | `result-track:b85977b0969eb42a75325ca464aa810ca6d90cd47e80aae46d1d684726d02449` |
| 49 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/instance.md) | 492 | `declaration-track:6a7d4a9c15e3099fdabc5d6527571ecd27c4c468a5415d6c9344b76a33bd61ee` |
| 50 | `theorem` | [induction_on'](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/induction-on.md) | 496 | `result-track:08de83337e1b303f9e3d97400a9f96ffdfff6388297870a34dbd302b6f810da7` |
| 51 | `theorem` | [quotient_liftOn_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotient-lifton-mk.md) | 502 | `result-track:dd04fbeec4a62a36109b7ac7f763c1eb4e7e24bfcbe7a9b47236e817bc03a9c0` |
| 52 | `theorem` | [forall_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/forall-mk.md) | 508 | `result-track:8efc5f4b667009533f26f544ac39c3ea94ad3d3e4228046016d5ee68162db454` |
| 53 | `theorem` | [exists_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/exists-mk.md) | 514 | `result-track:b578118511970babb6ac95995ef1b59fea37bee84e7a4fdf92ae20ac1c7dac07` |
| 54 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/instance-source-edition-2.md) | 520 | `declaration-track:f548a3cd69fac18f3a841af5fe38d7c239e4436471b75bf60b711bfc3d4c917d` |
| 55 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/eq-source-edition-2.md) | 524 | `result-track:9b474119d48e0575b218367f718b09882bbca4ab92d07fec4f57a58c2091a185` |
| 56 | `theorem` | [eq'](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/eq.md) | 532 | `result-track:635de7d34403a69c925b3710e8ea04bc1e7bb28a9a1850a4bc8139ecb0064d6e` |
| 57 | `theorem` | [out_eq'](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/out-eq.md) | 538 | `result-track:c2196f1e35df7190c237497d7094530793ce990d338a135336d8b8cef34d0d8c` |
| 58 | `theorem` | [mk_out'_eq_mul](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mk-out-eq-mul.md) | 549 | `result-track:c33987b4a8e9baf21b287d669ba1872413857047b9a028c98d9b3102045479b6` |
| 59 | `theorem` | [mk_mul_of_mem](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/mk-mul-of-mem.md) | 557 | `result-track:5420326a0e2e5c703b4c0193a8bc7493a30f4e6fccd7c56c08f138168a4e0b1a` |
| 60 | `theorem` | [eq_class_eq_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/eq-class-eq-leftcoset.md) | 563 | `result-track:38f1e6e89bc03c8d4afec5030ba73ea640eaa90f989c7c6d8736d40557f10912` |
| 61 | `theorem` | [preimage_image_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/preimage-image-mk.md) | 571 | `result-track:3b45f4b17b0344cb261db73f517406df0905b0b7e28314aa1c768e5a11cfcc7e` |
| 62 | `theorem` | [preimage_image_mk_eq_iUnion_image](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/preimage-image-mk-eq-iunion-image.md) | 583 | `result-track:ea6556ce397d6382d125308234050633da4d95f8cc97dc2a48dc4e9bf47014f0` |
| 63 | `def` | [leftCosetEquivSubgroup](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/leftcosetequivsubgroup.md) | 598 | `declaration-track:3a8132778e0cd8938d9596e5597d49ad77dd678cb8ebb237a23d4fbc74552499` |
| 64 | `def` | [rightCosetEquivSubgroup](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/rightcosetequivsubgroup.md) | 606 | `declaration-track:28b89d8b9f64918e01eadcf4adbbaa3c85332764b770402d31ee42d3f099d595` |
| 65 | `def` | [groupEquivQuotientProdSubgroup](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/groupequivquotientprodsubgroup.md) | 615 | `declaration-track:aeed4d1327cb701c462afa773bc16c2af36e51b90d394d067cfeb41028e05d09` |
| 66 | `def` | [quotientEquivOfEq](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientequivofeq.md) | 635 | `declaration-track:070660c4e5cce5151eb506b36c78964b435c067efb032daf4d7b4856bcfb9303` |
| 67 | `theorem` | [quotientEquivOfEq_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientequivofeq-mk.md) | 644 | `result-track:894e818229ee3ee1694ca67203dd0783b4185f06256a7c9291e3ef305bc6022f` |
| 68 | `def` | [quotientEquivProdOfLE'](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientequivprodofle-source-edition-2.md) | 654 | `declaration-track:c520b2d4b96b3937894b172952a669a1e347b230860491110d56169435a24b5d` |
| 69 | `def` | [quotientEquivProdOfLE](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientequivprodofle.md) | 688 | `declaration-track:8a04aba4d59ae7ef7d1b80933c37f444914880c06e290072dcee62c634f3cf6c` |
| 70 | `def` | [quotientSubgroupOfEmbeddingOfLE](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientsubgroupofembeddingofle.md) | 696 | `declaration-track:2e69e06604b7511944bd18b2b7a9e2191a4a1d1307dce017bd4b1dc98f709d42` |
| 71 | `theorem` | [quotientSubgroupOfEmbeddingOfLE_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientsubgroupofembeddingofle-apply-mk.md) | 712 | `result-track:9d9c512ea83e2c796fac38afc8a0c1777badde1795c7ee518c5b737d85ba9124` |
| 72 | `def` | [quotientSubgroupOfMapOfLE](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientsubgroupofmapofle.md) | 721 | `declaration-track:102c83b9ba555586a2a45c75e37e9ae08ca38550f5da38034ce98f92bc585cb5` |
| 73 | `theorem` | [quotientSubgroupOfMapOfLE_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientsubgroupofmapofle-apply-mk.md) | 731 | `result-track:44bbcee0bb6920fcad153b3e257d3da6e53707133fdec87879c79efa86747d50` |
| 74 | `def` | [quotientMapOfLE](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientmapofle.md) | 740 | `declaration-track:a454816b41aa8aacc4d81a49d98c326e8a9000d94fcfa5831b8152289d4e1910` |
| 75 | `theorem` | [quotientMapOfLE_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientmapofle-apply-mk.md) | 748 | `result-track:dc8c927ebdca942c2b44c44a881a232ad98038cfdd7d1cb350ee89142f6ae11e` |
| 76 | `def` | [quotientiInfSubgroupOfEmbedding](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientiinfsubgroupofembedding.md) | 757 | `declaration-track:3ff8cd648dea11ea2184c0ae76abfad39d4043d12fd3caf4f4c3cbcda6723bdb` |
| 77 | `theorem` | [quotientiInfSubgroupOfEmbedding_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientiinfsubgroupofembedding-apply-mk.md) | 770 | `result-track:09c607ed225229c44d11ffae15eb1977c7cb3cd4df3b7565cf6ae5ec3b402dcf` |
| 78 | `def` | [quotientiInfEmbedding](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientiinfembedding.md) | 780 | `declaration-track:a1c6c0be94c5c636e2aac339b852a9b0b7e510c499c5805887a67da00c599b7a` |
| 79 | `theorem` | [quotientiInfEmbedding_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/quotientiinfembedding-apply-mk.md) | 790 | `result-track:fb16446d9a6c66a7bc693a39ed9076dc16f792b94c075432a4a2ca4fde97fe82` |
| 80 | `theorem` | [card_eq_card_quotient_mul_card_subgroup](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/card-eq-card-quotient-mul-card-subgroup.md) | 797 | `result-track:a8ac5bc266a4f46135844b45f489f182d7eab95f1885ca1b7a2fe23e49d9acc7` |
| 81 | `theorem` | [card_subgroup_dvd_card](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/card-subgroup-dvd-card.md) | 806 | `result-track:7aeb154cef0bfff695b861ffadabb9b4e8475fe00001771100e426f1227d33e1` |
| 82 | `theorem` | [card_quotient_dvd_card](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/card-quotient-dvd-card.md) | 813 | `result-track:fefa5e0a544e0b066dea1480f9b8958d9ed4688ddff8886083c64a22400c3727` |
| 83 | `theorem` | [card_dvd_of_injective](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/card-dvd-of-injective.md) | 824 | `result-track:9a91fcb7b262d0bc7056fba63c17ddf24d05b0f700f28dbcc3d0a26295960cd1` |
| 84 | `theorem` | [card_dvd_of_le](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/card-dvd-of-le.md) | 833 | `result-track:f79e981974185a77ff8044e0d39e0003a41c546b29934a8a6d30f9e3c0a367bf` |
| 85 | `theorem` | [card_comap_dvd_of_injective](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/card-comap-dvd-of-injective.md) | 839 | `result-track:02e87b244345cc3c28eca35938bb1d4de2dada655acb28accbc4c0ff9acd441e` |
| 86 | `def` | [preimageMkEquivSubgroupProdSet](../../../../GroupTheoryAndGeneralizations/CosetNamespaced.lean/declarations/preimagemkequivsubgroupprodset.md) | 862 | `declaration-track:954282aa5cfbc0b7cbe7faa0d3b64fdf4291dff4ec419ae6a4baa1bf3cfd6ec1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c899ac26335023179585e5ea215f3bef10ac53e9828aefff1306ae03026981e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Coset/Variantd2cea386d4f1a620d78cb17985b93ab60eebae5c3805fe6fda802f881b41c775.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
