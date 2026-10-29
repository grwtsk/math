# Verification target: Bialgebra Hom Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "467e8422c5cc6eaa9866540a83069b8fb98c63c9",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hom/Variante866dd9c50fbb2fc8966c5f92de2a836714b1ccc464a9719560cdf0dba4715aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `467e8422c5cc6eaa9866540a83069b8fb98c63c9`.

Source path: `GRWTSK/Algebra/Hom/Variante866dd9c50fbb2fc8966c5f92de2a836714b1ccc464a9719560cdf0dba4715aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hom/Variante866dd9c50fbb2fc8966c5f92de2a836714b1ccc464a9719560cdf0dba4715aa.lean.json)

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
| 1 | `structure` | [BialgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/bialghom.md) | 46 | `declaration-track:b586a389434aed832aab1e92ce21e1aab6b4ba5aaf0fea515c501ee85a663de4` |
| 2 | `class` | [BialgHomClass](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/bialghomclass.md) | 61 | `declaration-track:2275b8eda3241bd0981356d50aa700ec1deca34c8fe9246c05e7a3dc02ba5a6f` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/instance.md) | 76 | `declaration-track:785683cec8305ee78450f64a54df4c2a4f7c04f19173f5698f6c8726a17936bb` |
| 4 | `def` | [toBialgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/tobialghom.md) | 87 | `declaration-track:59f92cdbb178021c64a53def4a7405c99da8c1390b394d7ceeabd791e2eb1656` |
| 5 | `instance` | [instCoeToBialgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/instcoetobialghom.md) | 91 | `declaration-track:8dc64f8232ea9a056cf5c581df7b242f3ff840dbdbd856d3bc2245057857943a` |
| 6 | `theorem` | [counitAlgHom_comp](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/counitalghom-comp-source-edition-2.md) | 101 | `result-track:21b6df49adad351ab5dbc65d335f84e6c1e09e4f97c4fa7b5008ef22afe5b3f8` |
| 7 | `theorem` | [map_comp_comulAlgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/map-comp-comulalghom.md) | 106 | `result-track:7f17de1fde2d7f85f4ce1f7240a38d697b218feb5a04214a10f0502d8cce1148` |
| 8 | `instance` | [funLike](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/funlike.md) | 124 | `declaration-track:da689911a5f5afafb3210c9f16e218c54e946f7facc74b5e612a3ad95663d94a` |
| 9 | `instance` | [bialgHomClass](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/bialghomclass-source-edition-2.md) | 131 | `declaration-track:b2d7dfd9095394d370dd1c47fbc487ed96d61895ed08b7d21608e3bae4bc0d39` |
| 10 | `def` | [Simps.apply](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/simps-apply.md) | 140 | `declaration-track:f5d12099b46521079468aec6923e470ed4d69fb7aebb05cba72729556517d841` |
| 11 | `theorem` | [coe_coe](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-coe.md) | 148 | `result-track:64b78bc71e34e39a3f17078cbddf157f8f743248bdb241e1b727c7416e07372b` |
| 12 | `theorem` | [coe_mk](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-mk.md) | 153 | `result-track:c925008eb03147ea594814e072f9a443ffbd82ded5c35933de8aae3e4efd0eea` |
| 13 | `theorem` | [coe_mks](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-mks.md) | 157 | `result-track:e42b565d9a21269392d762eb89f4a7549a1bc88fd0c0739773fdf17b4f07931b` |
| 14 | `theorem` | [coe_coalgHom_mk](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-coalghom-mk.md) | 162 | `result-track:0727a0629c67eef02cd69b68cde4b2a442c74342dc471ee0b807aa9ca0f9125e` |
| 15 | `theorem` | [coe_toCoalgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-tocoalghom.md) | 167 | `result-track:3a9ad60fe669f2860f88e640c9522bef0154091298b05ab68e57ea4b61243764` |
| 16 | `lemma` | [toCoalgHom_apply](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/tocoalghom-apply.md) | 170 | `result-track:bb766c4a6aae67a73c280c11be761e7d98ede15988f372d1bbaf2efcd5b46859` |
| 17 | `theorem` | [coe_toLinearMap](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-tolinearmap.md) | 173 | `result-track:724403da0059cab2414f77b14bdab91666bf7a2abc7c997bccab5f9d4ff283f1` |
| 18 | `def` | [toAlgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/toalghom.md) | 178 | `declaration-track:819b9a62eab2a2c432efd29d922f012fe363c255a98d834eed206989f1c60200` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 184 | `declaration-track:82d44d91ab37d2d671f4aa0a7e1d441fd8efb28a7e195134c3c279124fc462ec` |
| 20 | `theorem` | [coe_toAlgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-toalghom.md) | 187 | `result-track:66ddd073002e215759dd01d901a27f313434f99ca9a549f429a847c2bbd04c54` |
| 21 | `theorem` | [toAlgHom_toLinearMap](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/toalghom-tolinearmap.md) | 190 | `result-track:448a01514bf2b157e29f6173ddcb7c9bd852ad48dbc43df34c5c406db4c174f6` |
| 22 | `theorem` | [coe_fn_injective](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-fn-injective.md) | 196 | `result-track:c5ba929540ee1fa395b19f6b3a1b11877c52b7eeb7497ce81ee61ff51a1446e2` |
| 23 | `theorem` | [coe_fn_inj](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-fn-inj.md) | 199 | `result-track:dd1c59f51f2c87c22c97f8cbe3a8c439af3c5a340dd3c7188e1173f7a4484e7c` |
| 24 | `theorem` | [coe_coalgHom_injective](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-coalghom-injective.md) | 202 | `result-track:fd2115ca7d20b44c5dd30408232460f9fa8e1a682da036e004fbc14e4100aee9` |
| 25 | `theorem` | [coe_toAlgHom_injective](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-toalghom-injective.md) | 206 | `result-track:5df3136cbd48aa0f56479d9b56f13a8ad7bdba764989c780301d3c84b5228847` |
| 26 | `theorem` | [coe_linearMap_injective](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-linearmap-injective.md) | 212 | `result-track:0288faf62c8630fb466fdbdb442ca97e2a2b1e7518882acfa02980cfc94c5b0a` |
| 27 | `theorem` | [congr_fun](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/congr-fun.md) | 215 | `result-track:8e04c0a080a6c4ba860fe58e2192f0d2ece1a02b42fde8c27539ab045be2cf3d` |
| 28 | `theorem` | [congr_arg](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/congr-arg.md) | 218 | `result-track:25a56a56fea3c95d9c35516bd44de12519355d77bdd5d8e86fdc290adc57b8f7` |
| 29 | `theorem` | [ext](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/ext.md) | 222 | `result-track:d42b1d06caa1f1449364061cff831ce4cfd005f50ea9797d9d69b449a29ef436` |
| 30 | `theorem` | [ext_of_ring](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/ext-of-ring.md) | 226 | `result-track:ead0eaad0d03c1960b16ca66d3c9f6b8e18a4c604d2b72858c7f14565b10c146` |
| 31 | `theorem` | [mk_coe](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/mk-coe.md) | 230 | `result-track:aec3df6176a82e71ed5e4cbf67b9931cf3428c4e57052b834792a8fde64be1b4` |
| 32 | `def` | [copy](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/copy.md) | 236 | `declaration-track:830c6cf602bff39b247f0f19ef3804b168d8e2d660ef79fff9c08f93d3cae353` |
| 33 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-copy.md) | 242 | `result-track:778cf88d6b1563e2de749e1fb11a97b735c219cbcfab6bdbd15f459709f705a1` |
| 34 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/copy-eq.md) | 245 | `result-track:abe82773fa3d25ae581fc69af33f9f2d40d2e9f2b5e787320d1839b9e4ea6b32` |
| 35 | `def` | [id](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/id.md) | 253 | `declaration-track:37f3ba8e5705e5d56ba08a783be73666f359d1e512b50c1dc761d1bf34fae80e` |
| 36 | `theorem` | [coe_id](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-id.md) | 259 | `result-track:ebb1b33ec8e10b2443941e91c6e72567da03b566f641e93422134ed649422286` |
| 37 | `theorem` | [id_toCoalgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/id-tocoalghom.md) | 263 | `result-track:c8560a94c8fd1b808c27180c882e5e707cfda98914f76afd33e7e64492aceb2a` |
| 38 | `theorem` | [id_toAlgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/id-toalghom.md) | 267 | `result-track:08e3b014459ac89e17297d170fdfdf8bc9021b0b2d22d3916fb14d51d7a29f95` |
| 39 | `def` | [comp](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/comp.md) | 273 | `declaration-track:b2ae0d28329704aa7a0f5f0c53b4ed59a52f415b8156725f635150770986b668` |
| 40 | `theorem` | [coe_comp](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/coe-comp.md) | 277 | `result-track:dfabac8e1a9c52506f3b3ae52f56eb3bfa91142ebaf0bd0edcc27f4b0b0e8b62` |
| 41 | `theorem` | [comp_toCoalgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/comp-tocoalghom.md) | 281 | `result-track:6d0501ed7308220ac7f3cd3e54a995373774accc295f983e444e25ab10ed0048` |
| 42 | `theorem` | [comp_toAlgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/comp-toalghom.md) | 286 | `result-track:1fcd84b40899dacc7dcb300adc7bc89316346ef3a70e02621d3905e65b51d55e` |
| 43 | `theorem` | [comp_id](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/comp-id.md) | 291 | `result-track:358b0ced1ccf70372a6a6365ec90b26e7891a530c401adb1199020e7f585f78e` |
| 44 | `theorem` | [id_comp](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/id-comp.md) | 295 | `result-track:5bc4d13ff1c014c58741fd0e917b1b6a191521fcff937366024140ed9d5119fb` |
| 45 | `theorem` | [comp_assoc](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/comp-assoc.md) | 298 | `result-track:7d84843de6682279531967f1bf7e7c95ed72e9a549a1cf45be827b09b1c58097` |
| 46 | `theorem` | [map_smul_of_tower](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/map-smul-of-tower.md) | 302 | `result-track:76d062605886affa8f76ff329f6f8584cc3e6844d417af67aa1f2fff00a44f75` |
| 47 | `instance` | [End](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/end.md) | 307 | `declaration-track:7e1be3ab919629611439e915eb6bead290f7de8fb010902769d16794b9bef9e4` |
| 48 | `theorem` | [one_apply](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/one-apply.md) | 315 | `result-track:444e66320c41db3f20549db78616948b5c5aedcc904bd2f7834cc21fc95cd859` |
| 49 | `theorem` | [mul_apply](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/mul-apply.md) | 319 | `result-track:5e2e0f1b03cd437a1453edc4ed9499d8d2cbdde6674af5d2b97a930e35fc8cf2` |
| 50 | `def` | [ofAlgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/ofalghom.md) | 328 | `declaration-track:822f502c1eb720298faa6f35844cae0fdf8f02d1d9efee9c0ca42aa6cb81b821` |
| 51 | `theorem` | [counitAlgHom_comp](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/counitalghom-comp.md) | 338 | `result-track:2004f1d61eca7d1bfec2879f41ea0a5c06a183ccd91dbf92592d1e70145fabe9` |
| 52 | `theorem` | [map_comp_comulAlgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/map-comp-comulalghom-source-edition-2.md) | 343 | `result-track:e19b38d08dc78f63254224c4741e4e91056274e4e1119aeebae64f0336d1a54b` |
| 53 | `def` | [unitBialgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/unitbialghom.md) | 354 | `declaration-track:b8890f65e192d791aceb0b6bc7ee4277099ee0e219a4ca4d671bc005b362f74d` |
| 54 | `def` | [counitBialgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/counitbialghom.md) | 359 | `declaration-track:1263836e44fc448b2682506710791183c90ea2f8aabf55510272e8a222d8c5e5` |
| 55 | `theorem` | [counitBialgHom_apply](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/counitbialghom-apply.md) | 363 | `result-track:a5fc29f9fea2871f367a0d3c6812c91db70dc7eae337445f8b0bbef0e8bb0be4` |
| 56 | `theorem` | [counitBialgHom_toCoalgHom](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/counitbialghom-tocoalghom.md) | 367 | `result-track:52b08a81d8a3d1baf6754dbace3246f656e86c59f62a615ce047665e83464bad` |
| 57 | `lemma` | [counitBialgHom_self](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/counitbialghom-self.md) | 370 | `result-track:894569928c2cabbc4171afbb1e426e3f7fdb6e8dc280adb01769d0b662f68d57` |
| 58 | `instance` | [subsingleton_to_ring](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/subsingleton-to-ring.md) | 372 | `declaration-track:3b2cf5a431542a3e7118a5439a4d3550dcbf526d8097296dbbe5ecdd220e6b51` |
| 59 | `theorem` | [ext_to_ring](../../../../CommutativeAlgebra/BialgebraHomNamespacedPublic.lean/declarations/ext-to-ring.md) | 376 | `result-track:ba45065261cd54c14be62b996d8487938b05faf62a0da86debc3e11a0ba81f60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29edafd87ee73f36e9a3e9834e82a59dd5d1c74f3797529a15bf5e987497a7d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Hom/Variante866dd9c50fbb2fc8966c5f92de2a836714b1ccc464a9719560cdf0dba4715aa.lean","GRWTSK/_verification/specifications/Algebra/Hom/Variante866dd9c50fbb2fc8966c5f92de2a836714b1ccc464a9719560cdf0dba4715aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
