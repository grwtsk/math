# Verification target: Root System Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79b905234680e7f6790acea5f7dc2daa254cb57f",
  "lexical_observation_count": 78,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79b905234680e7f6790acea5f7dc2daa254cb57f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.RootSystem.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Hom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/hom.md) | 58 | `declaration-track:ad6d4f76cff211913281595099baf14f17d68f511c0e77dea758748dc0c6accb` |
| 2 | `lemma` | [weight_coweight_transpose_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weight-coweight-transpose-apply.md) | 73 | `result-track:8ea384c613f9d057b42ffdbbd7950020bb61fec4db5c75a69ed0d807d2bcacdd` |
| 3 | `lemma` | [root_weightMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/root-weightmap-apply.md) | 79 | `result-track:e30dae40c6486923821873e8f538dee3116034d2f08bde368cf31c0e05e137d1` |
| 4 | `lemma` | [coroot_coweightMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coroot-coweightmap-apply.md) | 85 | `result-track:bd529d065c8c72c30cafc004f6b47d10812af51704960edc19381388196a3bb6` |
| 5 | `def` | [id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/id.md) | 93 | `declaration-track:239f8270de686716e0f1155a84bea48a3fbcab21098c18bff78d1bb2145d30b1` |
| 6 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/comp.md) | 103 | `declaration-track:64ee2b7b915cce18622fd5baa0bd30e31e66b99c69427c0315cd29cf8686ef00` |
| 7 | `lemma` | [id_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/id-comp-source-edition-2.md) | 126 | `result-track:7dd199e663fdeb38f8977a6a79e613bfdf07b5eacecd2425ee9cdd10d3dfa1f0` |
| 8 | `lemma` | [comp_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/comp-id.md) | 133 | `result-track:1a51cdd4f4b6bc4d121df390ae980096946513f26b0613c6eade87e032a726a1` |
| 9 | `lemma` | [comp_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/comp-assoc-source-edition-2.md) | 140 | `result-track:9a5af601f3bfd27dc6a3ffe9ca89cc15362a1e800007bb42625a7a12894343df` |
| 10 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/instance-source-edition-4.md) | 149 | `declaration-track:381fe11f6ee03561c78b5018668d7839ef5639dbdfa61af3896ecb50afaf0818` |
| 11 | `lemma` | [weightMap_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightmap-one.md) | 157 | `result-track:7ad6c6e62453b6b26b278b4fcff0318c39eb16f3ee9b07d07764c07408858efe` |
| 12 | `lemma` | [coweightMap_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightmap-one.md) | 162 | `result-track:743b5f4ad9f4c056cadf114b36ba7a799831e1204445a5e1f9f714b6883685e4` |
| 13 | `lemma` | [indexEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/indexequiv-one.md) | 167 | `result-track:0e09f37a5e414c73d07de42e53df74672998f531641781466eca52d4c4dc6da9` |
| 14 | `lemma` | [weightMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightmap-mul.md) | 172 | `result-track:4d768ee0758662db6e7b4c840351dea28baaa2835efbe129d7723669025a7fb9` |
| 15 | `lemma` | [coweightMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightmap-mul.md) | 177 | `result-track:8e5d470ddeae587438733ac5f96c133a3d6bfa33e4bbe7e2db0b86b2b2c1a83d` |
| 16 | `lemma` | [indexEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/indexequiv-mul.md) | 182 | `result-track:5f9587cb21e259542cb2ce16b1e5a85b9bcda4de918d1fc642a504efd5da4792` |
| 17 | `abbrev` | [_root_.RootPairing.End](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/root-rootpairing-end.md) | 187 | `declaration-track:5efab056e2f1f90e43c941b1f4b8c593773e9b7390f18ed682e08a0d221debf6` |
| 18 | `def` | [weightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weighthom-source-edition-2.md) | 190 | `declaration-track:be2eaea4ad02d29187c0c17d5ebb13db416939033c829742aaaf2b5ed2d957a7` |
| 19 | `lemma` | [weightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weighthom-injective-source-edition-2.md) | 195 | `result-track:1f3c6d787fb2caa256fa5411736d0f045ae1944cbbc8bdb1a051d2406f2bdd9b` |
| 20 | `def` | [coweightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweighthom.md) | 207 | `declaration-track:0aa09c6ac7bf273aafa71d133b392032c0f0e6df27d958aff72a44ab402e4433` |
| 21 | `lemma` | [coweightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweighthom-injective-source-edition-2.md) | 214 | `result-track:b1aa16f6f1e7ac9409a781233468b5d9a728cef413bd0569a67007fd93984dde` |
| 22 | `def` | [indexHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/indexhom-source-edition-2.md) | 239 | `declaration-track:ae24d4ad4f01cdefbd72c7dff0828ed81e5096e75d0aca2bd80c87460e02abff` |
| 23 | `structure` | [Equiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/equiv.md) | 255 | `declaration-track:263b13f2c688d244aee86500b06d4ebb39345e963f34466027574ac1f4ad4267` |
| 24 | `def` | [weightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightequiv.md) | 267 | `declaration-track:b2f2af38593510180b4da767710dfc15d44c77b3d240a8c3d10ef68c9ab2e0ac` |
| 25 | `lemma` | [weightEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightequiv-apply.md) | 271 | `result-track:fa51d21ba340d469c8b2d7bba72e5742665194f3130b00758572f7f06a91334d` |
| 26 | `lemma` | [weightEquiv_symm_weightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightequiv-symm-weightmap.md) | 276 | `result-track:a2730d3322e6600e925e895aee994e58aa133535ddc6ef46a213733c42473f4e` |
| 27 | `lemma` | [weightMap_weightEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightmap-weightequiv-symm.md) | 281 | `result-track:b67890fd89e7c77662cafde4ec253d691e19ef04d4e9f53eea0d4ca344dcd7c1` |
| 28 | `def` | [coweightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightequiv.md) | 287 | `declaration-track:5f81b4996dea4938064bc56a45d3c437a182408808addf41d5b882e964d32fbf` |
| 29 | `lemma` | [coweightEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightequiv-apply.md) | 291 | `result-track:9b4bcafb1a771c6bf995d4c9458132d992c2f337697ab07f2a7a436f73e155af` |
| 30 | `lemma` | [coweightEquiv_symm_coweightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightequiv-symm-coweightmap.md) | 296 | `result-track:1eaea8e86281a7fd84544cf8a3e5e65470ed90c4d7c67648e64fccc2ebce0f0f` |
| 31 | `lemma` | [coweightMap_coweightEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightmap-coweightequiv-symm.md) | 301 | `result-track:d677ff3d6678fd449d0694b0712482b0a3ac8a77eb6c02327c42364dcefbd2ae` |
| 32 | `def` | [id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/id-source-edition-2.md) | 308 | `declaration-track:a3f6d824a5efa515d90ad3dafb580f6e6758807a3b2b3831ef413cca93c41520` |
| 33 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/comp-source-edition-2.md) | 315 | `declaration-track:91b1c4cfda912e578dd3777eed7983c1dfe95d8f0f1d27e249f3185e9fbe2d42` |
| 34 | `lemma` | [toHom_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/tohom-comp.md) | 328 | `result-track:1e3eb206bd07c2b83f73e4892b806cd77e6389ba8d0327a7767816aa0d02179c` |
| 35 | `lemma` | [id_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/id-comp.md) | 336 | `result-track:6a850c3d3c099a8ae5b6fbab58cbc4e2ecd263e7552e145c3abc4e6ec9d3248f` |
| 36 | `lemma` | [comp_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/comp-id-source-edition-2.md) | 343 | `result-track:a02e864fdb3d582544d7270d49a7dbcb5db65d4d269d23dbbb269d04310cbad1` |
| 37 | `lemma` | [comp_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/comp-assoc.md) | 350 | `result-track:6f19b9f616ce8128025bc1054e6e7e669486c6505b44175ab6db4e4da11c900e` |
| 38 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/instance-source-edition-6.md) | 359 | `declaration-track:516c252f17dfccd93f94f82fc44433070593c9096c4ffd0dd39ee1d3170b928d` |
| 39 | `lemma` | [weightEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightequiv-one.md) | 367 | `result-track:98a922a965477ab960dea7f667d8da9814a45953b02abfd319bfa6abfc0c2a57` |
| 40 | `lemma` | [coweightEquiv_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightequiv-one.md) | 372 | `result-track:a3fed93bcef22ef8548e6213a047f82a185f286e3991f8efcd905c6a7e319570` |
| 41 | `lemma` | [toHom_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/tohom-one.md) | 377 | `result-track:056d7107f248ff74b6451c674ef48379d57c5b9c73dcbc0085651b359fa1deea` |
| 42 | `lemma` | [mul_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/mul-eq-comp.md) | 382 | `result-track:a664f16496e594637c189cca9deb41eadb664b41464e8d86b705ff53041f0845` |
| 43 | `lemma` | [weightEquiv_comp_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightequiv-comp-tolin.md) | 387 | `result-track:c6ea94627dbc7066e6639759286a8c4b96264b36e49d02eef178bef6adc6a163` |
| 44 | `lemma` | [weightEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightequiv-mul.md) | 392 | `result-track:dc48addf722d34175fc0d7872d71e2349d8ba5b53491660fb596a935a5349d97` |
| 45 | `lemma` | [coweightEquiv_comp_toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightequiv-comp-tolin.md) | 397 | `result-track:a79ee0e1f0c59d5d50d904589ae7451d91058bc4cf77f897fd2d7d9d7bac3efa` |
| 46 | `lemma` | [coweightEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightequiv-mul.md) | 402 | `result-track:bff4ff92bd2c8d9b31979594897f0545a80284065c6f0832ec1618d5bc7cef58` |
| 47 | `def` | [symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/symm.md) | 407 | `declaration-track:da5d7ab5a6f40319214b7be78381d57d5b17582e8ada17120f73d91bfa457131` |
| 48 | `lemma` | [inv_weightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/inv-weightmap.md) | 446 | `result-track:1b7e70b074bfc19eb943e4241ba6ecd349636800c9afb519f105cb871ef360c1` |
| 49 | `lemma` | [inv_coweightMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/inv-coweightmap.md) | 452 | `result-track:c9c568fcfbf079da5d3d1300952eb1a3f94c351e94c12658661b3b3adde4973c` |
| 50 | `lemma` | [inv_indexEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/inv-indexequiv.md) | 458 | `result-track:d3738d619473c5a3f8fac8cc4374678511bab644eed0ae1f020fe37913bde2b5` |
| 51 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/instance-source-edition-2.md) | 464 | `declaration-track:19b20f3fe3a01405bf9a30ad3d4e9e8315a2cfdd333852098ba551839ff83eee` |
| 52 | `abbrev` | [Aut](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/aut.md) | 482 | `declaration-track:7609d280760f428edad866a0be97bab733ad44af8c8b1d4f61721d01d24cf6a6` |
| 53 | `def` | [toEndUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/toendunit.md) | 488 | `declaration-track:20751523253bd58b93d66a3d9ab2a2c7327940ceebff75c0eb943ee7bce3f3e0` |
| 54 | `lemma` | [toEndUnit_val](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/toendunit-val.md) | 522 | `result-track:ee6c5fc10f5b0e01524048872655ff39ca0f0f0034de2ca7faf824a319936eca` |
| 55 | `lemma` | [toEndUnit_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/toendunit-inv.md) | 525 | `result-track:51d7b08f6e356bf4fa015e2b2d1a84dbd563bccbc9995f774dadfb269f0398ae` |
| 56 | `def` | [weightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weighthom.md) | 531 | `declaration-track:6b2aed07f6c89b8361514b1ac3f7b8bae10e51d19d283ad8243a23f3d80c6258` |
| 57 | `lemma` | [weightHom_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weighthom-tolinearmap.md) | 536 | `result-track:0198e75e3cc42822f9d826746ba186832fc37791d0f982e21679321ab3bfc8ab` |
| 58 | `lemma` | [weightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weighthom-injective.md) | 540 | `result-track:0ff894320b60ca7592fe861219fe607384d6b16ab36d40630b601301af140fff` |
| 59 | `lemma` | [weightEquiv_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/weightequiv-inv.md) | 549 | `result-track:12a0677427b5ac4821a888861024f09ccec8fb04de36ca22bbf0f5302f850e9e` |
| 60 | `def` | [coweightHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweighthom-source-edition-2.md) | 555 | `declaration-track:31b0f8e02760ab06fa18e8eaa6964cd5f87dc07fcf81326f217f84bd3175b75c` |
| 61 | `lemma` | [coweightHom_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweighthom-tolinearmap.md) | 564 | `result-track:4475908740ece351ec03571858b08e01fac8e3df395e2a259621abb517c6ffea` |
| 62 | `lemma` | [coweightHom_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweighthom-injective.md) | 569 | `result-track:542c26070c07da835762eb8260b712277a95c1979ebf603e2ff8bb229a9840dc` |
| 63 | `lemma` | [coweightHom_op](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweighthom-op.md) | 580 | `result-track:9e8676dec0ce8f6b7fc0a84242c9dce70ca755afaf7c8db392aefcbcef26b74d` |
| 64 | `lemma` | [coweightEquiv_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/coweightequiv-inv.md) | 585 | `result-track:f6cf9bca17a3df2b723edf78b31b100a189b4703cefaac5949e28e598980c53a` |
| 65 | `def` | [indexHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/indexhom.md) | 591 | `declaration-track:2ad3900a33fcc5bd9bb2e2feb4109c6a7668e17a6dad9f75b9d0392d444a8b78` |
| 66 | `lemma` | [indexEquiv_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/indexequiv-inv.md) | 597 | `result-track:fc8d55c9ccc674323e792f75bbcd10605bc38185922e0cce933c322f0daf5ea5` |
| 67 | `def` | [reflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/reflection.md) | 602 | `declaration-track:8f9c33c8e200e66e273c0bef8e031937271e8ddd945de9bd8a7a04eecb253c63` |
| 68 | `lemma` | [reflection_weightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/reflection-weightequiv.md) | 625 | `result-track:5498dbb78574fc3ac5922838eb03a5896acd3d866170aff892fff843e436c070` |
| 69 | `lemma` | [reflection_coweightEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/reflection-coweightequiv.md) | 630 | `result-track:22e8a4b8085ff285de101a0ced83b5052f3ae05da98cd0981e344eb544780da7` |
| 70 | `lemma` | [reflection_indexEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/reflection-indexequiv.md) | 635 | `result-track:0c0b4198cfdde79bb2de2a01e1e3dfee04b2a8431d9e46484dc48be64ae2b1d4` |
| 71 | `lemma` | [reflection_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/reflection-inv.md) | 640 | `result-track:a787385fca1389dfd1704dbb47fa8db372e52bc0e6f9515724257d3f77a5ad3e` |
| 72 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/instance-source-edition-5.md) | 647 | `declaration-track:3f5cc678bef10e76878feafa2016e9b62b86bb281b0d0dfc05274785e24c93dd` |
| 73 | `lemma` | [reflection_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/reflection-smul.md) | 654 | `result-track:7f52fa68d3a7db971c4a8ccd067d62e602c07d3bddeb968b7cd222b0ced0fb31` |
| 74 | `lemma` | [root_indexEquiv_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/root-indexequiv-eq-smul.md) | 656 | `result-track:9b0d94de062cc7a5b711cc8b3b54915cc05d61b688745349fb13d257037e4a0f` |
| 75 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/instance-source-edition-8.md) | 661 | `declaration-track:cc33acbafcc3218a3e6fa5b2186c4ded65d47a5dec9fe2f07062f45f67e4f16c` |
| 76 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/instance.md) | 670 | `declaration-track:0b0e85b4b382df8b6e49ea60a3b22a177e259df2a82e8b6af6c55329b2bed39c` |
| 77 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/instance-source-edition-3.md) | 674 | `declaration-track:1fdfdaa6a9307c9f5b7123d94fc40e69485ee4633d61bcdc2f5101dd13674689` |
| 78 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RootSystemHom.lean/declarations/instance-source-edition-7.md) | 679 | `declaration-track:8164c2a6fc057689752bcb6a05670c48519f6a03b0d7936c0c1dce26790226ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fec4e85b85cfd9d1d5dc3ab3f9d998c4be9948ed7442a9353f13d6f80fd8f2de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Hom/Variant420dafdfe1f6ca339fff3301cb7f1b4af918bf151842bfda6121218515f9e7ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
