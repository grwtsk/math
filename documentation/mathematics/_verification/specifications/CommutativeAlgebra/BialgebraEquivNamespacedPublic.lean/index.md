# Verification target: Bialgebra Equiv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b988b8d4ebdab5a3b93659bf91d74b86f62ef01b",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variant4a35c5c282e6b06a7c69583b0efaf701a21152b81cfde2b448b044ba73033b5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b988b8d4ebdab5a3b93659bf91d74b86f62ef01b`.

Source path: `GRWTSK/Algebra/Equiv/Variant4a35c5c282e6b06a7c69583b0efaf701a21152b81cfde2b448b044ba73033b5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variant4a35c5c282e6b06a7c69583b0efaf701a21152b81cfde2b448b044ba73033b5f.lean.json)

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
| 1 | `structure` | [BialgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/bialgequiv.md) | 43 | `declaration-track:97e3c2ac4d2fb605919bb204329e24f5c8b7a7aad97fd5e0522fd7de774f5a70` |
| 2 | `class` | [BialgEquivClass](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/bialgequivclass.md) | 55 | `declaration-track:0a6b0df12ca2172c5b4008c73044f25f8c25dc631539762d0404a5e4cc0fc847` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/instance.md) | 66 | `declaration-track:04a1921c961768dc3f5b453d84da25d61a6266602840dfc6b39d4865c573f209` |
| 4 | `def` | [toBialgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/tobialgequiv.md) | 76 | `declaration-track:d159c7afd07c258be23ee47603c57331241b4dc76414f7d0897d9921a1c68698` |
| 5 | `instance` | [instCoeToBialgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/instcoetobialgequiv.md) | 80 | `declaration-track:b226aafc65851bf9f2b123fa0d2bc998b0c2051b0e523b2bc744b3e15486f9d6` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 83 | `declaration-track:6930cc274558416ab192c621404a15576156af367fdf92aa81c8df5683b77601` |
| 7 | `def` | [toBialgHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/tobialghom.md) | 100 | `declaration-track:936dc00d8ebe8e7feef8d0a315161682e90a44634e541f5a03545c500d42808c` |
| 8 | `def` | [toAlgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/toalgequiv.md) | 106 | `declaration-track:bdec792ee58ba15aa19677c8121438d97ea98b284a81231e2c93c95b5eefa74c` |
| 9 | `def` | [toEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/toequiv.md) | 113 | `declaration-track:d19f7a48c97dbd41cd79a66c9856d33d859a074f1e8ec606cc28a94f92780a45` |
| 10 | `theorem` | [toEquiv_injective](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/toequiv-injective.md) | 115 | `result-track:5c1c359137a91bcba833656ac97138d6e084395fbdd8708b97736e9d6716b7b1` |
| 11 | `theorem` | [toEquiv_inj](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/toequiv-inj.md) | 120 | `result-track:1daaa96efb8634351dc375812f5ceff25659f4d4f4eeba4f905147cfd28f34d3` |
| 12 | `theorem` | [toBialgHom_injective](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/tobialghom-injective.md) | 123 | `result-track:c2df1583523456ca37158e59b8c6a3f97d554ad3b294d9ec16aa34fe3036614a` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 127 | `declaration-track:64e158d4baaf6d570d6c61d7886101e81c130585abf01f00b3ced2a206e93092` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 135 | `declaration-track:c652c9e897b528e53bd2c98e3ffa91a272871625e94da84a250567b2f160671f` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 139 | `declaration-track:3aafafb370598b52c4c621cbac5d027a3e94f3f085f602712b368bba15f50cee` |
| 16 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 146 | `declaration-track:8a002b9f427c8204c85c19f0b5b0f0c02492a6ce16607e339af00d40727f2bc5` |
| 17 | `theorem` | [toBialgHom_inj](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/tobialghom-inj.md) | 149 | `result-track:5510e33c1ba99791baa3f7ef111b5eccaae602107645efa6b7949f6a0016855a` |
| 18 | `lemma` | [coe_mk](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-mk.md) | 152 | `result-track:43ecb66b5380b327fa76755d7a07fe74972431254cd7cb255775b7e8b3471015` |
| 19 | `theorem` | [coe_coe](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-coe.md) | 164 | `result-track:204f326e6528a065e7c4e8a9da1d4db96f211a273f7774f19ffda0ef93f6d656` |
| 20 | `theorem` | [toCoalgEquiv_eq_coe](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/tocoalgequiv-eq-coe.md) | 168 | `result-track:6f69105ec046f3ef14bebcc317793c77a06dc68592a81880c011be369a43f233` |
| 21 | `theorem` | [toBialgHom_eq_coe](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/tobialghom-eq-coe.md) | 172 | `result-track:32bb679c993398d5b371b1da3550dc74965e2f515ad681ca2654497389e3d9c1` |
| 22 | `theorem` | [toAlgEquiv_eq_coe](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/toalgequiv-eq-coe.md) | 176 | `result-track:865175fe5676959257259a534f594ca603480bd51f707322d2d9792a74fb23c5` |
| 23 | `theorem` | [coe_toCoalgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-tocoalgequiv.md) | 180 | `result-track:f5aa14ca12265db20cdc62b2148e11c101823e14615286137412a8fc2f9bdee2` |
| 24 | `theorem` | [coe_toBialgHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-tobialghom.md) | 184 | `result-track:b35ee717e7d123c2ca96fae2e1dc1501ce977860c799bb77134bed1cc49e5419` |
| 25 | `theorem` | [coe_toAlgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-toalgequiv.md) | 188 | `result-track:1a7968e623aa4e6af8df8c542acf83634e99483d8272b7aefb82840cda8c36dc` |
| 26 | `theorem` | [toCoalgEquiv_toCoalgHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/tocoalgequiv-tocoalghom.md) | 191 | `result-track:d91cfc1205846e84138ecc0ece1cab2ef63a8d5292614b047e5ceba8891ae6bb` |
| 27 | `theorem` | [toBialgHom_toAlgHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/tobialghom-toalghom.md) | 195 | `result-track:fc437c9baf2f783f89a17416c131b254434b5cfea15e8efb968c1e3932dd7065` |
| 28 | `theorem` | [ext](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/ext.md) | 202 | `result-track:c0d50742d5470d5e6a5c44af4f117dfdafb75f00e0a0c103a03519570dab2721` |
| 29 | `theorem` | [congr_arg](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/congr-arg.md) | 205 | `result-track:0239c85a97f827e59ef1ba0f51d15758f80bf598bbd19737a03f84efc2ee4ee3` |
| 30 | `theorem` | [congr_fun](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/congr-fun.md) | 208 | `result-track:53c48858fd2660d816bd563209920bcdd63a8b6021e889f9d967735f7f219013` |
| 31 | `def` | [Simps.apply](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/simps-apply.md) | 214 | `declaration-track:1584b9ae02f4150d8e90716a6791d003172234e72995fdaf3962eb0c22458058` |
| 32 | `def` | [Simps.symm_apply](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/simps-symm-apply.md) | 220 | `declaration-track:7e58c2b0b94e09fc02b393007a3ab2c729b3950420801d8bcdd565b3c7d10cfe` |
| 33 | `def` | [refl](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/refl.md) | 231 | `declaration-track:b301385f690321c06e3c221cee7d1ce4a5917f39f72b9e44f055b6729599410a` |
| 34 | `theorem` | [refl_toCoalgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/refl-tocoalgequiv.md) | 235 | `result-track:7430bef1e1bdc14442185cb3afca94ce24946f5241bd9943ad4d272750c8c6d2` |
| 35 | `theorem` | [refl_toBialgHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/refl-tobialghom.md) | 238 | `result-track:e164dbb7b54d8dfe6e013eaa017a54b569c0ebb5a0feaa88b4871a1d5a57a7f5` |
| 36 | `def` | [symm](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/symm.md) | 243 | `declaration-track:748c53e07e0817854f6734829c7d230df5788ac97bd1a27240da9c033d8f81ed` |
| 37 | `theorem` | [symm_toCoalgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/symm-tocoalgequiv.md) | 247 | `result-track:fa34b8c18083b6794c9587981f4169fa3043ab71a9fc8496498f6d34a9df259f` |
| 38 | `theorem` | [invFun_eq_symm](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/invfun-eq-symm.md) | 250 | `result-track:06a2bdaa74273d295b3c8cba2edef5c8e88a09dee54848a3755090a8c52fd2c3` |
| 39 | `theorem` | [coe_toEquiv_symm](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-toequiv-symm.md) | 253 | `result-track:d5f1d4f0277c29b7711837ec2c86769a4a17662076f4a68ed1ef857a2047a009` |
| 40 | `theorem` | [toEquiv_symm](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/toequiv-symm.md) | 256 | `result-track:0349491fe4e0d4c7d2004bba92a714547b0618f660fb32435f2a4b8f87343f2f` |
| 41 | `theorem` | [coe_toEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-toequiv.md) | 260 | `result-track:a02576d47011671adc8d0dcd9341db40fc6abb1c4d2669f6822be53b2e626f0a` |
| 42 | `theorem` | [coe_symm_toEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-symm-toequiv.md) | 264 | `result-track:fe28ee1e55e5dd8ac7258b052bbd10bbd4ce8b0f520f8140854d62d2d8c86325` |
| 43 | `def` | [trans](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/trans.md) | 271 | `declaration-track:033aabb45f3d7d0cebf7e4355e40840cca39688ab14942cbfe97adeb76f00b5b` |
| 44 | `theorem` | [trans_toCoalgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/trans-tocoalgequiv.md) | 275 | `result-track:96c58aee0ee75514e67c0b8827a9523191d4e6ff9d83c5aeca197884131d30e4` |
| 45 | `theorem` | [trans_toBialgHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/trans-tobialghom.md) | 279 | `result-track:2c9733b809560c576be1192652f2a0ce842902e2b8a2be5cd2e8f7611a752a66` |
| 46 | `theorem` | [coe_toEquiv_trans](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-toequiv-trans.md) | 283 | `result-track:53577fc6456d45477b46ea45227c4b9ab11f5932ccdaefb830ecf82f176171b4` |
| 47 | `lemma` | [apply_symm_apply](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/apply-symm-apply.md) | 287 | `result-track:d06c8977ae612fce1a238960fbb2942bb4e53c147ceb40c3100a364c1443a45d` |
| 48 | `lemma` | [symm_apply_apply](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/symm-apply-apply.md) | 290 | `result-track:f6f142fbdceb4e1fa3471fc104dd0d58ecd909e5144015818087a9cbc49a3674` |
| 49 | `lemma` | [comp_symm](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/comp-symm.md) | 292 | `result-track:d1b3a49f5c6aabcc3bb7b6cc311bdaed9d4b411d6044fae1404b37b90761eb8e` |
| 50 | `lemma` | [symm_comp](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/symm-comp.md) | 295 | `result-track:bbc7c318b8e2fa5ebd06e81d5d9d6744f2edb137c6b22f053edd44b6a099c2ba` |
| 51 | `lemma` | [toRingEquiv_toRingHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/toringequiv-toringhom.md) | 298 | `result-track:b47ce66216a84935c8ca5e4e29e75d3c7a54891d4639d0bccf117551d80f1c91` |
| 52 | `lemma` | [toAlgEquiv_toRingHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/toalgequiv-toringhom.md) | 299 | `result-track:7600773739a8821edec2ac9fda0130fa180e5b8f3ded3e59e8324c2a0d769a47` |
| 53 | `def` | [ofBialgHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/ofbialghom.md) | 302 | `declaration-track:8095c3deb990448497cf7afa7ec6883ee728b4ce18d97ead64c5dafd164cb7f4` |
| 54 | `theorem` | [coe_ofBialgHom](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-ofbialghom.md) | 311 | `result-track:832206d3d7db8bcc02a990ececb4895282d44a84de0c80bbeb549e601ecf2a19` |
| 55 | `theorem` | [ofBialgHom_symm](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/ofbialghom-symm.md) | 315 | `result-track:60759958adafea2195d3c61fbfcca2891658ff841b8b7ed998c304292dbc7bb2` |
| 56 | `def` | [ofAlgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/ofalgequiv.md) | 324 | `declaration-track:19ac2d5030d239047783d0ca4b9ac4e070b14aa3bb37b114a157d3b7977d0cd0` |
| 57 | `lemma` | [toLinearMap_ofAlgEquiv](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/tolinearmap-ofalgequiv.md) | 334 | `result-track:afb044b19fa842de0e07610e05678ee2567e45aafed21aa37085844424e60c10` |
| 58 | `def` | [ofBijective](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/ofbijective.md) | 340 | `declaration-track:ed067abc8766eeb19229792d55b0a020fef9cc3b638e2e78add6aadcec116e72` |
| 59 | `lemma` | [coe_ofBijective](../../../../CommutativeAlgebra/BialgebraEquivNamespacedPublic.lean/declarations/coe-ofbijective.md) | 344 | `result-track:e5218c40f9032befd360ab6400128bca8431006ddbd02843d40c6f3139568218` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a2168853b3f942912b8a1bf8f46e499bd044c2a23eca7f23767ac35fe61ef06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Equiv/Variant4a35c5c282e6b06a7c69583b0efaf701a21152b81cfde2b448b044ba73033b5f.lean","GRWTSK/_verification/specifications/Algebra/Equiv/Variant4a35c5c282e6b06a7c69583b0efaf701a21152b81cfde2b448b044ba73033b5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
