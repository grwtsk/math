# Verification target: Special Functions Exp Exp Public Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "97aa22cce9a0173e19aa13b00bb213f5a48ebef8",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/index.md) · [Full source](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `97aa22cce9a0173e19aa13b00bb213f5a48ebef8`.

Source path: `GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.AtTopBotIxx` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exp_bound_sq](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/exp-bound-sq.md) | 37 | `result-track:945fb887dd167395904010ca94a6497b8309f54cade975376518c82ab21b6442` |
| 2 | `theorem` | [locally_lipschitz_exp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/locally-lipschitz-exp.md) | 48 | `result-track:9d55e068d33cfa64e6e6510cac0bc722412345a02b218e5f691c7e572f93bd1c` |
| 3 | `theorem` | [continuous_exp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuous-exp-source-edition-2.md) | 68 | `result-track:a63abbd94ef644f81820dc75d54f352666dbcf7e51afcba612564f19b074ea0a` |
| 4 | `theorem` | [continuousOn_exp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuouson-exp-source-edition-2.md) | 74 | `result-track:df95313f1907f029a0a9163ba7667704bbb38deadaa95f8748b12f1d40178b09` |
| 5 | `lemma` | [exp_sub_sum_range_isBigO_pow](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/exp-sub-sum-range-isbigo-pow.md) | 77 | `result-track:c657333da17ac0c8e29456c76347314a4920e14166320cebdb59cae3d944fdb8` |
| 6 | `lemma` | [exp_sub_sum_range_succ_isLittleO_pow](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/exp-sub-sum-range-succ-islittleo-pow-source-edition-2.md) | 87 | `result-track:a1761d2de596cf9593696c6e84e9412918ef61e9df91371e5c0a6220d5621c17` |
| 7 | `theorem` | [Filter.Tendsto.cexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/filter-tendsto-cexp.md) | 99 | `result-track:8997b4915e53b41a92edac1951f51d2f8561840e6bd39295a536412d5bebc234` |
| 8 | `theorem` | [ContinuousWithinAt.cexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuouswithinat-cexp.md) | 106 | `result-track:0e8a51c3c4239e97d30d7c4a6722f9e73cfbdb535c3859d35f918e9de5c9a5b6` |
| 9 | `theorem` | [ContinuousAt.cexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuousat-cexp.md) | 112 | `result-track:849f74f2cbb93d8cba601dd419c58d2bbd5e8f07ea21ac019bf48c72769bee8c` |
| 10 | `theorem` | [ContinuousOn.cexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuouson-cexp.md) | 116 | `result-track:682966c37bb11c25657931e51a28ac578162aabf1d0c7087403637387d497945` |
| 11 | `theorem` | [Continuous.cexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuous-cexp.md) | 120 | `result-track:bdcbd616ff528b56dff1fe6587fc781c0270d619473dc758949b219d7bcd5b13` |
| 12 | `lemma` | [UniformContinuousOn.cexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/uniformcontinuouson-cexp.md) | 124 | `result-track:d9cfcae39d752717f2441e39531464cfcabbd174dac1fddc7d273ab118c608c0` |
| 13 | `theorem` | [continuous_exp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuous-exp.md) | 152 | `result-track:3733d9488b917490f0d68c80dd815ecdafea8c2f565af0a53853871a9f5f138a` |
| 14 | `theorem` | [continuousOn_exp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuouson-exp.md) | 155 | `result-track:9d5f68e352c09748f2cdc844807929f557e670ae21979220fab2915cb8d5132e` |
| 15 | `lemma` | [exp_sub_sum_range_isBigO_pow](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/exp-sub-sum-range-isbigo-pow-source-edition-2.md) | 157 | `result-track:ea5d1f8b9ae449a8685b049414cde4eea644fbe40c6762ab009cddf13e66d8ee` |
| 16 | `lemma` | [exp_sub_sum_range_succ_isLittleO_pow](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/exp-sub-sum-range-succ-islittleo-pow.md) | 164 | `result-track:5c1686c0ca074865c1b6b7a9bde7d9575b977a8e5781d132a991008ae75bf78d` |
| 17 | `theorem` | [Filter.Tendsto.rexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/filter-tendsto-rexp.md) | 176 | `result-track:9adc532bffed7618b562f2f3f10e55a7e2a98e7c59bda6b8913b8ca855fac6f6` |
| 18 | `theorem` | [ContinuousWithinAt.rexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuouswithinat-rexp.md) | 183 | `result-track:8e4ae5a09fc2c7ced4fe04552c0788891984292b3de5beb660f7712363894398` |
| 19 | `theorem` | [ContinuousAt.rexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuousat-rexp.md) | 189 | `result-track:79fb10fb0796b32bd933209c8241bb9d9aae79d8f87821584afa8769dd96635a` |
| 20 | `theorem` | [ContinuousOn.rexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuouson-rexp.md) | 192 | `result-track:4a4bb5cfb89cbc86cce7bc4d31ebfaed331f7b58fae0c052ec347af1b51cc88d` |
| 21 | `theorem` | [Continuous.rexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/continuous-rexp.md) | 196 | `result-track:a42ba7ef0d9cd34ab85f953d5e1587419f153de9e207ba83f65d94663b7cf146` |
| 22 | `theorem` | [exp_half](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/exp-half.md) | 204 | `result-track:2843f52857b0f9f1e2e365ac884b73223ac866d40baba4db789759801b208d15` |
| 23 | `theorem` | [tendsto_exp_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-attop.md) | 208 | `result-track:9d1e70bdd83ca15ea8cb97dc780b0c6c4983829d974ee25e793f3e55a74a0126` |
| 24 | `theorem` | [mul_exp_neg_le_exp_neg_one](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/mul-exp-neg-le-exp-neg-one.md) | 215 | `result-track:70e84c5ff6ab3acd6e9090134c1bc14a5717fdd21d0825eeffa965b6a9628320` |
| 25 | `theorem` | [tendsto_exp_neg_atTop_nhds_zero](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-neg-attop-nhds-zero.md) | 222 | `result-track:6b40886fdadf4b36d65a4ea4583afe8c01237230e51b3dc8eda6221989579f29` |
| 26 | `theorem` | [tendsto_exp_nhds_zero_nhds_one](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-nhds-zero-nhds-one.md) | 226 | `result-track:116b587383415f032eded2344263bb0d0943a20cfbbc71be2e16a04fcebe35a8` |
| 27 | `theorem` | [tendsto_exp_atBot](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-atbot.md) | 230 | `result-track:e45dd6d97809be8ac0a11560d9ddeade2fd8abdfac1de9aebe8bf8b31f1e8742` |
| 28 | `theorem` | [tendsto_exp_atBot_nhdsGT](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-atbot-nhdsgt.md) | 234 | `result-track:cb2176ccb971152246faeb953cac8038da44be851f6b90db9657bad90f4df4ea` |
| 29 | `theorem` | [isBoundedUnder_ge_exp_comp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/isboundedunder-ge-exp-comp.md) | 238 | `result-track:97f232b0c9cda78434a0db62092a6ceaf53a2fc51e50cf80dc46e9e6738c9f97` |
| 30 | `theorem` | [isBoundedUnder_le_exp_comp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/isboundedunder-le-exp-comp.md) | 243 | `result-track:843f6f5f869f752af99b34be7ba89e9e8cebacb7796d5c944d8de3058fd5489d` |
| 31 | `theorem` | [tendsto_exp_div_pow_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-div-pow-attop.md) | 248 | `result-track:65ce548aeaa0fb5277de4f2eba862c1d94152241e6f9433e142090f124cd789b` |
| 32 | `theorem` | [tendsto_pow_mul_exp_neg_atTop_nhds_zero](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-pow-mul-exp-neg-attop-nhds-zero.md) | 268 | `result-track:c7de9534e77a86177d2277374183f7c45cdbd1771f626fa951a756ea2f20a78b` |
| 33 | `theorem` | [tendsto_mul_exp_add_div_pow_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-mul-exp-add-div-pow-attop.md) | 275 | `result-track:3c3fffdfef9d73b833c9a3a9007e270c9b8fcab57c794ed7ef6c007f3a6942c9` |
| 34 | `theorem` | [tendsto_div_pow_mul_exp_add_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-div-pow-mul-exp-add-attop.md) | 287 | `result-track:b3d8f11fe4514b93398f33aa4d1d81508fac2744c3f94c0db167f0925b3b702b` |
| 35 | `def` | [expOrderIso](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/exporderiso.md) | 303 | `declaration-track:2f8f76933947d3091761d8d6ae2e71bf2b13e8031cd2a25224f7d99d4ea5b67c` |
| 36 | `theorem` | [coe_expOrderIso_apply](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/coe-exporderiso-apply.md) | 311 | `result-track:f94ef8ad67336bb8a07d4118aa0ac51adf1734f4e6124193ab50e79edbd550be` |
| 37 | `theorem` | [coe_comp_expOrderIso](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/coe-comp-exporderiso.md) | 315 | `result-track:8439a13834b186c776958531b8f8c9fd35f573ef8bdb0b6d177900ec759c840c` |
| 38 | `theorem` | [range_exp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/range-exp.md) | 319 | `result-track:ec2216d2383d7fd350241613bc4c7cdb2de4d0ba2e1a67131df47a5888da700b` |
| 39 | `theorem` | [image_exp_Ioi](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/image-exp-ioi.md) | 323 | `result-track:99660bf6465c47418925471780263814d783f4ac38e2ab7b77581630236af783` |
| 40 | `theorem` | [image_exp_Ici](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/image-exp-ici.md) | 328 | `result-track:2ab80720fee3df229f3227837b6cfbab6e667bd1ad4b8fd77f9246067c7f4103` |
| 41 | `theorem` | [image_exp_Icc](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/image-exp-icc.md) | 333 | `result-track:90fdf4524ef841530fe685611c7a3da9997e111ca50e34b76924fb481887194c` |
| 42 | `theorem` | [image_exp_Ico](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/image-exp-ico.md) | 337 | `result-track:c00e841d85a025eff84bab00c59d03cb1631073b42fd26018825fc0a4305895f` |
| 43 | `theorem` | [image_exp_Ioc](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/image-exp-ioc.md) | 341 | `result-track:8ddc0072f96907dbf27b351889eff5c652bc5d7b0b5e7303a3a4032f1e364e18` |
| 44 | `theorem` | [image_exp_Ioo](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/image-exp-ioo.md) | 345 | `result-track:9ddb7d7989179765df0b52ec53e63c844e7aa6342a6a9bf94254b502fa82c58f` |
| 45 | `theorem` | [image_exp_uIcc](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/image-exp-uicc.md) | 349 | `result-track:763d5c87fc28b6b32977364c701973e58179dfd1fed1d69b1a94438ca5f4cf1d` |
| 46 | `theorem` | [image_exp_Iio](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/image-exp-iio.md) | 353 | `result-track:467ea237a295ba5e00879f198e8fc140366f97387b430f659356d6b2d13f59fa` |
| 47 | `theorem` | [image_exp_Iic](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/image-exp-iic.md) | 358 | `result-track:5a12b5a3798aff0e7512a571f7dc0807bcadd4da4f5ae274c7c9336dc886d5f3` |
| 48 | `theorem` | [map_exp_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/map-exp-attop.md) | 363 | `result-track:36e712ee738a31f61e4c7914ee58647af3006121234e1cf3ef1254bbe7e19f5d` |
| 49 | `theorem` | [comap_exp_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/comap-exp-attop.md) | 367 | `result-track:5cfee8c304116d9853fca5b98d3e5f43d50d3c6def5a86cf27f832271132d10f` |
| 50 | `theorem` | [tendsto_exp_comp_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-comp-attop.md) | 371 | `result-track:289ed0e8c829af74abe0473068728a5054b2426d461307dad123fb7c54d6dafe` |
| 51 | `theorem` | [tendsto_comp_exp_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-comp-exp-attop.md) | 375 | `result-track:674feffe8aca5cb8a9391f6827a4130cf18de7a00645b919d7f50ac0eb3c22e8` |
| 52 | `theorem` | [map_exp_atBot](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/map-exp-atbot.md) | 380 | `result-track:9529da1b1b2f7df821ddfa0f84627d9f5f38f7d41be87d0a09f81174a47546dd` |
| 53 | `theorem` | [comap_exp_nhdsGT_zero](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/comap-exp-nhdsgt-zero.md) | 384 | `result-track:7bfd383b18d03596556a9622543fb4fca8d6f0b72000914e2681fcff10a2fa46` |
| 54 | `theorem` | [tendsto_comp_exp_atBot](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-comp-exp-atbot.md) | 387 | `result-track:b28c8dbe9592f8332fe65c63c3e7f9b90d82ec575052b2fa3c0d761f38f5c162` |
| 55 | `theorem` | [comap_exp_nhds_zero](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/comap-exp-nhds-zero.md) | 393 | `result-track:a8b9dc912f9aa4620baf32ed6eadc68c8fb1e7df1585c9160693807b978e7c8f` |
| 56 | `theorem` | [tendsto_exp_comp_nhds_zero](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-comp-nhds-zero.md) | 397 | `result-track:91cd0bd549aec4a7436ed504c37922a45f90b2fd3baaaf55c511f72a124296d6` |
| 57 | `theorem` | [isOpenEmbedding_exp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/isopenembedding-exp.md) | 402 | `result-track:c5bb5359bead2b6f4111b90b8a3c35177c7cc0545a36ce7e3f9b0e20d7bc5f1a` |
| 58 | `theorem` | [map_exp_nhds](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/map-exp-nhds.md) | 406 | `result-track:3b0e4ed8438148e4d81e914ebc8fe9a404388ce9898c89c1482a94fd33719637` |
| 59 | `theorem` | [comap_exp_nhds_exp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/comap-exp-nhds-exp.md) | 410 | `result-track:ca27130edc96cf6eb74c6d8e3e6f9938d9cd769ba6744f370bc37cd99fef2402` |
| 60 | `theorem` | [isLittleO_pow_exp_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/islittleo-pow-exp-attop.md) | 413 | `result-track:a0de6a0b9585b05fa64afca6a91a1076afeefe96f5e01ab5bd5bce36390eec82` |
| 61 | `theorem` | [isBigO_exp_comp_exp_comp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/isbigo-exp-comp-exp-comp.md) | 418 | `result-track:0757493d84a83787d07835f1fcdc066327633310ac2ab29f433f1d8bd1398afc` |
| 62 | `theorem` | [isTheta_exp_comp_exp_comp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/istheta-exp-comp-exp-comp.md) | 424 | `result-track:9abcc6df515e281e22b4e0f0421437fffb62bec0e3e2ff8f437053e9a021c4db` |
| 63 | `theorem` | [isLittleO_exp_comp_exp_comp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/islittleo-exp-comp-exp-comp.md) | 431 | `result-track:4df336a24d7ad4338e90e10ff31d002fe4195c716b9c195223f71cd6e4f37ddc` |
| 64 | `theorem` | [isLittleO_one_exp_comp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/islittleo-one-exp-comp.md) | 436 | `result-track:0ae6c246ade69f98f18031d0c6b3828464ceaac146655b8b99513af3f485e736` |
| 65 | `theorem` | [isBigO_one_exp_comp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/isbigo-one-exp-comp.md) | 443 | `result-track:3cb88e8a53731d3d6ff32e47bb013b3eea3fbf8cc5c3bc0fdf63e1c742e8496e` |
| 66 | `theorem` | [isBigO_exp_comp_one](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/isbigo-exp-comp-one.md) | 449 | `result-track:da49cab6b0274628a7ef30689fab8586d990a6fd4f7ed545b09b2e4a85dc2e46` |
| 67 | `theorem` | [isTheta_exp_comp_one](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/istheta-exp-comp-one.md) | 456 | `result-track:a972c16df0ef3ce4f3e11167ba2597af7ad86599f12f44b79c4b385791cb306b` |
| 68 | `lemma` | [summable_exp_nat_mul_iff](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/summable-exp-nat-mul-iff.md) | 460 | `result-track:235a3d06ef73d924cedd0cd46fc96e61752cf0016b73ed4f6dee8079d6f80ba0` |
| 69 | `lemma` | [summable_exp_neg_nat](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/summable-exp-neg-nat.md) | 465 | `result-track:369f72244be14c8bf7673568d75031fb0b33b979865ea8a88b3de18cf99e4a40` |
| 70 | `lemma` | [summable_exp_nat_mul_of_ge](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/summable-exp-nat-mul-of-ge.md) | 468 | `result-track:96b5c885c93b7a6e2cf990e497ef00a818c95acb16cd338cf6646b6dcfa96ab3` |
| 71 | `lemma` | [summable_pow_mul_exp_neg_nat_mul](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/summable-pow-mul-exp-neg-nat-mul.md) | 475 | `result-track:d1112d02641970f29a95f9462661cb10bc19f96d9d97832b9c262a2b9e53b8fe` |
| 72 | `lemma` | [HasSum.rexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/hassum-rexp.md) | 485 | `result-track:e1e53b24535b5a62cd9aef8eda4642e7c4bfb03575d0bdcf0d910b89e6e019b5` |
| 73 | `theorem` | [comap_exp_cobounded](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/comap-exp-cobounded.md) | 491 | `result-track:74ce446268e2f19768a22874163aa68584404118e4b75a55b584150f9bc8ab8b` |
| 74 | `theorem` | [comap_exp_nhds_zero](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/comap-exp-nhds-zero-source-edition-2.md) | 498 | `result-track:e7c65b6a0516554c954b128167afa6ee282d1173a3c3dab263cb454139301af5` |
| 75 | `theorem` | [comap_exp_nhdsNE](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/comap-exp-nhdsne.md) | 505 | `result-track:8013ff7d092413d235dea4df9044eed24eea9de13105493bb0d36abab8228794` |
| 76 | `theorem` | [tendsto_exp_nhds_zero_iff](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-nhds-zero-iff.md) | 509 | `result-track:ea6cfbf3e0a971c8e71457f96df4ac68cebbf1b2b0de53b3657b798e8d00a0af` |
| 77 | `theorem` | [tendsto_exp_comap_re_atTop](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-comap-re-attop.md) | 515 | `result-track:c10ca50682e07c059f974bacc19aeb8cecf96af609266db28b16eab9ccfd534c` |
| 78 | `theorem` | [tendsto_exp_comap_re_atBot](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-comap-re-atbot.md) | 519 | `result-track:8f8f624ca3ca68ff80dbebfb75ace11e6897f6229b0adb330053aefb6f13a238` |
| 79 | `theorem` | [tendsto_exp_comap_re_atBot_nhdsNE](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/tendsto-exp-comap-re-atbot-nhdsne.md) | 522 | `result-track:20293e3db3bc3a70a677100f1736dbc71caeef30aac50063583c0e7ad40af9d8` |
| 80 | `lemma` | [HasSum.cexp](../../../../SpecialFunctions/SpecialFunctionsExpExpPublicSourceEdition2.lean/declarations/hassum-cexp.md) | 529 | `result-track:f43f41fe50feb0cfe8954b1736026b3b3d8bde651bb5cf02b8ab5fd6d6ed2774` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=001fbb66b7825cc9ce7a28f7efef42a2c2489fa7246dacf3b0c8b57dd3e8872b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Exp/Variant872bb4bedf06b545327750dffe0c911c29fc6bd67f1fddb2df59d0ff5b0bd84c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
