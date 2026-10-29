# Verification target: Action Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b0a3e2cb77287558f463c9d186c63d2b6e1d837",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b0a3e2cb77287558f463c9d186c63d2b6e1d837`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:599e9b982331615d34c02799a5a5c1d7cd02c0057d5e1bb4a6f75515e0ad8c49` |
| 2 | `lemma` | [smul_eq_mul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-eq-mul.md) | 75 | `result-track:53b71512a6c321668e713ddefd85c15d8b0c3be70d287992bab0060917865e15` |
| 3 | `lemma` | [op_smul_eq_mul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/op-smul-eq-mul.md) | 78 | `result-track:4a7c681e6a3636e08d691e0a06cf42d3eb4146821c77f697c3bd4c112fded686` |
| 4 | `lemma` | [MulOpposite.smul_eq_mul_unop](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/mulopposite-smul-eq-mul-unop.md) | 81 | `result-track:4ecb918eeb4d2553bf50ecb17296bd3d33b8cba7834895cb00b25d2cd2398100` |
| 5 | `class` | [AddSemigroupAction](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/addsemigroupaction.md) | 92 | `declaration-track:ce324840ecd27ca84f867c99c108026aa9619058fc5c62009275a9f9576461e1` |
| 6 | `class` | [SemigroupAction](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/semigroupaction.md) | 105 | `declaration-track:687b2c3b4e9256319f7bf8f9e3348207502e2684a66c03c74b6ae4aa1b94a4b2` |
| 7 | `class` | [AddAction](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/addaction.md) | 120 | `declaration-track:aff0218e0994a887af8af37c69486863ca26cddd0812556a8f9eed843c696c4d` |
| 8 | `class` | [MulAction](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/mulaction.md) | 136 | `declaration-track:a621a251246fe2ad12b871194e554c0b8e53d672704e5de2e8ba80335d6192e4` |
| 9 | `class` | [VAddCommClass](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/vaddcommclass.md) | 143 | `declaration-track:6cf61bcc8506cf31c96754955fa44c72170bb01022559de352df889778c7d42b` |
| 10 | `class` | [SMulCommClass](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smulcommclass.md) | 149 | `declaration-track:a1fd89b9934374e817968c1d87b1ead736635efc7b8037b2e259f94ef14006d7` |
| 11 | `lemma` | [SMulCommClass.symm](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smulcommclass-symm.md) | 178 | `result-track:df5327e2499e942ba54fe4092be66b07fd4176dde68850f76ee6dca0e8bf9dc4` |
| 12 | `lemma` | [Function.Injective.smulCommClass](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/function-injective-smulcommclass.md) | 186 | `result-track:e6c62dfdad1044d65f4e9b76be5986b89663bffaa3fd4e4f779b3b86201757c2` |
| 13 | `lemma` | [Function.Surjective.smulCommClass](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/function-surjective-smulcommclass.md) | 192 | `result-track:35a6f3dfa506488bd57e7ab72d02bce42bac00d51ac54e6efdc7f73c6c51efb8` |
| 14 | `instance` | [smulCommClass_self](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smulcommclass-self.md) | 198 | `declaration-track:fbd5bf9dc46c005897a92b836909eb7534bffd6d065599afca38dc749215bcf7` |
| 15 | `class` | [VAddAssocClass](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/vaddassocclass.md) | 203 | `declaration-track:cd7e48a4dacf2aceaaaf179d7da880dbaffba0276c86270019f3ecba800a90a7` |
| 16 | `class` | [IsScalarTower](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isscalartower.md) | 211 | `declaration-track:ebada8df5f4c12a989c90261560c75361498f5dcbbcf248fc63d59c3a3be3276` |
| 17 | `lemma` | [smul_assoc](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-assoc.md) | 216 | `result-track:e48e6dd761e4460c374320db8eef0271c39aaa9a5694512aef6a260c2982f664` |
| 18 | `instance` | [Semigroup.isScalarTower](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/semigroup-isscalartower.md) | 220 | `declaration-track:2028a898793b00c4e886da3bd745328ce091b10a5a122a7ba0d68fc1b48e5f8e` |
| 19 | `class` | [SMulDistribClass](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smuldistribclass.md) | 230 | `declaration-track:5ae3a98fe48d6f4699828dcba78dd3537439b8f17664afe15e2f7722b3d0eae9` |
| 20 | `class` | [IsCentralVAdd](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/iscentralvadd.md) | 238 | `declaration-track:7f064c1fcecf8f79dd00d7137593e4e178fdeaf9d5aae3bb0800740ebaf464c4` |
| 21 | `class` | [IsCentralScalar](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/iscentralscalar.md) | 246 | `declaration-track:0fd2da7d66e7464606fcff616e564e9e2c206cbb35540f6db1ee9499bdec84f9` |
| 22 | `lemma` | [IsCentralScalar.unop_smul_eq_smul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/iscentralscalar-unop-smul-eq-smul.md) | 251 | `result-track:7afcb7ae2c69f23be8399ff8d830700e411416b3142d2f0a5f80b2d710cfe2f4` |
| 23 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance-source-edition-8.md) | 262 | `declaration-track:c3473251a8425c94af03ad8b730ff4fbd371e1786605a8db1933ffae20bd570a` |
| 24 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance.md) | 267 | `declaration-track:100350349d1e4b3d86edce88c3a3c01e6a441b5b859dc2eddafbebb3049d7b81` |
| 25 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance-source-edition-5.md) | 272 | `declaration-track:65aa21d3583e7c08d6293559f0ed07b27ee851e0ede045dca12aa38527c318b3` |
| 26 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance-source-edition-10.md) | 278 | `declaration-track:fbe4999ab2680c146ce767a7cb4be36423586c1a22af014eb4c0e4b08499eefa` |
| 27 | `def` | [comp.smul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/comp-smul.md) | 290 | `declaration-track:22020c5ced8360eb4f86d333ad4ebe91518b3f6143e7c82fe111c505fe31ef54` |
| 28 | `abbrev` | [comp](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/comp.md) | 300 | `declaration-track:c4cd72aa8974b8749e80cc6dc1895274d027807697e92a1a46d6f6c7994dc926` |
| 29 | `lemma` | [comp.isScalarTower](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/comp-isscalartower.md) | 316 | `result-track:163f1e305bdc3af6ceb40472ff19749bc747fcc855f3c4eca33baf8f057001d8` |
| 30 | `lemma` | [comp.smulCommClass](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/comp-smulcommclass.md) | 327 | `result-track:108e5aacc989d907fb769d9b308a849f0c150aca4ea8ddb35ad25e02ccc0c204` |
| 31 | `lemma` | [comp.smulCommClass'](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/comp-smulcommclass-source-edition-2.md) | 338 | `result-track:562dc6034bcfb1a207ddc21224ac1dc66a7e439731f22eec5f8ea0477ae33821` |
| 32 | `lemma` | [mul_smul_comm](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/mul-smul-comm.md) | 350 | `result-track:4c8823d5546080aca03742ef3cc2e8bece65dad7f5d9dc06418fda3d40207a05` |
| 33 | `lemma` | [smul_mul_assoc](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-mul-assoc.md) | 355 | `result-track:09a0cf534c2eae14bfddbfe87871d624d79d61c2b7447082da63db14622ee4cc` |
| 34 | `lemma` | [smul_div_assoc](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-div-assoc.md) | 360 | `result-track:0d1842300b5e4bccc150eb0c7b54bb6478e806ac07af8b8b349045ee6c266f1b` |
| 35 | `lemma` | [smul_smul_smul_comm](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-smul-smul-comm.md) | 364 | `result-track:ee89c833f7ee641e159a0aa76fa6147dbbbeb50df5224d9f38d4619f1ced8f9d` |
| 36 | `lemma` | [smul_mul_smul_comm](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-mul-smul-comm.md) | 371 | `result-track:2ef7bc24d4fc3dcdb468ed3e6e57e0efa7e63a99ec75f12a3a5f1dfab5bc7244` |
| 37 | `lemma` | [mul_smul_mul_comm](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/mul-smul-mul-comm.md) | 382 | `result-track:6362567def7f97767b6f685f636778118453442863224c787780a202addcbe69` |
| 38 | `lemma` | [SemiconjBy.smul_right](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/semiconjby-smul-right.md) | 389 | `result-track:1575836af01c79772605ac580a0800f6d05603a423edfd2739bd1e3989320cc7` |
| 39 | `lemma` | [SemiconjBy.smul_left](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/semiconjby-smul-left.md) | 394 | `result-track:a50d215ab2f798e4e1bc9ee8a1871e130218964ea6698684172b9e45b1d5165b` |
| 40 | `lemma` | [Commute.smul_right](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/commute-smul-right.md) | 399 | `result-track:2ba380661930783c8a395c35a3d38794e6f66a4746c839c077c513afa4d726a7` |
| 41 | `lemma` | [Commute.smul_left](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/commute-smul-left.md) | 404 | `result-track:0874a64bc93d90391f69954ea75cf739c2f390ded69534e61cbca5596ad16c57` |
| 42 | `lemma` | [smul_smul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-smul.md) | 414 | `result-track:8d4d0baa17160efe9e5890b0493e2a8a0218fcb4718580896d0d081acefa53f1` |
| 43 | `lemma` | [one_smul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/one-smul.md) | 419 | `result-track:633ac0d0532a5ee0f3df7509ce143fd61b68187e51588a7a1567ba375aae12f3` |
| 44 | `lemma` | [one_smul_eq_id](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/one-smul-eq-id.md) | 423 | `result-track:d118b1575807b704e1f4b2e61704c71737e6f4a9b6f3dffee4d4c64742511cae` |
| 45 | `lemma` | [comp_smul_left](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/comp-smul-left.md) | 427 | `result-track:c6dbda5c7719d3e3ce930c848f5b069cf9e8cc65e490d3401eba037a76bba567` |
| 46 | `theorem` | [smul_iterate](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-iterate.md) | 433 | `result-track:2a36dd7f2a9540e51e6d493d4002c770f3e2819f9d8bd45fc1f92ebf230680c0` |
| 47 | `lemma` | [smul_iterate_apply](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-iterate-apply.md) | 438 | `result-track:645726aa24888ca31668412a2172eca7146883330d20e3595041e9a6d559ee4f` |
| 48 | `abbrev` | [Function.Injective.mulAction](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/function-injective-mulaction.md) | 445 | `declaration-track:a765da831630e47cf8301d6adc7749a7a3786e9792086e9b90ccdf2d9c7ec73f` |
| 49 | `abbrev` | [Function.Surjective.mulAction](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/function-surjective-mulaction.md) | 454 | `declaration-track:51a6606517a7748c3feabe1f8ea6228ea2f1273a5a9a50dc6e9fe1fc36b196b3` |
| 50 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance-source-edition-4.md) | 470 | `declaration-track:63f3e2842f0bacdc63567fdea597695a3e3e1705617ae94a96636988ec87c3dc` |
| 51 | `instance` | [IsScalarTower.left](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isscalartower-left.md) | 476 | `declaration-track:a54f343c9f29f95889afc49b5c20292d8517f267536ec2dcf91cdfb917b4c08f` |
| 52 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance-source-edition-6.md) | 480 | `declaration-track:b70ad6d8fbd3846dc82bc00d4a2e4649cb1ff8ff8612296797702c747f7d2779` |
| 53 | `lemma` | [smul_pow](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-pow.md) | 489 | `result-track:77d9470421d0292c29d41235e5e4728813264d2e9b6e531b7268a404730d635c` |
| 54 | `lemma` | [inv_smul_smul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/inv-smul-smul.md) | 499 | `result-track:d6d99bf9e3cbf36ec1c7eeda9d3890d5ca4c3c7fb7f435917aa8eb6df390f027` |
| 55 | `lemma` | [smul_inv_smul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-inv-smul.md) | 502 | `result-track:d5a4105b85909c43b7f3489b63d809d138760350371d1bbaa4c6f10aebf61338` |
| 56 | `lemma` | [inv_smul_eq_iff](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/inv-smul-eq-iff.md) | 504 | `result-track:8f52fcdc77bfdbb58589bddd3a7533ccf58756592b1ee98ecbc4c5461b2a130f` |
| 57 | `lemma` | [eq_inv_smul_iff](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/eq-inv-smul-iff.md) | 507 | `result-track:eab0324a724cf54c254f8598e8e812a5da00dd7abf92f47e33e000abb72be850` |
| 58 | `lemma` | [SemiconjBy.smul_right_iff](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/semiconjby-smul-right-iff.md) | 514 | `result-track:d642cca945431921c0aeafbcca38af8d13ab0a26454029c37b0a129d371d420c` |
| 59 | `lemma` | [SemiconjBy.smul_left_iff](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/semiconjby-smul-left-iff.md) | 519 | `result-track:a96912a9cc9440a8a176664e9f1841c90c12165cbbac77d2a95eff8dc068bedb` |
| 60 | `lemma` | [Commute.smul_right_iff](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/commute-smul-right-iff.md) | 524 | `result-track:a7a4784f03a1b6dd22e4c2359f80b479aa10a09ad7b3f22c1e25ebe572bc64ea` |
| 61 | `lemma` | [Commute.smul_left_iff](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/commute-smul-left-iff.md) | 528 | `result-track:f24ad9345fac7bea2a8da2e51e8f0c525fa2242568febef994c0850b25e3912f` |
| 62 | `lemma` | [smul_inv](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-inv.md) | 535 | `result-track:baa78121bf514993e4a7f21c4bd3a1390135a372f92c99a9583e83d0bccbe1cb` |
| 63 | `lemma` | [smul_zpow](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-zpow.md) | 538 | `result-track:d8c9751d76d85bbd26f61eec4878d7637889908858bbb1116cc7719bc7dd5924` |
| 64 | `lemma` | [SMulCommClass.of_commMonoid](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smulcommclass-of-commmonoid.md) | 544 | `result-track:5e64b560b7066b7f869f3cc9dbc3f802ccde72ca160e095bae73e6a71bb86878` |
| 65 | `lemma` | [IsScalarTower.of_commMonoid](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isscalartower-of-commmonoid.md) | 552 | `result-track:4f67a94c0bc9e79402e32ae303020f4be66436276b5ad3fbb138c9289887ff90` |
| 66 | `lemma` | [isScalarTower_iff_smulCommClass_of_commMonoid](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isscalartower-iff-smulcommclass-of-commmonoid.md) | 557 | `result-track:b7b959dd17c38ac6804713a4822207d45f4d22286c890c1c0ae9182eb4528c5b` |
| 67 | `lemma` | [smul_one_smul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-one-smul.md) | 567 | `result-track:31814bc18b5b8b40d9f92768ffbc1724a7ef4b3f5622d1a02a05682f0d29a57b` |
| 68 | `lemma` | [smul_one_mul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-one-mul.md) | 572 | `result-track:bb57ba51bff4f22f4d12680f835502a18de458b75ff71e7164c190ec5f56eba1` |
| 69 | `lemma` | [mul_smul_one](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/mul-smul-one.md) | 576 | `result-track:be2c9ae602cd5065837142fd5a9bc3e3fb0e8d7704308c7b04073d648dae644b` |
| 70 | `lemma` | [IsScalarTower.of_smul_one_mul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isscalartower-of-smul-one-mul.md) | 580 | `result-track:5d7bda39866c80a4144810c160cc1451b2ab5c6944a1bb7564bb7890f11d24a7` |
| 71 | `lemma` | [SMulCommClass.of_mul_smul_one](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smulcommclass-of-mul-smul-one.md) | 585 | `result-track:e9feca1b44b05ab1862c168f13a4733303140ce84d0e6d3700813c9214cafc56` |
| 72 | `lemma` | [IsScalarTower.to₁₂₄](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isscalartower-to.md) | 593 | `result-track:1d4e4c72705892a23d23d87fae6cbe8573497cea1d08b97327088818172017f7` |
| 73 | `lemma` | [IsScalarTower.to₁₃₄](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isscalartower-to-source-edition-2.md) | 602 | `result-track:96be8738344eb45f57a3129a9171874c7875d108ef77177b0fcc4844563dc9a7` |
| 74 | `lemma` | [IsScalarTower.to₂₃₄](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isscalartower-to-source-edition-3.md) | 611 | `result-track:d9d091906eec4e4ae1ca0d886363bf330df37c5504ad4be53cad262db31bb446` |
| 75 | `class` | [MulDistribMulAction](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/muldistribmulaction.md) | 629 | `declaration-track:2316d6b7d43d88de8cf0949fdde2ba8d1900ccbf1c7c9bccf0b9fd5e24cce5b9` |
| 76 | `class` | [AddDistribAddAction](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/adddistribaddaction.md) | 641 | `declaration-track:15619fdd7d2b4be3df4dfe8ba28db9c3d2d757efd6d020d5a47b304214a9e6f3` |
| 77 | `lemma` | [smul_mul'](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/smul-mul.md) | 656 | `result-track:7a2c879439d7d936078ea9b2c7b3e559ba9f5fa48be3b65243d409920c0dd844` |
| 78 | `class` | [IsLeftCancelVAdd](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isleftcancelvadd.md) | 667 | `declaration-track:22a1fb8c7e8ec0cd0343357cf1dfd3f321b67fb2109fa252beba2a507cd27b28` |
| 79 | `class` | [IsLeftCancelSMul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isleftcancelsmul.md) | 672 | `declaration-track:f93b7106999eed411fa08f5eb01b36e88294de3a8992f84bb902458a8fe3c7c8` |
| 80 | `lemma` | [IsLeftCancelSMul.left_cancel](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/isleftcancelsmul-left-cancel.md) | 676 | `result-track:413e52cf699f84a7f26b10b0a08c48768c880da619341d08f8c866d80cc9ce23` |
| 81 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance-source-edition-2.md) | 680 | `declaration-track:28bc340b748d36bfd3cfc965fcda472e10f787bb3e2c3f477bf4214c34d958cd` |
| 82 | `class` | [IsCancelVAdd](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/iscancelvadd.md) | 687 | `declaration-track:6a0605805cbbb9b81568637459e4641d0c83353175eaa8c7f686606fcf3bf239` |
| 83 | `class` | [IsCancelSMul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/iscancelsmul.md) | 695 | `declaration-track:50dc85d59d9942357ad383a76e95e34eabf1d0481b035dc37a37c7e987fafb59` |
| 84 | `lemma` | [IsCancelSMul.left_cancel](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/iscancelsmul-left-cancel.md) | 699 | `result-track:03417e52d80255f02104c6cbe348e27cd67c6e8d5ce66ec998abd535e1511538` |
| 85 | `lemma` | [IsCancelSMul.right_cancel](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/iscancelsmul-right-cancel.md) | 703 | `result-track:37d9cdedf7b2ce4fe2d845c51474fe94793b690d56281e97f4c6441f9ab01347` |
| 86 | `lemma` | [IsCancelSMul.eq_one_of_smul](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/iscancelsmul-eq-one-of-smul.md) | 707 | `result-track:dd1c281f58ea0d94e7f30a77f4a48969bdc2a4fa48dd8a04b13c43c23416ccdc` |
| 87 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance-source-edition-9.md) | 712 | `declaration-track:c47888d3d77d159b4290cbf72fc94cc8bbee4824baad10cd54c33ff4ee39ae87` |
| 88 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionDefsPublic.lean/declarations/instance-source-edition-7.md) | 717 | `declaration-track:baca4d95f63c03bc1a83093b572f7e1fa5ac0e9474379a0acf5d90bf5f007586` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1701d522760778b67d1ca7de2badd99dfbfd967e264dc181dc258e5ba7798271 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variantffecdd8214bad55eab6c631352ec37254a3459a674362fc43681ebfef8ede9b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
