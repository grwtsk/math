# Verification target: Unitization Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5090788d9a9b3101f6d2a35ab3dcac8f0faea5eb",
  "lexical_observation_count": 139,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant7db0d1bfe8dcaa76c29f08420b187694ab9f003571bf5f385b937bca072f8bc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5090788d9a9b3101f6d2a35ab3dcac8f0faea5eb`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Unitization/Variant7db0d1bfe8dcaa76c29f08420b187694ab9f003571bf5f385b937bca072f8bc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Unitization/Variant7db0d1bfe8dcaa76c29f08420b187694ab9f003571bf5f385b937bca072f8bc8.lean.json)

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
| 1 | `structure` | [Unitization](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/unitization.md) | 76 | `declaration-track:f5ce3750aeeb17cb024124cd5b1fe2633e1381545e8e48bbdfaf59d955f5f6bc` |
| 2 | `def` | [Unitization.delabMk](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/unitization-delabmk.md) | 84 | `declaration-track:581ca720f57f771abc44898d0b3a40551ee39e1927e97fb7075b720712df82e3` |
| 3 | `lemma` | [mk_toProd](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/mk-toprod.md) | 94 | `result-track:cba1e3388c03d0f3debb3be1657480d4dcd095657f6479aaffc53a63a98b7193` |
| 4 | `lemma` | [toProd_mk](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toprod-mk.md) | 95 | `result-track:fb8d685d241a6ff56f8fc132bd1dadda9f7fefff3f3af62d8999ab7e81f1ae69` |
| 5 | `def` | [equiv](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/equiv.md) | 99 | `declaration-track:bcc30226b74a3500eef08522f798d9924d6641e50e4a9561adcbc6439b6cef7b` |
| 6 | `lemma` | [toProd_injective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toprod-injective.md) | 105 | `result-track:6c1df41606df7388220dd79fd6ba1466eb64bb27998fa8ab551fcb1209c7e26e` |
| 7 | `lemma` | [toProd_surjective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toprod-surjective.md) | 108 | `result-track:62e6474b3f12b972be633b07de03d45f1e0987688fbeed46c0cba1885c94b30a` |
| 8 | `lemma` | [toProd_bijective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toprod-bijective.md) | 111 | `result-track:22cb4b7a14fba2989083de5f0c6749eea40d372e9a264823db7e72aac5875e88` |
| 9 | `lemma` | [mk_injective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/mk-injective.md) | 114 | `result-track:fc448ab17c1ee4418531dd786da3cee44a85e9045b608d9482039f40b0b6d1b8` |
| 10 | `lemma` | [mk_surjective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/mk-surjective.md) | 117 | `result-track:68e0444e1a812af467a12e3450a9584f4c309e3059d9d7aa78284cc732829b5d` |
| 11 | `lemma` | [mk_bijective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/mk-bijective.md) | 120 | `result-track:7e79943149f76bf2c54e64f91ff379aa4752b5d3b1962a2d6bc7f4cf2e41740e` |
| 12 | `lemma` | [toProd_inj_iff](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toprod-inj-iff.md) | 124 | `result-track:4f6b633335bb710f3a90ae7f3cb82e0b2122cd94280cba1fc265539eca4894a3` |
| 13 | `def` | [inl](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl.md) | 128 | `declaration-track:0ee3c05e08118ad1250ab6dd918d4fb9e7e84437b5197dab8d91115ad1a9a502` |
| 14 | `def` | [inr](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr.md) | 133 | `declaration-track:5ab48d948ca7665f78d5ed73573033bbc9e46b2434b6fe4e1e919c4068dafa1e` |
| 15 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instance.md) | 136 | `declaration-track:5bf795469eb3cb78720398dd8f2082958395027dc44430d3ba429654abe30b07` |
| 16 | `theorem` | [fst_inl](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fst-inl.md) | 144 | `result-track:22b5d1a587ed175013faf74f3142bd95f655b179d1b266664ea390cd939d516f` |
| 17 | `theorem` | [snd_inl](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/snd-inl.md) | 148 | `result-track:7867114884f64a99b7044a5ccd9fd1b198a25f9915bfd35f93b44ef99327afde` |
| 18 | `theorem` | [fst_inr](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fst-inr.md) | 158 | `result-track:199e2f2c37e98838ad6f47fe647400381def3650a9b2aa584a380081f18755e9` |
| 19 | `theorem` | [snd_inr](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/snd-inr.md) | 162 | `result-track:bb98a39e693912301fd8d0d7123a61657dea5fb65397f6ed119152f068c3e985` |
| 20 | `theorem` | [inl_injective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-injective.md) | 167 | `result-track:3455fdb9e91f4fc33d5e833e920397bd6289dfbeb9bab1b4d05295c889978706` |
| 21 | `theorem` | [inr_injective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-injective.md) | 170 | `result-track:b8fb43d660db2f9941ae663dbb3c9d71128656db4f30d3b9c1f8a22dace3ad08` |
| 22 | `theorem` | [inr_inj](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-inj.md) | 173 | `result-track:f8b5d7e4aa4f522683472504103e8ffdfa213c8a10db4823ce680df5a4597ffe` |
| 23 | `theorem` | [inl_inj](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-inj.md) | 176 | `result-track:1f2d36669ab59fb3a703f34801b2249bf22367e0914699c249ce3c0bd60c1ee6` |
| 24 | `instance` | [instNontrivialLeft](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instnontrivialleft.md) | 180 | `declaration-track:a0e1ad0730812419667cd8474728d32f7794887ed8fc09701e77f8e9d4a4f770` |
| 25 | `instance` | [instNontrivialRight](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instnontrivialright.md) | 184 | `declaration-track:4e8bb0f88feede18856b278a5ba48ff0ce4833029206d9cee219eadca1e637ba` |
| 26 | `instance` | [instCanLift](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instcanlift.md) | 199 | `declaration-track:0fde61ba8153a314002af3cfc27691da87a2cfb91e196da60bff194ec51b2891` |
| 27 | `instance` | [instInhabited](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instinhabited.md) | 202 | `declaration-track:fc486ae79b5659c8da3051df9c733bfc4ef0f20fc17c6a10d1988c66fe02e0f9` |
| 28 | `instance` | [instZero](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instzero.md) | 205 | `declaration-track:d8138332ea6e8ff1e63a2416178e5ea781534a02b8f8b663943823bdc987b477` |
| 29 | `instance` | [instAdd](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instadd.md) | 208 | `declaration-track:1710ab68228afe91ea168b9b02a4b6264cba60482a562f2589292e8668777312` |
| 30 | `instance` | [instSub](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instsub.md) | 211 | `declaration-track:8fee0121ada667b1a2d7f5e92eba80bb205673d1ba2db42b039da39e98c1383c` |
| 31 | `instance` | [instNeg](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instneg.md) | 214 | `declaration-track:c98457688d49397c8b49d8df55b9d75ea5b7bc8c1f4ac4e4ef9507e5a41619ae` |
| 32 | `instance` | [instSMul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instsmul.md) | 217 | `declaration-track:c3b20fce6155234607ee46d492a2f073dcc02fb12d66d94f485a1f74bdfd6d76` |
| 33 | `instance` | [instAddSemigroup](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instaddsemigroup.md) | 220 | `declaration-track:fe4ee73e48b8eeb3a84d2f3c2e1553b00ef97c615da94e4400a0ce33e0c3853c` |
| 34 | `instance` | [instAddZeroClass](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instaddzeroclass.md) | 223 | `declaration-track:814d6c131b2d653c50e73a347f78219a7e12907e724568b6c625d6c2a3ddf8d1` |
| 35 | `instance` | [instAddMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instaddmonoid.md) | 226 | `declaration-track:572adf8773bf5f13f118e3a28241fec94b4c66715950b0c6d46c124db122cdfe` |
| 36 | `instance` | [instAddGroup](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instaddgroup.md) | 229 | `declaration-track:24c0c35c33cba781642c16772dc9010a941edee7667d80f34c381dcd8db2da86` |
| 37 | `instance` | [instAddCommSemigroup](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instaddcommsemigroup.md) | 232 | `declaration-track:fa66b80f6ae1caa10d9ddcd463b99060077b01a1f788d9d4193d6e5154aa70e4` |
| 38 | `instance` | [instAddCommMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instaddcommmonoid.md) | 236 | `declaration-track:59a9e287b9ae660aabeddcd11da2927ca618699d06ff491ca71180159fc60064` |
| 39 | `instance` | [instAddCommGroup](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instaddcommgroup.md) | 239 | `declaration-track:cd35b23045eef2e29016b740b7bfecc2cbc9389c46ac0af3cac36131928cafa4` |
| 40 | `theorem` | [toProd_zero](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toprod-zero.md) | 243 | `result-track:0e59311f17a0a5e24c02c1bf15d8d3ba775353ecd09ce66509caa02bd04a1ae1` |
| 41 | `theorem` | [toProd_add](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toprod-add.md) | 247 | `result-track:b0afe6f3754672210c5d398bd0bbb6fb8fe27eebedfc7d16b3f846bf141e4d47` |
| 42 | `theorem` | [toProd_neg](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toprod-neg.md) | 252 | `result-track:70ed0078e431cbc87a09cc552847bb9dd082632fb61aa79568cb6ce4d6cffe80` |
| 43 | `theorem` | [toProd_smul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toprod-smul.md) | 256 | `result-track:eac1974b5e1362a360ab2171b550d1712d7265507d19514e9f470605c91af16a` |
| 44 | `instance` | [instIsScalarTower](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instisscalartower.md) | 260 | `declaration-track:9d8777ea646a5aeb9cb216d1d5d0801fd886a0209dfbb2b30a0d0bdfd9af0437` |
| 45 | `instance` | [instSMulCommClass](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instsmulcommclass.md) | 264 | `declaration-track:cad58efbb6aaa8062a4bcd269a99d16a3c878f924641f7dd554388dd7a574ba6` |
| 46 | `instance` | [instIsCentralScalar](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instiscentralscalar.md) | 268 | `declaration-track:05c33d87beebda70252ede9adabc69c2247f9d186a6e99853560cfee1a8eb5ab` |
| 47 | `instance` | [instMulAction](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instmulaction.md) | 272 | `declaration-track:cfc67914d6f1a463a4d16b66d92d4ece7a3c926d2a7ef9a38767972dac6d01c3` |
| 48 | `def` | [addEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/addequiv.md) | 278 | `declaration-track:dcc98822286c418491ed55fe660c2304e73b923451606d5a6c475888713ed2df` |
| 49 | `instance` | [instDistribMulAction](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instdistribmulaction.md) | 282 | `declaration-track:4b14bed6e14bfea9d232d9b95cf6a5e89f0b7efb50a228eb3f5ec3b8ecb072b8` |
| 50 | `instance` | [instModule](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instmodule.md) | 286 | `declaration-track:80740d04bed830c05001eb894dc40a72bc2fc05b66f2f11bacf9a69cd347e26d` |
| 51 | `lemma` | [toEquiv_addEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toequiv-addequiv.md) | 291 | `result-track:f34a5076b15ecd0a49bdcf94c38cba2da513f01575fc127fb4fe92baea0a0c37` |
| 52 | `def` | [linearEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/linearequiv.md) | 297 | `declaration-track:ff0f85fc3ba94c831cd3c11dc7703635554dc63ba0943e77e9f402dfc1c6d56e` |
| 53 | `lemma` | [toAddEquiv_linearEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toaddequiv-linearequiv.md) | 303 | `result-track:e8cf701e3bedb3c04456055ede2fbd3db1d2470e0ca6ce55b24f0f9b915cae9a` |
| 54 | `theorem` | [fst_zero](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fst-zero.md) | 308 | `result-track:199183c2040e719d35937a107c736930e3618a6abbb4ab09bd81b783e04b9176` |
| 55 | `theorem` | [snd_zero](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/snd-zero.md) | 312 | `result-track:050f9ed29fef4075a795c0ebd46a4ec44e0aa5a5a9a4ebf3701a3f62254dd709` |
| 56 | `theorem` | [fst_add](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fst-add.md) | 316 | `result-track:fec53800bf101a1dd506fe62e2a211e398000147a9168e571b40d29489712d45` |
| 57 | `theorem` | [snd_add](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/snd-add.md) | 320 | `result-track:b90f49a342b55a25f0ca4fe857cdea915c4e82942302d93795598e24c2d4d181` |
| 58 | `theorem` | [fst_neg](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fst-neg.md) | 324 | `result-track:7b41a5fa150ad7ec5f8e3add283ebbc4e4ec8f02628b8d1bcd944449e1036971` |
| 59 | `theorem` | [snd_neg](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/snd-neg.md) | 328 | `result-track:f5182b8508fab3affa7eefec08da46307f9467e790c6b76e57dc7a4aad5d6aea` |
| 60 | `theorem` | [fst_smul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fst-smul.md) | 332 | `result-track:a085c5853550ba8dca92fe029728ee97234c39642a1bfe1a7a18d19a75fbc927` |
| 61 | `theorem` | [snd_smul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/snd-smul.md) | 336 | `result-track:1261de981b4dc8601a99b2e4027dc49f5cb4652002eea7c29dfe86c6e8c7b33b` |
| 62 | `theorem` | [inl_zero](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-zero.md) | 344 | `result-track:01a25d0bb050e16a88b04c1d6be49cbe2855b76df429a9a1097d2e168d09d5da` |
| 63 | `theorem` | [inl_add](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-add.md) | 348 | `result-track:46b15344df8d0ec585e4f078a51facd0f9279b9ec7eeab77ce01a3370cceb43c` |
| 64 | `theorem` | [inl_neg](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-neg.md) | 353 | `result-track:0e3590c3bca84a280e3909a23c47b8afb2cf89c67f4c3eb9a6e5495db2ab23df` |
| 65 | `theorem` | [inl_sub](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-sub.md) | 357 | `result-track:8cb15d2f19fb8fec828d2289a6c9915e6167c3a46430f3dfb723e1eafd686300` |
| 66 | `theorem` | [inl_smul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-smul.md) | 362 | `result-track:9ad5162247c9bc365c967e67bfc0ac6e9e12c6be28b931293693dbd3d4216fbd` |
| 67 | `theorem` | [inr_zero](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-zero.md) | 373 | `result-track:d7d9db585fa200954b372151c89be68a8078881a89872cb2bfdc8b3e5a0ddda8` |
| 68 | `theorem` | [inr_add](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-add.md) | 377 | `result-track:ec32c081701a74e08b6175a1f1991bbd8e91343b2850582ce4977ec9a23abd74` |
| 69 | `theorem` | [inr_neg](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-neg.md) | 381 | `result-track:f2b83fb319989ba2230ccb2cdfa5441bc93c6c1c7cc5f2a51b6d78e29ad312ef` |
| 70 | `theorem` | [inr_sub](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-sub.md) | 385 | `result-track:2fe958a5f8fe32fa34f34be6369171803ff77c41095b7956b197903b65dd4116` |
| 71 | `theorem` | [inr_smul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-smul.md) | 389 | `result-track:bfb0464e386cbb0e30116f4016087d9a1ea38a51c5c27aa4baaa6cd35adba70a` |
| 72 | `theorem` | [inl_fst_add_inr_snd_eq](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-fst-add-inr-snd-eq.md) | 395 | `result-track:ba26e185930011d67b94bb1d859c3371fbd58605e4091c537ac8a8f1f1d90a36` |
| 73 | `theorem` | [ind](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/ind.md) | 404 | `result-track:227d40bc75fe5259758c25cb60ff9854c90204ed40174bd5da2ea61f14d2d80e` |
| 74 | `theorem` | [linearMap_ext](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/linearmap-ext.md) | 409 | `result-track:db190511b3de6297eefe07d966f33b4ae6d62ac7f27453417728ef62ba0ff867` |
| 75 | `def` | [inrHom](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inrhom.md) | 420 | `declaration-track:93a9a00c89659d34d57d547792f4d3357e7df3d38396b1863aa4618398022140` |
| 76 | `lemma` | [inrHom_injective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inrhom-injective.md) | 426 | `result-track:862bae50b54e5637a8f4b488249f791812f66744b3ecadc90c436b1ec5c7a81b` |
| 77 | `def` | [sndHom](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/sndhom.md) | 431 | `declaration-track:ad40f5f8334a2b4a1da14acc9ed3b05084c8a53239a0af003c90602783e51492` |
| 78 | `instance` | [instOne](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instone.md) | 445 | `declaration-track:331d5e066109364300f56496e7661f78cb1a60fc0bb3d637a27b0dea17b691ff` |
| 79 | `instance` | [instMul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instmul.md) | 448 | `declaration-track:8528d62e13b407965267758d22d36048fa245ed350b1cfb7c49bd30c52c270d5` |
| 80 | `theorem` | [fst_one](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fst-one.md) | 452 | `result-track:86cb2b73bfe3dbbe67ce54c685e6006aa20cc6bb76f1fbf105f132ba6ddb5e83` |
| 81 | `theorem` | [snd_one](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/snd-one.md) | 456 | `result-track:18f5426860ffd4f16a4e1f1adf3bd03964f8698251563ed0c34ef7e0411838c9` |
| 82 | `theorem` | [fst_mul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fst-mul.md) | 460 | `result-track:a02cad960ef8fc27d330d6bddee6ca8dae3326817e9ae5673e05eb12424b9970` |
| 83 | `theorem` | [snd_mul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/snd-mul.md) | 465 | `result-track:824f00937cf2de298d85b311256816a3b797b6043da64821bb4109324b986ca4` |
| 84 | `theorem` | [inl_one](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-one.md) | 474 | `result-track:214f2d8d36cf01c69c15864f0a2b1c2ba6600cb9c0e3d834dfecfe0d98e7a5ea` |
| 85 | `theorem` | [inl_mul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-mul.md) | 478 | `result-track:399fc173c7d9b0349fbd651101dda586c6c04a89f7e082666ada2ff2c86fb2dd` |
| 86 | `theorem` | [inl_mul_inl](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-mul-inl.md) | 482 | `result-track:36f328d7e28fe55b0430ef0c9a8c605c95fbd6376a6cd7c42491774ae7b68c21` |
| 87 | `theorem` | [inr_mul](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-mul.md) | 493 | `result-track:b65d1761ee5be1c0c8c19b0096eb1373ae287f3f3e1b27a972c0645821347470` |
| 88 | `theorem` | [inl_mul_inr](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-mul-inr.md) | 500 | `result-track:a8bddafb6a2a109e74fba5ca6374789a8ba53bed4b8ee4c4c54a7f36d5c86b4c` |
| 89 | `theorem` | [inr_mul_inl](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-mul-inl.md) | 505 | `result-track:da2d74b632125d1775f452af1efef380b670b880e10670fea2d0c507bcef06f6` |
| 90 | `instance` | [instMulOneClass](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instmuloneclass.md) | 509 | `declaration-track:45877f9e6f2b9f0767a769aeb3b8f899efe3e04c1686df16ce8f30fdd4e722e6` |
| 91 | `instance` | [instNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instnonassocsemiring.md) | 516 | `declaration-track:0b58d2aea20f9de02f7ab7f39c2e9afe34b8c32e4a22f8a02d201b9a3ef09d62` |
| 92 | `instance` | [instMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instmonoid.md) | 530 | `declaration-track:ca595f910fde018ed878b8f4d8fde4ba37a188d28b32154dde991097f5d4794f` |
| 93 | `instance` | [instCommMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instcommmonoid.md) | 539 | `declaration-track:13ea7ff0571305a46cf0e130d9891321ce5e148a352feb1dcb2e1bada24ddc5b` |
| 94 | `instance` | [instSemiring](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instsemiring.md) | 545 | `declaration-track:9e7cbcd02894386fad6c1fd32bbe67f99aa53d4cfc0ec59787cb9ff8c32830a3` |
| 95 | `instance` | [instCommSemiring](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instcommsemiring.md) | 550 | `declaration-track:c5c663c8363c96a3ba4b5163b4068865bd421e6da360e390ea78908391bdef03` |
| 96 | `instance` | [instNonAssocRing](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instnonassocring.md) | 555 | `declaration-track:0ad462c912257d52d451f2138a9a884cd6904ae770a2baa3d159f359e021de5e` |
| 97 | `instance` | [instRing](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instring.md) | 560 | `declaration-track:74817766306120c9e3316ee287e6000a8b3d0bbe12969cfd84cb15a6cdf8f779` |
| 98 | `instance` | [instCommRing](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instcommring.md) | 565 | `declaration-track:dbd28d88c7f9d985146577bdb5b393080e189e5d5fff8f850d02acb2ba87143f` |
| 99 | `def` | [inlRingHom](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inlringhom.md) | 574 | `declaration-track:e3281749da2d94027e1d83e69c16980f78a54224d82dd12041d59fd061df47bf` |
| 100 | `instance` | [instStar](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inststar.md) | 590 | `declaration-track:5efd51975ddad4731659e8e208a032305300926eeec6abc259cdc30bd788a4ab` |
| 101 | `theorem` | [fst_star](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fst-star.md) | 594 | `result-track:15e203e44e82d34bc6c530d3c6ac8ebd998f040d1169908866e11a658c38a19e` |
| 102 | `theorem` | [snd_star](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/snd-star.md) | 598 | `result-track:cd97e9263f20f335a05347c9dfc4be4b89578f123c96e976e6a9473c5e5e1a79` |
| 103 | `theorem` | [inl_star](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inl-star.md) | 602 | `result-track:8b4192f8285d58ca77e6040a22d3e231e2e805e02f98b1f670f46a3d45d3febc` |
| 104 | `theorem` | [inr_star](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-star.md) | 607 | `result-track:831943256be68207e52d9fb9b99de341f1341f3a9fc187d5b0a6b987609cd066` |
| 105 | `instance` | [instStarAddMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inststaraddmonoid.md) | 611 | `declaration-track:787a5c3e23110a64956e98427af55edeae1be1b2212f5997927377d463a3f011` |
| 106 | `instance` | [instStarModule](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inststarmodule.md) | 616 | `declaration-track:ca69220e8796cf90946aa55333fc784000a1cbe0e83a1342f2c760713cc2a127` |
| 107 | `instance` | [instStarRing](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inststarring.md) | 620 | `declaration-track:74411b8f37235b405cddeaa81ff0118a2bef014fbb9af045679a18344cf9158f` |
| 108 | `instance` | [instAlgebra](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instalgebra.md) | 639 | `declaration-track:06ca45c03e95a89e2503426036486d6c49fc8dede101aa9cb6233fd3d16910ba` |
| 109 | `theorem` | [algebraMap_eq_inl_comp](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/algebramap-eq-inl-comp.md) | 653 | `result-track:47162eb41194785769520cdb4bcdefae55c0dfdd01104cb897a1fece50e90416` |
| 110 | `theorem` | [algebraMap_eq_inlRingHom_comp](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/algebramap-eq-inlringhom-comp.md) | 656 | `result-track:3f9bd38ff78373dbcfbeb4142397761f42aa6468b986b395d502907882d8a5bc` |
| 111 | `theorem` | [algebraMap_eq_inl](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/algebramap-eq-inl.md) | 660 | `result-track:933b6bfc577213c24a577e01e36a730c2cd4eda947e73faeeb1302deaa905100` |
| 112 | `theorem` | [algebraMap_eq_inlRingHom](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/algebramap-eq-inlringhom.md) | 663 | `result-track:abfefbefe77b05affaf72fff78ab8b6d32fdb2fb7bd851e014651297499475f1` |
| 113 | `def` | [fstHom](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/fsthom.md) | 668 | `declaration-track:1472a6ddedcdabd2b7161443f872ded76fb122c1a3fa2804a6da91bf9fc341b2` |
| 114 | `def` | [inrNonUnitalAlgHom](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inrnonunitalalghom.md) | 683 | `declaration-track:628bd641a8c60744e035e52d04ae514cc8049f7aecf613d38e950e60b3b6fa86` |
| 115 | `def` | [inrNonUnitalStarAlgHom](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inrnonunitalstaralghom.md) | 694 | `declaration-track:20a49d837d8541b800a714fc97ae4cbad80e97a038bdd6e2bd5f8c6735094a6c` |
| 116 | `def` | [inrRangeEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inrrangeequiv.md) | 703 | `declaration-track:4c2681a647b40fd99ff139864843894f247b2087d5d6b4adda61f34b47b841eb` |
| 117 | `theorem` | [algHom_ext](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/alghom-ext-source-edition-3.md) | 716 | `result-track:bdc12b1dd157f2e3a969434bc708cd5cf35adcd688c2bcbb4e1376cde388d014` |
| 118 | `lemma` | [algHom_ext''](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/alghom-ext-source-edition-2.md) | 725 | `result-track:7b569556d02aa219349076bd044330e8d3e47818dffbfe5eaa9564bf487c5fff` |
| 119 | `theorem` | [algHom_ext'](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/alghom-ext.md) | 732 | `result-track:124b35236b8a4df4a326f420808ca3d3c5e21a21c8897221895c8438cca839eb` |
| 120 | `def` | [Unitization Namespaced Public](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toalghom.md) | 744 | `declaration-track:f801d389160a1665e797c07fccad682e01002f367214aef1aad6c8047a8ab7f4` |
| 121 | `def` | [lift](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/lift.md) | 774 | `declaration-track:820d46b79508e7242142bb95b4f3d984c81c829fb1b4c9c28a4b93255a463284` |
| 122 | `theorem` | [lift_symm_apply_apply](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/lift-symm-apply-apply.md) | 780 | `result-track:4d9a86bb75bef1cc5eff2b1fe64cf53603392c47551f3a841df29a989ea7792b` |
| 123 | `lemma` | [Unitization Namespaced Public](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/toalghom-zero.md) | 785 | `result-track:beebd91840ec7a74594c5b4360777162f5dd73c54b96791d13857ecf42ae520e` |
| 124 | `theorem` | [starAlgHom_ext](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/staralghom-ext.md) | 800 | `result-track:c0bc01fd52c395f13b5a20dc3fa4dace08e12bd134cae29bc3e8c8ab2bd257dc` |
| 125 | `def` | [starLift](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/starlift.md) | 811 | `declaration-track:ab08850b501777fcbd4e662d1b2d71bab1908d4adc35f7e0b17f1a65531443ae` |
| 126 | `theorem` | [starLift_symm_apply_apply](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/starlift-symm-apply-apply.md) | 820 | `result-track:17c948c9c205c98d88a5ee3ad39dfae57a96eec5c664af0ddd6750d26f19a230` |
| 127 | `def` | [starMap](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/starmap.md) | 841 | `declaration-track:c787af3c76b9e7486d70231050be077d2a1461300818bf452a6548150680f2a3` |
| 128 | `lemma` | [starMap_inr](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/starmap-inr.md) | 845 | `result-track:a269c783dac27b8690f0872b34f9598e627e50cf550bbe1700b0025a3c961048` |
| 129 | `lemma` | [starMap_inl](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/starmap-inl.md) | 850 | `result-track:185927eb89438c76e835a1f30568c846a6e547d126772049e1cc764b129502a7` |
| 130 | `lemma` | [starMap_injective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/starmap-injective.md) | 856 | `result-track:ba9c2d2a28767ed3d90aa486e0dfe1e7b9b8a916a16fa4487dd4dec775cc8e83` |
| 131 | `lemma` | [starMap_surjective](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/starmap-surjective.md) | 865 | `result-track:a6c4528cb6587adf71660b6152f3c527444d1a72cc83f45db5f28d188a0d2a2e` |
| 132 | `lemma` | [starMap_comp](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/starmap-comp.md) | 874 | `result-track:531ccb62b5e718d8b4f0f12a2e90e4b17c0dd2eb6238ee64d99d50c094449302` |
| 133 | `lemma` | [starMap_id](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/starmap-id.md) | 881 | `result-track:e23cd0902f495d32617e163037b1e9dea2b57f802dea3a3d2d7d1abe41e48932` |
| 134 | `lemma` | [isSelfAdjoint_inr](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/isselfadjoint-inr.md) | 893 | `result-track:aea08978c5d77abbdf14267a40432c63ad616075e22ccb6362a93df179f1aeec` |
| 135 | `lemma` | [Unitization Namespaced Public](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/inr-source-line-899-occurrence-2.md) | 899 | `result-track:dc23c0564faf3456789ed0ffdcac18929155edac3ad8073c6201a91685bea825` |
| 136 | `lemma` | [isStarNormal_inr](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/isstarnormal-inr.md) | 905 | `result-track:8d720d01215056667a0e7ea07d02791f5cad7a98c056e41de5820f3b388dc995` |
| 137 | `instance` | [instIsStarNormal](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/instisstarnormal.md) | 911 | `declaration-track:30520d7cd31281d66feba26bf8c1828a2e06b6a4d3dcc04b780634a3af9ef564` |
| 138 | `lemma` | [isIdempotentElem_inr_iff](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/isidempotentelem-inr-iff.md) | 918 | `result-track:f95670142890664246e5ec026652bfe60310980d1c011b4a8b58f8ebd23e99ac` |
| 139 | `lemma` | [isStarProjection_inr_iff](../../../../AssociativeRingsAndAlgebras/UnitizationNamespacedPublic.lean/declarations/isstarprojection-inr-iff.md) | 926 | `result-track:847b80ab7f43007918a9599224103244862c00c3100387dd79041071f702a5ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5900313d244acee992ebae06f553ce97c73aaf9e344fbee18dfbceeedc119bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Unitization/Variant7db0d1bfe8dcaa76c29f08420b187694ab9f003571bf5f385b937bca072f8bc8.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Unitization/Variant7db0d1bfe8dcaa76c29f08420b187694ab9f003571bf5f385b937bca072f8bc8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
