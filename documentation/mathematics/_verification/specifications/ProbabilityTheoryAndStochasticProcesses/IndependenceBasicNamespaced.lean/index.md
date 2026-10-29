# Verification target: Independence Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "960fa29c593c1f532f0aac1b481d491b8ede2fe9",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant61c23eb85e1be16dcfba7c6ebb5178a459259327cf3463adcf5508ecf894cd07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `960fa29c593c1f532f0aac1b481d491b8ede2fe9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant61c23eb85e1be16dcfba7c6ebb5178a459259327cf3463adcf5508ecf894cd07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant61c23eb85e1be16dcfba7c6ebb5178a459259327cf3463adcf5508ecf894cd07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Independence.Kernel` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepsets.md) | 93 | `declaration-track:a8aa96933b691120866d885d863d8f5189267eb676f2d0994f9bdb25c501d434` |
| 2 | `def` | [IndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets.md) | 100 | `declaration-track:c85a6ab2b7ffef71fdb6be0e29fec94174dbe20794564ee355562c9f71d660e7` |
| 3 | `def` | [iIndep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindep.md) | 109 | `declaration-track:f696cd0abe357c297164876bdf3d4939b776c4e38fa04f2814c337ca2bb889fa` |
| 4 | `def` | [Indep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep.md) | 118 | `declaration-track:f4df732db93af91cad32231a3ac1349c13472f94fb267c41a8fb44f88bcf0bb6` |
| 5 | `def` | [iIndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepset.md) | 124 | `declaration-track:5f2ded7d86edd831232df801e451ff2d86a3db787016392043583d23cf132573` |
| 6 | `def` | [IndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepset.md) | 131 | `declaration-track:a7597b1d5e0f31e097bd8320f2323584822c1d289f24346ed1a2c916685267a8` |
| 7 | `def` | [iIndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun.md) | 139 | `declaration-track:cfed982e8ec1655d5019a47ff08ae2c308e07729fd4f1a260fffe9b85df6be7a` |
| 8 | `def` | [IndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepfun.md) | 148 | `declaration-track:88da29f96bb2182ec8a733ce533ec5a3b8eed6af431ac9e7265cb496ff9b04c9` |
| 9 | `lemma` | [iIndepSets_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepsets-iff.md) | 157 | `result-track:73891f8fb02894c687a38208befde458cffe9ff56db3da38995db747e0375ead` |
| 10 | `lemma` | [IndepSets_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-iff.md) | 162 | `result-track:79fa7ae239d7cf2a404196aaef81275d73505871063a8a85536b1a1b62c45dd1` |
| 11 | `lemma` | [iIndep_iff_iIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindep-iff-iindepsets.md) | 166 | `result-track:56f51985c923574e405bc75daccea9fa8b68569619c7043c74d45f199341b8ef` |
| 12 | `lemma` | [iIndep_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindep-iff.md) | 170 | `result-track:dfa44e16f5d6f7dd07e3693c1efec1ec1418c51748e4a74c609769e288bd8662` |
| 13 | `lemma` | [Indep_iff_IndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-iff-indepsets.md) | 175 | `result-track:277f395afc6c26b24550613180fc0d07b5ea5ea15f7c870cfd777a03f241a9e2` |
| 14 | `lemma` | [Indep_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-iff.md) | 179 | `result-track:a7db0b4c9384aa73cc34ea299ed17b56a37d1c601b880aaec81212e7f53ea69d` |
| 15 | `lemma` | [iIndepSet_iff_iIndep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepset-iff-iindep.md) | 184 | `result-track:898da28276360adf7ba3b66f7c5e0d0d1a0963bfbae131796205386007a85812` |
| 16 | `lemma` | [iIndepSet_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepset-iff.md) | 188 | `result-track:00e7c28f8c7e380a57cff35168e5beb8260b38b2beb51f5b75df4f4d3369f004` |
| 17 | `lemma` | [IndepSet_iff_Indep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepset-iff-indep.md) | 194 | `result-track:023faf59d54d7af2c808125347663d983363ec493cf6777d8c36f76abeab7386` |
| 18 | `lemma` | [IndepSet_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepset-iff.md) | 198 | `result-track:12eeceba71c59598ef4ca2d9d6580a30326ee1416035620bf6d0848af1e3816e` |
| 19 | `lemma` | [iIndepFun_iff_iIndep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun-iff-iindep.md) | 203 | `result-track:b26279b8c25ec60525b3a758a0284051a215a1ae16a78cb44f9cea5e1e4e3e4a` |
| 20 | `lemma` | [iIndepFun_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun-iff.md) | 208 | `result-track:a204ac64b309bbbd3638dac42566b15cceca9c85e0aadddf14cbb41ecfa8bd3a` |
| 21 | `lemma` | [IndepFun_iff_Indep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepfun-iff-indep.md) | 215 | `result-track:f96f5a2a1daefc76d64b907b3ad41cf4f411b959a8bb084447b46ebc35b91062` |
| 22 | `lemma` | [IndepFun_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepfun-iff.md) | 220 | `result-track:077207b60a1ad1494502e9b23b6622725f969fbefd4957a1fed196bd93a27d41` |
| 23 | `theorem` | [IndepSets.symm](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-symm.md) | 231 | `result-track:33d84f95ccaa6f05dab6cd19d664c3256ce649028f786f5e09df6cb85def3887` |
| 24 | `theorem` | [Indep.symm](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-symm.md) | 237 | `result-track:659f393aa4802ab9df0b1f0fc386fee07c7830df96bc6ab979475419d0c91c15` |
| 25 | `theorem` | [indep_bot_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-bot-right.md) | 241 | `result-track:3d64e0e0ca27a066e690a55d0619be64a4d33a3d1d6905d0c421a1515fd61799` |
| 26 | `theorem` | [indep_bot_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-bot-left.md) | 246 | `result-track:330531b61add30b0f66535692a53307dc72c63c3e321d69c8888fe27c53a92cb` |
| 27 | `theorem` | [indepSet_empty_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepset-empty-right.md) | 250 | `result-track:4bd9c6cb3f2cafe200cf447c135cb0bbd0cbc7d92a03198f6d8d7bb8d25570c4` |
| 28 | `theorem` | [indepSet_empty_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepset-empty-left.md) | 255 | `result-track:8288816fb687d362c3a9ad692f0be932c570d33e8f83f95adf00d9a70576809e` |
| 29 | `theorem` | [indepSets_of_indepSets_of_le_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-of-indepsets-of-le-left.md) | 260 | `result-track:38d2b45d64c1698185fbe66d7cd34bc5b9df67430b2a05bc6b5a68260e306dbe` |
| 30 | `theorem` | [indepSets_of_indepSets_of_le_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-of-indepsets-of-le-right.md) | 266 | `result-track:d2abd3020de5325b67de533da93ff897d1f0cecce74dc9bb1d5b3666523f3052` |
| 31 | `theorem` | [indep_of_indep_of_le_left](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-of-indep-of-le-left.md) | 272 | `result-track:8411a2619ffbcfbcea118e3bf87ea5c00a4fe1a845694b6d489abab158297771` |
| 32 | `theorem` | [indep_of_indep_of_le_right](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-of-indep-of-le-right.md) | 278 | `result-track:88bb99524bedfd3d55165edab799d8f5e8e1616f5aebc6a0d829eac1d024cc54` |
| 33 | `theorem` | [IndepSets.union](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-union.md) | 284 | `result-track:48c534e845daa58dd7b3faf9ca49e56412f3f0d502bbc41ef562cab86b5b9f2e` |
| 34 | `theorem` | [IndepSets.union_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-union-iff.md) | 291 | `result-track:c9321fbefb0c36cac4e855b041ffbb6ab46a5e703ea53bc9a84fbd479609a170` |
| 35 | `theorem` | [IndepSets.iUnion](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-iunion.md) | 296 | `result-track:80222dafcbd3bc1284e5de3cadf562cfc82dd1895af2d0941fba0cc1175de735` |
| 36 | `theorem` | [IndepSets.bUnion](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-bunion.md) | 302 | `result-track:0354aa7c45234cf3c03d9dff47d3fd08ab24bdd247562cc11b4932e2471ebe76` |
| 37 | `theorem` | [IndepSets.inter](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-inter.md) | 308 | `result-track:f1b278c66414a2eafe14b3ffadceaba7999ec36e2ee305c1e9b77a4aa8c2a30a` |
| 38 | `theorem` | [IndepSets.iInter](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-iinter.md) | 313 | `result-track:e1ec240b51f8726fa9f70f354fe721131de938bbc8085a1ce968b8abacd803fc` |
| 39 | `theorem` | [IndepSets.bInter](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-binter.md) | 319 | `result-track:ae649acfc19f5f0e878de001698153b672620556de2c5481a2b7a81e7fe30188` |
| 40 | `theorem` | [indepSets_singleton_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-singleton-iff.md) | 325 | `result-track:58e6ea2f5bce359022399f359750df63dcd22b8bf5c54ec2bb5b0f0af91efbee` |
| 41 | `theorem` | [iIndepSets.indepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepsets-indepsets.md) | 338 | `result-track:6db23bfc3a45fe76d905d88f04f30c47854cccb73717109f82549ad949dc290b` |
| 42 | `theorem` | [iIndep.indep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindep-indep.md) | 344 | `result-track:5f19cfe489b1e7d1d85cb62c7932b62eb64413712297a82e6bd4aaa9412195ee` |
| 43 | `theorem` | [iIndepFun.indepFun](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun-indepfun.md) | 350 | `result-track:92a64597d99baa58afc5dfbb347c6c714d7dd07c11e9701aab77c9ae895273c6` |
| 44 | `theorem` | [iIndep.iIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindep-iindepsets.md) | 372 | `result-track:7d4c4385e22a2b8d3e29a053ef3086bbfa5e271a07bb89d308d434d6fb13ad54` |
| 45 | `theorem` | [Indep.indepSets](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-indepsets.md) | 379 | `result-track:4565896cb53bc4af45ff58e401a3ba6dab7bf2ac9bc0f275e298fd6177023aaf` |
| 46 | `theorem` | [IndepSets.indep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-indep-source-edition-2.md) | 391 | `result-track:adbdd65d07f62ff1467992437e68bc98d6193688eceff6d3a8a8043fffa87742` |
| 47 | `theorem` | [IndepSets.indep'](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-indep.md) | 399 | `result-track:9dd61870e2e9138f1eb1ac2f90b67961e5242b0c96ca721b22c029945093f1ba` |
| 48 | `theorem` | [indepSets_piiUnionInter_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-piiunioninter-of-disjoint.md) | 408 | `result-track:9e7a07aff89fc58204a465ab455f4744ca15cc9e1e49518b2a520939406ce4eb` |
| 49 | `theorem` | [iIndepSet.indep_generateFrom_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepset-indep-generatefrom-of-disjoint.md) | 414 | `result-track:82a99b5cef2e02dba3034eff16a9ca3870945d9c29a0258711ca50f45b52a528` |
| 50 | `theorem` | [indep_iSup_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-isup-of-disjoint.md) | 421 | `result-track:dec8ae47cc847ea9cef9d63ae38c1f43d6fc1b706b604ced0a29f45d7e0ef1c6` |
| 51 | `theorem` | [indep_iSup_of_directed_le](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-isup-of-directed-le.md) | 427 | `result-track:1c4bfb750dbac7bdc7a17d80e394975ff6fd596b45681dbeb19be1cab198e9b8` |
| 52 | `theorem` | [iIndepSet.indep_generateFrom_lt](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepset-indep-generatefrom-lt.md) | 434 | `result-track:0a5ac7b2eb28d80aa2bf0df30512cdffe2e27db0b8ee075d11a6f54419230cdf` |
| 53 | `theorem` | [iIndepSet.indep_generateFrom_le](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepset-indep-generatefrom-le.md) | 441 | `result-track:bc34128dde6c917dd1d56791f6b67529f54c24106aab4ef8666199f4f0d8c2c8` |
| 54 | `theorem` | [iIndepSet.indep_generateFrom_le_nat](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepset-indep-generatefrom-le-nat.md) | 448 | `result-track:b7124a9b5cff9dfbfc50b3f878126c332df8185cf103b561b08411041ae796b9` |
| 55 | `theorem` | [indep_iSup_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-isup-of-monotone.md) | 455 | `result-track:47b52f023cf274b482a5db8d94c2e8667a2cbdd18dff88080c3257b2bd7516e0` |
| 56 | `theorem` | [indep_iSup_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-isup-of-antitone.md) | 462 | `result-track:ecd257859ffb9427c61735cf873ba2a947e3e596d5be52ebe0734d34ffe39b1d` |
| 57 | `theorem` | [iIndepSets.piiUnionInter_of_not_mem](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepsets-piiunioninter-of-not-mem.md) | 469 | `result-track:6b690f4837e4ac168db9d461af38432434f1c280c7fd1d0612fea0d455a7adb9` |
| 58 | `theorem` | [iIndepSets.iIndep](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepsets-iindep.md) | 477 | `result-track:af929bdba3230d395fc2307873c42dbf924fff6f160d2ce54ae1128ad5a5df51` |
| 59 | `theorem` | [indepSet_iff_indepSets_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepset-iff-indepsets-singleton.md) | 499 | `result-track:e1441aea930deeb2e65f1753a9a094af0cdbc81dcd604ff657574e9f7448bc4c` |
| 60 | `theorem` | [indepSet_iff_measure_inter_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepset-iff-measure-inter-eq-mul.md) | 505 | `result-track:68ae7951624910e73453552ad9731bd1b3f8c515323c9699d2b4dfb12943b2af` |
| 61 | `theorem` | [IndepSets.indepSet_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepsets-indepset-of-mem.md) | 511 | `result-track:2d1b7b79968afb273922a563141a146c30fd004144b691871ebc5543b7f348c0` |
| 62 | `theorem` | [Indep.indepSet_of_measurableSet](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-indepset-of-measurableset.md) | 519 | `result-track:ee0e9660ad89335a7f3da4ecc0cdd3bd992a14a67d2fa18f58e21ac2f0f2a74c` |
| 63 | `theorem` | [indep_iff_forall_indepSet](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indep-iff-forall-indepset.md) | 526 | `result-track:476fd56fa0fa6014ea4d4f52daafc1b0a48265612942530cde369d34098afc92` |
| 64 | `theorem` | [indepFun_iff_measure_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepfun-iff-measure-inter-preimage-eq-mul.md) | 543 | `result-track:caa0049eb18c8632055c88bb3a1161e151ca467bf9dc5207091f3c657a5717f1` |
| 65 | `theorem` | [iIndepFun_iff_measure_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun-iff-measure-inter-preimage-eq-mul.md) | 552 | `result-track:4cac057fa58223418b70562396d8301a8b798b0952b521dcfbea1b7906dc508c` |
| 66 | `theorem` | [indepFun_iff_indepSet_preimage](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepfun-iff-indepset-preimage.md) | 562 | `result-track:41a3e0d535832cdde57afa9b071f780461519e3e41958101463bdd22192518d6` |
| 67 | `theorem` | [IndepFun.symm](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepfun-symm.md) | 571 | `result-track:631ffea29f994189991084f08cd0c8f2e777e6a8b4aa6f5ee6e57cb3d03bae6b` |
| 68 | `theorem` | [IndepFun.ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepfun-ae-eq.md) | 575 | `result-track:88ab9c81e0d050564d4d3c349a5419acdfc84c3658ecfe41ee1f4d88d92c4992` |
| 69 | `theorem` | [IndepFun.comp](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/indepfun-comp.md) | 582 | `result-track:3ce710271cbd83db2dd87eeacf252b2364006882e50ba6f509ca59ba2d52a4ec` |
| 70 | `theorem` | [iIndepFun.indepFun_finset](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun-indepfun-finset.md) | 592 | `result-track:1823bb0e37941069de1019c926f451467277a47014d2be58e08361219081a35a` |
| 71 | `theorem` | [iIndepFun.indepFun_prod](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun-indepfun-prod.md) | 600 | `result-track:b1364bc7ce81141c7f61e86299a27e81a7d73b9ec9a3f95922c05547f3f128fb` |
| 72 | `theorem` | [iIndepFun.mul](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun-mul.md) | 609 | `result-track:1b3f7d9ec9687b3f189d509c470fc49790c057b940a42c4672b166e8727a0de2` |
| 73 | `theorem` | [iIndepFun.indepFun_finset_prod_of_not_mem](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun-indepfun-finset-prod-of-not-mem.md) | 620 | `result-track:09ebac40c80953cf7645d519bc5a08a7aa094a0ab2b1316a4d377b7ad01bb255` |
| 74 | `theorem` | [iIndepFun.indepFun_prod_range_succ](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepfun-indepfun-prod-range-succ.md) | 632 | `result-track:ce40712166d077706f421d111dc1300ca9cd547fe1b3a27060f085a695bfc989` |
| 75 | `theorem` | [iIndepSet.iIndepFun_indicator](../../../../ProbabilityTheoryAndStochasticProcesses/IndependenceBasicNamespaced.lean/declarations/iindepset-iindepfun-indicator.md) | 642 | `result-track:403dfc7a74ad7d2da987a2701f8529196be9e10a525a09db55c91907c655b77f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=447b566401d5887e7d92f600813662af4b8b239f6e74067b7bb5821e02ccc40c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant61c23eb85e1be16dcfba7c6ebb5178a459259327cf3463adcf5508ecf894cd07.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variant61c23eb85e1be16dcfba7c6ebb5178a459259327cf3463adcf5508ecf894cd07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
