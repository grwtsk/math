# Verification target: Conditional Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bba1f952f5c27b2c95bc2c9689fae0e7ad2ff3fd",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bba1f952f5c27b2c95bc2c9689fae0e7ad2ff3fd`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Independence.Kernel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Condexp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iCondIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepsets.md) | 80 | `declaration-track:43490ddbb188eb98d4c4432676f27cbfd2795fc90c09d694243722f7a488297e` |
| 2 | `def` | [CondIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets.md) | 87 | `declaration-track:6c33a20ca659bb40f7f30fdc617d63c45595f269dd578cdad30affb5d7521306` |
| 3 | `def` | [iCondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindep.md) | 98 | `declaration-track:1930627f155864bb0d1e4d693d47f8d1924c573f428ba8c5ae339b6af644626a` |
| 4 | `def` | [CondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep.md) | 108 | `declaration-track:3d00b3ff613ac4e6016096d45c1a474a5cfd05972c3470db120a7823ff7751a0` |
| 5 | `def` | [iCondIndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepset.md) | 122 | `declaration-track:d77555644ff1696eea45fb58983f1000372ef99a40597b8edb96dfc06ee1eff1` |
| 6 | `def` | [CondIndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepset.md) | 129 | `declaration-track:fe17a1a4d68be025b4299610b65c79db0144580ed67552ee8f18b2e1a3aa4e1d` |
| 7 | `def` | [iCondIndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun.md) | 138 | `declaration-track:15edd382d6194c4f1b3c8b261fe952a0f8f71a5eb6a7b2835c72552f1d6d9567` |
| 8 | `def` | [CondIndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepfun.md) | 146 | `declaration-track:329960e8d61ca8694cdda057255fe07cacc1e40aa293139e98691f37631d97e6` |
| 9 | `lemma` | [iCondIndepSets_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepsets-iff.md) | 159 | `result-track:7a181e1ef3cb21eee63704238a43a43f9abcc409516940161d1ee90768a61172` |
| 10 | `lemma` | [condIndepSets_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-iff.md) | 197 | `result-track:be75dc7f96e924f498f2a455ec6888139e34b7f7eb6213f5bcdae45e6f1fb1c1` |
| 11 | `lemma` | [iCondIndepSets_singleton_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepsets-singleton-iff.md) | 223 | `result-track:021bc02d89080fbc5b3416934420c50feb9c9747f557fcd9606637d5d4986e76` |
| 12 | `theorem` | [condIndepSets_singleton_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-singleton-iff.md) | 241 | `result-track:f99132c544ad962659a680b2cb6587a9cddec9aa19e38e09c85a1d761f0a98e1` |
| 13 | `lemma` | [iCondIndep_iff_iCondIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindep-iff-icondindepsets.md) | 253 | `result-track:3e4667d06be8c94376f54707aa44df03d67fd71046535ab1ae54c39e876b4319` |
| 14 | `lemma` | [iCondIndep_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindep-iff.md) | 258 | `result-track:2e2e1d0167df2dd6853c1061d388a165b0ddb61c88802b8d1c2fdc150fbde373` |
| 15 | `lemma` | [condIndep_iff_condIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-iff-condindepsets.md) | 271 | `result-track:c4ad70cddbc58572a16c5201ab6ae37a0b32428642b9aa98c99d582028b5353f` |
| 16 | `lemma` | [condIndep_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-iff.md) | 277 | `result-track:78634f85af81113feb73969bccc3803e12e2b0c286855a4487bcb18198e7183f` |
| 17 | `lemma` | [iCondIndepSet_iff_iCondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepset-iff-icondindep.md) | 293 | `result-track:34c02006a62ad7e67ac25e4e40a5c1d90c06ae296e658b0ae303c3bc2fa6b499` |
| 18 | `theorem` | [iCondIndepSet_iff_iCondIndepSets_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepset-iff-icondindepsets-singleton.md) | 297 | `result-track:5b19e2fea8e615b6bc8d81315081426e239825677e33d3b7a3087a140e2b4c10` |
| 19 | `lemma` | [iCondIndepSet_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepset-iff.md) | 302 | `result-track:aa339311b53c7ec9431eb088356bd6b43cd161f90abea8af8f6b4cb31294cc05` |
| 20 | `lemma` | [condIndepSet_iff_condIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepset-iff-condindep.md) | 308 | `result-track:0f8a002e4e9eb2fd16bcfe28bc422fea276a99342549a3dde950a28cfbd81280` |
| 21 | `theorem` | [condIndepSet_iff_condIndepSets_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepset-iff-condindepsets-singleton.md) | 312 | `result-track:7cc18086f5e60d19c154df8b049b8ae8ba6fc63b6c8d6d544d972402f19926bd` |
| 22 | `lemma` | [condIndepSet_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepset-iff.md) | 317 | `result-track:6df29d866608bdf41daa9927261e02a86e8ad05b63de7c893c7d847ac49dd5fd` |
| 23 | `lemma` | [iCondIndepFun_iff_iCondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-iff-icondindep.md) | 322 | `result-track:249d2b3d4951f703d7ec20226b5a1f9f81fc3b65bf37a95b34abe8bfbd242348` |
| 24 | `lemma` | [iCondIndepFun_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-iff.md) | 329 | `result-track:27e3e5ddcc471c6ba11679ff89ecba4ab4eb778b91498562ce575a322ae832ba` |
| 25 | `lemma` | [condIndepFun_iff_condIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepfun-iff-condindep.md) | 339 | `result-track:8bdd3113d68a8173deb17782dadbb9c51c93390b686e221f8c452fd43b3e57b2` |
| 26 | `lemma` | [condIndepFun_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepfun-iff.md) | 345 | `result-track:0c4109a436ab12df64513f3000fba2352c46c9b57fece41e7b774c33b91ac726` |
| 27 | `theorem` | [CondIndepSets.symm](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-symm.md) | 361 | `result-track:54548ebf2f49addc53a2de70f29eab719691ec13b4fd964fa6a02ccbe82cd61d` |
| 28 | `theorem` | [condIndepSets_of_condIndepSets_of_le_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-of-condindepsets-of-le-left.md) | 365 | `result-track:1b684561b7b76ae9aff5ad1a6907c63003f21d5d5af47a2850efdc31851e5c3b` |
| 29 | `theorem` | [condIndepSets_of_condIndepSets_of_le_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-of-condindepsets-of-le-right.md) | 370 | `result-track:fc76cc5fd29f13c9597c58511587d60a271b18e094922e52473045113cd36650` |
| 30 | `theorem` | [CondIndepSets.union](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-union.md) | 375 | `result-track:04b8995a46830500d9dc0f5475a96fef196a1d494ed45f3c62596464d00278b4` |
| 31 | `theorem` | [CondIndepSets.union_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-union-iff.md) | 381 | `result-track:0c80614ff27b06b53708b21f1f78ec6dd7476dcf400ee98f8dd2aee588006670` |
| 32 | `theorem` | [CondIndepSets.iUnion](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-iunion.md) | 386 | `result-track:bef7305128d35a5df9b665f479704db1578345e79a878cf7f94d660b491673f5` |
| 33 | `theorem` | [CondIndepSets.bUnion](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-bunion.md) | 391 | `result-track:f42ae2783a30e42bc3bbaf4a68beb7808521bdb5a9ae9bbcc10007034e5ecf02` |
| 34 | `theorem` | [CondIndepSets.inter](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-inter.md) | 396 | `result-track:5c785eec5851353b2c45d3358afe833fe582b6f8c60d4748480ddb8724b17167` |
| 35 | `theorem` | [CondIndepSets.iInter](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-iinter.md) | 401 | `result-track:cfdf7c13f9e827d1fc15c2d0f4b73ee972dbef0574507dec63600ca14c15a192` |
| 36 | `theorem` | [CondIndepSets.bInter](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-binter.md) | 406 | `result-track:f3fab80cee916b069a9c98994afa909091bd7c0dd637b02d2a7471d26ca6074c` |
| 37 | `theorem` | [condIndepSet_empty_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepset-empty-right.md) | 418 | `result-track:7ac9f2dd9089ef1e21d87eca7aad4a44de1195943830cfe2471eb833e987a820` |
| 38 | `theorem` | [condIndepSet_empty_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepset-empty-left.md) | 421 | `result-track:66bf183bfb8d7a31ce8d9c0f8adff9e0cff0dc22badcb8354d90c4983622a140` |
| 39 | `theorem` | [CondIndep.symm](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-symm.md) | 429 | `result-track:7a44a91772c1b44fb03731cb44c435078dfcf36e44ffdee90ef6fc431a6614d6` |
| 40 | `theorem` | [condIndep_bot_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-bot-right.md) | 435 | `result-track:00ec8fba22485df2851b051ccaa9a43e7e51ba71aba1f5140e6a5a0cd931eb0f` |
| 41 | `theorem` | [condIndep_bot_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-bot-left.md) | 441 | `result-track:43ef10443963ba6cfdb17af829120e85ee015f2bbe509a8845ec27282992864f` |
| 42 | `theorem` | [condIndep_of_condIndep_of_le_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-of-condindep-of-le-left.md) | 447 | `result-track:a53a443051b4668c31738721195821ba6e82c4ff20aaebb7fab462e464c1d678` |
| 43 | `theorem` | [condIndep_of_condIndep_of_le_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-of-condindep-of-le-right.md) | 454 | `result-track:182edcbbe3410638b0ca977cd1a27e08f3ff369bac7596919c83bdd0a938693c` |
| 44 | `theorem` | [iCondIndepSets.condIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepsets-condindepsets.md) | 472 | `result-track:3610b663e2e7dcd88126e11d71585db09a033af169ea3be366188652665ee936` |
| 45 | `theorem` | [iCondIndep.condIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindep-condindep.md) | 477 | `result-track:132936258132cf3df35c4c048711802fa33d107891184326846d666ba50cfeba` |
| 46 | `theorem` | [iCondIndepFun.condIndepFun](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-condindepfun.md) | 482 | `result-track:fe6788163474c5612e8374016268abaf80e1cf1a29a1250d30049b7df5b0b8b0` |
| 47 | `theorem` | [iCondIndep.iCondIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindep-icondindepsets.md) | 507 | `result-track:edb5477e578870807bdea6f9811dc8693b58a42510060407a0f20be75301cbf1` |
| 48 | `theorem` | [CondIndep.condIndepSets](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-condindepsets.md) | 513 | `result-track:f694c37b0f65600ad1072af95dc7fa31e7191b5d37250258bdd73c2d68ba4c26` |
| 49 | `theorem` | [CondIndepSets.condIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-condindep.md) | 528 | `result-track:1fb4bb0b6ec4aa459ba59c0de7c24ee8556efd2cefaaf87da7e71b188300f21b` |
| 50 | `theorem` | [CondIndepSets.condIndep'](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-condindep-source-edition-2.md) | 536 | `result-track:4d982915f92a5a6e3fc70f2380524539dadfbdf0f8d34b2bb114f8ded99b8581` |
| 51 | `theorem` | [condIndepSets_piiUnionInter_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-piiunioninter-of-disjoint.md) | 542 | `result-track:9d9d852a4e601ff783fe817f52927c94f524166aa9a2ef3664bd3ee2121d0347` |
| 52 | `theorem` | [iCondIndepSet.condIndep_generateFrom_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepset-condindep-generatefrom-of-disjoint.md) | 547 | `result-track:da765683fc55d3564d6176d9ffd83192e7578ed8adcef37a54710ec757b9015b` |
| 53 | `theorem` | [condIndep_iSup_of_disjoint](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-isup-of-disjoint.md) | 554 | `result-track:ff2027231dbdc21bbbac88276d4d81cf0cf1fbf4d2694843e6c75c7a3e8ecd14` |
| 54 | `theorem` | [condIndep_iSup_of_directed_le](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-isup-of-directed-le.md) | 559 | `result-track:466b53ed3b26169849e8000905b4352d3ff7efc15753682fcf73a75e2f3088a6` |
| 55 | `theorem` | [iCondIndepSet.condIndep_generateFrom_lt](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepset-condindep-generatefrom-lt.md) | 565 | `result-track:41759e3e74216f3c6b5c33e21c3f7222018693862b32e4cf7d9df8ef6097e8bc` |
| 56 | `theorem` | [iCondIndepSet.condIndep_generateFrom_le](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepset-condindep-generatefrom-le.md) | 570 | `result-track:e8033dde29058dbd2d209e75cf0a9b0386bcb8dd4ee8564ef9b2574b6e22baac` |
| 57 | `theorem` | [iCondIndepSet.condIndep_generateFrom_le_nat](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepset-condindep-generatefrom-le-nat.md) | 575 | `result-track:04aed9ee028f202e30f420f89c770fc550ebbe916fcd0b84506dbe2de1684eec` |
| 58 | `theorem` | [condIndep_iSup_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-isup-of-monotone.md) | 580 | `result-track:fb92d8adddb5e482420eed8a9c565c3c360918167d1242e3ae80fc3c237dcadf` |
| 59 | `theorem` | [condIndep_iSup_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-isup-of-antitone.md) | 586 | `result-track:a12bd847d98351ec2b109297a649eb0fd5fc34c046d0008da30875cb789251b5` |
| 60 | `theorem` | [iCondIndepSets.piiUnionInter_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepsets-piiunioninter-of-notmem.md) | 592 | `result-track:88e1bc585282b65d488fe40edd45d21f1637f95cfd452921d6f2b85140aba950` |
| 61 | `theorem` | [iCondIndepSets.iCondIndep](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepsets-icondindep.md) | 602 | `result-track:6bee3b08560f39b677dc6f9991a0957d1ac01fecab6204367636cabe8d7fb6f5` |
| 62 | `theorem` | [CondIndepSets.condIndepSet_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepsets-condindepset-of-mem.md) | 620 | `result-track:9d0ce3f3a375cbc6ab47dd1c6e2028937cb19779b32645e4b5462eaee83ba302` |
| 63 | `theorem` | [CondIndep.condIndepSet_of_measurableSet](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-condindepset-of-measurableset.md) | 626 | `result-track:cdcc5e93107b7e2b5dca32a202e10e14a6f5efee5a41255418d200356ac66f55` |
| 64 | `theorem` | [condIndep_iff_forall_condIndepSet](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindep-iff-forall-condindepset.md) | 632 | `result-track:b18da10feed451f392aa24a8d2fe82b8855e88f4170aa12146580be477b2a2e7` |
| 65 | `theorem` | [condIndepFun_iff_condExp_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepfun-iff-condexp-inter-preimage-eq-mul.md) | 650 | `result-track:a5850573d44da61d671a12f69d0df885f150965db7b888bc7d4f07f2ffaff3b8` |
| 66 | `theorem` | [iCondIndepFun_iff_condExp_inter_preimage_eq_mul](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-iff-condexp-inter-preimage-eq-mul.md) | 665 | `result-track:e9da9cfb255caef28816fec3cb229ae01f4fc4f7a21ed649951fc57ff55dde00` |
| 67 | `theorem` | [condIndepFun_iff_condIndepSet_preimage](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepfun-iff-condindepset-preimage.md) | 691 | `result-track:e443f42c7038f2e5a1a784276d8af74fea9370b22db3f2fd458bcade0e937eb8` |
| 68 | `theorem` | [CondIndepFun.symm](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepfun-symm.md) | 698 | `result-track:8005a32872ab479ceff6c81ee95e077b15bcd3d45c8dc8515c3369d05bcf4d57` |
| 69 | `theorem` | [CondIndepFun.comp](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepfun-comp.md) | 703 | `result-track:274703218533a9df464d241b848d7a3c9880f1e637ceb726c99eb6cc9a3d6aec` |
| 70 | `theorem` | [CondIndepFun.neg_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepfun-neg-right.md) | 709 | `result-track:76b4786e9212bce93043cfa439959d1cc58f45e945de3e284cbae9d7c59b692a` |
| 71 | `theorem` | [CondIndepFun.neg_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/condindepfun-neg-left.md) | 713 | `result-track:b8e09a7a38eeecca77213984513d56b90771cc7a935577595fa845786abbbe40` |
| 72 | `lemma` | [iCondIndepFun.of_subsingleton](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-of-subsingleton.md) | 721 | `result-track:e6b60e5e1797909fa6dbd76a43ca21338e4dd30d88f89c236f4cd3a3e7957be1` |
| 73 | `theorem` | [iCondIndepFun.condIndepFun_finset](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-condindepfun-finset.md) | 727 | `result-track:af051ef881fba1eb6f5be9934d10925a7c91a27675f597ded87dd1aed2c89bc2` |
| 74 | `theorem` | [iCondIndepFun.condIndepFun_prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-condindepfun-prodmk.md) | 733 | `result-track:64c302ef8c778510161736d7c67774e702fb20a0d6d6da67eac7a15de570ea6c` |
| 75 | `lemma` | [iCondIndepFun.condIndepFun_prodMk_prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-condindepfun-prodmk-prodmk.md) | 743 | `result-track:3659c1f077e93474b7be2d574ea65ebd004cf78b73e86f29ef9ebf2fb629671c` |
| 76 | `lemma` | [iCondIndepFun.indepFun_mul_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-indepfun-mul-left.md) | 762 | `result-track:0c5dada579fb01da1b26b64a3fc31f8136e674709497cdc7fa2880e861e22dec` |
| 77 | `lemma` | [iCondIndepFun.indepFun_mul_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-indepfun-mul-right.md) | 768 | `result-track:f15ef579b738719c5b4ac6909f7ca7e839f2ff79378cb7fc58be90cb2ff94e61` |
| 78 | `lemma` | [iCondIndepFun.indepFun_mul_mul](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-indepfun-mul-mul.md) | 774 | `result-track:98e84eb80dbe716172a77cf767e3a183b578127531258b4f93a212da49c32ef7` |
| 79 | `lemma` | [iCondIndepFun.indepFun_div_left](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-indepfun-div-left.md) | 786 | `result-track:da9d92aa00fc1044922f6ad357f6a4925dfb55ea737089c1ee50b2241d766813` |
| 80 | `lemma` | [iCondIndepFun.indepFun_div_right](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-indepfun-div-right.md) | 792 | `result-track:abf2ae34dce8cd4879925039f67ec99dd5c357ae8a696285b379441a35473489` |
| 81 | `lemma` | [iCondIndepFun.indepFun_div_div](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-indepfun-div-div.md) | 798 | `result-track:92488f4b385b271aa65445845419b6285dd6aebc8fb7b26536e773a1a35d972b` |
| 82 | `theorem` | [iCondIndepFun.condIndepFun_finset_prod_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-condindepfun-finset-prod-of-notmem.md) | 810 | `result-track:c1c6ebd40a887392cdf0a8dba42fc6b34fbd6fedf6c37742c53efa89e69cb870` |
| 83 | `theorem` | [iCondIndepFun.condIndepFun_prod_range_succ](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepfun-condindepfun-prod-range-succ.md) | 825 | `result-track:125c488b39e24daa17e9cd58734a2fca0fc80c18b9791e35efa2b176a2508256` |
| 84 | `theorem` | [iCondIndepSet.iCondIndepFun_indicator](../../../../ProbabilityTheoryAndStochasticProcesses/ConditionalNamespaced.lean/declarations/icondindepset-icondindepfun-indicator.md) | 832 | `result-track:de10dc3dedc13f20a1225184e57ffc2bc6818e4aee196aeb09f2465e45821b52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4ceb4593ccbcf6b21a66509dfd71b2ceb151a03fb029e0b973cef61c204380e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Conditional/Variantb947ad24b08f51698986c4ec9787127d943d3deca28a7c238ddb102428d98cce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
