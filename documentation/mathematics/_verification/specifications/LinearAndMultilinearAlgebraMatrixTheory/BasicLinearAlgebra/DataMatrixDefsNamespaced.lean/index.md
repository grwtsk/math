# Verification target: Data Matrix Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2eff4918bd0e6841664566f56af8cc0260a5c7b8",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantb67b9d40d54689ebd2a746d38e3afc6ab82d2bf8f3a54e03ff7368a965614538.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2eff4918bd0e6841664566f56af8cc0260a5c7b8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantb67b9d40d54689ebd2a746d38e3afc6ab82d2bf8f3a54e03ff7368a965614538.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantb67b9d40d54689ebd2a746d38e3afc6ab82d2bf8f3a54e03ff7368a965614538.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Pi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/matrix.md) | 55 | `declaration-track:95616dd178fc8ee8926ccec57ac14586c53c5f7fc4477f5b5905cdaa4538cfd4` |
| 2 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/ext-iff.md) | 67 | `result-track:13ac717e13466ee40cb4033c8f2aaedd234a7ef5a22ef0006a08a4198d19a25e` |
| 3 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/ext.md) | 71 | `result-track:809474f74b55bfa57d059710aa2dedfc60d08204d5ab782b6481b5849d3c2f66` |
| 4 | `def` | [of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/of.md) | 86 | `declaration-track:4149bc72dfc788915084f2b1ed5c3543e78c4ed011f9849da6661285318caf1d` |
| 5 | `theorem` | [of_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/of-apply.md) | 90 | `result-track:8ee5fdabb1cc84f80051248b3a2ba392e26f11bd39cdf05b6d1b483f813a1156` |
| 6 | `theorem` | [of_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/of-symm-apply.md) | 94 | `result-track:6338bfe12175427679c80a0815be5a60858ef04c149776f0e0eb8dce34863853` |
| 7 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map.md) | 110 | `declaration-track:327fed753b8fe6b4e4a7de59098a57784fd22acd6fda9867390920b8d8da234b` |
| 8 | `theorem` | [map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-apply.md) | 114 | `result-track:653e6eb3ae779fb228b32696cb0b10b4e00b86b6dbac50213de14997a2fae73a` |
| 9 | `theorem` | [map_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-id.md) | 118 | `result-track:123f1faf665f067e2ec38a861fd875cf39ac95f3f8a2ac3a5b2116cc4c7c336c` |
| 10 | `theorem` | [map_id'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-id-source-edition-2.md) | 123 | `result-track:cb1e7511040825b83aa8bceaa12aa6b9925b0291fc22108468247517d724b6c2` |
| 11 | `theorem` | [map_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-map.md) | 126 | `result-track:4363542d61d8bd6733acae24324f4ced5677a5685bce69763a4115f868aafaad` |
| 12 | `theorem` | [map_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-injective.md) | 131 | `result-track:6bf3c9db05fee8d28721bc262a702a6e7e42900c11a7fe5d7d4bcb452c2bec43` |
| 13 | `def` | [transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose.md) | 136 | `declaration-track:fd87151bc71d8261c002e90db3ff538836f9e1c38caaa06c341c08cf912503cd` |
| 14 | `theorem` | [transpose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-apply.md) | 141 | `result-track:fc00a3f427471b8a494f4a88efa92c79ab66469eb3a08b92596b70e3ddbee616` |
| 15 | `instance` | [inhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/inhabited.md) | 147 | `declaration-track:ac4f1d82e9d2d7ec39eca643b595495b440a48f29f4322be4a6d535ee783a6c5` |
| 16 | `instance` | [add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/add.md) | 150 | `declaration-track:4e16479a57f74e2feaa825df4c3f0afc069e423fe6319b37dd9b155c62e7a8b1` |
| 17 | `instance` | [addSemigroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/addsemigroup.md) | 153 | `declaration-track:6c9a684e9aa59a7e37e9f36596321c6a942cada9e242bf2f3fefca799e333ed0` |
| 18 | `instance` | [addCommSemigroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/addcommsemigroup.md) | 156 | `declaration-track:137a02d9d1da89611bafea083708e54b4e1a7526f10bd851b73be2493ce88af7` |
| 19 | `instance` | [zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/zero.md) | 159 | `declaration-track:12b2e4a9aa626075161377690ba4aadeeba339110b3fd94ca6c770300ab986d4` |
| 20 | `instance` | [addZeroClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/addzeroclass.md) | 162 | `declaration-track:ca876ed74244cc955a20975986b7a17acb7dc32f9361ecebc067c64a64b4b560` |
| 21 | `instance` | [addMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/addmonoid.md) | 165 | `declaration-track:a77115ba77cb343a353e0e81c4a2a2f0774fd927bad7c97c5e6b13645b782c2c` |
| 22 | `instance` | [addCommMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/addcommmonoid.md) | 168 | `declaration-track:05d7e7639abee41ba7953da8deb8887d5621b8c1e5b369be559496132cd98900` |
| 23 | `instance` | [neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/neg.md) | 171 | `declaration-track:c393a1fd175977d560fb677c7c3b6e36b909dffccc50b6f381ede7afcb3d4995` |
| 24 | `instance` | [sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/sub.md) | 174 | `declaration-track:c6291612563c73a7f01387bf2f0327e8f9fc52c13e8f60bc493b0ff7f1c52f57` |
| 25 | `instance` | [addGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/addgroup.md) | 177 | `declaration-track:dac61713cccda12420bf66a8aeee17e967248fddcfda12d8b1a680d2474b2d57` |
| 26 | `instance` | [addCommGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/addcommgroup.md) | 180 | `declaration-track:3a4e9c98d254e0753bb573d1c3df9149304632482f71c247dda6c4e14a89ddf2` |
| 27 | `instance` | [unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/unique.md) | 183 | `declaration-track:ce2d5d20454125268e431f0ecfbf7b90975b7fe9e5b0cdc8207eb1e4bf7c9aba` |
| 28 | `instance` | [subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subsingleton.md) | 186 | `declaration-track:8f30dc17167ebd7b6591f42bba96c87cf6c483da98143ac3c56888a0c8f7058a` |
| 29 | `instance` | [nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/nonempty.md) | 189 | `declaration-track:0eba586e491ad6602420ad6baf67f964c86ef10ae177d5105b34afc556fa491b` |
| 30 | `instance` | [smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/smul.md) | 192 | `declaration-track:37a6cb69f97c2f92e7d6e8b73a7b8f9db7a1ffac7f2f3d99177901cf2f748bd1` |
| 31 | `instance` | [smulCommClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/smulcommclass.md) | 195 | `declaration-track:0ce884e41bdd40a5349becb8495e3b2a653b4cb6bc6c4a07c7bd8324c029b12b` |
| 32 | `instance` | [isScalarTower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/isscalartower.md) | 199 | `declaration-track:e82f90a87a5b97e3d7b56219ee7d066c6cd3ba40fe0cb2f4a068d6a5493ff638` |
| 33 | `instance` | [isCentralScalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/iscentralscalar.md) | 203 | `declaration-track:41fece1ddc074c809e5725ebb01169dd1ad5d9ebc865299956b1fd1189895a99` |
| 34 | `instance` | [mulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/mulaction.md) | 207 | `declaration-track:8f28576b28483cc24f3b3657dc71dcc3b033d4ce7757a504833f9acee9ec3d42` |
| 35 | `instance` | [distribMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/distribmulaction.md) | 210 | `declaration-track:0b05f0aa106a3a651019eb17fdedc9f28697ce9bcb0073476eecc1a3002de0d1` |
| 36 | `instance` | [module](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/module.md) | 214 | `declaration-track:b2479983f83948c4784163ce1c9ec7ee2d1010afa7c6b17ba436282bcdcedbcf` |
| 37 | `theorem` | [zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/zero-apply.md) | 220 | `result-track:baf6540e2cf397d67fc1ab858eadaa77f7ab42702724e19d138630c2169b37c3` |
| 38 | `theorem` | [add_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/add-apply.md) | 223 | `result-track:7b2844cc21e4bd03a6198c5d0ae8076749f75097d9e6f7a5d309f709bc5c3267` |
| 39 | `theorem` | [smul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/smul-apply.md) | 227 | `result-track:708db1561ee5903d85f0358c4d9f7f463d47c3716a74e372926b4ca468eb535c` |
| 40 | `theorem` | [sub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/sub-apply.md) | 231 | `result-track:71819080238fe332c68fbde5b4e55fa303c47ab2f28d955111dd0962ce8ddf88` |
| 41 | `theorem` | [neg_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/neg-apply.md) | 235 | `result-track:bbd8d62009cf2a2278c93f83ed977dbe43649547a04aaa39082a9b2b342eeda0` |
| 42 | `theorem` | [dite_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/dite-apply.md) | 238 | `result-track:4d490e1e1225abd7f1f7273956d407cb94fe2c9e0c2fdd72173e6257f0ec8967` |
| 43 | `theorem` | [ite_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/ite-apply.md) | 243 | `result-track:31b9c1bcdc1e14820c057ced49ee22dbdd6cf0738742dc1941dee65bbcedb26c` |
| 44 | `theorem` | [of_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/of-zero.md) | 253 | `result-track:37e73dd36174009b5831420d3c2515719cc0f86865ea1e5546aeebdd6fef30b6` |
| 45 | `theorem` | [of_add_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/of-add-of.md) | 257 | `result-track:08a48534ec4454821d428a25c5ae2e783e96c39f9b47190bb29ebb9406d7c5fb` |
| 46 | `theorem` | [of_sub_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/of-sub-of.md) | 261 | `result-track:95e05473d3bd14ee8d11258c86c42999d5fa2df96970d7650271311da980fdd0` |
| 47 | `theorem` | [neg_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/neg-of.md) | 265 | `result-track:26201627d0d2b0247717a34457c23237f6a658a70883edfda30691808f71a0b8` |
| 48 | `theorem` | [smul_of](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/smul-of.md) | 269 | `result-track:dea841f1bf1d09888f9cf39eea3e8a67fae0dd6c0887b7246146dc866f208c92` |
| 49 | `theorem` | [map_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-zero.md) | 273 | `result-track:0e8a9c6eb3db0a72d55e38e506b84680daca42f1abc3520b0a816d6bc3513d56` |
| 50 | `theorem` | [map_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-add.md) | 278 | `result-track:1e5cc2912fbe4cefcb79f02c35111357bfc435b46df2fed76e80d0ecb7384604` |
| 51 | `theorem` | [map_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-sub.md) | 282 | `result-track:9e808b50fa42bd778d5671f54fbbaeb803d6703c5d19a5e77241201c3d18bd8f` |
| 52 | `theorem` | [map_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-smul-source-edition-2.md) | 286 | `result-track:9fefbcf7fe57b74e7a5974657f5ffa8ca18616ed8e5fc23208e6f58ed46569a6` |
| 53 | `theorem` | [map_smul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-smul.md) | 292 | `result-track:86931db99c8c04ba0031f08380bbbb734758f168deaf4a42ff4fbe2bb6d550d0` |
| 54 | `theorem` | [map_op_smul'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/map-op-smul.md) | 298 | `result-track:c2a79889e0ed9d3b3afb67fcbf846933dce3dae88afd4ede810c8edb08b8c2d2` |
| 55 | `theorem` | [Data Matrix Defs Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/matrix-source-line-303-occurrence-2.md) | 303 | `result-track:f3a622a5dd446a1064fd41e6267dc9499115de20a656110ac0fbadf5fa2e2fed` |
| 56 | `theorem` | [Data Matrix Defs Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/matrix-source-line-307-occurrence-2.md) | 307 | `result-track:66b30d6901a2b6b3a491705e562889c36c8d38697871547a904632a11bde5d08` |
| 57 | `instance` | [subsingleton_of_empty_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subsingleton-of-empty-left.md) | 311 | `declaration-track:65c2f6a775ebb3c1b9c9e7e0d84a0adc1f2a81d0d56d6ff446fca56813cb303b` |
| 58 | `instance` | [subsingleton_of_empty_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subsingleton-of-empty-right.md) | 316 | `declaration-track:cea2d9da210fdd228210ab4977df8cf6f8f62b39985bc510098d7b66abbfa922` |
| 59 | `def` | [ofAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/ofaddequiv.md) | 322 | `declaration-track:ae3467646702a2a37fed1df490871925afb944436f5597953469cc7a6a239146` |
| 60 | `lemma` | [coe_ofAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/coe-ofaddequiv.md) | 326 | `result-track:d591dcf5a1a1b7ce0fe683defca9b7103b72e41d2c4054e2aee70a07b9c4476e` |
| 61 | `lemma` | [coe_ofAddEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/coe-ofaddequiv-symm.md) | 328 | `result-track:f451da137426749604c43b3a58a1e5c49326c7dfaae742410b376f41d8b1ecae` |
| 62 | `lemma` | [isAddUnit_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/isaddunit-iff.md) | 331 | `result-track:5262ce89333c285da305b16967966484db76ed62a0d52ddb4bc4354f3afeba84` |
| 63 | `theorem` | [transpose_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-transpose.md) | 348 | `result-track:2c4bf9ce094bb6e7815150c7e4b2faf4e574396608b2a65bf002cefc57551ab4` |
| 64 | `theorem` | [transpose_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-injective.md) | 352 | `result-track:f6f4333f6961d90f10b8d2efe8ff130931486107a9e112e572a44e596f2ddd3f` |
| 65 | `theorem` | [transpose_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-inj.md) | 355 | `result-track:cc4a66d28c817d0eef00b91905d296e8aa97a131151b17d9cb56e8cf98a72fbb` |
| 66 | `theorem` | [transpose_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-zero.md) | 358 | `result-track:ae199d77b5abab095d0ca63666dfbc1ca6bc255fe3cd91836f8f06893482a657` |
| 67 | `theorem` | [transpose_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-eq-zero.md) | 361 | `result-track:5468a0bcdff5903bdc6be9d377838f3e1bb371b84d6e04874272e59b1e9515ee` |
| 68 | `theorem` | [transpose_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-add.md) | 364 | `result-track:33e3bb10cbf2768e8024519a23ed274e00ec1ab8228dbb7f2bec97d84943c888` |
| 69 | `theorem` | [transpose_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-sub.md) | 369 | `result-track:bb79d020c155c3f97ce82462cde33ad20940cc795c93f41652f62e74a01ebb24` |
| 70 | `theorem` | [transpose_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-smul.md) | 374 | `result-track:87c87e9025322dc419a0901535bc670f82230a86239e4e805ecc44481041b851` |
| 71 | `theorem` | [transpose_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-neg.md) | 379 | `result-track:13fd8d343705ee1300f9ac926eece7e5d430e46465922d6b996e1c0a967cad68` |
| 72 | `theorem` | [transpose_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-map.md) | 383 | `result-track:6cac5df1d97d79ccf480116fab26077cc845afb751a89d0d0bdc7dc3c5ef6eff` |
| 73 | `def` | [submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix.md) | 393 | `declaration-track:a20c934c524c7af1546817634cfca2ec475cfbff779d0256687a8c8bb3be2f60` |
| 74 | `theorem` | [submatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix-apply.md) | 397 | `result-track:cf9a2d5a4bd9bbbef957944e09dfdcfea0d5bfd56d9381f4b87c2b1f19d257f0` |
| 75 | `theorem` | [submatrix_id_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix-id-id.md) | 402 | `result-track:94e0ccbbc1c066875e0ba60f86fafe0120cb313ae31e6e1a60521ca940133104` |
| 76 | `theorem` | [submatrix_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix-submatrix.md) | 406 | `result-track:9dd2aeea55084ce420f8b0262c69284fd9523d67728dd520ef28985080e6d1f9` |
| 77 | `theorem` | [transpose_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-submatrix.md) | 412 | `result-track:b6fa16108f3a2a3cc7274e28b6306eafd8459a2795ca0034487a837cd7f92173` |
| 78 | `theorem` | [submatrix_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix-add.md) | 416 | `result-track:9ecf7ad8bf97563533526d334cd3704418fd028f5bffa97c55e32ff812e479f9` |
| 79 | `theorem` | [submatrix_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix-neg.md) | 420 | `result-track:16020e6063c5c9754efa3c97b3ed0cf8997d045c44b8cc54a38cb6b12c3d8916` |
| 80 | `theorem` | [submatrix_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix-sub.md) | 424 | `result-track:ccae71328708e99d1093891898172b381a6751127c7be5081856f7a6fcdc49c0` |
| 81 | `theorem` | [submatrix_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix-zero.md) | 429 | `result-track:339006688a9be73d817cdbc7894cd8f1516751249e234e0d9bc7af243daa3e08` |
| 82 | `theorem` | [submatrix_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix-smul.md) | 433 | `result-track:0a2c279b53b2d25a05580511e5cc12524f51d959cb26925f38781ef52b5c0480` |
| 83 | `theorem` | [submatrix_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/submatrix-map.md) | 437 | `result-track:e3a074ded63f6a82737a9edb09dca813c7d3200fefd1e10a22637be5908b131c` |
| 84 | `def` | [reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/reindex.md) | 443 | `declaration-track:15392ee31c24695fe04ae624101bf5ebefeb2e64ffe4059828c310777a05ad4e` |
| 85 | `theorem` | [reindex_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/reindex-apply.md) | 450 | `result-track:2c15efc00d94853104d6a831b53b96da984e49297720dfc082793674cf3f44d0` |
| 86 | `theorem` | [reindex_refl_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/reindex-refl-refl.md) | 454 | `result-track:785d87fa8a183fc1fb61d19b5a41d9eb1b60cf4a43343477d4907f07a042b77c` |
| 87 | `theorem` | [reindex_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/reindex-symm.md) | 458 | `result-track:a9b5f8433939762fc957b33847cfc09cbccf6a146feba3b9dc2b40418da07375` |
| 88 | `theorem` | [reindex_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/reindex-trans.md) | 463 | `result-track:43e1d604deeffc6609949399b05e17f360900167c2e8f116c3700b8dd0a61e87` |
| 89 | `theorem` | [transpose_reindex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/transpose-reindex.md) | 468 | `result-track:2e201ee05a21eb4efee4235cbac768b32fc4a7b6c9722743ac5fd05597a27007` |
| 90 | `abbrev` | [subLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subleft.md) | 473 | `declaration-track:6407601ad9fe063a40f636bb960b1fd70af3914c6746ced7e658bb09092d4624` |
| 91 | `abbrev` | [subRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subright.md) | 477 | `declaration-track:d615ecbfa935e20cb1a5cccc8e5f4e80e0974f93a92f696f6406ae329fdebebe` |
| 92 | `abbrev` | [subUp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subup.md) | 481 | `declaration-track:2720810fe5d3ca9476703feded9d1303bdf0bcb6624c8bc1089a015573b11b34` |
| 93 | `abbrev` | [subDown](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subdown.md) | 485 | `declaration-track:44d1ad4ed9d9890f1a0430bffbfd532f414f1b6d38c46d4ba1841173bb3c4477` |
| 94 | `abbrev` | [subUpRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subupright.md) | 489 | `declaration-track:679db79e12a75af6fd083a407befbf31fe0b296f144ac3ebe50239206046a088` |
| 95 | `abbrev` | [subDownRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subdownright.md) | 494 | `declaration-track:a62b90b1eacfecbe0a2a4478c709e216c1748817eb6c3612610de3a73b01641e` |
| 96 | `abbrev` | [subUpLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subupleft.md) | 499 | `declaration-track:05a3e294edf918279f3f5092034b94a1967b660150cb4b8294a43db709f4ec86` |
| 97 | `abbrev` | [subDownLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/subdownleft.md) | 504 | `declaration-track:6530c61e86dc6f87057f6e84d5bd6b95fd23405d0a4a46d773dc0c4f1bf23c09` |
| 98 | `def` | [row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/row.md) | 516 | `declaration-track:0f817ae711e98d454be7b1638e872fd3b5f587ab75f5dd0cbfdb19b59603dd30` |
| 99 | `def` | [col](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/col.md) | 525 | `declaration-track:abf0101ea1f9efe85f8bbac1dee6293f1e7bd175f129f55cad4fcae823a992e1` |
| 100 | `lemma` | [row_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/row-eq-self.md) | 527 | `result-track:0eb4544cee54dbc4d01ff98d4233410946fc15755668cc9d06d36028f048c34c` |
| 101 | `lemma` | [col_eq_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/col-eq-transpose.md) | 529 | `result-track:5dec0f6afe03b1749f9c8d2290b08236a06cf363b201e75042ba96def7bce20e` |
| 102 | `lemma` | [of_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/of-row.md) | 532 | `result-track:5a0a9054db655c2449b0a7ca1a3de78a05f2f9c9dd47dca8a4002f2b1e29fbe6` |
| 103 | `lemma` | [of_col](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/of-col.md) | 535 | `result-track:14af9c596c499da78269d77811a32f82a88f1315d0ca77d060fdd0edaa4c2851` |
| 104 | `lemma` | [row_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/row-def.md) | 537 | `result-track:44803c4800b27e0fba752a83873c3482748cfeb9d8a451d8be98696f9cde4884` |
| 105 | `lemma` | [col_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/col-def.md) | 539 | `result-track:78277225f83d47b6659aba50a741f17e646803f52021afdaf8273442a468efde` |
| 106 | `lemma` | [row_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/row-apply.md) | 542 | `result-track:222dead19e9825515bdfe8ab717ac367e0fc693083d1f704697120f8ae7fc2c8` |
| 107 | `lemma` | [row_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/row-apply-source-edition-2.md) | 545 | `result-track:acb4b0aac506654e56c1299cdcd21a0aaca0a06bde345bc75d1ffb4df5102be1` |
| 108 | `lemma` | [col_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/col-apply-source-edition-2.md) | 548 | `result-track:e382501e3878806e701a6ed8cefeb7f8e9f1dd77e77380b3bb88e20046c517cb` |
| 109 | `lemma` | [col_apply'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/col-apply.md) | 551 | `result-track:2b5ee429f3101e1274d41bb1ec128b1065e7f0fc78590eeadb3f83eb381923c6` |
| 110 | `lemma` | [row_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/row-submatrix.md) | 553 | `result-track:7fea2ebb5c41bb0163526d63d669638a74cc190130e5f4482f146ab658b8d431` |
| 111 | `lemma` | [row_submatrix_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/row-submatrix-eq-comp.md) | 556 | `result-track:ad31a9b61ce4e69107a7e280a82847eec0043d0d5301971c70cc98520221f3a3` |
| 112 | `lemma` | [col_submatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/col-submatrix.md) | 559 | `result-track:0ee69028b23d7ea853b7e05479a4b73dd9fb732bfa2d08038dd1f6ec15f2ab1d` |
| 113 | `lemma` | [col_submatrix_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/col-submatrix-eq-comp.md) | 562 | `result-track:8e7e77e79b3fd771156cc4550e8ecb6cfdc236302d96b07046b8febba071cfb5` |
| 114 | `lemma` | [row_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/row-map.md) | 565 | `result-track:53617f86edd3c0ecea41b54374774a70832c0f56e494ab7ca1213ac974528a8d` |
| 115 | `lemma` | [col_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/col-map.md) | 567 | `result-track:fc8f1e7c5d5fbd822342677ffc236d5b9476b9ea98a3f123e4c988ce349703d4` |
| 116 | `lemma` | [row_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/row-transpose.md) | 570 | `result-track:32b498400cd8893b34016ee7e51a9f4818281149f5c0f2f0fc7c68081d136d4c` |
| 117 | `lemma` | [col_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DataMatrixDefsNamespaced.lean/declarations/col-transpose.md) | 573 | `result-track:7b8810ea328b0ec04e58f912f0aedc89057b9b1a9babf2339767092f5fec2524` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db29ff01a4fd9fafacc47b96f942e5a5c8c14798cd31e1299cf4ae7b08140d35 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variantb67b9d40d54689ebd2a746d38e3afc6ab82d2bf8f3a54e03ff7368a965614538.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variantb67b9d40d54689ebd2a746d38e3afc6ab82d2bf8f3a54e03ff7368a965614538.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
