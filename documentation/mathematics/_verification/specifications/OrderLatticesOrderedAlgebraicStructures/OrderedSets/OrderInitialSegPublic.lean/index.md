# Verification target: Order Initial Seg Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8cf0f393416c64b8d513ff270f7363c755b6e91",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant479b3b2100ffb7182643e66e056a7a45c1ee397e9285cae035c8521c160d4102.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8cf0f393416c64b8d513ff270f7363c755b6e91`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant479b3b2100ffb7182643e66e056a7a45c1ee397e9285cae035c8521c160d4102.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant479b3b2100ffb7182643e66e056a7a45c1ee397e9285cae035c8521c160d4102.lean.json)

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
| 1 | `structure` | [InitialSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/initialseg.md) | 59 | `declaration-track:dd6d858011fefab0785d81ecdb6c02a7f10b22120970f18a1acf4925829da83c` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-7.md) | 71 | `declaration-track:83c37693844fb2557e97e53d8f49b143a039c8bdb5aa572ac9a9dc6d7c485a9d` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-10.md) | 75 | `declaration-track:aa493b2fb731fe967dbac491f5cbdee11db98e7040a01788938ff42a5de051a2` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:4cfbeada0dc71e7ec131c5f0f1e2a608c24b86752c7b329104116f5a1853555a` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-4.md) | 85 | `declaration-track:52df3a1005c7b14249110df4b71109f3c4f30241947043aaf0e465e6e6f56166` |
| 6 | `def` | [toOrderEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/toorderembedding.md) | 90 | `declaration-track:3d5dd3449f2e7cb22b3d8f0ea91b0cb2ba5543a303a9cb23bc9ca75548332ac3` |
| 7 | `theorem` | [toOrderEmbedding_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/toorderembedding-apply.md) | 94 | `result-track:5fee2917da121f3e662dd7169e4c3576c3f770ec990aff535a7346b70c0a84e3` |
| 8 | `theorem` | [coe_toOrderEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/coe-toorderembedding.md) | 99 | `result-track:a3e481ecd537f4c6b21684a0c6a716c818ba28a42b2b99ec3b484751e8aa1c57` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:46c27e8e0a10f7383ac8c5e4fd7667c52dbae648bebaa2b781ef40806ebfbf0c` |
| 10 | `lemma` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/ext.md) | 106 | `result-track:0e1b384ef3c917155c859fb1b3d058fd66e1e65a526902438d524964821ee34e` |
| 11 | `theorem` | [coe_coe_fn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/coe-coe-fn.md) | 110 | `result-track:83bc18c90ffb4c16a5d4591aff08bb5066a6814074895f070e0cd427c5c8ecb4` |
| 12 | `theorem` | [mem_range_of_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/mem-range-of-rel.md) | 113 | `result-track:207ff65a8af03cd1186e53a7a18f57f78bef72ea31842f8bee5fda8ba1acc422` |
| 13 | `theorem` | [map_rel_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/map-rel-iff.md) | 116 | `result-track:3abfab3796d5939eb25820bc13de181bf88efcb8662e1ddfa91780381939cb4d` |
| 14 | `theorem` | [inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/inj.md) | 119 | `result-track:172b197a0f86d3029ee1576f6885eb2858e97cba63f6bde6b0e998d54cf123bb` |
| 15 | `theorem` | [exists_eq_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/exists-eq-iff-rel-source-edition-2.md) | 122 | `result-track:cab7fadc85250be2d5846473867c4b7b8c6409691a7b2af02400bd94f24a0954` |
| 16 | `def` | [_root_.RelIso.toInitialSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/root-reliso-toinitialseg.md) | 130 | `declaration-track:9559f463bc0a0b84aa1afe07043caac26a0126195a15aefedc3d0ee034365715` |
| 17 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/refl.md) | 135 | `declaration-track:92f4683ffc862d9089306244617f44c75c4bc0540ace909a75fa751b4f2dc56d` |
| 18 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance.md) | 138 | `declaration-track:2ccc5f97433c28e5d15c4c78a1ad67933b53ca735b58cf692459bc775eba998e` |
| 19 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/trans-source-edition-2.md) | 143 | `declaration-track:3422b00a5233f1f07ff2164cfd45e3d0359eca5c0a2a0451ac8791913aefdef6` |
| 20 | `theorem` | [refl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/refl-apply.md) | 150 | `result-track:a7e401756aa06d9d988bd86b917c57f7d6812e02cc27cf2c1b0c592e8de05909` |
| 21 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/trans-apply.md) | 154 | `result-track:1ad9ab394df3f736bf0b48301bac7aaa93bd617fc5f81da0b3123b13210c4afa` |
| 22 | `instance` | [subsingleton_of_trichotomous_of_irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/subsingleton-of-trichotomous-of-irrefl.md) | 157 | `declaration-track:4f826b0e3566beffc13adbf189a1294243f4f88229b690348fa1c24afd2e8d16` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-8.md) | 167 | `declaration-track:8a86d68a3cae536e4195200617fd011fade320d78c997a63c1afc43687e769e3` |
| 24 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/eq-source-edition-2.md) | 170 | `result-track:eb91392fac985d9a5b26aba85951563ed453546c68ae3b90345c20e05cdd9d6a` |
| 25 | `theorem` | [eq_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/eq-reliso.md) | 173 | `result-track:382dba0f21ed38a4b4767d293cf45789045448dd189311e1fe2cd6126f9593ce` |
| 26 | `def` | [antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/antisymm.md) | 178 | `declaration-track:89f86eccfff056d56ccdf13226840bf6fce8c4dcf06aa0e1bbaec71455517e40` |
| 27 | `theorem` | [antisymm_toFun](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/antisymm-tofun.md) | 183 | `result-track:a146c699e6944a164593c915c1a0ddc47b8ffae1f2770df96018a9f65e609845` |
| 28 | `theorem` | [antisymm_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/antisymm-symm.md) | 187 | `result-track:bf32577e39e95b7074c0e95cbee38db2bad3f2dec8c8e8a2110871fa15e2cd3c` |
| 29 | `theorem` | [eq_or_principal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/eq-or-principal.md) | 194 | `result-track:c76f4fd0ff6e5121822799c2e23fe2d6c0294a05b4d6a9d3cca58c53091000c5` |
| 30 | `def` | [codRestrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/codrestrict.md) | 210 | `declaration-track:2f08f164cd3a304f909d5c3e8374a87620f6fbece6770e5393819bae8df100a0` |
| 31 | `theorem` | [codRestrict_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/codrestrict-apply.md) | 216 | `result-track:09a27e3efd3c574280282b725b23b48acf25b5f0839ff6a8882050fa667699a9` |
| 32 | `def` | [ofIsEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/ofisempty.md) | 220 | `declaration-track:61ce94d563b2e3d98542efb8dab530ab283ea787b2e1acd2ed2547988b9b6160` |
| 33 | `def` | [leAdd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/leadd.md) | 224 | `declaration-track:df6d919f3e91711d5be2f910f3de5439d58f94cfeb2cbc31c9d4c2c9c0b198e8` |
| 34 | `theorem` | [leAdd_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/leadd-apply.md) | 229 | `result-track:bfac388b43afc915e4a72ad246ce5b33a16d3a66888d7bc63a8ad60a8f5b4010` |
| 35 | `theorem` | [acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/acc.md) | 232 | `result-track:7f7b20903130e0d89144c772c3912715650505473a954de07cafd70b0e088a6b` |
| 36 | `structure` | [PrincipalSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/principalseg.md) | 245 | `declaration-track:8cdff193f7e53fba3b0e03e2c2365656de95c7dfa81a8815eef90e53fa5f9afd` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-5.md) | 261 | `declaration-track:6e023d54164cced17f42d5e13193f1cf4f2be2a48e2e40c9f21ddd6458620634` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-11.md) | 264 | `declaration-track:d473967802029c344fc59d14283b14cec2c7e969c95597d948a692b62381fb72` |
| 39 | `theorem` | [toRelEmbedding_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/torelembedding-injective.md) | 267 | `result-track:8bb5904d4811614ebe4d2de97e3df2fd68fe74af520c49e1ea7c0840d74f058e` |
| 40 | `theorem` | [toRelEmbedding_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/torelembedding-inj.md) | 275 | `result-track:559c04a8a2635f03b54f9827c9f52b3b44eb7ffa3f8326aea9dec98643221f2b` |
| 41 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/ext-source-edition-2.md) | 280 | `result-track:428d8f827cbf541f78dd687d21e2319c37409d3dcc964f083fe103e730f24d11` |
| 42 | `theorem` | [coe_fn_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/coe-fn-mk.md) | 286 | `result-track:2ed6575a36dc275944850a944224bd29a4bf61d5fae6eb91b8739eda51dff121` |
| 43 | `theorem` | [mem_range_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/mem-range-iff-rel.md) | 289 | `result-track:654b6789ff4b653ce4373d203cec1a93db794c1eb1cf9e04e8e5b707c875830d` |
| 44 | `theorem` | [range_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/range-eq.md) | 292 | `result-track:332ae8c088fc43b93bac4338a3d51d8942c5e5051c5c16350f8a1a7aba1f49d7` |
| 45 | `theorem` | [lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/lt-top.md) | 295 | `result-track:af92955c67619fb8b0853da745465cdcd1b564d3287e0d670791956b37fa5b28` |
| 46 | `theorem` | [mem_range_of_rel_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/mem-range-of-rel-top.md) | 298 | `result-track:22bc6d25b8181d6b210359e19cb897cff6429d9641403b867f19f86ec04c198f` |
| 47 | `theorem` | [mem_range_of_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/mem-range-of-rel-source-edition-2.md) | 301 | `result-track:28d6d43c617efbf95152bacc4a67094a879b54a50d277d87621d23f1d03061b0` |
| 48 | `theorem` | [surjOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/surjon.md) | 305 | `result-track:974418cee5a7f61cc5245a8b43db96cc770ad2415b09227d0d2b311d6433041f` |
| 49 | `instance` | [hasCoeInitialSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/hascoeinitialseg.md) | 310 | `declaration-track:e33df8814b90b3807fe5c1cb37d20587b5ce0df2c4d9f8cfb96be7304287206a` |
| 50 | `theorem` | [coe_coe_fn'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/coe-coe-fn-source-edition-2.md) | 313 | `result-track:f67700228af187dccaa07db878bda8d474b13337e0629ee2bfda6eee75860426` |
| 51 | `theorem` | [_root_.InitialSeg.eq_principalSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/root-initialseg-eq-principalseg.md) | 316 | `result-track:6bc54ae64eef50acd91d7097e2a36baabb64c94a1d3a338f18f3e8b351b78d40` |
| 52 | `theorem` | [exists_eq_iff_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/exists-eq-iff-rel.md) | 320 | `result-track:ace9ccfe030ef9ce276421a35c6a6e4e30ade89998db4a27b1be870ab2612672` |
| 53 | `def` | [_root_.InitialSeg.toPrincipalSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/root-initialseg-toprincipalseg.md) | 325 | `declaration-track:bd4458e3e14f4864a4ac0d444168b3343d0d5cb5995c2a32f12f75f52b67ac36` |
| 54 | `theorem` | [_root_.InitialSeg.toPrincipalSeg_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/root-initialseg-toprincipalseg-apply.md) | 330 | `result-track:5686e87e7dd3ecf6c66bc1093706d42a6cc8c63a96fb2fdf266577ac032cd295` |
| 55 | `theorem` | [irrefl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/irrefl.md) | 334 | `result-track:9eeff20c38c7384d37703c5f96950e60ff6ca288972df9c013e130803f124bb9` |
| 56 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-9.md) | 339 | `declaration-track:99eec9ed051ec49999217eaf41fb01940572e482954c12d95751f71520e92aa2` |
| 57 | `def` | [transInitial](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/transinitial.md) | 344 | `declaration-track:696c510b16910ec440690a9a1a342c3794961018c708143810104666ab08e8cf` |
| 58 | `theorem` | [transInitial_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/transinitial-apply.md) | 349 | `result-track:2d985acfb26ce7af6b536170a2dac2753892298ac48889948dfec257e3f8b224` |
| 59 | `theorem` | [transInitial_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/transinitial-top.md) | 353 | `result-track:2b275470aabd301163dc1aa0b9c8ef09d876805e590b12b0dc5cccd8ecc43ec3` |
| 60 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/trans.md) | 358 | `declaration-track:1043c14d0983b5ffd1d438d342c63646ff7cdd9fb8e22a1e5c2a3b7a826bd328` |
| 61 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/trans-apply-source-edition-2.md) | 362 | `result-track:1fafe5306210deb292243e0c41a78deca6b689f8af2c12249d1048cdfa65c73f` |
| 62 | `theorem` | [trans_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/trans-top.md) | 366 | `result-track:65e2b24afd7a1345a9e395cd042aa8213a14c0747d4e53f093979b9c4fde3569` |
| 63 | `def` | [relIsoTrans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/relisotrans.md) | 371 | `declaration-track:57e9136ff2b9fd2eed559484d13ca22a77e073b85f3f6f32c9030418a62c354b` |
| 64 | `theorem` | [relIsoTrans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/relisotrans-apply.md) | 375 | `result-track:8c35158d9473d7081d01de4ac80034b9e4cec1b31f9212f3a93d7e47a99b02e7` |
| 65 | `theorem` | [relIsoTrans_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/relisotrans-top.md) | 379 | `result-track:43cf429a139371b7794a26264ad7c43a67bc49029a751be4a302142fb71c5bec` |
| 66 | `def` | [transRelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/transreliso.md) | 384 | `declaration-track:adbc1a6db89c78e5c886a0d06a44d9fa166e840975726dba364352609a066a79` |
| 67 | `theorem` | [transRelIso_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/transreliso-apply.md) | 388 | `result-track:18c8223a4d50a980bfbe99b49f0763e575989fd2ea8b2ae94c2d9e3864d9b23e` |
| 68 | `theorem` | [transRelIso_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/transreliso-top.md) | 392 | `result-track:70d951268eed68f765f4a4d424f3a29a51dec44102b668982d255bbdae0ac77f` |
| 69 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/instance-source-edition-6.md) | 396 | `declaration-track:73cfee5b5348d58b653fa4e3594e9de3cbb69bb56f5fcb221cd3ae9f9951d8a9` |
| 70 | `theorem` | [eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/eq.md) | 399 | `result-track:6f621feacaa9d58e1f760128b6e0ad72017fd331bd45f30e94b94e7a74dbaa35` |
| 71 | `theorem` | [top_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/top-eq.md) | 402 | `result-track:55dc2e6edc3c8a101cc413843d3389b154caabf1075f2d75a9a827eb3c3826af` |
| 72 | `theorem` | [top_rel_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/top-rel-top.md) | 405 | `result-track:fec1e019dbcbf8482f68904aed85efa8655b5b8362db5d36e7b9477863deace5` |
| 73 | `def` | [ofElement](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/ofelement.md) | 412 | `declaration-track:c813bb43addc19422941252b3d78c41ffd7ddd5e5a0e935b002e4d8bff898a2e` |
| 74 | `theorem` | [ofElement_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/ofelement-apply.md) | 416 | `result-track:9caf425a1074e186a8719eb01f12e80fdd314309ac7656671bd89042a7c8347e` |
| 75 | `def` | [subrelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/subreliso.md) | 421 | `declaration-track:4ebfbad296a96d39d1b59672168ae1e546ef5984a9dcce97210ec9b9bbe856bb` |
| 76 | `theorem` | [apply_subrelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/apply-subreliso.md) | 426 | `result-track:f93a8d16e001be76752cc999eb19f32578ad2225ae3ef054afdf735a256d6b97` |
| 77 | `theorem` | [subrelIso_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/subreliso-apply.md) | 430 | `result-track:7eab0ff683304f808ddaced772fdbe2f70f9c60e2c26ea700229255b3467dcc5` |
| 78 | `def` | [codRestrict](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/codrestrict-source-edition-2.md) | 434 | `declaration-track:9025a181152a12be70459df237f2092dfe2a3d4c2483aebbb749abf2ab6d44b1` |
| 79 | `theorem` | [codRestrict_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/codrestrict-apply-source-edition-2.md) | 439 | `result-track:cf9c282bbef5d5fcda7d900be3b70ad10c13cab9ee53b669e5ed4a4ef6199e95` |
| 80 | `theorem` | [codRestrict_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/codrestrict-top.md) | 443 | `result-track:d93cbd5e073b483720da761df08f58d8f38f54f72d614b08375fdc51cb5f9720` |
| 81 | `def` | [ofIsEmpty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/ofisempty-source-edition-2.md) | 447 | `declaration-track:8808ddf60d120b3184e2d526f76d73a06c8b932932fe1a9af1d234888eaadb97` |
| 82 | `theorem` | [ofIsEmpty_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/ofisempty-top.md) | 453 | `result-track:3d3efdf817de8dcca436b0a4b5a7374c8fc256da4f540e4c1bcba20b69831b8b` |
| 83 | `abbrev` | [pemptyToPUnit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/pemptytopunit.md) | 458 | `declaration-track:cca06affce36a2d3cceb690710f4aa659e3926e63212f6897e0c0af1e6f37934` |
| 84 | `theorem` | [acc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/acc-source-edition-2.md) | 461 | `result-track:ae275de33cd7f55b60c683b617ce26906f6a76680926423fb572a913bd563483` |
| 85 | `theorem` | [wellFounded_iff_principalSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/wellfounded-iff-principalseg.md) | 466 | `result-track:4f08c9c79879883dd382c3f954beb0536b9b2c3e53a1b03b72bf6823cc7a10d8` |
| 86 | `def` | [principalSumRelIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/principalsumreliso.md) | 478 | `declaration-track:54a99a70f5af00fba7ea159cc9234e5be1cb1b26619517a45a4b642b14342466` |
| 87 | `def` | [transPrincipal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/transprincipal.md) | 485 | `declaration-track:72de164f84ba80c5a49ce9ac2993dbf35cdbabab474f67c7c8acc73a2ce34992` |
| 88 | `theorem` | [transPrincipal_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/transprincipal-apply.md) | 492 | `result-track:87a8fa8b5fbf5001793f89e89522a9d8291551d14a585a0ca5ddf7f062b29085` |
| 89 | `theorem` | [exists_sum_relIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/exists-sum-reliso.md) | 501 | `result-track:6a8ab1ae1ffb0ecdfbaa198263feb46385deff2360aa92e83c6777e30a4ca9ea` |
| 90 | `def` | [collapseF](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/collapsef.md) | 512 | `declaration-track:ac16f72f160b0ac6fa446a53415f559dad11c66b3dd2475e0753edad57d0a2da` |
| 91 | `theorem` | [collapseF_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/collapsef-lt.md) | 518 | `result-track:e52c8837499ddc799c290ad1b84b0b49718c2529ef68c0bd6846eb38a0fd870f` |
| 92 | `theorem` | [collapseF_not_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/collapsef-not-lt.md) | 525 | `result-track:3065e5846c9605cf569578838b4f67aa9c3031b6723032e1e5e69aa2f6e66da9` |
| 93 | `def` | [RelEmbedding.collapse](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/relembedding-collapse.md) | 536 | `declaration-track:b187c2b14c60590f37c014ab7b3d8c85ae4e13071df093f95ffd73bd3e689c7d` |
| 94 | `def` | [InitialSeg.total](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/initialseg-total.md) | 549 | `declaration-track:e4a13475af9feb55973a41dabee316a5bbd6cbccb2af950e1a2aa8905fb43a62` |
| 95 | `def` | [PrincipalSeg.trichotomy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/principalseg-trichotomy.md) | 567 | `declaration-track:56fcf14b53fdf5c87ce0a4341dec7ac6d9dbf1309e243592ca6fb3f790ff0e07` |
| 96 | `def` | [_root_.OrderIso.toInitialSeg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/root-orderiso-toinitialseg.md) | 579 | `declaration-track:f950fd76b05614d1a1d272e9445dd9db04d0420bff180de2d515c8eb40d46c15` |
| 97 | `theorem` | [mem_range_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/mem-range-of-le-source-edition-2.md) | 584 | `result-track:30196d222fa8d70e0ed4d77930d07a99085b0a13158dc4d1ca68dbed9293b0e8` |
| 98 | `theorem` | [isLowerSet_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/islowerset-range.md) | 588 | `result-track:112b885fabb495584e0542e9ae1b2b0527cd475cf4f426c5364a7eb1c3c71886` |
| 99 | `theorem` | [le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/le-iff-le.md) | 594 | `result-track:65605a1216e27308b18e0650362462a8746c35290404114da560afcec51aa587` |
| 100 | `theorem` | [lt_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/lt-iff-lt.md) | 599 | `result-track:0678d6c7212072f05d48af897befca48f30929fb66da4dab67480949953d02db` |
| 101 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/monotone-source-edition-2.md) | 602 | `result-track:d86d8428c760288c7dba47a61bf52099f8b300cec671924dc15093e54dfc80fd` |
| 102 | `theorem` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/strictmono.md) | 605 | `result-track:153322f2e097c7b6ddc7a67d76b48451b168529a95c77cb5ea4ab4593baddbbc` |
| 103 | `theorem` | [isMin_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/ismin-apply-iff-source-edition-2.md) | 609 | `result-track:cb533908458569cd7e5747c5d48d359cb21eab10f578144c5c194e467d71b200` |
| 104 | `theorem` | [map_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/map-bot.md) | 618 | `result-track:23772d84fa06f3956bbd5b5dc71df930e1efd3d01a58e4165d783414c55390cc` |
| 105 | `theorem` | [image_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/image-iio-source-edition-2.md) | 621 | `result-track:a8abbb830976255c26e073b732eac4db55a3bde285e1a0a2682803cee46cb56e` |
| 106 | `theorem` | [le_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/le-apply-iff-source-edition-2.md) | 624 | `result-track:8e898271a6d1d34c03c700ecc85af40be9b3a596edbcaf9da6860488a32a831f` |
| 107 | `theorem` | [lt_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/lt-apply-iff-source-edition-2.md) | 633 | `result-track:5a3b0fa066c493b4e98987abbe4522c8965f969a6092204c7e1310958de67ed3` |
| 108 | `theorem` | [mem_range_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/mem-range-of-le.md) | 648 | `result-track:0e2844fe2bee142b5498e9da62b010449b0016730d2a50a735c458448b019ff8` |
| 109 | `theorem` | [range_eq_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/range-eq-iio.md) | 651 | `result-track:00dfb01e85e04e0169b82d7bd37883a33a4b8e8bceed00f40e8edf5586de87e8` |
| 110 | `theorem` | [isLowerSet_range](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/islowerset-range-source-edition-2.md) | 654 | `result-track:8d2e80d0b66330dd8f8a4060fc5b166accf277de5dca8803a0eb5a0fc2c90d4f` |
| 111 | `theorem` | [le_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/le-iff-le-source-edition-2.md) | 659 | `result-track:829cc7286158a40f8e63bbf83c55b50aa932b3c68e419f5580e19d3e45874181` |
| 112 | `theorem` | [lt_iff_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/lt-iff-lt-source-edition-2.md) | 664 | `result-track:0806a4d904ed9a9ca39ca1ea14f8dcf03a170337fe4ebfe7a422e28dce9a846d` |
| 113 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/monotone.md) | 667 | `result-track:261b0a9a5b44239c3047a09da23a54eb3db87740f70a87efb602d5340c8ac634` |
| 114 | `theorem` | [strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/strictmono-source-edition-2.md) | 670 | `result-track:406ffd405a010a3df377b01ef7c90ac5b7fce2625ce5ecf2477eb8d4b749176f` |
| 115 | `theorem` | [isMin_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/ismin-apply-iff.md) | 674 | `result-track:265409eddf889527bc2f75cca9c7222d802069010863cd34f346441459074349` |
| 116 | `theorem` | [map_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/map-bot-source-edition-2.md) | 680 | `result-track:c2cfa542504f8294de1059cb851eb4268a3f71968f27391549c61cb1c4e69827` |
| 117 | `theorem` | [image_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/image-iio.md) | 683 | `result-track:05ff11eb05c64e6a57a4f0c0448a9c80cab4a91ba9c953e1207b7caf8276b758` |
| 118 | `theorem` | [le_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/le-apply-iff.md) | 686 | `result-track:51cd0b0e57014fc315096a9a58bd2dcc18e5ecc6e4c55ac4a91c6033e259c164` |
| 119 | `theorem` | [lt_apply_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderInitialSegPublic.lean/declarations/lt-apply-iff.md) | 689 | `result-track:178c9a1d66a9a98f14d329d406b66ccc2a37d6451ececd4060dcecaa563b50a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb2b2e15ac07df4d54b2373ca144c24df92ff210c159f73342ba9a61c59b4164 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant479b3b2100ffb7182643e66e056a7a45c1ee397e9285cae035c8521c160d4102.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/InitialSeg/Variant479b3b2100ffb7182643e66e056a7a45c1ee397e9285cae035c8521c160d4102.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
