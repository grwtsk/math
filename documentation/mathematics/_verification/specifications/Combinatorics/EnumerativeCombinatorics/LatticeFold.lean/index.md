# Verification target: Lattice Fold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51d59f8c2b63fe02cdfb2a35afc96b83ddd51196",
  "lexical_observation_count": 207,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51d59f8c2b63fe02cdfb2a35afc96b83ddd51196`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fold/Variant56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Lattice` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.BooleanAlgebra` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.BoundedLattice` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Nat` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-source-edition-2.md) | 39 | `declaration-track:8396ca7d1c93a9fd4d506655e3dbefb764c6fd9cde33aaa622ed8d1abef1be55` |
| 2 | `theorem` | [sup_def](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-def.md) | 44 | `result-track:1142f80f324d4dd27f652922081f5854cd252942534a57940ac46331d8bb9c4d` |
| 3 | `theorem` | [sup_empty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-empty.md) | 48 | `result-track:d55b9362bc8545cf5b26af405ca3145119e381de0da74da869dc54b89c86821f` |
| 4 | `theorem` | [sup_cons](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-cons.md) | 52 | `result-track:2b884e1a47dc8cea7c979b1676206255b16dfc9d7ae19bcfe8cf1bf712efa826` |
| 5 | `theorem` | [sup_insert](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-insert-source-edition-2.md) | 56 | `result-track:dab9e672f5cfb227efaf883a26b5381a90f38b0ab4dc6f76268f27f7704fe0f5` |
| 6 | `theorem` | [sup_image](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-image.md) | 60 | `result-track:34352581520d2a253e63f6c8483654fafbc7324d5b959a7bd46d1061ff0791df` |
| 7 | `theorem` | [sup_map](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-map-source-edition-2.md) | 65 | `result-track:21e495596468815b171974f47a70b818c52af62904651326b503d09d8b90058c` |
| 8 | `theorem` | [sup_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-singleton-source-edition-3.md) | 69 | `result-track:90bffb5e3ebdc6f4fdb380525276165d676336d4aa052c2559cc1d339e4eba26` |
| 9 | `theorem` | [sup_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-sup.md) | 72 | `result-track:f144977a3dc26e1e8400f9504ef931f85035a8d5e05f1863a35dbb47f090f635` |
| 10 | `theorem` | [sup_congr](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-congr.md) | 79 | `result-track:70bd6ce0de9c358232b0b3bc358307a4055d84f8debf2d5fcbca7f1952959fe2` |
| 11 | `theorem` | [_root_.map_finset_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/root-map-finset-sup-source-edition-2.md) | 85 | `result-track:8a2dbed8af5f3d18bab4b3fd8cbfe4c925d1246efeafeb8e2b41539e8a0fd36c` |
| 12 | `theorem` | [sup_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-le-iff-source-edition-2.md) | 92 | `result-track:c0caed3624c5653f9d605738914e1b52cae3d649b5b2e81d9148b8315317eaab` |
| 13 | `theorem` | [sup_const_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-const-le.md) | 99 | `result-track:f136c42a868aaddb615b830153623da5add0af0a8af8328a7bca9574a9d2358c` |
| 14 | `theorem` | [le_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-sup.md) | 102 | `result-track:4b3c3ef5e7997be75b983b8bc7b50d71b03d23ae5f559218e6aa088422d46747` |
| 15 | `lemma` | [isLUB_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/islub-sup-source-edition-2.md) | 105 | `result-track:e905d849e301bf4d1adfbb44500e4a0c7a3270e3cb78fbc1f13fe572845bd427` |
| 16 | `lemma` | [isLUB_sup_id](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/islub-sup-id.md) | 108 | `result-track:d20cd89664d0d37c2dc9f2d86501493ddd80fd1706e7a88ec7b326a0bd99fa66` |
| 17 | `theorem` | [le_sup_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-sup-of-le-source-edition-2.md) | 110 | `result-track:ec06ace23c41b6b4ef83426ddfab31507083f8b0c782ff81e1c4bd29e69fc1c9` |
| 18 | `theorem` | [sup_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-union.md) | 112 | `result-track:491d0d68e6400401666666bc7889b4a8e3322e4be8ab71328ea47772e131908f` |
| 19 | `theorem` | [sup_const](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-const.md) | 115 | `result-track:3186c77fff00d39134c5f178fd1c9189768a1088cd233e8ca7d71daf6cc7b72c` |
| 20 | `theorem` | [sup_bot](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-bot.md) | 119 | `result-track:f0d93149e23ebace24ae8e6d8bc8f68d3a683b5dde5e1bb2cadcb633970d5e97` |
| 21 | `theorem` | [sup_ite](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-ite.md) | 124 | `result-track:e57d175177f3a997b3f0a76f5f4f9b464ca4d8f23969a95a27aa041ef5200c6a` |
| 22 | `theorem` | [sup_mono_fun](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-mono-fun.md) | 129 | `result-track:3863c3f1f4e70eededd251f280a9d65e8ecd6f2577af341cdb44be3ce0218bb6` |
| 23 | `theorem` | [sup_mono](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-mono.md) | 133 | `result-track:1e4ef87898208594c8ac6efac5431534f400bfc83620e995276a151a900b7719` |
| 24 | `theorem` | [sup_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-comm-source-edition-2.md) | 136 | `result-track:968e3b3e742503e00f8fcc87a6aea92c7284c86c698e0c9f607cbe65423af292` |
| 25 | `theorem` | [sup_attach](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-attach.md) | 141 | `result-track:396438fddc943abcfa148c56ecb9809841b02378f8af2e58f942cb16ac527235` |
| 26 | `theorem` | [sup_erase_bot](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-erase-bot.md) | 145 | `result-track:f22913bb9bd1473645b13a0bbffce9f6e5136c59aadf9b7586e68e4fd9fa9540` |
| 27 | `theorem` | [sup_sdiff_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-sdiff-right.md) | 151 | `result-track:07dab62eb40e67c673e6bae706907582942c5b7875a19ebe04cf75b7e13960f1` |
| 28 | `theorem` | [comp_sup_eq_sup_comp](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/comp-sup-eq-sup-comp.md) | 157 | `result-track:df3b7f2b0335df627a5eff9b366133e6838841bbc85c85926a9929353c2b80a3` |
| 29 | `theorem` | [sup_coe](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-coe.md) | 163 | `result-track:a4fcece81788df37514be620fb93bd73e9b330a8014b77aa3b84e65d17c53451` |
| 30 | `theorem` | [sup_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-tofinset.md) | 172 | `result-track:ab1a7e765927bf505bb658749a0b70553e6ab4a498139cbd44d71491834123bb` |
| 31 | `theorem` | [_root_.List.foldr_sup_eq_sup_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/root-list-foldr-sup-eq-sup-tofinset.md) | 176 | `result-track:2cf73a9596e22665e38f9310215d43a8baa6b32f060e7ebd79c23bc50d12ef24` |
| 32 | `theorem` | [subset_range_sup_succ](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/subset-range-sup-succ.md) | 182 | `result-track:542eb14947f0e9a9ea5325275597ec087def2962a8754ea2e54654f93ab82cde` |
| 33 | `theorem` | [sup_induction](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-induction.md) | 185 | `result-track:8158250e39d8cb8fe24edec2f19bfaace77e383b5c5926c9ee52f482d6b68244` |
| 34 | `theorem` | [sup_le_of_le_directed](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-le-of-le-directed.md) | 193 | `result-track:178cc7c3a960d26581d8b72d73882a52e1af46d24504c572fb589722b497ee81` |
| 35 | `theorem` | [sup_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-mem.md) | 218 | `result-track:782048fae1f3f494674330e7886118f02cae75fe80b24001cc9b4ed0e0dbae25` |
| 36 | `theorem` | [sup_eq_bot_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-eq-bot-iff.md) | 223 | `result-track:04b202f685059722282551b7f2fcba270bfaa0d7044b3f00a390c69577255585` |
| 37 | `lemma` | [sup_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-disjsum.md) | 227 | `result-track:852a23a77c9e4884dc840e80349e579656bbd8cb73b38637b55ee361400dea23` |
| 38 | `theorem` | [sup_eq_bot_of_isEmpty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-eq-bot-of-isempty.md) | 232 | `result-track:a639b49038245febd091ddbf1e789a4b9b36054801433f9682ee234ebac3ea22` |
| 39 | `theorem` | [le_sup_dite_pos](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-sup-dite-pos.md) | 236 | `result-track:80e22f50e18b2cd69180675de4f601d0e9824636998e267ad6ebc2150c78853a` |
| 40 | `theorem` | [le_sup_dite_neg](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-sup-dite-neg.md) | 243 | `result-track:7589623f54a36b492a5ec93f8940e9c93bbb326f314d25683b75b99562193ab6` |
| 41 | `theorem` | [sup_eq_iSup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-eq-isup.md) | 252 | `result-track:7383bba1f2641d89ea94d9b78245e56cf26b5246ecf7e3577bb457c964c39e8c` |
| 42 | `theorem` | [sup_id_eq_sSup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-id-eq-ssup.md) | 257 | `result-track:e3221a4170156b558a377363787b05f60c4fcb35d5fa314c9857eb4ff40a07a7` |
| 43 | `theorem` | [sup_id_set_eq_sUnion](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-id-set-eq-sunion.md) | 260 | `result-track:65f58f1c2d81f76da0b480bbd45106a6622a428fa5255e6194233a5951846cb3` |
| 44 | `theorem` | [sup_set_eq_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-set-eq-biunion.md) | 264 | `result-track:0e9b16c9744e79a247fad72a281f32fd11f70d34a72b5e3b2b0e494406d7f514` |
| 45 | `theorem` | [sup_eq_sSup_image](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-eq-ssup-image.md) | 267 | `result-track:71db59657df3911673ec39c466eea04f8e792f036f8177e994c1e0ceaf8dc022` |
| 46 | `theorem` | [exists_sup_ge](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/exists-sup-ge.md) | 271 | `result-track:b9082f9784dfdebbf656a245730f1206582725c457c7fbe0d7535c9e6ddc70df` |
| 47 | `theorem` | [exists_sup_eq_iSup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/exists-sup-eq-isup.md) | 281 | `result-track:b7cb4d008fdd35696ce17238424505e8eb4195d5e9940abf1aeb47ba0fa170da` |
| 48 | `def` | [inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-source-edition-2.md) | 295 | `declaration-track:9a52b607d934d1b455b7e051ac28efe3e0f0a42d5147e3b7ab1dcf584d209f84` |
| 49 | `theorem` | [inf_def](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-def.md) | 300 | `result-track:fa3bf11da214e47d37a66459443ef240b9de8f0c7865ca90fcb866bbaa5b8eff` |
| 50 | `theorem` | [inf_empty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-empty.md) | 304 | `result-track:1c1a55b487a225a9519801cbfe003b8f153a3583a428a4822478adc5207636e8` |
| 51 | `theorem` | [inf_cons](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-cons.md) | 308 | `result-track:01422bbe9fa7bbea507e5984582e8b60b84e79db77061fc833faf2e2a02f087a` |
| 52 | `theorem` | [inf_insert](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-insert.md) | 312 | `result-track:817cf102da17f7c7ad040111689322df7378ed8007b76375e6c1cd3cf12a7385` |
| 53 | `theorem` | [inf_image](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-image-source-edition-2.md) | 316 | `result-track:9f45bcaee81110e5c42d2b3a8e0222a37e42772256a50382dc9d9c7fd8c67167` |
| 54 | `theorem` | [inf_map](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-map.md) | 321 | `result-track:7f4f487dd189e823941fd0b1ecfaead4fcd9592da0c3070e9e4d4929e037eac7` |
| 55 | `theorem` | [inf_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-singleton-source-edition-2.md) | 325 | `result-track:c9101d61fdb77370bfc02b3482578de855ec3e15a071e3d33749d18d0c6f4b45` |
| 56 | `theorem` | [inf_inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-inf.md) | 328 | `result-track:9cd90b7d49d1f37d3f1f31a4fe69223560aa99c2a9ae84c66bebb8646dde8d93` |
| 57 | `theorem` | [inf_congr](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-congr.md) | 331 | `result-track:083cb8deac214f5dd750536ceef8c7fef53c2efca3f222ed9f900682f2249a04` |
| 58 | `theorem` | [_root_.map_finset_inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/root-map-finset-inf.md) | 337 | `result-track:979f8d3fc9be4424958a1be898cf00ed9c7178206245b64c5af6ebd98c8f0011` |
| 59 | `theorem` | [le_inf_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-inf-iff-source-edition-2.md) | 343 | `result-track:9f0ba0185bd64eb5f2e7da199a17e3fae605cbb6ad465afbae812f01a43319c7` |
| 60 | `theorem` | [le_inf_const_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-inf-const-le.md) | 348 | `result-track:9648db9598c7f2bd3139ce75ad9db6b7622e035b03eeb42751ca44fe39f800be` |
| 61 | `theorem` | [inf_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-le-source-edition-2.md) | 351 | `result-track:f4a93aa3cf362d922de73f236c57d00f7104d2da2e6662d15094c0301be24059` |
| 62 | `lemma` | [isGLB_inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/isglb-inf-source-edition-2.md) | 354 | `result-track:94f64aef2ac179b8e99d2e979c5e78afd2c062424ed06d69eeda1b31b6bf6667` |
| 63 | `lemma` | [isGLB_inf_id](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/isglb-inf-id.md) | 357 | `result-track:72c9b71e5dd25ae8f764a44e27cb25ff74b28d381c523d0b2089f347754ef333` |
| 64 | `theorem` | [inf_le_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-le-of-le.md) | 359 | `result-track:4dbedbc94d290729deec8575f19297a1164fdb479b4e10ee175aa97c9c1c7aca` |
| 65 | `theorem` | [inf_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-union.md) | 361 | `result-track:007d59847e36a575f9231e55eb41c4a457000a0873772250e0f88e807367f10b` |
| 66 | `theorem` | [inf_const](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-const.md) | 364 | `result-track:8fd7d42e9d93236cf7b88020599b748b0c7174b4dc40841d79599a873083fa0f` |
| 67 | `theorem` | [inf_top](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-top.md) | 366 | `result-track:df5577087f9a5615dc6213cc07206adb62fd175457dc0893111cbd1e2ed54d09` |
| 68 | `theorem` | [inf_ite](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-ite.md) | 368 | `result-track:28b3f8cea71c6c1e96c49f13b4a4d0d20c7aa96a5e6fff16ed82b191c7cb3b60` |
| 69 | `theorem` | [inf_mono_fun](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-mono-fun.md) | 373 | `result-track:b2ac34ac494f3597820c92ed4381b9c824d31ab1fbf23c49bdb43dd3af4f318a` |
| 70 | `theorem` | [inf_mono](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-mono-source-edition-2.md) | 377 | `result-track:28abb66120f48495949df64dc48599cc85ad00a2a977c70ce236a129b9ae0d63` |
| 71 | `theorem` | [inf_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-comm.md) | 380 | `result-track:56c6ba2fd39befc02809ff5607b60018bb52197422fe5975590e5f7da7716dba` |
| 72 | `theorem` | [inf_attach](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-attach.md) | 384 | `result-track:f8a79850652535dc937119c4e75d1076d2552b6270bc828d7efaa254ca9376f2` |
| 73 | `theorem` | [inf_erase_top](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-erase-top.md) | 388 | `result-track:40afec08e2af14b49d4608f26e1f89a913a6c922f69dfbc6ff5d2abe4b0f7050` |
| 74 | `theorem` | [comp_inf_eq_inf_comp](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/comp-inf-eq-inf-comp-source-edition-2.md) | 391 | `result-track:f4e0377be34e3dab7667181129ddd42dd36237362221a7a2c7c09abe4e369b50` |
| 75 | `theorem` | [inf_coe](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-coe.md) | 396 | `result-track:a5f2c8dd037120843413d8374f436a4a8551a82bd88b6052d33a07bdf59b8fc9` |
| 76 | `theorem` | [_root_.List.foldr_inf_eq_inf_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/root-list-foldr-inf-eq-inf-tofinset.md) | 402 | `result-track:3fab08285e0ace3d8189785d9508f48effee60908e4dfedb463349cf4754eb46` |
| 77 | `theorem` | [inf_induction](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-induction-source-edition-2.md) | 408 | `result-track:931dc66a1fc673d871c5e7c49dd2ad9ae870cf323d437caa88c4b8ce5db30bea` |
| 78 | `theorem` | [inf_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-mem.md) | 412 | `result-track:352624899f0ded34f1d35f9422e7dbe4695acab1746c7bba3cf8592025c0da41` |
| 79 | `theorem` | [inf_eq_top_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-eq-top-iff.md) | 417 | `result-track:e60538d30280d74d2bb8555e104ddb370782df20843586799d3f5354a1142052` |
| 80 | `lemma` | [inf_disjSum](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-disjsum.md) | 421 | `result-track:aea980081900628765bcc0d9bb7dff72777ce72bf6f8868922347920d67f0a7b` |
| 81 | `theorem` | [inf_dite_pos_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-dite-pos-le.md) | 425 | `result-track:44b134a3126e088bcdbd4b5ddfc23a802fd7ba68ce2c1d9ea9b2f7b62c020755` |
| 82 | `theorem` | [inf_dite_neg_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-dite-neg-le.md) | 432 | `result-track:96d952ea64f4805ea4a2b46ce9d324188cca985ca20429bdeb4c9537a3e54099` |
| 83 | `theorem` | [toDual_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/todual-sup-source-edition-2.md) | 442 | `result-track:7001ecc0d9ba26c431af25e828c2446a3951e181339b0c3ab278b6a68bb6fc27` |
| 84 | `theorem` | [toDual_inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/todual-inf.md) | 447 | `result-track:62bc64eae9f3d09c944860e970543534ac9dde650de86c9aca11fc64d775deb0` |
| 85 | `theorem` | [ofDual_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/ofdual-sup.md) | 452 | `result-track:5a4526d9b46c6a43d1cb64b09c642c2f6cc6652d86a74735850d17cd5e96ef6e` |
| 86 | `theorem` | [ofDual_inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/ofdual-inf.md) | 457 | `result-track:1749ce12ee3c54c3680f1c007f1b682190caf6df1bbbce5cc694ff6990307a68` |
| 87 | `theorem` | [sup_inf_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-inf-distrib-left.md) | 469 | `result-track:15641429eef065cc19d3672937461296a3a27bfd61160a7479c58b083a40b06f` |
| 88 | `theorem` | [sup_inf_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-inf-distrib-right-source-edition-2.md) | 475 | `result-track:bb17420c708c70c7ccf54eee58ffec6284e26d6610af7e0fb1727764c6f6c889` |
| 89 | `theorem` | [disjoint_sup_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/disjoint-sup-right.md) | 480 | `result-track:4d5c4b99666ba2a6693c68ff7a5331fd0e05a07f0478685a7a0b25819a195d34` |
| 90 | `theorem` | [disjoint_sup_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/disjoint-sup-left.md) | 483 | `result-track:262449c8399c559a993e7525b2ceab83230f6e6a9f02865ac0cda087ec8e560f` |
| 91 | `theorem` | [inf_sup_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-sup-distrib-left.md) | 492 | `result-track:113e01e4be3b79ffc03a7474e6219cdc011690cfdd5f989d1648f6ae73e32e4d` |
| 92 | `theorem` | [inf_sup_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-sup-distrib-right-source-edition-2.md) | 496 | `result-track:78d641104a8e574265202090863f2f5ae7cf0d30f37cef038666947224f768b1` |
| 93 | `theorem` | [codisjoint_inf_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/codisjoint-inf-right.md) | 500 | `result-track:69cab5ed52ea00101485777b46490176bd49a3f5fc6e16af9d7b5f6acad435aa` |
| 94 | `theorem` | [codisjoint_inf_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/codisjoint-inf-left.md) | 504 | `result-track:ae87fe193f485b5a5e91d6dfd044aa479bb1218b8a481958810476c2bd2fae21` |
| 95 | `theorem` | [sup_sdiff_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-sdiff-left.md) | 516 | `result-track:1231a625c642494398f3e8dade8589e95c3807e554807cefbfde0b03c9ed56a0` |
| 96 | `theorem` | [inf_sdiff_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-sdiff-left.md) | 522 | `result-track:efcefb057f56565e8f64c57761ecc707adb2ebb50b154045927c18a26532e78c` |
| 97 | `theorem` | [inf_sdiff_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-sdiff-right.md) | 528 | `result-track:807b3e2b8138d180e6b207c39739bb1ccd3d044323ff09556acc6c180263409c` |
| 98 | `theorem` | [inf_himp_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-himp-right.md) | 534 | `result-track:7864b9b15a0fc77c2ba80680204b22be08e6c45848f6f9c3ef7e32267362ba50` |
| 99 | `theorem` | [sup_himp_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-himp-right.md) | 538 | `result-track:e068899b0a385be0bf2308df088c48f3eeae5049d38d91c728ca9522d406fcc0` |
| 100 | `theorem` | [sup_himp_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-himp-left.md) | 542 | `result-track:d72fb6a1b295b7dc4ef09558530c5802244ef46d4475ab929086f44f60a72bd0` |
| 101 | `theorem` | [compl_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/compl-sup.md) | 547 | `result-track:cab60717241b257169cc003fe5964066f62bf5b7761b935882f58c6b51a14f99` |
| 102 | `theorem` | [compl_inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/compl-inf.md) | 551 | `result-track:2e0ad5dcfbc03dc64c05b8fd49b3ed737f59502cd91cf4a4044472a1e696c171` |
| 103 | `theorem` | [comp_sup_eq_sup_comp_of_is_total](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/comp-sup-eq-sup-comp-of-is-total.md) | 564 | `result-track:e6646d872cb329745ff7e5148b0ec2789b962a51cf880049a7eb8661e9ff2aac` |
| 104 | `theorem` | [le_sup_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-sup-iff-source-edition-2.md) | 569 | `result-track:55bc91929e958fe4ac31c666d64b3dc536c69080a16bf907deac9b897d168b22` |
| 105 | `theorem` | [sup_eq_top_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-eq-top-iff.md) | 580 | `result-track:e7e3498ca7940b76d26c88bdda00fe4a04bb600292ba3f6b09d6a2bee1553cde` |
| 106 | `theorem` | [Nonempty.sup_eq_top_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/nonempty-sup-eq-top-iff.md) | 585 | `result-track:8a6b1749511e64aac4037c3f1bcbc9ce8c2a1fae54ed0465b3e4f518b5392c41` |
| 107 | `theorem` | [lt_sup_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/lt-sup-iff.md) | 592 | `result-track:aa808eb87e0f66e2ed5a4368cadfd7c94acebd80fcca0cfdfcbbb8b03aacfbba` |
| 108 | `theorem` | [sup_lt_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-lt-iff-source-edition-2.md) | 604 | `result-track:bd91cf1506e858c353d4ac8e700e49a7ef4da9db36674d788f50ebab4f0d85f5` |
| 109 | `theorem` | [sup_mem_of_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-mem-of-nonempty.md) | 609 | `result-track:3f2182454a549e172df7c0e16b7e9c60631dd413825bb01f9c95bff1aa34d3e3` |
| 110 | `theorem` | [comp_inf_eq_inf_comp_of_is_total](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/comp-inf-eq-inf-comp-of-is-total.md) | 631 | `result-track:1c429626c2a97b2f84066e475bcf23f450430b8c006c017b35acfbd4a98b3c3e` |
| 111 | `theorem` | [inf_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-le-iff.md) | 636 | `result-track:1c17d5c54e325e04d126ca512ab424d010d1eb778264e7c282438441277afc68` |
| 112 | `theorem` | [inf_eq_bot_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-eq-bot-iff.md) | 639 | `result-track:b7eed7d77ec66dc8e07d5ee8da501f1ccae6003b8998d8ae2a12ea9ff69244fe` |
| 113 | `theorem` | [Nonempty.inf_eq_bot_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/nonempty-inf-eq-bot-iff.md) | 643 | `result-track:5be11182fa529e40ee83c3af196eb78c9a5fe4d4c8ea64823905fd23da622e45` |
| 114 | `theorem` | [inf_lt_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-lt-iff.md) | 648 | `result-track:49c9a57bf0d6d23b18cf153874edbd7b7cda2c0ad492179e30785f1105238802` |
| 115 | `theorem` | [lt_inf_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/lt-inf-iff-source-edition-2.md) | 652 | `result-track:43b319e0dbee8a5ba89afec1bccf0d85cbb404114fe55f840ffd2f9c1bf6d4e9` |
| 116 | `theorem` | [inf_eq_iInf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-eq-iinf.md) | 659 | `result-track:da1994b3351be6a31d177e853e64970222dbd12771373e061ca5e60ce2f3c056` |
| 117 | `theorem` | [inf_id_eq_sInf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-id-eq-sinf.md) | 662 | `result-track:01f37b233de895bbc3f49f30390862c664d3963c57ea1e30014b3bbb08df24e1` |
| 118 | `theorem` | [inf_id_set_eq_sInter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-id-set-eq-sinter.md) | 665 | `result-track:62d7652f18f9f341f015743beb81509f522f6fc23e69c9de5aefc7c891dfe0c8` |
| 119 | `theorem` | [inf_set_eq_iInter](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-set-eq-iinter.md) | 669 | `result-track:a129d8f46851503183d689acc40e538ab8c7814ac275d11902f8814d13db42d9` |
| 120 | `theorem` | [inf_eq_sInf_image](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-eq-sinf-image.md) | 672 | `result-track:89f188f59dd76f0707a6f8d62d0673f3b04e4cd97a7e623274d03ed565c0cbc6` |
| 121 | `theorem` | [exists_inf_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/exists-inf-le.md) | 676 | `result-track:bae78e1821454c1de9d7701464491833b2b705c999ea148bcb13f3739754ea04` |
| 122 | `theorem` | [exists_inf_eq_iInf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/exists-inf-eq-iinf.md) | 680 | `result-track:d417d408f8b3330b192da3dbba43698099b88bea4490232297b377bb760bff00` |
| 123 | `theorem` | [sup_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-of-mem.md) | 688 | `result-track:669ee6f6a8606902a02aa57a17ae45909e2f53b805de76b0c58b09bf483c4e9d` |
| 124 | `def` | [sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup.md) | 695 | `declaration-track:18267a81c715139cbb300a5fab2b848e09fc94df28d723500ff1892b459114e8` |
| 125 | `theorem` | [coe_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/coe-sup.md) | 701 | `result-track:c541b33b06d0cb8d6f03096ef4a00087407f628f7397d252d04c35ec742c2f23` |
| 126 | `theorem` | [sup'_cons](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-cons-source-edition-2.md) | 705 | `result-track:7f32140be3256ad273266a32d22b2d6a620eb35addebee6e5891f498a5dd83ce` |
| 127 | `theorem` | [sup'_insert](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-insert.md) | 711 | `result-track:64713ef46c3b99b9af85c5ef79619304713f2a1a16ae4f4bb6e8817ec30b02c6` |
| 128 | `theorem` | [sup'_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-singleton-source-edition-2.md) | 717 | `result-track:83165601d07c5455788b083cb2912fc86f16be0dbbc00e89ed912f6c8514703a` |
| 129 | `theorem` | [sup'_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-le-iff.md) | 721 | `result-track:96376e195ca3c77bfcdff574cb2803c87789584156c0dd2c9972a1d214471bf9` |
| 130 | `theorem` | [le_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-sup-source-edition-2.md) | 726 | `result-track:6fa764ee6990a55b63397dbb23db0d9a78bbc98c5ca6c8e5e207a4ca8a21fe30` |
| 131 | `theorem` | [isLUB_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/islub-sup.md) | 730 | `result-track:ac7a2c0a891519ceaea0eef8d060889bbdddab98b37ca2c633893c1683d31931` |
| 132 | `theorem` | [le_sup'_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-sup-of-le.md) | 733 | `result-track:009f0269fb0f28f118445cba84612a9db8b9f6f8df872ac04258f2b45e69601d` |
| 133 | `lemma` | [sup'_eq_of_forall](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-eq-of-forall.md) | 736 | `result-track:1e0c58d2773e28a2c48214bf24f42a87efedaa17966f1b74ffc58a3a132502c1` |
| 134 | `theorem` | [sup'_const](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-const-source-edition-2.md) | 741 | `result-track:a8a959a0631efea0b73d087f720fe1a5d00ce3e5fd2ca3341c3c35978c5f59d4` |
| 135 | `theorem` | [sup'_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-union-source-edition-2.md) | 748 | `result-track:ba1331aa5c99301564e1203d1814e9fffcc726499afd19fcaacc141cfe2c878a` |
| 136 | `theorem` | [sup'_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-comm.md) | 753 | `result-track:308dd30d46025c1a1f246bca91aa8cfa69d042cd88f8e59fad9036ae6eafe825` |
| 137 | `theorem` | [sup'_induction](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-induction-source-edition-2.md) | 757 | `result-track:ed5b03debec62e55086cb5b14f355d6eacf4ab4c1488c091cfed48621b9ae082` |
| 138 | `theorem` | [sup'_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-mem-source-edition-2.md) | 767 | `result-track:efdd5b870160655de5e76448f65d2f3e5e0d6796f35fae2091b556e8a51d5b96` |
| 139 | `theorem` | [sup'_congr](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-congr-source-edition-2.md) | 772 | `result-track:dbd383c0e275c5c4d1b9b53b3cc2f7deac79d6c218f5a17dcb51b7402e2d106f` |
| 140 | `theorem` | [comp_sup'_eq_sup'_comp](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/comp-sup-eq-sup-comp-source-edition-2.md) | 778 | `result-track:e43f949580dee13de5971c8dfe9793ce943c18540d7aec7eed79fd5613df1e4a` |
| 141 | `theorem` | [_root_.map_finset_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/root-map-finset-sup.md) | 783 | `result-track:5a3f06b4ec65fc0ae7f55d846a6b992e831736bf82bf0a36702ba64564d4f4a3` |
| 142 | `theorem` | [sup'_image](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-image-source-edition-2.md) | 790 | `result-track:688e2c44fd68eaa9f29cf2dd558ac7601e0a0ba883ef5d816e72f2996c302e94` |
| 143 | `lemma` | [sup'_comp_eq_image](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-comp-eq-image.md) | 797 | `result-track:8c9cedd1ee284266e82fad4c2c8c2b8721a0acf27f809187b0c356a77c48e904` |
| 144 | `theorem` | [sup'_map](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-map.md) | 803 | `result-track:0d84cbd5c1774a720b35dc6256e8ae1e0ca8bc335c1d29aa99d0b5a9422be6af` |
| 145 | `lemma` | [sup'_comp_eq_map](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-comp-eq-map.md) | 810 | `result-track:0731f5090c29fab70c2ca0388dd1eb2852eae98459d19b12bfaa58775e0d0334` |
| 146 | `theorem` | [sup'_mono](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-mono-source-edition-2.md) | 816 | `result-track:2a24a103c3c3b0cb8c97245c8b930ea5bbf3506586e004e24f2fb398e4ad0e94` |
| 147 | `lemma` | [sup'_mono_fun](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-mono-fun-source-edition-2.md) | 821 | `result-track:a61fdad9c79b7c9ad659ecacb5b61b7e4bd853f820a38514ee427b883459c291` |
| 148 | `theorem` | [inf_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-of-mem.md) | 830 | `result-track:46190e72d6625a9728cbd56113e502ad2b60a822987ea5d108bf35f90e039ff9` |
| 149 | `def` | [inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf.md) | 837 | `declaration-track:6932b4a96eff3b3b9a7bc4bd64820ec8bab21a47a3279080f7c1a025e5e1f5a9` |
| 150 | `theorem` | [coe_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/coe-inf.md) | 843 | `result-track:58ee608502d31fb4a3cefed848844806d8f33e430f5649dff8fc1f7c7718c85f` |
| 151 | `theorem` | [inf'_cons](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-cons-source-edition-2.md) | 847 | `result-track:339abd70ac4f9d5386413ac85576feaf89f45ba04c6a0e4b47d453da641e8111` |
| 152 | `theorem` | [inf'_insert](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-insert-source-edition-2.md) | 852 | `result-track:e5e300b3373bd3e8baee75fd1a0fca453ead0c9656b2038f91fc156b57257826` |
| 153 | `theorem` | [inf'_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-singleton.md) | 857 | `result-track:0127f5e65db5f1e13054227ac842f41c771e2baf238936b76ac69087b8ff9229` |
| 154 | `theorem` | [le_inf'_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-inf-iff.md) | 861 | `result-track:97a8e7688a0d16894ed04407368f10a7ff3555017d5a321a45dfe2ed83572df4` |
| 155 | `theorem` | [le_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-inf.md) | 864 | `result-track:3b93fb1369136e2a5c2fafb4cf79344f52ba9ea5d5270dfd3d82a16332dd2e9e` |
| 156 | `theorem` | [inf'_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-le.md) | 867 | `result-track:6d5502a55df97feca245d80314539b9663a8acd6d6222a58cb7ba0e052f20b85` |
| 157 | `theorem` | [isGLB_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/isglb-inf.md) | 871 | `result-track:485d383dc7ae472933aa2f8f8f75a07cbf752bb73d7e19ce63ca778ecbe0c5ed` |
| 158 | `theorem` | [inf'_le_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-le-of-le-source-edition-2.md) | 874 | `result-track:c5729b7ba9a54d4238236a5b64d2c6200ffe507dab4fd37b161dcf233e5b45e4` |
| 159 | `lemma` | [inf'_eq_of_forall](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-eq-of-forall.md) | 877 | `result-track:6e8d37fe9f4c4bc0610fb0e54f0ae51aa1f3c4be873544618ae1e3602e78bca5` |
| 160 | `theorem` | [inf'_const](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-const-source-edition-2.md) | 881 | `result-track:aec144d68b404bae70a6a70bb2e376e48828927005fae099f3e71267abf67819` |
| 161 | `theorem` | [inf'_union](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-union-source-edition-2.md) | 884 | `result-track:5b10df86f2805e03bf75a9234702f92c7dc9087e52b3673320e62a6930f5bd2e` |
| 162 | `theorem` | [inf'_comm](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-comm-source-edition-2.md) | 889 | `result-track:70ca497e66406d7801922e2c7ba667ca80c95e89fc6474d93571a44ae869a0f5` |
| 163 | `theorem` | [comp_inf'_eq_inf'_comp](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/comp-inf-eq-inf-comp.md) | 893 | `result-track:aa8121c1ce609f99407febbafb4aedb205e63b7dda9830d095910810fd389d27` |
| 164 | `theorem` | [inf'_induction](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-induction.md) | 897 | `result-track:7273fc636b74b8830ce49b2956ae26310f6dcce97fc7805dcb1a0ad8aa915740` |
| 165 | `theorem` | [inf'_mem](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-mem-source-edition-2.md) | 901 | `result-track:77ba02d57f40056c7437cdb50eea13a6497bce57e758eb94009b6f5957feecbe` |
| 166 | `theorem` | [inf'_congr](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-congr-source-edition-2.md) | 906 | `result-track:ab1733bd3dabc2c14960cfc1cfb09b2d8f960eab01778243bac865d4c63d2c5f` |
| 167 | `theorem` | [_root_.map_finset_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/root-map-finset-inf-source-edition-2.md) | 911 | `result-track:ec4631e011c3e7102c60bd471ced6f6bed3e58c7093c9c2aef36c014bf3e0cae` |
| 168 | `theorem` | [inf'_image](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-image.md) | 918 | `result-track:990746404feb9475cb352d9ffa554fcef4da04b3e92c4b60efa3b88d9e37bf7d` |
| 169 | `lemma` | [inf'_comp_eq_image](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-comp-eq-image.md) | 925 | `result-track:fc65c8721fe966cbd0a0025058912a6a979836a9ab272c1cf1d90443b704605c` |
| 170 | `theorem` | [inf'_map](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-map-source-edition-2.md) | 931 | `result-track:ca8afa6cb000681a96343efb342a6ba3efe19f51ad19780a7670e6c4c7e7fc0d` |
| 171 | `lemma` | [inf'_comp_eq_map](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-comp-eq-map.md) | 937 | `result-track:89f7cb152b68d42b7cfabf94c9734226fc1986363ed4309a02f4f64cb85c49ff` |
| 172 | `theorem` | [inf'_mono](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-mono.md) | 942 | `result-track:1c9f43361da64ceb574b69e0159856d9a3d76f668f48922f187c76da76787ac5` |
| 173 | `theorem` | [sup'_eq_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-eq-sup.md) | 952 | `result-track:4c140de41956d973d3aa91e7c752d3c921587d48909178ca93f25bf1ceb72344` |
| 174 | `theorem` | [coe_sup_of_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/coe-sup-of-nonempty.md) | 955 | `result-track:1e2fd48ee8f40d92062977c96ce1afd8c9ea913592679a069f951fcd36c702d2` |
| 175 | `theorem` | [inf'_eq_inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-eq-inf.md) | 964 | `result-track:680fcc3562e33163960b00064f122004027295fdbd73506e0dc630e8a6a287a8` |
| 176 | `theorem` | [coe_inf_of_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/coe-inf-of-nonempty.md) | 967 | `result-track:a2b1eead602c5172feb003536d81326bc0dcf65e67918c30034f06a966e45e68` |
| 177 | `theorem` | [sup_apply](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-apply-source-edition-2.md) | 974 | `result-track:9c3ccdba0a5a6bc32c531624e9ab5ed5bbbaf8d83c0b9a8f4acf2c80f440ddc5` |
| 178 | `theorem` | [inf_apply](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-apply-source-edition-2.md) | 980 | `result-track:8056f2ec957c9d5fbc87568bbe885bc494a3a5f7910eba17cc2e390a26bc194c` |
| 179 | `theorem` | [sup'_apply](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-apply.md) | 986 | `result-track:6227d9f2bdba1f5a8770290a4b7b383c05b934397977f72ee422c35d6f7f3e97` |
| 180 | `theorem` | [inf'_apply](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-apply.md) | 992 | `result-track:69a63e6da368d126cbe77411e58c6ae15948bbf6a91a87ab48e63b3f2179d60e` |
| 181 | `theorem` | [toDual_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/todual-sup.md) | 998 | `result-track:476cfba1d8b0a67bc3597b10140f0116d61caf58d306e66bceb673eed8c6009a` |
| 182 | `theorem` | [toDual_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/todual-inf-source-edition-2.md) | 1003 | `result-track:8eb13b263aa5389999fd4e2637fffe0be0f9a2e02a4c7dc542fcea3fa5864475` |
| 183 | `theorem` | [ofDual_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/ofdual-sup-source-edition-2.md) | 1008 | `result-track:c7462597362d4b6b4d6ff4cd168e577bb469972f351a9acdde44b41188ec1dca` |
| 184 | `theorem` | [ofDual_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/ofdual-inf-source-edition-2.md) | 1013 | `result-track:353ae827b444d0e4fab2441ad9089b964b624589891a8acb6194a8ff08ba6892` |
| 185 | `theorem` | [sup'_inf_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-inf-distrib-left-source-edition-2.md) | 1021 | `result-track:d7f77c56ad7fe7f21a7843367f67ac6fe6af4d1a013da033295d0644b7d14643` |
| 186 | `theorem` | [sup'_inf_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-inf-distrib-right.md) | 1027 | `result-track:adc50ce0d770573fa90dd68d9878d8cc7cfff12fe5b0e9c4decced58c69bef2d` |
| 187 | `theorem` | [inf'_sup_distrib_left](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-sup-distrib-left-source-edition-2.md) | 1031 | `result-track:363728824215248e11ed6b663afd997e5cf3edd2b3147729494433d6bcf11a77` |
| 188 | `theorem` | [inf'_sup_distrib_right](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-sup-distrib-right.md) | 1034 | `result-track:215349e055cb59fefa00f393b8e9e3138143b107dc986934b85f194ea35118b9` |
| 189 | `theorem` | [comp_sup_eq_sup_comp_of_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/comp-sup-eq-sup-comp-of-nonempty.md) | 1043 | `result-track:dad9409e7c4e220ee227a166b3a439d8606bfdb010b959030b2e231af413535b` |
| 190 | `theorem` | [le_sup'_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/le-sup-iff.md) | 1049 | `result-track:10c1a5a9f3185f591d1cee8044ed2b71419f695154bb7073fdab573e1648d280` |
| 191 | `theorem` | [lt_sup'_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/lt-sup-iff-source-edition-2.md) | 1054 | `result-track:b09932074007b9cd152995d0e840500cd60b7b4415cfd7bbc96e342f9181e7e2` |
| 192 | `theorem` | [sup'_lt_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-lt-iff.md) | 1059 | `result-track:5b074428b2a0acc9f05cd872b8b004e1db46a4fa083f027dca5b47d43501167f` |
| 193 | `theorem` | [inf'_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-le-iff-source-edition-2.md) | 1064 | `result-track:e2e7ad2f300a0708ef7f8e6b1ae90f28ab13e0d813be6272595d280080dece13` |
| 194 | `theorem` | [inf'_lt_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/inf-lt-iff-source-edition-2.md) | 1068 | `result-track:e70b84306f8b524e718f6a06745cc8e6525ab30b78a5362f35ba28a372c7aa37` |
| 195 | `theorem` | [lt_inf'_iff](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/lt-inf-iff.md) | 1072 | `result-track:09a3e5f9febd551c3b0ec33c035bcc375ab160fbf4acc22a13379e48233c3342` |
| 196 | `theorem` | [exists_mem_eq_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/exists-mem-eq-sup.md) | 1075 | `result-track:66945aa001df9a98e4b1bae4d2f25e98d57f2cc06511744e3df5b2526d3978ed` |
| 197 | `theorem` | [exists_mem_eq_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/exists-mem-eq-inf-source-edition-2.md) | 1085 | `result-track:f47e8be77a162ebc91641979c22c3516f413a253341409d6bb12b4c7778c457e` |
| 198 | `theorem` | [exists_mem_eq_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/exists-mem-eq-sup-source-edition-2.md) | 1088 | `result-track:d9efa48b5c9a031e22515dedbcfebec0c1a1113b72a4aebbe9cf2d2969a081f3` |
| 199 | `theorem` | [exists_mem_eq_inf](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/exists-mem-eq-inf.md) | 1092 | `result-track:cee8c93829bafb67565569292c278de83d16bda9aed08ff4453b23a08f341d8c` |
| 200 | `theorem` | [map_finset_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/map-finset-sup.md) | 1102 | `result-track:db4b15bc6cd474dd1377ad1b071db2d548127f61d068dfda286f78fe0b222955` |
| 201 | `theorem` | [count_finset_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/count-finset-sup.md) | 1106 | `result-track:377a871e968230f263b205daa2ebabdc270052832a5357f88c7a34f11f4dfcff` |
| 202 | `theorem` | [mem_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/mem-sup-source-edition-3.md) | 1114 | `result-track:c296f244aba254b8d1f015dca8660ca40f7a06e56ccddd37846bdce8c2bfc8f1` |
| 203 | `lemma` | [mem_sup'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/mem-sup-source-edition-2.md) | 1124 | `result-track:7b047883e4ec6a4e3b9b49972be7dbb8563a33bea3c9f30323e931f7ad170082` |
| 204 | `lemma` | [mem_inf'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/mem-inf.md) | 1128 | `result-track:d9683230a671b4ebfd18efcee9485cf37570409a64e68b889a1fe81b8895314b` |
| 205 | `lemma` | [mem_sup](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/mem-sup.md) | 1131 | `result-track:40473e8fd00fd787a9b47971b4b0f0061669830b71e54001d9de2e436523a5c1` |
| 206 | `theorem` | [sup_singleton''](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-singleton-source-edition-4.md) | 1135 | `result-track:c78d4dbcfdbf749fe367ee176bb2b870f05783b0a7271c3ba078f90df092546b` |
| 207 | `theorem` | [sup_singleton'](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeFold.lean/declarations/sup-singleton.md) | 1142 | `result-track:230996e0c403fcbdc059e99877297020e435e969d23137490c0598b1d7c0c96f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b5cb38aa7b9bb04659edc3647e7ca20419ab9df08a9a3f1f82d45f74f5615a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variant56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Fold/Variant56b73ff806a255bede9e61342e911a5aed0f888237df3192dbf95d5d540c21fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
