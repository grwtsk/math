# Verification target: Multilinear Basic Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2b2a00c76a87ec6e1d861c21016714c5fbd3b12",
  "lexical_observation_count": 128,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2b2a00c76a87ec6e1d861c21016714c5fbd3b12`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NoZeroSMulDivisors.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Sort` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fintype` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MultilinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/multilinearmap.md) | 81 | `declaration-track:a1f6366581b08089135270c774ca311bfb0dec8ebddac84b93d59a9449f62535` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-5.md) | 102 | `declaration-track:71a8d3297aa420ba1a23664ec39d14fc7c0afb2f869e5a238b7b7e6eb4d7fca1` |
| 3 | `def` | [mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mk.md) | 111 | `declaration-track:60cd0410a335c0ffe0f6e2a1f6be78edd05eeb94f42a6cf1a6201c78ef965d36` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/tofun-eq-coe.md) | 122 | `result-track:a17c9aaee79930d34bed14b35eca55f94d40ee7c65829a1da979a0a1529c3fff` |
| 5 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/coe-mk.md) | 126 | `result-track:57f772258682147bb8882f702846a347854cfc1e4da6c8a4c80c78671d4ce249` |
| 6 | `theorem` | [congr_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/congr-fun.md) | 129 | `result-track:21dc4229fc4d88fdb3c9017fae2bb5556d31be3b17b38fc1575a96956abbfd9b` |
| 7 | `theorem` | [congr_arg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/congr-arg.md) | 132 | `result-track:66789d3694cdfea13dccb59e78947874b88dc20990d65981b6d79402419555a9` |
| 8 | `theorem` | [coe_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/coe-injective.md) | 135 | `result-track:b20976e6cad6565755e81b16a9376c0276e73041aa3873af95cc5f46983e9881` |
| 9 | `theorem` | [coe_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/coe-inj.md) | 139 | `result-track:1da309d34379ef7e74b8d89e968791c30e6787e714ee4907c753b71da2147ec0` |
| 10 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/ext.md) | 143 | `result-track:092f4ca138941fcde218e347cdfe1545d7f56d58b84e7e5425f1cb1a72c47533` |
| 11 | `theorem` | [mk_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mk-coe.md) | 147 | `result-track:d1163e7f2ef7a6aa1d6046b029f1ba93c18bec45b2d4770992eac6fac895fce4` |
| 12 | `theorem` | [map_update_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-update-add.md) | 151 | `result-track:c6104729c9647d9eabb0f5e18715d787ad86ade290e68060cef5a1deb14f9256` |
| 13 | `theorem` | [map_update_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-update-smul.md) | 160 | `result-track:467538be066524bbbdaef9132eb9c206bcf5d9d8c60650674ba05abf09dbc42d` |
| 14 | `theorem` | [map_coord_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-coord-zero.md) | 167 | `result-track:ca0e0705d7f0165e1bba9ea5b84e94cee290cdcd7e6c7b3528065f9331a1204e` |
| 15 | `theorem` | [map_update_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-update-zero.md) | 173 | `result-track:5727cebfd152020b1bc7fcc63a0181f337ea257257a346a898a42305ad267fd6` |
| 16 | `theorem` | [map_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-zero.md) | 177 | `result-track:8e3eb3690f6e3d394528811a875f5317fa08e9860eb0592e491656b342203d49` |
| 17 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-10.md) | 181 | `declaration-track:f9cc8b8593d5d7d2f7cc4050781077c2962e61424b81dd83365adf7553246496` |
| 18 | `theorem` | [add_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/add-apply.md) | 187 | `result-track:bfdc314dedf26d763f2c665f4559002d3d8646e7ac76509299d247a9c669be90` |
| 19 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-6.md) | 190 | `declaration-track:78e3b0323458136968f316684a279f57637e908710eaa5bab985bcc913ea9d9a` |
| 20 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-3.md) | 193 | `declaration-track:1c7659cdff7461c9773f1e93bfcc652de65d0bb287b0814e4ff674d0c44d5afc` |
| 21 | `theorem` | [zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/zero-apply.md) | 197 | `result-track:fa8c2c2bef76475814bf2e47f7abc34792e4e7134fc836be6ca9168311c2df4a` |
| 22 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-4.md) | 204 | `declaration-track:3ab17fbbbebf1df6410e3fb1f3fa539e8a364144cbf387668b1ddb4d62a4a7e8` |
| 23 | `theorem` | [smul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/smul-apply.md) | 210 | `result-track:ba18f9aa563a0286c5ecc19797aaf14d536ab2d1443ec02b3cc54407a6c8f0df` |
| 24 | `theorem` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/coe-smul.md) | 213 | `result-track:8cec380d8767c8600e48d06b7f2f1e58e092045abbf9a67f166a490330b2fd09` |
| 25 | `instance` | [addCommMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/addcommmonoid.md) | 217 | `declaration-track:3073ba02b3ffc27f4e4369d5a21a4bcee465a3d7f58cfcec52995951ac59b8ae` |
| 26 | `def` | [coeAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/coeaddmonoidhom.md) | 221 | `declaration-track:63c030cf3901e54a567929998bd5a3fdef7233f53bc2e26a7e2600876cce3947` |
| 27 | `theorem` | [coe_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/coe-sum.md) | 225 | `result-track:ab86e12f0cf4bd189e21310c08536a23168e22a87e9f314ce9f03cd3852a0ec4` |
| 28 | `theorem` | [sum_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/sum-apply.md) | 229 | `result-track:66d1a9638e2f8dfc3e675bcd3ee292a4a8b2d74c7192362c9cb8544cdd540fd0` |
| 29 | `def` | [toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/tolinearmap.md) | 235 | `declaration-track:53d731d5980290d8a16844967eedc9351c32ed359830ce77dbb0d11b5c1f8f95` |
| 30 | `def` | [prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/prod.md) | 242 | `declaration-track:6a6365a0fa507d5ba120aa45ff5dd751ce2e9db4c8167888fe32c71f01ccd361` |
| 31 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/pi.md) | 251 | `declaration-track:46fd4631e65ca0bf68eb6d2e48fa929f1043b1f51600087de0199b31bf599cdd` |
| 32 | `def` | [ofSubsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/ofsubsingleton-source-edition-2.md) | 263 | `declaration-track:d7e0167a5c47489f93a97e0387ab1fdd95a90a1db29823de5e27b53c77358598` |
| 33 | `def` | [constOfIsEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/constofisempty.md) | 282 | `declaration-track:d9271584427b0d1808906480eac0be777c5148639a718ec2e93d4f63c0664b04` |
| 34 | `def` | [restr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/restr.md) | 294 | `declaration-track:a81024ad6bc91ac3d5b781dba05e98ea83f609661ac7efb2fefdeb5e4ebb8705` |
| 35 | `theorem` | [cons_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/cons-add.md) | 312 | `result-track:0c8762cf1f3b6219dd715c290e8f684b91cec6786563077bd53e17f481497273` |
| 36 | `theorem` | [cons_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/cons-smul.md) | 319 | `result-track:5be8078ca2f3244f5e343ab549ce8418ea05e9360afebccec76b18d0494f2b1f` |
| 37 | `theorem` | [snoc_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/snoc-add.md) | 326 | `result-track:679a84610a9dc1af3bd6063c66240337e7c8222f1de325f30103bf95604b90f5` |
| 38 | `theorem` | [snoc_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/snoc-smul.md) | 334 | `result-track:ed89725a47c195fb0c8b458851eed5316bef9e5b35401cd77258336a3f3bc863` |
| 39 | `theorem` | [map_insertNth_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-insertnth-add.md) | 338 | `result-track:92ab1ebd2ae9bc7c507add86b707d5234d5d7645ca8403506c9e26ce10082fea` |
| 40 | `theorem` | [map_insertNth_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-insertnth-smul.md) | 342 | `result-track:68e6a2595d1f9c45be9889c35afcbc603554e4e58ca8163d5e34bdf7553ed410` |
| 41 | `def` | [compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/complinearmap-source-edition-2.md) | 355 | `declaration-track:f05dedbc71369549ebc50eaaaf24ba03e149ecdaf16235cd9b210b2621c70107` |
| 42 | `theorem` | [compLinearMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/complinearmap-apply.md) | 368 | `result-track:3f67a6f9623ebba3d3cedecee69938a0a9f502fa18c4109ef2e15cfd4704a1a1` |
| 43 | `theorem` | [compLinearMap_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/complinearmap-assoc.md) | 374 | `result-track:0f4a8a5f16fa7b24114c36b524f158b88190f9710a325dd75e36bed3550a2946` |
| 44 | `theorem` | [zero_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/zero-complinearmap.md) | 381 | `result-track:2cd06cceb3fcfa5fd747e1a7c5bcccc6015dc4947799f109608d9126adc8c9cd` |
| 45 | `theorem` | [compLinearMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/complinearmap-id.md) | 387 | `result-track:ce54a86b6fc29367f1b757958fccb1db79e87ee009a4efb5839e70d2c2159066` |
| 46 | `theorem` | [compLinearMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/complinearmap-injective.md) | 392 | `result-track:deb22063034ab128a89bb4efec4d335ad615aec4d8387f47e1b2669a712dfbdc` |
| 47 | `theorem` | [compLinearMap_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/complinearmap-inj.md) | 398 | `result-track:f2972446b11228f1a7fd67c38e4a133455948b83b88b440aa9c7da528f884d69` |
| 48 | `theorem` | [comp_linearEquiv_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/comp-linearequiv-eq-zero-iff.md) | 405 | `result-track:d7ccd1e2820f3700aa35f459d0d1e149ce25bccbf84cc0a1ee80e1905b5e7c92` |
| 49 | `theorem` | [map_piecewise_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-piecewise-add.md) | 417 | `result-track:5a19853fd1566fb53ef0c22282f8c07c257c640388bbd72b96d6b5df40aaa9c4` |
| 50 | `theorem` | [map_add_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-add-univ.md) | 450 | `result-track:db2bf68e4035a86c60b201dd00e315304be73c7f870ea889f03ebf3414c59c5e` |
| 51 | `theorem` | [map_sum_finset_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-sum-finset-aux.md) | 465 | `result-track:e9d52b9de1d436924bd72b4e6ed38e6750a3e1bc0fc90fe7b7a76fb1ec1840d5` |
| 52 | `theorem` | [map_sum_finset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-sum-finset.md) | 599 | `result-track:c5fbbabe35225a22a351b18cedb1670d17233c2938764b645eea82d2390bd3f8` |
| 53 | `theorem` | [map_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-sum.md) | 606 | `result-track:bcc4ae4732216a55f288b1572b40b8ac8388a2e492db50139884a7336c59cc7b` |
| 54 | `theorem` | [map_update_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-update-sum.md) | 610 | `result-track:095d54d39bf07caeea8a7166d9551333b52d832515a66d9bd87274131c375634` |
| 55 | `def` | [codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/codrestrict.md) | 623 | `declaration-track:6f133055c6256f492fb39ac49d273424acbb0bdd76e0932f83917e23d456fbf3` |
| 56 | `def` | [restrictScalars](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/restrictscalars.md) | 637 | `declaration-track:b155d95ce12b2c308510881aba75ed84a47d419fa36f1fcc3d7f39d98b5f5057` |
| 57 | `theorem` | [coe_restrictScalars](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/coe-restrictscalars.md) | 643 | `result-track:9f90b518cd0b54419b3b423bc907ddf992ee4b874a9ee7ff8f1cfa7eba45887c` |
| 58 | `def` | [domDomCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomcongr.md) | 657 | `declaration-track:0e38957ecb0010b10cc0bd7062a824e0b36e8536e2764bce504765042ca84d38` |
| 59 | `theorem` | [domDomCongr_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomcongr-trans.md) | 669 | `result-track:579a20241488caf2d591b922a9bf34e38b2ad66252265cb0fd9cdbe750ffd729` |
| 60 | `theorem` | [domDomCongr_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomcongr-mul.md) | 674 | `result-track:191f209a9a42a14c2741c5c399353915fe6b10ef70d345c79670081599d9ee8c` |
| 61 | `def` | [domDomCongrEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomcongrequiv.md) | 683 | `declaration-track:f4e3e4f136de0f974e2d99df17e880f242bbd383f1fcfdf516b40d63dbde7678` |
| 62 | `theorem` | [domDomCongr_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomcongr-eq-iff.md) | 700 | `result-track:35e97d23e85b0e39fdb9143f8f0baaedbd790d3ce69c5f0f67e80bc1e474ad50` |
| 63 | `lemma` | [domDomRestrict_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomrestrict-aux.md) | 710 | `result-track:8a9569f060fd54b5112ea2b8d53e3d77e30228037e6f59a6404c318a637cf16e` |
| 64 | `lemma` | [domDomRestrict_aux_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomrestrict-aux-right.md) | 727 | `result-track:8e469b04e63f7fcb819d9be3ca0b4dc82180cb4377ef3ec50d63b56718277529` |
| 65 | `def` | [domDomRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomrestrict-source-edition-2.md) | 744 | `declaration-track:993180471d4a1789ce2461e55910ee92a6b18e0f546d1ef7c0808a40805c5c14` |
| 66 | `lemma` | [domDomRestrict_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomrestrict-apply.md) | 758 | `result-track:3b1958be5d0d3f33b684eed8f2cb635648ae2d4779e5097f237bafdb8e4d778a` |
| 67 | `def` | [linearDeriv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/linearderiv.md) | 765 | `declaration-track:7a8f4be3df6dcf65564627f9f7030c7668eb3837a9986a802e648b7d822bcfcd` |
| 68 | `lemma` | [linearDeriv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/linearderiv-apply.md) | 770 | `result-track:a77d529423dc08aa1a0e08aa5d6a45562833213e98017fce325cb9e828413ad0` |
| 69 | `def` | [compMultilinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/compmultilinearmap.md) | 787 | `declaration-track:9765317d330c4f58737c33e84a49e35516f7b30df0901e19395abe04b807e4bf` |
| 70 | `theorem` | [coe_compMultilinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/coe-compmultilinearmap.md) | 793 | `result-track:a49502f9bc406f434d573ed41c0c86527b0ce5475660f0a3ac41bb8a4dafc9a5` |
| 71 | `theorem` | [compMultilinearMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/compmultilinearmap-apply.md) | 798 | `result-track:dfdc41bed7ed05923e2009bc7517b6e0c78cc0cf8b2ce7ff2f78e8d587003cb0` |
| 72 | `theorem` | [compMultilinearMap_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/compmultilinearmap-zero.md) | 803 | `result-track:b5a573498b9441ac82b65051714db235f87ebb44eca006a50a9344e2678a18e6` |
| 73 | `theorem` | [zero_compMultilinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/zero-compmultilinearmap.md) | 808 | `result-track:d571d842c43673de1636ee4e976d66457292a9a61c2d0a9d88bec4de9910d0d3` |
| 74 | `theorem` | [compMultilinearMap_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/compmultilinearmap-add.md) | 812 | `result-track:bdbe8498151e3385f2ee52d6beb0e29158f45bacd856bef73dd49886607b6a73` |
| 75 | `theorem` | [add_compMultilinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/add-compmultilinearmap.md) | 817 | `result-track:4f4bce5d09d3d9e7907d96f7ceb5e2f671de3e59dc83540673afd3cea5717434` |
| 76 | `theorem` | [compMultilinearMap_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/compmultilinearmap-smul.md) | 821 | `result-track:69cec9efd495ca519077c1628546d0d1ddef2b1f01b0f1b21a766f9d2c625119` |
| 77 | `theorem` | [smul_compMultilinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/smul-compmultilinearmap.md) | 828 | `result-track:a0d22a21adf989e3f7828ee6408a812b0ea62108f5c28b6d0e85234b2eb70d59` |
| 78 | `theorem` | [subtype_compMultilinearMap_codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/subtype-compmultilinearmap-codrestrict.md) | 834 | `result-track:2069cbda86098655b99f6426006293243e7cb9e47ac2d4051d62c8dc7f1fdd4e` |
| 79 | `theorem` | [compMultilinearMap_codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/compmultilinearmap-codrestrict.md) | 840 | `result-track:64b36f7269f1cc765edd1d0443bd5a093dd3ab81a555b92a0fbe35f756f457cf` |
| 80 | `theorem` | [compMultilinearMap_domDomCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/compmultilinearmap-domdomcongr.md) | 849 | `result-track:6ea97a52ec346b63213a9c739df7af7a26a9bcf7544416c59308413d5deb8531` |
| 81 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-8.md) | 864 | `declaration-track:c016b9e06ee418ea4d6ba213d46085782cfc784d4e462ad2e4625586682b1429` |
| 82 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-9.md) | 874 | `declaration-track:e6c84cc76120d93e3e3716569c6eb6b0f87cfe71a761bc8a45cb312bde037aed` |
| 83 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-7.md) | 877 | `declaration-track:afa69e90fc1a195b91fa0414c5e3320943f3d2785119ab677c999fc203044d5e` |
| 84 | `def` | [_root_.LinearMap.compMultilinearMapₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/root-linearmap-compmultilinearmap.md) | 885 | `declaration-track:0abd3d6c8438d1fffc21b8651a34b1c5092cbc35670c0b44edbfbb642510760d` |
| 85 | `def` | [ofSubsingletonₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/ofsubsingleton.md) | 900 | `declaration-track:89bfd07cd1584ae6832c27f2c785e30632e13040ebca5b5ede4c4e5241a284f7` |
| 86 | `def` | [domDomCongrLinearEquiv'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomcongrlinearequiv.md) | 910 | `declaration-track:e18025ad6ceac0dc363cedfa5ce1296692ea54e972361e731a53ddd28ac1f712` |
| 87 | `def` | [constLinearEquivOfIsEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/constlinearequivofisempty.md) | 952 | `declaration-track:2cbcc15f129b34362360a489bb3e174a70b91dfa70b49eadb25eb010e3d44004` |
| 88 | `def` | [domDomCongrLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomcongrlinearequiv-source-edition-2.md) | 962 | `declaration-track:f503db30220200ca118dfca94797203b91782eca00ec9c418c6680b125876a4b` |
| 89 | `def` | [domDomRestrictₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/domdomrestrict.md) | 987 | `declaration-track:38bc7bf87029c75b7e3ba630cb50cf60e9198f1a30327742b550e802e07bd004` |
| 90 | `lemma` | [iteratedFDeriv_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/iteratedfderiv-aux.md) | 1002 | `result-track:96719c1a2e7b689e8ec74a56ff73a7c9350a735fa8b549862397600cd26d00f6` |
| 91 | `def` | [iteratedFDerivComponent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/iteratedfderivcomponent.md) | 1018 | `declaration-track:07e5a3770e177a8921fa32c770747fa59ffa512154c98d94b794dca3bd22433e` |
| 92 | `def` | [iteratedFDeriv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/iteratedfderiv.md) | 1038 | `declaration-track:23a6195f17200a4f3570ec040ed9e70f22896469a36e31edbef001f42011594c` |
| 93 | `def` | [compLinearMapₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/complinearmap.md) | 1045 | `declaration-track:a35f4eea9bbc1f193249e48ae6781e3df2860da91de7d527399072b19f963a9d` |
| 94 | `def` | [compLinearMapMultilinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/complinearmapmultilinear.md) | 1054 | `declaration-track:a5c03eeb9fc9641be9c861188e8ab8de6ad1bb9745d2fa1b6a2ed43041d2e5a3` |
| 95 | `def` | [piLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/pilinearmap.md) | 1084 | `declaration-track:c01c63361b9aa6809a2eaaa141caaebb7e9841a8cc516100e8e1fab279e8c5eb` |
| 96 | `theorem` | [map_piecewise_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-piecewise-smul.md) | 1097 | `result-track:d8d2a117fc6e00aae34625aca3bae576389bae41e9dcd39aeefbd7bfd2c2d6e8` |
| 97 | `theorem` | [map_smul_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-smul-univ.md) | 1114 | `result-track:7993313d26cfb6de39588360293bf2e9497023ba666e199030cb767cc931b4ce` |
| 98 | `theorem` | [map_update_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-update-smul-left.md) | 1119 | `result-track:7791bd9d6ccb58b125e414ae8b2aa5105baeb009788200b7dbb4dd9356c6beb4` |
| 99 | `theorem` | [ext_ring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/ext-ring.md) | 1132 | `result-track:7e8df8ba0d8dc2e9835ded3f8cf6fdb034a07e726e302d305666cac5a24c6bf0` |
| 100 | `def` | [mkPiAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpialgebra.md) | 1150 | `declaration-track:cac30ccb996c66904b151108a5d7e75b42313bea591bb586cf665378be115f61` |
| 101 | `theorem` | [mkPiAlgebra_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpialgebra-apply.md) | 1158 | `result-track:2f4acb3b352d1a63bdcdaf3a8c1bfa36b7433b47f96a7268ca645200324c5a18` |
| 102 | `def` | [mkPiAlgebraFin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpialgebrafin.md) | 1173 | `declaration-track:a261d21370b9ce03fb1075c148656177952aa0b2744c9f9c1801881af6191af7` |
| 103 | `theorem` | [mkPiAlgebraFin_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpialgebrafin-apply.md) | 1186 | `result-track:95388a533fba6cecda8b487d46633f536ee13afd1318488c5cd99175917f1300` |
| 104 | `theorem` | [mkPiAlgebraFin_apply_const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpialgebrafin-apply-const.md) | 1190 | `result-track:e401f32d04698f85beeba7dbbb68ba58dbc8818e03ffaade9bb02618d1ea9f85` |
| 105 | `def` | [smulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/smulright.md) | 1197 | `declaration-track:e250cf1d5a06a751f925783d130b996facaf65302d18e43703f48e8d993ac5f2` |
| 106 | `theorem` | [smulRight_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/smulright-apply.md) | 1201 | `result-track:37d886b1cda2d9ba8ba9600f4bfa05e571e26897e3b57c48f00590d614e773ab` |
| 107 | `def` | [mkPiRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpiring.md) | 1210 | `declaration-track:ef868bc4ba60efd183d68c88ab257596581ddbaad85ef56d4d03035726baff89` |
| 108 | `theorem` | [mkPiRing_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpiring-apply.md) | 1216 | `result-track:1a773288577edbffd06a359148a43de7d5296eae36776a00f94f28f9d6a4ff62` |
| 109 | `theorem` | [mkPiRing_apply_one_eq_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpiring-apply-one-eq-self.md) | 1220 | `result-track:758c4a900360978105603dee5385d3d217ee83f1ca0ccdf98acb47fb85b6b0a3` |
| 110 | `theorem` | [mkPiRing_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpiring-eq-iff.md) | 1225 | `result-track:a51f3da364258c945f3b0fbd4533d24285c55181caf278b9df2778d5d005b5e0` |
| 111 | `theorem` | [mkPiRing_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpiring-zero.md) | 1233 | `result-track:0a934dd32ad60058cf83d957cec66ef36251bf4d566eef45344ca061f92413fa` |
| 112 | `theorem` | [mkPiRing_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/mkpiring-eq-zero-iff.md) | 1236 | `result-track:036b3a06b27f715f115a8f52d249875898001d82eff70a705fc0d25dab661f84` |
| 113 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance.md) | 1246 | `declaration-track:1489b1b6d8d3d52ab168aeed74040b40d727c2130483f7088e3cceed421413d3` |
| 114 | `theorem` | [neg_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/neg-apply.md) | 1250 | `result-track:826131ca8a3974663c1c92ee6ac60081644561ca055dea5434b0f6239fa19638` |
| 115 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-2.md) | 1253 | `declaration-track:1bacb82d0c420ac640625e18ef8bcf9481097e1a2ec1eb1497792be4f3211d23` |
| 116 | `theorem` | [sub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/sub-apply.md) | 1261 | `result-track:7b0bb95e2aac7bb5bcca783032da769ef144c2ce7e83c5327c4b86c6f543770d` |
| 117 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/instance-source-edition-11.md) | 1264 | `declaration-track:fc44e3dedbbf3966864ad2cad858d9de548496d55e355ba77c563ac9afa9d2dd` |
| 118 | `theorem` | [map_update_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-update-neg.md) | 1284 | `result-track:457d6bb44bdb089966b6c1814e3f0f710fd7775273506ee5268b37b3c22fc8a1` |
| 119 | `theorem` | [map_update_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-update-sub.md) | 1293 | `result-track:4756494db1bc05ba54c380145e27be4ba7366822cb78119a6fd9b46796b85d65` |
| 120 | `lemma` | [map_update](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-update.md) | 1299 | `result-track:81566904ed6e80c359018d308ef6b6f63c3e82d7192fd8afd98e82ab02aecce7` |
| 121 | `lemma` | [map_sub_map_piecewise](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-sub-map-piecewise.md) | 1304 | `result-track:b1aea83d707277978e962bb962c3e62ceeabc375439e7384a77380964dfcf045` |
| 122 | `lemma` | [map_piecewise_sub_map_piecewise](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-piecewise-sub-map-piecewise.md) | 1328 | `result-track:fc3688efcbd961acff006f267229947c881575972e8ca1b973ed1152e5fcbace` |
| 123 | `lemma` | [map_add_eq_map_add_linearDeriv_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-add-eq-map-add-linearderiv-add.md) | 1343 | `result-track:7dde466a6e37d8babfb55dab3beb3ad0c75f3a4584b24ac34affcd74a094fc20` |
| 124 | `lemma` | [map_add_sub_map_add_sub_linearDeriv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-add-sub-map-add-sub-linearderiv.md) | 1356 | `result-track:d6d36164a20ce48854bf3552c9357d441a039b7ad8b1aeff2bef02076a57e726` |
| 125 | `def` | [piRingEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/piringequiv.md) | 1372 | `declaration-track:efdc31f2d5d37cacbae21bc2116a4e9b0dcc5543f044f82c49fc2d02119299c6` |
| 126 | `def` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map.md) | 1394 | `declaration-track:5049b77822a41919fc468b551afe7dc0910c9f168d8f94d4e49deae7ded408e9` |
| 127 | `theorem` | [map_nonempty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/map-nonempty.md) | 1408 | `result-track:6c9aea26ed8dfd53f262ff3475964fdff3a8ac8bfdcdaad6aa7998249977c6fd` |
| 128 | `def` | [range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearBasicSourceEdition2.lean/declarations/range.md) | 1413 | `declaration-track:d4d72fe1d7d3875bc5af1d5829152e7e5a0a130eb99bf8b6d531608b44144f21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a28d19eb857603e6ac43362f3bbbd8affbdd1de57627e54b84c209adc866135 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variantd140b673a633ab0f467b5282902ae022c23b202ef1a5605e23c025c89e0ab87b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
