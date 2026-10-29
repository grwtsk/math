# Verification target: Alternating Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be2f6b9c756e13fdc6972589ab4780c3ce4426b3",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be2f6b9c756e13fdc6972589ab4780c3ce4426b3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Alternating.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.BilinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Multilinear.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/continuousalternatingmap.md) | 36 | `declaration-track:579a1213ccb21b5c1dbe3094e2bedd8a272e27941721b406044563b6f5557fb3` |
| 2 | `theorem` | [toContinuousMultilinearMap_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/tocontinuousmultilinearmap-injective.md) | 58 | `result-track:50637a534f8ab6fb3d8f1156214c8ae5851a827ca083feaad27aeb356e83ede4` |
| 3 | `theorem` | [range_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/range-tocontinuousmultilinearmap.md) | 63 | `result-track:6553102a76174da7c11aafbd39d10d1f3b0c90f0cc5446ea63f8fa4198c7e1cc` |
| 4 | `instance` | [funLike](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/funlike.md) | 70 | `declaration-track:040e1288b1a4d92cb11a12ef98b33c0afa02bd031cb543d42211fac2708a6f58` |
| 5 | `instance` | [continuousMapClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/continuousmapclass.md) | 74 | `declaration-track:213a437dc06c6bf5da36d0d69b8c52d9c5f53a89905d1796173b3d11e8ca7afd` |
| 6 | `theorem` | [coe_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-continuous.md) | 80 | `result-track:9002294ff057aa88430ce07a896740cd33c9edd9a143648f2423a678b2e7df8a` |
| 7 | `theorem` | [coe_toContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-tocontinuousmultilinearmap.md) | 83 | `result-track:db8cf8fefba68a0e1d6537ddc30e40edc174fc05a4233f377ba7c7c5f46ebee7` |
| 8 | `theorem` | [coe_mk](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-mk.md) | 87 | `result-track:b2c73599aba0f2bab9028f8d7309b0854af8ef81ec5ad99e73049badcfc2f31c` |
| 9 | `theorem` | [coe_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-toalternatingmap.md) | 92 | `result-track:d8a6dac712ba85a967c67abc1f175dd5bdd49e1ee043b3f66879ac3cb6f8b9c0` |
| 10 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/ext.md) | 95 | `result-track:90c5477c32d48cb9ea500f07614fe52564e310303d398476cfb34d4059b59d29` |
| 11 | `theorem` | [toAlternatingMap_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/toalternatingmap-injective.md) | 98 | `result-track:21b88e4dc7760caa89c60b676147071e45621e2e49f1861e41c9d4ad28b2e01f` |
| 12 | `theorem` | [range_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/range-toalternatingmap.md) | 103 | `result-track:fe1f386576b9f4e5f159ebcc64743853a05f31c23553a0ae7221f33d6acbd137` |
| 13 | `theorem` | [map_update_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-update-add.md) | 109 | `result-track:16ff1dfbe8f262e2638a617f65a557e32712dfceeaff311c7fda1bbc5513838f` |
| 14 | `theorem` | [map_update_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-update-smul.md) | 116 | `result-track:a11c1190fa664582aa5fd704c75f19d6cfd0de7c745926dd1f28be0f6c1a59b5` |
| 15 | `theorem` | [map_coord_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-coord-zero.md) | 122 | `result-track:ded7b005b59442ea2a6280bf7a280bb1de2dd43e574d78c78bb5969763011eff` |
| 16 | `theorem` | [map_update_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-update-zero.md) | 126 | `result-track:46a11fb5747d6415860935fc5abd269abcd1775b312959d96102501f0fd351bd` |
| 17 | `theorem` | [map_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-zero.md) | 130 | `result-track:3b3270efb31ccd34ea1f5c6501a0a036126fa9cd0eeb272623713989b6de030e` |
| 18 | `theorem` | [map_eq_zero_of_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-eq-zero-of-eq.md) | 133 | `result-track:6725967ae56b203a6d05789c7dfe5558ec24a3cacf4948be06cb9f280df14f78` |
| 19 | `theorem` | [map_eq_zero_of_not_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-eq-zero-of-not-injective.md) | 136 | `result-track:c34766210ca7dcd2909083019f5f1d59f33dbda0469fd8adf06cbf325dea442a` |
| 20 | `def` | [codRestrict](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/codrestrict.md) | 141 | `declaration-track:f353d288e2a0e80d05728155a27cdd4e58440535eb035f293aa0dfe771d0c130` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-5.md) | 144 | `declaration-track:3411a3ab77dccdbb398f7482c56d616e8eaf6628b152e24066af32b021f347cf` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-4.md) | 147 | `declaration-track:1a26162fe016fe751e1a6c87eec58fa253ca2a3550a069d96d570182df29920e` |
| 23 | `theorem` | [coe_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-zero.md) | 151 | `result-track:aa9d5d2041d56ab7e6c1e0c202bc620299b9702f9188cf6138c37da8e82f5ff0` |
| 24 | `theorem` | [toContinuousMultilinearMap_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/tocontinuousmultilinearmap-zero.md) | 155 | `result-track:640d5847da8620c867335845841574ae255ef66e87f1875a9cb3cdc0bd4aff8a` |
| 25 | `theorem` | [toAlternatingMap_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/toalternatingmap-zero.md) | 159 | `result-track:e3d3cfdb4ce3d35c13601cc8cc232b05f1214e43b2ced7ff04c896461f75b205` |
| 26 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-7.md) | 168 | `declaration-track:7579b607522333969cb36d8df4aa087e05d8e8fc33486e7f4b985159a2e261b6` |
| 27 | `theorem` | [coe_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-smul.md) | 172 | `result-track:1a0f06854e14cee1a350dc86534520426dfc430479a9b9ad774217f14ac35d43` |
| 28 | `theorem` | [smul_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/smul-apply.md) | 175 | `result-track:58aa243fdd66fa0769a4fb4229e6aca90fd957454e8c5450daa86136b0fff580` |
| 29 | `theorem` | [toContinuousMultilinearMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/tocontinuousmultilinearmap-smul.md) | 179 | `result-track:5bbf43e2f561ae7712e05878195e1463540626f662cabf918915856770bd2dff` |
| 30 | `theorem` | [toAlternatingMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/toalternatingmap-smul.md) | 184 | `result-track:1198d80f6938992b9a79d0cc17839275a820bedbc5ec2ebc24d70f2788a80b96` |
| 31 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-8.md) | 188 | `declaration-track:ad13fddb57f6772dcea25a4aaf9deba09f764ba179706ce6b534fe6aa39c3c09` |
| 32 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-6.md) | 191 | `declaration-track:4281b9f45c85105423b53815bcda2f0b6fbcbbc200478a558395894ac20c0e96` |
| 33 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance.md) | 194 | `declaration-track:01425ba2d29603cd295d710a61c81ce791c29469f74c09055fddd013ab1d201d` |
| 34 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-2.md) | 197 | `declaration-track:04de2303eddc3a78dac6c696eeffcbfc638bcdf192348493d67391b02d4023d4` |
| 35 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-9.md) | 206 | `declaration-track:ca83502be24a521adb9c35f72cad0cd35b06b4254ff82ab275bd54da275c432a` |
| 36 | `theorem` | [coe_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-add.md) | 210 | `result-track:9c9b71eb36a7478396b11979e391a0baafdd020de2957c78085e21bd5621abbc` |
| 37 | `theorem` | [add_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/add-apply.md) | 214 | `result-track:1d4b114af3f01944b4f49c1880e5ca64a392edd7a80fd064022450acc1968e35` |
| 38 | `theorem` | [toContinuousMultilinearMap_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/tocontinuousmultilinearmap-add.md) | 218 | `result-track:eb7ab4766d2622c309a3c70306c13317a21b7953b9ed70f66d402a18885a9538` |
| 39 | `theorem` | [toAlternatingMap_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/toalternatingmap-add.md) | 222 | `result-track:bb714797210f015737311d4e6409803d02df24232cd4c71dd05645af8bf51ca2` |
| 40 | `instance` | [addCommMonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/addcommmonoid.md) | 226 | `declaration-track:c488af0d4ae9b78bb4d1c2541b8a6abfcc1d8bf513a3c48e020347cd404da5be` |
| 41 | `def` | [applyAddHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/applyaddhom.md) | 230 | `declaration-track:0d52470a8fa08a86fab2a3536e4b5f24a80312d226b454d3a82b05c3d74734c4` |
| 42 | `theorem` | [sum_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/sum-apply.md) | 234 | `result-track:b5701d82e1de23e2f3bf71a90e955b9d86b5d2387cf2d7fc93bdebe8c0562f12` |
| 43 | `def` | [toMultilinearAddHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/tomultilinearaddhom.md) | 240 | `declaration-track:36ced5e1f5b91bed75d4d0ad7cc58373acc0df16397c2c04ae1e91419359931e` |
| 44 | `def` | [toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/tocontinuouslinearmap.md) | 249 | `declaration-track:bc72c5bcb12e243c8e8ea58a5e3e934bda8977bfbe97801443db133bcc5e8fd7` |
| 45 | `def` | [prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/prod.md) | 254 | `declaration-track:1b059454f8139cfc2ebe447d4cd83cb219773dbe03e4887d66c0f6c19564782d` |
| 46 | `def` | [pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/pi.md) | 259 | `declaration-track:16402643dd2e6f1565c37de28132aeecbde1aa679ed92a5cd872501e97e0c0be` |
| 47 | `theorem` | [coe_pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-pi.md) | 265 | `result-track:b3e0726d9e6e1fdc600a705a8ad91d89d3131ef82e6d90f1eb01907d4576d736` |
| 48 | `theorem` | [pi_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/pi-apply.md) | 270 | `result-track:47f26fdb7f5d0ecc3216d3e244f9ede0604791c22ba598e371d7be9bd4680dd0` |
| 49 | `def` | [ofSubsingleton](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/ofsubsingleton.md) | 282 | `declaration-track:07d8ccc7f61d49d966f55f9f6dd26997fafc1e1923184d174d26f6c991d3f1df` |
| 50 | `theorem` | [ofSubsingleton_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/ofsubsingleton-toalternatingmap.md) | 293 | `result-track:b7ee379cbdb5fcd2f2d2a3b4e6294b3a693cce9488b451fe45e3717443ff861f` |
| 51 | `def` | [constOfIsEmpty](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/constofisempty.md) | 301 | `declaration-track:e211a92e48b6c839e4cbc2a3ddc12ed93eed393dcc342ba5f906ad926ce55972` |
| 52 | `theorem` | [constOfIsEmpty_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/constofisempty-toalternatingmap.md) | 306 | `result-track:f2114a1e29099586559d9ca76c309c55e139bc1c58ac31caa953983a38af9eca` |
| 53 | `def` | [compContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/compcontinuouslinearmap-source-edition-2.md) | 314 | `declaration-track:6cdc44e9bbdca39c21017851f646f5daaa38586393641f3921ff8da8e87770b9` |
| 54 | `theorem` | [compContinuousLinearMap_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/compcontinuouslinearmap-apply.md) | 319 | `result-track:6bcc9571dc75caf7ef694e624e02eb22a521b4deb4be18abcc4d83fcfdbe2744` |
| 55 | `def` | [_root_.ContinuousLinearMap.compContinuousAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/root-continuouslinearmap-compcontinuousalternatingmap.md) | 325 | `declaration-track:74c68f253d4115694b30a68a5a910b636a484ac636c9ceeb6c906abc4595e5a6` |
| 56 | `theorem` | [_root_.ContinuousLinearMap.compContinuousAlternatingMap_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/root-continuouslinearmap-compcontinuousalternatingmap-coe.md) | 331 | `result-track:fad675aafb0c46b44fd0f001d66fc3a15f1895e2b21c61d667fe9c15fbf0ad7d` |
| 57 | `def` | [_root_.ContinuousLinearEquiv.continuousAlternatingMapCongrLeftEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/root-continuouslinearequiv-continuousalternatingmapcongrleftequiv.md) | 338 | `declaration-track:16f1496657dc7236306841733116ce14db41b0d4e0b0bab90ff81b074f95566a` |
| 58 | `def` | [_root_.ContinuousLinearEquiv.continuousAlternatingMapCongrRightEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/root-continuouslinearequiv-continuousalternatingmapcongrrightequiv.md) | 352 | `declaration-track:4c259489571c5912192514c925e8bad75c0065d8427a7c1ea75a2822bf0f53de` |
| 59 | `theorem` | [_root_.ContinuousLinearEquiv.compContinuousAlternatingMap_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/root-continuouslinearequiv-compcontinuousalternatingmap-coe.md) | 365 | `result-track:4382e97038c8c167d53b44ba864fb58bdc8a32601d579b24bf1d1a559dc0d448` |
| 60 | `def` | [_root_.ContinuousLinearEquiv.continuousAlternatingMapCongrEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/root-continuouslinearequiv-continuousalternatingmapcongrequiv.md) | 371 | `declaration-track:7c313bcf1877c487504992844fadb05f5bf228c674c06a61a1da22a544418c22` |
| 61 | `def` | [piEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/piequiv.md) | 377 | `declaration-track:f59f92dacd673a69fa5b43a473ff906c6de272010be124df89ff2b355fb009d8` |
| 62 | `theorem` | [cons_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/cons-add.md) | 387 | `result-track:ebddc5ea358b7938322e02401ed18605c8562e90d67f0cf9257d650994ceb278` |
| 63 | `theorem` | [vecCons_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/veccons-add.md) | 394 | `result-track:4bc1b7810f96ce4bcfcc6937c242d32ce2f2f35cba4f7a8986fceb64b4cc6168` |
| 64 | `theorem` | [cons_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/cons-smul.md) | 401 | `result-track:964111d6b2136ef4b0cbfe24d1b9a1094b2971f8baf49f76d1b85c831255544d` |
| 65 | `theorem` | [vecCons_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/veccons-smul.md) | 408 | `result-track:78796e2e80a36fbcd83990028a3214dd645a6db7f30148500b72b19af3385227` |
| 66 | `theorem` | [map_piecewise_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-piecewise-add.md) | 412 | `result-track:404e5555e0f818f9220aa1004c4631f4afb054147e441a6feaa75d727e915795` |
| 67 | `theorem` | [map_add_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-add-univ.md) | 418 | `result-track:48365e3563d28ef5be4125a2509d071397d0d02a14a681c78b0589428ae25f92` |
| 68 | `theorem` | [map_sum_finset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-sum-finset.md) | 432 | `result-track:36151abc9d5d8e93cd49041d90725315fffe7d1a522a05db5e56ca75f5640ef7` |
| 69 | `theorem` | [map_sum](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-sum.md) | 439 | `result-track:85a3500582491ef9ebf125221f8febca7e7bd68a8cbe3da4cc58046d9bbe9a1a` |
| 70 | `def` | [restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/restrictscalars.md) | 453 | `declaration-track:f5f79d37fc9717af44683797018e955a890d550aa740ba122a4c59e1b632626d` |
| 71 | `theorem` | [coe_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-restrictscalars.md) | 457 | `result-track:3ea91b1257a32e617da517c028b2c7f526944ca92f90600a51a6233ba1f2d20a` |
| 72 | `theorem` | [map_update_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-update-sub.md) | 471 | `result-track:1ff614180b63531b2bd8ba45b3cd9e6ffc652ed11d64294b3e9ae30b74ae6729` |
| 73 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-3.md) | 481 | `declaration-track:1047ae43a98184911d96e1b14fcd608d05a844af6ce7b2ddaadb38603ea8eed1` |
| 74 | `theorem` | [coe_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-neg.md) | 485 | `result-track:3335268fc9aa4e53c3cab04312a3df498ba3d064e40af55c4001cdd44fe2e491` |
| 75 | `theorem` | [neg_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/neg-apply.md) | 488 | `result-track:828037346d5a68b105e86091fb3b94af7d9f7fc62b968347b590bfcac98787e9` |
| 76 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-10.md) | 491 | `declaration-track:cabed5d078648c765862307b3209ebe5f2a23626cde3ec0f437adee9f790cc8a` |
| 77 | `theorem` | [coe_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/coe-sub.md) | 495 | `result-track:c2eb767296ae38aa2b1bcc09d5c22c685b1709685a4bdf103db7fb0729e02027` |
| 78 | `theorem` | [sub_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/sub-apply.md) | 497 | `result-track:0d06385a4f9eb796107912b3319e82a84f591a9497da37f4316c0ee617e32e2e` |
| 79 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-12.md) | 499 | `declaration-track:e38081fe2755e75e980cac8b72d8a41797b9a343a04acce727d5d46664652b96` |
| 80 | `theorem` | [map_piecewise_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-piecewise-smul.md) | 513 | `result-track:054f4a14c5e31cc36383e5303d5092bc4f6066b3ef5fd0cec61f003a18306a26` |
| 81 | `theorem` | [map_smul_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/map-smul-univ.md) | 519 | `result-track:973fca1e4e6d1a9031498f54ac8a6d211be03fe0a8448c386ef571648177a57b` |
| 82 | `theorem` | [ext_ring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/ext-ring.md) | 527 | `result-track:7d3550dbfd366365eeb79ffa62976be0897bd56dba7638a407146279b87618aa` |
| 83 | `instance` | [uniqueOfCommRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/uniqueofcommring.md) | 532 | `declaration-track:294b7987ba6ff1b5cc9a05fb29afb2141fd97a4ceea2e8417adbc71f84b154f8` |
| 84 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-11.md) | 544 | `declaration-track:db781a88d11d98e9701eaa6a1de53ae667979b3c669faf4d8baaf3b756b7c5dd` |
| 85 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/instance-source-edition-13.md) | 558 | `declaration-track:faf249a4c05a3ba481a0973108daaffbcdaf4025de7e887f7c29738a8c586298` |
| 86 | `def` | [toContinuousMultilinearMapLinear](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/tocontinuousmultilinearmaplinear.md) | 565 | `declaration-track:7d9cc34b00147f15eb74718fdddff31a3de95243c73d0b0f2f2f837fab9fcab6` |
| 87 | `def` | [toAlternatingMapLinear](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/toalternatingmaplinear.md) | 574 | `declaration-track:d0fa52285224a7cc2e6060bcb9cfdda70fe87a46efc9cbd8eadb8eecf84ce15c` |
| 88 | `def` | [piLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/pilinearequiv.md) | 581 | `declaration-track:acad6620716f50f6b7eb07e30ef5acecd648a096b2c7a8cc331e9696b3640a73` |
| 89 | `def` | [smulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/smulright.md) | 600 | `declaration-track:e209ba729c20650a494d286030f2a2c667de89955c2383ead28d15878c6fbd2f` |
| 90 | `def` | [compContinuousLinearMapₗ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/compcontinuouslinearmap.md) | 614 | `declaration-track:57efe621475a1371219178563ae0538f4392f6a261734b25f6bccfb0a8125ee4` |
| 91 | `def` | [_root_.ContinuousLinearMap.compContinuousAlternatingMapₗ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/root-continuouslinearmap-compcontinuousalternatingmap-source-edition-2.md) | 622 | `declaration-track:8c8457af491344e1084e5dcb10f81214123bc13d5131b1de64dbe60889349dad` |
| 92 | `def` | [alternatization](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/alternatization.md) | 639 | `declaration-track:264ecc1326653bcf6542030bacce7c8868283de151b46e37e0dfc77a4b849ee5` |
| 93 | `theorem` | [alternatization_apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/alternatization-apply-apply.md) | 648 | `result-track:4d2b48c0f6cd231f9398f7aded4dc5cbfd2dcbf7f902971b1e90acfbf275c419` |
| 94 | `theorem` | [alternatization_apply_toAlternatingMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlternatingBasic.lean/declarations/alternatization-apply-toalternatingmap.md) | 653 | `result-track:93c246e7ad1c29d8fb7e2d8fdc424bda6eca3b903178eeef46af17e2152a40c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5d935b203321611acc1d2a4048ee48fdfc332e3f625c5ebe8c7dd4ce65effdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Basic/Variant00e64a1402a53f4cdc2e55c9f8e194b280007288d5c2550fb04a76fb2d4a67c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
