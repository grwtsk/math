# Verification target: Conditional Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8943eee9b4e0db33c8e019ea8f2dfb1f805d1890",
  "lexical_observation_count": 95,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8943eee9b4e0db33c8e019ea8f2dfb1f805d1890`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean.json)

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
| 1 | `def` | [iCondIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepsets.md) | 95 | `declaration-track:b3113323d7b0cc1b2138a8c36c404861d31c689a47f3ff842d11874c6762cc7a` |
| 2 | `def` | [CondIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets.md) | 102 | `declaration-track:39525ef0dd4193014484a95e52c1adb88078ff7602f27872c8170dfdb1f6628b` |
| 3 | `def` | [iCondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindep.md) | 113 | `declaration-track:e2d7dcd9b585727ef8176741430f8d0c9e48373d7bd96e313970b1007980a68d` |
| 4 | `def` | [CondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep.md) | 123 | `declaration-track:f66bae9249e42cdb10d472979ee9b170797737686dc6041546913a493c7a0243` |
| 5 | `def` | [iCondIndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepset.md) | 137 | `declaration-track:a146da5c50c22ac5b253c8799fc100b9e1817fcc624d1a8a2764f9b3fa619a75` |
| 6 | `def` | [CondIndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepset.md) | 144 | `declaration-track:a529d35a5859169062cf6944899ddf6ac7a3ce93b31c907eebc65a96b372910c` |
| 7 | `def` | [iCondIndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun.md) | 153 | `declaration-track:fdd6d820f1f1a155867a5125d45982a67e24db236667849626237c30879dd74f` |
| 8 | `def` | [CondIndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun.md) | 163 | `declaration-track:2178314175554f42801eb00435b4f70f57a97c93dbdf6a935b96fbb77b2d15ac` |
| 9 | `lemma` | [iCondIndepSets_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepsets-iff.md) | 186 | `result-track:7af5a2457162736080026872c0ff938c6c754f5797fbf5cc9874e9b2f87acd6d` |
| 10 | `lemma` | [condIndepSets_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-iff.md) | 224 | `result-track:e8d63d0d567965caaf2089884f385ac80288ff6a372dc128b92f49a6c747fc62` |
| 11 | `lemma` | [iCondIndepSets_singleton_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepsets-singleton-iff.md) | 250 | `result-track:15463ec1197a6274e16767f4e9aca5ef9014cf818bea0746b8cfc9c1d3c0f355` |
| 12 | `theorem` | [condIndepSets_singleton_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-singleton-iff.md) | 262 | `result-track:8d35fa5d85c2e383932864fbe87b7bfc665c1366136b9808a4106a77fd309011` |
| 13 | `lemma` | [iCondIndep_iff_iCondIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindep-iff-icondindepsets.md) | 274 | `result-track:3df33695a3272796382b85777d81aa5cda6affacc3bf42b6dd9c50232b6bf79c` |
| 14 | `lemma` | [iCondIndep_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindep-iff.md) | 279 | `result-track:5baefb7cb9e72fa8fad6a94beed1b77938b121bdc8fd1e63bc53aaabefb86833` |
| 15 | `lemma` | [condIndep_iff_condIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-iff-condindepsets.md) | 292 | `result-track:d0991c157233b8bff944299134ef3b5e6664a94ac81f468f8b5ebc0c69fc3cf3` |
| 16 | `lemma` | [condIndep_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-iff.md) | 298 | `result-track:c29286328657b6ab00e41764c609c620188f407d03cff9f2d079a725c871e61a` |
| 17 | `lemma` | [iCondIndepSet_iff_iCondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepset-iff-icondindep.md) | 314 | `result-track:9189defb0613e6619affe18e5a2219b60b6e270f8508370b53336ccd206db98b` |
| 18 | `theorem` | [iCondIndepSet_iff_iCondIndepSets_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepset-iff-icondindepsets-singleton.md) | 318 | `result-track:9201bb18fa80771484a994cead81e28e2781be2e157f092144eaaed9059c71e1` |
| 19 | `lemma` | [iCondIndepSet_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepset-iff.md) | 323 | `result-track:b106dc0b72c3e64c1f8ca14c0e9fefa06b9ec115e3352f808e34191952d98c6b` |
| 20 | `lemma` | [condIndepSet_iff_condIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepset-iff-condindep.md) | 329 | `result-track:a6cd07876869116680042eed6efada1e250023d8623a49855f63a93a70b7852b` |
| 21 | `theorem` | [condIndepSet_iff_condIndepSets_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepset-iff-condindepsets-singleton.md) | 333 | `result-track:617d9ef7d09e191eb6a2d59c526b6dd447b4dfd074bcaa61c9794f090d35429e` |
| 22 | `lemma` | [condIndepSet_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepset-iff.md) | 338 | `result-track:4e35bead2c16e9f0a3ad2a4220a56b61b5484ee9cf81090cce52838ad1fb28e8` |
| 23 | `lemma` | [iCondIndepFun_iff_iCondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-iff-icondindep.md) | 343 | `result-track:aeec70370230c27f73724b8bf40bd4d12d6dc90fb01e8e3151cec4bf6659e8d2` |
| 24 | `lemma` | [iCondIndepFun_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-iff.md) | 350 | `result-track:d384d237e84909e339ee1b48becc66e586479d3b3cc9c94b6da0cc1b945e9e37` |
| 25 | `lemma` | [condIndepFun_iff_condIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-iff-condindep.md) | 360 | `result-track:e7f37484821390beacbe7404e67d478e32caa229a9c2bc651329495d4b3f73bc` |
| 26 | `lemma` | [condIndepFun_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-iff.md) | 366 | `result-track:ef0892cc9efbf88ed64de99e52944c23e808740958b5c003ff6ee67bb506f1df` |
| 27 | `theorem` | [CondIndepSets.symm](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-symm.md) | 382 | `result-track:3afd46c02afb6fdf0ae43a653a15aa4debecd930f61973c1aa627796646f5658` |
| 28 | `theorem` | [condIndepSets_of_condIndepSets_of_le_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-of-condindepsets-of-le-left.md) | 386 | `result-track:a904bb1ed02942ea69c37bc4d18dd2b74c26623fc92c5a785ef79a689d72a574` |
| 29 | `theorem` | [condIndepSets_of_condIndepSets_of_le_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-of-condindepsets-of-le-right.md) | 391 | `result-track:4030c42472dee0588e54a6741c5d65412246cbaa9c0172ec8500668e885dd236` |
| 30 | `theorem` | [CondIndepSets.union](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-union.md) | 396 | `result-track:4cc43c82a5eb616953f8b227b85671b24321cd0b0751356f66f6ae4e05c319dd` |
| 31 | `theorem` | [CondIndepSets.union_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-union-iff.md) | 402 | `result-track:1f38f5e697fef8f34b8f886132786bf518b221926f7a883108967db2ebc3c9c5` |
| 32 | `theorem` | [CondIndepSets.iUnion](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-iunion.md) | 407 | `result-track:d08a773e59205ba47cac263fbcb2b26c7798a9f56ecd8dc4e135b2d12870d354` |
| 33 | `theorem` | [CondIndepSets.biUnion](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-biunion.md) | 412 | `result-track:9395d5fbf21ea30b8d15e8db31417e512734974e39dd410ca75d5dffd9eff441` |
| 34 | `theorem` | [CondIndepSets.inter](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-inter.md) | 417 | `result-track:5695aa76730a767f38d7b2519705c32882e05f0d7e87160cb6f1358e4216b78e` |
| 35 | `theorem` | [CondIndepSets.iInter](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-iinter.md) | 422 | `result-track:f082c7e954ebbf529757d6aad52b3718d6e75bef0ab72fbc06715cb8afb50051` |
| 36 | `theorem` | [CondIndepSets.bInter](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-binter.md) | 427 | `result-track:3cc8e126728e40690698dc4bebb1225557573694da8df9ba2dd3251b0d48316d` |
| 37 | `theorem` | [condIndepSet_empty_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepset-empty-right.md) | 439 | `result-track:6a7465c3be22fafb082545d8aadf45740347f3be7fdc4314511935c62027fe8d` |
| 38 | `theorem` | [condIndepSet_empty_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepset-empty-left.md) | 442 | `result-track:646eca38b1c32cf7b25289f0bf2e496018018d81e0a190fb1481e867f989ac7b` |
| 39 | `theorem` | [CondIndep.symm](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-symm.md) | 450 | `result-track:b1d220ce653fae7ef40157357835ab4bfa226b69d78a45c953fd3895e26d5472` |
| 40 | `theorem` | [condIndep_bot_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-bot-right.md) | 456 | `result-track:bb04635e08b8b62eec6c2cb2b6a7dceb8c1eb81ff227d9db0cd79654a0bfe472` |
| 41 | `theorem` | [condIndep_bot_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-bot-left.md) | 462 | `result-track:f836a40595823355079c3fe7e00b751cd2fdbfe099d13e1e953e228e95f66818` |
| 42 | `theorem` | [condIndep_of_condIndep_of_le_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-of-condindep-of-le-left.md) | 468 | `result-track:5a1be1ee8a87691439532bb9242bc374b30b78ce680fa39404049312f3e1c513` |
| 43 | `theorem` | [condIndep_of_condIndep_of_le_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-of-condindep-of-le-right.md) | 475 | `result-track:20dee9768e7166526ffe155a33aa0575ff8e82ab69a11ed5a3cef3eb7ff734b5` |
| 44 | `theorem` | [iCondIndepSets.condIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepsets-condindepsets.md) | 493 | `result-track:00206fe40f92bfd69a0ba6e54b7a9434e0a9687c250a3a7c941070dda30210f6` |
| 45 | `theorem` | [iCondIndep.condIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindep-condindep.md) | 498 | `result-track:a4ebdfb4b63fd4f75c72a634b99b6129512b52b23c800aa536edce1e72758af7` |
| 46 | `theorem` | [iCondIndepFun.condIndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-condindepfun.md) | 503 | `result-track:0bb8911270c29b88d924a95d524b1b68896beaf6f72ab4c7735eb13caca232f5` |
| 47 | `theorem` | [iCondIndep.iCondIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindep-icondindepsets.md) | 528 | `result-track:c372e32b2979d85db6798273f2a516c35eed8ebc1635b367896e970b5a70a023` |
| 48 | `theorem` | [CondIndep.condIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-condindepsets.md) | 534 | `result-track:774647cacea8cf794591541fd20b78793620606eaf75c8e8db7660cc64ac6ba7` |
| 49 | `theorem` | [CondIndepSets.condIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-condindep-source-edition-2.md) | 549 | `result-track:b9d004ec4a59698463dfa10555835ebdcb0beffaeb327dbf4601ee472fbad949` |
| 50 | `theorem` | [CondIndepSets.condIndep'](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-condindep.md) | 557 | `result-track:8e6ec42b6d8427567067dbf855be88f8ffccbacf9c25714ac9db894c8ed24c48` |
| 51 | `theorem` | [condIndepSets_piiUnionInter_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-piiunioninter-of-disjoint.md) | 563 | `result-track:0e0330a0a29c59996c2c47d37c5ea0d1f94bb8ad4072e1dd4838b7061cc50422` |
| 52 | `theorem` | [iCondIndepSet.condIndep_generateFrom_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepset-condindep-generatefrom-of-disjoint.md) | 568 | `result-track:ed937c2dec9752319beca6b36058d0262830b700f302bbc98075c386c3a15a5a` |
| 53 | `theorem` | [condIndep_iSup_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-isup-of-disjoint.md) | 575 | `result-track:ec934a600e1aeb845c59ff02c3ee8b0918bcb3ab96dda97034c19ffa05f0420f` |
| 54 | `theorem` | [condIndep_iSup_of_directed_le](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-isup-of-directed-le.md) | 580 | `result-track:f1eb014ce753abac744a36d7a58e73f418ec6b6c58783142fe6d4ccd0dbc149e` |
| 55 | `theorem` | [iCondIndepSet.condIndep_generateFrom_lt](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepset-condindep-generatefrom-lt.md) | 586 | `result-track:f1ad8b11e5c919b0bb00234728558a83d8870106670c8eaeec20ff678eb59953` |
| 56 | `theorem` | [iCondIndepSet.condIndep_generateFrom_le](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepset-condindep-generatefrom-le.md) | 591 | `result-track:4ef405acd788c25104b21d4a758eb6c8252c771ac4e0525fb63a6e8702475e8e` |
| 57 | `theorem` | [iCondIndepSet.condIndep_generateFrom_le_nat](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepset-condindep-generatefrom-le-nat.md) | 596 | `result-track:0419b5180a194bb1d60a96b6de4ff92901d23445a0567ba416d621a25a0d73f4` |
| 58 | `theorem` | [condIndep_iSup_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-isup-of-monotone.md) | 601 | `result-track:59acbe5e07b41032cc66ce792a0883e4f3e9c25f34d569d912fc4e0817d79283` |
| 59 | `theorem` | [condIndep_iSup_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-isup-of-antitone.md) | 607 | `result-track:ab532df2b43f3208d0f280856734aebd1c1cb74f2863c33f694e8b3c68cffb18` |
| 60 | `theorem` | [iCondIndepSets.piiUnionInter_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepsets-piiunioninter-of-notmem.md) | 613 | `result-track:e6ac3ff3218e6359be07e241e30e579017c51ec8f51042bbc53427da729a538f` |
| 61 | `theorem` | [iCondIndepSets.iCondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepsets-icondindep.md) | 620 | `result-track:664e3df028c301043cd48bf3ad860a8c5f53ddb27c33d4e499f32b317cd5088b` |
| 62 | `theorem` | [CondIndepSets.condIndepSet_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepsets-condindepset-of-mem.md) | 638 | `result-track:bc9e2b492c0b58f631dc0fd674f5df85588c154217d0729dbe7bd09065713d53` |
| 63 | `theorem` | [CondIndep.condIndepSet_of_measurableSet](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-condindepset-of-measurableset.md) | 644 | `result-track:e3b79a9662a3edc4cd462171a3e88371cf75f70cec2d20a24b89820d15b9c1d3` |
| 64 | `theorem` | [condIndep_iff_forall_condIndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindep-iff-forall-condindepset.md) | 650 | `result-track:9ad2f64a65c998e0c726bee187c0b29848324276d146cf268fa8d408a7f5acf4` |
| 65 | `theorem` | [condIndepFun_iff_condExp_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-iff-condexp-inter-preimage-eq-mul.md) | 668 | `result-track:3c447ab2d41c679ba9e191f73ee8dbf6be1f414611b05ccfbddd91afa7456f6a` |
| 66 | `theorem` | [iCondIndepFun_iff_condExp_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-iff-condexp-inter-preimage-eq-mul.md) | 679 | `result-track:3052abec9664f74e09c3c0e9d545b0b6c8d6f0504eff9086f7336561e544e7fd` |
| 67 | `theorem` | [condIndepFun_iff_condIndepSet_preimage](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-iff-condindepset-preimage.md) | 701 | `result-track:b665ad3265398b349bb11cca66300e38061c67b6e7e98a87926e740f0123c32b` |
| 68 | `theorem` | [CondIndepFun.symm](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-symm.md) | 708 | `result-track:3573f18fe97003261a1e87dea346ac6ad4f59ca0f567ff69b185404f525170f3` |
| 69 | `theorem` | [CondIndepFun.comp](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-comp.md) | 713 | `result-track:af927e83fea02a34bd2680bbbee0815dd0918d8299d1eece0f2b631ccf33a399` |
| 70 | `lemma` | [condIndepFun_const_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-const-left.md) | 719 | `result-track:978e4954141be76e2a850551a8f20349ac7c0fb391b7999de294c77a0d49dd81` |
| 71 | `lemma` | [condIndepFun_const_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-const-right.md) | 724 | `result-track:3ea9f6406a49146468e9fca0bd37a8995e9fffd312cfd10d14c749dcf7c8bedb` |
| 72 | `theorem` | [CondIndepFun.neg_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-neg-right.md) | 729 | `result-track:27a40fa365a628af399de537f792512347bed080286fef485c2794a1e2151f52` |
| 73 | `theorem` | [CondIndepFun.neg_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-neg-left.md) | 733 | `result-track:f56b09731ea20e9e9cb21411eec3734fed1a80225e4bd1bdfb649e25187f86ef` |
| 74 | `lemma` | [condIndepFun_of_measurable_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-of-measurable-left.md) | 737 | `result-track:01a51079043f5d0d6796e0684c2e89cd0d8cfc8946c96c4201dcb67efeec1d31` |
| 75 | `lemma` | [condIndepFun_of_measurable_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-of-measurable-right.md) | 754 | `result-track:fee9b30f7bf797ed8d7c0498551348ccb6ddbc586bbec8a18265aab5b927dacd` |
| 76 | `lemma` | [condIndepFun_self_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-self-left.md) | 759 | `result-track:e4dee918d3e71ff221c8826b7920757b3de0c9b858fcd880edff456f97e6fede` |
| 77 | `lemma` | [condIndepFun_self_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-self-right.md) | 764 | `result-track:517f8c8eb743ae09be49f9b6369952557801cdd867ea92658c299eaa49f8d982` |
| 78 | `theorem` | [condIndepFun_iff_compProd_map_prod_eq_compProd_prod_map_map](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-iff-compprod-map-prod-eq-compprod-prod-map-map.md) | 779 | `result-track:44e3baa3ae3646ec4c3ea7ba0ccd060680416d3d8ac31bf50ec87a212e0443cb` |
| 79 | `theorem` | [condIndepFun_iff_map_prod_eq_prod_map_map](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-iff-map-prod-eq-prod-map-map.md) | 793 | `result-track:a4619bdd65d8d66080e002a9488b061fafb0a2fc4dc37e3d30d385bc8ec13c82` |
| 80 | `lemma` | [condIndepFun_iff_map_prod_eq_prod_comp_trim](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-iff-map-prod-eq-prod-comp-trim.md) | 807 | `result-track:ef2cb69108cce3433d3a475b6161c926273dcabd5de61307ed61e6be10e4b670` |
| 81 | `theorem` | [condIndepFun_iff_map_prod_eq_prod_condDistrib_prod_condDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-iff-map-prod-eq-prod-conddistrib-prod-conddistrib.md) | 822 | `result-track:c5e8157801f76c80144f137f50a256027e8cf623ce2f52f7e5f38afb24fb882f` |
| 82 | `theorem` | [condIndepFun_iff_condDistrib_prod_ae_eq_prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/condindepfun-iff-conddistrib-prod-ae-eq-prodmkright.md) | 872 | `result-track:0e004e730b2c85db267685972bd4d17d252dc1addfd32ae6badd403a188567d1` |
| 83 | `lemma` | [iCondIndepFun.of_subsingleton](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-of-subsingleton.md) | 920 | `result-track:ba1da2da058beadd665040495bb7b13227c201e3e9e474594cd27216579e9297` |
| 84 | `theorem` | [iCondIndepFun.condIndepFun_finset](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-condindepfun-finset.md) | 926 | `result-track:386adea5bb44835000efc1be7d8445ae3d5d3edab3b464d6204976af4c030c68` |
| 85 | `theorem` | [iCondIndepFun.condIndepFun_prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-condindepfun-prodmk.md) | 932 | `result-track:fa6f65f76848cc184879bd1f16c4c0b146702e188d5d9a5338779bc7ffa80fff` |
| 86 | `lemma` | [iCondIndepFun.condIndepFun_prodMk_prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-condindepfun-prodmk-prodmk.md) | 939 | `result-track:39975fb55cab758803393dca5f180a2068f21ff50df0747ec95179d4e9921098` |
| 87 | `lemma` | [iCondIndepFun.indepFun_mul_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-indepfun-mul-left.md) | 955 | `result-track:5d63c13aa3f08735aa21513cce5a7ae11c711315a0a2061839793c2ec70e19cb` |
| 88 | `lemma` | [iCondIndepFun.indepFun_mul_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-indepfun-mul-right.md) | 961 | `result-track:6e6b864a5543048538ebb51efdf0991de19e1ead9b49598a2da40f3b42bda985` |
| 89 | `lemma` | [iCondIndepFun.indepFun_mul_mul](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-indepfun-mul-mul.md) | 967 | `result-track:bd2e05ee316d6debd4a03425b4ba5f49624a29bdefae06643408bad1479d8c13` |
| 90 | `lemma` | [iCondIndepFun.indepFun_div_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-indepfun-div-left.md) | 979 | `result-track:87644eed78b5c973afbe88ddeb98a58e80c7b1c33e70d4d1155cc91ac1116977` |
| 91 | `lemma` | [iCondIndepFun.indepFun_div_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-indepfun-div-right.md) | 985 | `result-track:90642ccae057df032f8be9e6e68dc19438b6cbed1f7d06e928fbb64a2fa03fd5` |
| 92 | `lemma` | [iCondIndepFun.indepFun_div_div](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-indepfun-div-div.md) | 991 | `result-track:83b6f7150f469c781b4e39ce72281f4a7a9663f3f614e8d4bb65554e60b4d5e4` |
| 93 | `theorem` | [iCondIndepFun.condIndepFun_finsetProd_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-condindepfun-finsetprod-of-notmem.md) | 1003 | `result-track:a4ea641bd91f9eabf494d053bd61b74a8945ddb49d7413e7089494dc9e2dd8d2` |
| 94 | `theorem` | [iCondIndepFun.condIndepFun_prod_range_succ](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepfun-condindepfun-prod-range-succ.md) | 1018 | `result-track:0978b39f47f4d0a206f73be9dc5b23249e51f5662dbe9db5ba91c20a6f0efab4` |
| 95 | `theorem` | [iCondIndepSet.iCondIndepFun_indicator](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespacedPublic.lean/declarations/icondindepset-icondindepfun-indicator.md) | 1025 | `result-track:ca543b1e38fbf42330c0ac4f632aaf91fe890ea48a82fb780076490b2704fa04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d0aafc65102fdc38e5c2324e0c65484637ec273939580c1c63495384d3187f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variant870bb76366f5b3dd7aeff573f2d9313f7edfe919fcde7417956ff5021eae871c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
