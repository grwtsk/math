# Verification target: Simple Func Dense Lp Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33d4039326eb4d1a24548a24292c2beeb8da639d",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33d4039326eb4d1a24548a24292c2beeb8da639d`.

Source path: `GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean.json)

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
| 1 | `theorem` | [nnnorm_approxOn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/nnnorm-approxon-le.md) | 69 | `result-track:dfea8e0c603e77ad7af459c161a7151986443a7b55777ca9f53661d5bf2a41d7` |
| 2 | `theorem` | [norm_approxOn_y₀_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/norm-approxon-y-le.md) | 77 | `result-track:18b63dc348d2a47395bdce56c9836f30cdeb65faf0fac6cb030148ef9e1513a3` |
| 3 | `theorem` | [norm_approxOn_zero_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/norm-approxon-zero-le.md) | 83 | `result-track:0932e6fc56d0242835e366e5565f322b31d1a35481c9e99fb862d14db3cd835f` |
| 4 | `theorem` | [tendsto_approxOn_Lp_eLpNorm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tendsto-approxon-lp-elpnorm.md) | 89 | `result-track:033fdef74cf4a4689dd72bf6505112d393ab33493ceb7ac96f8365045d6d92ab` |
| 5 | `theorem` | [tendsto_approxOn_Lp_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tendsto-approxon-lp-elpnorm-source-edition-2.md) | 122 | `result-track:b6df02c6aa3be228d2f6acf5d5d5a47163a2ff3aacea0e4dbc22e20c1e105da5` |
| 6 | `theorem` | [memLp_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-approxon.md) | 146 | `result-track:4bb842497b0571829528df01ad5c234662b5f2edf441a7f4402379479173d1d7` |
| 7 | `theorem` | [tendsto_approxOn_range_Lp_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tendsto-approxon-range-lp-elpnorm.md) | 175 | `result-track:9fbe26576f118f21569465a26313c02ce73c46e377d33db552419f72da19f97f` |
| 8 | `theorem` | [memLp_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-approxon-range.md) | 184 | `result-track:da0aabf82cebb310016fb13ee5eb6caaa5b6afb6654d22a96182535bee665008` |
| 9 | `theorem` | [tendsto_approxOn_range_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tendsto-approxon-range-lp.md) | 189 | `result-track:814293ec58b8d065395bf96a71335f0ffcb1b090c5dbc39c91a8b906b8dc42a2` |
| 10 | `theorem` | [_root_.MeasureTheory.MemLp.exists_simpleFunc_eLpNorm_sub_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/root-measuretheory-memlp-exists-simplefunc-elpnorm-sub-lt.md) | 200 | `result-track:ad10673e0aafb24ac652fc911b961f0483a20d8d100f8c25a3cf6821d4c03296` |
| 11 | `theorem` | [tendsto_approxOn_L1_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tendsto-approxon-l1-enorm.md) | 231 | `result-track:0b81a7fb40b898d6a80a1052b3530b2ddbf8b4d48dfa3d16aaf5e6eb21657e7b` |
| 12 | `theorem` | [integrable_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/integrable-approxon.md) | 241 | `result-track:93a6d1380b4b5f8b8716073954730a9aad33f0a71d5a933c966ef8ad36218796` |
| 13 | `theorem` | [tendsto_approxOn_range_L1_enorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tendsto-approxon-range-l1-enorm.md) | 247 | `result-track:08c3f7bdbd8006cd38af7c6dad468de9709adeca47b26027c3741021586513ab` |
| 14 | `theorem` | [integrable_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/integrable-approxon-range.md) | 255 | `result-track:e2ee7d19d5a0cf5a9b7b92c4914023417ce36ee9f73127fbde6db188aa77b281` |
| 15 | `theorem` | [exists_forall_norm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/exists-forall-norm-le.md) | 278 | `result-track:b3fe7d6bb0b3855d0318cd51faf8dd21bf70191ca5719317fb87808b03639f13` |
| 16 | `theorem` | [memLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-zero.md) | 281 | `result-track:c1fcc10fd858b4c804adffe93f51bed4fa618eb335896544408c15ad1c8489ac` |
| 17 | `theorem` | [memLp_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-top.md) | 284 | `result-track:8c13fba11cf2e3b8ddde9fa48449e848e96fac00acb9f6ed84717fb789a0d389` |
| 18 | `theorem` | [eLpNorm'_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/elpnorm-eq.md) | 288 | `result-track:25432e5bb6b6b42f3f96dff768c86c7bb3f96603a3388d1dff774d643102094c` |
| 19 | `theorem` | [measure_preimage_lt_top_of_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/measure-preimage-lt-top-of-memlp.md) | 293 | `result-track:99e93e9ef1f171793a643c8ce33715dbb838615fa0bc3fcb44fc9026dc7ef978` |
| 20 | `theorem` | [memLp_of_finite_measure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-of-finite-measure-preimage.md) | 305 | `result-track:8a8bdd25f8191434871e7a6aac086c3be81e4cd2c40eec85f32c63b01dee61cb` |
| 21 | `theorem` | [memLp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-iff.md) | 318 | `result-track:b7dc307e31b228993be2b1f3b4f4e9029f03a2842bc8a1e4cbf6ab8f53b556ae` |
| 22 | `theorem` | [integrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/integrable-iff.md) | 323 | `result-track:93ccca2abbf2c77aced9e3434417bcfdfda96613d32efe2418220f599e8e437d` |
| 23 | `theorem` | [memLp_iff_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-iff-integrable.md) | 326 | `result-track:daa4a6534c12cca1f373dd4a2a31865b8a80b1242f7abbe729b426081ae1cc38` |
| 24 | `theorem` | [memLp_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-iff-finmeassupp.md) | 330 | `result-track:07f231593245c3b085418006ff0e879ab73bc2aad2d329197e7eb22aaa0603d7` |
| 25 | `theorem` | [integrable_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/integrable-iff-finmeassupp.md) | 334 | `result-track:3bf98f93e6d1da6e9c2f828c8d667b2b734332bcdbbcc9301a10aed509410297` |
| 26 | `theorem` | [FinMeasSupp.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/finmeassupp-integrable.md) | 337 | `result-track:db349a71858495e0e3a13fa7191d88c0385c39eaf35b2e19133055af9574709c` |
| 27 | `theorem` | [integrable_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/integrable-pair.md) | 340 | `result-track:9803546984f252528eb89c5dfc1c7dd18a8e1e005dc8aecf683d7a555d38e7bb` |
| 28 | `theorem` | [memLp_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-of-isfinitemeasure.md) | 344 | `result-track:af2641c67b1f8c8d66409d20b74889160736b544217e2bf3b7d10df44fd8d3f4` |
| 29 | `theorem` | [integrable_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/integrable-of-isfinitemeasure.md) | 350 | `result-track:03ff828560144d9d3c575a25d80d7cdc7992f64ca3b2341085fc733db82c0b9b` |
| 30 | `theorem` | [measure_preimage_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/measure-preimage-lt-top-of-integrable.md) | 353 | `result-track:5dde99ea33f65f4537f36d11ad72a3440e05b46f170fa594a9dd001c9ff64ba6` |
| 31 | `theorem` | [measure_support_lt_top_of_memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/measure-support-lt-top-of-memlp.md) | 357 | `result-track:61120d4202e47c29c4f296da5434302c69bdf7ea9f9dad1cb4249db400e81873` |
| 32 | `theorem` | [measure_support_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/measure-support-lt-top-of-integrable.md) | 361 | `result-track:aa15ee9de2bfb2adc49c5093fad2145a8fd1cb4208de921c3a9bb613f6a93f04` |
| 33 | `theorem` | [measure_lt_top_of_memLp_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/measure-lt-top-of-memlp-indicator.md) | 365 | `result-track:c0226c96f15da24f42951c7c0c1808ba398c9b83a920804e464b9d8d8d2a2bb3` |
| 34 | `def` | [simpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/simplefunc.md) | 392 | `declaration-track:488d248e88022ba67d176316bae0e987476d8ff3ad2a0d1f1ccb927cc521861a` |
| 35 | `theorem` | [eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/eq.md) | 415 | `result-track:8c24f9e9e253a4f5a7cfb62dc885bbe99d5eeb84a6a581c265fe78f008b34294` |
| 36 | `def` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/smul.md) | 430 | `declaration-track:e5e61d0e535e9b2616f19bcfa09854ca5b10de26a72753dd35eb1c6e71f0af87` |
| 37 | `theorem` | [coe_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/coe-smul.md) | 442 | `result-track:66f0f634cd8e6677cb7417ca6a762e8b18e03e5c7f76500f44139afe6c4fd525` |
| 38 | `def` | [module](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/module.md) | 449 | `declaration-track:4b0b5de8d8c2e992a88fdc1a490b5dd3805844602cc2c928941c052e44d2cf74` |
| 39 | `theorem` | [isBoundedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/isboundedsmul.md) | 461 | `result-track:2abcc20cc71220341d91a7e2b733e34f37ce86eb4ead36d96c5ab60b128f5864` |
| 40 | `def` | [normedSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/normedspace.md) | 469 | `declaration-track:c4baf0b7ac4da44fd47fc7cba86bd583f596e002afcc4b168703c19f73ec920c` |
| 41 | `abbrev` | [_root_.MeasureTheory.SimpleFunc.toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/root-measuretheory-simplefunc-tolp.md) | 480 | `declaration-track:48bd72301f86847da3f39bf01eef560f32f3a23caf618b6ab29b4ae59f173338` |
| 42 | `theorem` | [toLp_eq_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tolp-eq-tolp.md) | 483 | `result-track:508f681429222dee3f843144b57240bfcca31f599c2162934557d6d59b03c4c1` |
| 43 | `theorem` | [toLp_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tolp-eq-mk.md) | 486 | `result-track:a2472d9cb1fa8b63f3f0cf7cecb74793c939ba7f05d30258713ef5a334a981df` |
| 44 | `theorem` | [toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tolp-zero.md) | 490 | `result-track:8250a3b095bf1983d32930e21d8dfed6407f7e3fa7f5ccccc4f40ab33de9c073` |
| 45 | `theorem` | [toLp_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tolp-add.md) | 493 | `result-track:21e3ffbe965f50fc90ce06015f812e2664d42cf38d135be14f0ddd21de0e11b1` |
| 46 | `theorem` | [toLp_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tolp-neg.md) | 497 | `result-track:50c8e00f381650f154729f02ca6c1a74b4846aadf4122c9afff07a88f3f440ae` |
| 47 | `theorem` | [toLp_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tolp-sub.md) | 501 | `result-track:514204e3d106b26cc1a29e08ba99a61a869179aeb7a83a48a46e4f886a1dc0bf` |
| 48 | `theorem` | [toLp_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tolp-smul.md) | 507 | `result-track:0089036316623f6a89c830d24e20cc155e9d3cca947ef5bdf1d283d1a0a11190` |
| 49 | `theorem` | [norm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/norm-tolp.md) | 511 | `result-track:e36af854df01dfe2ec9b94452e7b5d563e64330e511e50498d15e0cb47e23187` |
| 50 | `def` | [toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tosimplefunc.md) | 520 | `declaration-track:26ad371531850bb09fb8ac00c246993fa78d6e7e62b39f5e0964e6f5fa88fd20` |
| 51 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/measurable.md) | 525 | `result-track:6d03ac9fc59a3bae91b11f181949f9f58d9d458b27745398f7831b94afb97d21` |
| 52 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/stronglymeasurable.md) | 529 | `result-track:e4c844f9556cf2202f17f669cfd985dbec26802a6cc65f34e803708ea4036d82` |
| 53 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/aemeasurable.md) | 534 | `result-track:7955820eef248bec8856efecb0ad92e3c7a8f3a097be72bc493dfc258aa8c4ff` |
| 54 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/aestronglymeasurable.md) | 538 | `result-track:50f4dd8fe68f6030ceb274084169e95dfc5d5fdfba947bffe7f0c8c632461bc6` |
| 55 | `theorem` | [toSimpleFunc_eq_toFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tosimplefunc-eq-tofun.md) | 542 | `result-track:6e32a926d52f8f1a71f4ee357af27b24984bb26531313d0c4d418cf7a5c9d5e9` |
| 56 | `theorem` | [memLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp.md) | 548 | `result-track:6d776f9806785dff44e02889cf0647e6e8fb58c3c894e60115b9a4dc9933e2d9` |
| 57 | `theorem` | [toLp_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tolp-tosimplefunc.md) | 551 | `result-track:1f75b08e11fde9957944fe5d87f09c9d86adbe52c79291aacf942b6e71578fd0` |
| 58 | `theorem` | [toSimpleFunc_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tosimplefunc-tolp.md) | 555 | `result-track:172e4f44f33a21c1d9d4c324add15c1edb97de426834f581e69d766a7ba59e40` |
| 59 | `theorem` | [zero_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/zero-tosimplefunc.md) | 560 | `result-track:c085b609e9053bc8f8572d9cfbe352e16b2fc9c4c46b2d010a803ede15cb014b` |
| 60 | `theorem` | [add_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/add-tosimplefunc.md) | 567 | `result-track:bc537975a67903e33ec6c7ef1e0f300a9e47852cab09d7ddf0e480e98a170c5d` |
| 61 | `theorem` | [neg_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/neg-tosimplefunc.md) | 574 | `result-track:56058f25d3c3d2ef37e67abdefdd8637576b6c81f3db03d98cfbbe9757b2047c` |
| 62 | `theorem` | [sub_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/sub-tosimplefunc.md) | 580 | `result-track:979a33ec30b9d97afbdd876e64adfd32bef2ac73159b6ef43b26455ab196382c` |
| 63 | `theorem` | [smul_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/smul-tosimplefunc.md) | 589 | `result-track:3e2bbbc2241191ebfd5067370755be8ffdc4dcaa1b2f934f43dafa225cb9e83c` |
| 64 | `theorem` | [norm_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/norm-tosimplefunc.md) | 596 | `result-track:c0e2c27b20bf99667259c8fc32c1b23481622d51eeb73649a809f8178bb9e789` |
| 65 | `def` | [indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/indicatorconst.md) | 607 | `declaration-track:3a0b4feb2758f2bcc48b9451a9586563ee06d19420d20a0c768d9bf1926af5b9` |
| 66 | `theorem` | [coe_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/coe-indicatorconst.md) | 613 | `result-track:2abc93a4cdadb08cac9cf4b7cbee6275b66f0f14a56539200f55c4fd456620b8` |
| 67 | `theorem` | [toSimpleFunc_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/tosimplefunc-indicatorconst.md) | 617 | `result-track:27b19face3aaca011eb74db4a9300abf1c273226a920a37f9a83d857a7f7fd0b` |
| 68 | `theorem` | [induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/induction.md) | 626 | `result-track:2f6409ba7c6b5cf9c6da1993c7fd8a75c3bdb9fc8d73bd44f9197c6addb268a2` |
| 69 | `theorem` | [uniformContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/uniformcontinuous.md) | 662 | `result-track:e8be51a5b26d8fb09bd36a5271c2b3c72d4a58486758142cc1d4c0c9a7390d25` |
| 70 | `lemma` | [isUniformEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/isuniformembedding.md) | 665 | `result-track:1df798f7a5937820ca37c051ec2607e0087f38e583d80c620d78554410eb242d` |
| 71 | `theorem` | [isUniformInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/isuniforminducing.md) | 668 | `result-track:2e0a1f8555ba43e04768940ca54ef01efd214b71cb29579f9df7b632c3ccbf4d` |
| 72 | `lemma` | [isDenseEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/isdenseembedding.md) | 671 | `result-track:5cc2f17ea990317e4d3a7495319a66ae06571002041fa4a3ee9ed2217938f9a4` |
| 73 | `theorem` | [isDenseInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/isdenseinducing.md) | 689 | `result-track:1c51bf414486722d5de8d9532d5ac994bc94a2a9bc22011bf44340386ad92110` |
| 74 | `theorem` | [denseRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/denserange.md) | 693 | `result-track:521a232c6207cc50b7c7c79ffc18272ec62e2031bea58505dc1cd95366aaa42f` |
| 75 | `theorem` | [dense](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/dense.md) | 697 | `result-track:d282f60f466cdff9014faf4685684c6bb350b2eed40da3f5a78b56568a79d483` |
| 76 | `def` | [coeToLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/coetolp.md) | 704 | `declaration-track:7f99225929d02f75944860cf682e331846a90580653ba2bc05fe06030df7bac9` |
| 77 | `theorem` | [coeFn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/coefn-le.md) | 714 | `result-track:67b4687751f7921f40ba5e80ff86081cf9eaa09e04369605744f6cdd732d70f8` |
| 78 | `theorem` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/coefn-zero.md) | 719 | `result-track:35cbc41428038314f6f289b1c92c4789d69db3013798b401524fc7de6ff5da90` |
| 79 | `theorem` | [coeFn_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/coefn-nonneg.md) | 726 | `result-track:66ac0cf91a87e1e7bd4a3dd1537c78a765a9a9d8ab42a6ff97fbb4c5dfa6ea3c` |
| 80 | `theorem` | [exists_simpleFunc_nonneg_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/exists-simplefunc-nonneg-ae-eq.md) | 729 | `result-track:7ff4abf7817bc6d2025cfe5818a56a5ee12f1d3db53fabb36b167ff627487935` |
| 81 | `def` | [coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/coesimplefuncnonnegtolpnonneg.md) | 742 | `declaration-track:7bca3584b4d8d4033d73dffc743be8510a566f01ac81882b054fbba6f1dfe903` |
| 82 | `theorem` | [denseRange_coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/denserange-coesimplefuncnonnegtolpnonneg.md) | 745 | `result-track:4adce48bf47c13d4885dbe8f045e5a3e1114c9fc8c403007a82977ed5fe0f065` |
| 83 | `theorem` | [Lp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/lp-induction.md) | 814 | `result-track:995bed5fb81fce1f8459ce1e4b21ededb252ae2d2a4497dd11541c49235ea51e` |
| 84 | `theorem` | [MemLp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-induction.md) | 839 | `result-track:e7637cecb4db2694481ccf3165a8e11da18ece88f3e0a8d1763800a3af2d1790` |
| 85 | `theorem` | [MemLp.induction_dense](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/memlp-induction-dense.md) | 868 | `result-track:a0f3cc29328b78c813820105700863940154e7c4f4b64318463eb86c1c950172` |
| 86 | `theorem` | [L1.SimpleFunc.toLp_one_eq_toL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/l1-simplefunc-tolp-one-eq-tol1.md) | 923 | `result-track:dea90e22fa7a10bb92e3c7b10e8326a9a86359a228f587d754ac6343f7642966` |
| 87 | `theorem` | [L1.SimpleFunc.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/l1-simplefunc-integrable.md) | 928 | `result-track:4bf6d03f9e0963ae845e27e6b6e5776500fa9a1704c4b52aaa6d0ef4b341c4c5` |
| 88 | `theorem` | [Integrable.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpPublic.lean/declarations/integrable-induction.md) | 945 | `result-track:81032ec13f9191e212330676f604a6fb77ab7e404b2de61e2ecf1c6eef8b0948` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b02d45d1e2e8ef515c04d45328d9c7cf5efcb9450e2cfdc5a088daf7967263a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SimpleFuncDenseLp/Variantedb3073e9174ca95c857a2cc4a913659a411c6974d3a65286cdb1ea769fc3ad0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
