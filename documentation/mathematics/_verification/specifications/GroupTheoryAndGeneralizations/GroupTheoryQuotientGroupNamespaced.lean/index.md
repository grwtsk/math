# Verification target: Group Theory Quotient Group Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ba2ec9200577e1127bf502dd9ec7f278be2735d",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ba2ec9200577e1127bf502dd9ec7f278be2735d`.

Source path: `GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Congruence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Finite` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Pointwise` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [con](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/con.md) | 64 | `declaration-track:a78cbd302876c4c033d93f4ded490419388eedd4bf5b531dc9e028bd1d1c7741` |
| 2 | `instance` | [Quotient.group](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotient-group.md) | 77 | `declaration-track:7f006812f435ef4eb6260e927c84612c2a933615711aa6414fa861b1e66a4819` |
| 3 | `def` | [mk'](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk.md) | 84 | `declaration-track:c1247ece629eee31dce58714a47be6a209732befa9e18ef47608cb41eeb7d1b2` |
| 4 | `theorem` | [coe_mk'](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/coe-mk.md) | 90 | `result-track:56f1ed7189b74dfad369885ecaa29ebb266b4ece6473af8e3db7b2a344caeea2` |
| 5 | `theorem` | [mk'_apply](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk-apply.md) | 96 | `result-track:3d9f4893660aefffcc011871df969b00e52c839bcfdc46501cd2bccb452c7d09` |
| 6 | `theorem` | [mk'_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk-surjective.md) | 102 | `result-track:3580d979a20bb9ac311f76fb940570d52674ebe6d8a7d965f7a1afd620d9e075` |
| 7 | `theorem` | [mk'_eq_mk'](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk-eq-mk.md) | 108 | `result-track:34ab515309f7a8bb2f34bff43fcb56ea3705fa79dcdd0aca3260ba76b9bc488f` |
| 8 | `theorem` | [monoidHom_ext](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/monoidhom-ext.md) | 122 | `result-track:c745f2a2cc913f456abb611c1c89d6354d11afd87a783b932e8d6d0ad5196926` |
| 9 | `theorem` | [eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/eq-one-iff.md) | 128 | `result-track:0d75f6498190fb6f771c36f05e1c56203cddc61a02af4b1cb7c2225f9b12e5b6` |
| 10 | `theorem` | [ker_le_range_iff](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/ker-le-range-iff.md) | 135 | `result-track:f14a235c519f78c0cab14bfa11fc5ffe11503be55c22ce8ddfaf2dbcf8a8a7c0` |
| 11 | `theorem` | [ker_mk'](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/ker-mk.md) | 141 | `result-track:4bc593a0678297e16195f95e997d4ef79b9c1bf03c85b597f9212fa68bda2d92` |
| 12 | `theorem` | [eq_iff_div_mem](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/eq-iff-div-mem.md) | 148 | `result-track:ebb9c390bff2096a533154c3a29ef7c685e1f8fdc74ab6089b384dcbb0d18325` |
| 13 | `instance` | [Quotient.commGroup](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotient-commgroup.md) | 158 | `declaration-track:40e5e1ee942c5153b589af2d05f6da253590369dd9ae5bf72ce1727fc8d5a563` |
| 14 | `theorem` | [mk_one](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk-one.md) | 167 | `result-track:30e4ade86ba7ab3f8cfd17e6a3d3047f0469b55e4cc3151a2781e044bd74f400` |
| 15 | `theorem` | [mk_mul](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk-mul.md) | 173 | `result-track:423d83c1a755371e4ba3becb47b8b9efe7b169761ec234534f459e543d984741` |
| 16 | `theorem` | [mk_inv](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk-inv.md) | 179 | `result-track:470d2b4b13f5afd3eda45513226a2ae14f1ef481fa88e45441efe35798cc930d` |
| 17 | `theorem` | [mk_div](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk-div.md) | 185 | `result-track:436409bb17baadbf1f5440521d47b4f30a00527daec00632d9a3bce3bc993b9a` |
| 18 | `theorem` | [mk_pow](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk-pow.md) | 191 | `result-track:e25a5a61702e073be9b2685c531086a119736d80d28ae52b527015d3b12865b2` |
| 19 | `theorem` | [mk_zpow](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/mk-zpow.md) | 197 | `result-track:497f9fd9e68c01cd47fd47cc91bdb266cc7de652c7ee3d0a080790dc479c4f41` |
| 20 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/lift.md) | 206 | `declaration-track:2c1ce5ec2d809590739fc152c241216d2e0f57ec95b3444c2acea0eabc96b77c` |
| 21 | `theorem` | [lift_mk](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/lift-mk.md) | 217 | `result-track:22ba89717a407ec41ded7a98c13ac686f2c711c85ce4819c5b170120ff68dab7` |
| 22 | `theorem` | [lift_mk'](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/lift-mk-source-edition-2.md) | 223 | `result-track:2fadaee08773feab05892b5174bacd45de7edc4cb86d63dc4241e4c9bd688135` |
| 23 | `theorem` | [lift_quot_mk](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/lift-quot-mk.md) | 230 | `result-track:510fee7b728f594a266d7f256b81d8e360ad6221b179b9cb5e292a39d039939b` |
| 24 | `def` | [map](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/map.md) | 239 | `declaration-track:bef8dad7e97a7b7fa61658250ec382d383479d00787b6b350db4496523cff19e` |
| 25 | `theorem` | [map_mk](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/map-mk.md) | 249 | `result-track:0fcb41e824126321a79dda248f82946c71904fe76b5ca05329459918ee2b98a5` |
| 26 | `theorem` | [map_mk'](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/map-mk-source-edition-2.md) | 256 | `result-track:de30f6544771a8d36a96e6f6a730754f796e936e17cc039d677f4174368b9b91` |
| 27 | `theorem` | [map_id_apply](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/map-id-apply.md) | 263 | `result-track:41b044dbb0756702d1556bd19ddb76bac3bba4b8751cd35361f26d72ba0fb77b` |
| 28 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/map-id.md) | 270 | `result-track:5db7b0ca77176a806d46d8e4e19391036deedc50051511ee0124ef7a76438e7b` |
| 29 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/map-map.md) | 277 | `result-track:dd6a1a1f48a77e6aab6ac02dc8935a0cda3ed851cd12f3f6648f68de4cf4259d` |
| 30 | `theorem` | [map_comp_map](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/map-comp-map.md) | 288 | `result-track:0ac0381d344bb3b2737ed9f3ac7eb0e561fa3a3d9d1701c7dea061334bfa66ed` |
| 31 | `def` | [congr](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/congr.md) | 305 | `declaration-track:55d15e97412efa3df3439a0c0b9394351387dda8272494fc314f2c13da81dfd2` |
| 32 | `theorem` | [congr_mk](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/congr-mk-source-edition-2.md) | 323 | `result-track:8578f26f20f58429db58c8dc6e18d5dfa38512a4a9311025474e2b7e3e4e5ff1` |
| 33 | `theorem` | [congr_mk'](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/congr-mk.md) | 327 | `result-track:4a45a66b05338317b65c91da9c7d31b47e2215928d86dee3017c0dd6b892280f` |
| 34 | `theorem` | [congr_apply](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/congr-apply.md) | 333 | `result-track:8b43e2a530190835f3288d1c82018f0e8e0769cc9b896eda10da10a7848a1d33` |
| 35 | `theorem` | [congr_refl](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/congr-refl.md) | 339 | `result-track:983793d5f958edafa532ad92f7d761195bb83136466bb20ef46c4d85cd4ba0f6` |
| 36 | `theorem` | [congr_symm](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/congr-symm.md) | 346 | `result-track:d7dc711834c177ee0333b6129cbffc9e65a41b4ec513aa424cf15b79655134a3` |
| 37 | `def` | [kerLift](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/kerlift.md) | 359 | `declaration-track:191eb80e07d329b5d1d8725165232b8fbe5b3d51fee7f3ad9aa64d5a57b1d271` |
| 38 | `theorem` | [kerLift_mk](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/kerlift-mk.md) | 365 | `result-track:b6a74e02715586fb1f2a3c25a627e6f588c68fd313989c19a63c0b8e18896149` |
| 39 | `theorem` | [kerLift_mk'](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/kerlift-mk-source-edition-2.md) | 371 | `result-track:f6def1e67952b671fe23716984756c937571e684138bfb888b5717ad36918bfb` |
| 40 | `theorem` | [kerLift_injective](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/kerlift-injective.md) | 377 | `result-track:17e8de37ea8d365b0d3606fbb053bad8b64ca8419ac7c77a088ff46655d37618` |
| 41 | `def` | [rangeKerLift](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/rangekerlift.md) | 387 | `declaration-track:9e6e0b2605c7141999ccea5a7ee2786da742367329869870e2f2f2162933583a` |
| 42 | `theorem` | [rangeKerLift_injective](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/rangekerlift-injective.md) | 393 | `result-track:1a047aa71669faf91d8836f65ad2de72d60f553a000a8dd8d44515dd6e41bb95` |
| 43 | `theorem` | [rangeKerLift_surjective](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/rangekerlift-surjective.md) | 402 | `result-track:6d18dde8cf8df0aa2392a8a343c1f71ba8dd906ccc61870b68f976006a583840` |
| 44 | `def` | [quotientKerEquivRange](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientkerequivrange.md) | 413 | `declaration-track:7f14b1849776ab3afa338d5b7e4802d3ce460f96e085357cc07e7dd790a74247` |
| 45 | `def` | [quotientKerEquivOfRightInverse](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientkerequivofrightinverse.md) | 422 | `declaration-track:6c1727bbee3bc19ad794348789a31de46fa5d0101bee434fd58292896d0ab1ee` |
| 46 | `def` | [quotientBot](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientbot.md) | 433 | `declaration-track:cfeb0f8bd9f6627b6a55843c6cd45bbb8d8d8188753dc8a573d6c24566a5b29b` |
| 47 | `def` | [quotientKerEquivOfSurjective](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientkerequivofsurjective.md) | 444 | `declaration-track:a00b3ae4ce8bd46720fcdc9d82335ea6983fd13813cec050c48a7129e21f2a35` |
| 48 | `def` | [quotientMulEquivOfEq](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientmulequivofeq.md) | 453 | `declaration-track:4bbe28fe487f66ce4df56fc7bc72bdf1bfa4db9cc9de3a1a0a6c969cf916613f` |
| 49 | `theorem` | [quotientMulEquivOfEq_mk](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientmulequivofeq-mk.md) | 460 | `result-track:0597d718a609fbf6fce789d7b3793c64140e58e5efb66b18ebd1c0b01b6d54a4` |
| 50 | `def` | [quotientMapSubgroupOfOfLe](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientmapsubgroupofofle.md) | 470 | `declaration-track:62e6b99d256891b015a4a0fe77cfbafa2448040ee6ca6bb26844d468227c76fc` |
| 51 | `theorem` | [quotientMapSubgroupOfOfLe_mk](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientmapsubgroupofofle-mk.md) | 478 | `result-track:7dca489cb4fa757a17c51ab73b06f14d117f5818aba792659a58c36b3953ca8c` |
| 52 | `def` | [equivQuotientSubgroupOfOfEq](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/equivquotientsubgroupofofeq.md) | 494 | `declaration-track:053244fc6f2cbdd69838bde6cceeee0bcab64161a4b23031d395560885e5ec55` |
| 53 | `def` | [homQuotientZPowOfHom](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/homquotientzpowofhom.md) | 512 | `declaration-track:5f1677962bacdfdfd0500c47cfc14bfc10d3c704c5c57391cba90e2046dfb4bc` |
| 54 | `theorem` | [homQuotientZPowOfHom_id](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/homquotientzpowofhom-id.md) | 521 | `result-track:3ede888f91ac1c81ddab710491ee2afcf7ddb377bf6c089d7ea39d98033fe787` |
| 55 | `theorem` | [homQuotientZPowOfHom_comp](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/homquotientzpowofhom-comp.md) | 527 | `result-track:e46cd74a4a5db033aaada80294f8a33583d32d6631ef197093454fe6974b2af9` |
| 56 | `theorem` | [homQuotientZPowOfHom_comp_of_rightInverse](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/homquotientzpowofhom-comp-of-rightinverse.md) | 535 | `result-track:bcd6fb269b55030a7146346ecb36fda1f8a6da6894275b4d3ac4ea9a5394f93d` |
| 57 | `def` | [equivQuotientZPowOfEquiv](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/equivquotientzpowofequiv.md) | 544 | `declaration-track:e2cb3d945b7743520c5871320c88537f28c8a3982036cbfba32f6ac4fd963929` |
| 58 | `theorem` | [equivQuotientZPowOfEquiv_refl](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/equivquotientzpowofequiv-refl.md) | 554 | `result-track:e4bc66d89c9243b6eea85961a48efe18a16f6dcb9f7c1e081b4ab3b39d8e8c49` |
| 59 | `theorem` | [equivQuotientZPowOfEquiv_symm](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/equivquotientzpowofequiv-symm.md) | 564 | `result-track:558f51763b465232ebbf8be5c454071aa8afa6270e945a64bea92b4d5118033c` |
| 60 | `theorem` | [equivQuotientZPowOfEquiv_trans](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/equivquotientzpowofequiv-trans.md) | 571 | `result-track:ba6d5c8a587755b21a9f55fa4ca19dafceae767ac31650a6abd974d6bb843d77` |
| 61 | `def` | [quotientInfEquivProdNormalQuotient](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientinfequivprodnormalquotient.md) | 590 | `declaration-track:f673383cd0d9a211702b956afd50090fb5c7b92f0231b25786038203f835dfb3` |
| 62 | `instance` | [map_normal](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/map-normal.md) | 623 | `declaration-track:40581a6de9264828f8e4c4597548fd2187786036f3a54cb3157c3d7ba088b730` |
| 63 | `def` | [quotientQuotientEquivQuotientAux](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientquotientequivquotientaux.md) | 633 | `declaration-track:7c876368af6634ab9510a87a5b170b3421881d695e594fb820c685f4f84fb5ca` |
| 64 | `theorem` | [quotientQuotientEquivQuotientAux_mk](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientquotientequivquotientaux-mk.md) | 643 | `result-track:e89e09efdd8a706f4331683729543f9e22cf3cc441e37b6c155a8f02f6a4d261` |
| 65 | `theorem` | [quotientQuotientEquivQuotientAux_mk_mk](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientquotientequivquotientaux-mk-mk.md) | 650 | `result-track:4441f31b8d8b95405933d79b7ae9ee13c2a130ef64a2770d06fc6e64d8774e7e` |
| 66 | `def` | [quotientQuotientEquivQuotient](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/quotientquotientequivquotient.md) | 659 | `declaration-track:0beb49079c27741f773037d7809d004a92e73dfcdfd85260a402b4511c73e0d9` |
| 67 | `theorem` | [subsingleton_quotient_top](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/subsingleton-quotient-top.md) | 672 | `result-track:62470ae35dc4ddcff5a7fe603ed3a99ef24d8154d4ac09af08878d1f17405a63` |
| 68 | `theorem` | [subgroup_eq_top_of_subsingleton](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/subgroup-eq-top-of-subsingleton.md) | 682 | `result-track:7693b1027f14002a0898c60e491645727f40ad26e9680dfb541e2c4c543ffa95` |
| 69 | `theorem` | [comap_comap_center](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/comap-comap-center.md) | 692 | `result-track:438b48c94404f6e6cf6cd7958c77a36060a7552396f280da8213ea9f36fcde0a` |
| 70 | `def` | [fintypeOfKerLeRange](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/fintypeofkerlerange.md) | 715 | `declaration-track:158a5bd5be1c3604918e158eae48ca04eecfa43b711bb214af6d10e0664f311c` |
| 71 | `def` | [fintypeOfKerEqRange](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/fintypeofkereqrange.md) | 725 | `declaration-track:a2189e92f9ae4515f1631f0310fcb1454c3ff06ab7ba2e32dd4ce080e6d76eb1` |
| 72 | `def` | [fintypeOfKerOfCodom](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/fintypeofkerofcodom.md) | 732 | `declaration-track:fe1dbf119872bd1ebed76898e0268f3c0b0b62a805de4da36a59410739fa9039` |
| 73 | `def` | [fintypeOfDomOfCoker](../../../../GroupTheoryAndGeneralizations/GroupTheoryQuotientGroupNamespaced.lean/declarations/fintypeofdomofcoker.md) | 740 | `declaration-track:903fe633d72e8050332e506d36295dfbac265ca02701e1d19d4170fe8f7fbdbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5af4830baaa4307b7eee47e66bb20dbc3c850448198f44c1a488e2b24f1db1b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/QuotientGroup/Variant7b1577e2b5803ab76097fc33758b472ad0e0c4e9736b55a4318fa0f2a11cc31c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
