# Verification target: Homotopy Group Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8e10a052b13cd9076637537a1c01aedae2a2cae",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8e10a052b13cd9076637537a1c01aedae2a2cae`.

Source path: `GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean.json)

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
| 1 | `def` | [boundary](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/boundary-source-edition-2.md) | 67 | `declaration-track:3a2f5f07b7788ddba5bc9cc5c78a2d927858c0840adea0bc2457c876fbd1aa21` |
| 2 | `abbrev` | [splitAt](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/splitat.md) | 74 | `declaration-track:85a4b4109da54a67bbc1aab2a7a77dff3a28f531c61b210ab7cb7cdaa3d048c7` |
| 3 | `abbrev` | [insertAt](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/insertat.md) | 79 | `declaration-track:6e6e5b4ecb4ba81a51deb8839cc2ed01bb2da985b007e1ab6fbe640e1cb96d08` |
| 4 | `theorem` | [insertAt_boundary](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/insertat-boundary.md) | 82 | `result-track:957489abb55fbbd3cb210d7d4d1a8a13bf81f10c969839e97679fdf6aaa3f982` |
| 5 | `abbrev` | [LoopSpace](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/loopspace.md) | 94 | `declaration-track:d2c21d0bd77e354aeb7fcefa231036ea6ee1ecc090458b7d167ed1e1ef73696f` |
| 6 | `instance` | [LoopSpace.inhabited](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/loopspace-inhabited.md) | 99 | `declaration-track:728018a64cb350e7e3e8a02267f3cbf2f8d7074f7544da4c36d2733b7d0f4d8b` |
| 7 | `def` | [GenLoop](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/genloop.md) | 105 | `declaration-track:ca1ec3f93cffceb8a863ae9f7a4e928e4e20bb92cea700f3001d6063d973cd18` |
| 8 | `instance` | [instFunLike](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/instfunlike.md) | 117 | `declaration-track:0dbe365672fecffb91f66213950e6935dd8c04026a16be99c3df1708cc12bea1` |
| 9 | `theorem` | [coe_coe](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/coe-coe.md) | 122 | `result-track:387738a7ad3917db9d39adabfbc067eabc7d6f1ffe8393288edd7c8e2342fc42` |
| 10 | `theorem` | [ext](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/ext.md) | 125 | `result-track:44d823749081fd45d33d089b9e32a7571216866257ab1665a53806a0f9a1af35` |
| 11 | `theorem` | [mk_apply](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/mk-apply.md) | 129 | `result-track:5e776775de79d634f0296e8b0822046aeb2cdfb036ecede4259f4c20a73c9ba2` |
| 12 | `instance` | [instContinuousEval](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/instcontinuouseval.md) | 132 | `declaration-track:1e7fc21b5c17d04ce7d6ce875e656bd96c1de9a825d4cfe9f07a84bffcfa7fa6` |
| 13 | `instance` | [instContinuousEvalConst](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/instcontinuousevalconst.md) | 135 | `declaration-track:eaef8004c0865b79687037ac6bbbb2243f79514fd9819690f3217d15cd1c07aa` |
| 14 | `def` | [copy](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/copy.md) | 139 | `declaration-track:165435404a92fe30fa168eb25d56c6055ad7d403dda24290fa665fce51759352` |
| 15 | `theorem` | [coe_copy](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/coe-copy.md) | 142 | `result-track:2e552d26f0b5862760cf71310c256fd0d234389fab4dbbf73c995346a6e7047f` |
| 16 | `theorem` | [copy_eq](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/copy-eq.md) | 145 | `result-track:198a33a4eda8988aa401d1c5caaa5b4c20cda87086fe67997ac322e4a4a97d90` |
| 17 | `theorem` | [boundary](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/boundary.md) | 149 | `result-track:303d944115338f42ff1f3b12aa2e0e1f6278df2c5ae61ca331a2d07f6e2b7170` |
| 18 | `def` | [const](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/const.md) | 153 | `declaration-track:b52c1f38549ef821f4126f5e5f5bbe6a368c8f79b14640197d0359442f58c028` |
| 19 | `theorem` | [const_apply](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/const-apply.md) | 157 | `result-track:131e854c17233b7bf040c823635f275899c96f3809a6dbfc55e007dc4f67e078` |
| 20 | `instance` | [inhabited](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/inhabited.md) | 160 | `declaration-track:742212daef3f75dd0e2cf40c98cd8b3d1f9e1b265e3b8b12b96fd84b5fe1319a` |
| 21 | `def` | [congr](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/congr.md) | 168 | `declaration-track:0e73163bf1b090cc85baa0ec72a118c1d3d1615a4a623b870194cd3a84458dd4` |
| 22 | `theorem` | [Homotopy Group Namespaced Public](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/boundary-sum-iff.md) | 176 | `result-track:c7845c23bd760a7c212f37e72d5165bb32a23e7515b292152bba4601c91002c9` |
| 23 | `lemma` | [apply_inl_apply_inr_eq_of_mem_boundary_sum](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/apply-inl-apply-inr-eq-of-mem-boundary-sum.md) | 187 | `result-track:4747cf287bdde65f667e04919ef88cb075c571d0364d8f6ef319b22bbdea8c4d` |
| 24 | `def` | [currySum](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/currysum.md) | 197 | `declaration-track:f5044306e764602e5e4d55faa594cab9845a08222ae112fcce298965e6d8fd26` |
| 25 | `lemma` | [currySum_apply_inl_inr](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/currysum-apply-inl-inr.md) | 206 | `result-track:d61c51786a90653643527779b822237ab28bbf4b7e5010ab7f8f603486504075` |
| 26 | `lemma` | [continuous_currySum](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/continuous-currysum.md) | 211 | `result-track:016d3e13674cef98f797207450d7f5247ba3e7bd8ef5042d8213f161b5b193f2` |
| 27 | `def` | [uncurry](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/uncurry.md) | 217 | `declaration-track:b06bb1c5258582f075830be0132f89b194fb2e507b3d242365ac477e831bbd01` |
| 28 | `lemma` | [uncurry_apply](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/uncurry-apply.md) | 221 | `result-track:93089e6ac2e546c454929461be971abc18f97a1fa5a3f01dc4778412a1af8411` |
| 29 | `def` | [genLoopGenLoopEquiv](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/genloopgenloopequiv.md) | 227 | `declaration-track:eef17f3dd9123429be315be72a975ca441e58537e60ee47392df547582bc4d3a` |
| 30 | `def` | [Homotopic](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopic.md) | 241 | `declaration-track:780e8cb7d6a64e31b641e7e3064758a8a2f7f4746de2c7ad44a18f47540e482d` |
| 31 | `theorem` | [refl](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/refl.md) | 249 | `result-track:91a778e98648e448d487e4b2bf501c3d4d776de5d692041f71dfc2643b9a447d` |
| 32 | `theorem` | [symm](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/symm.md) | 253 | `result-track:c927a4b6fcf0b522b55ec2a84fe1ed29978167473572345e15e0361281e5adbc` |
| 33 | `theorem` | [trans](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/trans.md) | 257 | `result-track:9980b2a6b3561a6d540e85c1020cbb3425bfa0ac15b931eee3909acefcdc3c86` |
| 34 | `theorem` | [equiv](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/equiv.md) | 260 | `result-track:c6db1b4a96ab3060a34dbaf3c274cf1a5383befbdc57b5e1f912d1e10ebe46d6` |
| 35 | `instance` | [setoid](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/setoid.md) | 263 | `declaration-track:4de2bfad7c8d46cf5ac7ea9675f322d15d63ca362eb7af07a337700a393c3a12` |
| 36 | `def` | [toLoop](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/toloop.md) | 274 | `declaration-track:2c755f2515895d614b0241093b62aec1a2207e6b4cf233ad9a430ad37f9bebfd` |
| 37 | `theorem` | [continuous_toLoop](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/continuous-toloop.md) | 282 | `result-track:5cae31f2c6ac77649fbed5488138fbc016eeca784596791183ad5ea8ba280266` |
| 38 | `def` | [fromLoop](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/fromloop.md) | 294 | `declaration-track:34d4129047ef45787d378d03311b381d8a37dafb3bf62793aea120d23fffb4f4` |
| 39 | `theorem` | [continuous_fromLoop](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/continuous-fromloop.md) | 306 | `result-track:d34a1c2371180cb7eb0133cbd19060a6db60af268058fccfc634a88f738f156e` |
| 40 | `theorem` | [to_from](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/to-from.md) | 312 | `result-track:53d31e9ff3e4cbabc5d93085a62427e9483e8a991c639842d8924ff6972ff02a` |
| 41 | `def` | [loopHomeo](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/loophomeo.md) | 321 | `declaration-track:31dc4e69d1cafe7773e381760b21123588118e0f73615ffac7264d84192582e8` |
| 42 | `theorem` | [toLoop_apply](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/toloop-apply.md) | 329 | `result-track:235123292f804a365f69762aa2cfc25a524d88c6bee6a8949e5f4cd37e2a98a6` |
| 43 | `theorem` | [fromLoop_apply](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/fromloop-apply.md) | 333 | `result-track:67596524e803a60c41cfd6b6c5ac51f678866036d2765b9a3e889a62a2abe95e` |
| 44 | `abbrev` | [cCompInsert](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/ccompinsert.md) | 338 | `declaration-track:b7e6eb9e97bb285a65c0e30bbcec1d20900e28f3d7d0599a767e4df682be1cd7` |
| 45 | `def` | [homotopyTo](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopyto.md) | 344 | `declaration-track:97f8b82781fb09d7b41a231b771c0471e099cc3096b7a541ae1ca1864c0220a8` |
| 46 | `theorem` | [homotopyTo_apply](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopyto-apply.md) | 350 | `result-track:b50f5e73253f706852467e7cb921be4b9601e233c9984689650d54a09b75f477` |
| 47 | `theorem` | [homotopicTo](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopicto.md) | 356 | `result-track:6f7070685efca9b4d369e20aab65af5200de4915e6443910760c88d18e0df14d` |
| 48 | `def` | [homotopyFrom](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopyfrom.md) | 380 | `declaration-track:25b67ac6dd1e897a1b415c4406a5f7799ee0eec4ab364a409c4ba6cf4572f2f3` |
| 49 | `theorem` | [homotopicFrom](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopicfrom.md) | 386 | `result-track:1212d19e007a745baeef0413a87a6f21129588ef9c537535c5850da23c8a49bd` |
| 50 | `def` | [transAt](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/transat.md) | 410 | `declaration-track:cb0308e7c1ea512e57324b81e587d9ca01c0bc25e0f4f945642ec3fc74e1ebf0` |
| 51 | `def` | [symmAt](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/symmat.md) | 425 | `declaration-track:be481917b420af687cb5eb069520822ce0515915ef39c3b895b72a6ec15be3a7` |
| 52 | `theorem` | [transAt_distrib](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/transat-distrib.md) | 429 | `result-track:4b5e53ea39d5419536bfdb63a6099dbeb9f0d6a9845b6421bd58245bcd2ff5a3` |
| 53 | `theorem` | [fromLoop_trans_toLoop](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/fromloop-trans-toloop.md) | 436 | `result-track:f489103b8a63e0d9ff356cfe0a33263c91e46bc72a038a9c602caa77cea67edf` |
| 54 | `theorem` | [fromLoop_symm_toLoop](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/fromloop-symm-toloop.md) | 440 | `result-track:69df600b10f2ff8ece9dca8345573d07b3740030019bb7f5e88ce897e6d45fb6` |
| 55 | `def` | [HomotopyGroup](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopygroup.md) | 449 | `declaration-track:4b24e856e3b8a07af6457780cdfd76628c155236816c6728383f58d9ab08e42d` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/instance.md) | 452 | `declaration-track:657ab0088f8af6a88b3687e5534298ec2d2d8fa90e7351dfbe13e1885e31f078` |
| 57 | `def` | [homotopyGroupEquivFundamentalGroup](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopygroupequivfundamentalgroup.md) | 461 | `declaration-track:8944d33f1aaa76a23bc1e2ff1e27430e925648299bf4bb68f02a367dff4fc058` |
| 58 | `abbrev` | [HomotopyGroup.Pi](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopygroup-pi.md) | 466 | `declaration-track:51830d83dd19c81d26735100ed42b1bd63cd2e4b2cd63d235af5f5624fa71faa` |
| 59 | `def` | [genLoopHomeoOfIsEmpty](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/genloophomeoofisempty.md) | 472 | `declaration-track:5ac914d356b79ee2367f5b683b3b9def9b38338f83e251ce4180c6773cf7c51d` |
| 60 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopygroupequivzerothhomotopyofisempty.md) | 480 | `declaration-track:3cbd5f56253a00b28e3fcc824c23a6feac9ee526b163148297f0b4a3fdd5e757` |
| 61 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopygroup-pi0equivzerothhomotopy.md) | 497 | `declaration-track:e0e0cdc7fd38371349be221e4a3477289b43af4978e57035ddfcd4b869567a09` |
| 62 | `def` | [genLoopEquivOfUnique](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/genloopequivofunique.md) | 501 | `declaration-track:a5c968e93a9913f14085a6fcfb9c714fab90363f11703a0304f0b0862a987128` |
| 63 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopygroupequivfundamentalgroupofunique.md) | 519 | `declaration-track:b5714945022b24872bb85981fc60c64af2401bf797da8d4bf9ab468ff15dc739` |
| 64 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopygroup-pi1equivfundamentalgroup.md) | 538 | `declaration-track:d3b3cafdee4b7c24f419c2c2f2c6c4859d8679fe0281ec084aa3893fa9ee4012` |
| 65 | `lemma` | [HomotopyGroup.genLoopEquivOfUnique_transAt](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopygroup-genloopequivofunique-transat.md) | 541 | `result-track:3af9b9996038694b7d30a8fa960e97374ff7b574dd05f840a9eea76c4d5fe90f` |
| 66 | `instance` | [group](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/group.md) | 555 | `declaration-track:5af773d9389ca56595683b02041ab8378399b35d71e86048565aa52017999912` |
| 67 | `abbrev` | [auxGroup](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/auxgroup.md) | 561 | `declaration-track:74e960d12df1cf6a787d7aecdd376eb1498f108e52b537d192befb0fae1b3ce7` |
| 68 | `theorem` | [isUnital_auxGroup](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/isunital-auxgroup.md) | 564 | `result-track:1afa888893070cb8c8e7d18b794ccfb7bd38e007b625f389a366712041c114dd` |
| 69 | `theorem` | [auxGroup_indep](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/auxgroup-indep.md) | 569 | `result-track:98cd21d1283b3d036c1ef0bc2cdf940e3667688983f82f812820024a8e3bbcab` |
| 70 | `theorem` | [transAt_indep](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/transat-indep.md) | 578 | `result-track:f1eff82548749778b13427ed0951a1dddbd3d0d6d194c2700657665e7465858a` |
| 71 | `theorem` | [symmAt_indep](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/symmat-indep.md) | 584 | `result-track:4fda7cb9208a6c886186cd923651e9cea03d547b520bd1fb077fc3631ed5efc2` |
| 72 | `theorem` | [one_def](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/one-def.md) | 591 | `result-track:2e2af1c2e84adf3cb334812bf29b97549bf4fc0e798d47dfbdedcca34ac45a94` |
| 73 | `theorem` | [mul_spec](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/mul-spec.md) | 595 | `result-track:259ad6f5c696b050fbe4852821763fb379de06dc032ec37f06676d8f5b07a7a2` |
| 74 | `theorem` | [inv_spec](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/inv-spec.md) | 603 | `result-track:a77068f6638fe7d0ef9578a06a0e5af9bf47dd99ac109b879550fb711c207461` |
| 75 | `instance` | [commGroup](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/commgroup.md) | 611 | `declaration-track:cc0d04499fe0e88df67f9781b6ebca50041d7dab2f940bd35185ec7c4e17d276` |
| 76 | `def` | [homotopyGroupOfUniqueMulEquivFundamentalGroup](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/homotopygroupofuniquemulequivfundamentalgroup.md) | 623 | `declaration-track:008bbd4538b4572fffe6ebb446b7834e7b29e286828f64c9d4e3fe5b2835147e` |
| 77 | `def` | [pi1MulEquivFundamentalGroup](../../../../GeneralTopology/HomotopyGroupNamespacedPublic.lean/declarations/pi1mulequivfundamentalgroup.md) | 632 | `declaration-track:7eda5e6eb4cde7da8c5f88441bcbda01c19ae0171c473f80e873a4bf197e133e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3a986d267ccc5818645e2762a4ebb477a275c2b93f389bded90eeafac45609f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/HomotopyGroup/Variant26099a26ddba21eb91b991c5299d941bdf07b320a6deb2d043f97b719b42e65b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
