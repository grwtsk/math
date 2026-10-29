# Verification target: Sub Mul Action Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d049158fe1f7259eabec286d2b7607675cb0fab",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d049158fe1f7259eabec286d2b7607675cb0fab`.

Source path: `GRWTSK/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean.json)

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
| 1 | `class` | [SMulMemClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smulmemclass.md) | 60 | `declaration-track:1e353688ced255cda7a4ffc8fdc462eb00570ac2c54432dc25fb862af5b8171d` |
| 2 | `class` | [VAddMemClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/vaddmemclass.md) | 70 | `declaration-track:8f44b0acdc2d594d272efa1cc46e4808ac7eb4ce2f45175e21794dfc82f19a7a` |
| 3 | `lemma` | [AddSubmonoidClass.nsmulMemClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/addsubmonoidclass-nsmulmemclass.md) | 80 | `result-track:3481577e59f2596ec8b93168aba211fa045fade4f46372956df7a2ae16a82b34` |
| 4 | `lemma` | [AddSubgroupClass.zsmulMemClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/addsubgroupclass-zsmulmemclass.md) | 85 | `result-track:1beb2ee1f40769eee9fc947ac35c06a00e8171c504bbeb6c1210c4c99ff065ee` |
| 5 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-24.md) | 100 | `declaration-track:d42568ceb228f2743a7b3aec3d07a50f177c88b68bd23d8a3a8386af159db083` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 103 | `declaration-track:2ab079313edbc5f4b49ae5ebc428527c4c78f1bace59d26d0f0b39d936fd70fc` |
| 7 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 107 | `declaration-track:5385aefb413079a5c45e1d01ee0c8a93feb19ca73fd749a71122a4f7cc61cede` |
| 8 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 110 | `declaration-track:97468b0254480b9e51920c6d5d4036cd45663de8ad8667a6650d1b1cacd68ad0` |
| 9 | `theorem` | [Sub Mul Action Namespaced Public](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/ofisscalartower.md) | 115 | `result-track:586f71ac4996a9f5094c3310be48c0f9117f6274477c9941fe91207cb4c3ae7a` |
| 10 | `instance` | [instIsScalarTower](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instisscalartower.md) | 120 | `declaration-track:b1c7cf0d4c06408e07bfde83a18a4ef181a173f2eeee8320d9915cf9aada979c` |
| 11 | `instance` | [instSMulCommClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instsmulcommclass.md) | 124 | `declaration-track:e22e8ba5c9ff50d541e5b739831485e7b47c682ab65532185083ec04ce74d110` |
| 12 | `theorem` | [val_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/val-smul-source-edition-2.md) | 129 | `result-track:d417f37e195c5cadbd323c5fb3229d6e7dd72a145a2d2ffcc068e932a668be94` |
| 13 | `theorem` | [mk_smul_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/mk-smul-mk.md) | 133 | `result-track:e85da485360eaae796c078b85065e2f5a636a3a69eaa18bf6852c12f39dfeba1` |
| 14 | `theorem` | [smul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul-def.md) | 137 | `result-track:1db135dba627a4516edc7f5ce93393a8a529981053bb43edcd61076f9a6f6b56` |
| 15 | `theorem` | [forall_smul_mem_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/forall-smul-mem-iff.md) | 141 | `result-track:2e0b25cd33c2d440bf8fd03cef0b1735d54274cb2e1a9df0156b07efe5186f15` |
| 16 | `theorem` | [smul_subset_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul-subset-self.md) | 147 | `result-track:b1716ed36072e3e04cf55b6abcf139995f46b7575dfb7fcb466d600f239cffa3` |
| 17 | `theorem` | [units_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/units-smul.md) | 154 | `result-track:907c084677c6c1879bace7c67a36ea78bae319f73f0412671187aa0aa88ab81d` |
| 18 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-26.md) | 170 | `declaration-track:ebc18dcd8e56cab671756c700becd31bda3840334b4b7a6fc7e76e93df4f9ba2` |
| 19 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 173 | `declaration-track:4d032d4503c5589d185a488dfbbf7feb7571ee2ca8fffcca9de11661f1628e33` |
| 20 | `theorem` | [val_smul_of_tower](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/val-smul-of-tower-source-edition-2.md) | 177 | `result-track:199f8434cdf65e39be791c0254a1f457954d50c2f596c04f238cc85dc4ab6ab9` |
| 21 | `theorem` | [mk_smul_of_tower_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/mk-smul-of-tower-mk.md) | 181 | `result-track:da3f7a339d425e52913b075b6c3efa7fd639eddfa4932d840f3853876855c49e` |
| 22 | `theorem` | [smul_of_tower_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul-of-tower-def.md) | 186 | `result-track:97eeb1ff7abb7df58e1b0cae4e6bc7b313780c5df4764cda6b8cbfcd52ca1179` |
| 23 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 190 | `declaration-track:c6b97e0cdd3e8b8d6bddf1acddcd31528a54568e68de7bd62732872688fed820` |
| 24 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance.md) | 193 | `declaration-track:0d3b86ca7521799081f8217a85f46a9da3aa83d60175fb10b8f471c2169ca4e7` |
| 25 | `structure` | [SubAddAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/subaddaction.md) | 201 | `declaration-track:1855fdecc580c169787a638a1b1bad50ed78965aabe5ed39ed134b192294e280` |
| 26 | `structure` | [SubMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/submulaction.md) | 209 | `declaration-track:eb30cb4b4dcc413ddd4f74eb522abfd30aa0556164a206a91c592342a2dd1518` |
| 27 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 220 | `declaration-track:465f8ca04940dba1417604817170f8627d8a7dc559c8aa495be890438a5f3532` |
| 28 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-25.md) | 223 | `declaration-track:e727394b5b21466fd123f34594cec3ba3841190f0da0867d57bef2c7b08f3808` |
| 29 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 226 | `declaration-track:2905d0325d970a45fcaed76ee7b6dce31ea54a3234fad7fcad3b2f61313d3042` |
| 30 | `theorem` | [mem_carrier](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/mem-carrier.md) | 229 | `result-track:62bf50c0d770b854a3d230fbe48efc607bcf0bd4458411bb88e2889de491f839` |
| 31 | `theorem` | [ext](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/ext.md) | 233 | `result-track:0dcd4f788ad8eb43a3ebe7c3c5af82ed1e52a1a8ddfab576499b8c8b1336fdc3` |
| 32 | `def` | [copy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/copy.md) | 240 | `declaration-track:915b28d22ff5a1f7126a7fd744b5282fd5ae4953c5dfddcb81b5731cda1973d0` |
| 33 | `theorem` | [coe_copy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/coe-copy.md) | 245 | `result-track:f892e82da3a0f9bcda9c40f408929749626ac7ad67ae610ddc2b1d28066f158f` |
| 34 | `theorem` | [copy_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/copy-eq.md) | 249 | `result-track:144b174f0c30be58dc5aec7eaa290131d2113b40a8be53f8c4b96d53787ba674` |
| 35 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 253 | `declaration-track:598e1d6e84238d1c9007bdd6c179db16098f81d3017bce792d0dd59801c69cd3` |
| 36 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 257 | `declaration-track:3b437fbd0acf99c1bc82ec55385f469f364863969e31f8616e5bf90e2d8fe82c` |
| 37 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-23.md) | 261 | `declaration-track:d144335c840e2e5bb3df9528f5b1f1d265268636a37550a75612d8ca38763fd1` |
| 38 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-22.md) | 265 | `declaration-track:ce558007ca2a6e42a42d352d85f8df266defe8139c7778e400e4b145a8b64722` |
| 39 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 269 | `declaration-track:8dbb07e3dc0631ce8ccdbae310329052ae266409aa218b1f6692c32a92c1d4ad` |
| 40 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 273 | `declaration-track:3dde28a3bf1c4a46f1f39ccd07c8dc4c8edefa6511dbe9ec11cd089b7832266e` |
| 41 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-21.md) | 277 | `declaration-track:ce41af2fa490d845283336fabbd23b1ffcf4540e0ddbd6fcc3f1cc45c8abe765` |
| 42 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 281 | `declaration-track:1575d060a56a900949bb2bee89e7932992dc1451c51ef2b50b91693cf4c5efa9` |
| 43 | `theorem` | [mem_iSup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/mem-isup.md) | 286 | `result-track:b0fab04a1f933cf7963ea4a6a7b4e5d1511c58cf5ecaff7c5d830efcf082682e` |
| 44 | `theorem` | [mem_iInf](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/mem-iinf.md) | 292 | `result-track:74eddb404bc5daf77db04f484d07ea0fc0b8d4b21813a5895f157743324d6005` |
| 45 | `theorem` | [smul_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul-mem.md) | 308 | `result-track:f15e38dcc81ec9db8d2a0a35aef95e6d2756a9e0121573db81ecd1d8d2e94a30` |
| 46 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 312 | `declaration-track:82d859cf65aa95ced899e585a50be8d266a5154b87f4d54f3b3c9c8f259c5624` |
| 47 | `theorem` | [val_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/val-smul.md) | 316 | `result-track:6bdd5b1f6c60b4f7315b573496d76e74108ee1832f5959183f6b956f8461f93c` |
| 48 | `def` | [subtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/subtype.md) | 321 | `declaration-track:78698074b82b2ed78c70daf4c6b7c89ef47a016054dcf16486ca08df3eb4a326` |
| 49 | `theorem` | [subtype_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/subtype-apply.md) | 327 | `result-track:8c751dfd056fec27002e63a9f74769e81e0b229d15087e6d7dd88af8d056cc57` |
| 50 | `lemma` | [subtype_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/subtype-injective.md) | 330 | `result-track:72eebed08d007d120d690108bc85ec7d262b2857c2dcecce67ca53296e77ffe8` |
| 51 | `theorem` | [subtype_eq_val](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/subtype-eq-val.md) | 335 | `result-track:9b6336543148dd80873fa4b395488da8f9d12f75af6ddfc82037cadeaf5df008` |
| 52 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 348 | `declaration-track:19c4edd5a6653b0050142f437262944e62ffafde6d031824c8c76848b0abcf7a` |
| 53 | `def` | [subtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/subtype-source-edition-2.md) | 353 | `declaration-track:9fe3517a070fb40f79f9d6eddc7ad3aa077944e92d730217287f6f4e003bff29` |
| 54 | `lemma` | [subtype_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/subtype-apply-source-edition-2.md) | 358 | `result-track:f3f5302d78a7f3a6054b2e65e3d188d4217f9bdfc164af0f1766d1bb4265628f` |
| 55 | `lemma` | [subtype_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/subtype-injective-source-edition-2.md) | 361 | `result-track:904e62d7cbbd6d41bcd8e9db948bebda6e878ea6774c5e92102d83333b134972` |
| 56 | `theorem` | [coe_subtype](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/coe-subtype.md) | 366 | `result-track:ac7e52b8bac09bdfb050972c69f4559ac11d46f97e40e2b2b3c8c09688c0e275` |
| 57 | `theorem` | [smul_of_tower_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul-of-tower-mem.md) | 381 | `result-track:392a7f7b94fe784bb0ce259c8410304205e9a65e3529d8e7f88fdf8237a2cf80` |
| 58 | `instance` | [smul'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul.md) | 386 | `declaration-track:93058d0532df9c6f9ab83ea72394b5137e0a182279cca4058d2098529777d617` |
| 59 | `instance` | [isScalarTower](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/isscalartower.md) | 389 | `declaration-track:2ad00af13c99648cae9db6aa6e23be6cb0b3e314885d35a61a59633c49694f98` |
| 60 | `instance` | [isScalarTower'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/isscalartower-source-edition-2.md) | 393 | `declaration-track:cce4cb1404d7b8dfbe072a5c09ae7913bddbe65d089d0a29099514d8ce37705e` |
| 61 | `theorem` | [val_smul_of_tower](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/val-smul-of-tower.md) | 398 | `result-track:14a2baea9f39ee745a28613158482347bacaaef853673a5236c47419c5c3e704` |
| 62 | `theorem` | [smul_mem_iff'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul-mem-iff-source-edition-2.md) | 402 | `result-track:edf69a09a30cbb3d512e83469dde8320c0ff9eabb80c2dcc04f20eaa0a64ccea` |
| 63 | `instance` | [isCentralScalar](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/iscentralscalar.md) | 407 | `declaration-track:5c52dcec5b72d8c00547c9354b138c2451f8cbcca742ecd2abcac2180c536c92` |
| 64 | `instance` | [mulAction'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/mulaction-source-edition-2.md) | 421 | `declaration-track:b3db7847ab56a92a92a2b19c893df8409ae92a2535fb0873e4bab2e36d703fa6` |
| 65 | `instance` | [mulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/mulaction.md) | 426 | `declaration-track:3207b25c947c304850556c088f9fb9ee64340534b454930ea4a3660486490951` |
| 66 | `theorem` | [val_image_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/val-image-orbit.md) | 433 | `result-track:4559bf06bbf49d218418b47494bd7fbb902cfdeb20aac93a66a8edfc8ba743a5` |
| 67 | `theorem` | [val_preimage_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/val-preimage-orbit.md) | 438 | `result-track:73705cdff991d3e9bf07a728d1ca53b63b40442606fa2b69b8dd90dbac2e1d06` |
| 68 | `lemma` | [mem_orbit_subMul_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/mem-orbit-submul-iff.md) | 443 | `result-track:7e098507497e7e543a5b7ff97b895875fa13eec0cae03ddc9666e08aae1e0385` |
| 69 | `theorem` | [stabilizer_of_subMul.submonoid](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/stabilizer-of-submul-submonoid.md) | 449 | `result-track:5a94df08a850c81f40f2fcd774765a88f33d91d0565f35e4b1b9c81fa272c539` |
| 70 | `lemma` | [orbitRel_of_subMul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/orbitrel-of-submul.md) | 461 | `result-track:b6d29acf99c964e0b8f8105e902a1788430475f988140500b61cb54709952c66` |
| 71 | `theorem` | [stabilizer_of_subMul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/stabilizer-of-submul.md) | 469 | `result-track:69b4db73da203a04081db7411f74a0fc834517c91447072902bfbc41d6bcfc48` |
| 72 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 476 | `declaration-track:7f17095b1a5222467447aacaf69bc73f7c3bc9eb9bea87cf44e745a11b6623fc` |
| 73 | `theorem` | [compl_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/compl-def.md) | 480 | `result-track:cd4cbf969bdb88c5b15f0f95cfe9d51f1ce362e391864d105be12d551ac5c580` |
| 74 | `theorem` | [zero_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/zero-mem.md) | 490 | `result-track:2b6b8f992240be36e2df2085795252b00c04e5a7fdf053a530cc157e1bdf111a` |
| 75 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 496 | `declaration-track:470eefac70fbb15c02e77049b8ea530a27024171ff5df2e4ae69d0cf6290829d` |
| 76 | `theorem` | [neg_mem](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/neg-mem.md) | 508 | `result-track:0a539c8305581aedeee335a3c593f66c61c795f28b4b0aeab08c482900576e77` |
| 77 | `theorem` | [neg_mem_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/neg-mem-iff.md) | 513 | `result-track:bf4fbdadbde3e437fc2231f8364a2fa21e7bc8b6f42b0519a706a0618b85d882` |
| 78 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 518 | `declaration-track:4019f64e93760e72643ae07469f3f888cbbbe24e5f280e5b911a0e31ccb9d84c` |
| 79 | `theorem` | [val_neg](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/val-neg.md) | 522 | `result-track:0b3e077da20207d77658623cc6ce80c45bb8580ba05d149c85b904b6bfc543a6` |
| 80 | `theorem` | [smul_mem_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul-mem-iff.md) | 535 | `result-track:7ab5a1be102b8b50dce7f1cd8688cbcc81d75caf7b8eb7686dad72c2b57d6727` |
| 81 | `def` | [inclusion](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/inclusion.md) | 548 | `declaration-track:3201270c699aa0c95e69b7843d1b062d2d1807c5984114d91e84b5311c10f02a` |
| 82 | `theorem` | [inclusion.toFun_eq_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/inclusion-tofun-eq-coe.md) | 555 | `result-track:4afb88782cf00b62bf3f01d77bd7af25d776b2fa9bb0e913fce5605e8c55069c` |
| 83 | `theorem` | [inclusion.coe_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/inclusion-coe-eq.md) | 559 | `result-track:def28b732e0fa364f835a984cd3b265d92a6c08e2469c03d8eeb88d1fcce2ef4` |
| 84 | `lemma` | [image_inclusion](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/image-inclusion.md) | 563 | `result-track:c435e658be51b63bc4dff19a1cc3f7302433a95bfb3a22d6f00b5fdcf73e43f9` |
| 85 | `lemma` | [inclusion_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/inclusion-injective.md) | 569 | `result-track:2cbf19913f58b84903c99e95fa088a636aa3fd600ebed1630d1e6583de98be35` |
| 86 | `def` | [nonZeroSubMul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/nonzerosubmul.md) | 580 | `declaration-track:201f6bf064c3d9f5af739474c6db28d5f44b471df4a63ddcc83fd2bb8fdbad72` |
| 87 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 584 | `declaration-track:a022de9c68e192fd6ea524a20aad054924845b36cbc4a00122e4c5eaf2f72d4e` |
| 88 | `lemma` | [smul_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul-coe.md) | 588 | `result-track:76796330dda0e7cb02dcbcaed83ed87c301d53e077c9256687e763b13b325b11` |
| 89 | `lemma` | [orbitRel_nonZero_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/orbitrel-nonzero-iff.md) | 592 | `result-track:d4789b93a2e07bd8cce6a4472861f16330d09f36bb3a873abaef26ed987239dd` |
| 90 | `lemma` | [smul_mem_fixedPoints_of_normal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/smul-mem-fixedpoints-of-normal.md) | 603 | `result-track:b3d5b75ae3a9331b6829579d118bcfb004056c8cb41a3f25f77e074defde7589` |
| 91 | `def` | [fixedPointsSubMulOfNormal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/fixedpointssubmulofnormal.md) | 612 | `declaration-track:6a6dc7cc4a62fc778cf0e17a2ca72c6b206903a136d5a97e78e0ced8460e4490` |
| 92 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 616 | `declaration-track:cceb11ecfc46e4c77601a1da3628641ea3008894096925bbad22736e8b4b78f0` |
| 93 | `lemma` | [coe_smul_fixedPoints_of_normal](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/SubMulActionNamespacedPublic.lean/declarations/coe-smul-fixedpoints-of-normal.md) | 620 | `result-track:f1c93f2aae87a0048bdb1256f7e61897139b63cd22e8027e9b9e914ed3ec82cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d8c5581e053bd3fc4dae6992474b88ab66b682c60abeda0002b6a17af40dfbbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/SubMulAction/Variant265c1b5f332f52e03da8c999a0e1095b2e634561f1529844facb10df292c93fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
