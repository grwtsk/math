# Verification target: Analytic Order Order Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91c0435f282bf65f8d121392325982d509863ccf",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91c0435f282bf65f8d121392325982d509863ccf`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [analyticOrderAt](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat.md) | 55 | `declaration-track:3d4a0f8e94bb49c1f4fc2dcc51fb0cc15e17a326dfa0c0797e18e630ff8cc6d2` |
| 2 | `def` | [analyticOrderNatAt](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticordernatat.md) | 69 | `declaration-track:32b38547db42890f9b74ebe06c1ee842f58753a7253d888802fd85208b6e2542` |
| 3 | `lemma` | [analyticOrderAt_of_not_analyticAt](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-of-not-analyticat.md) | 72 | `result-track:8113f5a79bbcb0cbe2d227f2a9d79c005ced5a62f405b43229db9cda622ced7c` |
| 4 | `lemma` | [analyticOrderNatAt_of_not_analyticAt](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticordernatat-of-not-analyticat.md) | 76 | `result-track:5898a6ae8120e80ce5b6a9aa9b2cdafd6cbb7accd7abccba8fe6e1f5acb60a0d` |
| 5 | `lemma` | [Nat.cast_analyticOrderNatAt](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/nat-cast-analyticordernatat.md) | 79 | `result-track:fc300bc36549b70a511be54de645d14915a9409de3a893d8b869562ae385249f` |
| 6 | `lemma` | [analyticOrderAt_eq_top](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-eq-top.md) | 83 | `result-track:7de1f1139d50acd75d4cd868e0bbb36f06a7db98171774fbf60804452745f273` |
| 7 | `lemma` | [eventuallyConst_iff_analyticOrderAt_sub_eq_top](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/eventuallyconst-iff-analyticorderat-sub-eq-top.md) | 87 | `result-track:c48527fc26632c9304be32470164c8ddc16767b7d16cf4fabd2e0d67f25024df` |
| 8 | `lemma` | [AnalyticAt.analyticOrderAt_eq_natCast](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-analyticorderat-eq-natcast.md) | 94 | `result-track:f6abd4f2df08885c05d1effbf66e640e6eb2911c83e5af5c7836b4549b8e63a7` |
| 9 | `lemma` | [AnalyticAt.analyticOrderNatAt_eq_iff](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-analyticordernatat-eq-iff.md) | 109 | `result-track:fc30fff488d2fbe39f9bd545a5e761a6f62b7b4a85887375b970cb4c61cf0ec3` |
| 10 | `lemma` | [AnalyticAt.analyticOrderAt_ne_top](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-analyticorderat-ne-top.md) | 121 | `result-track:8f645a93b4545a21ecf5d6cfb66dbe6b7df863f3aa3baa3735b544b83a4c8d8f` |
| 11 | `lemma` | [analyticOrderAt_eq_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-eq-zero.md) | 128 | `result-track:c37e7c3fb2ae3dceaf65d88f78f5c616d582c93f7fa7ecc1d2e552da3579a027` |
| 12 | `lemma` | [analyticOrderAt_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-ne-zero.md) | 137 | `result-track:e68f78a05b4e8b4aec3e6497af6e529ac9d27bdf96761fb7f87847234baa4cd0` |
| 13 | `lemma` | [AnalyticAt.analyticOrderAt_eq_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-analyticorderat-eq-zero.md) | 141 | `result-track:f6df3e862e686749450f11a2850acad797167b052e300c7de05680c50ad1b27f` |
| 14 | `lemma` | [AnalyticAt.analyticOrderAt_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-analyticorderat-ne-zero.md) | 145 | `result-track:f6e29225670e793ea5c3f0e7bb42d4143e36d750ec9605764b022b0702903661` |
| 15 | `lemma` | [apply_eq_zero_of_analyticOrderAt_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/apply-eq-zero-of-analyticorderat-ne-zero.md) | 149 | `result-track:89fa7c7b320feb745947673fb58b05a1a1598140e19882a4d3a8780950610634` |
| 16 | `lemma` | [apply_eq_zero_of_analyticOrderNatAt_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/apply-eq-zero-of-analyticordernatat-ne-zero.md) | 154 | `result-track:4cafc3a5e9a0369639e8df74e8380d21eed1dbec71673fbe29980b6f4e62e3b1` |
| 17 | `lemma` | [natCast_le_analyticOrderAt](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/natcast-le-analyticorderat.md) | 160 | `result-track:0ec1bd0b45b85cdb59bda46583d3714b82e620cd7478883a5bfe17ac93e9b88b` |
| 18 | `lemma` | [analyticOrderAt_congr](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-congr.md) | 183 | `result-track:4233b8160245cefa1b321e8552d4544e6024bafae5ff486eaf40a42e2857ab4b` |
| 19 | `lemma` | [analyticOrderAt_id](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-id.md) | 193 | `result-track:021c24f0f33292789bfb289c06af52ce18d4fae282791aeff5949e5ad890f5d1` |
| 20 | `lemma` | [analyticOrderAt_neg](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-neg.md) | 196 | `result-track:fc9164574edaf617469b4d127ba3e4a58d3d5545b2135f390085731d4fec7519` |
| 21 | `theorem` | [le_analyticOrderAt_add](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/le-analyticorderat-add.md) | 205 | `result-track:14bd46ec10e6f77a3a8055f9e738daecab6af49dfe9bc3b38939457374c599e0` |
| 22 | `lemma` | [le_analyticOrderAt_sub](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/le-analyticorderat-sub.md) | 216 | `result-track:8360c70418d20e295d2a703621a61455c2e37182c6acfa74877b51e19f50eb94` |
| 23 | `lemma` | [analyticOrderAt_add_eq_left_of_lt](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-add-eq-left-of-lt.md) | 220 | `result-track:dbc84c371c28ae2a1ef32ce6053bcf81275f16d859a54fd3ce346554f6554cf9` |
| 24 | `lemma` | [analyticOrderAt_add_eq_right_of_lt](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-add-eq-right-of-lt.md) | 225 | `result-track:3513c0a5736663444f657fb4d19aad5f1477bfc7e1cebf53999ec5c93f7ae4bd` |
| 25 | `lemma` | [analyticOrderAt_add_of_ne](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-add-of-ne.md) | 231 | `result-track:c9093ca624410237b06e6abd246a29f006b2f04a54e797774f5405ec18d61224` |
| 26 | `lemma` | [analyticOrderAt_smul_eq_top_of_left](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-smul-eq-top-of-left.md) | 237 | `result-track:625c50af3efc2e4506f7ac9deca37ade99c4f598922ce410253942b1128fc288` |
| 27 | `lemma` | [analyticOrderAt_smul_eq_top_of_right](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-smul-eq-top-of-right.md) | 243 | `result-track:27272be104e71ced9c323246a4d0a44c0e4f57999aaad34728af61c954de399c` |
| 28 | `lemma` | [analyticOrderAt_smul](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-smul.md) | 250 | `result-track:75c92b9de98e0e1b026860822e1a8d3e0ced4ed4e0db5c0aa1c084591b5c6daf` |
| 29 | `theorem` | [AnalyticAt.analyticOrderAt_deriv_add_one](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-analyticorderat-deriv-add-one.md) | 270 | `result-track:a8036a11b1227ffe907165f00363a47d589966f58c69a8eafb61732aef36bd60` |
| 30 | `theorem` | [AnalyticAt.analyticOrderAt_sub_eq_one_of_deriv_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-analyticorderat-sub-eq-one-of-deriv-ne-zero.md) | 312 | `result-track:1a9768a0bc916003814c53d1f61b09beb3cbb15b1cccae5899ebcc1f811d4cce` |
| 31 | `theorem` | [AnalyticAt.analyticOrderAt_eq_one_of_zero_deriv_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-analyticorderat-eq-one-of-zero-deriv-ne-zero.md) | 336 | `result-track:50bffaf9e27f321b3ea0315c1c43a3fdaabac9c1c341d0f63e373a3a03265982` |
| 32 | `lemma` | [natCast_le_analyticOrderAt_iff_iteratedDeriv_eq_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/natcast-le-analyticorderat-iff-iteratedderiv-eq-zero.md) | 341 | `result-track:48d016c45c9409fb45b79c53b811b8cb289f2ab72e6c3b926b4bc670cd1b3b80` |
| 33 | `lemma` | [analyticOrderAt_deriv_of_pos](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-deriv-of-pos.md) | 354 | `result-track:03c40fe63f1b36e647c5abb6583f78a90c2af4a9f1a9fffa73e2ff7287bc0d27` |
| 34 | `lemma` | [analyticOrderAt_iterated_deriv](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-iterated-deriv.md) | 363 | `result-track:2ffdf22c3f3d7b03e165890447cd5c04f009292425de115a5066e1d607c4e29d` |
| 35 | `lemma` | [AnalyticAt.exists_eventuallyEq_sum_add_pow_mul](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-exists-eventuallyeq-sum-add-pow-mul.md) | 386 | `result-track:291323cfea67620dc18d7fffd40e022dc0c40a92a0ceb4d77ae0ad86ff45924c` |
| 36 | `lemma` | [AnalyticAt.exists_eq_sum_add_pow_mul](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-exists-eq-sum-add-pow-mul.md) | 410 | `result-track:4830687c7d09018852aa3801d1b8a34cd09cec9578b10a319cca5f9e58923d54` |
| 37 | `lemma` | [analyticOrderAt_deriv_ge_iff](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-deriv-ge-iff.md) | 435 | `result-track:3777d510aca12d65c8e37c31c32c714e5d79896aa4b6ab5755a1813b2bea934c` |
| 38 | `lemma` | [analyticOrderAt_deriv_eq_top_iff_of_eq_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-deriv-eq-top-iff-of-eq-zero.md) | 447 | `result-track:e2bc4d96e93e9d99111722bd34d31e3ca557d50abae286c2feb1c4b34769f628` |
| 39 | `lemma` | [analyticOrderAt_deriv_eq_iff](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-deriv-eq-iff.md) | 454 | `result-track:571958feeabb3d1c8c59146dff98e366226a21c5cd1c9ee3e8dc6e2ffa43f619` |
| 40 | `lemma` | [analyticOrderAt_eq_nat_iff_iteratedDeriv_eq_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-eq-nat-iff-iteratedderiv-eq-zero.md) | 465 | `result-track:53fb76011afe62ec074f26542540d9378aed78e60ec4eec997632b3f3651a8d5` |
| 41 | `lemma` | [analyticOrderAt_centeredMonomial](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-centeredmonomial.md) | 490 | `result-track:b493fec718b32645c108b269bfdbf170246ceba3c0ace9da56e47b69e53f2458` |
| 42 | `theorem` | [analyticOrderAt_id_sub_const_self](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-id-sub-const-self.md) | 496 | `result-track:cf26ab9d406ed50e7a9bc73e93a7673e90ad20dab2475cf2d34572af4e4c4f46` |
| 43 | `theorem` | [analyticOrderAt_id_sub_const_of_ne](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-id-sub-const-of-ne.md) | 502 | `result-track:fa2b5353269c0110c8102c3655045725b3836f0b92f982bcc774d02d7ea3b969` |
| 44 | `lemma` | [analyticOrderAt_mul_eq_top_of_left](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-mul-eq-top-of-left.md) | 510 | `result-track:37b427132e5e291f549067199218b144038719f6a2ef542ea7b4a6f89346b7be` |
| 45 | `lemma` | [analyticOrderAt_mul_eq_top_of_right](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-mul-eq-top-of-right.md) | 513 | `result-track:4452b4d6ed4a4b0e4cd86a5d90afdaf7285fc53ceeb7da55337dcf28c56ff69a` |
| 46 | `theorem` | [analyticOrderAt_mul](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-mul.md) | 517 | `result-track:d211a4e1d977534a056ccb3c9988a33fded3722c73f92761a6c7440c9de8d63b` |
| 47 | `theorem` | [analyticOrderNatAt_mul](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticordernatat-mul.md) | 522 | `result-track:b025b4208d22469e091af6266033287db4ed890cbad88ccdeab4eedff6356a0d` |
| 48 | `theorem` | [analyticOrderAt_pow](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-pow.md) | 528 | `result-track:130de9f700e76fdd554c32d923f71a47451ed6f4108f6c072298dee6bb559085` |
| 49 | `theorem` | [analyticOrderNatAt_pow](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticordernatat-pow.md) | 534 | `result-track:77055520f0f9c7969bc76c9755eb8307c9a2e63c47e50e9c772a072711aad422` |
| 50 | `lemma` | [AnalyticAt.analyticOrderAt_comp](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticat-analyticorderat-comp.md) | 548 | `result-track:9c9c121845998f80463061ca1871a1713c10532b867d267b09ba58e902530150` |
| 51 | `lemma` | [analyticOrderAt_comp_of_deriv_ne_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-comp-of-deriv-ne-zero.md) | 581 | `result-track:1f218fa4481b49ef47954e7b5fca02509edb3070156039401caab4ce34a43841` |
| 52 | `theorem` | [isClopen_setOfPred_analyticOrderAt_eq_top](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/isclopen-setofpred-analyticorderat-eq-top.md) | 600 | `result-track:e72838871784c3e6099121d4cd7d2e3cfd13a0430fee74624c607f074dbc176d` |
| 53 | `theorem` | [exists_analyticOrderAt_ne_top_iff_forall](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/exists-analyticorderat-ne-top-iff-forall.md) | 637 | `result-track:97c4fc0f32df47fe9da4a207cc8337c88a2fdc2eedd191b6f9c12ed3be5ea8b9` |
| 54 | `theorem` | [analyticOrderAt_ne_top_of_isPreconnected](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-ne-top-of-ispreconnected.md) | 647 | `result-track:de52670aff0547da502c92b52a82c8ab2e8ed366b0b6e87032e69c73ee4d347c` |
| 55 | `theorem` | [codiscrete_setOfPred_analyticOrderAt_eq_zero_or_top](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/codiscrete-setofpred-analyticorderat-eq-zero-or-top.md) | 655 | `result-track:efc4b1d603f99c38536a76bed2c84f5d8bc86e5263f20bb73141e159af8b9da6` |
| 56 | `theorem` | [codiscreteWithin_setOfPred_analyticOrderAt_eq_zero_or_top](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/codiscretewithin-setofpred-analyticorderat-eq-zero-or-top.md) | 674 | `result-track:0f3754ac46be5d842969b79eaa6da0d72cb5c9096d048006ca0c24d9a0f57a60` |
| 57 | `theorem` | [preimage_zero_mem_codiscreteWithin](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/preimage-zero-mem-codiscretewithin.md) | 695 | `result-track:c05243d22a550f2a51a4a7c5ed427665a3d8602dfbd696527ebe2c6c368b7643` |
| 58 | `theorem` | [preimage_zero_mem_codiscrete](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/preimage-zero-mem-codiscrete.md) | 708 | `result-track:3a2bd01025e4bf9e5cc5fdb4ace4167df5aaae2569583a3f15c53059ae8a89f5` |
| 59 | `lemma` | [analyticOrderAt_eq_top_iff_eq_zero](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/analyticorderat-eq-top-iff-eq-zero.md) | 713 | `result-track:9be1e7b8c6ff3c32e38d8ecab6efc0a23f36934071ca3d736e8bdd42485856d6` |
| 60 | `lemma` | [Analytic Order Order Namespaced Public](../../../../FunctionalAnalysis/AnalyticOrderOrderNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-analyticorderat-v.md) | 719 | `result-track:407903a9fc428a5e29f6b70637ceb1292747b036b0e303bec1fb12e3096bc752` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2e0940ea6ce82b08a5045b73d8e997e4bf7f394049e2692217fb74daeab7cc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Order/Variantd202218fb4353ea9c3c2d83523d826d89d5b8980f734eb68bcd29e9ada503faa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
