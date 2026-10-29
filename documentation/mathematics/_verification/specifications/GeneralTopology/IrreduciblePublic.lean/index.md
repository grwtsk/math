# Verification target: Irreducible Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6faf624f1e5d57fec395926d9cc9b844e790cef7",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variantf871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IrreduciblePublic.lean/index.md) · [Full source](../../../../GeneralTopology/IrreduciblePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6faf624f1e5d57fec395926d9cc9b844e790cef7`.

Source path: `GRWTSK/Topology/GeneralTopology/Irreducible/Variantf871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Irreducible/Variantf871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.WithTopology` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPreirreducible](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible.md) | 46 | `declaration-track:1867c30b2246e39fbf41a032f133f720d0229b16e595746bfafa566f4c9356c4` |
| 2 | `def` | [IsIrreducible](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible.md) | 52 | `declaration-track:f36d797cbae16acf8926b0590496a179d17404917b79592fa28b1f78527ff80e` |
| 3 | `theorem` | [IsIrreducible.nonempty](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-nonempty.md) | 55 | `result-track:7ec6829835f26b72abfac75dfaf7233695a632df3a0d927e9d0b867b8f9f3b1b` |
| 4 | `theorem` | [IsIrreducible.isPreirreducible](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-ispreirreducible.md) | 58 | `result-track:24a039294141c5b11606056af3bd8398d36b5047b42f357d50a72c5009211362` |
| 5 | `theorem` | [isPreirreducible_empty](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-empty.md) | 61 | `result-track:04c1a9d10da0b50489bd4fe816ad6ee9ccf917f764263f7cdc4522fa91b5ac8e` |
| 6 | `theorem` | [Set.Subsingleton.isPreirreducible](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/set-subsingleton-ispreirreducible.md) | 64 | `result-track:287dbebd0c8bf203cae8baf29a73643194ff6a4726399e78fd9f31c87b3f2aa3` |
| 7 | `theorem` | [isPreirreducible_singleton](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-singleton.md) | 67 | `result-track:beff6c818cd8b70450637f7e9ddce6203b327288e2ca4f714f8ee47edeb47af9` |
| 8 | `theorem` | [isIrreducible_singleton](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-singleton.md) | 70 | `result-track:d8f4ff11b7a2c38ffe4e765a8ebda62258f58402e6d3d236546a95675c86af2f` |
| 9 | `theorem` | [isPreirreducible_iff_closure](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-iff-closure.md) | 73 | `result-track:30fb8ca7c8237d473f07047c6a6fb998f1e277e90910a1f630a9853b7b9b36da` |
| 10 | `theorem` | [isIrreducible_iff_closure](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-iff-closure.md) | 79 | `result-track:c92c539b5c1b7ccca3f39f0f38e1c96b5c80dd4bea2fdd0a1d54cf855663af97` |
| 11 | `theorem` | [exists_preirreducible](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/exists-preirreducible.md) | 86 | `result-track:b351bf89a024d740a8b1ad9e5a853c21af4120470a6423d899a0f40f66f9e549` |
| 12 | `def` | [irreducibleComponents](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblecomponents.md) | 107 | `declaration-track:548529832a54abcbb127b933ef34e8b124b14364a4c53d6fe0fae73706b7205f` |
| 13 | `theorem` | [isClosed_of_mem_irreducibleComponents](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isclosed-of-mem-irreduciblecomponents.md) | 111 | `result-track:a04a4c9cebd6de9f9c763ba6b28d14a18d18d0f4a4721258fedddf8187180262` |
| 14 | `theorem` | [irreducibleComponents_eq_maximals_closed](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblecomponents-eq-maximals-closed.md) | 116 | `result-track:2ad5c58b4c59d6d5015d3658164b257c649f81b02b97bdfe21583a84fde453a9` |
| 15 | `lemma` | [exists_mem_irreducibleComponents_subset_of_isIrreducible](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/exists-mem-irreduciblecomponents-subset-of-isirreducible.md) | 128 | `result-track:2630319c2211b9887cb0f50d9af66f562ed8b52f88fa96f96b7c833f7b9f0685` |
| 16 | `def` | [irreducibleComponent](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblecomponent.md) | 138 | `declaration-track:25ffedd677d51e68a1f4fc898203e75365204fd5ab5bea8302013eca634d4d38` |
| 17 | `theorem` | [irreducibleComponent_property](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblecomponent-property.md) | 141 | `result-track:6e165531899ba4dee4ab452c0530dc6e29e78d45e7b83c2ab0dfa05eca0f8d88` |
| 18 | `theorem` | [mem_irreducibleComponent](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/mem-irreduciblecomponent.md) | 148 | `result-track:b470db28427c1091a48b87ad2f616d57f824f6a7ac33ef9b4239d807b403bd15` |
| 19 | `theorem` | [isIrreducible_irreducibleComponent](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-irreduciblecomponent.md) | 151 | `result-track:27b5d2b511285f7bba74ad1d4b6cac4857aa4646b97d2a8adfd4e8b71d7c222e` |
| 20 | `theorem` | [eq_irreducibleComponent](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/eq-irreduciblecomponent.md) | 154 | `result-track:8889fd4eb2adbe8b2c9ea7c7bdaadd537195c55a792edcb6c2da4ec4f2e4f04b` |
| 21 | `theorem` | [irreducibleComponent_mem_irreducibleComponents](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblecomponent-mem-irreduciblecomponents.md) | 158 | `result-track:aa3030373ee7bf7c91ec7dcf6d45fc19f3822c7c5409c88da6f09209efb21f2b` |
| 22 | `theorem` | [isClosed_irreducibleComponent](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isclosed-irreduciblecomponent.md) | 162 | `result-track:78c405377a2cf31da45f2d9d5b8b4d042298db8f6f2b1b96feb9612666b65e1d` |
| 23 | `class` | [PreirreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/preirreduciblespace.md) | 167 | `declaration-track:22801731cf213d8f6481c54b011d2e18aff277db4ea2a27ed4eff0c6fb7d4022` |
| 24 | `class` | [IrreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblespace.md) | 174 | `declaration-track:d95dd4953d78e8a4cfa2beb65351ae2003598d005ce96d82001ffd2eeb359e6d` |
| 25 | `theorem` | [IrreducibleSpace.isIrreducible_univ](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblespace-isirreducible-univ.md) | 180 | `result-track:ea1459ebb83428ab306527981aa8b1ddbc808ca53f2627cd6818d181a863c131` |
| 26 | `theorem` | [irreducibleSpace_def](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblespace-def.md) | 184 | `result-track:c9baf0e80a7609d823e8e2b8e745b6b126e0d2f0baf94238e7077be70186fdd5` |
| 27 | `lemma` | [PreirreducibleSpace.of_forall_nonempty_inter](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/preirreduciblespace-of-forall-nonempty-inter.md) | 190 | `result-track:1a0d5dabb4cbd5adf1f8f8b75147429bad6d8fcccbcf39866df486cadfd5171b` |
| 28 | `theorem` | [nonempty_preirreducible_inter](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/nonempty-preirreducible-inter.md) | 195 | `result-track:3e19a5e6199a4e1a6a18d89f7aeaf69b19248fd7da37e45efc437cfd66b16042` |
| 29 | `theorem` | [IsOpen.dense](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isopen-dense.md) | 201 | `result-track:3f5d5b5d19138803aa8092114f8346eb706f2cb22c1b40988080fa6f2799b3ac` |
| 30 | `lemma` | [IsOpenMap.denseRange_of_isPreirreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isopenmap-denserange-of-ispreirreduciblespace.md) | 205 | `result-track:44eeb133d019df05fa8b2fa87ca212e0f7b3dddd013b26f7459f6d122f845bf0` |
| 31 | `theorem` | [IsPreirreducible.image](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-image.md) | 210 | `result-track:4c36e4c44ed4322ea22e1201f1461f6bdf0f33e15734ffa225c9eb32b0b4a390` |
| 32 | `theorem` | [IsIrreducible.image](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-image.md) | 228 | `result-track:8644d2b9be0cb5e667e66a358e98317090023be62e0c9a001ebd86ae929309be` |
| 33 | `theorem` | [Subtype.preirreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/subtype-preirreduciblespace.md) | 232 | `result-track:5812324bafbbacd986eb8dca1465f288163d74492feb77698270436181b78ccd` |
| 34 | `theorem` | [Subtype.irreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/subtype-irreduciblespace.md) | 238 | `result-track:7cddfcf5da158b1d2185814e232bfa69381c9f7b5dfccbe3a23bfc1eb42e9e08` |
| 35 | `lemma` | [IsPreirreducible.of_subtype](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-of-subtype.md) | 243 | `result-track:dbe935963dfae6ef2f830018ef161645b2bd5032bd6e5fd2458415a393b0277d` |
| 36 | `lemma` | [IsIrreducible.of_subtype](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-of-subtype.md) | 248 | `result-track:613cf0d47118c094e4e936419a90e9b408c3c8fc519876b42d96dbfc0fcbe0e9` |
| 37 | `theorem` | [isPreirreducible_iff_preirreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-iff-preirreduciblespace.md) | 251 | `result-track:67c6312060fe0572a7f4c6739a02bbf5e4c408858d4b36e3e3b066dd4050247e` |
| 38 | `theorem` | [isIrreducible_iff_irreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-iff-irreduciblespace.md) | 255 | `result-track:0273a4acd77e59f5d3d548e5d99b6d26999bc1d906b3b536c1683c327d6f8fe8` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/instance.md) | 259 | `declaration-track:244b52e0cc5d35962d1eb6ccb70d08499161a08ff9e93a7b7148cd5f1124d0ab` |
| 40 | `instance` | [(anonymous)](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/instance-source-edition-2.md) | 262 | `declaration-track:53cf057978aac02ee0033743b529bd56a741335d02ff260f845ffe9cc08c46bd` |
| 41 | `instance` | [(anonymous)](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/instance-source-edition-3.md) | 268 | `declaration-track:9b26c80246d2e7c818fc7380f6d27532606276c1c7d48c392d4804fb0e43c6d0` |
| 42 | `theorem` | [irreducibleComponents_eq_singleton](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblecomponents-eq-singleton.md) | 275 | `result-track:ba9dccec114ec9018d0f384e23c6fd8162cca20d104e28a02f2c175f593a45c8` |
| 43 | `theorem` | [isIrreducible_iff_sInter](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-iff-sinter.md) | 284 | `result-track:34ea471e368c48072b332d94afe1cd1ecd9febc0d32c0506f401cb9195067ffc` |
| 44 | `theorem` | [isPreirreducible_iff_isClosed_union_isClosed](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-iff-isclosed-union-isclosed.md) | 301 | `result-track:49003812bc45646d01c256198a9dcde8dee999f52b7de332c76463aaa4830d7e` |
| 45 | `theorem` | [isIrreducible_iff_sUnion_isClosed](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-iff-sunion-isclosed.md) | 312 | `result-track:ea3df2a5994434a1304395ca6f6b3a7820d27863474be64fc7f44f5ae2342bd0` |
| 46 | `theorem` | [subset_closure_inter_of_isPreirreducible_of_isOpen](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/subset-closure-inter-of-ispreirreducible-of-isopen.md) | 325 | `result-track:6866e6a40440a602abb784e37738096b460958b118cc5913764b570f2c546517` |
| 47 | `theorem` | [isPreirreducible_iff_subset_closure_inter_open](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-iff-subset-closure-inter-open.md) | 334 | `result-track:6b184cfe1612fd5d4a8321a15ae6df7fc05f78c27eed06db69df0fbe12a1ac49` |
| 48 | `theorem` | [preirreducibleSpace_iff_open_dense](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/preirreduciblespace-iff-open-dense.md) | 347 | `result-track:88a4172638dee40220601b918eb84dc2e5aaa7630ce06e03e1472d3127e3d9e2` |
| 49 | `theorem` | [sUnion_irreducibleComponents](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/sunion-irreduciblecomponents.md) | 353 | `result-track:a0e0d19823fd5ea83b2345054193d2c5800d3e34ba090fc6649464c3b7c4ac01` |
| 50 | `theorem` | [mem_of_subset_sUnion_irreducibleComponents](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/mem-of-subset-sunion-irreduciblecomponents.md) | 357 | `result-track:3cf6e2a40ba6866947aa2de48ec675ec507f1b9b94bb343a1099c45ccfd45472` |
| 51 | `theorem` | [closure_sUnion_irreducibleComponents_sdiff_singleton](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/closure-sunion-irreduciblecomponents-sdiff-singleton.md) | 366 | `result-track:c298132b7af2d52a5e5bb154c5fc382018594aff5002b7bb7e6fc7a1de3ba3fd` |
| 52 | `theorem` | [IsPreirreducible.subset_irreducible](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-subset-irreducible.md) | 384 | `result-track:7fb6ee97d0e8d773e0bcd4699b5a2359cf25cb999ebd53cf6e5fb894919ba645` |
| 53 | `theorem` | [IsPreirreducible.open_subset](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-open-subset.md) | 400 | `result-track:c244bdfe9f2fff621f573ce53dbbaf85fc8ec2ff43d3618044e3521366652213` |
| 54 | `theorem` | [IsPreirreducible.interior](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-interior.md) | 405 | `result-track:149990c779e36a2775487de7ade32a797ac1690dc98f7f2ae9c2008007fad4a6` |
| 55 | `lemma` | [IsPreirreducible.preimage_of_dense_isPreirreducible_fiber](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-preimage-of-dense-ispreirreducible-fiber.md) | 413 | `result-track:18c38922b14a2f168c01b86c24fc2b35777f05a9bdf59caff9faf66cb2ce5170` |
| 56 | `lemma` | [IsPreirreducible.preimage_of_isPreirreducible_fiber](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-preimage-of-ispreirreducible-fiber.md) | 425 | `result-track:c634b4af3a885dec29a4a19bf84a57e22315bf8e1aa3c04c125b808c00048f59` |
| 57 | `lemma` | [IsPreirreducible.preimage](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/ispreirreducible-preimage.md) | 432 | `result-track:b51d97aa9fa61070a67cd2a9915ea486eaf134276b34ba2218c1cdaa0699447d` |
| 58 | `lemma` | [IsIrreducible.preimage_of_isPreirreducible_fiber](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-preimage-of-ispreirreducible-fiber.md) | 437 | `result-track:f0bae8e61b3835a0ff518d287374f7cff7ce3ef28157aababe98f511d309539e` |
| 59 | `lemma` | [IsIrreducible.preimage](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isirreducible-preimage.md) | 445 | `result-track:531bc8be3641538d75213efbe837d2e393acaeb72a7eec7a445c81d538027446` |
| 60 | `lemma` | [Topology.IsOpenEmbedding.preirreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/topology-isopenembedding-preirreduciblespace.md) | 450 | `result-track:08379f2e9b1cd0946ec9cfc47ca8d3b3658b0b43808ac2f4329cf0806018798d` |
| 61 | `lemma` | [Topology.IsOpenEmbedding.irreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/topology-isopenembedding-irreduciblespace.md) | 457 | `result-track:2787df54adb18ad408666eff0e6761de45b60bf00f5ff53fbabfc9c5a6dda06a` |
| 62 | `lemma` | [preimage_mem_irreducibleComponents_of_isPreirreducible_fiber](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/preimage-mem-irreduciblecomponents-of-ispreirreducible-fiber.md) | 463 | `result-track:3e86ef7c0b5e7384964adc8a70370ff0230d725598fd78bd99f30afabd39a0a3` |
| 63 | `lemma` | [preimage_mem_irreducibleComponents](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/preimage-mem-irreduciblecomponents.md) | 473 | `result-track:dd39501b03c14fae4d53cf6fd8273c4791667961baceeb3c89f3386e43855c90` |
| 64 | `lemma` | [closure_image_preimage_of_isPreirreducible](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/closure-image-preimage-of-ispreirreducible.md) | 479 | `result-track:fc3396f5036edf7f04679e7ce8dd7ee3eaebf044646c8268ed6a074bb8d6cfc9` |
| 65 | `lemma` | [image_mem_irreducibleComponents_of_isPreirreducible_fiber](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/image-mem-irreduciblecomponents-of-ispreirreducible-fiber.md) | 493 | `result-track:2a5850b8e3bb8959089865d96c8f516cd8a6899557f82cab0bcd4baaa0ae49e8` |
| 66 | `def` | [irreducibleComponentsEquivOfIsPreirreducibleFiber](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/irreduciblecomponentsequivofispreirreduciblefiber.md) | 505 | `declaration-track:f4f7e30177ff726b10b4abd1b3dfe2b1359687d42281078823ebf0138a7c0bd4` |
| 67 | `lemma` | [IsDiscrete.subsingleton_of_isPreirreducible](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/isdiscrete-subsingleton-of-ispreirreducible.md) | 524 | `result-track:077df5e959a4db6647055a551a407c896f6b6e671ee1bb9ea159d46aec72b24f` |
| 68 | `lemma` | [Function.Surjective.preirreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/function-surjective-preirreduciblespace.md) | 534 | `result-track:0576c18a7a51395883effe4166981d1615cef510bc5060108796cd4e0cf5d7e5` |
| 69 | `lemma` | [Function.Surjective.irreducibleSpace](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/function-surjective-irreduciblespace.md) | 540 | `result-track:46c046225c041d66d1ca6107d11429bc110b2e8f73e03d9ae4dbc3e850479cf3` |
| 70 | `lemma` | [Homeomorph.irreducibleSpace_iff](../../../../GeneralTopology/IrreduciblePublic.lean/declarations/homeomorph-irreduciblespace-iff.md) | 547 | `result-track:71754a352b443fa83c7010c874ad52f6140cf4c6faa4131048c8583d32d624e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7248f52df59b5e80bb4d060282b1cba5e2966538eea8b0927d49c8676497cb1f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Irreducible/Variantf871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Irreducible/Variantf871d16345c8f6a9808bbe9d4f137d1e551dccdd13681d5f2a937575f494b4cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
