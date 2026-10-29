# Verification target: Outer Measure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d4a28d23c5879ca084d28518f2c57fd5c259673",
  "lexical_observation_count": 210,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d4a28d23c5879ca084d28518f2c57fd5c259673`.

Source path: `GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/OuterMeasure/Variant51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.PiSystem` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Countable.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/outermeasure.md) | 67 | `declaration-track:0206fd9c3c6f480199bf534cff3b052195e02f399cf750ce6058862c4e98e406` |
| 2 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instcoefun.md) | 84 | `declaration-track:e39d14ad06616faf1a2ed0559e2f87bea1b1bd4ff48ce3205b9c6bfa9528c8fc` |
| 3 | `theorem` | [empty'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/empty.md) | 93 | `result-track:98c93f4c45752fffb8316b032df06b6b8843e3092cc3b7e55bb0b8ccc0ae5310` |
| 4 | `theorem` | [mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/mono.md) | 97 | `result-track:2c4392260d6a94d0f3909da28a09a1079ed5da5522b86433c919cefd0b1fedee` |
| 5 | `theorem` | [mono_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/mono-null.md) | 101 | `result-track:b663279d0204dbe39fe74def96683bf17ec7a1c40434cdb276758ea60d871641` |
| 6 | `theorem` | [pos_of_subset_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/pos-of-subset-ne-zero.md) | 105 | `result-track:1daf889117eb880dc2161214f2da0125530904e6689c51eebd6a2639385f968e` |
| 7 | `theorem` | [iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iunion.md) | 110 | `result-track:0f60588b1a6fe05cc6f75481f848f479f85207de5e17410dffd6444f726983e7` |
| 8 | `theorem` | [iUnion_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iunion-null.md) | 115 | `result-track:54c54fd933db0b2eecd144310b10073e9535ee2547f7014cfe9551c128004330` |
| 9 | `theorem` | [iUnion_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iunion-null-iff.md) | 120 | `result-track:0dc8a51bcabb77a325812b04c985add6cc2ac36f0d1dffe6acb76953355bb6cc` |
| 10 | `theorem` | [iUnion_null_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iunion-null-iff-source-edition-2.md) | 129 | `result-track:e39e15e6cde13c819ac7e4428f002cdc41c05b8d17232c55c0d4b4cc33f55c45` |
| 11 | `theorem` | [biUnion_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/biunion-null-iff.md) | 135 | `result-track:dd7ddefd49b0877e237adfd08464039430d708a054c9d9e69594a52eb8b1d63d` |
| 12 | `theorem` | [sUnion_null_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/sunion-null-iff.md) | 141 | `result-track:d1a76b94d35cb64580f98089e664eb981f059048352fc828adfe7bea549c7b5a` |
| 13 | `theorem` | [iUnion_finset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iunion-finset.md) | 145 | `result-track:307bf2a727e7acdba69c171e9760bf4777ba305c72c1c4566d57053ad01a25c5` |
| 14 | `theorem` | [union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/union.md) | 150 | `result-track:d1716fc4710c9793b769ff8bbcb314477885ff62414d5133c4742efc6689930d` |
| 15 | `theorem` | [null_of_locally_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/null-of-locally-null.md) | 156 | `result-track:9aae032448b0e4ca801d20e60484a35f6855d08b72b7c87530f139112c74de31` |
| 16 | `theorem` | [exists_mem_forall_mem_nhds_within_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/exists-mem-forall-mem-nhds-within-pos.md) | 166 | `result-track:b3fde9d55dae3afa90c582838577e58e0018c73cf66ce684516c297c5f16047a` |
| 17 | `theorem` | [iUnion_of_tendsto_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iunion-of-tendsto-zero.md) | 175 | `result-track:14203ef5b0d9ffe057542a4f78df0043b99e594c987c09bb1d76f019d6aaf593` |
| 18 | `theorem` | [iUnion_nat_of_monotone_of_tsum_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iunion-nat-of-monotone-of-tsum-ne-top.md) | 193 | `result-track:3c335bd0cf2270efcb59afd4952939bdbd158f4ac5e8d6abf30b09358c7863c7` |
| 19 | `theorem` | [le_inter_add_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-inter-add-diff.md) | 214 | `result-track:37c1fdb40de4fb876051e38ecf7cca9cab6362823b5520041733cb8fa3cf2084` |
| 20 | `theorem` | [diff_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/diff-null.md) | 220 | `result-track:b7acc20d6ba3fabb7d3a5c861c765e58183f0a3824275f2a71e6be632e281886` |
| 21 | `theorem` | [union_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/union-null.md) | 229 | `result-track:c678c781a162c0ed10e6ede42ca1909cb197849af0a5f1bebc6779ac4f44071d` |
| 22 | `theorem` | [coe_fn_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/coe-fn-injective.md) | 233 | `result-track:7d9fb0139c8b11d10f2fa94dfc2f88bda31230b98afc11b9552836a6dd824406` |
| 23 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/ext.md) | 238 | `result-track:e640bfd547da67dccc06c3e41739c4745236bfc0ab9923479ac6ddf74fb8876d` |
| 24 | `theorem` | [ext_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/ext-nonempty.md) | 244 | `result-track:b5cc4cc4504049bef2623eb90506ddd60111a83094f6000f3ee94a15fb0f83e7` |
| 25 | `instance` | [instZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instzero.md) | 249 | `declaration-track:01d4f6feba610798fa845338cb1b1e59274abf18f45d5804ea953ced3a332832` |
| 26 | `theorem` | [coe_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/coe-zero.md) | 257 | `result-track:e45c85489749aa87c1c3b27a7a04b73107347ac860e83d40d446899983793473` |
| 27 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instinhabited.md) | 261 | `declaration-track:00a1ed89f54b2b3aaba010a927a6f76b8040835342232b3058cf771c4a45a334` |
| 28 | `instance` | [instAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instadd.md) | 265 | `declaration-track:4895f4552aba49e5eb09c64bcc3f858923b9331ecd6f9b629c5931f5aa4e88aa` |
| 29 | `theorem` | [coe_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/coe-add.md) | 279 | `result-track:34356490c5bf8147a5ae710885a123c2e06b250fffddef5655aa8d9099583bf3` |
| 30 | `theorem` | [add_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/add-apply.md) | 283 | `result-track:d770e13bf0833158fb11502c86148d37874ac7cb94400c6a96aa999ac4efa85e` |
| 31 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instsmul.md) | 293 | `declaration-track:c6bc1d232e26d7cd9df90b9b56cbf033a08a15933310f759b645643a2442dd86` |
| 32 | `theorem` | [coe_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/coe-smul.md) | 306 | `result-track:f99fc48e7be918604be989ca1087a731f2199894e30f27c6aa4e8873171da6b8` |
| 33 | `theorem` | [smul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/smul-apply.md) | 310 | `result-track:e939ed11cb29268508d80f3be57a2d8cf7f1d1044193036bc7c00f679c5253ed` |
| 34 | `instance` | [instSMulCommClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instsmulcommclass.md) | 314 | `declaration-track:e4403a951df83bb17de7639dd65e6884c2eb57181a98472054606557e2b5b580` |
| 35 | `instance` | [instIsScalarTower](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instisscalartower.md) | 318 | `declaration-track:4db6234745d1a891eb66bbda8e7ddee28669f57a8f24c99060cc5bac9ee59521` |
| 36 | `instance` | [instIsCentralScalar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instiscentralscalar.md) | 323 | `declaration-track:76beb6d1039ac4a965939d5897ae3efd4a3cc3575895e271f85790649340196d` |
| 37 | `instance` | [instMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instmulaction.md) | 330 | `declaration-track:87964acf73bbce356923dbdf2c718ac5254b3c97e4afb88b108094edae3752f5` |
| 38 | `instance` | [addCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/addcommmonoid.md) | 335 | `declaration-track:17817cb5517667d554c9255db7f0f72ab4caf79069bd4b441c5fa980e98e4d3b` |
| 39 | `def` | [coeFnAddMonoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/coefnaddmonoidhom.md) | 342 | `declaration-track:b1930bb9557f8d231af4b8a0911fa0d6de09f6453d43a1a219d04ddbc6d3eb69` |
| 40 | `instance` | [instDistribMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instdistribmulaction.md) | 348 | `declaration-track:8b3e9c7e6bc0083c8109d1d5fdce05073c2f9be2cb4589d52a184fa0cfe2d59d` |
| 41 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instmodule.md) | 353 | `declaration-track:fed44f4eba36e50360ae9c6aa7772f8809c51b0e6c8930c89e0695643fff123d` |
| 42 | `instance` | [instBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instbot.md) | 358 | `declaration-track:01c28f13af67dad590bddddea7ed9dbda1b67259490efabe96e2dce601e70462` |
| 43 | `theorem` | [coe_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/coe-bot.md) | 363 | `result-track:16020013152675bd7c74325d5789206f3169058e42b3cfedaa2e8b60533da59e` |
| 44 | `instance` | [instPartialOrder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instpartialorder.md) | 367 | `declaration-track:47f36eef8c1d1326f45a419e7b77b5654bbf3697e70aff6ec7dad00d23f856f3` |
| 45 | `instance` | [OuterMeasure.orderBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/outermeasure-orderbot.md) | 374 | `declaration-track:92d35540dde2421900226ef4a926b76e506e9d7e1f44beb51cc0caa5f80aeb93` |
| 46 | `theorem` | [univ_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/univ-eq-zero-iff.md) | 379 | `result-track:3b6c1b9f938f4c341994dc5c68693a0b466b773fb9d844c0483c76bac75713c6` |
| 47 | `instance` | [instSupSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instsupset.md) | 385 | `declaration-track:3c32f6a7416cfb524575c2fb11c00cd68648548a51fecee41e88564363a89da4` |
| 48 | `instance` | [instCompleteLattice](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instcompletelattice.md) | 399 | `declaration-track:fda6fbe5eced792080632acfedec1862cf783efc947e796dd58f5973eae666c3` |
| 49 | `theorem` | [sSup_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/ssup-apply.md) | 406 | `result-track:bf153d20583e34436eb671f3d19e138594e2a695f47acd7573ad546e99b8ca8d` |
| 50 | `theorem` | [iSup_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/isup-apply.md) | 412 | `result-track:57f6b4f7603ada497e3c4a788bfa29dae3b047f698600b0cea9719703cad26cc` |
| 51 | `theorem` | [coe_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/coe-isup.md) | 417 | `result-track:ac08eb048b0d9b475d7be23bab34730b36be6bb795f45e0b9aed0f89e5770fef` |
| 52 | `theorem` | [sup_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/sup-apply.md) | 422 | `result-track:91b754b147af02e7a1990ac2e62ef29f2eb6ae3a96af2c70e59dc7a71687dbe5` |
| 53 | `theorem` | [smul_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/smul-isup.md) | 426 | `result-track:c924e8e47ce3b7306d6b5279308b39d0ac62a684c2717e09f10efd3967719692` |
| 54 | `theorem` | [mono''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/mono-source-edition-2.md) | 434 | `result-track:de6735ab75ad6f6c2d947b0453ae039780dfce16dbfc625e2b0aa4f4dada5d0f` |
| 55 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map.md) | 440 | `declaration-track:03ef24442261806c3facaf90f887c3e96720e43eecbd1d429c022a60cc6b3c04` |
| 56 | `theorem` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-apply.md) | 451 | `result-track:bb096e3a4e22e7f04b1a2c43301118e949394b8f668ba11f3a3e4fbfba2f9b08` |
| 57 | `theorem` | [map_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-id.md) | 456 | `result-track:b077c1f8caf3a56a91d43bb3f169f4b16e9f4d2edb809fc71c84bb3ec85708b2` |
| 58 | `theorem` | [map_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-map.md) | 461 | `result-track:e4343491f96d2dceefd41e140c9f28e0bd6c5e769122e3d19fe440294748184f` |
| 59 | `theorem` | [map_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-mono.md) | 467 | `result-track:a04fcf2d4e96f1fc596e1bed2a56003c70c71b0ef82b5e5c254839b1d2df96f8` |
| 60 | `theorem` | [map_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-sup.md) | 471 | `result-track:75952172c9bf6dc8564a9095f0f085673cf594360009ad84f3016b2278b1e21a` |
| 61 | `theorem` | [map_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-isup.md) | 476 | `result-track:275a7122e5edbd13ef10932eeffacff50431e860e5e4327db883e26f05883296` |
| 62 | `instance` | [instFunctor](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instfunctor.md) | 480 | `declaration-track:e4dde29d0d433c501b44e01b1a758c0aabb4663245b5c5fce101e8cdfb144fa2` |
| 63 | `instance` | [instLawfulFunctor](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/instlawfulfunctor.md) | 483 | `declaration-track:13bd03f953fdef4d1b1a78879f1ca522beecb8e1f19385c50e12b97d5ee13e03` |
| 64 | `def` | [dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/dirac.md) | 487 | `declaration-track:432abc7b3f6bb00f7dc1af51b82c0a0b9912510cece61f15414a7c08e95331da` |
| 65 | `theorem` | [dirac_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/dirac-apply.md) | 503 | `result-track:f09a491d64ad3ebc9b8c451d502d458f0adef796080a37026b09c5ccc43cc21b` |
| 66 | `def` | [sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/sum.md) | 508 | `declaration-track:fae838831132bd223dcb9ec0a85b4b933678a7a4c2b1596dd0c172a6bbcf484e` |
| 67 | `theorem` | [sum_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/sum-apply.md) | 517 | `result-track:5021972a9d90a31f1b376b6f5b8d9d80506f05aa2ed438b3efdace2fea2bbe1f` |
| 68 | `theorem` | [smul_dirac_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/smul-dirac-apply.md) | 521 | `result-track:f376b4a4cfbcac5112af2a8791674516e9d1cffc34a9a235e79596a4daa31288` |
| 69 | `def` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/comap.md) | 527 | `declaration-track:5c3b199baf6f224eaf50f7bda19ffe62b895f92e8bcde7048144ffaf6da89d64` |
| 70 | `theorem` | [comap_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/comap-apply.md) | 541 | `result-track:8f398fa58cd59d806d05d93fb1705155682d444a5b3af15fa779bef2138723f9` |
| 71 | `theorem` | [comap_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/comap-mono.md) | 546 | `result-track:1df919d8cfa6c941d602d6e2414097514cf11858f5f9ebacb4e3159dc59405ae` |
| 72 | `theorem` | [comap_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/comap-isup.md) | 550 | `result-track:aa604dbc231f05f9942890d3f86865087d283de7f8e01a8b8e7c2530636363ac` |
| 73 | `def` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict.md) | 556 | `declaration-track:1208c66cf02bed03b2d1e7e0c47983904c08787d98d007a67fa20bde14783f9a` |
| 74 | `theorem` | [restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-apply.md) | 561 | `result-track:9a15eb1be033e625d56fc84f33a3efa8113ba5f34ab2528913c5017248ee4ed4` |
| 75 | `theorem` | [restrict_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-mono.md) | 566 | `result-track:f13192bad0458704713c77ba8f3ab288051391457405d469df5777216ac7e219` |
| 76 | `theorem` | [restrict_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-univ.md) | 573 | `result-track:0f435c1d16455553d627f326c89eec7ee1875d527e26cec683cb6f194310918f` |
| 77 | `theorem` | [restrict_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-empty.md) | 578 | `result-track:0f901d83418b74fa64eff52cea8cd9de8aa0ff269e250e7e07c35861949a3d8f` |
| 78 | `theorem` | [restrict_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-isup.md) | 583 | `result-track:0da9057f2a26c7f56b3f15b347ff0a0675eab697fc62b2ad48cf995ffde0b9ea` |
| 79 | `theorem` | [map_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-comap.md) | 587 | `result-track:124e1c7b0b9bc9fb0eae32e0963ed5026fc9c5dd6aad35f8286f9a6f3326a600` |
| 80 | `theorem` | [map_comap_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-comap-le.md) | 591 | `result-track:20542aad09f0844f3a85dc0e5c838fa02cb1a49976993fe3776b23dcd988cb3b` |
| 81 | `theorem` | [restrict_le_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-le-self.md) | 595 | `result-track:f35ca403ef040e7078cd5db4f37310053504e28abe37fc42bcf53428208739e5` |
| 82 | `theorem` | [map_le_restrict_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-le-restrict-range.md) | 600 | `result-track:190dc49884d266366002cc722f0bd87ab86347461d0612da1ab2bf487c49104f` |
| 83 | `theorem` | [map_comap_of_surjective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-comap-of-surjective.md) | 605 | `result-track:61dfd7874d1db7a002f1fbaa54361ff6bf44ef072296c4163d3bc3cdfa670e32` |
| 84 | `theorem` | [le_comap_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-comap-map.md) | 610 | `result-track:59929ef6a57986996139a1f5f3e664ffa39ed3cfecc6e648d0c4854b0bb03bf6` |
| 85 | `theorem` | [comap_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/comap-map.md) | 614 | `result-track:5896f58d306c7dc64764a04ea880dd0967c6215f69d608bc90c257035dbf347a` |
| 86 | `theorem` | [top_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/top-apply.md) | 619 | `result-track:501d91670c4edc7b992aec6372a14245a2cc19b189fbd593654b2cdbf8911fdf` |
| 87 | `theorem` | [top_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/top-apply-source-edition-2.md) | 624 | `result-track:cd3ebee30ff5c81227a9ff6fd9e50c0730de3a6f839cb2b5d49df9d107680492` |
| 88 | `theorem` | [comap_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/comap-top.md) | 629 | `result-track:d1412a7d6c5732c083fdcef9f809651bad7187292a081989f3d8df6d32e1f637` |
| 89 | `theorem` | [map_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-top.md) | 633 | `result-track:85ad7a118879e27b16108c178ff33e895607c6a2e7d0d1096180a4dba2646742` |
| 90 | `theorem` | [map_top_of_surjective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-top-of-surjective.md) | 640 | `result-track:1811a78c1c50da23fb3a340620c03f336a0ac564163bf505a5bbe7e49266709d` |
| 91 | `def` | [ofFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/offunction.md) | 654 | `declaration-track:e778a0c48fa0edf488a5452de457c8d8586050cb44479adcbec031efa2e6c20a` |
| 92 | `theorem` | [ofFunction_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/offunction-apply.md) | 691 | `result-track:87fd3f6cfb00190f2d601cafa631c6411743668510c21a09df062a4216b85aec` |
| 93 | `theorem` | [ofFunction_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/offunction-le.md) | 698 | `result-track:91478d0e35154e4ee669009f086407e99fc774fc7705f396bcce37f257e4dac1` |
| 94 | `theorem` | [ofFunction_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/offunction-eq.md) | 705 | `result-track:949670b5224cd31f34eaeb0d74f41f5713b9b8926d4afacff6cb3aa53e63da06` |
| 95 | `theorem` | [le_ofFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-offunction.md) | 712 | `result-track:655d65ad12d3aa9c3cf962fff926877da76903b093ccc183df1192bff450c5a8` |
| 96 | `theorem` | [isGreatest_ofFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/isgreatest-offunction.md) | 720 | `result-track:e74951c3ad327aa46788c8ad95443252edb5a7234467b241e11d0a97d36a3039` |
| 97 | `theorem` | [ofFunction_eq_sSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/offunction-eq-ssup.md) | 725 | `result-track:4904e28113d3d8667bf5cdfaf48861118dda30b3a0998b5a23272bdecfcf13cc` |
| 98 | `theorem` | [ofFunction_union_of_top_of_nonempty_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/offunction-union-of-top-of-nonempty-inter.md) | 735 | `result-track:d476928b1b79c476df15b1591582e666367f1b350b2cb42981ff3deb3a7f82bb` |
| 99 | `theorem` | [comap_ofFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/comap-offunction.md) | 769 | `result-track:61c1fe292dcbe8d83cbf6e037d48a6b034378f7f3c47044bbd4fab2322530955` |
| 100 | `theorem` | [map_ofFunction_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-offunction-le.md) | 784 | `result-track:ee358410d9101a1840553e1c9ee9398f4a2ebef84a96fedf5e595379403e3c5e` |
| 101 | `theorem` | [map_ofFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-offunction.md) | 792 | `result-track:6e005319d9a4fd180375fa67b8c0500c7bb58aab780f0aac64961bf875b62fd9` |
| 102 | `theorem` | [restrict_ofFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-offunction.md) | 805 | `result-track:e2216205b40e04871c15f27bb538097758bd78ec89cb9467afa659059551b56b` |
| 103 | `theorem` | [smul_ofFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/smul-offunction.md) | 814 | `result-track:ce4e10fdd0cab746f3d015682be03f18db4507dbf357d6cd78ea97a882f96ee8` |
| 104 | `def` | [boundedBy](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby.md) | 832 | `declaration-track:254d34b97b9a025cc1b49c87171058007b14742d25eefb3f9fa95a4a03af5cd1` |
| 105 | `theorem` | [boundedBy_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby-le.md) | 838 | `result-track:15d06402baebdd16c9e899e2aa3714e8045d1fdbc83c87c5a38b70eb0f5455f6` |
| 106 | `theorem` | [boundedBy_eq_ofFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby-eq-offunction.md) | 842 | `result-track:d8f6900e9e4fa733d069ed2971b0ccac70f1a8179061301926b93734f0ccf0cf` |
| 107 | `theorem` | [boundedBy_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby-apply.md) | 850 | `result-track:da0c95dc9db4c29e5a893a50d905469a0b8f1020bb4dd43f4a7d1eeaeb7a1aac` |
| 108 | `theorem` | [boundedBy_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby-eq.md) | 856 | `result-track:78524ed995d005af6cd32d851fe7e7f978512d329b2384b60490fe1b10e93ebc` |
| 109 | `theorem` | [boundedBy_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby-eq-self.md) | 862 | `result-track:0b4d9411ace55106ecd3b5ce2bd58648c31164e7eb9b158ad0d671ee545703c1` |
| 110 | `theorem` | [le_boundedBy](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-boundedby.md) | 866 | `result-track:1f29d815cf3a8be1ebda81a3c35548fad66949872d11f755b45ee41fda3cb78b` |
| 111 | `theorem` | [le_boundedBy'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-boundedby-source-edition-2.md) | 871 | `result-track:dc93a3828ea4404ba983d11160c7e1b5f7975f889c4e13e9b1dcdc4a594a37a1` |
| 112 | `theorem` | [boundedBy_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby-top.md) | 879 | `result-track:2b06aa5898b586973967d18620a198335448f4d7af1afbae43129cefe13cbaed` |
| 113 | `theorem` | [boundedBy_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby-zero.md) | 887 | `result-track:710970dfd150f3af71ea6283e095c09e520666b59fa73e116341a1143715266b` |
| 114 | `theorem` | [smul_boundedBy](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/smul-boundedby.md) | 892 | `result-track:918fb3f74465a46fb37b48b8515ecaf7a2e623c82e7122e5a0c9cd2ac4dbbd9d` |
| 115 | `theorem` | [comap_boundedBy](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/comap-boundedby.md) | 898 | `result-track:1d8967c93b49fc3e79f71f8bdcda79fad946ff1255b7d460d4d8f71e05db6e4e` |
| 116 | `theorem` | [boundedBy_union_of_top_of_nonempty_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby-union-of-top-of-nonempty-inter.md) | 916 | `result-track:2d1718e4f6007ba8d777ef1a47c17322fc592a7494ae25cb754f7ccf6cdd845c` |
| 117 | `def` | [IsCaratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory.md) | 937 | `declaration-track:0a67e78b2ebbba51d2975119341d5002b369d35ca0e907d9d23dc48d77724ab0` |
| 118 | `theorem` | [isCaratheodory_iff_le'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-iff-le.md) | 941 | `result-track:78583aeb6325472ec2a7e2640277e83a9c2971c3253e11fa9d9330cd3f419ae0` |
| 119 | `theorem` | [isCaratheodory_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-empty.md) | 947 | `result-track:d30e26b0d6dc15bbfc5aaef4cac4d10aa0c398bcf8c376677b71d82d3c4a1315` |
| 120 | `theorem` | [isCaratheodory_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-compl.md) | 950 | `result-track:79327b6f7f6fdb38cd8a4b1a4e2b66e0a025f3ae045f008010c0a6f359a0d6d2` |
| 121 | `theorem` | [isCaratheodory_compl_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-compl-iff.md) | 955 | `result-track:13629c1d9f02893173811b446df414d2f66747425eb858fe819674bfacc8d429` |
| 122 | `theorem` | [isCaratheodory_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-union.md) | 959 | `result-track:181c09611a847af336b63e616b576395f0f645325ca603b552df79eab10b1586` |
| 123 | `theorem` | [measure_inter_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/measure-inter-union.md) | 967 | `result-track:bf9f9b99ba819e25787d10eb7ec19e2e7e1a11a1e0eec224a5fac64a5a0f82ae` |
| 124 | `theorem` | [isCaratheodory_iUnion_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-iunion-lt.md) | 972 | `result-track:0a40945f01a7279f7a1ebdb477b92d0436b46c8565cf687931df37759fc8c81b` |
| 125 | `theorem` | [isCaratheodory_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-inter.md) | 982 | `result-track:483a104c010df9a27af90d4cb5bb95cd60ca11914f16f52e23b6e05e9f700eaf` |
| 126 | `theorem` | [isCaratheodory_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-sum.md) | 988 | `result-track:8def6bfc485d47c30878ac6f12d908792497bfdb8f3e48f870a2c0a8605a4b3a` |
| 127 | `theorem` | [isCaratheodory_iUnion_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-iunion-nat.md) | 999 | `result-track:53800de7cc58a1105266ea9b6d192b30e27b0e0eeba8c87300232e9247b68cd8` |
| 128 | `theorem` | [f_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/f-iunion.md) | 1016 | `result-track:e97228a0d5eb545262c4760207c2bd9f5981be61fcfc52cb1da009d9e9b0bd10` |
| 129 | `def` | [caratheodoryDynkin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/caratheodorydynkin.md) | 1027 | `declaration-track:d526eb59331e46e43d91525a662a5411aed1068ad07ffe027a6e5f416eefad57` |
| 130 | `def` | [caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/caratheodory.md) | 1036 | `declaration-track:179b6df8171c1a75c06ea20d055a102f656bac81b82dc55a887fcd27b766d814` |
| 131 | `theorem` | [isCaratheodory_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-iff.md) | 1042 | `result-track:2f8bc9cde6cc0258ba4b21b4b97f216145a0fea68d42cb249e18b96148c98ab1` |
| 132 | `theorem` | [isCaratheodory_iff_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iscaratheodory-iff-le-source-edition-2.md) | 1047 | `result-track:ccf1106b56f192557277291b54261a8f3e955394aafaaa0416d136b5543f6718` |
| 133 | `theorem` | [iUnion_eq_of_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iunion-eq-of-caratheodory.md) | 1052 | `result-track:9b191d12bd6e8c86e620a60ae345153d31092b8e23b44909ca8e309f38150891` |
| 134 | `theorem` | [ofFunction_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/offunction-caratheodory.md) | 1062 | `result-track:1c20f350f08582018d82a0dd429846fd29e8f884fbd904615993fb531d4ba375` |
| 135 | `theorem` | [boundedBy_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/boundedby-caratheodory.md) | 1080 | `result-track:0bede6d36f46fd3f85d22ce526fc4041a254b1d31316a30e11c1a63fbf5ab87d` |
| 136 | `theorem` | [zero_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/zero-caratheodory.md) | 1091 | `result-track:d6fa13eca567f900ad0ea088e0396cd1c46af0974ee9da171791b5007bc746ce` |
| 137 | `theorem` | [top_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/top-caratheodory.md) | 1095 | `result-track:8d671be0ad55f1186955c07ef55335f467cff8a5291cfab5dd0dfba4cdc9be15` |
| 138 | `theorem` | [le_add_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-add-caratheodory.md) | 1102 | `result-track:f60b8d834f70dcfd805c89e10a7931a52d4df81d29986c027912c6792b4a889a` |
| 139 | `theorem` | [le_sum_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-sum-caratheodory.md) | 1107 | `result-track:46abfb44a9cfb9beb53169d22d8989ac122bb88febf8195594f6264159be9707` |
| 140 | `theorem` | [le_smul_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-smul-caratheodory.md) | 1112 | `result-track:963af6714ba4f6059987a5e7db17a4d6d9fb0e5a183e58eed085f1c09896b29c` |
| 141 | `theorem` | [dirac_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/dirac-caratheodory.md) | 1120 | `result-track:fa4f4c5bf702d45af6b55276fd998461cd8f0f3424be81fd2e6b7f00b2c21142` |
| 142 | `def` | [sInfGen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/sinfgen.md) | 1132 | `declaration-track:905f0ab8e9bcd42ff4f283c34be032180e2cefc48bf5afd634a7978bab2f755d` |
| 143 | `theorem` | [sInfGen_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/sinfgen-def.md) | 1136 | `result-track:3a0ccadfd2b43271c34b56170111c0ec34c34c13f7023e60613136ec42a55f8b` |
| 144 | `theorem` | [sInf_eq_boundedBy_sInfGen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/sinf-eq-boundedby-sinfgen.md) | 1141 | `result-track:0b4a59baa43e6db6d59a8078a7235cf1c14e84da858d66426dcd4a4f12482c9e` |
| 145 | `theorem` | [iSup_sInfGen_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/isup-sinfgen-nonempty.md) | 1151 | `result-track:87c6f8eecbc5bb980b5db132ce87a45cf15d773cd1daa29faf24d94bbfef0dd4` |
| 146 | `theorem` | [sInf_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/sinf-apply.md) | 1165 | `result-track:258737e94a3f27b54f5b6c34228bae2e02b23b6ab187c5dfa460b5ed285f31a1` |
| 147 | `theorem` | [sInf_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/sinf-apply-source-edition-2.md) | 1174 | `result-track:ec7feea0d80020f80936eeb98f6f210de1a2322278d40144337a19b459c6d4e1` |
| 148 | `theorem` | [iInf_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iinf-apply-source-edition-2.md) | 1183 | `result-track:ecc66aa3d98ec741e470eac96f6301fb844d1985e23ef3d989bbfcb299a02b03` |
| 149 | `theorem` | [iInf_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/iinf-apply.md) | 1192 | `result-track:b3542db050a64416cef22f2f9d9040caf6421914fc0375fb9d0af4930a55bab4` |
| 150 | `theorem` | [biInf_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/biinf-apply.md) | 1201 | `result-track:7a930838a29771e518d55354b0545de8c5f5fcf2cb951372855e114949091fd4` |
| 151 | `theorem` | [biInf_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/biinf-apply-source-edition-2.md) | 1210 | `result-track:bd6cb9d772719995d044407285a0b7277033fb9628eb7d04c2f1cac66b456c55` |
| 152 | `theorem` | [map_iInf_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-iinf-le.md) | 1215 | `result-track:0a57be830b578228cf4eaded554980e335584e24963166b227cffca91b6316f7` |
| 153 | `theorem` | [comap_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/comap-iinf.md) | 1220 | `result-track:f0365eba9a2a9f59e3c32317f8dd73455e1210525d795337a228bce1dae2f65b` |
| 154 | `theorem` | [map_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-iinf.md) | 1230 | `result-track:22534a400a26d4b2dcc9d8f5067ddb1db231c5279bf9ec813ed11db6e09fe675` |
| 155 | `theorem` | [map_iInf_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-iinf-comap.md) | 1236 | `result-track:c027e9f64f9c47a0587df7a58c48306cf068e033b24d4db5ea16ef52bb51e9c8` |
| 156 | `theorem` | [map_biInf_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/map-biinf-comap.md) | 1249 | `result-track:cc57584a978801a906bda06771b84f83baa65b2ca80d8a2df802b498628424d8` |
| 157 | `theorem` | [restrict_iInf_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-iinf-restrict.md) | 1256 | `result-track:43812b3bc160b2a51d0a11658a87cf8b79068d2cae6164ee920fdf9f7e4ebec6` |
| 158 | `theorem` | [restrict_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-iinf.md) | 1266 | `result-track:fd9d9c874e4258db6eb3d26e846f7b8af8f580c9c6172fcf7b5db0151c4f568c` |
| 159 | `theorem` | [restrict_biInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-biinf.md) | 1271 | `result-track:bf30747186613867e3ced53f365efa17123a22e7decf31b6508d063f71052d00` |
| 160 | `theorem` | [restrict_sInf_eq_sInf_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-sinf-eq-sinf-restrict.md) | 1280 | `result-track:907917c51ed007d1361784c832d60c4fb6e88c2eee6a1cadde50f5405ead5c25` |
| 161 | `def` | [extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend.md) | 1311 | `declaration-track:93cc752f0a52577243ab56300174d576dee967a2d4c29367d1d7d656fb14f69e` |
| 162 | `theorem` | [extend_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-eq.md) | 1315 | `result-track:f50f2167a810862dfc62128b629b6f5b7a3af0490ac382599651b2e9fa9ad8a3` |
| 163 | `theorem` | [extend_eq_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-eq-top.md) | 1318 | `result-track:5749b325ab1024fdf966273ddee5892855863a03485d8693b4d824084b75d6b8` |
| 164 | `theorem` | [smul_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/smul-extend.md) | 1321 | `result-track:be953cc1d98015dc1ea4f73dda497f57adda1c1a30a6f61b22b6b9bda4401718` |
| 165 | `theorem` | [le_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-extend.md) | 1331 | `result-track:640ae4d2bc650b85302d5298155e05cbdaca69954e8d861e7106879283a9ba6a` |
| 166 | `theorem` | [extend_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-congr.md) | 1338 | `result-track:e6762f6fcf0a718464c5f470c0cbd134cc7cbcad12855719c302462c768df549` |
| 167 | `theorem` | [extend_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-top.md) | 1345 | `result-track:e80bd815ad61fb61d7cca98029d157babf0adbf6ab6ae00ec6d5054a96bed925` |
| 168 | `theorem` | [extend_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-empty.md) | 1370 | `result-track:444900995442de78dd2f3081de0258c21f9ba64cf3d43de4c93bb3612f4f84bb` |
| 169 | `theorem` | [extend_iUnion_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-iunion-nat.md) | 1374 | `result-track:0254c56fc60e0bdf6335b569bb19edcc89a9771767968dacb24cafd1d7e0411d` |
| 170 | `theorem` | [extend_iUnion_le_tsum_nat'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-iunion-le-tsum-nat.md) | 1385 | `result-track:54888a8267047bee0b67dec6dd0588c01b8f34136c3e747ea70e7c728868205d` |
| 171 | `theorem` | [extend_mono'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-mono-source-edition-2.md) | 1400 | `result-track:e86c7ab60cbb817deebdf6254e84b3592b1d21710e7caa5d6feb2313698ad286` |
| 172 | `theorem` | [extend_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-iunion.md) | 1411 | `result-track:d26a59f6776d88394544efb65173859b670af9ef31105c5eace6ae11c8111a4f` |
| 173 | `theorem` | [extend_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-union.md) | 1421 | `result-track:759a340b07899dc3898de03cd09663ce2e96cb0e5836decff5d09e0ab1779ace` |
| 174 | `def` | [inducedOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure.md) | 1435 | `declaration-track:3f52359c14b438ae175404a7ebe65dafda45797cd93a87e585d032d7b61a9dc6` |
| 175 | `theorem` | [le_inducedOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-inducedoutermeasure.md) | 1441 | `result-track:cee21333e61f672678b5edee9027e023e128a3773e663520b9e5c9fb08da3954` |
| 176 | `theorem` | [inducedOuterMeasure_union_of_false_of_nonempty_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure-union-of-false-of-nonempty-inter.md) | 1451 | `result-track:206531d3f84e964bba1fa9a47c91518079334f6934f3209795c454f2657fc9b0` |
| 177 | `theorem` | [inducedOuterMeasure_eq_extend'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure-eq-extend.md) | 1458 | `result-track:93b18a280fda906d96fe67d1ccc620d083dcf7fb816a1138d07021afd7b1bf85` |
| 178 | `theorem` | [inducedOuterMeasure_eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure-eq.md) | 1463 | `result-track:8f61a1c8b911e702647f16c836b80c8d9f0b9d844c5bf2725b411e1b29096d74` |
| 179 | `theorem` | [inducedOuterMeasure_eq_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure-eq-iinf.md) | 1467 | `result-track:d6b4b9b887ac4596715107833a5148e8a4d2a67e19ca6ed6af4385bccda5c96b` |
| 180 | `theorem` | [inducedOuterMeasure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure-preimage.md) | 1484 | `result-track:75749dddc2e15a616baa85aeeb1dce125bf5d553e118de05a448881ba8b0875b` |
| 181 | `theorem` | [inducedOuterMeasure_exists_set](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure-exists-set.md) | 1494 | `result-track:7102442d5a9d7fd196e52f0594a07bbb8ae6d2f41f725282e48bfa5915f17fb8` |
| 182 | `theorem` | [inducedOuterMeasure_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure-caratheodory.md) | 1512 | `result-track:7351f9a4d45f34ccc82b784c4e5503fbc428e0b56bcb6bb779c087105d667eab` |
| 183 | `theorem` | [extend_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-mono.md) | 1555 | `result-track:371491d6dadf812cc53ab28c31f825d91f450e9f69f259660d804388a6cc7ba7` |
| 184 | `theorem` | [extend_iUnion_le_tsum_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/extend-iunion-le-tsum-nat-source-edition-2.md) | 1566 | `result-track:ef0077dc72b3f316abca1f9593a09e905e21ff67e49c5dcef2fe01f0b5ee7e01` |
| 185 | `theorem` | [inducedOuterMeasure_eq_extend](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure-eq-extend-source-edition-2.md) | 1576 | `result-track:bed52185c34ac7c1116c66c53f21059a8629dd454704992c4dda4781cb8fb84f` |
| 186 | `theorem` | [inducedOuterMeasure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/inducedoutermeasure-eq-source-edition-2.md) | 1581 | `result-track:e16cf1970d916605b091d8928085c1c18931b1a248b288cafacf17cb6aac2228` |
| 187 | `def` | [trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim.md) | 1594 | `declaration-track:ef652e7db248625be65405f0a29f0508ed208e78984e327596655761c4879dfc` |
| 188 | `theorem` | [le_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-trim.md) | 1598 | `result-track:65b4bf5f18664f961cd7ffb96a0b5733115e2f0d7e672be0dba72d8a2e45a1c2` |
| 189 | `theorem` | [trim_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-eq.md) | 1607 | `result-track:5c8083ef0a231def60aae706bae9a36779d6bdf4c773819514091470815ce8a5` |
| 190 | `theorem` | [trim_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-congr.md) | 1612 | `result-track:1af8efd482038c313679fa8bc7c8a7343cea3aea0a751ebafcd146facd029413` |
| 191 | `theorem` | [trim_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-mono.md) | 1621 | `result-track:4920f1e2de61d97bacd8420af8964ddeb27804ee89d5c01813a52684834ad9c4` |
| 192 | `theorem` | [le_trim_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/le-trim-iff.md) | 1625 | `result-track:8258ec5206678d4eb1ff29a3ba4667e3f7215b750af957c374c4c200d71d80ca` |
| 193 | `theorem` | [trim_le_trim_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-le-trim-iff.md) | 1637 | `result-track:c96fba103ab4190863aa0f12c1b9d471d03c6e6aed3d05f4643029331cdfffca` |
| 194 | `theorem` | [trim_eq_trim_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-eq-trim-iff.md) | 1642 | `result-track:cfa84b7cc1036d277a6f6b1b18255d10dab128757a07c84e42eb2ab0ef5f0f8b` |
| 195 | `theorem` | [trim_eq_iInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-eq-iinf-source-edition-2.md) | 1647 | `result-track:f7e6b599aecefc03618fa2fc4cdb6c6524db88bdc2a6d65671196df017f7f282` |
| 196 | `theorem` | [trim_eq_iInf'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-eq-iinf.md) | 1654 | `result-track:ea559345c1a1856f3b2aae8b9e99ae58bfb2a292a87a3090c09971af7776002b` |
| 197 | `theorem` | [trim_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-trim.md) | 1658 | `result-track:e193478fc1f5189b148970ad46952bb7f4666312cc97b64f053503381180ff0d` |
| 198 | `theorem` | [trim_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-top.md) | 1663 | `result-track:bbc9f7748828903268e4735970e0b44b9db18fffa78e84c1c868470b1b1554fc` |
| 199 | `theorem` | [trim_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-zero.md) | 1668 | `result-track:722204b93ec4d0bc3f1c77067d5b71e7c5704b8e23ef83ded005abefecb6a5e0` |
| 200 | `theorem` | [trim_sum_ge](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-sum-ge.md) | 1675 | `result-track:7417534b4d4632304e71d15f6ef1e2274384f758865da358029cae6f72335d90` |
| 201 | `theorem` | [exists_measurable_superset_eq_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/exists-measurable-superset-eq-trim.md) | 1682 | `result-track:104ffdce06e10ee28ed767381a2df8020ea47d1c2b1af038d2bdc1c18592d101` |
| 202 | `theorem` | [exists_measurable_superset_of_trim_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/exists-measurable-superset-of-trim-eq-zero.md) | 1710 | `result-track:61d5f4144ecd7009669d78310b2a08766d25d9f54ea8db453aa4f7739b1af786` |
| 203 | `theorem` | [exists_measurable_superset_forall_eq_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/exists-measurable-superset-forall-eq-trim.md) | 1718 | `result-track:df16f8906de052e26ec4fd70db4a5d1cd2bcccf26adb155ff9ce3cd76516f06c` |
| 204 | `theorem` | [trim_binop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-binop.md) | 1729 | `result-track:9e23f2bf1261c1c2e8957a8f5abfeab1d526050163892c6f96bc95f9bc3c2b79` |
| 205 | `theorem` | [trim_op](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-op.md) | 1737 | `result-track:88e2620664105f230bd6fcccd72bd8c71ee1d78ebf1274cf2a3c1bcd1271bbac` |
| 206 | `theorem` | [trim_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-add.md) | 1743 | `result-track:cc7868984d3ce4e85c6e271c8810a4de32075540ee25296365ecae707ffb4fda` |
| 207 | `theorem` | [trim_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-smul.md) | 1748 | `result-track:010750315c3ad56e72c84d35f0636465e5a6202255190d7850fd98e748b8687f` |
| 208 | `theorem` | [trim_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-sup.md) | 1754 | `result-track:4e4c4efcc1809fd521010c5be0807cffff5c3f525f0737920048283de8402ee7` |
| 209 | `theorem` | [trim_iSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/trim-isup.md) | 1760 | `result-track:551488eb5f4f488b366b12dfff0f2674c61aa689e2964fca7f4c4ed88f505862` |
| 210 | `theorem` | [restrict_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasure.lean/declarations/restrict-trim.md) | 1774 | `result-track:2f3742437f3eaf8dd350b271b902aadccfed143e0128624a608b9d112947af6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2065975ece15dae0fd5e06f4838c0aed2a44e4d00a64640a2e79bd5f6e047c9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variant51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/OuterMeasure/Variant51beb911d8ca7034f1c0fb3962356ceea5a281c95a102b0950f30c3faaef1b03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
