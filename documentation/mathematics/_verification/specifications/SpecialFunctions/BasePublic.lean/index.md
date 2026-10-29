# Verification target: Base Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8970cd2d8fe0116284f84a196343ded93289045b",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Base/Variant1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/BasePublic.lean/index.md) · [Full source](../../../../SpecialFunctions/BasePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8970cd2d8fe0116284f84a196343ded93289045b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Base/Variant1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Base/Variant1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean.json)

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
| 1 | `def` | [logb](../../../../SpecialFunctions/BasePublic.lean/declarations/logb.md) | 43 | `declaration-track:0b0cff17e17245bcb9c9edae0dcfe75be929da8307876dafeff617e1adb71a14` |
| 2 | `theorem` | [log_div_log](../../../../SpecialFunctions/BasePublic.lean/declarations/log-div-log.md) | 46 | `result-track:790b5fe969713c68c9d1988d4ec24bdfbd519ecdd82cdc632db82eeb3aa6f485` |
| 3 | `theorem` | [logb_zero](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-zero.md) | 50 | `result-track:73798e3693ebe1a16cd66e862f6ee1d314651265a10ce036b9a07f7f3fa05c26` |
| 4 | `theorem` | [logb_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-one.md) | 53 | `result-track:2a2f94559738d26036073a5f7a6467af3d7c1f5a3d3282c923860c75a5d833cc` |
| 5 | `theorem` | [logb_zero_left](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-zero-left.md) | 55 | `result-track:8c5ed66500d8f3b45ce94076b58e258927766973a2a57b6af8b30584e502b28d` |
| 6 | `theorem` | [logb_zero_left_eq_zero](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-zero-left-eq-zero.md) | 57 | `result-track:85fe3e450dc8cba4f98ee94cda70820b977b8fc99068f4c2b0db9ac49171e9bd` |
| 7 | `theorem` | [logb_one_left](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-one-left.md) | 59 | `result-track:535c3225c75657791c55bc8e04c315b07bd2de33312a6d1e02083da7b8d80eb9` |
| 8 | `theorem` | [logb_one_left_eq_zero](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-one-left-eq-zero.md) | 61 | `result-track:9979a8cadde41d3e037f87729ce8273766eae62dec5ecb1ec6863847621556a1` |
| 9 | `lemma` | [logb_self_eq_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-self-eq-one.md) | 64 | `result-track:0b5a0a0e15d972d947c47fd4f849fbd71c9afd61ed28a1d51fa26e0c6b070988` |
| 10 | `lemma` | [logb_self_eq_one_iff](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-self-eq-one-iff.md) | 67 | `result-track:87ca2e041e04645954b5a68cf955180d375e3e9c767ea3698dd1e4c13c4490ec` |
| 11 | `theorem` | [logb_abs_base](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-abs-base.md) | 71 | `result-track:9cf671804e90c5f4b7d166fa1925e20a0ae4313064648923c9f174d7c36daadb` |
| 12 | `theorem` | [logb_abs](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-abs.md) | 74 | `result-track:a71d470bb748aba4f2ab354cce8143f020cf794f793ebbeb9a4836333cc3f963` |
| 13 | `theorem` | [logb_neg_base_eq_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-neg-base-eq-logb.md) | 77 | `result-track:fb20f9748f5f4fb387a412f0e95cfdbb9c7467a5737e7e105a1a96b626e93d93` |
| 14 | `theorem` | [logb_neg_eq_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-neg-eq-logb.md) | 81 | `result-track:0e27a01767f6488249eeb06b6b7899bff50182d843704648a6e91869cc31b232` |
| 15 | `theorem` | [logb_mul](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-mul.md) | 84 | `result-track:6d6ee10156fffc94d7d0673877aa9035921028113d356e21d2f6a6688846170f` |
| 16 | `theorem` | [logb_div](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-div.md) | 87 | `result-track:6da33f7f883c5e8e5fd78ec05c76faa145a88db31415ce313964b5d33e1ead7d` |
| 17 | `theorem` | [logb_inv](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-inv.md) | 91 | `result-track:bd33e99850f76ba8b0532cd532642a0a3d02094360490ea097a7c97230c8ebdb` |
| 18 | `theorem` | [logb_inv_base](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-inv-base.md) | 94 | `result-track:d63296fdfe089843eef1c73e314fdf0d68372263b116d6f9f16e59a61727bc7f` |
| 19 | `theorem` | [inv_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/inv-logb.md) | 96 | `result-track:c2202c4211746c6cc67c1a99ea1fe469af985ed43a9e2f5ce780d5fce7126cc7` |
| 20 | `theorem` | [inv_logb_mul_base](../../../../SpecialFunctions/BasePublic.lean/declarations/inv-logb-mul-base.md) | 98 | `result-track:7f1556cb4cc96bac28cbd5a2d165efc350f9ebf5131e81f89e3b4096ce9cf045` |
| 21 | `theorem` | [inv_logb_div_base](../../../../SpecialFunctions/BasePublic.lean/declarations/inv-logb-div-base.md) | 102 | `result-track:8f750953a1ebd3f203e2d7d9121c719400117c1578830c1574e2611aeb7092d8` |
| 22 | `theorem` | [logb_mul_base](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-mul-base.md) | 106 | `result-track:b7b6cb462fa3724d058030a3d9ebea1e775917c9f2bbe1d29490f443c5f8c791` |
| 23 | `theorem` | [logb_div_base](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-div-base.md) | 109 | `result-track:a4e423972c38e4737803811a08d18f9d9c75da04a2455a204995dce87ad45c29` |
| 24 | `theorem` | [mul_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/mul-logb.md) | 112 | `result-track:6ec95c5bd195037213eee2214429e82a0a2ae6c58f509c68aaf9f9b5183e44b7` |
| 25 | `theorem` | [div_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/div-logb.md) | 117 | `result-track:2dab4d4d1d11d5d28d007ce8f728122b8961c7b03be41bd5be3ed3df0d2e59c2` |
| 26 | `theorem` | [logb_rpow_eq_mul_logb_of_pos](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-rpow-eq-mul-logb-of-pos.md) | 121 | `result-track:3d0f1dc3912827717057e48381505eee582acd1c3b70d3d0dcb6718274300469` |
| 27 | `theorem` | [logb_pow](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-pow.md) | 124 | `result-track:7a5225d3e5affd0cb47982600014f7961db7a41f4c4f7832421215e0df455c60` |
| 28 | `theorem` | [logb_rpow](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-rpow.md) | 133 | `result-track:e9741b5fc614a72b426bd3c4f4a5ab6f23ea352d539ef384020f9031e54466e0` |
| 29 | `theorem` | [rpow_logb_eq_abs](../../../../SpecialFunctions/BasePublic.lean/declarations/rpow-logb-eq-abs.md) | 137 | `result-track:9094bba9fb7c1bc49e22a6c7a92a964735305c55892b2f8bc635fe72b391c75b` |
| 30 | `theorem` | [rpow_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/rpow-logb.md) | 146 | `result-track:8eaaa21813a6b0b05477675fc186a0bdce0ded191a2815cc7eb9e5d6b8b96076` |
| 31 | `theorem` | [rpow_logb_of_neg](../../../../SpecialFunctions/BasePublic.lean/declarations/rpow-logb-of-neg.md) | 150 | `result-track:d70c00a69aad1f7c5ee04f8f233909aab9870400b715b71af9ea971ba972dd82` |
| 32 | `theorem` | [logb_eq_iff_rpow_eq](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-eq-iff-rpow-eq.md) | 154 | `result-track:51b082873d094d03836cd4ffc9216e706a2fd80c7b57156e158b64f5af5d1a25` |
| 33 | `theorem` | [surjOn_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/surjon-logb-source-edition-2.md) | 159 | `result-track:33b52bb2e1fbffd68377bc4510ad0d9a032debc4ab5e3761b1cb8671fe7c3311` |
| 34 | `theorem` | [logb_surjective](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-surjective.md) | 162 | `result-track:f5044eddc79e7c232e86b3591735274664370d5bc241ef02b7cf07d1eb055753` |
| 35 | `theorem` | [range_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/range-logb.md) | 165 | `result-track:e5650671dca02fc6baabc76ad1299f9ed8b90bf68566259bee55948ed422d2a0` |
| 36 | `theorem` | [surjOn_logb'](../../../../SpecialFunctions/BasePublic.lean/declarations/surjon-logb.md) | 168 | `result-track:2dc7174a08b926799d29bcdbcd499e03210b9c1b10c476118780492eb73db40b` |
| 37 | `theorem` | [b_pos](../../../../SpecialFunctions/BasePublic.lean/declarations/b-pos.md) | 183 | `result-track:f2c08884f9a46b961b28aea72bee6a758922a99869ef5e71a9e8e9d515336d81` |
| 38 | `theorem` | [b_ne_one'](../../../../SpecialFunctions/BasePublic.lean/declarations/b-ne-one-source-edition-2.md) | 186 | `result-track:7fd4f5a43f867ebb8320a10f40a42a97778b4185441be79427f5373bb3328525` |
| 39 | `theorem` | [logb_le_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-le-logb.md) | 189 | `result-track:a3a5c92130418981b41ff64dc573b8396d12e9a063225ac40ee6833d3841487d` |
| 40 | `theorem` | [logb_le_logb_of_le](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-le-logb-of-le.md) | 193 | `result-track:641f0cd3010f3bff7ce263eab0729f7dcd593ca176e6b13586768dbda510909d` |
| 41 | `theorem` | [logb_lt_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-lt-logb.md) | 197 | `result-track:53acb74bed4758873f6b1e089a0bb7ec48a6cafa9536d0f77c3b9d7b1e49bfe4` |
| 42 | `theorem` | [logb_lt_logb_iff](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-lt-logb-iff.md) | 202 | `result-track:15a4142d3aeaeb30d88e5a1d28324d41376492361ca365c19ef702737fe33ad9` |
| 43 | `theorem` | [logb_le_iff_le_rpow](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-le-iff-le-rpow.md) | 206 | `result-track:eb8b23340a9bcc0a72d9c3a49c2829344e0b1afd8855aadcb1cdcae52be1e49d` |
| 44 | `theorem` | [logb_lt_iff_lt_rpow](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-lt-iff-lt-rpow.md) | 209 | `result-track:d3a73c5ada59e4956a75cdefeb8363c9a0a646f40446bb3af75e0e10743e44fa` |
| 45 | `theorem` | [le_logb_iff_rpow_le](../../../../SpecialFunctions/BasePublic.lean/declarations/le-logb-iff-rpow-le.md) | 212 | `result-track:fe86ca06f2f3bba9229e526a227293525bf36a419379d826dedf2edbb304f86f` |
| 46 | `theorem` | [lt_logb_iff_rpow_lt](../../../../SpecialFunctions/BasePublic.lean/declarations/lt-logb-iff-rpow-lt.md) | 215 | `result-track:8bc043d26b13eee8712af68d0c996d3b5b755c064febccede8ec0a3d62576615` |
| 47 | `theorem` | [logb_pos_iff](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-pos-iff.md) | 218 | `result-track:8c72c90e6a7564b43992c92b2bc840a7d2b40a84c3277b6cf00fa78e21028a7c` |
| 48 | `theorem` | [logb_pos](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-pos.md) | 222 | `result-track:59f3c61ede42cc7b4879d750fcdc2301396f1621c1fcedb5179a3af996510cea` |
| 49 | `theorem` | [logb_neg_iff](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-neg-iff.md) | 226 | `result-track:7d32ff6ce101968741fe1ef6420da458cc27c1cd095e93f043c1f1d619a6fec3` |
| 50 | `theorem` | [logb_neg](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-neg.md) | 230 | `result-track:449646c7c159fc48ac157c0d2699b993fb2ffd5df5af23be480cefda4d9d003f` |
| 51 | `theorem` | [logb_nonneg_iff](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-nonneg-iff.md) | 233 | `result-track:a20a83000a47cfd8d5a0f5f09be20bf52cd07acc06e03a0493b989b46cb45ea5` |
| 52 | `theorem` | [logb_nonneg](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-nonneg.md) | 236 | `result-track:c0b5a5f6ecb115fe3b0f819546e9f2d8a62e71d724575ab85516eb1ff7c48e38` |
| 53 | `theorem` | [logb_nonpos_iff](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-nonpos-iff.md) | 239 | `result-track:17c16573815097d7d89269309ac575e9c88e888f0a7de65c758bd2e0ba1f0389` |
| 54 | `theorem` | [logb_nonpos_iff'](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-nonpos-iff-source-edition-2.md) | 242 | `result-track:8c1c1c79bf93df2ad2138035698f543f56cb24ce1fdb9ecd734a6badc086dbcc` |
| 55 | `theorem` | [logb_nonpos](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-nonpos.md) | 247 | `result-track:1cab67a73c06d2b9bc24493bcd17cf6f731b325a3e7af46f756a78f990bc9971` |
| 56 | `theorem` | [strictMonoOn_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/strictmonoon-logb.md) | 250 | `result-track:5a65c7f99b61b61772a6595579202507cf415adad7c3feb1ace896d7499d8149` |
| 57 | `theorem` | [strictAntiOn_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/strictantion-logb.md) | 253 | `result-track:5e5205da2fee84b919503ad00ac48b03427810ba2e58de6c840743072774f98d` |
| 58 | `theorem` | [logb_injOn_pos](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-injon-pos.md) | 259 | `result-track:879472c496d2ab3aa17a5dc93c74f7f9cd27b3c277cb14107951aec7e3575908` |
| 59 | `theorem` | [eq_one_of_pos_of_logb_eq_zero](../../../../SpecialFunctions/BasePublic.lean/declarations/eq-one-of-pos-of-logb-eq-zero.md) | 262 | `result-track:d6beeb5dbac42c13bb82e91c2410f284b5d6d3eaeb293c6226876298380e7080` |
| 60 | `theorem` | [logb_ne_zero_of_pos_of_ne_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-ne-zero-of-pos-of-ne-one.md) | 265 | `result-track:09f7ce34cd6f71a3fd9e169512dbd3e4f9d02def7d3b310cd3c223267c0527de` |
| 61 | `theorem` | [tendsto_logb_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-logb-attop.md) | 268 | `result-track:094f89cf29538ccfa6122f96b2d35a2a057e02147739f297dc9e8788a89f7206` |
| 62 | `theorem` | [b_ne_one](../../../../SpecialFunctions/BasePublic.lean/declarations/b-ne-one.md) | 278 | `result-track:3b928f836dd2dc1126dba0095bf73eed6de62ec547ed1e5538209dee9642fc6a` |
| 63 | `theorem` | [logb_le_logb_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-le-logb-of-base-lt-one.md) | 283 | `result-track:2ebedad7226bb58c1130af6eca6b5855219c738bac3ebca65154b3f6b47313fd` |
| 64 | `theorem` | [logb_lt_logb_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-lt-logb-of-base-lt-one.md) | 286 | `result-track:f6a7cf1599cb054e77748e578e218c9b2c836b892fc3797c40bf19424321ae5f` |
| 65 | `theorem` | [logb_lt_logb_iff_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-lt-logb-iff-of-base-lt-one.md) | 291 | `result-track:70e3572aa32c41984d7843b63f7c3119e5e6ed74c6512ac5eecfab44d0bbba10` |
| 66 | `theorem` | [logb_le_iff_le_rpow_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-le-iff-le-rpow-of-base-lt-one.md) | 296 | `result-track:9873cda8d81028b6821fa86e9b9601353289f6d09532e124cdb2bf454ace8f3d` |
| 67 | `theorem` | [logb_lt_iff_lt_rpow_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-lt-iff-lt-rpow-of-base-lt-one.md) | 299 | `result-track:4f7c3c7bf8ed02b579633be6e91eeb943452a8b579faac535651d7a5dad8cf8c` |
| 68 | `theorem` | [le_logb_iff_rpow_le_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/le-logb-iff-rpow-le-of-base-lt-one.md) | 302 | `result-track:7a1b8c983b918d2514a03b546918cc6928ac549d336aecb6bd9d19808f99e32f` |
| 69 | `theorem` | [lt_logb_iff_rpow_lt_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/lt-logb-iff-rpow-lt-of-base-lt-one.md) | 305 | `result-track:a565d4e308d2227c9ad6b1db7383848976ceb48dddc84f2d34738bc6bfd38aa3` |
| 70 | `theorem` | [logb_pos_iff_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-pos-iff-of-base-lt-one.md) | 308 | `result-track:5b6c24822c9a8f26549e1df52fa83d4d30ba8e7edbfda46e5cb0a5999217d8a6` |
| 71 | `theorem` | [logb_pos_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-pos-of-base-lt-one.md) | 311 | `result-track:ef80d400c769ff03feab0c763337c29e24a609a06819ff4dde6a5ccde7b987eb` |
| 72 | `theorem` | [logb_neg_iff_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-neg-iff-of-base-lt-one.md) | 315 | `result-track:26ab27fcae85a00d37ad5a08ccc31a9674a24681accfccdd9792287ac63c3a4c` |
| 73 | `theorem` | [logb_neg_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-neg-of-base-lt-one.md) | 318 | `result-track:aaf3515ad6046688410f03685963d26fcaee1cdbb1499950490e6ad53d68f470` |
| 74 | `theorem` | [logb_nonneg_iff_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-nonneg-iff-of-base-lt-one.md) | 321 | `result-track:0c598adeb72acfc5695570124a9473b5204c60945dba5458824cb6793347f779` |
| 75 | `theorem` | [logb_nonneg_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-nonneg-of-base-lt-one.md) | 324 | `result-track:1966df62a888884396d89e345768cefb2e8ae903aa9b0f3360901ebb406ee075` |
| 76 | `theorem` | [logb_nonpos_iff_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-nonpos-iff-of-base-lt-one.md) | 328 | `result-track:8f6a2a2799e8f2489475ff14df8b78b12cadf6e56b46610e592294e3c02814dc` |
| 77 | `theorem` | [strictAntiOn_logb_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/strictantion-logb-of-base-lt-one.md) | 331 | `result-track:5e4c7d6d77c798367020a6732433b0b85660cb1d29b5647e52618730c2dfefdc` |
| 78 | `theorem` | [strictMonoOn_logb_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/strictmonoon-logb-of-base-lt-one.md) | 334 | `result-track:b4941d94c66f76b350bd330a775b3637ef53d0c6cdbed5459078a6f3b3ee91cc` |
| 79 | `theorem` | [logb_injOn_pos_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-injon-pos-of-base-lt-one.md) | 340 | `result-track:b3fd7d73b11f69a2f42714601035c5eed9cc99f59a36190056a66b7eda52d941` |
| 80 | `theorem` | [eq_one_of_pos_of_logb_eq_zero_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/eq-one-of-pos-of-logb-eq-zero-of-base-lt-one.md) | 343 | `result-track:0ba8eaf09b9bb2452da49a011fe69a96a318057e574951227371df52609a1b67` |
| 81 | `theorem` | [logb_ne_zero_of_pos_of_ne_one_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-ne-zero-of-pos-of-ne-one-of-base-lt-one.md) | 347 | `result-track:2388ecdbfa07fd6c91917a0a527efab2f99a9574a75da3b2066c2eb8e739e01d` |
| 82 | `theorem` | [tendsto_logb_atTop_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-logb-attop-of-base-lt-one.md) | 350 | `result-track:d47764d78b2525362e9f5e32f84a36a52da9f3c9c56e54daacad36e0783de9e3` |
| 83 | `theorem` | [floor_logb_natCast](../../../../SpecialFunctions/BasePublic.lean/declarations/floor-logb-natcast.md) | 364 | `result-track:f0dbdf0a7858b21370bf50a0632031ffbe929f389ec883dbd957a0f3fb664785` |
| 84 | `theorem` | [ceil_logb_natCast](../../../../SpecialFunctions/BasePublic.lean/declarations/ceil-logb-natcast.md) | 382 | `result-track:9711b6f5914bdb5bd29363f409a5a7073eaf63b2422aa065544d4389b904e910` |
| 85 | `theorem` | [natFloor_logb_natCast](../../../../SpecialFunctions/BasePublic.lean/declarations/natfloor-logb-natcast.md) | 400 | `result-track:20b55e6aebec62d187b9520f9c099ed432f29af6774a698caa2fc05d8b1286d9` |
| 86 | `theorem` | [natCeil_logb_natCast](../../../../SpecialFunctions/BasePublic.lean/declarations/natceil-logb-natcast.md) | 411 | `result-track:739f0b20e766bc66237241e694feb8905a0a44040975569d0a73eae914a2440a` |
| 87 | `lemma` | [natLog_le_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/natlog-le-logb.md) | 421 | `result-track:a298e755653f2a099c0e8245fc2a87f1135b29ea976da8b530cbe1ecd86316b3` |
| 88 | `lemma` | [log2_le_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/log2-le-logb.md) | 425 | `result-track:12ca2172e7b941ba83a795dd7db7bdddb340763c18728ab26d407df7b68dadf1` |
| 89 | `theorem` | [logb_eq_zero](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-eq-zero.md) | 430 | `result-track:82cd6e450c7f68b9424566c0821f39488f0d05529304e805bb1a2723be21057d` |
| 90 | `theorem` | [tendsto_logb_nhdsNE_zero](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-logb-nhdsne-zero.md) | 434 | `result-track:b2d358af518432a49f64a8debef39650e7123ee6cd4e83ba616cebcd2c7b9a3c` |
| 91 | `theorem` | [tendsto_logb_nhdsNE_zero_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-logb-nhdsne-zero-of-base-lt-one.md) | 437 | `result-track:9ae9bd92c5ec7c6ef61345aa371053bc88c9632217feeb6f7dd121426b79f8db` |
| 92 | `lemma` | [tendsto_logb_nhdsGT_zero](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-logb-nhdsgt-zero.md) | 441 | `result-track:4269a677277ef725883681f6a216a07b057ba2b84bd963f5f3cd568d48a54e28` |
| 93 | `lemma` | [tendsto_logb_nhdsGT_zero_of_base_lt_one](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-logb-nhdsgt-zero-of-base-lt-one.md) | 444 | `result-track:10090d292d60a65c3ebe4adfd40da575e21e6fbdde4f89dbb0dcf1c913fd0f54` |
| 94 | `lemma` | [tendsto_abs_logb_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-abs-logb-attop.md) | 452 | `result-track:927c772f3b96886bd3c398ec573148a3da97b50b677c0f4baee030bdc2af6d42` |
| 95 | `theorem` | [continuousOn_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/continuouson-logb.md) | 464 | `result-track:6f013501e92e6fbeb3d51065ba9681c63f8a748ab57626ae21513d2dc53553fb` |
| 96 | `theorem` | [continuous_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/continuous-logb-source-edition-2.md) | 468 | `result-track:8ec03c93174b551ae392d085e2c9412375536ef8c89cdf478ed9b386d7d401c5` |
| 97 | `theorem` | [continuous_logb'](../../../../SpecialFunctions/BasePublic.lean/declarations/continuous-logb-source-edition-3.md) | 473 | `result-track:edcdd03990054ab019131ce97af7501db79d6e9967e24fbc3742c53c358c0712` |
| 98 | `theorem` | [continuousAt_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/continuousat-logb-source-edition-2.md) | 476 | `result-track:6cc08357cfd8235c3ab3afd98d32d85cc128c23b30d7b03cfa67ae8f65680e80` |
| 99 | `theorem` | [continuousAt_logb_iff](../../../../SpecialFunctions/BasePublic.lean/declarations/continuousat-logb-iff.md) | 480 | `result-track:d9634bafe60fcf8392a11db85a64e7e9a2a3196c0c3c5625530964cad37ac43a` |
| 100 | `theorem` | [logb_prod](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-prod.md) | 491 | `result-track:fea6e3f223f9da6e561c8d6035997a2e3a8e6a8db318fe2b28624efe7832f7d2` |
| 101 | `theorem` | [_root_.Finsupp.logb_prod](../../../../SpecialFunctions/BasePublic.lean/declarations/root-finsupp-logb-prod.md) | 497 | `result-track:7edaee7142c5a2f78155ffb3e3bbb0f6d4a58480be2ed5ac73a3ccdfb45b9f3a` |
| 102 | `theorem` | [logb_nat_eq_sum_factorization](../../../../SpecialFunctions/BasePublic.lean/declarations/logb-nat-eq-sum-factorization.md) | 501 | `result-track:b85307b4873f5b442876f521caa23ca744cfdb1bf6d909c332309e19c2a2b51f` |
| 103 | `theorem` | [tendsto_pow_logb_div_mul_add_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-pow-logb-div-mul-add-attop.md) | 505 | `result-track:1dda3cad9fe4526acc854fb0513a9f9b4e70726a3b26a5d898869f98b062344f` |
| 104 | `theorem` | [isLittleO_pow_logb_id_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/islittleo-pow-logb-id-attop.md) | 512 | `result-track:cfd90d53fc363fb9b6b5d5bcb88c29c22fcc1e13c2899cd92d8248e4570bafdf` |
| 105 | `theorem` | [isLittleO_logb_id_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/islittleo-logb-id-attop.md) | 517 | `result-track:d411168d9114a974a19b8e1b5a91ce9f230b4b31a4e7618eb65566c3b686b4c5` |
| 106 | `theorem` | [isLittleO_const_logb_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/islittleo-const-logb-attop.md) | 520 | `result-track:6907083a0bff9b253f63256d1c7b85e53d048920264f6b2f5910e95248b7ea16` |
| 107 | `theorem` | [isBigO_logb_log](../../../../SpecialFunctions/BasePublic.lean/declarations/isbigo-logb-log.md) | 526 | `result-track:696c17572234d9dc04b15cde7165567f24dfbabbe55c9d9f6f7f6c5c9033eaba` |
| 108 | `theorem` | [isBigO_log_const_mul_log_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/isbigo-log-const-mul-log-attop.md) | 533 | `result-track:25664e0e6764676fa9d0f81374b9ac169a8478ae3a278e7a57e418dbc547e9a2` |
| 109 | `theorem` | [isBigO_log_mul_const_log_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/isbigo-log-mul-const-log-attop.md) | 542 | `result-track:7e04643da5811c53676b0f2ce81f450b375c8b53003a237268b1177743d30f4c` |
| 110 | `theorem` | [isBigO_logb_const_mul_log_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/isbigo-logb-const-mul-log-attop.md) | 545 | `result-track:f243c659dd1c1f51eb09e094effdf241941861908391e8d1832792f5edf0f93d` |
| 111 | `theorem` | [isBigO_logb_mul_const_log_atTop](../../../../SpecialFunctions/BasePublic.lean/declarations/isbigo-logb-mul-const-log-attop.md) | 549 | `result-track:2de628ed7ed4b88d39566b272126b28c5f2f6f21579bace1eabc96fae8ef8562` |
| 112 | `theorem` | [Filter.Tendsto.logb](../../../../SpecialFunctions/BasePublic.lean/declarations/filter-tendsto-logb.md) | 561 | `result-track:11ab893cfa31105e4f89ed9bb796f3b8cb7be5bf09157ca7b2a7c47037e9d315` |
| 113 | `theorem` | [Continuous.logb](../../../../SpecialFunctions/BasePublic.lean/declarations/continuous-logb.md) | 569 | `result-track:7db31fe884254f717075cc636bb0ea411942e4769d1738938104b6a1cd6f7e7d` |
| 114 | `theorem` | [ContinuousAt.logb](../../../../SpecialFunctions/BasePublic.lean/declarations/continuousat-logb.md) | 574 | `result-track:36ac383871045b2f7c54ef54166e3edfa7021d49d80ecd47bd4ce6eb99dcab14` |
| 115 | `theorem` | [ContinuousWithinAt.logb](../../../../SpecialFunctions/BasePublic.lean/declarations/continuouswithinat-logb.md) | 578 | `result-track:3bf2d6434dfb255b23586239f0df878754e1ce0dec4b23a7b5d97b9f14ef14e5` |
| 116 | `theorem` | [ContinuousOn.logb](../../../../SpecialFunctions/BasePublic.lean/declarations/continuouson-logb-source-edition-2.md) | 583 | `result-track:8062b527079e42957dc1a59d158a1ac0e505fa621d06ec6fc3aba73d936acd35` |
| 117 | `theorem` | [tendsto_logb_comp_add_sub_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-logb-comp-add-sub-logb.md) | 596 | `result-track:1e8074f5e3558f2128dd74e4d22cb0d71b929d889c7a53a30866b511f630f979` |
| 118 | `theorem` | [tendsto_logb_nat_add_one_sub_logb](../../../../SpecialFunctions/BasePublic.lean/declarations/tendsto-logb-nat-add-one-sub-logb.md) | 600 | `result-track:045a9ff906eb2485bf2acc9d708c6b5821c57c571411e3f059cafb2ff432d966` |
| 119 | `lemma` | [Real.induction_Ico_mul](../../../../SpecialFunctions/BasePublic.lean/declarations/real-induction-ico-mul.md) | 613 | `result-track:b45f375fbc1ba50b7c8a1bf2f8e33294241a001ced08963aac7a1fd6c7d2a1b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f37cf566cae1d1affec1602126b1b3d047433eada2c80a66b506cc88f455b8cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Base/Variant1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Base/Variant1d2af236e8315bb4e0714399d0135729dd6bfce9c1d62490c6f6f7dc610271cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
