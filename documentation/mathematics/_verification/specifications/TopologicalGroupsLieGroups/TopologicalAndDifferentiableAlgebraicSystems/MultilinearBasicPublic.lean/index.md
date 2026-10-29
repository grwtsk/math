# Verification target: Multilinear Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "263c7daadfb7d402ec094fdf8ad03049d5491729",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `263c7daadfb7d402ec094fdf8ad03049d5491729`.

Source path: `GRWTSK/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean.json)

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
| 1 | `structure` | [ContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/continuousmultilinearmap.md) | 51 | `declaration-track:00df90b57d547ce1010c7f0dd267c242fc150558d18ba2c2713985e467d7a746` |
| 2 | `theorem` | [toMultilinearMap_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/tomultilinearmap-injective.md) | 72 | `result-track:63ecf9d1eb02551d0eb70d218a2d2ee824c906669e7bd8d00c05cd2163a4e0a9` |
| 3 | `instance` | [funLike](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/funlike.md) | 79 | `declaration-track:aa9a1c5a1159268c4be7a9fbb61f193f429dc34fdeba5990e2784846c86686cf` |
| 4 | `instance` | [continuousMapClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/continuousmapclass.md) | 83 | `declaration-track:1f7269ef5d400fffd4e5e0e75c39e3347bbaa5b2827ced5010d76fc1cd21bcd8` |
| 5 | `def` | [Simps.apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/simps-apply.md) | 89 | `declaration-track:003e69a9f19e7eb7373e09740d1edeb5d48380dbc005f09d99596ee09806a0a1` |
| 6 | `theorem` | [coe_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/coe-continuous.md) | 96 | `result-track:aeb53eefcf0da265b7cc07499a9c73a8ce4a229385cbd3d988dfe86ce687b57c` |
| 7 | `theorem` | [coe_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/coe-coe.md) | 100 | `result-track:801f3f0d98c8d962d72ddb14cf7065faf2ce7d5f725db81cf61098d8733ba67b` |
| 8 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/ext.md) | 104 | `result-track:10d06c67960e678377f4e3841530f0d49bc2680883a6734a04db1fde391124bf` |
| 9 | `theorem` | [map_update_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-update-add.md) | 108 | `result-track:ad4c31cf4aa240745854fa62e2b279c75754899097c478a967db3a2d2dbf5a48` |
| 10 | `theorem` | [map_update_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-update-smul.md) | 113 | `result-track:d2e05a801818e631585388dbafd97e902359d69c53f383a6eafd630b0ae65b76` |
| 11 | `theorem` | [map_coord_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-coord-zero.md) | 117 | `result-track:42b94f58f6c685685cf29bd2c34c1bb376d252d221f79ee8d5be8e4e01cfdfbf` |
| 12 | `theorem` | [map_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-zero.md) | 121 | `result-track:f83faa656ef9bbd98804da9173f1201ab2c30719a33acf0b2a23421712047969` |
| 13 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-11.md) | 124 | `declaration-track:7695fe1b7944f8bfe196f40385541c097aaa1ca32b0f34278020aad822cae313` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-9.md) | 127 | `declaration-track:6df3ed5e6614b8390dc7ee0bd2ab2bdf4eff59b513fcc9d034933028c2cfd521` |
| 15 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-2.md) | 130 | `declaration-track:166a30d6ff7727e4ad5111525b5ade646583f7a8e9e445900ceb4f07176160ee` |
| 16 | `theorem` | [toMultilinearMap_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/tomultilinearmap-zero.md) | 136 | `result-track:e9f71645472d87267c9eba8c108750921fcd372b33ad54ad05f690f687f0fca2` |
| 17 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-8.md) | 145 | `declaration-track:690b3fc522ecc6cc6c930e2c72fb3cfcad7c46c2f4cd4ab047d08530a88cc1b8` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-15.md) | 148 | `declaration-track:c06619fd126339e99ed33f9a56f19eade31c0c7d03f0b62b27d77d0e18ba0085` |
| 19 | `theorem` | [toMultilinearMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/tomultilinearmap-smul.md) | 154 | `result-track:1dbf89de69fd7c8dc24762ee43d118bf429e2189b001e7d257177646b41ede56` |
| 20 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-7.md) | 158 | `declaration-track:681892f8d137c1c50b59e0e7b71a8fe83c92654751e6627ab078fb99d845f096` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-5.md) | 161 | `declaration-track:2f15008ba52695c8d1224044eac5306b008d145ee8a33da58a2d988242b62255` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-14.md) | 164 | `declaration-track:be8042e459c23b43d56a12473a8fdaf947e60fccc4582f703070ae079422a8d2` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-13.md) | 174 | `declaration-track:b73dd14fd05e990398637c8b31102218b85f7fa4d9f79ab576a9f2cde47e510b` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-12.md) | 183 | `declaration-track:7b59a53393d1b7e16705d9decfd5b0a8598fc858c1f242009af979310b103271` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-3.md) | 186 | `declaration-track:22960695712d58098fe867ec7a808008abcabbbef9d06d371bb29be38bdf5eb4` |
| 26 | `theorem` | [toMultilinearMap_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/tomultilinearmap-add.md) | 192 | `result-track:0752c8b343b6a32110ab647bac3f68f04c5c3899fda2a3f9dbe3653c1f036afd` |
| 27 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-16.md) | 197 | `declaration-track:f4699803f37beedbc1f730999548874054e4a3c6430639ed33d9e27665c70e21` |
| 28 | `instance` | [addCommMonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/addcommmonoid.md) | 200 | `declaration-track:cd31be18eed3b6dd50bacda644a612d987385172ba766b4d10ef4f7139c19029` |
| 29 | `def` | [applyAddHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/applyaddhom.md) | 204 | `declaration-track:0eefc535c989bc92dcb4edf1ad7cf74ce52db076f6e9c5b351ac188f13dcd01c` |
| 30 | `def` | [toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/tocontinuouslinearmap.md) | 217 | `declaration-track:6e4e6e0dfd3356a33946d38d58a94c31ab1dceb375ed11e4b6eb309a09792fbe` |
| 31 | `def` | [prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/prod.md) | 221 | `declaration-track:e029c7eda12b19a11f2470bafe694d585515084e95d5b4646e935c39f1335f94` |
| 32 | `theorem` | [prod_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/prod-apply.md) | 226 | `result-track:e0a5712ceb57d51118b3f61cf80a9f065a54f67bf99599947175a60949140ee8` |
| 33 | `def` | [pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/pi.md) | 232 | `declaration-track:fd90e307836de351738e33f49131f31c6b9e67d111f76e98daad714c3765ff96` |
| 34 | `theorem` | [coe_pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/coe-pi.md) | 239 | `result-track:7c9069be427ee688635c23f1284b765db21527127fe3e30b5a9d72c33d0c9663` |
| 35 | `theorem` | [pi_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/pi-apply.md) | 244 | `result-track:82bd1bbe0e1bbdf0bf10910100722ecd2dd173dd5323582312d388920fa42167` |
| 36 | `def` | [codRestrict](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/codrestrict.md) | 251 | `declaration-track:8ba4a9959e9d5cf743d8958a20927fcb828efd46200e577ed68d86241e794529` |
| 37 | `def` | [ofSubsingleton](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/ofsubsingleton.md) | 262 | `declaration-track:4a781cd77a6bc0336820a20f4627f7ff46b9c48ea3baf856bd23a72a3007e8a8` |
| 38 | `def` | [constOfIsEmpty](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/constofisempty.md) | 275 | `declaration-track:ed4afd8ba0cd0041f16eb8f0ead57dd97b7764a2501f97adb045ac4635354e90` |
| 39 | `def` | [compContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/compcontinuouslinearmap.md) | 284 | `declaration-track:709436d0d955da072eb259dc15437af62f92b4f8de016977d33026fa5190dc05` |
| 40 | `theorem` | [compContinuousLinearMap_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/compcontinuouslinearmap-apply.md) | 290 | `result-track:867560f771d8ecd5a1d048ab726711bfcd5eeff4b3816dc3d1ac087119971524` |
| 41 | `def` | [_root_.ContinuousLinearMap.compContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/root-continuouslinearmap-compcontinuousmultilinearmap.md) | 297 | `declaration-track:f2f035b4c20ae043028220d339310d3cfccf1421cc98ed85b7f8ced1cc63a317` |
| 42 | `theorem` | [_root_.ContinuousLinearMap.compContinuousMultilinearMap_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/root-continuouslinearmap-compcontinuousmultilinearmap-coe.md) | 302 | `result-track:554586e264365cee30e9e10ed027f05e4b95aa8a1f364d53655628a7ff1a884b` |
| 43 | `def` | [prodEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/prodequiv.md) | 311 | `declaration-track:583898a36c089f3c983aeba4b023bfb02ef3e3129eb852ae59907f3e1cc17683` |
| 44 | `theorem` | [prod_ext_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/prod-ext-iff.md) | 318 | `result-track:d90984ffea909610179726ece9f3a83dfc9871d9f49c29909bafeaab0722c213` |
| 45 | `theorem` | [prod_ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/prod-ext.md) | 326 | `result-track:0009c9efba684e937ef547af3730770eec73e55ac0b890c5ab2766276193f344` |
| 46 | `theorem` | [eq_prod_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/eq-prod-iff.md) | 333 | `result-track:15068d06bc94d9c0af47a5dc916e209d7fafba1158e3453eb6f7bc5adb69f2f8` |
| 47 | `theorem` | [add_prod_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/add-prod-add.md) | 339 | `result-track:2230bcbce117bd36cc3657671bfb56b1ef97bf2e1037b1c2fca961f62f8462e9` |
| 48 | `theorem` | [smul_prod_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/smul-prod-smul.md) | 344 | `result-track:c8f6807620e3b121edee9d9e15cdc203a9cd0e524417ceae8ece07afc9c11e8f` |
| 49 | `theorem` | [zero_prod_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/zero-prod-zero.md) | 352 | `result-track:b4ceee4ad63955239980497154e034fa511f6c3cc8c90174cd5ddc477560d6b0` |
| 50 | `def` | [piEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/piequiv.md) | 358 | `declaration-track:9db437b4331e32d7dd2c6710c07f9b7fe6df9929199e78b547b7afedc157adf3` |
| 51 | `def` | [domDomCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/domdomcongr.md) | 367 | `declaration-track:4e1e109512871199261a82a0ef23de4c6100eeef796b3c0c11ef1eeeb6e97fed` |
| 52 | `def` | [domDomCongrEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/domdomcongrequiv.md) | 377 | `declaration-track:66ec1e585d26bb6a8c650de8ddebfb80decfb4ec9aa5a3291ba5b0ba62ccee62` |
| 53 | `def` | [linearDeriv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/linearderiv.md) | 391 | `declaration-track:747c039a29dc3d881a7d3668dab350c6c0664f436e8b87cfb6b0cfdb1f71c8fd` |
| 54 | `lemma` | [linearDeriv_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/linearderiv-apply.md) | 394 | `result-track:43263178bc13a55ee39cb575ccf2790ed1f3401fb1891dd14ba51eef4dfd9440` |
| 55 | `theorem` | [cons_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/cons-add.md) | 402 | `result-track:c95a86af59a50a2a672ca66aedee099c63e0b27f4abdda0104a02e3fb20b198a` |
| 56 | `theorem` | [cons_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/cons-smul.md) | 409 | `result-track:8d8ed03849d11f02481a2eef20432044beee478bb452f222562417491384dbfb` |
| 57 | `theorem` | [map_piecewise_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-piecewise-add.md) | 413 | `result-track:ec4246a074052db2799851bf8b07c90f781c25d097daf46b8a24e7c67ca873f7` |
| 58 | `theorem` | [map_add_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-add-univ.md) | 419 | `result-track:05ed61ba8e7f368d1cd618791eae3b5bbce75c555a162d6d1d6aab5ab6a7e635` |
| 59 | `theorem` | [map_sum_finset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-sum-finset.md) | 433 | `result-track:103ae2ef32c0f8795c33f375af3db25cdbaa37671190e1b4dad9baa96b5300cb` |
| 60 | `theorem` | [map_sum](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-sum.md) | 440 | `result-track:6db5b12d7f50c3a5d54f441324e272f16afaffa1b3c51decd47b7ae09c80fca1` |
| 61 | `def` | [restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/restrictscalars.md) | 454 | `declaration-track:284d21058556deca761453d6f4a3b426184a089f2d5a2ad901d1b96e4a981f8d` |
| 62 | `theorem` | [coe_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/coe-restrictscalars.md) | 459 | `result-track:c471c4f2a12536420a2d54d036773e99ec9deea71b275f45b6627cb2bfc44619` |
| 63 | `theorem` | [map_update_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-update-sub.md) | 472 | `result-track:334b49fffdf4bc09f9bd1b11bf1f16d1c5a6ff83499d620fc9bec5059a712acc` |
| 64 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-6.md) | 480 | `declaration-track:56312b3008723f37bbea93de3fd3e764215ba7ec7937941a3249addb4ec6f3fe` |
| 65 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance.md) | 483 | `declaration-track:01df696b563dab20a0db9fc212aef4cd8cc4151903e6ca9e1fff3a034a3d8d6d` |
| 66 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-10.md) | 488 | `declaration-track:7371539a3d151d704c73d1edaead94afd5633cbe9ad5b0a2ab1dfc39250438d9` |
| 67 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-18.md) | 491 | `declaration-track:fedeeb8b5f38072e14f063d8f2551c783f04627cf1a1a1970084c172c5d9b0ae` |
| 68 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-4.md) | 496 | `declaration-track:2b4a4f7748ccd24808b9fa31aba5425e6fdd7556f2b7d5df61757e77b67d00c0` |
| 69 | `theorem` | [neg_prod_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/neg-prod-neg.md) | 500 | `result-track:c6b676ca0469666669e69f1e987ed2438a02e929fdb50a0fe96861cc7e725c5a` |
| 70 | `theorem` | [sub_prod_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/sub-prod-sub.md) | 505 | `result-track:4f3328160eff51c81d8263871a6c8be4e2631d57c5b153d5afd762d2f5232a5b` |
| 71 | `theorem` | [map_piecewise_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-piecewise-smul.md) | 521 | `result-track:c8b93c4e0f7abcd71d7148f6d4ff7caf71b2b4799a26eaf29829bef71a525cb8` |
| 72 | `theorem` | [map_smul_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/map-smul-univ.md) | 527 | `result-track:0642939f32e795fba28bfcc0aeffb9ca3376580128966508b81bb4e982bd45e1` |
| 73 | `theorem` | [ext_ring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/ext-ring.md) | 535 | `result-track:7fbfe7e939a14e62efb8e616ffc7630ac95401a43f71d297f6e059d85a823652` |
| 74 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-17.md) | 548 | `declaration-track:f51d36415d491f4bbcbf8b34e988dd577ec3225356188cc9cae231b6d53e216e` |
| 75 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/instance-source-edition-19.md) | 567 | `declaration-track:ffbfdbfe1a23e1401e3d82fe80385d5676286c583fe7d56bf5eb9c4f01098863` |
| 76 | `def` | [toMultilinearMapLinear](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/tomultilinearmaplinear.md) | 577 | `declaration-track:2fd1ec72a586d6a131042505672cf8f00e07ddb277f49b795e78a6bbb96615b6` |
| 77 | `def` | [piLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/pilinearequiv.md) | 584 | `declaration-track:fd77f54baa792a111688b7ae5ae0e0ee481a4c8c8e7c04de573bf5a0014b4865` |
| 78 | `def` | [mkPiAlgebraFin](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpialgebrafin.md) | 604 | `declaration-track:b9fa2e1acbf4f0bc8f70456292eaf9f2e658690341603bc544fc27eb33ecf18b` |
| 79 | `theorem` | [mkPiAlgebraFin_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpialgebrafin-apply.md) | 614 | `result-track:5d46bbbdb74faa43e05054b7b244cefc00c041f377af1ea45f403000d9e77994` |
| 80 | `def` | [mkPiAlgebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpialgebra.md) | 629 | `declaration-track:a8397866970d43b43f8e2ef6991fedcc4c67e12bf583fc9d36ac1323008ea99d` |
| 81 | `theorem` | [mkPiAlgebra_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpialgebra-apply.md) | 634 | `result-track:9bd41c43975762544e3633613e8b658cc64b0ea2550d027b2fab4af60a21563f` |
| 82 | `theorem` | [mkPiAlgebra_eq_mkPiAlgebraFin](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpialgebra-eq-mkpialgebrafin.md) | 637 | `result-track:e9370123aede8832afabef50e15fe7bae601356b93ff0e7da9d744553be53093` |
| 83 | `def` | [smulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/smulright.md) | 653 | `declaration-track:f61d50f76383ae6b1fac56eeeb74253bb290f250976268793890a26040b74809` |
| 84 | `def` | [mkPiRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpiring.md) | 668 | `declaration-track:4266676c6df80ce9fb076d5fbaff03e608bda89dfb866678155bdfbd16e4b44f` |
| 85 | `theorem` | [mkPiRing_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpiring-apply.md) | 673 | `result-track:5d14b20bed680e64a24929fc5f2773bffd1df6984440fc4ecf474ac980dc21d6` |
| 86 | `theorem` | [mkPiRing_apply_one_eq_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpiring-apply-one-eq-self.md) | 677 | `result-track:65c476bd1f23553eaec3d03509953c74829ca5f52ef3e5daa058c1b295fb5062` |
| 87 | `theorem` | [mkPiRing_eq_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpiring-eq-iff.md) | 681 | `result-track:e2f6095e18b4c730ddc792da390a209bfb02f2bc5f76ab3a6463c01c3b993e15` |
| 88 | `theorem` | [mkPiRing_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpiring-zero.md) | 687 | `result-track:3b8417484f4f3dd4f1a0e53f8d07232cc19a4db8f1e3b7170fc2fe8c172d6db8` |
| 89 | `theorem` | [mkPiRing_eq_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicPublic.lean/declarations/mkpiring-eq-zero-iff.md) | 690 | `result-track:624a792bed009807bc34266a73e0e6e4612740ac7e3bdb0f06ec0eb260eb1341` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=310e199df4d240596b547e9eb4a825a2f2981a5f30a6dede4552f6f118414ff3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean","GRWTSK/_verification/specifications/Topology/Basic/Variantd576a80ae75a72e18e6b98ab88b8b929a0c43c26c1c6b3006af0d175435577ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
