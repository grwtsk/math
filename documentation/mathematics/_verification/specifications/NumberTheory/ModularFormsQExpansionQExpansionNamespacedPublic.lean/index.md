# Verification target: Modular Forms QExpansion QExpansion Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5d9b086553b7adc6f67e3dc39daeb98c9fba044",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5d9b086553b7adc6f67e3dc39daeb98c9fba044`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean.json)

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
| 1 | `def` | [valueAtInfty](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/valueatinfty.md) | 81 | `declaration-track:b341454606d48e5757c726abc22e4dc64e9b468af92c60fb58d7d263cae6ecc3` |
| 2 | `lemma` | [IsZeroAtImInfty.valueAtInfty_eq_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/iszeroatiminfty-valueatinfty-eq-zero.md) | 83 | `result-track:e47fbb2d8fae66686026de3c96f9803695b98c033130bb7de7465ac1f12fdcc8` |
| 3 | `lemma` | [qParam_tendsto_atImInfty](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qparam-tendsto-atiminfty.md) | 87 | `result-track:ab09e40f37d00ee5f596fc9e8d0147a0808a2e05b62006809be51ee4912f681d` |
| 4 | `def` | [cuspFunction](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction.md) | 96 | `declaration-track:bc0db3e34332e62894721324454b679c1673a9cfeca9e672eadd3f70d1009f02` |
| 5 | `theorem` | [eq_cuspFunction](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/eq-cuspfunction.md) | 99 | `result-track:a4d874a7958b3affb165529663d452b7ad85be2b38c0556530532d6fc95715f9` |
| 6 | `theorem` | [differentiableAt_cuspFunction](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/differentiableat-cuspfunction-source-edition-2.md) | 103 | `result-track:ac16d8418268114ceb23374d4fdcca0ad2dbe9625187fd535b3aba98e959f28e` |
| 7 | `lemma` | [differentiableOn_cuspFunction_ball](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/differentiableon-cuspfunction-ball.md) | 115 | `result-track:684c965703f67a14560766b8c5153dd881fb6ea05d7e556221ef4f791a4d57f3` |
| 8 | `lemma` | [analyticAt_cuspFunction_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/analyticat-cuspfunction-zero.md) | 121 | `result-track:49d9f19db2b9646cecdc70a61c6756e892939f9edf3c008841f77501d0813ce6` |
| 9 | `lemma` | [cuspFunction_apply_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-apply-zero-source-edition-3.md) | 127 | `result-track:3b2c698e8605ac7c7312512e3c2087dad64d9e76478bbb55bbb7ee0709c69f2f` |
| 10 | `theorem` | [periodic_comp_ofComplex](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/periodic-comp-ofcomplex.md) | 140 | `result-track:bf93857d56be78df26b481d136025f30a0d43a1f57e26fb59fd8e72dc413e4a4` |
| 11 | `theorem` | [eq_cuspFunction](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/eq-cuspfunction-source-edition-2.md) | 145 | `result-track:b0d046069f7311a72f18bcdf09c4e7dff9af2d4d2a7984959a4b0703967c996a` |
| 12 | `theorem` | [bounded_at_infty_comp_ofComplex](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/bounded-at-infty-comp-ofcomplex.md) | 156 | `result-track:a67cd9ec1beb88060669224a564a1bdf3696b49f0991cdb81c5af951273319d6` |
| 13 | `theorem` | [differentiableAt_cuspFunction](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/differentiableat-cuspfunction.md) | 160 | `result-track:87186ead6e0e5721d9b8ef3b9fef4ff437745d814dcb70c4c41ca18380252e93` |
| 14 | `lemma` | [analyticAt_cuspFunction_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/analyticat-cuspfunction-zero-source-edition-2.md) | 166 | `result-track:4f59e215bb14a6722db73c778f8e47d7950a727b78dce122d43dfa2ec4d549cc` |
| 15 | `def` | [qExpansion](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion.md) | 179 | `declaration-track:b599c7d755d758aba1a1162ec9c4a057d541bbff8577e1949aa52172ba3d8a9b` |
| 16 | `lemma` | [qExpansion_coeff](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-coeff.md) | 182 | `result-track:f64c00ab528b91384dbfea5ebbb86bf0a6d1e2199100b4c9421881a90606e055` |
| 17 | `lemma` | [qExpansion_coeff_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-coeff-zero-source-edition-2.md) | 186 | `result-track:c9759b6d4c53758aaf8e2af3941d74b5a63f5c85f47183832a878ea47c528edb` |
| 18 | `lemma` | [hasSum_qExpansion_of_norm_lt](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/hassum-qexpansion-of-norm-lt.md) | 192 | `result-track:b7b9abd214f325b757925097951027a5a2bc199a9fc43cf93ca60c62b7e04730` |
| 19 | `lemma` | [hasSum_qExpansion](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/hassum-qexpansion.md) | 202 | `result-track:6eb1636067ae0267e6fd157f027562b314b530152bcf79c06932f7d61df6a07c` |
| 20 | `def` | [qExpansionFormalMultilinearSeries](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionformalmultilinearseries.md) | 216 | `declaration-track:2a57bbbe93269511dbdc927bcd819044b5cb4cc5b969de2f5278424dbd699b02` |
| 21 | `lemma` | [qExpansionFormalMultilinearSeries_coeff](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionformalmultilinearseries-coeff.md) | 220 | `result-track:dc5fb298cda8f997b335b6b3e42f0b4cae39940ffaadabc381c3cc3e7663e476` |
| 22 | `lemma` | [qExpansionFormalMultilinearSeries_apply_norm](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionformalmultilinearseries-apply-norm.md) | 224 | `result-track:7f886dbe7e6a32f9dec591a26ac7f3ec285072c584bfd4af3b930d28fa0e5cc6` |
| 23 | `lemma` | [qExpansionFormalMultilinearSeries_radius](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionformalmultilinearseries-radius.md) | 230 | `result-track:6ca609ce995d678e59f160ce8561e0f10ed9478f0cac45f56f88571c525c9b19` |
| 24 | `lemma` | [hasSum_cuspFunction_of_hasSum_punctured](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/hassum-cuspfunction-of-hassum-punctured.md) | 242 | `result-track:7f5ee80a8c1188bd9b90257a7493c8cbce0c0b9fb0143924c43544734faa3d6a` |
| 25 | `lemma` | [hasFPowerSeriesOnBall_update](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/hasfpowerseriesonball-update.md) | 252 | `result-track:6aaeb2974ca274f8ed70ebb15c405a1d11d9f555426a54ad988574f710d01a6e` |
| 26 | `theorem` | [tendsto_atImInfty_of_hasSum_qExpansion](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/tendsto-atiminfty-of-hassum-qexpansion.md) | 276 | `result-track:161510e47fdab3e1c1346e9146a7201cacf298e27daa5c237e645f19ac98e585` |
| 27 | `theorem` | [isBoundedAtImInfty_of_hasSum_qExpansion](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/isboundedatiminfty-of-hassum-qexpansion.md) | 293 | `result-track:33f1e709be7dceef1bdda28c33841fee3bfd7dbe34e25c00a6382b016fa376c6` |
| 28 | `lemma` | [hasFPowerSeriesOnBall_cuspFunction](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/hasfpowerseriesonball-cuspfunction.md) | 298 | `result-track:f598ea5e63d653e4fd325e469ddc5a1801dc961151b949225070221671a7dbc8` |
| 29 | `lemma` | [qExpansion_coeff_eq_circleIntegral](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-coeff-eq-circleintegral.md) | 317 | `result-track:2b20d8d41d4adff245803e57294cbd8a3ed83d1894701c04e7b87e12854f9858` |
| 30 | `lemma` | [qExpansion_coeff_eq_intervalIntegral](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-coeff-eq-intervalintegral.md) | 332 | `result-track:0129a74c168be2d0b77786f1c48ea919ec629e4746bf8390a297cfb2e16f83a4` |
| 31 | `theorem` | [exp_decay_sub_atImInfty](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/exp-decay-sub-atiminfty-source-edition-2.md) | 362 | `result-track:4933668ec812037d5c08638b365fd39287722e0d6c5abc6895c1b3fa1dbe2b29` |
| 32 | `lemma` | [zero_at_infty_comp_ofComplex](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/zero-at-infty-comp-ofcomplex-source-edition-2.md) | 379 | `result-track:b13be0cac5836e7d14ebbe6ef73743ffff19b0bb4cfcfbe7388fe4e45edc6906` |
| 33 | `theorem` | [cuspFunction_apply_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-apply-zero-source-edition-2.md) | 383 | `result-track:2adaf0dcd7fee04c40f8811f839e421b892380942962868caac0d5a6c97be8d0` |
| 34 | `theorem` | [exp_decay_atImInfty](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/exp-decay-atiminfty-source-edition-3.md) | 387 | `result-track:75543bb57069770a1cba906214a6fa53cba178fbf2188bdeea03b87662520ab4` |
| 35 | `lemma` | [qExpansion_coeff_eq_intervalIntegral](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-coeff-eq-intervalintegral-source-edition-2.md) | 396 | `result-track:5a07826fe76628ce4908b78f582f8a1bdea51d67d884f8d30a92cfa12c6031e9` |
| 36 | `theorem` | [tendsto_atImInfty](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/tendsto-atiminfty.md) | 405 | `result-track:e94f71b3e3eb879c0d251b571af319e40383234fce43a4714801e81e942d34f0` |
| 37 | `theorem` | [exp_decay_sub_atImInfty'](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/exp-decay-sub-atiminfty.md) | 416 | `result-track:48b6c91fd480e8329a4107f157d7e3cc1ad6cc1cf80f2eabe2fd0ae013a4658b` |
| 38 | `theorem` | [exp_decay_atImInfty'](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/exp-decay-atiminfty-source-edition-4.md) | 429 | `result-track:be7fc74b0ffa7f7532a2aecacb021e0c8ac21e857ce6c81d6c2b0c767840cf7a` |
| 39 | `theorem` | [zero_at_infty_comp_ofComplex](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/zero-at-infty-comp-ofcomplex.md) | 443 | `result-track:21ad171f9961f8100220ebccdf3f6087a5e2787bf9fe93aca4138fb543e28411` |
| 40 | `theorem` | [cuspFunction_apply_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-apply-zero.md) | 447 | `result-track:04a0656dc9657875557e8a5f7f86747bfd69f465f1fe3ef7182534eb346ba35c` |
| 41 | `theorem` | [qExpansion_coeff_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-coeff-zero.md) | 453 | `result-track:5bd7579c2c34fd2ea40d25d980b0cd91b4b900d5fb8bd7b59e535e7e4dd5ed0a` |
| 42 | `theorem` | [exp_decay_atImInfty](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/exp-decay-atiminfty-source-edition-2.md) | 457 | `result-track:7391348cc514fdb0df3d844cfe8704a21c50f436ba40313754bb4f570dafccd1` |
| 43 | `theorem` | [exp_decay_atImInfty'](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/exp-decay-atiminfty.md) | 463 | `result-track:623afdcba74a5bf039d0190e6b7f6062ad77a1d2dab0cd0924259fbf145b0a85` |
| 44 | `theorem` | [cuspFunction_mul_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-mul-zero.md) | 474 | `result-track:33959d74b4f83b626b8f420f9cb9b96718eb3c7ba79976fd9a1464c7d77d18ae` |
| 45 | `lemma` | [qExpansion_mul_coeff_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-mul-coeff-zero.md) | 480 | `result-track:63187c0d3b81f691ed5d7da311f841925d2a782907918227ac413cccc41ea78a` |
| 46 | `lemma` | [cuspFunction_mul](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-mul.md) | 485 | `result-track:02958e34cee20b7275a230cf2c817fc3ac758decaaeeae14f90ca1c8d97399b6` |
| 47 | `lemma` | [cuspFunction_smul](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-smul.md) | 493 | `result-track:70bec1756c12e5c24e044dbd4e7d7ca1daaf4e7c723e500a09673dd90ec104f5` |
| 48 | `lemma` | [cuspFunction_neg](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-neg.md) | 497 | `result-track:53bf8f57f03a9a000cfd7c4fa914a04a3439515a94f2600a0e550cd5a6a9c1b7` |
| 49 | `lemma` | [cuspFunction_add](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-add-source-edition-2.md) | 501 | `result-track:429cb73accc3abb1400fb4d5dbd6da589635a7b2f7793019f9aa4f0f4c8d585a` |
| 50 | `lemma` | [cuspFunction_sub](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-sub-source-edition-2.md) | 506 | `result-track:c531d7be20470a67dfe63c8f345640fdc7c6921d267b2fe9e9d95fbd19473d73` |
| 51 | `lemma` | [qExpansion_mul](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-mul-source-edition-2.md) | 511 | `result-track:867bc16c6d405b58403c1e6d856b9850095718cb1d6fbab32fc803306f2af7b5` |
| 52 | `lemma` | [qExpansion_smul](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-smul-source-edition-2.md) | 522 | `result-track:d04af2f7a17c47400f6f5964286a6187281e9ca29fe0c10b225c83bf9bd73c7f` |
| 53 | `lemma` | [qExpansion_neg](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-neg-source-edition-2.md) | 528 | `result-track:eb319463beda76d09f721281a3ff6411fef90d2533eaca2a4d6a8a90c909dbe7` |
| 54 | `lemma` | [qExpansion_add](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-add.md) | 532 | `result-track:4b43c49e9dc277d9e94ee62b11ea68c9c1a7645fe5084d9b2f84ce16c0186239` |
| 55 | `lemma` | [qExpansion_sub](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-sub.md) | 539 | `result-track:36893d8749bce9eb1de298828cf8748ccc815d77bc49a65ede9ce134e48e073c` |
| 56 | `lemma` | [qExpansion_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-zero.md) | 545 | `result-track:b28d1d8d315bf8696b5c42f1036ca48e119fb6b7c884d95887fdcca2d11458db` |
| 57 | `lemma` | [qExpansion_eq_zero_iff](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-eq-zero-iff.md) | 550 | `result-track:1b88b395dfa2d047aebd1b8fbe51e36b8c53a1d4f5f35dd689fa88dc40298a8f` |
| 58 | `lemma` | [qExpansion_one](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-one-source-edition-2.md) | 560 | `result-track:67c95ab7553f8f5f9b986a9145e0b23752eab018530f8e0bbb80373abf678665` |
| 59 | `lemma` | [cuspFunction_smul](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-smul-source-edition-2.md) | 575 | `result-track:ba90a6cff5664ce47f9e7542afec90cf56b7997df2d94ab92c1eb4cc4642b54f` |
| 60 | `lemma` | [cuspFunction_neg](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-neg-source-edition-2.md) | 579 | `result-track:a66a2589225a5492de16220e7489bccd3716d5d4744b620013e7e0c935addce1` |
| 61 | `lemma` | [cuspFunction_add](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-add.md) | 583 | `result-track:1dbfc4f613748baa709c0a846384a31d2363aecd4e72371d24f8ac5428c53e34` |
| 62 | `lemma` | [cuspFunction_sub](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-sub.md) | 589 | `result-track:bda1ff1a39ec524fb20d89a52b4afcede6ded6ccf255ddf1e43e4bf35e8cdade` |
| 63 | `lemma` | [cuspFunction_mul](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/cuspfunction-mul-source-edition-2.md) | 595 | `result-track:dbf9b65131a1ff931b4d631fd01a7cf8b87bbf63d543817a99ca3d82073f8ea0` |
| 64 | `lemma` | [qExpansion_smul](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-smul.md) | 601 | `result-track:2f44555fc7077ea5ae9ddadf96fbb69183b2c91f48b2e1fa9dcdcdd2d1b33609` |
| 65 | `lemma` | [qExpansion_neg](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-neg.md) | 605 | `result-track:5551a90704d6e29e94c325ae55f21206f61ea09db7bee3e070b8dbe28f72fce5` |
| 66 | `lemma` | [qExpansion_add](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-add-source-edition-2.md) | 609 | `result-track:5d4e4d6e948b7c81ce547ee06e5da31d1d4f647c759db2fe6226f6a214f86f4e` |
| 67 | `lemma` | [qExpansion_sub](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-sub-source-edition-2.md) | 615 | `result-track:d1516f59ae7352c69eb173f3313884dccfaea62aba0b30563837dfaf59227b43` |
| 68 | `lemma` | [qExpansion_mul_coe](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-mul-coe.md) | 623 | `result-track:65cf79309acb419650e066707f76dca7d62c8bbf04191167a0de1e5b62c1b8dd` |
| 69 | `lemma` | [qExpansion_mul](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-mul.md) | 629 | `result-track:282e30d6a3d6326d3f5d376b5b3c7b118f86378182feb937a24204e3dd72d987` |
| 70 | `lemma` | [qExpansion_eq_zero_iff](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-eq-zero-iff-source-edition-2.md) | 634 | `result-track:e128e2c8d4d7be2e0042a2f3ec1fbd34d2a920f3a5c8d9db3ba135591b1e3d72` |
| 71 | `lemma` | [qExpansion_one](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-one.md) | 639 | `result-track:2f4812935f202dffb1dd7f10d4afe65e7cdd6d510123371c52bbd736957c865c` |
| 72 | `lemma` | [qExpansion_mcast](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-mcast.md) | 644 | `result-track:575b3edde6a06298cd9a809e14096edaf32926ce092753c5e3930df0c39a9722` |
| 73 | `lemma` | [qExpansion_pow](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-pow.md) | 648 | `result-track:319b5150ef4fc2d0ff317cca15b61424e76d16291a150c48c9d732bb000a7c0f` |
| 74 | `lemma` | [mul_ne_zero](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/mul-ne-zero.md) | 658 | `result-track:a467e7e94f39987d09daab4c6bee0934e553f3922d60bd3af7b0f4a5163185be` |
| 75 | `def` | [qExpansionAddHom](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionaddhom.md) | 667 | `declaration-track:bdaf9456aadb638c71b89275c1d7750e013836cf6d68f2c028dcbc68b51fd174` |
| 76 | `lemma` | [qExpansionAddHom_apply](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionaddhom-apply.md) | 674 | `result-track:af341a2ed75dddf3c17cbdfa83920684cc280c8ffe19f22c996026830788afc1` |
| 77 | `lemma` | [qExpansion_injective](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-injective.md) | 678 | `result-track:815e32276c64d46a65cc95f09555295ab1134420bed4b549a951088124c6c3b9` |
| 78 | `lemma` | [qExpansion_inj](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-inj.md) | 684 | `result-track:95a6cf38f7cb911115d47c0a650c2146deeee5f30ef84967c536f9311e68f354` |
| 79 | `def` | [qExpansionRingHom](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionringhom.md) | 690 | `declaration-track:3488feb279335a7e8e8725481f0fcf4f5de9dbd7a2f2b58d97732f1fe32dd351` |
| 80 | `lemma` | [qExpansionRingHom_apply](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionringhom-apply.md) | 696 | `result-track:aa5e40a9c9e0b132e6cbc9a9bb2295434971a87a519b0f42c93f4551f743d94f` |
| 81 | `def` | [qExpansionAlgHom](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionalghom.md) | 704 | `declaration-track:f389ca394b63f4c4798fdac5bcfaa636f2dea42f5dee2e6d94026428f273c7ff` |
| 82 | `lemma` | [qExpansionAlgHom_apply](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionalghom-apply.md) | 714 | `result-track:04819103d5c1bdacd6d0b5215afcdd3be1c8f0e1e9bebbb6166e62d61008c3c3` |
| 83 | `lemma` | [qExpansionAlgHom_toRingHom](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansionalghom-toringhom.md) | 721 | `result-track:ac8fcdfbd529d45696fdd403851993204cacb398d98912c44a2e8585f31bfc98` |
| 84 | `lemma` | [qExpansion_of_mul](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-of-mul.md) | 726 | `result-track:b854855be7191a03459ad77662ea7ceaceb00f088db8b85f94bd5cd5d536f29a` |
| 85 | `lemma` | [qExpansion_of_pow](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-of-pow.md) | 732 | `result-track:4a26dc236d671ea8687ed108862adbd8e3944bb4a95b7332532ad99059234f4e` |
| 86 | `lemma` | [hasSum_qExpansion](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/hassum-qexpansion-source-edition-2.md) | 740 | `result-track:ef204e9b8ebb3b535e11164a8af45c942e2c3f9137135a54271a8898f2fb1684` |
| 87 | `lemma` | [hasFPowerSeries_cuspFunction](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/hasfpowerseries-cuspfunction.md) | 782 | `result-track:f116178486a49ee688a14dcdb894c9dc31ef82382feb1b76cf72395645f50a0b` |
| 88 | `lemma` | [qExpansion_coeff_unique](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/qexpansion-coeff-unique.md) | 792 | `result-track:4ce09ecc58a53c2104e32dc4cd2caeb39d948d7505ec13097ae9ecf04642319e` |
| 89 | `lemma` | [ModularFormClass.qExpansion_coeff_unique](../../../../NumberTheory/ModularFormsQExpansionQExpansionNamespacedPublic.lean/declarations/modularformclass-qexpansion-coeff-unique.md) | 802 | `result-track:2b5226e0d949f51af4372c98a3306738ea1206de38f04fcf1b0bc3d826f0b327` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab606c16d051f4359df48ca5f89609721ed75b0fc05268ef41f362693312f978 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/QExpansion/Variantcd8f55d6fbd25954840901dae99e9de92b230a31190c8e3921dc527a429a4e60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
