# Verification target: Log Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "213c1a0fd9c778d656fadcb61775e45d46549c1e",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `213c1a0fd9c778d656fadcb61775e45d46549c1e`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean.json)

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
| 1 | `def` | [log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log.md) | 52 | `declaration-track:d53c07f43bb9a6936602d90f26f27649b2869231d7b73aaf1a92874af5894ece` |
| 2 | `theorem` | [log_of_ne_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-of-ne-zero.md) | 55 | `result-track:deb4eb812af094607cdfe577edefac0d3ad0ccb240abbcc53d3d1ee363845b80` |
| 3 | `theorem` | [log_of_pos](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-of-pos.md) | 58 | `result-track:ff8c2793df9a3caf5d01fe5ad2f2903d5280135f733a3bf555b81dfdb3fea9e7` |
| 4 | `theorem` | [exp_log_eq_abs](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/exp-log-eq-abs.md) | 64 | `result-track:499bd804345b0801fec3cafe54946478020b8ee5555273f00906908e9d03df7e` |
| 5 | `theorem` | [exp_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/exp-log.md) | 67 | `result-track:cff31191d99614f37f38c236b44062439cc27cd34d15a0fb0aede3e67e70dfd8` |
| 6 | `theorem` | [exp_log_of_neg](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/exp-log-of-neg.md) | 71 | `result-track:f41c2149862dbf1bc73abac59c9832f7538fed9cf3709b7355ab82a95ae865d9` |
| 7 | `theorem` | [le_exp_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/le-exp-log.md) | 75 | `result-track:4f28247a92826fd9a8b2dcda1d5b9fbae1a358a7a15a1f1aa2c8b0eb7019f31e` |
| 8 | `theorem` | [log_exp](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-exp.md) | 83 | `result-track:8e3ef82132a540cab878bfb64836e55f87ae11614df04b895dadb5bfd65695a1` |
| 9 | `theorem` | [log_comp_exp](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-comp-exp.md) | 86 | `result-track:671575682447b907cf9b99f1fc19781061e0f0c3ab2025f31238bd7f71edc53f` |
| 10 | `theorem` | [exp_one_mul_le_exp](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/exp-one-mul-le-exp.md) | 88 | `result-track:94363569c3a1eedf65fc9325416b99bc21a72c78f82570ae777c6d90aeea79dd` |
| 11 | `theorem` | [two_mul_le_exp](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/two-mul-le-exp.md) | 94 | `result-track:ae53f61f57f7c1ff066c38d3af47c78797cf3a64c0dede0c89441ec614212e7b` |
| 12 | `theorem` | [surjOn_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/surjon-log-source-edition-2.md) | 102 | `result-track:d888790e89a84b6b3781eda6ec001895a224f4e6023a58a506e23334b60c2b94` |
| 13 | `theorem` | [log_surjective](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-surjective.md) | 104 | `result-track:b7844f88df7df5de520021b3e2ac28d5054a09da50f5f77239351b47f72c1a7a` |
| 14 | `theorem` | [range_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/range-log.md) | 107 | `result-track:2f2df58ed6ed33fa2228e39a83e4f64928a3362e77e684cde5c9de191c6f18f3` |
| 15 | `theorem` | [log_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-zero.md) | 111 | `result-track:3df27610dbdad84a6b47e96abacb05986129f9ef0bd4ac7d50badad10553bd51` |
| 16 | `theorem` | [log_one](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-one.md) | 115 | `result-track:82d2b079a2fdfccfbdfca2d94ab2fd7674d7b156be0834a73f76fa04610ca9eb` |
| 17 | `lemma` | [log_div_self](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-div-self.md) | 119 | `result-track:79e3e67302a2a7e538900219eac36f4e1405cd30fbeeef5342d857d24926f2bc` |
| 18 | `theorem` | [log_abs](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-abs.md) | 123 | `result-track:0c399f16784282ea4e01862deff4728105b702f40d903825595b6900c27657b9` |
| 19 | `theorem` | [log_neg_eq_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-neg-eq-log.md) | 129 | `result-track:89db1240e558fabf11e51209a210bbc310ad63275cdca2d5e90c1ca5301b2ecf` |
| 20 | `theorem` | [sinh_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/sinh-log.md) | 131 | `result-track:f81a0011d6ad36dcdc12c68fdcfc06922a674b8816a35119f0a42ae1419b855c` |
| 21 | `theorem` | [cosh_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/cosh-log.md) | 134 | `result-track:8085d5e1fa814146e22aa94f5556b482df10703b84043c0036796992177bd440` |
| 22 | `theorem` | [surjOn_log'](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/surjon-log.md) | 137 | `result-track:a1c05fb6a9a0f6274848a5353c012c8870908bd677e0d24d17f62b02c3b81293` |
| 23 | `theorem` | [log_mul](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-mul.md) | 141 | `result-track:09cbab6f417d4cba6cc3b6e880d1f6c7cac1200fc2c2b810d465b39d4ad1fb1a` |
| 24 | `theorem` | [log_div](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-div.md) | 146 | `result-track:1d5e239f20f94b11c0913b32e9f0d5e7ad627a2c65e50b16fe11067ff00f4f1d` |
| 25 | `theorem` | [log_inv](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-inv.md) | 151 | `result-track:163b19d8d481faf6fe0a00f660eee606d5fcd87c33b2fe11ece0d60a1beb2377` |
| 26 | `theorem` | [log_le_log_iff](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-le-log-iff.md) | 155 | `result-track:20150153646d730d3ce4fc67ffa88e9583de819aef782bd65c414ecc3a3eb825` |
| 27 | `lemma` | [log_le_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-le-log.md) | 159 | `result-track:5680a57b414aba3bd98dfc489eae7324c801daa0903c69fac5cbf9e08714d7a3` |
| 28 | `theorem` | [log_lt_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-lt-log.md) | 163 | `result-track:342921d5745c5604002cf8ebba09c123573332ce6716df195ebe44fef61cab75` |
| 29 | `theorem` | [log_lt_log_iff](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-lt-log-iff.md) | 166 | `result-track:67f2b517c98a585138b695046e3f01d21b0557aec2f1a9937efe36a793c1a3d6` |
| 30 | `theorem` | [log_le_iff_le_exp](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-le-iff-le-exp.md) | 169 | `result-track:17d21e9eda8e91d7c24d91cf11e34b7ef2ccf232edc58276e67ebd241d2b7468` |
| 31 | `theorem` | [log_lt_iff_lt_exp](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-lt-iff-lt-exp.md) | 171 | `result-track:329486d8d03ad70debcd5ea856c739bd186b8dbdeb84396fd64c99d6c5be6bdf` |
| 32 | `theorem` | [le_log_iff_exp_le](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/le-log-iff-exp-le.md) | 173 | `result-track:0d22527d1818d4278e2faa15f1bd4f7d15bd01d04ba6f632378964082375d134` |
| 33 | `theorem` | [lt_log_iff_exp_lt](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/lt-log-iff-exp-lt.md) | 175 | `result-track:f99464f202b677899618e02cf11dacdc64f75695919e0e818ffcd6a6d65dccec` |
| 34 | `lemma` | [le_exp_of_log_le](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/le-exp-of-log-le.md) | 178 | `result-track:4bea63239a0814607618a8a22d72bd53934327279eeec439f1a8384dec44db02` |
| 35 | `lemma` | [lt_exp_of_log_lt](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/lt-exp-of-log-lt.md) | 184 | `result-track:348f92279f38031c826367c38758aae73887ba3d3800768a2d35bd8ceec18ead` |
| 36 | `theorem` | [log_pos_iff](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-pos-iff.md) | 189 | `result-track:07eaee091f1c26b52542113ad1a29708a5d29403b68dd8ae10c5a330595f06c3` |
| 37 | `theorem` | [log_pos](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-pos.md) | 196 | `result-track:343a39dcad64b2b3b897c7adb7849b8adea77dd70c61fd1cc76a34b6836d7bd7` |
| 38 | `theorem` | [log_pos_of_lt_neg_one](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-pos-of-lt-neg-one.md) | 199 | `result-track:c1413f4853814448808098212a542fd2642dbd52496a1508a214c42bcd57d59a` |
| 39 | `theorem` | [log_neg_iff](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-neg-iff.md) | 204 | `result-track:a994bd3b3fe2bc83cce22cc03b41a85cd19f46d10a52eb40ecf8bcccaf030276` |
| 40 | `theorem` | [log_neg](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-neg.md) | 209 | `result-track:e32666bf8459668254b61026b926b0375d7f52acc2b2f9a7cf47aa3b7ddc6e30` |
| 41 | `theorem` | [log_neg_of_lt_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-neg-of-lt-zero.md) | 212 | `result-track:a58f08ca95dc9b145ae3b0dc8278f4b5cee74c1859508eb826c6d68d1f4b67e3` |
| 42 | `theorem` | [log_nonneg_iff](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-nonneg-iff.md) | 218 | `result-track:9a8d51a5c124f844d254560ed860b0743b065de0759605a69a5ec6ea9d5d36d5` |
| 43 | `theorem` | [log_nonneg](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-nonneg.md) | 221 | `result-track:cab1f4c734b6e16c051eb93950c69a3670ea5da971f9991e19ca7afcbcaa17ac` |
| 44 | `theorem` | [log_nonpos_iff](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-nonpos-iff.md) | 224 | `result-track:c8c0b70364dfb7a26de2a254ab92586b6a954e10abe2e02b8c791c3185d5dc8d` |
| 45 | `theorem` | [log_nonpos](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-nonpos.md) | 230 | `result-track:1b6f246fbad8d34ea64b885e517b7bdea01c01cf6ee87e541ad19114fd4f14a1` |
| 46 | `theorem` | [log_natCast_nonneg](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-natcast-nonneg.md) | 233 | `result-track:4fd8e3f8123409b68c34e09f66104f899d2b0d5898bfc6ef15619ba24913c6c1` |
| 47 | `theorem` | [log_neg_natCast_nonneg](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-neg-natcast-nonneg.md) | 240 | `result-track:0906d68288d9ac34bd7aab8b5af86b261e4f07fe0899dca80783ee753d658c48` |
| 48 | `theorem` | [log_intCast_nonneg](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-intcast-nonneg.md) | 244 | `result-track:1260225ae57eeea1088ee83844f2b5073075fc92690c1228db5d48b985c89eb8` |
| 49 | `theorem` | [strictMonoOn_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/strictmonoon-log.md) | 257 | `result-track:df5fb35b66fe6e27052b1e71819e337ce7ec9198a176c4e129a62701ec04e54d` |
| 50 | `theorem` | [strictAntiOn_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/strictantion-log.md) | 259 | `result-track:08d77a43580372212d019ea5eb4e6e58d49e53e7478fe9343269451774ce1728` |
| 51 | `theorem` | [log_injOn_pos](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-injon-pos.md) | 265 | `result-track:4e38cb89edf1bfdce06a8433e7aa9ec9dbea7421f4846549ac70b0cb0ec3a453` |
| 52 | `theorem` | [log_lt_sub_one_of_pos](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-lt-sub-one-of-pos.md) | 268 | `result-track:c2526a293940178693b50be71b569a684042388d4191b3c4ee9d7b61201cb5b8` |
| 53 | `theorem` | [eq_one_of_pos_of_log_eq_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/eq-one-of-pos-of-log-eq-zero.md) | 274 | `result-track:41377e99820217abbc496cbe468d3b954b9536bb603ae3643f89679abc61ef7d` |
| 54 | `theorem` | [log_ne_zero_of_pos_of_ne_one](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-ne-zero-of-pos-of-ne-one.md) | 277 | `result-track:67a213740734de286ddb1bc55dbc1e9c6ef6eeec6bd0f26818669d87d9e10c4e` |
| 55 | `theorem` | [log_eq_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-eq-zero.md) | 281 | `result-track:4ecbbfc3c9a36d0d80afd3e4511d655f199238c75fc883743e3d7105caa23166` |
| 56 | `theorem` | [log_ne_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-ne-zero.md) | 292 | `result-track:8abf39a4ce4ffd9153fa19274cc1d499c5e9ed012300770da71a63f3cfd2abc6` |
| 57 | `theorem` | [log_pow](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-pow.md) | 296 | `result-track:91bfc36908be4a73590eb3a7727223bc5247d9a30d0862f8e34945016f4ea6ba` |
| 58 | `theorem` | [log_zpow](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-zpow.md) | 305 | `result-track:dd87fb9096d9d9707f6a30412f66f21d577b9a1e0fe298ad0f5bd9c309ea1e0a` |
| 59 | `theorem` | [log_sqrt](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-sqrt.md) | 311 | `result-track:f4f3579d9d3e9875f0426ae21cbbfdd1a0e4660cca794933a8802bea40fef604` |
| 60 | `theorem` | [log_le_sub_one_of_pos](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-le-sub-one-of-pos.md) | 315 | `result-track:fc00cabe533ed682e5267f3aef256cae3ea65ad7e9375c8d946ba4dd1f5a120e` |
| 61 | `lemma` | [one_sub_inv_le_log_of_pos](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/one-sub-inv-le-log-of-pos.md) | 320 | `result-track:19da2d832fcd200d5e2a927adc9191a21b808b4f1a57b530fe0d3e78e0ad172f` |
| 62 | `lemma` | [log_le_self](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-le-self.md) | 324 | `result-track:7f0ab5517e3a3cb987335e2badbd05e54b8ee5bde78d49d1d499be2d20574c7d` |
| 63 | `lemma` | [neg_inv_le_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/neg-inv-le-log.md) | 330 | `result-track:3ec8a6ef5a6656f9fd72bde241a4ac5407b40e65f5a8a0ecbcd665e106c19b49` |
| 64 | `theorem` | [abs_log_mul_self_lt](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/abs-log-mul-self-lt.md) | 334 | `result-track:9ce73a2ba8493feb191730ed388c20db679a13d2e03eb8653dc57577ad40cbc7` |
| 65 | `lemma` | [le_log_one_add_of_nonneg](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/le-log-one-add-of-nonneg.md) | 348 | `result-track:1abdfeee2575e15208ce6ed0744ade07dbb0fcf798e101f30df512696f8b3fe2` |
| 66 | `lemma` | [lt_log_one_add_of_pos](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/lt-log-one-add-of-pos.md) | 353 | `result-track:a8d5bddbb0d19058af033331cbd97e63fc0e96ec4858870e3f32b68fda143055` |
| 67 | `theorem` | [tendsto_log_atTop](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/tendsto-log-attop.md) | 359 | `result-track:4f8ffd7922e1df8e79e54a3c3891433af8853fe276d590d497468fafee463c44` |
| 68 | `lemma` | [tendsto_log_nhdsGT_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/tendsto-log-nhdsgt-zero.md) | 362 | `result-track:7d7f9c58250df24bb2325a1fd84b55c65edeea20a80a8a8b4b2f65231f63e8ba` |
| 69 | `theorem` | [tendsto_log_nhdsNE_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/tendsto-log-nhdsne-zero.md) | 365 | `result-track:3df33ee543802a3f4118f7fb5b791980646f0ce498fdea6ce636ec2d33ce7c93` |
| 70 | `lemma` | [tendsto_log_nhdsLT_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/tendsto-log-nhdslt-zero.md) | 368 | `result-track:6f29a9bd3607f240c7609276d11cb39e97f778d76822f44cdc45e1583fd486c3` |
| 71 | `theorem` | [continuousOn_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/continuouson-log.md) | 371 | `result-track:90d2a98e791b621331aea14c91c02308f2d6a817bedf5bac189e13d62c3c29b5` |
| 72 | `theorem` | [continuous_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/continuous-log-source-edition-3.md) | 379 | `result-track:9c54425a032a4af784086089575ee27de233c4542e5151804c5563d18f9208a8` |
| 73 | `theorem` | [continuous_log'](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/continuous-log.md) | 384 | `result-track:07aa4a233d7faa4654e3281cfb11895cb12d0b51f5e1dfad5311a780fe611835` |
| 74 | `theorem` | [continuousAt_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/continuousat-log.md) | 387 | `result-track:05e4fc9c008c0cb9d8f1bb256d55f2816e6be6e13d2d7349efeb42661fa71355` |
| 75 | `theorem` | [continuousAt_log_iff](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/continuousat-log-iff.md) | 391 | `result-track:d8a812c17686a9824e0f0764043abc2807b9227025fbecca0fdabbc630a10729` |
| 76 | `lemma` | [log_list_prod](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-list-prod.md) | 398 | `result-track:159f5bcaa6afb5b6c75e5e26270e0de5f03f00d36755c07eb8398d59a69a17da` |
| 77 | `lemma` | [log_multiset_prod](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-multiset-prod.md) | 409 | `result-track:abbe9ef03bcb562e5c5fd07bf4a828205618e74e67d8b0cfb4643dc509ef97df` |
| 78 | `theorem` | [log_prod](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-prod.md) | 415 | `result-track:199d46c5d7fe1097747c4b37369dfbaacd1986c8c7fef08b508c4c6b68ff33e8` |
| 79 | `theorem` | [Log Basic Namespaced Public](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-prod-source-line-421-occurrence-2.md) | 421 | `result-track:6767c619d3cc2b507cf1ebfb49b4f3bb627aed45c0ea5476f6829139af4e9ca9` |
| 80 | `lemma` | [log_finprod](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-finprod.md) | 427 | `result-track:b5dc0f643fec689fb154961d05865afa38ae7c3fea55fc2f72ba707d812c88c5` |
| 81 | `theorem` | [log_nat_eq_sum_factorization](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-nat-eq-sum-factorization.md) | 439 | `result-track:7ed66e501c9063ae22905304ae58e52a6333fdb4527ff74d127f928aefd4b5c3` |
| 82 | `theorem` | [tendsto_pow_log_div_mul_add_atTop](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/tendsto-pow-log-div-mul-add-attop.md) | 448 | `result-track:d8591d473f88bc766d45e92d7539aece53d387c2b1ed4e398c69066f5c48edec` |
| 83 | `theorem` | [isLittleO_pow_log_id_atTop](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/islittleo-pow-log-id-attop.md) | 453 | `result-track:e9f7ef0f16a529022f438a443a1cd86ec35c578a65f29e1dcf25996e1f938942` |
| 84 | `theorem` | [isLittleO_log_id_atTop](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/islittleo-log-id-attop.md) | 458 | `result-track:98a13c097ede40cbdb288ecf59ef439dcf4393c8941bb23599197a8952cb7869` |
| 85 | `theorem` | [isLittleO_const_log_atTop](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/islittleo-const-log-attop.md) | 461 | `result-track:ffdad0d728a57cff66bb0928ccc1dc2a12dfcd6e75556bfc60306c1b87022319` |
| 86 | `def` | [expPartialHomeomorph](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/exppartialhomeomorph.md) | 468 | `declaration-track:fa4d638e0155e32928c2a8dc45f8852398d9216f06472617c462e2e0c2901574` |
| 87 | `theorem` | [image_log_Ioi](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/image-log-ioi.md) | 483 | `result-track:91b7cea858ca5bf12c28d3d2a7e255a0d7736a09335fb26ddb634999a885973e` |
| 88 | `theorem` | [image_log_Ici](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/image-log-ici.md) | 488 | `result-track:fc1db223b3d8650aaefa5b387f36c7785d39f7ee64ca1f8928df3eda93b3d1ec` |
| 89 | `theorem` | [image_log_Icc](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/image-log-icc.md) | 493 | `result-track:e9a581c668b0a4aa9ad650e0762fe4af6abb089abdcd071d39033a6a7597c868` |
| 90 | `theorem` | [image_log_Ico](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/image-log-ico.md) | 498 | `result-track:e26f00aaf07a9e514a8e7cb46280a798abfdc9f32776a2e2d45f54651e647d59` |
| 91 | `theorem` | [image_log_Ioc](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/image-log-ioc.md) | 503 | `result-track:873970ac2b33c127c7b01d4f334a117cfc9e53e75b5aa6acb9ef45f1248365d4` |
| 92 | `theorem` | [image_log_Ioo](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/image-log-ioo.md) | 508 | `result-track:a6245f978691da5e8da54c93023e62d0b6d00ebf7d03d484645cc6443b56f6fb` |
| 93 | `theorem` | [image_log_uIcc](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/image-log-uicc.md) | 513 | `result-track:03bb9ecf5cdd805a63762c853164d1e180b28b72f2c495528bcf77922bc4a026` |
| 94 | `theorem` | [image_log_Ioo_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/image-log-ioo-zero.md) | 519 | `result-track:895f7210ec6d7310b2fc1102d50f04a5fa8d412ac8fdef26510403e0ca399304` |
| 95 | `theorem` | [image_log_Ioc_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/image-log-ioc-zero.md) | 523 | `result-track:74f687600de98b22283af65e158c4c61e095251c3966c6a630b6309e353dea0a` |
| 96 | `theorem` | [log_pos](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-pos-source-edition-2.md) | 530 | `result-track:5934da6d60c833fd0f47823b09e04d67d4b9b171f9ae84bf765839270ed1c8d5` |
| 97 | `theorem` | [log_ne_zero](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-ne-zero-source-edition-2.md) | 533 | `result-track:ee463f7302d02ef5e2667905a6143fc12cae370f114a20029cf54856601f19ea` |
| 98 | `theorem` | [Filter.Tendsto.log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/filter-tendsto-log.md) | 543 | `result-track:c462f116f54a25ed39a2b4ca744a01ebc7857a9130529ae8f32fbf2552ffaac6` |
| 99 | `theorem` | [Continuous.log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/continuous-log-source-edition-2.md) | 550 | `result-track:36f4e49ff161db54c670d36050ec797c4b102ac8754a7565530e14f61bce597a` |
| 100 | `theorem` | [ContinuousAt.log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/continuousat-log-source-edition-2.md) | 554 | `result-track:7186e5a7e0234dfb33f937f9ad2439b680f17781f128d2eb40e9618fdeb8276e` |
| 101 | `theorem` | [ContinuousWithinAt.log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/continuouswithinat-log.md) | 558 | `result-track:f8df7eb8ca1fa3d3d662f06d0417ef9e8201153a88c8206e655155fe1a77c690` |
| 102 | `theorem` | [ContinuousOn.log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/continuouson-log-source-edition-2.md) | 563 | `result-track:e5bc66759dd4c7d410b79faf8b7539402ec95bf22502307570857460d48e7b69` |
| 103 | `theorem` | [tendsto_log_comp_add_sub_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/tendsto-log-comp-add-sub-log.md) | 574 | `result-track:abb61c7ad749558e85f4b6d2870457b6b8dab9b52668c2c597a7dac87b12633d` |
| 104 | `theorem` | [tendsto_log_nat_add_one_sub_log](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/tendsto-log-nat-add-one-sub-log.md) | 583 | `result-track:12cff0ca3c3241019d4d8988ac8eaa853dd67aeca36b7cd8733c655bd5ae3013` |
| 105 | `lemma` | [log_nonneg_of_isNat](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-nonneg-of-isnat.md) | 595 | `result-track:b9ddf72d8725c9d4def660d2b5601cd87a8fde4651f263756d460c9d889e0284` |
| 106 | `lemma` | [log_pos_of_isNat](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-pos-of-isnat.md) | 599 | `result-track:b2779ead2d7e358f068a0f452ba8fe4822524bc7e53ccaa51a275c4dbac48057` |
| 107 | `lemma` | [log_nonneg_of_isNegNat](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-nonneg-of-isnegnat.md) | 605 | `result-track:639fa3aad3ab457d9ab2950f86e82a82e6da39e3e5fd1302b9382a8c694ad1db` |
| 108 | `lemma` | [log_pos_of_isNegNat](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-pos-of-isnegnat.md) | 610 | `result-track:78c9821f880b2a9c5babc620a53c6c666ba9f3b3555f1283f87d9a48233cbafe` |
| 109 | `lemma` | [log_pos_of_isNNRat](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-pos-of-isnnrat.md) | 617 | `result-track:970993d5ad64447162abd3d10422f4c72ed61f6255a0382e7614713e785fedec` |
| 110 | `lemma` | [log_pos_of_isRat_neg](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-pos-of-israt-neg.md) | 625 | `result-track:e533014cf778f191a1fbf6b623f575b5ca9f0ed3919702d2a64e66334e654e17` |
| 111 | `lemma` | [log_nz_of_isNNRat](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-nz-of-isnnrat.md) | 632 | `result-track:92d324db7a97ea77571b9daf0dde98c939dd0dea8ca478634e19bd02c6aace37` |
| 112 | `lemma` | [log_nz_of_isRat_neg](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/log-nz-of-israt-neg.md) | 642 | `result-track:b81d5418a9efa498ff7201acdce626d36f91326f9f832762004de6dc6e3bb2b5` |
| 113 | `def` | [evalLogNatCast](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/evallognatcast.md) | 652 | `declaration-track:b31abc71c20a54380c770096313e99f44dc1afa00a0a2cebabff51557696fcf3` |
| 114 | `def` | [evalLogIntCast](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/evallogintcast.md) | 662 | `declaration-track:6e388ed395d19d20b7530d2256e348a7bc3552a6452893b71e94583455963388` |
| 115 | `def` | [evalLogNatLit](../../../../SpecialFunctions/LogBasicNamespacedPublic.lean/declarations/evallognatlit.md) | 672 | `declaration-track:78eed16e0d8c916e17ea1cacea1cf3ac35f920043efa406e3b232bf014cc30a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62626e10130ee21ab000f545a73b6fbc1648f10feb04ff40eade37920e4e687f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant2ea681313f8b0983a16b04c11c96a354dde64f5deef39c2077fed77466386a6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
