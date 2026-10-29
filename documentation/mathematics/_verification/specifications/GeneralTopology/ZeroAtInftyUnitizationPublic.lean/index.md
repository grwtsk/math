# Verification target: Zero At Infty Unitization Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35565494c9e3e68d00d7460cb20cfd9c6aad3e55",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35565494c9e3e68d00d7460cb20cfd9c6aad3e55`.

Source path: `GRWTSK/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean.json)

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
| 1 | `def` | [toOnePoint](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint.md) | 47 | `declaration-track:615cd6bfb3b640b46c94230a59b094db8676c869364212b9f6e1b923a8e5ecb9` |
| 2 | `lemma` | [toOnePoint_infty](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-infty.md) | 53 | `result-track:02da693e9b5c9b71dc83bb0be34bd34fc9c266d1a8261e9bbd4c436f215e0f1b` |
| 3 | `lemma` | [toOnePoint_coe](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-coe.md) | 57 | `result-track:f91451b72508f779b90a9ab78493ea8db0dc505198e5ce3b139a7ec22283263f` |
| 4 | `lemma` | [toOnePoint_injective](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-injective.md) | 60 | `result-track:2bd2574e8f19cdad338d54e63e00b46f5d3d75446d5f16553425bd84b33de725` |
| 5 | `lemma` | [toOnePoint_zero](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-zero.md) | 65 | `result-track:fb8361869ad41e9297a9dabc53832a9619d9056e16fa36b24f1102c67516cda6` |
| 6 | `lemma` | [toOnePoint_add](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-add.md) | 70 | `result-track:427b974538f27cae8214c16214441c69f6d48a95a67d92a21c8a0055119d32a7` |
| 7 | `lemma` | [toOnePoint_neg](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-neg.md) | 75 | `result-track:70ead2f321a64fc46544151fabd18360e49d060cc66d236c87cf09d47a307eb9` |
| 8 | `lemma` | [toOnePoint_sub](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-sub.md) | 80 | `result-track:440fbb5ef453859b6a42f1555caf4021895bd5c8338566dd3a590bcd47eb063c` |
| 9 | `lemma` | [toOnePoint_mul](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-mul.md) | 85 | `result-track:1e7be67ce4fe918342ec0520e86cce9b9fe0fe84fd053926c5e40c415245bc5f` |
| 10 | `lemma` | [toOnePoint_smul](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-smul.md) | 90 | `result-track:7b72ec536b52262c369f1b72b7a8385fdaf05cb2536ac6f62e56dffcd5312f2e` |
| 11 | `lemma` | [toOnePoint_star](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepoint-star.md) | 96 | `result-track:fbeaf6ab2b63a667e1aa4757279edaf6c57ba078bc21c351ecf22997cd9db913` |
| 12 | `def` | [toOnePointAddMonoidHom](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepointaddmonoidhom.md) | 104 | `declaration-track:cbb2ca531ff4fff197678e4861297e00a9c952a409535c9adb2290330a92e742` |
| 13 | `def` | [toOnePointLinearMap](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepointlinearmap.md) | 112 | `declaration-track:eefceea1fb416f70f513d37a030abdee15d706a2e457dffa7761246f23284b44` |
| 14 | `lemma` | [toAddMonoidHom_toOnePointLinearMap](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toaddmonoidhom-toonepointlinearmap.md) | 119 | `result-track:b4fcd8390f82fc0d2f97e6fadb028fe92c571565f982cfa9d7856e5ee1c9af8c` |
| 15 | `def` | [toOnePointNonUnitalRingHom](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepointnonunitalringhom.md) | 125 | `declaration-track:55ce950d46c85fdd9d15af136a1151f12c74899680b1d0b153bc89a7c970ad9d` |
| 16 | `lemma` | [toAddMonoidHom_toOnePointNonUnitalRingHom](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toaddmonoidhom-toonepointnonunitalringhom.md) | 132 | `result-track:7938466f87651054ffe2153d44b059865fc10a32b7034bd991b5e7235fb10afe` |
| 17 | `def` | [toOnePointNonUnitalAlgHom](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepointnonunitalalghom.md) | 138 | `declaration-track:cb39e784446a8cdcb5f0c18437fed0c7c55fa52a4e0bfcbf4a97d3ac5ca2dee5` |
| 18 | `def` | [toOnePointNonUnitalStarAlgHom](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toonepointnonunitalstaralghom.md) | 146 | `declaration-track:fe20e36f9dead2fe7f36699a9d01f4677bbe35f6926511554262e8274aac4aef` |
| 19 | `lemma` | [toNonUnitalAlgHom_toOnePointNonUnitalStarAlgHom](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tononunitalalghom-toonepointnonunitalstaralghom.md) | 154 | `result-track:68d1051d29c533e9dc38ee490c5d7722ea9c6b2de7695491ad1de03acb358193` |
| 20 | `def` | [toZeroAtInfty](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinfty.md) | 168 | `declaration-track:b304b8858239e50ca60857083191c5c15d393e42f8e777f02f3cbae523b6bb95` |
| 21 | `lemma` | [toZeroAtInfty_apply](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinfty-apply.md) | 174 | `result-track:df7484f7d74c114b418ebab37d33458e3cd37a49e883c42e33b9d983f9e77dd8` |
| 22 | `lemma` | [toZeroAtInfty_const](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinfty-const.md) | 177 | `result-track:14327caa7b3acba55ec0237db260c26bfd6c70f9a9ec8902ef5210f1122c7aa2` |
| 23 | `lemma` | [toZeroAtInfty_zero](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinfty-zero.md) | 180 | `result-track:52bc9352b29b8cee245628707a263092a84627219a27244bc071fc9ec67c71a0` |
| 24 | `lemma` | [toZeroAtInfty_add](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinfty-add.md) | 183 | `result-track:8afe797d038dae1f27e64a3afe9944091c8f692af62cea36cef79e3f503e3800` |
| 25 | `lemma` | [toZeroAtInfty_neg](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinfty-neg.md) | 188 | `result-track:d7655cf4d7c4208ff920a667699aca2d8dac65ff71eab5a9df2d64bb53760e34` |
| 26 | `lemma` | [toZeroAtInfty_sub](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinfty-sub.md) | 193 | `result-track:1170d9ab898ecbf3791ee1d8a19bf1fd75c0394f374451757d5483cc477b9d0b` |
| 27 | `lemma` | [toZeroAtInfty_smul](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinfty-smul.md) | 198 | `result-track:9d5f82cec65a9619862a54f780de6bc5e0d17042ace1d24b71289cf405015477` |
| 28 | `lemma` | [toZeroAtInfty_star](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinfty-star.md) | 204 | `result-track:eff8e08426e747539521c8496efb0f8a742cd0d5989d0a82784f7b53abe5e65f` |
| 29 | `def` | [toZeroAtInftyAddMonoidHom](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinftyaddmonoidhom.md) | 212 | `declaration-track:87745963d7d9f4f90e6780bf68aaa2f3eb09a448568db3597c79c97427d36a75` |
| 30 | `def` | [toZeroAtInftyLinearMap](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tozeroatinftylinearmap.md) | 219 | `declaration-track:a498ab55f7138e49d7461fe0d67e0d848f4b309dc3f1787e319a2ee8ece18531` |
| 31 | `lemma` | [toAddMonoidHom_toZeroAtInftyLinearMap](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toaddmonoidhom-tozeroatinftylinearmap.md) | 226 | `result-track:b6a897946554c007b3dad457d4156e25a51a736c7b0cff44d566637e9e0ad127` |
| 32 | `def` | [unitizationEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv.md) | 249 | `declaration-track:ae752b5e873601bb0f512354b92cb8710c0193438b40a16ee77234fb3c8d9598` |
| 33 | `lemma` | [unitizationEquiv_apply](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-apply.md) | 255 | `result-track:4a9fe927bef64430a03537cad5fe321d8b156a6179ae24eb906ca783cd1846cf` |
| 34 | `lemma` | [unitizationEquiv_symm_apply](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-symm-apply.md) | 258 | `result-track:47bef0a5d9bba9740f32cc579c702595f02677ab60a151cce0ab37749fda34bc` |
| 35 | `lemma` | [unitizationEquiv_apply_infty](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-apply-infty.md) | 262 | `result-track:316206841f45c377283a6da9924239ebd779a67753885e99f7725c8eedc67be0` |
| 36 | `lemma` | [unitizationEquiv_apply_coe](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-apply-coe.md) | 267 | `result-track:e67199866b48346f23369266c88bc21df78dfbda47a3ca23d5ccc74605c3dfc5` |
| 37 | `lemma` | [unitizationEquiv_inl](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-inl.md) | 272 | `result-track:01ae173ad25c2e043e316bdf358d9911930266fe757178df8b621f65f245a9e3` |
| 38 | `lemma` | [unitizationEquiv_inr](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-inr.md) | 276 | `result-track:1c36168bc9561740eae4bb54d2c6b1b6d54db9b4c76d5c93fbed4c3f93669f7a` |
| 39 | `lemma` | [unitizationEquiv_zero](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-zero.md) | 280 | `result-track:689bf31093d5d60b62af468bc08e45230aa4593d4e39167d7af6b3ea0dbdab58` |
| 40 | `lemma` | [unitizationEquiv_add](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-add.md) | 284 | `result-track:7c59c59165c3ad1e746f9f2937328179059d66e510dc7cb1894613f0d3d32585` |
| 41 | `lemma` | [unitizationEquiv_neg](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-neg.md) | 289 | `result-track:c96c2962916eb0f302223ed9fc7b1c0aad11d038c941193dbfe3d88a27b032c4` |
| 42 | `lemma` | [unitizationEquiv_sub](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-sub.md) | 294 | `result-track:61225d8d5570e8ad4ff72ea7167b268e4750e8509ecea454bb81f1461abcb8ad` |
| 43 | `lemma` | [unitizationEquiv_star](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-star.md) | 299 | `result-track:b74d5fdf2d5602413fa0540ebe6bc7a6833f48a1dc4503acfe88cd57bf2d7cbb` |
| 44 | `def` | [unitizationAddEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationaddequiv.md) | 305 | `declaration-track:4c393099d4bd911634878d9447f7a8803dab760fbf4c3c07e643bd5998fe9cb6` |
| 45 | `lemma` | [coe_unitizationAddEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationaddequiv.md) | 310 | `result-track:7382695102a909d2772f1ce6d717ee3170394695efb18f3dc7db6830254d4218` |
| 46 | `lemma` | [coe_unitizationAddEquiv_symm](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationaddequiv-symm.md) | 313 | `result-track:75ee1606568f8a7c211ec5aeee4f35e8a00973ffc46dc2dccf148aa9d9ab402b` |
| 47 | `lemma` | [toEquiv_unitizationAddEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toequiv-unitizationaddequiv.md) | 317 | `result-track:250063007d53e68b1a7e70166d2e9e30276a659f290bd7b116e07a35c84b9b4a` |
| 48 | `lemma` | [unitizationEquiv_smul](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-smul.md) | 322 | `result-track:cf055958bebcba8ffd085fd07e27591683c7a5ad1bbbf01ec674f7586e9c2af7` |
| 49 | `def` | [unitizationLinearEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationlinearequiv.md) | 328 | `declaration-track:dab1f777d33820a379ea8a2c360702fe537ee74ab6a278f6d7d39f844fa97acc` |
| 50 | `lemma` | [coe_unitizationLinearEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationlinearequiv.md) | 333 | `result-track:f60fb2fb179d6184142173a3384eee52334f2d0f701c7b61d6823cbf0aaeb698` |
| 51 | `lemma` | [coe_unitizationLinearEquiv_symm](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationlinearequiv-symm.md) | 336 | `result-track:e8cf66c77cd91f4c75a8e4bb1312a7576ef0b75d18f1d973bf4a5ac1455c5271` |
| 52 | `lemma` | [toAddEquiv_unitizationLinearEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toaddequiv-unitizationlinearequiv.md) | 341 | `result-track:ca92f57485f20593014f21ebca2519d3171157c0474ffe409c211c48195600cf` |
| 53 | `lemma` | [unitizationEquiv_one](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-one.md) | 352 | `result-track:7734195e1ed12bb26dcf2b53475cadf3e2cd764ce34c7dccc430fb720a39fc21` |
| 54 | `lemma` | [unitizationEquiv_mul](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-mul.md) | 356 | `result-track:0278a7429e2ed82f136f9f85d54288e4642ef5a8db9274051751b96dc41fc307` |
| 55 | `def` | [unitizationRingEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationringequiv.md) | 362 | `declaration-track:83a605e9d56c6127e23fe9618aade71384e41e665a2214ce6903a626d78136a5` |
| 56 | `lemma` | [coe_unitizationRingEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationringequiv.md) | 367 | `result-track:54affec10c3f62f6a9ebf70e83dbe736ca42069b6933ccd97553257a98e522a3` |
| 57 | `lemma` | [coe_unitizationRingEquiv_symm](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationringequiv-symm.md) | 370 | `result-track:c064923dfaec662d661ca0bf76bcdee310319260eacde4121725e0bc432d78e8` |
| 58 | `lemma` | [toAddEquiv_unitizationRingEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toaddequiv-unitizationringequiv.md) | 374 | `result-track:89577b26c0fb98f9131d4067b59e288feb856fcfc30b48e801de3ce5863d6e9b` |
| 59 | `lemma` | [unitizationEquiv_algebraMap](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationequiv-algebramap.md) | 380 | `result-track:13394913af9b4687d311c264972f3e619754a3e8196d77126ea8e1ea3eec33fc` |
| 60 | `def` | [unitizationAlgEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationalgequiv.md) | 386 | `declaration-track:ba3e44165efb3b3f8f91709b1335aa5affd21b05dd29f9d34656cbeacdbff6a8` |
| 61 | `lemma` | [coe_unitizationAlgEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationalgequiv.md) | 391 | `result-track:e03a8e6bde20cbaa9139dc91975b740ae698fc50f45127c896d7471a9ef8b0eb` |
| 62 | `lemma` | [coe_unitizationAlgEquiv_symm](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationalgequiv-symm.md) | 394 | `result-track:c6cd67bb0cd9e07a3b5fc37f7feb72a28868feb0d78da5f59298cc2db48e9337` |
| 63 | `lemma` | [toRingEquiv_unitizationAlgEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toringequiv-unitizationalgequiv.md) | 399 | `result-track:c53ca64edbc6b7f43065e8ae51742106003354b0c1e12650af69a93dfd3e35e8` |
| 64 | `lemma` | [toLinearEquiv_unitizationAlgEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/tolinearequiv-unitizationalgequiv.md) | 404 | `result-track:1bd0fc0736b11bf25e9783770adc0b33d21fe820ca4f5c683b3c1b9018368788` |
| 65 | `def` | [unitizationStarAlgEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/unitizationstaralgequiv.md) | 412 | `declaration-track:aa270a0e7f7d9744b0dc281a9c466b0e57b551b9c6213642a95876eece448ef1` |
| 66 | `lemma` | [coe_unitizationStarAlgEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationstaralgequiv.md) | 418 | `result-track:829980564024b19a2f3551e063c7cf316c94386ef1373f760af76d061a77fdc0` |
| 67 | `lemma` | [coe_unitizationStarAlgEquiv_symm](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-unitizationstaralgequiv-symm.md) | 421 | `result-track:0b60113c555415d8ebdf510a30a5d2a58c606363522b7891381c6385cc17806d` |
| 68 | `lemma` | [toAlgEquiv_unitizationStarAlgEquiv](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/toalgequiv-unitizationstaralgequiv.md) | 425 | `result-track:449a2cc25b24d3b1270b704c198b17115fe1a0f69d18afcbd503f507b02adee1` |
| 69 | `lemma` | [coe_starLift_toOnePointNonUnitalStarAlgHom](../../../../GeneralTopology/ZeroAtInftyUnitizationPublic.lean/declarations/coe-starlift-toonepointnonunitalstaralghom.md) | 431 | `result-track:46c79a3c403324433d4763fea8aa2ea743095b767fd4211baf34a9a7a043a1d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb4d70bcd826abcb57141a9c8eafd0429cbbd2d10e3f4d245b1955ffd919ef2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ZeroAtInftyUnitization/Variant39e7780ffcda88fe08f894ac737466b4ff1de1783f42f462a86871ec64f1a8db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
