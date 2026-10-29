# Verification target: Simple Func Dense Lp Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00afc7d9e158d089ac8dff3975f4106c7efa0dc6",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantaff5f8bc47d1ba16a4828caf278ba7b3d56afe8cf267a449fb0a1f2372ddcdd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00afc7d9e158d089ac8dff3975f4106c7efa0dc6`.

Source path: `GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantaff5f8bc47d1ba16a4828caf278ba7b3d56afe8cf267a449fb0a1f2372ddcdd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantaff5f8bc47d1ba16a4828caf278ba7b3d56afe8cf267a449fb0a1f2372ddcdd6.lean.json)

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
| 1 | `theorem` | [nnnorm_approxOn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/nnnorm-approxon-le.md) | 77 | `result-track:2e49fec0ddba8f3944c337f48a55655eda7351c52a2b74abecf7c1268994d782` |
| 2 | `theorem` | [norm_approxOn_y₀_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/norm-approxon-y-le.md) | 85 | `result-track:595be5347e411016d84ead243ef9f002cae49ee0cb10eae0f28d744f0d499188` |
| 3 | `theorem` | [norm_approxOn_zero_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/norm-approxon-zero-le.md) | 91 | `result-track:378c3a2272bb4c6429419b6a3d186a35ac607582970f99a6189f2e20ebc9141a` |
| 4 | `theorem` | [tendsto_approxOn_Lp_eLpNorm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tendsto-approxon-lp-elpnorm-source-edition-2.md) | 97 | `result-track:237331f544cb7cdda7f1b4b4f8d0cb102461f686c186e12366a5bec7c828eba7` |
| 5 | `theorem` | [tendsto_approxOn_Lp_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tendsto-approxon-lp-elpnorm.md) | 130 | `result-track:008a2b2cdfda3729abc001cbfd2227982b9f59de666c25b8af91efa960335b09` |
| 6 | `theorem` | [memLp_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-approxon.md) | 154 | `result-track:e0afcc11e71070bb40b7c89782949e5eb13ae95f723baa9049f1142cc41f3faf` |
| 7 | `theorem` | [tendsto_approxOn_range_Lp_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tendsto-approxon-range-lp-elpnorm.md) | 183 | `result-track:51d55a71ebef68b6d90447996cc3a2391741f7011835fd73c03e5cbcde93101d` |
| 8 | `theorem` | [memLp_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-approxon-range.md) | 192 | `result-track:59403f1ebee3a80bf5c1f7f82d04af8600cdcb07f82114d29a59174b51ac5561` |
| 9 | `theorem` | [tendsto_approxOn_range_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tendsto-approxon-range-lp.md) | 197 | `result-track:356cbbbf31cee30ef3c875437920f98a1d3417cb82c060feaada8426ee1b1283` |
| 10 | `theorem` | [Simple Func Dense Lp Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/exists-simplefunc-elpnorm-sub-lt.md) | 208 | `result-track:d9cf92312930982093364177c2a37bc2fd4cc5b5b5bef5eed56387879aff6708` |
| 11 | `theorem` | [tendsto_approxOn_L1_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tendsto-approxon-l1-enorm.md) | 239 | `result-track:70803ca3ace76f6e5d63395222144379d6ac1580662ed3e6659c4524da616cb3` |
| 12 | `theorem` | [integrable_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/integrable-approxon.md) | 249 | `result-track:910a80a26a5699608f36bd3fe64ab08790bb888098f7905c30dbf6e6140cd353` |
| 13 | `theorem` | [tendsto_approxOn_range_L1_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tendsto-approxon-range-l1-enorm.md) | 255 | `result-track:08e20973f8a46a6d34746d33fc4966786e67b5cd6887f31c793c4ab08561f377` |
| 14 | `theorem` | [integrable_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/integrable-approxon-range.md) | 263 | `result-track:b81487230e030878853c9ec3be136a7f7138417edf14f4d22c9cbb2f6bb5f5a3` |
| 15 | `theorem` | [exists_forall_norm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/exists-forall-norm-le.md) | 286 | `result-track:01d62b03d3e0d86caf366c21c1e8a77e52b521a05fbe63428270412126dee031` |
| 16 | `theorem` | [memLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-zero.md) | 289 | `result-track:14a2773ae3f42532b398c7ad4337ed124d738460f93a746ab41bc2156e3336d9` |
| 17 | `theorem` | [memLp_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-top.md) | 292 | `result-track:1d0158f3a5f1bfcf28ab3ab34cbb00b2fe5d7415ba43d43d060e02935c6d8b55` |
| 18 | `theorem` | [eLpNorm'_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/elpnorm-eq.md) | 296 | `result-track:ce9fe2f222522ee1fd9a67dd965d8f54c5e2db9f1320b20beb4d68a16372d6a6` |
| 19 | `theorem` | [measure_preimage_lt_top_of_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/measure-preimage-lt-top-of-memlp.md) | 301 | `result-track:3dcec0d6c38eb2e2bb8b99b9667c047ee5c553a5023f100182d07a6f68e90f77` |
| 20 | `theorem` | [memLp_of_finite_measure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-of-finite-measure-preimage.md) | 313 | `result-track:094ad6e691dafadabdc56bb12d71df489ee772b71bfe084c818c3232ec4c3746` |
| 21 | `theorem` | [memLp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-iff.md) | 326 | `result-track:2c8138f0e2131561d132b3c2dc7c79fe6a30ff52a730c7e784365eda7af02ad0` |
| 22 | `theorem` | [integrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/integrable-iff.md) | 331 | `result-track:85a5b62f7853a2cfdd2c26eff226cf3745792aa3a096147043d8a1c2582ced2b` |
| 23 | `theorem` | [memLp_iff_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-iff-integrable.md) | 334 | `result-track:8e5512486da28a9b1da288f758f0b7c07aeee51de04661966ecb4daac4ba971d` |
| 24 | `theorem` | [memLp_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-iff-finmeassupp.md) | 338 | `result-track:1225cf23f102c672bbbfd5d53acb5073f50df13ec95efbe6e4a6dc33e939a727` |
| 25 | `theorem` | [integrable_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/integrable-iff-finmeassupp.md) | 342 | `result-track:bbbacb2ac92667d0e21292faea474775934d234bfd4002b93a965bfefd8e44df` |
| 26 | `theorem` | [FinMeasSupp.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/finmeassupp-integrable.md) | 345 | `result-track:777b4cfb1325c9b3fd24e49292268674fab958bb82bf5f7b99df29c1d55c170d` |
| 27 | `theorem` | [integrable_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/integrable-pair.md) | 348 | `result-track:2a44f9c85900e30a6f2e20900fe8a1976d31962e4ea6721e23bd139f285f6ba2` |
| 28 | `theorem` | [memLp_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-of-isfinitemeasure.md) | 352 | `result-track:1157dbbf57860d75ce9a92608d8910868a131d650f20e98d0157631f70a3fcc2` |
| 29 | `theorem` | [integrable_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/integrable-of-isfinitemeasure.md) | 358 | `result-track:4ce8d029c753bb4e1c65813f5291bda1284e3a8985d68a50fc5b23d6866ca7d4` |
| 30 | `theorem` | [measure_preimage_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/measure-preimage-lt-top-of-integrable.md) | 361 | `result-track:f5524250336936d8a61c89c20ad4eac189a1042fe6842c83a46eef6c721e5619` |
| 31 | `theorem` | [measure_support_lt_top_of_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/measure-support-lt-top-of-memlp.md) | 365 | `result-track:bb3f0512dd11dc61eecb4c83c9a2be3c3918a612d5ad2a88afb99b6ab4364e6a` |
| 32 | `theorem` | [measure_support_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/measure-support-lt-top-of-integrable.md) | 369 | `result-track:ae0145e35219c6ae006a5aafae5dd30b397d9a655de36752c923df23223de69e` |
| 33 | `theorem` | [measure_lt_top_of_memLp_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/measure-lt-top-of-memlp-indicator.md) | 373 | `result-track:e3b82813c4444a6eaa7d7ba9e09ab2a9c6aba0a66f2a06078a03f14c9c29b813` |
| 34 | `def` | [simpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/simplefunc.md) | 400 | `declaration-track:8c5fc99307ea026eeb022e1b82c5588e4ed6efa3890492eb9bf265fdc6d64946` |
| 35 | `theorem` | [eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/eq.md) | 423 | `result-track:f954f30eef9954a0b1bd2012ad017669fc103d370e37263e6682e18bde503b6d` |
| 36 | `def` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/smul.md) | 438 | `declaration-track:e870972fc5d5b7e77beed8eb4f592cbf0b237cdd371d8e61994d8197db627a71` |
| 37 | `theorem` | [coe_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/coe-smul.md) | 450 | `result-track:e3fa88ef56c492e6dfcb29504c22cc627b30abb440158b6102d2818f4ecfca16` |
| 38 | `def` | [module](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/module.md) | 457 | `declaration-track:a49ff1e0c05561ea524aa1865dbc2e0d39fded3e833740eed8ad5b07ea7eb466` |
| 39 | `theorem` | [isBoundedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/isboundedsmul.md) | 469 | `result-track:3d915f647a525c3022a38c491ab6fca8f743b77d3dbce3e2f88f85844206b6c8` |
| 40 | `def` | [normedSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/normedspace.md) | 477 | `declaration-track:940791af875565c42406cc180957db041e7beeec406b9149bd73d7d9c8c39107` |
| 41 | `abbrev` | [Simple Func Dense Lp Namespaced Public](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tolp.md) | 488 | `declaration-track:79e301da1743f53581fb1c23afe045c5d27d70da8e5a3c144d92d562941dc5a1` |
| 42 | `theorem` | [toLp_eq_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tolp-eq-tolp.md) | 491 | `result-track:2a0b9cf72b02630cadb98a081cd5ff6d0877e3e4eee3996f6afa30aaf12790be` |
| 43 | `theorem` | [toLp_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tolp-eq-mk.md) | 494 | `result-track:a33408055f9d8daa1629e97525b0e8e5ca6291e8d4b0938f50720c521539ecdd` |
| 44 | `theorem` | [toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tolp-zero.md) | 498 | `result-track:5cfcaa29460c1f8feeb2185853a1d3c1201ff410dcd24c8c33430bfea089773e` |
| 45 | `theorem` | [toLp_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tolp-add.md) | 501 | `result-track:626ca05c73385ecd4e318a61e90d3b45454d2e43f2358bda7e0bcb9dc2ccd690` |
| 46 | `theorem` | [toLp_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tolp-neg.md) | 505 | `result-track:e40176b1f90c11a16cabff2eea1719a1286a4b2f84de5d6ddae19c081b280d20` |
| 47 | `theorem` | [toLp_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tolp-sub.md) | 509 | `result-track:e44e9bd02c7a7a0d157a5e9d77b0d071a6133d4b7dd012efc634387edad2cc48` |
| 48 | `theorem` | [toLp_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tolp-smul.md) | 515 | `result-track:6b680713c7a8d28b386f5679825a019b6f681eea9613c1c95d1b15f3799c8a0c` |
| 49 | `theorem` | [norm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/norm-tolp.md) | 519 | `result-track:58be2ccdbc4166427590ab23e3992a8ae017d4b5e2bb2d02327764b3f3c42cac` |
| 50 | `def` | [toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tosimplefunc.md) | 528 | `declaration-track:0b03312bf4b201c1ca7f80d889ffc2ac926e24dbdb66227c6af7f29ec2bf0695` |
| 51 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/measurable.md) | 533 | `result-track:257daad4a607129fde6faff2835a76515c7957a59648366c2721f52f610f48b6` |
| 52 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/stronglymeasurable.md) | 537 | `result-track:b26c6335f70abe8ed4e93a052c99844b2b61e98bc34702e6bffa24a144d4e590` |
| 53 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/aemeasurable.md) | 542 | `result-track:519a2eebe3db0283c84de58f67f4f3ac08b40b07968b509ca3f21c6ca4cb2c7a` |
| 54 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/aestronglymeasurable.md) | 546 | `result-track:ea803817efa90a6aa164f84429cfe520bd0725c2503a761724404116eb860fac` |
| 55 | `theorem` | [toSimpleFunc_eq_toFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tosimplefunc-eq-tofun.md) | 550 | `result-track:9391e120b0bab44aaacc745ca53ab1dc9e71d566d3885bae3eca81511aec8029` |
| 56 | `theorem` | [memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp.md) | 556 | `result-track:687612ff76c5f8cf5b347c9cf776e1e92e0e61bd9bcae6b05f6a268d2d023062` |
| 57 | `theorem` | [toLp_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tolp-tosimplefunc.md) | 559 | `result-track:eb902a3f844495641915d142109d14ea4df18363eb8b92e8382a06ce0d666093` |
| 58 | `theorem` | [toSimpleFunc_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tosimplefunc-tolp.md) | 563 | `result-track:d7fb9b67dc764596afc417311616baefaf6bcfce782cc89764f0e95c3054626a` |
| 59 | `theorem` | [zero_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/zero-tosimplefunc.md) | 568 | `result-track:85544a1c5c10cbfc2a218becbb6528127ef3040feb0dbef9e839cd4aa63250a0` |
| 60 | `theorem` | [add_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/add-tosimplefunc.md) | 575 | `result-track:ade5053c76dd0bce5a6fefaab2e1b1c9382435839a960540b8766f16c4104b25` |
| 61 | `theorem` | [neg_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/neg-tosimplefunc.md) | 582 | `result-track:f2e360b32f8647372ceeebcd3088be48e536499206bf33052abb64e34163c8d0` |
| 62 | `theorem` | [sub_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/sub-tosimplefunc.md) | 588 | `result-track:e23fbb31a74ecd5e694278a9a5e6317b2e59effc49dea67ec89a19fc9df00049` |
| 63 | `theorem` | [smul_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/smul-tosimplefunc.md) | 597 | `result-track:9c6661a076cb57c8438d836c8963d142f24d7b026c9e55c4ae240cf2ca010460` |
| 64 | `theorem` | [norm_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/norm-tosimplefunc.md) | 604 | `result-track:fd6cf1e1cd972a7224db15ad3f470b8cbe2ecc8377bfb8f09caf6d5cc836e832` |
| 65 | `def` | [indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/indicatorconst.md) | 615 | `declaration-track:b28b4af6404ac6485af839ae05a11eeba3315e9f1d2b83dea3d156cdfde930a7` |
| 66 | `theorem` | [coe_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/coe-indicatorconst.md) | 621 | `result-track:e40a38c179e02a45fcd9cbb9f5d378593586a6800f7f2fb2275cffe1ba9d9e46` |
| 67 | `theorem` | [toSimpleFunc_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/tosimplefunc-indicatorconst.md) | 625 | `result-track:0fab4cf4056b34fcbbfc56839a894031fa28990f2f6b7fd249d4929296da19da` |
| 68 | `theorem` | [induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/induction.md) | 634 | `result-track:7b1aaed9f73751a0c4016ee0ffb9ce6c9a241ea4681fd577393db91e4cf0f1fa` |
| 69 | `theorem` | [uniformContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/uniformcontinuous.md) | 670 | `result-track:adeb761ee74a68f1cd9a4bd481af67b5cbdf469dd713a951581b89302dbe2775` |
| 70 | `lemma` | [isUniformEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/isuniformembedding.md) | 673 | `result-track:b4864ee61433cd66520e9055bad02453406efff1d257c6d7bc16beac6fd396a7` |
| 71 | `theorem` | [isUniformInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/isuniforminducing.md) | 676 | `result-track:d6977cd6802d3dde2ffbc60a07974b37e7889594ecdb6b9f0a988f870c92df6c` |
| 72 | `lemma` | [isDenseEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/isdenseembedding.md) | 679 | `result-track:101e7c84ca7278a3e27579dddb3c195a491b9bc67647962bf9cd3666ccfcd98c` |
| 73 | `theorem` | [isDenseInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/isdenseinducing.md) | 697 | `result-track:a18094afe6b1f063c21d68742134eba7edf1d35d9e4a6ae9fbace50c8136df02` |
| 74 | `theorem` | [denseRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/denserange.md) | 701 | `result-track:65b7c88e2ca9bc0e327ccd5a40fdc802a556099228162f12535515b48f938b92` |
| 75 | `theorem` | [dense](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/dense.md) | 705 | `result-track:ed785e1ebc451b615dc2533ce91fbae59616bc341f4aa6c8d4d428c0b89acec1` |
| 76 | `def` | [coeToLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/coetolp.md) | 712 | `declaration-track:3ee90888f09c9ae18109a83a8437c0634fda9fbc9ffcac4d11fe31085c782b3f` |
| 77 | `theorem` | [coeFn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/coefn-le.md) | 722 | `result-track:1893669b6b46a7b7df0a369eb87f7dbe0119ecee671dc9f49b1076a0985fa4f0` |
| 78 | `theorem` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/coefn-zero.md) | 727 | `result-track:eac618733997f250211a2d73805f3f8a38def5713fafd786cdbe1b0aaa42f99d` |
| 79 | `theorem` | [coeFn_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/coefn-nonneg.md) | 734 | `result-track:73e872aa0900df06728360063f058a573a400b2ccdebe791c5f1482633f8f296` |
| 80 | `theorem` | [exists_simpleFunc_nonneg_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/exists-simplefunc-nonneg-ae-eq.md) | 737 | `result-track:905522588f5810863934bcaeee82ac902df4d27703b4e18461fbc85ebd375851` |
| 81 | `def` | [coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/coesimplefuncnonnegtolpnonneg.md) | 750 | `declaration-track:7ebfb8b521b8a53471a93afd4580cee541ff8d8e0ac5bd3669b98fcf6b1fa5d1` |
| 82 | `theorem` | [denseRange_coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/denserange-coesimplefuncnonnegtolpnonneg.md) | 753 | `result-track:85fd5b355a7d245d1aa63745bbbe9755e730058d623816c2bc8e888b43b3e5f1` |
| 83 | `theorem` | [Lp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/lp-induction.md) | 822 | `result-track:d8d9475e75a69884944777402c6e629598862718f00a774158ba2489c55d9fde` |
| 84 | `theorem` | [MemLp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-induction.md) | 847 | `result-track:9192532324f01950311219bc087bfc8c3d3b79a9cd56c319f4e4871c9892e2b9` |
| 85 | `theorem` | [MemLp.induction_dense](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/memlp-induction-dense.md) | 876 | `result-track:99a0746788f7fc8f1c81f0672960f02550582fc98e79af8594ca1a7902a7f324` |
| 86 | `theorem` | [L1.SimpleFunc.toLp_one_eq_toL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/l1-simplefunc-tolp-one-eq-tol1.md) | 931 | `result-track:13d14d0e1d6b514ce4fca431a7279d02bec8485c3b02d22dd71effd2c1a2e574` |
| 87 | `theorem` | [L1.SimpleFunc.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/l1-simplefunc-integrable.md) | 936 | `result-track:daaa0a89d40b00672cea69e53c89acad82bdb1389e778dd51ba6fe3f8699eb1e` |
| 88 | `theorem` | [Integrable.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpNamespacedPublic.lean/declarations/integrable-induction.md) | 953 | `result-track:86dae0de3d674760b18578e770221909fe374b5b7739384c7c42d6967c979818` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc9f7ca8963859388af674e85775cd2e21ca05cc697baf2f62ac28da407dccd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantaff5f8bc47d1ba16a4828caf278ba7b3d56afe8cf267a449fb0a1f2372ddcdd6.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantaff5f8bc47d1ba16a4828caf278ba7b3d56afe8cf267a449fb0a1f2372ddcdd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
