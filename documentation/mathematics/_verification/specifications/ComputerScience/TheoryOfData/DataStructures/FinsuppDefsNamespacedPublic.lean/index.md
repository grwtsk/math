# Verification target: Finsupp Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18fc76739ab6635db1ee167397441f089ffd59e8",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb5fb167377f27a1539ea12043faefb05a05937b4a12b498b561b68dda9c31214.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18fc76739ab6635db1ee167397441f089ffd59e8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb5fb167377f27a1539ea12043faefb05a05937b4a12b498b561b68dda9c31214.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb5fb167377f27a1539ea12043faefb05a05937b4a12b498b561b68dda9c31214.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Finsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/finsupp.md) | 96 | `declaration-track:f5eb729d94eb8adb1f020012e555f6f3d11d9e35c86454ee609b5983fa10e88e` |
| 2 | `instance` | [instFunLike](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/instfunlike.md) | 118 | `declaration-track:01dd06762c55031f11c8557e8a54b229ef51938b45cedfaa21b4b6b9aa77d9be` |
| 3 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/ext.md) | 128 | `result-track:bea1d3cce23a3d90c48ffb717938a14e882d10c679258d8d6a0184a6e6494114` |
| 4 | `instance` | [instSubsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/instsubsingleton.md) | 131 | `declaration-track:11146149313b55b76e58286296af21abec240ef876c3e04c610389360e99b13c` |
| 5 | `instance` | [instSubsingleton'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/instsubsingleton-source-edition-2.md) | 134 | `declaration-track:a0e66a2ca72ad9de81f2b7f93a024dd2b379f7bfa4d98475782fba57b40975f0` |
| 6 | `theorem` | [nontrivial_of_nontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/nontrivial-of-nontrivial.md) | 138 | `result-track:9165c663b0604bb6b891503542b37eecb3164a00f54d6ae47d9731ee274bdda3` |
| 7 | `lemma` | [ne_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/ne-iff.md) | 141 | `result-track:3d4156aabfd5bf536c7f86f41edacde5720dbba9daa10b7d91155ec403bca6a1` |
| 8 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/coe-mk.md) | 144 | `result-track:15742da3113642e82aa9fb35e17fba2006b30c2efd8d0fe75bb290ef5e767a03` |
| 9 | `instance` | [instZero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/instzero.md) | 147 | `declaration-track:8e6d6879a6515fc7ac4c2fab82901cd8ac77bbf730c11d10b173d1578db78933` |
| 10 | `lemma` | [coe_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/coe-zero.md) | 150 | `result-track:6dbf9d76fc6ac0bafa974ff7283dca643a2d6a794dddddd657a3ee5d9170623c` |
| 11 | `theorem` | [zero_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/zero-apply.md) | 153 | `result-track:5221ec58816a9dc24543fc72450cee17a97768f9e4a3d9837f4511e2c317d42b` |
| 12 | `theorem` | [support_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-zero.md) | 157 | `result-track:af29367c28e52de622e7983208d391489220cc8d1e66289570fede4911428b36` |
| 13 | `instance` | [instInhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/instinhabited.md) | 160 | `declaration-track:bc2a087ffaefe5cfa726531451c225109a8b0ce5b12639185e2eccf74264328d` |
| 14 | `lemma` | [default_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/default-eq-zero.md) | 163 | `result-track:0474d4fc4ea55166e0c2747b262570711b9c805f942d69ffa7e1f57177b628b7` |
| 15 | `theorem` | [mem_support_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/mem-support-iff.md) | 166 | `result-track:ecf95eed79eb98dfa4b54143ddea09a013ed8c9caf74e1d7b19857ddb02e1391` |
| 16 | `theorem` | [fun_support_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/fun-support-eq.md) | 170 | `result-track:047c87ef77b266c0946814ee44cc0da9a14811d30e7309eebd4c4a82c4493dd3` |
| 17 | `theorem` | [notMem_support_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/notmem-support-iff.md) | 173 | `result-track:023854cd27e644654803de2d737d9605a251108b82447d1f1c5ad01d88618d0c` |
| 18 | `theorem` | [coe_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/coe-eq-zero.md) | 177 | `result-track:4ebad0d171e12af168a545392afae74f1d145cbba1f187005647cc59ac5766e0` |
| 19 | `theorem` | [ext_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/ext-iff.md) | 179 | `result-track:c75fa73878f4595fbf862a1b932ec5e8f4c27be021ecc2ac851b17c1004563f1` |
| 20 | `theorem` | [support_eq_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-eq-empty.md) | 189 | `result-track:91d81bd8372ffb34a215d134cecb04e8f29926ab0be0483b8cd3aac417867dcd` |
| 21 | `theorem` | [support_nonempty_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-nonempty-iff.md) | 193 | `result-track:a821f001c79daaed16b575faa752dfba2ffb95e8fd43ef9e0a7f06537ff51d38` |
| 22 | `theorem` | [card_support_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/card-support-eq-zero.md) | 196 | `result-track:ec932e391f650ec2411a0213e8a16bce25b31421d01c22484996b76b97332fd8` |
| 23 | `instance` | [instDecidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/instdecidableeq.md) | 198 | `declaration-track:1eddd8691cdb91d1580244bb026f2f5d54e801c7f738b0b0f3c34b98e2e140a1` |
| 24 | `theorem` | [hasFiniteSupport](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/hasfinitesupport.md) | 202 | `result-track:4d610b7f7d7a23bf6a40d4007fdde8560d259d78f8f98e62f02a00bebb17e480` |
| 25 | `theorem` | [support_subset_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-subset-iff.md) | 208 | `result-track:8e59ef841007f16faadcd71289187f9d57f5097dc07e68f0752c9488b0c7c7da` |
| 26 | `def` | [equivFunOnFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/equivfunonfinite.md) | 215 | `declaration-track:197650d3b596772a49523f66f04e0e136eff91fed8cde88c0a3daccbf30a9c5d` |
| 27 | `theorem` | [equivFunOnFinite_symm_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/equivfunonfinite-symm-coe.md) | 220 | `result-track:763d9623d3f3483031362ecb907f0c1f8d5e6ffc3afa65cff77ae843e5e9b272` |
| 28 | `lemma` | [coe_equivFunOnFinite_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/coe-equivfunonfinite-symm.md) | 224 | `result-track:ed23b8bfd6a4578c28f0bbf5b82eef4268418f063fa1e22cf6d6f8baf4087985` |
| 29 | `theorem` | [unique_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/unique-ext.md) | 227 | `result-track:6a36187397ec0adb38153998b2ecd2e2104d4e8e1f9ced14fe4f1ae1fd584f91` |
| 30 | `def` | [onFinsetSupport](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/onfinsetsupport.md) | 240 | `declaration-track:3915a5ffa639616db694939ba9efe8a390f03dde7eccc60474d787ea12a0bc53` |
| 31 | `def` | [onFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/onfinset.md) | 247 | `declaration-track:7c4c38fcd4eacad3a959557d32d8e60b8f882cea4a7e635d9f0a52ac5f86e805` |
| 32 | `lemma` | [coe_onFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/coe-onfinset.md) | 252 | `result-track:1bad065d9ce6b7c04926290202182115da870dbc167daaa145f99f2cfb16013c` |
| 33 | `theorem` | [onFinset_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/onfinset-apply.md) | 255 | `result-track:72996d1d47a9b61481cb20733511a96cbc6277ea8931edb37812e6e8b8cebdce` |
| 34 | `theorem` | [support_onFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-onfinset.md) | 258 | `result-track:0edcbf70adee53c83910e39752dff2d60f8557e9e599a3c307f693506562b83d` |
| 35 | `lemma` | [onFinset_support](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/onfinset-support.md) | 263 | `result-track:67d2f2b836912cfda2a2845d761d21acaa18384b4fb6983bb3b43b92599ab522` |
| 36 | `theorem` | [support_onFinset_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-onfinset-subset.md) | 266 | `result-track:468c3b7ce748cbd2abbed913e12d0de68dd85804e9b5012b31249fb8b1aebd01` |
| 37 | `theorem` | [mem_support_onFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/mem-support-onfinset.md) | 272 | `result-track:4c84199d8015ea4aa244bd772db1536fba9b859e85ed0c85ff492232bfcb7702` |
| 38 | `def` | [ofSupportFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/ofsupportfinite.md) | 283 | `declaration-track:69292e74bdceaced0b6b1ad30d2a0ebe5571ffe229ee069e03ca12c956743ffc` |
| 39 | `theorem` | [ofSupportFinite_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/ofsupportfinite-coe.md) | 289 | `result-track:f01b80ef51233d3f380bcd9a68839064d4b3feba763dc176d22d9531372c485e` |
| 40 | `theorem` | [ofSupportFinite_support](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/ofsupportfinite-support.md) | 293 | `result-track:e465eb1d42613019eed51dc8a14c5289e7b1d450caf5e4203ca36cbf0fe87fc4` |
| 41 | `instance` | [instCanLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/instcanlift.md) | 297 | `declaration-track:4a4584fe75f33fa43a25fa52b763cebce63bc46f902f945a024b22813844b4f5` |
| 42 | `def` | [mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange.md) | 322 | `declaration-track:df0dad277b70c85d968206fc1ad9cb531a5907ac3687701af7bb41897956d6b7` |
| 43 | `theorem` | [mapRange_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-apply.md) | 327 | `result-track:f8489f4721b7aee6e01d56df509454294dae451341b82378674307aeaecb40e4` |
| 44 | `theorem` | [mapRange_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-zero.md) | 332 | `result-track:730dce140107bcacf17db5157730103aef221baa8e02e5f4eaef0681582bfaa9` |
| 45 | `theorem` | [mapRange_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-eq-zero.md) | 336 | `result-track:2f9935264749fe9bf963dcfd071479a8828d0b6d9b82b6fbf4f9d8cc554b9ca4` |
| 46 | `theorem` | [mapRange_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-id.md) | 341 | `result-track:2a9adbccbccd8b7201292dcf93a87c37db57208a8912ff1d7b13545031cf63b7` |
| 47 | `theorem` | [mapRange_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-comp.md) | 344 | `result-track:aeb26be08957dd4821ca5d30915d1bbaf5ba6d08ccba6a85a26c99bfca9b3fce` |
| 48 | `lemma` | [mapRange_mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-maprange.md) | 349 | `result-track:4dadd57c01a968b365f2a0effb8ad0e31e968f6cb38ea342c86a663f9fcbc49d` |
| 49 | `theorem` | [support_mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-maprange.md) | 352 | `result-track:3476d8831cebfde4b141129d0c7b7151a1f8b9f8cbc8c8822845f344b19c3322` |
| 50 | `theorem` | [support_mapRange_of_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-maprange-of-injective.md) | 356 | `result-track:ca7531e7701a335f8505448887cbcfc7de43940dc9a9b0d6f8d6f72f5ea892a4` |
| 51 | `lemma` | [range_mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/range-maprange.md) | 359 | `result-track:b3bcdfb614cd67905e83c518539478ea7e1a07c11a5f13a13dfdfe9db9abf8c6` |
| 52 | `lemma` | [mapRange_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-injective.md) | 372 | `result-track:6100b9c048a1dee395729824cf40fe298bad9ef54fae262461492a25962579c1` |
| 53 | `lemma` | [mapRange_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-surjective.md) | 379 | `result-track:4ba5be9694874b1672a198ee8ec49c2ad9a5fae7776a25efa15dd810765972c5` |
| 54 | `lemma` | [mapRange_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-bijective.md) | 384 | `result-track:b9672a500a25bf84b9d7dda58e88eb1e2d4ad9b9af7fefb306d3b003d14adf52` |
| 55 | `def` | [mapRange.equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-equiv.md) | 395 | `declaration-track:558f1414c3d0385573b65b6fb9db04e1db05ef0a4e3cdaf0b7c374cfb0bc844d` |
| 56 | `lemma` | [mapRange.equiv_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-equiv-refl.md) | 402 | `result-track:39a69105ec0a02f333be1aa2c97acd1f11cd09777818d2048f932bc04944385e` |
| 57 | `lemma` | [mapRange.equiv_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-equiv-trans.md) | 404 | `result-track:718446b7373c4506d6b88533a34b83d43f7fd9bf18d4601811c1b24034045e2c` |
| 58 | `lemma` | [mapRange.equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/maprange-equiv-symm.md) | 409 | `result-track:5ac3daea404d2e8a297cc7bac58023d9c12f1e73d6f2395a6e9dfb4bc9bb02a0` |
| 59 | `def` | [embDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain.md) | 424 | `declaration-track:944a4e2e94f3e5678acbbd4e81f7fba3d0e9dc6bae5bfb0dec4b1487a44b41b0` |
| 60 | `theorem` | [support_embDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-embdomain.md) | 434 | `result-track:14507cd3d153d3c639a9557e716c1752386fd5e43923099ecc70d61a71cbefed` |
| 61 | `theorem` | [embDomain_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain-zero.md) | 438 | `result-track:ce547e8404c20f2e5cd2bf35bd2cfd1b57cd6f6688a912bbcca7cfc0cd6edd32` |
| 62 | `theorem` | [embDomain_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain-apply.md) | 443 | `result-track:3a7839fd9ed0445b89f5042b85803c19fedcfbfd176a315ae74f53913e063219` |
| 63 | `theorem` | [embDomain_apply_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain-apply-self.md) | 450 | `result-track:d73a190554d6367bee5aacb17ff9139e1a90095fc19a37adb3d5be138390a2b4` |
| 64 | `theorem` | [embDomain_of_notMem_range](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain-of-notmem-range.md) | 455 | `result-track:ecac2a3ff79a74adfc086a454106a04f2c4690cb54c53aa303e3f83129ab9d76` |
| 65 | `theorem` | [embDomain_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain-injective.md) | 460 | `result-track:c0bc04bcb57f5f9a0f6194aeaa0c3c239916109986724ca352f61994739c99b3` |
| 66 | `theorem` | [embDomain_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain-inj.md) | 464 | `result-track:12fd14a920ba4fdf9fa99e53908953d3b4f873d21803b02884435875a6350854` |
| 67 | `theorem` | [embDomain_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain-eq-zero.md) | 468 | `result-track:931d91125968a2d4a39cbc518a869fa8fc2eb0c8def22ed460247f53fd77d58f` |
| 68 | `theorem` | [embDomain_mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain-maprange.md) | 471 | `result-track:ffbf29b03aa1a8b9422f211b70f631950c90d3d619849be4e1c3e7cd8569e758` |
| 69 | `lemma` | [embDomain_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/embdomain-refl.md) | 475 | `result-track:03b2b6e3bc61f8bbb85d4624019ab2943cdbd97b55fbc177cf6d1319e7dec116` |
| 70 | `def` | [zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/zipwith.md) | 490 | `declaration-track:3b3375ce337ba9700926a663371bf848e2408bf76efe72a95f881f92545e68d7` |
| 71 | `theorem` | [zipWith_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/zipwith-apply.md) | 499 | `result-track:41dce4414e28b10cb9a475527433096ad729c2fe2aa7e2264694c39c3450c76d` |
| 72 | `theorem` | [support_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsNamespacedPublic.lean/declarations/support-zipwith.md) | 503 | `result-track:d758d7336ede209f422c964731ce04b7e91de170887056747ebb3fcb50688c42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=112c3a951f38b27f5856897baa6740e98a66262e43d1e95dbcc75b4e9e59659c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb5fb167377f27a1539ea12043faefb05a05937b4a12b498b561b68dda9c31214.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variantb5fb167377f27a1539ea12043faefb05a05937b4a12b498b561b68dda9c31214.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
