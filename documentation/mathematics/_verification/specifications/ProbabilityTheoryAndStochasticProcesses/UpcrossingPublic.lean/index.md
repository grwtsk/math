# Verification target: Upcrossing Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2025caf9ce9944b38888d86c0f84e035620fb30",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2025caf9ce9944b38888d86c0f84e035620fb30`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean.json)

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
| 1 | `def` | [lowerCrossingTimeAux](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtimeaux.md) | 138 | `declaration-track:46a2a73f85c99460bc0f00435764d1e2005782e44fa53ad10b5542bef17d5a45` |
| 2 | `def` | [upperCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime.md) | 144 | `declaration-track:ef789a670252c46bf52cb9d8dc664c182abc75e450362e3deaebec9e677412be` |
| 3 | `def` | [lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtime.md) | 152 | `declaration-track:b73d06eddca318e7bdca09cf7d0d5fdfa47dd00ee142e824267e41a906e7cd99` |
| 4 | `theorem` | [upperCrossingTime_zero](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-zero-source-edition-2.md) | 162 | `result-track:fcbfec2851999969e1d718ebfeed8b316e6c32e79078f2c7ee56cf344f52610e` |
| 5 | `theorem` | [lowerCrossingTime_zero](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtime-zero.md) | 166 | `result-track:4cd0cdbfcfe28462f567750200a867cd043d7dcecc3cc017e999cbf15d7b90d3` |
| 6 | `theorem` | [upperCrossingTime_succ](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-succ.md) | 169 | `result-track:bf32761cb8d1706e4f09f49e2422723007ffdae8dd9287bb61f770b15dca1ac1` |
| 7 | `theorem` | [upperCrossingTime_succ_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-succ-eq.md) | 174 | `result-track:d371d533dbc9e1aeb3408d33ad835bee357ca249c59e3d30ea6fbb099fdaba8b` |
| 8 | `theorem` | [upperCrossingTime_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-le.md) | 186 | `result-track:813083df06436edf2ac7491ce40aa38445df75edb43e8075975c82cea4689de3` |
| 9 | `theorem` | [upperCrossingTime_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-zero.md) | 192 | `result-track:c602534066ddb923bdc291f510daf55c072bc1235d013f17932a8df8cdd6aca1` |
| 10 | `theorem` | [lowerCrossingTime_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtime-le.md) | 195 | `result-track:d2e5bb77d10de90ae30f99e014eac28e8eac3f21efb955ca6b092630425439b4` |
| 11 | `theorem` | [upperCrossingTime_le_lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-le-lowercrossingtime.md) | 198 | `result-track:393a37e287f8e26b8f13106118faa2608aaa88b6dac007508bacf11d4105053a` |
| 12 | `theorem` | [lowerCrossingTime_le_upperCrossingTime_succ](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtime-le-uppercrossingtime-succ.md) | 202 | `result-track:15bd48af0200ba6fea1f0d5e103dfeef88f9060676b04de589535aea906c114f` |
| 13 | `theorem` | [lowerCrossingTime_mono](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtime-mono.md) | 207 | `result-track:b07a80b561fd7f67cdaaffe849c4c0b3bf76f8af878958e6a00294ba500843eb` |
| 14 | `theorem` | [upperCrossingTime_mono](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-mono.md) | 213 | `result-track:d48b450ce41afd3b662f6cf58ee6448a43a86cb0d7eda03f170ce52d560a77bf` |
| 15 | `theorem` | [stoppedValue_lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/stoppedvalue-lowercrossingtime.md) | 223 | `result-track:0ca643211559b59903891a0519484bed0cd7af3c8a650340a9d3d9e96ab836b0` |
| 16 | `theorem` | [stoppedValue_upperCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/stoppedvalue-uppercrossingtime.md) | 229 | `result-track:e6a100177aad51dff4b7f82097c5a0c062564e44822c7db6630584db7cc5837f` |
| 17 | `theorem` | [upperCrossingTime_lt_lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-lt-lowercrossingtime.md) | 235 | `result-track:1b50751654e6d58687d5a1b4b4ec64692613cbfdb86636c6a591328cfb220a97` |
| 18 | `theorem` | [lowerCrossingTime_lt_upperCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtime-lt-uppercrossingtime.md) | 244 | `result-track:164fc38ab73e7454f35daa13f3f39471d66b612238a1978d2fe1c0e73f093b4d` |
| 19 | `theorem` | [upperCrossingTime_lt_succ](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-lt-succ.md) | 253 | `result-track:899c04655577c633ab77319c45f9b96d737cacdbb9ec1630393eef912fe6bc81` |
| 20 | `theorem` | [lowerCrossingTime_stabilize](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtime-stabilize.md) | 258 | `result-track:3562b8c3508c44e7b7f7e17217e78df0bbcdd429692a00a79bfd55d7bb3ad18a` |
| 21 | `theorem` | [upperCrossingTime_stabilize](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-stabilize-source-edition-2.md) | 262 | `result-track:3f6cb354fb4ce751a59fe80e6613e1af976a7f9d56c7dde92d34b32ab74c5d97` |
| 22 | `theorem` | [lowerCrossingTime_stabilize'](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtime-stabilize-source-edition-2.md) | 266 | `result-track:acc823a6ee9707837cd79b649a44d891904ddce03740d05ceabfa6bee2998113` |
| 23 | `theorem` | [upperCrossingTime_stabilize'](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-stabilize.md) | 270 | `result-track:28d05f0e0b4d900de3a3f4bd8cba38e675b5b5bd7b5a479a02c29b7b4b3dc75e` |
| 24 | `theorem` | [exists_upperCrossingTime_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/exists-uppercrossingtime-eq.md) | 275 | `result-track:40037496a839f9eced413adee63fbb0cc70dbdd24c8f5a9fdacc9c74a6d9c7e0` |
| 25 | `theorem` | [upperCrossingTime_lt_bddAbove](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-lt-bddabove.md) | 286 | `result-track:21a6c3caa8478739a9b1ee65d101442bc8b40a22dbdab7fb3cfedb7ec4c81619` |
| 26 | `theorem` | [upperCrossingTime_lt_nonempty](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-lt-nonempty.md) | 293 | `result-track:cfd717e60df49113eee2fd104f42ba41d6a618c8e556a4fe93cf365943ec5ba5` |
| 27 | `theorem` | [upperCrossingTime_bound_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-bound-eq.md) | 297 | `result-track:007825ecb69cae47d1df8310e84c48a961827c9edc73ccd13b668cca1ff6c3e2` |
| 28 | `theorem` | [upperCrossingTime_eq_of_bound_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-eq-of-bound-le.md) | 310 | `result-track:44b9cd9f8a8738ef478bff1f8b7933d7786c24f86ad7e6ee974b5de856bf4a6c` |
| 29 | `theorem` | [StronglyAdapted.isStoppingTime_crossing](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/stronglyadapted-isstoppingtime-crossing.md) | 317 | `result-track:279a58377b1eec6444525096c83e44962a2ca5ea9c1e562df420c1776e134da7` |
| 30 | `theorem` | [StronglyAdapted.isStoppingTime_upperCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/stronglyadapted-isstoppingtime-uppercrossingtime.md) | 335 | `result-track:aa313069ac62cc638009aafe22064bbca03f21e0ef43a7823a9936099d0907c2` |
| 31 | `theorem` | [StronglyAdapted.isStoppingTime_lowerCrossingTime](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/stronglyadapted-isstoppingtime-lowercrossingtime.md) | 339 | `result-track:aac3d3b80311d219048378b84821efbe5821d955e557a0ac09179ba02bb2aa6d` |
| 32 | `def` | [upcrossingStrat](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingstrat.md) | 346 | `declaration-track:a1c08f04c063e21b21012194632149bebb42d5eb9eb16e259dec542a0a673d9c` |
| 33 | `theorem` | [upcrossingStrat_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingstrat-nonneg.md) | 350 | `result-track:5530579522672d17f97b969b15bc57cd8018fe2ab7918f4f7e56b1849deb76c9` |
| 34 | `theorem` | [upcrossingStrat_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingstrat-le-one.md) | 353 | `result-track:e66847b25c53543e686b4ed80a0bdf2e8ac436201ebe394308d803427fe1f4b3` |
| 35 | `theorem` | [StronglyAdapted.upcrossingStrat](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/stronglyadapted-upcrossingstrat.md) | 372 | `result-track:cf0719a889646bea6395f4077acd7682f55d5b05a585b60391384f70e10c1e72` |
| 36 | `theorem` | [Submartingale.sum_upcrossingStrat_mul](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/submartingale-sum-upcrossingstrat-mul.md) | 386 | `result-track:1f60e46cf058044fa30bccd9bdbd30324a2a4d1ac46f01fbd9bdcd519a0480f6` |
| 37 | `theorem` | [Submartingale.sum_sub_upcrossingStrat_mul](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/submartingale-sum-sub-upcrossingstrat-mul.md) | 392 | `result-track:a3bf78434c5a7edab1c925439701ad51fb0330f98cdf42aae7f3448792d4572c` |
| 38 | `theorem` | [Submartingale.sum_mul_upcrossingStrat_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/submartingale-sum-mul-upcrossingstrat-le.md) | 402 | `result-track:78f82a6ff41a448ce0754fe0d7e33ffff552f82436ae49afbf16f3798c2d3d26` |
| 39 | `def` | [upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingsbefore.md) | 424 | `declaration-track:67ca4b21d35ca8be265f28094c4422c1523722e52bf9a4ffd3ff4024df3663a6` |
| 40 | `theorem` | [upcrossingsBefore_bot](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingsbefore-bot.md) | 429 | `result-track:c7fa5c1c37aea3fdc9ead041de34672818b50d13e7138264ac75526bac924621` |
| 41 | `theorem` | [upcrossingsBefore_zero](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingsbefore-zero-source-edition-2.md) | 432 | `result-track:8767c3cfe32a55a4b470993c598c5bbb957afb9d19ae6629f7f98423940f51e3` |
| 42 | `theorem` | [upcrossingsBefore_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingsbefore-zero.md) | 435 | `result-track:5c79781611ff6f59c37a152d3b5ef384ff06a66b7430485a6fe27e8995b70e0f` |
| 43 | `theorem` | [upperCrossingTime_lt_of_le_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-lt-of-le-upcrossingsbefore.md) | 438 | `result-track:d35713e39b2284c7bbccc7084fd8bf9fa6201d9059e2af5579f7d9db266cd370` |
| 44 | `theorem` | [upperCrossingTime_eq_of_upcrossingsBefore_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-eq-of-upcrossingsbefore-lt.md) | 445 | `result-track:6c6b91c04425e3379055d51af41a051c93351504cf64113e1228eff4ad305a8d` |
| 45 | `theorem` | [upcrossingsBefore_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingsbefore-le.md) | 450 | `result-track:b520ffe740b308f0e2cc42c28cd2901f53e4782091b7207acf10fa9d6e9a4f8d` |
| 46 | `theorem` | [crossing_eq_crossing_of_lowerCrossingTime_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/crossing-eq-crossing-of-lowercrossingtime-lt.md) | 459 | `result-track:8b1bb3a5961bb81e63fd9e77062582699986326edd752af811ce9e6ef9c5510e` |
| 47 | `theorem` | [crossing_eq_crossing_of_upperCrossingTime_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/crossing-eq-crossing-of-uppercrossingtime-lt.md) | 491 | `result-track:9f90630256824bced213aab61de605f80333b910293b25bba5d0491e150abaf7` |
| 48 | `theorem` | [upperCrossingTime_eq_upperCrossingTime_of_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/uppercrossingtime-eq-uppercrossingtime-of-lt.md) | 505 | `result-track:bad52372146ddfe264fb4f10e1469a5861ee60febaee5a827aec0d8efca923bc` |
| 49 | `theorem` | [upcrossingsBefore_mono](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingsbefore-mono.md) | 512 | `result-track:d055b37bf8126a9cb6e47da2848c9b3cc58c3ad835bd5bda08b7d396cebdbcad` |
| 50 | `theorem` | [upcrossingsBefore_lt_of_exists_upcrossing](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingsbefore-lt-of-exists-upcrossing.md) | 521 | `result-track:37f56a7edcb9db71808e0e8ff1c339294793b60eaec843b027b7fd4225af492a` |
| 51 | `theorem` | [lowerCrossingTime_lt_of_lt_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/lowercrossingtime-lt-of-lt-upcrossingsbefore.md) | 538 | `result-track:1d2ac0964e0ea5b8839d26f74307771f5d1df09e7001f9f6b94098bf969da68c` |
| 52 | `theorem` | [le_sub_of_le_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/le-sub-of-le-upcrossingsbefore.md) | 543 | `result-track:d67560dd7fa7e28664250a695e1b429252712e2155c1818c659e992a735c8acb` |
| 53 | `theorem` | [sub_eq_zero_of_upcrossingsBefore_lt](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/sub-eq-zero-of-upcrossingsbefore-lt.md) | 551 | `result-track:d35689490ef16203992e439a5b12768aa4f7ce82a5c8b9367d856e7075daf04b` |
| 54 | `theorem` | [mul_upcrossingsBefore_le](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/mul-upcrossingsbefore-le.md) | 561 | `result-track:4104fc736f5f65cd1de181ee6096ef6f177f3a3fe3719f134063665f4f3f4172` |
| 55 | `theorem` | [integral_mul_upcrossingsBefore_le_integral](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/integral-mul-upcrossingsbefore-le-integral.md) | 616 | `result-track:43713f17bd5636ea63aa8dfe5f9d0c56506ec0fcbbd637d9ad93423adf56cac5` |
| 56 | `theorem` | [crossing_pos_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/crossing-pos-eq.md) | 630 | `result-track:229e1e9867f3999b86b0e4461b713f8db2668de7bf08d72367dbfda5e6f83207` |
| 57 | `theorem` | [upcrossingsBefore_pos_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingsbefore-pos-eq.md) | 671 | `result-track:10b85d96fc37907d001be7b664b450c183067792b84c518763b808fc6d9614d2` |
| 58 | `theorem` | [mul_integral_upcrossingsBefore_le_integral_pos_part_aux](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/mul-integral-upcrossingsbefore-le-integral-pos-part-aux.md) | 675 | `result-track:b94331a5627a5a697b37118ef47c736e114231c58a09d8b28ddb4d36bba45801` |
| 59 | `theorem` | [Submartingale.mul_integral_upcrossingsBefore_le_integral_pos_part](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/submartingale-mul-integral-upcrossingsbefore-le-integral-pos-part.md) | 689 | `result-track:5f1084a411aff827cb3c42361c25bd8231b0760351484c59d2975047a848da62` |
| 60 | `theorem` | [upcrossingsBefore_eq_sum](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossingsbefore-eq-sum.md) | 724 | `result-track:9ea70f721f2a32245d1150c118a914be6bb0a3a31b534b4195ba75c898c51071` |
| 61 | `theorem` | [StronglyAdapted.measurable_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/stronglyadapted-measurable-upcrossingsbefore.md) | 749 | `result-track:dda2b2c5c72a6d374629a6ce434fdd99c40f6521e4681aadfd1782dda84d3f4e` |
| 62 | `theorem` | [StronglyAdapted.integrable_upcrossingsBefore](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/stronglyadapted-integrable-upcrossingsbefore.md) | 761 | `result-track:286a6a71867bb8b4f2af1227f6434e25821a6191bf7747e3dddc76532e94cf8f` |
| 63 | `def` | [upcrossings](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossings.md) | 773 | `declaration-track:acbf5954c54b26ce645bf0b2c8d581ec7c63640678e612c73a29f10403980709` |
| 64 | `theorem` | [StronglyAdapted.measurable_upcrossings](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/stronglyadapted-measurable-upcrossings.md) | 777 | `result-track:eecb6e8bde5c72a23c45c304f8f90c4fab6358a4cd161a7c6ee3d1dd5ab8e0be` |
| 65 | `theorem` | [upcrossings_lt_top_iff](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/upcrossings-lt-top-iff.md) | 781 | `result-track:30c8e76f7d91a7b72793563dbeabbbab3cb8a029668067accf3bcf409dcc6855` |
| 66 | `theorem` | [Submartingale.mul_lintegral_upcrossings_le_lintegral_pos_part](../../../../ProbabilityTheoryAndStochasticProcesses/UpcrossingPublic.lean/declarations/submartingale-mul-lintegral-upcrossings-le-lintegral-pos-part.md) | 799 | `result-track:24dd15e3c242233a50eb571115008c2eddc70923b3ec7d9497cbd652779f4828` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48065a76a7c832587d3ead12827e3c4694364c342ea26f7fcc0b3518c22e9ed6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
