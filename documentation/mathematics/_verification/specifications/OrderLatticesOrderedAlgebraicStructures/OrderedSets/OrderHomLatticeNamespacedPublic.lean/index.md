# Verification target: Order Hom Lattice Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5722271425eaa0b46f4241ecf7907e1da408c21b",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantddce6deb3e1d253f5e4cb2f4866ea24778a2958a3b63c23fe185bcd90a5a0244.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5722271425eaa0b46f4241ecf7907e1da408c21b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantddce6deb3e1d253f5e4cb2f4866ea24778a2958a3b63c23fe185bcd90a5a0244.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantddce6deb3e1d253f5e4cb2f4866ea24778a2958a3b63c23fe185bcd90a5a0244.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SupHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/suphom.md) | 48 | `declaration-track:e6240b8517c68160aa240beb3cef55a310aadae92ef0a868ef1391503d31310f` |
| 2 | `structure` | [InfHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/infhom.md) | 61 | `declaration-track:90abb22d6930900351502ced1127ae7e22d209b338b4b1ed53a588407dbd34a7` |
| 3 | `structure` | [LatticeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/latticehom.md) | 73 | `declaration-track:4d4690576d7753040260148af1d8a7dd7be991e7d338a131ba4c8e00e2f780ce` |
| 4 | `class` | [SupHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/suphomclass.md) | 84 | `declaration-track:5dd26af0c535952d5671ab1a4f22e0d805fa906e9452c305ed39cbd53e04f6cb` |
| 5 | `class` | [InfHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/infhomclass.md) | 92 | `declaration-track:23cf5c6b01e8901c45148b0f004e3211ed64566851aef755e724497b768ff085` |
| 6 | `class` | [LatticeHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/latticehomclass.md) | 99 | `declaration-track:9d8e95d8e8444ecfa39a97e444570198cc883c717317ac551438f2a5a1780308` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 118 | `declaration-track:b2412fd5a2ad4996868266e4f2d1e3fe6c31bba49f58ff47a6c7a5c692553d8d` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 130 | `declaration-track:a8cd6bc0cc17c7bd514c43ac4612e33f752d32979b9c1895f8bc0e0b66dafa39` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 136 | `declaration-track:f77654cac9fab1945f4088b4164e528606b70e69624eddabe0284795173df989` |
| 10 | `def` | [orderEmbeddingOfInjective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/orderembeddingofinjective.md) | 147 | `declaration-track:71aaeeb07cff1c893c5c401f31ec283c9dee1e260ada4cb4fc056971b7170903` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 158 | `declaration-track:e54c7b39a74c29a7e746ba57f407d29eac7268972ac39fa43b99c25f76f6a769` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 161 | `declaration-track:0e707ef80e8afe631ce9d8b54ad1863a7d09d85da6414f2d6952af8989c34f7c` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 178 | `declaration-track:641e67bd20b398c7bb80d93acf309426ce634a5c52789a7c88d1af518bf01c82` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 183 | `declaration-track:bf6d50e00db8c1236cf2d6bb31afd78e4afa9fa87f74640b6d2d34c793ef0966` |
| 15 | `lemma` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/tofun-eq-coe-source-edition-2.md) | 186 | `result-track:96dd2688efcee89f4e18a2eca87c5be353e4282199c6960bd33fb14a3d906177` |
| 16 | `lemma` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-mk.md) | 189 | `result-track:b9a8e32c7ef4c2e9f8364b989a844c3e4751da94c4086f932d8af2f893bb9af7` |
| 17 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 192 | `result-track:9e6c985a609889a7f035c79a07045438a8d54ac519a5c5a9e8afa1b05dc4d5fa` |
| 18 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/copy.md) | 200 | `declaration-track:2eb771e42331e44da2a0a116416b943debfe493b3dbf4a108f5724e555437e5e` |
| 19 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-copy-source-edition-2.md) | 205 | `result-track:cbfe19e3abb64ab04de8aa44ccb6b453583b71ba05a06186adb85ff0b9ce1943` |
| 20 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/copy-eq-source-edition-2.md) | 209 | `result-track:efa10e0d70b75f86ec4140ad640d7433e149595ae73bc43b0eab14da3f1e0677` |
| 21 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/id.md) | 216 | `declaration-track:3019a90be0e290d341f525c6a21b43c2fb58131489dc76d580c6d6dadc9143a6` |
| 22 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 220 | `declaration-track:81720216e87a26604be0c56edcd8d7d9a876ab68bd829002283b807a379dcb1f` |
| 23 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-id-source-edition-2.md) | 224 | `result-track:3b4c4e997ca2c0d2c2486640c9aa053fc4f5a5bfcd8d557725455409dbb92deb` |
| 24 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/id-apply-source-edition-2.md) | 230 | `result-track:dda871b80cbceb8b9838eeaf6620411f29601af35dc7adf30e044a1c1529bab7` |
| 25 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/comp.md) | 235 | `declaration-track:139d973cab4decb706796264a1dc343a9f66b47c3ccba19b4a8212f7e541f274` |
| 26 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-comp.md) | 240 | `result-track:d5083c6ea24b8a4c3c3a429785cbdb2b9a859d71395c1d3ef76ef44fcbb2c734` |
| 27 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/comp-apply.md) | 244 | `result-track:ce98acb893dd427fb9b8480032cdf08e1f3f952c967fb355bc366debd1736c6d` |
| 28 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/comp-assoc-source-edition-2.md) | 248 | `result-track:6bef8fce5d7eb6d015d4f415475884b6e8e2c5df5279686901f09178b8641b7e` |
| 29 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/comp-id.md) | 252 | `result-track:4d06240dea0d9934465214fa6900896f4fab385ece94ec0f04b90885d6e875a9` |
| 30 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/id-comp.md) | 254 | `result-track:2911f78347517dffad3c930fd265aa81dfea236d9d9889244bae8f24aa08a967` |
| 31 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/cancel-right.md) | 257 | `result-track:077f861485d24c61787318408fe36740f5a4b0275e3418b4c1f7520c538d012d` |
| 32 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/cancel-left-source-edition-2.md) | 262 | `result-track:68cc0def61d46db0303dc9c32f3c03bfca586a35d211ffb6c90fcd2f7a640cce` |
| 33 | `def` | [const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/const.md) | 273 | `declaration-track:f76b5859754f5e0b14fa1c99962db07bcbdbde7f5935c74a287f941b74130d12` |
| 34 | `theorem` | [coe_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-const.md) | 276 | `result-track:b9f5cd2c13854db498cceead62c3c2d91ed300223c18fcc04c2b9b40c49fd17f` |
| 35 | `theorem` | [const_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/const-apply.md) | 280 | `result-track:a85fb1920d99bb531232bd334864a12e7a6b988ad984a28212b6e3e0c598f42b` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 286 | `declaration-track:c5e9b10eb702e4db982a9d930a35af86da56c784d91cc0b0d3b15acb0aa7e78e` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 293 | `declaration-track:e745a8380678e8acef942eb0f34fed5548ad900752c4ff5e5009cd0073fa41cf` |
| 38 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 297 | `declaration-track:d60f1100e3595b674a1f95204d3dd6501378cb8db3e9621914baaaf70159aee2` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 301 | `declaration-track:90d019967bf2801d797ab00c55c77cc32bbf7dceeb3a36dd1b6356e3fbae6d9a` |
| 40 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 305 | `declaration-track:920853c17a2cff4b85eb4ac19bc59e380f6c6025617593e6523b863f5c18373b` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 309 | `declaration-track:99cb06aa30ab2e3b31ffe364c05d2e6156d03f169b06ed2fad94bd13bd5f1a0c` |
| 42 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 313 | `declaration-track:6cc1309e2dc22138efb731a13ae966c86f31ff6bac75252382ceed0c91596ebe` |
| 43 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 317 | `declaration-track:90486bfcaa50903847496a58bb278b246792a8eed65e49b5440a5df67db65c2b` |
| 44 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-sup.md) | 321 | `result-track:f63ae941c771dc62350cf23d0dbd36b339f6864504d615ee01082b24cffb2662` |
| 45 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-bot.md) | 325 | `result-track:e8c4edc06ed7ced364cf1d11dbfc2309431718a53968232d3151240d9f012940` |
| 46 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-top.md) | 329 | `result-track:ebfbddd9254e54bbccf1ea0948346e168d483da393f3f321633b7bf2b0a2503c` |
| 47 | `theorem` | [sup_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/sup-apply.md) | 333 | `result-track:a2206bf0ce4a73a2cc7f559eb64854698d6eb794d51ddf0620d33078bb1ffe02` |
| 48 | `theorem` | [bot_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/bot-apply.md) | 337 | `result-track:948081d143cd9d0c21a33e83756c415e6c4a2f1f7be8056296365331ff40ca6b` |
| 49 | `theorem` | [top_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/top-apply.md) | 341 | `result-track:c5c981ea3e004b1e08e3c09c9004524d9185bae8d1415101d61983640efb5d4d` |
| 50 | `lemma` | [mk_le_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/mk-le-mk.md) | 346 | `result-track:4ff8ae817c43e71b5bd8cc0d612da25ba1321f54d37e6b4826bc4b7bb5d752fa` |
| 51 | `def` | [subtypeVal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/subtypeval.md) | 351 | `declaration-track:31dabb703170f106639adda4a83a8a6e97baff3c3bf2aab261d2f7c79fe68ff3` |
| 52 | `lemma` | [subtypeVal_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/subtypeval-apply-source-edition-2.md) | 359 | `result-track:915e1d5298d3557d52b9ae12aade3146a508850ef440e2b4164edab045d6f8b2` |
| 53 | `lemma` | [subtypeVal_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/subtypeval-coe-source-edition-2.md) | 364 | `result-track:48cdf109217df4d2b0c3954705a7e0bd9d0937059dd1a53d5d1d5745ae5e555e` |
| 54 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 378 | `declaration-track:219a6456822251367933fd908250c1d6591391ed71f8a51b0240850e38478d6f` |
| 55 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 382 | `declaration-track:163ebedb0189876214eb7480ace03e997032bc131a06723a652dce3af208f22b` |
| 56 | `lemma` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 386 | `result-track:27a5f5aa9980cb8a82ff8987efdafb0f6ea7a123f195f5199d5bb7391a88edad` |
| 57 | `lemma` | [coe_toSupHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-tosuphom.md) | 388 | `result-track:413a797b11890d57eb6ae33c4842f2dd3f0a13791ae3d6245d5700e06c85a8ab` |
| 58 | `lemma` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-mk-source-edition-2.md) | 389 | `result-track:f165d39702ff8853650b7c6888622efe145875544384b24c299edd0b2e052b0c` |
| 59 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/ext.md) | 392 | `result-track:48dd281ae904636e2887c40b280c9298e3e88a0a12cd5b0c6d4b5a32cfa64032` |
| 60 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/copy-source-edition-2.md) | 397 | `declaration-track:d92de447dc96aca5eea28926b446ee2b2f5e9fd5977901d65c4744fcb6fee8b9` |
| 61 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-copy.md) | 401 | `result-track:150893bb9bbfed23df835dce936acf3f28e543d2b363393bd0e6a9d97e2c980a` |
| 62 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/copy-eq.md) | 404 | `result-track:7176f4c959fe25cc47fada1280125d2dfb6d7a4cc82a8f4f2fd4b3c7e32ba549` |
| 63 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/id-source-edition-2.md) | 410 | `declaration-track:e94f65a20e7fb3d050ebf5391869c1889bf4dd36d5c944b5ea947f7049b0478e` |
| 64 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 415 | `declaration-track:ea4b1d14679fa816b7503de9970ca74fc9b7c5908d48b2a3b4858481be192b84` |
| 65 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-id.md) | 419 | `result-track:26509539e2b5c1d0b67e65c7ab891858457b79e0c7bf9063f8e33020e9640348` |
| 66 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/id-apply.md) | 425 | `result-track:2704f0a72189895cfae1aa7996bcc40a351581b7269939658bbfe7823e6f51cf` |
| 67 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/comp-source-edition-2.md) | 429 | `declaration-track:589465b345c7dd2f9d23b7124a91cd8b97b153bb56c099addfb1d0efc3638e19` |
| 68 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-comp-source-edition-2.md) | 433 | `result-track:d520cfc7d457b07f9286c5d05408ffe175bddd2e61409721c45fef3f15ac61f6` |
| 69 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/comp-apply-source-edition-2.md) | 437 | `result-track:e7144cb8fa174fcc9f5885535edb3ba13ea35f4640e03e2ea0763facbeca0ef2` |
| 70 | `theorem` | [coe_comp_sup_hom'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-comp-sup-hom.md) | 442 | `result-track:b21f68042db7f8193c776a7de3566066afe11e1cc03f2858810fc101ac37c11b` |
| 71 | `theorem` | [coe_comp_sup_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-comp-sup-hom-source-edition-2.md) | 447 | `result-track:e83170b35066432ba9d120de6c8075383b353001a1bcaa8d625ee99de2445469` |
| 72 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/comp-assoc.md) | 452 | `result-track:46c99c5c82837596e97f2c208ac9054dc920c2d9972fecf24fdfce9eeae741aa` |
| 73 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/comp-id-source-edition-2.md) | 457 | `result-track:84dd334dec1d8844cd4f43ee0384b09963ccb54a5fd93c814e46ac0713bc4fdf` |
| 74 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/id-comp-source-edition-2.md) | 461 | `result-track:b1e9f0680133291f7d68b2d354ffbf2279068ccf93187ed82a74b4c9aea34494` |
| 75 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/cancel-right-source-edition-2.md) | 465 | `result-track:ba162a9ac279f57cb5562c675b6ad5cb10dfbc9f9d197a7cb6b7bb770fe6c15b` |
| 76 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/cancel-left.md) | 470 | `result-track:5c33738f959fb5efc1a06c865eb2e436b183e1632473e0153a7cf0b7d908c93c` |
| 77 | `def` | [subtypeVal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/subtypeval-source-edition-2.md) | 477 | `declaration-track:455baa314b89734e89b923a12424eb61b28082c76044b22dac7cd615e630eac0` |
| 78 | `lemma` | [subtypeVal_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/subtypeval-apply.md) | 485 | `result-track:4a333ba06fd81ccaa344b3e2570d163de1eca576980b6e1098448da86e3429ad` |
| 79 | `lemma` | [subtypeVal_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/subtypeval-coe.md) | 491 | `result-track:24f418d79a583d03670e53f79ea2cdd3768964e1c4920da90c7c84448f49f3fa` |
| 80 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/instance.md) | 503 | `declaration-track:0bfc66b27683d95e9898f1e397efbc926d776d8515af3a3f94ae85834456c12c` |
| 81 | `def` | [toLatticeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/tolatticehom.md) | 515 | `declaration-track:edba9eeab19e700db6ea473198ea469b1206c05e9d57b87503890a7f8b352f14` |
| 82 | `theorem` | [coe_to_lattice_hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-to-lattice-hom.md) | 518 | `result-track:ac611070066a9504d3b0428137e068c0e1f15c10ea665b00f6bf1e2fb89252d6` |
| 83 | `theorem` | [to_lattice_hom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/to-lattice-hom-apply.md) | 522 | `result-track:822502e011efe2e3712663772f367ef9ea61ca457f0cf978b8d56d024ba0ea30` |
| 84 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/dual-source-edition-2.md) | 536 | `declaration-track:aae09d028284eaf6fe0bdbee4d0872dabf73e19c3d5782bf308dd2a90c561c6a` |
| 85 | `theorem` | [dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/dual-id-source-edition-2.md) | 541 | `result-track:8d1fb783929505cf3c2b7bc26c2622d8a9bb6638c662ef8ec7614b30872456d9` |
| 86 | `theorem` | [dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/dual-comp.md) | 545 | `result-track:c0d35487eae423554dbd667fbdf90563c1b33f44db6fd65f4594ead2db22d88a` |
| 87 | `theorem` | [symm_dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/symm-dual-id.md) | 550 | `result-track:206f5c0e50b7bd2d3605bb0bc335f858f5648f279692cc574400b61364516edf` |
| 88 | `theorem` | [symm_dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/symm-dual-comp.md) | 554 | `result-track:33b413c6a4f0bfa51b29d4661f11042cc26cc4fde7115a0a4e3a7453ff4e1b77` |
| 89 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/dual.md) | 567 | `declaration-track:9f8880b4dbd8b67abfd30854f0f7e1d118fbf5fde5a304e25e0c209b0b41c95f` |
| 90 | `theorem` | [dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/dual-id.md) | 571 | `result-track:0824b4d9cf9cdc60f8a8176d8c02d3340b287adb7619376feb3f5c2eb1933fae` |
| 91 | `theorem` | [dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/dual-comp-source-edition-2.md) | 574 | `result-track:cd5e514981cb13328fe445f8c9a1ebdd7498a3c6df6b21486349efed6bc7458c` |
| 92 | `theorem` | [symm_dual_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/symm-dual-id-source-edition-2.md) | 579 | `result-track:d48c8327b839b2b1addd60009eef51a6d5a017afc5c0b83b28d65afd9aa0047b` |
| 93 | `theorem` | [symm_dual_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/symm-dual-comp-source-edition-2.md) | 583 | `result-track:eb579dd33c5a74d2cfb5f23cd44c12cbc265d03059df793153bf9a12f1b2933f` |
| 94 | `def` | [fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/fst.md) | 596 | `declaration-track:4e1bdd56200055ae8288c25ffddd9f0692d0d1d75603da7278b3a2b4efaa263d` |
| 95 | `def` | [snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/snd.md) | 602 | `declaration-track:131676b4d033d796a8295f9bbc83fa92efaa46d0041e35492d2c7bcc6e6a9591` |
| 96 | `lemma` | [coe_fst](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-fst.md) | 607 | `result-track:be1029d2bb5ba9e50b99357d0adc44592d8c46b7ff8d021b1d70aa7dcb5f0ec8` |
| 97 | `lemma` | [coe_snd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-snd.md) | 608 | `result-track:7198c738c2ba99973ce4e16b1569f490e97efeab9c442af54da1f6e84f4bc565` |
| 98 | `lemma` | [fst_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/fst-apply.md) | 609 | `result-track:d29f130ff6c6cbbbf0ffe3840526a33dac0cfe02ac8653050bd9c82b379090c6` |
| 99 | `lemma` | [snd_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/snd-apply.md) | 610 | `result-track:51817f7d7b30fb2bae1cf314c5bd19b4d129dc39cf897fb7287a616283781dad` |
| 100 | `def` | [evalLatticeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/evallatticehom.md) | 620 | `declaration-track:ccafcf32bfa28227c8a376b8b9e56140b316f33c378bd9f155590d795c300ff6` |
| 101 | `lemma` | [coe_evalLatticeHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/coe-evallatticehom.md) | 626 | `result-track:71b864b8ded87094eaf451b35a7d54ff7be17a597aaca4e932759188947b529f` |
| 102 | `lemma` | [evalLatticeHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderHomLatticeNamespacedPublic.lean/declarations/evallatticehom-apply.md) | 628 | `result-track:92870e5242ccf279a3a90ec5d23bfe99cf990ca5669ddfec50a441188ef7c5c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fd2b66dc8da84441cc6065a9e8430cc7dd3553d031bcdadc2f268e5e932a56a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantddce6deb3e1d253f5e4cb2f4866ea24778a2958a3b63c23fe185bcd90a5a0244.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Lattice/Variantddce6deb3e1d253f5e4cb2f4866ea24778a2958a3b63c23fe185bcd90a5a0244.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
