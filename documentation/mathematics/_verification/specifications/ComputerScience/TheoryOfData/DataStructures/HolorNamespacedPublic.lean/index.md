# Verification target: Holor Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a9a92d4f0b1f91325fb5ab9e978f497abf359e8",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variantf0f560e9ce447f55b7ac4c9d9a7518cc323bd3107d8c6a109d5d767a4f3dee6c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a9a92d4f0b1f91325fb5ab9e978f497abf359e8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variantf0f560e9ce447f55b7ac4c9d9a7518cc323bd3107d8c6a109d5d767a4f3dee6c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variantf0f560e9ce447f55b7ac4c9d9a7518cc323bd3107d8c6a109d5d767a4f3dee6c.lean.json)

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
| 1 | `def` | [HolorIndex](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/holorindex.md) | 53 | `declaration-track:bb43cfd2e12c3f375ef3116b0803add667bf9c46a68e7fea9026580f9823f916` |
| 2 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/take.md) | 61 | `declaration-track:409705bd5662812c1f539fbed72d1071fcbc55e99df89d7fd7ceacec4bb27c89` |
| 3 | `def` | [drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/drop.md) | 65 | `declaration-track:1220a1aa6816698a03972e69f2eaf34671370a0e268f899f4e95735d393e8deb` |
| 4 | `theorem` | [cast_type](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cast-type.md) | 68 | `result-track:108d4fa550fee6f6f651195a34caef6d2331ded996681414c1689de8a82b8d5d` |
| 5 | `def` | [assocRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/assocright-source-edition-2.md) | 72 | `declaration-track:bb03e5b6e131ee24efb09f7ec4e2c8b87dcd77ae18ef984af61b740a05493e1c` |
| 6 | `def` | [assocLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/assocleft.md) | 76 | `declaration-track:15f274038256fd0d9e76c031f4a8c04ceeab5964cebae7dfffcf5371f01595fc` |
| 7 | `theorem` | [take_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/take-take.md) | 79 | `result-track:8aaa50c66ea2625a2dd2ee56fb12cb62e87f83d3f4a8d926079c2146bdf89a66` |
| 8 | `theorem` | [drop_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/drop-take.md) | 84 | `result-track:7f212e22bf8793fcb1bec0049411daade540989cc58d49bd9f0daaa52aa1c41a` |
| 9 | `theorem` | [drop_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/drop-drop.md) | 87 | `result-track:130bdedc9860e15f56ebe3a7d3a91c7cc571e653deedcbc94ff1f53ce71c061b` |
| 10 | `def` | [Holor](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/holor.md) | 93 | `declaration-track:4dce3af9a2a68b4b9d0c584337c893cda3b6d72dc32f934dc172de7cd54ed2ef` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 100 | `declaration-track:841f8ecde1e66141a5fd54d99e1d33efd5c624596e143d6cd954b139c322424d` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 103 | `declaration-track:33804599b9c1cd87844c0f46e10a53ff4d48af8cae865de9e0f2a2a512814e44` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 106 | `declaration-track:e2f41ef5bcac6ec06dde08ea46f8e7cc1d08c3fc438ab69a02f6eb2cb696dea0` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 109 | `declaration-track:f681107212f73f0ae6e773fc2c31cf3f7de333ea3d1eb2c93ea3b8cf5a2df867` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 112 | `declaration-track:ac2e41f66ce498cfe137bdfbc1a711895c4cb3fb487fb478c1bb077a717994a7` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 115 | `declaration-track:266548215f2886dc4042b0120cb07d45acb26d396c9963a6b443bd7233ebd809` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:24298d7bd4fe05ccc03f567ba745428d6bba9e6163eaa73c3dc91ec71081da2d` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 121 | `declaration-track:e2349fbf88bd0ce30c26cb872f12ed5443638cbd3586787ff9ebd703fc266f8c` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance.md) | 124 | `declaration-track:209f66cde772fe1c9c72e429266332167e8ac269eaed1db478d0e13722ab4340` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 127 | `declaration-track:daec66e9d1daa95f2bfdde8a40ab252bba52de1dbf28a41570414be008f8d3ff` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 131 | `declaration-track:7d7d317ba8178efc038bae6000b97ff613488088fcde732506caa0041502e0a2` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 134 | `declaration-track:b804aaacdc8d1c1ae5f1ff973f21c7a35a1a6aaa018cefee8232bc298547f274` |
| 23 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/mul.md) | 138 | `declaration-track:2252a3d111036ffad40bcac127eee3872ca00cdd81c48774573efd90777d23bb` |
| 24 | `theorem` | [cast_type](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cast-type-source-edition-2.md) | 143 | `result-track:8b8af64a4ba73cebe57683d211aa85e66fad33da7a7193947e7fea77d6be1f1e` |
| 25 | `def` | [assocRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/assocright.md) | 148 | `declaration-track:190c857b22e427a08ebdbaebbb30f6e016715704cb8a2fda95e97d5a99a9eda3` |
| 26 | `def` | [assocLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/assocleft-source-edition-2.md) | 152 | `declaration-track:2f3f5668968951f972b81ec0223cea52ead860d7ad1e2b002329ebcacdabceaa` |
| 27 | `theorem` | [mul_assoc0](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/mul-assoc0.md) | 156 | `result-track:238f077ab692385e9ed7365b924fba4f38851133167fece6ad87aee1efb2ad7c` |
| 28 | `theorem` | [mul_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/mul-assoc.md) | 166 | `result-track:add8f1dd2e2835ac90978fcf8fbc26c71831bb1b5519fea888748b083472cb77` |
| 29 | `theorem` | [mul_left_distrib](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/mul-left-distrib.md) | 169 | `result-track:96981928cbd5de0b470f8abde5fe834c4d3a1df46fc91b6588e6a45f7c2d8932` |
| 30 | `theorem` | [mul_right_distrib](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/mul-right-distrib.md) | 172 | `result-track:457191beead8061e2272c85638b82e020dfd13685e40f2f00e0775467f6d7fd6` |
| 31 | `theorem` | [zero_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/zero-mul.md) | 176 | `result-track:83e98ee2447605762bbe37c5b113cea5eb5f4a496699a1c2fb48515a621e08ca` |
| 32 | `theorem` | [mul_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/mul-zero.md) | 180 | `result-track:e2ff36f745639a116d4385936ca0afd24c061a5f96832a96a7f4568d822df5f8` |
| 33 | `theorem` | [mul_scalar_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/mul-scalar-mul.md) | 184 | `result-track:1154f014d7e597c89c152663ebbf412257c31153edbe14ad87196716a38d5b09` |
| 34 | `def` | [slice](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/slice.md) | 191 | `declaration-track:92497d8e5393b09ed5a021f36e8e4b36fdbfd190c3d2d4380077bc4dbd179816` |
| 35 | `def` | [unitVec](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/unitvec.md) | 195 | `declaration-track:a681b6bb78e23848854bc57d00d5ddbfea57858e1de6db4c3be7638f68759c68` |
| 36 | `theorem` | [holor_index_cons_decomp](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/holor-index-cons-decomp.md) | 198 | `result-track:34702913491b298b0cb23ae390272ad41d9a358a4e8e53e96a99a49f2672f7d0` |
| 37 | `theorem` | [slice_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/slice-eq.md) | 205 | `result-track:3193cd514f1c1aea8a6292983ce951cb30065751514ddf5595b8c1977942031c` |
| 38 | `theorem` | [slice_unitVec_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/slice-unitvec-mul.md) | 217 | `result-track:90cf9cb1836a75bace7faba255874daf71d8fe4c776277a76cf9f2e6c4899516` |
| 39 | `theorem` | [slice_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/slice-add.md) | 223 | `result-track:5ef6d63a91adf594d92358a1c3f812a89a8a641ef02cca37ea667bdee4daa478` |
| 40 | `theorem` | [slice_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/slice-zero.md) | 227 | `result-track:030d1710bfaaa4d1878d6932543cd1c65a76a37cce758b5f704759891d4aada3` |
| 41 | `theorem` | [slice_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/slice-sum.md) | 230 | `result-track:fccd3d81fc836cd2b40de2a8bc2cdc784b9c6259b602b13840cd2dccd2191bde` |
| 42 | `theorem` | [sum_unitVec_mul_slice](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/sum-unitvec-mul-slice.md) | 241 | `result-track:ab4287c6185057c7b85e62c8290de12bb90eba5a03ec2d11f7568172730effda` |
| 43 | `inductive` | [CPRankMax1](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprankmax1.md) | 261 | `declaration-track:5bb5cd9b33626588728af2caf93c72374c25541e8c9baa2366a1f10620f81adb` |
| 44 | `inductive` | [CPRankMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprankmax.md) | 268 | `declaration-track:f88748dd101ef78d30062ab0a56ffaebc1f32e42e7f0d18671ef50bd6e725c90` |
| 45 | `theorem` | [cprankMax_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprankmax-nil.md) | 273 | `result-track:092a78fcfc2b2c3c807366c001a38bc4aece9b0040438801d890a8458ec31be3` |
| 46 | `theorem` | [cprankMax_1](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprankmax-1.md) | 277 | `result-track:653ffd3e2ae0cc6e0e6cd07969416ea9dd11bd9610ccbe7927a949321f65ff75` |
| 47 | `theorem` | [cprankMax_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprankmax-add.md) | 282 | `result-track:b8473331adb79f87f37ba057c87645ff5722904f414e5ae853d58b9e9b8f8203` |
| 48 | `theorem` | [cprankMax_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprankmax-mul.md) | 295 | `result-track:fc57d25ec14b5804c776559d9bd3bc1eaa0cb43f5999b94d56976dcce937825b` |
| 49 | `theorem` | [cprankMax_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprankmax-sum.md) | 305 | `result-track:4a319bba65709115350474b73b0eeebad4afd0b92371c7205805fe472624f00f` |
| 50 | `theorem` | [cprankMax_upper_bound](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprankmax-upper-bound.md) | 317 | `result-track:e1525422cbd5ccf7f57824efe5bb62b0655af56455f5cfa66c4b7c83240b4ee3` |
| 51 | `def` | [cprank](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprank.md) | 341 | `declaration-track:f340d421d949bf0c1c2573d784887427300435bfa51e371f794dc1b6ff702406` |
| 52 | `theorem` | [cprank_upper_bound](../../../../../../ComputerScience/TheoryOfData/DataStructures/HolorNamespacedPublic.lean/declarations/cprank-upper-bound.md) | 344 | `result-track:f5e728ac50ac9758a4158509dc0b65289eb609852c3b980b2e12e658ae7f2375` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c9c780edf6d180fcf2516ea28d4df2bc7ec90ced77f722bcd242556cb3c0493 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variantf0f560e9ce447f55b7ac4c9d9a7518cc323bd3107d8c6a109d5d767a4f3dee6c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Holor/Variantf0f560e9ce447f55b7ac4c9d9a7518cc323bd3107d8c6a109d5d767a4f3dee6c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
