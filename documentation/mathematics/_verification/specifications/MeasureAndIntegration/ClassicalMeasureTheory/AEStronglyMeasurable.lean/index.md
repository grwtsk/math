# Verification target: AEStrongly Measurable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa574fc0eb4c103f9c7273f5d83aec718c28500e",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa574fc0eb4c103f9c7273f5d83aec718c28500e`.

Source path: `GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AEStronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aestronglymeasurable.md) | 62 | `declaration-track:011dee3d1b987ec8285746666c29e924ea4879bba0c21e506409e6064247d7c6` |
| 2 | `def` | [AEFinStronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aefinstronglymeasurable.md) | 72 | `declaration-track:2a77cfd2d4b62093b993e33cbf23920a955aec00e67350382c718d7cf5531ecc` |
| 3 | `theorem` | [aefinStronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aefinstronglymeasurable-source-edition-2.md) | 82 | `result-track:a7ddfed747c7e6f5030c8d4a604ac3d1a86194d04729152be8271675175997b1` |
| 4 | `theorem` | [aefinStronglyMeasurable_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aefinstronglymeasurable-zero.md) | 88 | `result-track:7910768e330deaa43d715ebbe88c3ce0638e1921eff2f704289c3d23e4f5d927` |
| 5 | `theorem` | [StronglyMeasurable.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/stronglymeasurable-aestronglymeasurable.md) | 99 | `result-track:c956593ee570f077f821b5f06e38c75312098e2432ca61856ddce78eda357fe9` |
| 6 | `theorem` | [aestronglyMeasurable_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aestronglymeasurable-const.md) | 103 | `result-track:c3a952bc36edb91f9944984293b129d8e437e419f6b6ba2eec3913ff914fc20f` |
| 7 | `theorem` | [aestronglyMeasurable_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aestronglymeasurable-one.md) | 107 | `result-track:a5b674866628d741e9877d55639667d35e6c2f199cb7b1d1ecb5cd2b4a88b7ab` |
| 8 | `lemma` | [AEStronglyMeasurable.of_subsingleton_dom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aestronglymeasurable-of-subsingleton-dom.md) | 111 | `result-track:342fba6275fb2bbeea954d7dd5a9be40c83da5830753c609ced4b257f30a2fc8` |
| 9 | `lemma` | [AEStronglyMeasurable.of_subsingleton_cod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aestronglymeasurable-of-subsingleton-cod.md) | 115 | `result-track:ebbf351ebd580bab69e5bda8fbe0a83a59a023268d9022790d2c537565d01bf9` |
| 10 | `theorem` | [Subsingleton.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/subsingleton-aestronglymeasurable.md) | 119 | `result-track:3e3fb5b55ed796f5de0fcad85f957392a74453084d38df8c318ccec6e38ce22a` |
| 11 | `lemma` | [Subsingleton.aestronglyMeasurable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/subsingleton-aestronglymeasurable-source-edition-2.md) | 123 | `result-track:bb517e1439a22f91ca0be70de799d2edb63612f5144f9ee5ab088c803afb8022` |
| 12 | `theorem` | [aestronglyMeasurable_zero_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aestronglymeasurable-zero-measure.md) | 127 | `result-track:c066ef72f611c1308b1bb0ac6b8075b5b4b05b85feb72d25c43fce95221ee105` |
| 13 | `theorem` | [SimpleFunc.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/simplefunc-aestronglymeasurable.md) | 134 | `result-track:fbf4463418c049a787740fbf242134097dc61b5d93e2d8b8855178c7f8514509` |
| 14 | `lemma` | [of_discrete](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/of-discrete.md) | 140 | `result-track:aa8008e8279c55d4075481151aa17d20b300240076b80787ef5eea3051523070` |
| 15 | `lemma` | [of_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/of-finite.md) | 144 | `result-track:ed52e6af03d0374ed76b2a1b3bf3d71e7d413b7e2f94f3e98cfd5ede57e754b9` |
| 16 | `def` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mk-source-edition-2.md) | 150 | `declaration-track:b98d0c614bd05c4fcdd1090555e25e16e84a39d262e142268670f98443168b2c` |
| 17 | `lemma` | [stronglyMeasurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/stronglymeasurable-mk.md) | 154 | `result-track:edfe5a68943da71dad8590235e4debdfe8a331b62e4508b58ad5fdc60f990901` |
| 18 | `theorem` | [measurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/measurable-mk.md) | 158 | `result-track:c90091ba32794eb25611d0d88a6fb8bbfb2a14fc77a61cec32b4ed0a8377cfc5` |
| 19 | `theorem` | [ae_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/ae-eq-mk-source-edition-2.md) | 162 | `result-track:6826feada0e26066b29a792698ad7fcaaf5b76101348542351ce2617065d4675` |
| 20 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aemeasurable-source-edition-2.md) | 166 | `result-track:da8ec93619056ecb07d3ad7b1e1771136bcbbc6778cf19c649889a93c96055ee` |
| 21 | `theorem` | [congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/congr.md) | 173 | `result-track:8c27cf14f3e063e47cb105ac92ef0173b406ebcf250f518357b52259f1429a96` |
| 22 | `theorem` | [_root_.aestronglyMeasurable_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-congr.md) | 176 | `result-track:2d5311b7fb230be710a15b09a8f83eaf3a0b1d93cbe7fe85e76a8974007ee67f` |
| 23 | `theorem` | [mono_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mono-measure.md) | 180 | `result-track:7ed6f28a4c15a6b773979aac7839b3c2db2de4875f32bbcc9ac291dfd42ca754` |
| 24 | `lemma` | [mono_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mono-ac.md) | 184 | `result-track:39afc6373266f6dd400c368e4b212a43eb5f15029474e2315dcc5db918778723` |
| 25 | `theorem` | [mono_set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mono-set.md) | 187 | `result-track:cd95ff4a84faa8d5027b5aa9965ad917755546ba6cd283083d74a32f24447700` |
| 26 | `lemma` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mono.md) | 191 | `result-track:eac96142312bd89a4b840d20409e49e329e4adc3dfbbe07297571e2bb832b894` |
| 27 | `lemma` | [of_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/of-trim.md) | 194 | `result-track:f5b1012ca235f772f1f9097a9d476a7d24a926474625c559021e9d5bc5e9aff0` |
| 28 | `theorem` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/restrict.md) | 199 | `result-track:56a8e40ad0abacd51f06d50091d93d579194e75780606e903d8bcf776cac1a36` |
| 29 | `theorem` | [ae_mem_imp_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/ae-mem-imp-eq-mk.md) | 203 | `result-track:0f3192afea56ba7624c2db0566dcfdadf87b4b427596d276c8d6735420cec725` |
| 30 | `theorem` | [_root_.Continuous.comp_aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-continuous-comp-aestronglymeasurable.md) | 210 | `result-track:496e3e1c1292a42f0e42a52a49c7adefdf39a8749098a3c4096dcc35f948ad29` |
| 31 | `theorem` | [_root_.Continuous.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-continuous-aestronglymeasurable.md) | 217 | `result-track:d8fad085f711feffd28ff92032df7bb5af040f226d80088704368dfeea3c036e` |
| 32 | `theorem` | [fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/fst.md) | 223 | `result-track:a42766a9dbfef81e18eddc81b26ff4c1e96048e72fffd04c9bc3a911b8ffe77b` |
| 33 | `theorem` | [snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/snd.md) | 228 | `result-track:4d5eb7a7fe507db3b9abf5c6f80f0904a4cdca4998ef20e54c688ad8945118dd` |
| 34 | `theorem` | [prodMk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/prodmk.md) | 233 | `result-track:1152424a88cc8ff82b545e88315bbe09b3076e6fccbdde94d4be2787a41290df` |
| 35 | `theorem` | [_root_.Continuous.comp_aestronglyMeasurable₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-continuous-comp-aestronglymeasurable-source-edition-2.md) | 243 | `result-track:a662fc58d23404aa42d7407a9428fe9e41d4b4b34e9bc1e6bcf5c21acc1ea9c9` |
| 36 | `theorem` | [_root_.Measurable.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-measurable-aestronglymeasurable.md) | 252 | `result-track:93d7c88bf72ab4dc9433c2f9cefa86c71860fc95538c5e176a52a1a9317ac322` |
| 37 | `lemma` | [of_measurableSpace_le_on](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/of-measurablespace-le-on.md) | 261 | `result-track:de934d5b9715d864df66aa1b73579f74c781e3267165bbdd1f9349bdb0d0e2f6` |
| 38 | `theorem` | [mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mul.md) | 281 | `result-track:13f0292db6a05e107e7ca2652d6dadf570466c8c51962713a7e9f81fa7f97800` |
| 39 | `theorem` | [mul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mul-const.md) | 286 | `result-track:fd46380ac083c1779ba9969b940a67adc6ba40617de46480e06d739f97fd50f8` |
| 40 | `theorem` | [const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/const-mul.md) | 291 | `result-track:f1aade8ce8a08c18b48c42350951a0e792d5d159cefb95e89e43a4229d4d46de` |
| 41 | `theorem` | [inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/inv.md) | 296 | `result-track:7e6b4173f1f07894d90330c83f2331c7da0170a3438d4df9299a6c75adf8de86` |
| 42 | `theorem` | [div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/div.md) | 301 | `result-track:83d918cc16fd04d15a701aa9fb31a74d932eb302ad937041fc049293c6e9d390` |
| 43 | `theorem` | [mul_iff_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mul-iff-right.md) | 307 | `result-track:6db2e8b524dd296a3f76f666df5262b1dd2a3342b4f404eb2194091dd40288b6` |
| 44 | `theorem` | [mul_iff_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mul-iff-left.md) | 313 | `result-track:052065cbd116990c28dd1f71e7db8f46a5e5d2f6f51d9278cdd43765fbe0f944` |
| 45 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/smul.md) | 318 | `result-track:99fbb4e3cee8ff670338c0bf40a62ae8d1558a93e27cabfd5edf82626fc47e2e` |
| 46 | `theorem` | [pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/pow.md) | 324 | `result-track:96794b73bf58d55c850ba832f78222d7521597e5e5789b1ae7d834149ed42ac4` |
| 47 | `theorem` | [const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/const-smul-source-edition-3.md) | 329 | `result-track:d20d26f841b17afa6c1874caabfe8a9bb329d02bd54541dfdf5ed3624325e43e` |
| 48 | `theorem` | [const_smul'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/const-smul-source-edition-2.md) | 334 | `result-track:aa451ca6afe3a387e40465d770817e1b6881852724fa5b40f94dc4f4700bbb65` |
| 49 | `theorem` | [smul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/smul-const.md) | 339 | `result-track:eab9f902e36d524725289b429d542d16ed5a8b8533977b556fbaa65bc875c164` |
| 50 | `theorem` | [sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/sup.md) | 348 | `result-track:cd13c93468dc488c75ea32ad602ee1865edc3e46079d3c15b166162f8a078656` |
| 51 | `theorem` | [inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/inf-source-edition-2.md) | 354 | `result-track:d7efda9ffde01daf5bc33a2bb4860998f144135aa7439a0ec6471e51dfef0ecf` |
| 52 | `theorem` | [_root_.List.aestronglyMeasurable_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-list-aestronglymeasurable-prod.md) | 371 | `result-track:64600d84baf315a4a1e46ca16699452fcc4fb986b7f42a480a29943d29b33450` |
| 53 | `theorem` | [_root_.List.aestronglyMeasurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-list-aestronglymeasurable-prod-source-edition-2.md) | 381 | `result-track:e68ef93aa54102d69368b343e2fa7f470e073ce2de63872e893eb443f6b0f253` |
| 54 | `theorem` | [_root_.Multiset.aestronglyMeasurable_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-multiset-aestronglymeasurable-prod-source-edition-2.md) | 393 | `result-track:673ca930d8a475fab56c05c5e6e7797736a68567a83d57942b492e97b270346a` |
| 55 | `theorem` | [_root_.Multiset.aestronglyMeasurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-multiset-aestronglymeasurable-prod.md) | 399 | `result-track:1a6ccfc024930c9fd416cb8f77d99fe8356372ba66de379436fe3f449492d96a` |
| 56 | `theorem` | [_root_.Finset.aestronglyMeasurable_prod'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-finset-aestronglymeasurable-prod-source-edition-2.md) | 405 | `result-track:adde06ab6fc72afd01a7aece4e4ac1aa224ab9f8535f1f670a7094c433e40180` |
| 57 | `theorem` | [_root_.Finset.aestronglyMeasurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-finset-aestronglymeasurable-prod.md) | 412 | `result-track:1752a0514465c2a6eacbedb38f9159e148f3a14592e1557ad1c441b7940791a6` |
| 58 | `theorem` | [_root_.AEMeasurable.aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aemeasurable-aestronglymeasurable.md) | 425 | `result-track:9d8a158cc37b9c58ce455adf3dfeeccabb8c763ce521169cb19f891a47d9f5b8` |
| 59 | `theorem` | [_root_.aestronglyMeasurable_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-id.md) | 430 | `result-track:887e028088300b0f66123c5a2c84bed3123028e5518309b48fbac98ab3e554f5` |
| 60 | `theorem` | [_root_.aestronglyMeasurable_iff_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-iff-aemeasurable.md) | 436 | `result-track:d0d9c1faee49d188af0a541c559cabe0bb5de90e43cbea131f4826f42f416cc5` |
| 61 | `theorem` | [dist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/dist.md) | 443 | `result-track:4684d46a8d8333422f1e5a8c51a6bc61518eeff49ade44da538298c92a4a49e7` |
| 62 | `theorem` | [norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/norm.md) | 449 | `result-track:ee8a7e979c54768e59572a9941839f2384a2edbc4964aec3757ed21459b3c524` |
| 63 | `theorem` | [nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/nnnorm.md) | 454 | `result-track:b3c271edf1a03ba314de74966b3c52475736cfe3e8f2bf793cbae788eb333034` |
| 64 | `theorem` | [enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/enorm.md) | 465 | `result-track:37bc9ef3057f72180b0eb1aced6fed673d5b60592f0a3535ae292843967bb2f8` |
| 65 | `theorem` | [edist](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/edist.md) | 477 | `result-track:b851d7b50aff7ef69059ec1ea0c73da20b338f97ab201710df2b54a5708f0257` |
| 66 | `theorem` | [real_toNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/real-tonnreal.md) | 483 | `result-track:2ab3071bb6935f4ab81115f466fe292a8ffa9a7a758c17e340f485d0494b9111` |
| 67 | `theorem` | [_root_.aestronglyMeasurable_indicator_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-indicator-iff.md) | 487 | `result-track:6c4622febf09754f1050ae86c6c6ef9e40e4e84f63262c14304b32bd1976f59c` |
| 68 | `theorem` | [indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/indicator.md) | 501 | `result-track:658b1eea394afd28984d716f6250c9e9d85f9d19ff3c4d85aff929c07c550a8e` |
| 69 | `theorem` | [nullMeasurableSet_eq_fun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/nullmeasurableset-eq-fun.md) | 505 | `result-track:2a387ddd268ae8c211b992b571b44cbb3d301d376f4e4262f9dea3ae3ccb4f30` |
| 70 | `lemma` | [nullMeasurableSet_mulSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/nullmeasurableset-mulsupport.md) | 516 | `result-track:74be6f95848e4058673686f3bce1028e56a2113a95e2d7eb34d2e5702d1b142c` |
| 71 | `theorem` | [nullMeasurableSet_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/nullmeasurableset-lt.md) | 520 | `result-track:b045f3269fc36ef03459b12a73449d7967d6ba43f2c94a72c85e0308e7bc74fa` |
| 72 | `theorem` | [nullMeasurableSet_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/nullmeasurableset-le.md) | 529 | `result-track:d82ec36abe0f8862966078431f9d667a1ebf42256fe24cf9e993175afce5aaf4` |
| 73 | `theorem` | [_root_.aestronglyMeasurable_of_aestronglyMeasurable_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-of-aestronglymeasurable-trim.md) | 538 | `result-track:76bd7281656afdb0842ff98b8b9871434a7bc0ea6d3aa2a39ff96515a545299c` |
| 74 | `theorem` | [comp_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/comp-aemeasurable.md) | 543 | `result-track:bfb5f0b459064391cfb5ab467b380731c584efafdb490a2c37d01c30fd80544f` |
| 75 | `theorem` | [comp_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/comp-measurable.md) | 549 | `result-track:4c3484b6baf0aeb16bd487ab57f7d2a61f98b661c877e9fdf8726f484dd8fdd2` |
| 76 | `theorem` | [comp_quasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/comp-quasimeasurepreserving.md) | 554 | `result-track:8f9d2aa41e89c8677811c7c2f4fd98f0fdc603f236b1670a378f839045ea19bd` |
| 77 | `theorem` | [isSeparable_ae_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/isseparable-ae-range.md) | 559 | `result-track:7ec404bcc309fb08d22b545698bdc8a50b586f8cf3c31b80621500f87e8eeb9f` |
| 78 | `theorem` | [_root_.aestronglyMeasurable_iff_aemeasurable_separable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-iff-aemeasurable-separable.md) | 567 | `result-track:ab308f3bfbbb397d6d52ae11f961964b1263e1baeb05475f8f38cc55a724baa2` |
| 79 | `theorem` | [_root_.aestronglyMeasurable_iff_nullMeasurable_separable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-iff-nullmeasurable-separable.md) | 582 | `result-track:231c7d5dc877362419203f8d563d453de0d03f17f118f3699df795cd1429e539` |
| 80 | `theorem` | [_root_.MeasurableEmbedding.aestronglyMeasurable_map_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-measurableembedding-aestronglymeasurable-map-iff.md) | 590 | `result-track:5f2df8e8f98203820d3c84e7920016efe9902f1d04ab9bf3f2fe0eecc1c35a43` |
| 81 | `theorem` | [_root_.Topology.IsEmbedding.aestronglyMeasurable_comp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-topology-isembedding-aestronglymeasurable-comp-iff.md) | 599 | `result-track:dff6668a7add7993f22ac179357619bad9a1365cddf68d9d9485cb3395c31302` |
| 82 | `theorem` | [_root_.aestronglyMeasurable_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-of-tendsto-ae.md) | 621 | `result-track:a27ca2ddbffb8723338f41a8406286e0acf0990c9bac3cb8df75f8dad4de15e5` |
| 83 | `theorem` | [_root_.exists_stronglyMeasurable_limit_of_tendsto_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-exists-stronglymeasurable-limit-of-tendsto-ae.md) | 639 | `result-track:93709cb1af5f757e02638322b90944859b283747f519a7ca1ee0a384a0144f42` |
| 84 | `lemma` | [exists_stronglyMeasurable_range_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/exists-stronglymeasurable-range-subset.md) | 656 | `result-track:c75ab93d3d9b6ca5b21a1378cc80c1ab568c399de19ee71ad6aad57d1a667068` |
| 85 | `theorem` | [piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/piecewise.md) | 673 | `result-track:8771a89b03e7c46e577d703f9f83628af518a5c40e956929b9e72dcdacc870e6` |
| 86 | `theorem` | [sum_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/sum-measure.md) | 695 | `result-track:3b0aa1e89a94d79c5e3f4461028fb17bbb7a49ce64d4ef98082cf18d5b46ec74` |
| 87 | `theorem` | [_root_.aestronglyMeasurable_sum_measure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-sum-measure-iff.md) | 711 | `result-track:726ecde2ab265fa661b2ec63f40330d70e7dafb108de2b4179ee418711cc8a60` |
| 88 | `theorem` | [_root_.aestronglyMeasurable_add_measure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-add-measure-iff.md) | 717 | `result-track:330198c17f04ccc5a03a45ec906a02e5c4db4ab30e9038d375ab4b64f09e3aff` |
| 89 | `theorem` | [add_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/add-measure.md) | 723 | `result-track:525b62e87bed072701ec3d4c77991f233f588f57f684aaf4aae35dec70ffa045` |
| 90 | `theorem` | [iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/iunion.md) | 729 | `result-track:46ffc40d2ce0107d2d07d5ab8bc4a58c7620f8c5c4e1851b5e471301adeab85a` |
| 91 | `theorem` | [_root_.aestronglyMeasurable_iUnion_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-iunion-iff.md) | 735 | `result-track:46a75dd6bcd5f5bc06e40d4370331fcf7f5a41838cde9c93e5b7fe9d0a1644fc` |
| 92 | `theorem` | [_root_.aestronglyMeasurable_union_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-union-iff.md) | 742 | `result-track:53fe213beac3407fc999d1d82710d5d6f1f5e20d6238857259fe81d4a28d67ab` |
| 93 | `theorem` | [aestronglyMeasurable_uIoc_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aestronglymeasurable-uioc-iff.md) | 747 | `result-track:fbe4515f0d615caffa3f4550b239ef61860f5768fedfd6ef5c56f7f4c8b6126d` |
| 94 | `theorem` | [smul_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/smul-measure.md) | 755 | `result-track:209c20701fd7f89c8ed32b8e132a88232ef08fe9916c500537b5704371c73933` |
| 95 | `theorem` | [_root_.aestronglyMeasurable_const_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-const-smul-iff-source-edition-2.md) | 766 | `result-track:85d4a47a3dadc676579b66b534ab770e9e5aa0cb746468c1839a6461cf2f10ed` |
| 96 | `theorem` | [_root_.IsUnit.aestronglyMeasurable_const_smul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-isunit-aestronglymeasurable-const-smul-iff.md) | 770 | `result-track:89babb47dc1881e152ac2d33d19fb752ce29bd3236fc4004ae18ec04c7b75801` |
| 97 | `theorem` | [_root_.aestronglyMeasurable_const_smul_iff₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/root-aestronglymeasurable-const-smul-iff.md) | 775 | `result-track:44eeb0e7b48b74abddb9b8c3302f639d24d928b1bd038813300be4d711508676` |
| 98 | `def` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mk.md) | 797 | `declaration-track:b5dcca42d4bd24517e42db08764c2d19c00f79e23d8781e3578c030f1c770cf2` |
| 99 | `theorem` | [finStronglyMeasurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/finstronglymeasurable-mk.md) | 800 | `result-track:ca77483dc5118bee2ad2d705da2606b97aefd98795916e31310a362fcb912802` |
| 100 | `theorem` | [ae_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/ae-eq-mk.md) | 804 | `result-track:0484b6e7998b91aab5cd8780b82c59bd6a954be263ead812e8a11e0299f0673a` |
| 101 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aemeasurable.md) | 808 | `result-track:317ce5eb5777947dee240a268f63f0bfa19b9248fdb3b67e7cdd11ffcdbffbeb` |
| 102 | `theorem` | [mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/mul-source-edition-2.md) | 818 | `result-track:882ea6d2d83f9bd14e78e9fb605bd8e6a94d853c4db6ede7dc5cb8a2bcc79f2d` |
| 103 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/add.md) | 824 | `result-track:99cda6329eadfabf277da386a7c2e7f1ff93e38a1af6d192dd5f0aa467760d31` |
| 104 | `theorem` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/neg.md) | 830 | `result-track:8819b81ba954906cff000952fdf1de368e82be2cc93662492c89eaa454fbcae0` |
| 105 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/sub.md) | 835 | `result-track:54b09778e578022c005328717668a00311b1a845ab4f11239f1672c31d60f75b` |
| 106 | `theorem` | [const_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/const-smul.md) | 841 | `result-track:147fcb23194bcdc08909db0aea8bc71d7bc4806f0b9b4cef4d1b7b68fe0e5cc0` |
| 107 | `theorem` | [sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/sup-source-edition-2.md) | 853 | `result-track:e54fe01bcd3a6c793de5000619596da25f0469c1a8a74dfc9ca4748a8e764b2a` |
| 108 | `theorem` | [inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/inf.md) | 859 | `result-track:6aef3542d3f88eb6e324007d4c861535d3a4da090bc80d12987a301ab9e765c3` |
| 109 | `theorem` | [exists_set_sigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/exists-set-sigmafinite.md) | 868 | `result-track:cecbb897d9abbc21fca512ef1ce6a56477aa3116cd7fcf56bd08de2585186bdb` |
| 110 | `def` | [sigmaFiniteSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/sigmafiniteset.md) | 878 | `declaration-track:14af0b4e3650f84e2528568a146cd5fed10a366cc32a52211a5afdf042eed970` |
| 111 | `theorem` | [measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/measurableset.md) | 881 | `result-track:f49fa64aa70b576637a58b166cfdb49f25b8a283ebeb57b841bba4072d02b1f3` |
| 112 | `theorem` | [ae_eq_zero_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/ae-eq-zero-compl.md) | 885 | `result-track:6c59069116505789e468d1b67c4cf08cef67902baea053cf48927699ca3de107` |
| 113 | `instance` | [sigmaFinite_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/sigmafinite-restrict.md) | 889 | `declaration-track:27dcf5585a1618524dfd9fb5d8ea276cb99b5ae5ebca38738829a6c1f5b69daa` |
| 114 | `theorem` | [aefinStronglyMeasurable_iff_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aefinstronglymeasurable-iff-aemeasurable.md) | 902 | `result-track:3aee6b8399e7eeb75d1e65b3c5efc864750dabaa67a99638b14d83435e59a254` |
| 115 | `theorem` | [aefinStronglyMeasurable_of_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/AEStronglyMeasurable.lean/declarations/aefinstronglymeasurable-of-aemeasurable.md) | 909 | `result-track:c3b150188c5ba823958159d6a0ce87b467073ba56a9d550c940fe7505482d417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f656a5d4f5d96fed18303bc0867a8cc05db6e464c03edbdcc107b48a377a554 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/AEStronglyMeasurable/Variant7b2a0ebba2799fd50950d7d6d62c8d60eaee7602f6d83e730189ab9d4d54e3c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
