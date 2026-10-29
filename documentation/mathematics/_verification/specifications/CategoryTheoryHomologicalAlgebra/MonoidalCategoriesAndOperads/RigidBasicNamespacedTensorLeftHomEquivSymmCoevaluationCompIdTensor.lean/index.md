# Verification target: Rigid Basic Namespaced Tensor Left Hom Equiv Symm Coevaluation Comp Id Tensor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9553cc6d6a583fc0c6933e17c2595f2c34c3f031",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9553cc6d6a583fc0c6933e17c2595f2c34c3f031`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.CoherenceLemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExactPairing](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/exactpairing.md) | 83 | `declaration-track:0743c29f3f76431ef3c2871ed980a168a08cb5fa75ab601d0994de0baa82c468` |
| 2 | `def` | [coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/coevaluation.md) | 104 | `declaration-track:539868d4eaa5fc1881c7ccb0facc9a8f4989ea8b06678cbe576538829b204633` |
| 3 | `def` | [evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/evaluation.md) | 105 | `declaration-track:07073ef0b1a8a987ee6f33ed402e02eaedee67ce34e09aac0585c0fda4f3b289` |
| 4 | `lemma` | [coevaluation_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/coevaluation-evaluation.md) | 110 | `result-track:53ebc5ec8bc5bf67625e6091eaf2cb361312005114056ceafa4a630c9240fcf6` |
| 5 | `lemma` | [evaluation_coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/evaluation-coevaluation.md) | 114 | `result-track:fbb041ee2f12e03ba20ca6d2ac2094c138659d6efd1ff33066124f6b7cf731c2` |
| 6 | `instance` | [exactPairingUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/exactpairingunit.md) | 123 | `declaration-track:a1b60b8458958f65a19122f8b02c623863922b7ec10cf4015bb88124879d013d` |
| 7 | `class` | [HasRightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/hasrightdual.md) | 131 | `declaration-track:0d8c8fe8165f23efa368da2f0e0ea953151f4c866342dc57af6059d57c30883c` |
| 8 | `class` | [HasLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/hasleftdual.md) | 137 | `declaration-track:f27917d645f64ee8a85c4d31b6816f0dab3930723cba07c77d287c1184a4d660` |
| 9 | `instance` | [hasRightDualUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/hasrightdualunit.md) | 150 | `declaration-track:c9d1a87f0bf261feb3f3f6796cc5e9d46a40ceddc4c1c531a5153845b23aceeb` |
| 10 | `instance` | [hasLeftDualUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/hasleftdualunit.md) | 154 | `declaration-track:7c0fc7052f26710aedc28d93471176200e2b01e9ca81c590918e70aa00104971` |
| 11 | `instance` | [hasRightDualLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/hasrightdualleftdual.md) | 158 | `declaration-track:75e239ee99acf79bbe431c096cfb2a453e7123c77620404ba47b8faed1eb4acc` |
| 12 | `instance` | [hasLeftDualRightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/hasleftdualrightdual.md) | 162 | `declaration-track:4c959b83f1b819e1007639d11addf4ffeb6b8f3eb54b98d9c746a53d5b754e79` |
| 13 | `theorem` | [leftDual_rightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/leftdual-rightdual.md) | 167 | `result-track:063f3d9a6e033060605a522ecc2b310fe448f8f1920ee6999f7dee2f1a4dfa4c` |
| 14 | `theorem` | [rightDual_leftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/rightdual-leftdual.md) | 172 | `result-track:7305d9a78d49f0501dfa7416662e25be7ac3f918200268e7b4b2c8e165f11a42` |
| 15 | `def` | [rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/rightadjointmate.md) | 177 | `declaration-track:ea43f8d056bf1eb3da01a9d77098e109a37214b55dab30e3e4e394f87abfa3e3` |
| 16 | `def` | [leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/leftadjointmate.md) | 182 | `declaration-track:ef23b838c12ee0e413b4ea2a59314170ba97d31496d7136a3f73c056c2752a5d` |
| 17 | `theorem` | [rightAdjointMate_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/rightadjointmate-id.md) | 190 | `result-track:8df51a3dddb3a8d10a16c8f7d33a51fb4e6a1d1406029efef4999b1f76859267` |
| 18 | `theorem` | [leftAdjointMate_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/leftadjointmate-id.md) | 196 | `result-track:90264d1ac540ae1300aa93f7f9052f4ef1cdc4d5d5d50f525fbfabdf1e6517e4` |
| 19 | `theorem` | [rightAdjointMate_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/rightadjointmate-comp.md) | 201 | `result-track:b4f114e703da1d2a4b6cc00eb9be20966a8c131b1fc816280d54c8c3c2a68f3d` |
| 20 | `theorem` | [leftAdjointMate_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/leftadjointmate-comp.md) | 213 | `result-track:d6369becbfdd2d258ba3623adf1c9c189997ff2a2ee90bae2e062188431bfdaf` |
| 21 | `theorem` | [comp_rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/comp-rightadjointmate.md) | 226 | `result-track:f4f947a464776945042d5c9f58c8b8af84f22d5e0c4b95ea152924043e5e5bc8` |
| 22 | `theorem` | [comp_leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/comp-leftadjointmate.md) | 264 | `result-track:c57eeb58a9cd318b2e73022a1700c7a19f8f09433d6159d8a8f3d9aac09b01f4` |
| 23 | `def` | [tensorLeftHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorlefthomequiv.md) | 309 | `declaration-track:9973d2dd5e0fa3b05a1afca64be5451575090da615249f31a48b6b123ae3fb35` |
| 24 | `def` | [tensorRightHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorrighthomequiv.md) | 348 | `declaration-track:672f7b00afaaae43f3c0f18d04ef813fb320187fab4902aae85e127a34975f8e` |
| 25 | `theorem` | [tensorLeftHomEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorlefthomequiv-naturality.md) | 383 | `result-track:8300c1a06df33a5c9e41743372e682fadb24cbd364b7f892145838d0db57bfce` |
| 26 | `theorem` | [tensorLeftHomEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorlefthomequiv-symm-naturality.md) | 390 | `result-track:6705810877faf9b5f48514c522ad7cc6cd94f32735492a5277751f1e368a7ae2` |
| 27 | `theorem` | [tensorRightHomEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorrighthomequiv-naturality.md) | 398 | `result-track:59f0ed09450c368969e5b58f2d9f9dc4d71bf99a4d9ceba4529086f030385eee` |
| 28 | `theorem` | [tensorRightHomEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorrighthomequiv-symm-naturality.md) | 405 | `result-track:e27ee6b112b9e33949889a77e5b54d53895b883d3744fa6924132f249eac39a1` |
| 29 | `def` | [tensorLeftAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorleftadjunction.md) | 416 | `declaration-track:03813498e4e5ff24eeb8a66d446b67fc8822b4295a892edcda78a494fb230d25` |
| 30 | `def` | [tensorRightAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorrightadjunction.md) | 426 | `declaration-track:7f9cd1890354716deb3fd24dd2e8d41981fd898479c9000ad79f3b474149865f` |
| 31 | `def` | [closedOfHasLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/closedofhasleftdual.md) | 444 | `declaration-track:4d0f57be02fd7ad60781981d8fcba6d12700dad1790f1629b3b32af80d84b6e6` |
| 32 | `theorem` | [tensorLeftHomEquiv_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorlefthomequiv-tensor.md) | 449 | `result-track:d6306f1dcd15058dbd320b431e8d778b062771bba12243c2e20d20c1811edc33` |
| 33 | `theorem` | [tensorRightHomEquiv_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorrighthomequiv-tensor.md) | 462 | `result-track:c8fd55a09714715b13b952168d511b77cb1cfb2babefaab22393bda08d20b66a` |
| 34 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_id_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorlefthomequiv-symm-coevaluation-comp-id-tensor.md) | 476 | `result-track:64c9ef7c0a2179a5bd67b9397dc105d0cb2b693e4969ee40d39259b9de374a5c` |
| 35 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_tensor_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorlefthomequiv-symm-coevaluation-comp-tensor-id.md) | 487 | `result-track:d92d0cc7f1bc98dc3ac46a148873386f6dc2fd78b645b819ea578a9dfa0a5421` |
| 36 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_id_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorrighthomequiv-symm-coevaluation-comp-id-tensor.md) | 495 | `result-track:02cad90b08e8b3ddafd4eccf45f0d3c047ad86b3af4dab264de5540245088423` |
| 37 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_tensor_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorrighthomequiv-symm-coevaluation-comp-tensor-id.md) | 503 | `result-track:eba2f096f020e9500e3921190de34685080225f954f559116294071c36260312` |
| 38 | `theorem` | [tensorLeftHomEquiv_id_tensor_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorlefthomequiv-id-tensor-comp-evaluation.md) | 514 | `result-track:3a1b6a5c34d5e0dc1c79376f05a052604b27a10573bd6e78a6d46a0b541c4b62` |
| 39 | `theorem` | [tensorLeftHomEquiv_tensor_id_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorlefthomequiv-tensor-id-comp-evaluation.md) | 525 | `result-track:c58925a74d2d4684a8181d55ac129468a3e6a3449193947956fa98abce0e92f8` |
| 40 | `theorem` | [tensorRightHomEquiv_id_tensor_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorrighthomequiv-id-tensor-comp-evaluation.md) | 532 | `result-track:8599602d7d9afd3d91a7910eed39fec14909fd08d5e36914e0c9861726471ec8` |
| 41 | `theorem` | [tensorRightHomEquiv_tensor_id_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/tensorrighthomequiv-tensor-id-comp-evaluation.md) | 539 | `result-track:986a35af93725a1309f2719a3a4cb1d856f43abc99b3dafff3fcd3b5de1ce471` |
| 42 | `theorem` | [coevaluation_comp_rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/coevaluation-comp-rightadjointmate.md) | 550 | `result-track:193b3f32ae262cd6db61c0215a5747fd9b8ba24985dcd56d4d47ddc0b7819a69` |
| 43 | `theorem` | [leftAdjointMate_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/leftadjointmate-comp-evaluation.md) | 556 | `result-track:94647a71f1b92dc016eded0af932ce2cda466ed7020fa8120312fc15b8c9c2e5` |
| 44 | `theorem` | [coevaluation_comp_leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/coevaluation-comp-leftadjointmate.md) | 562 | `result-track:8e4ac648dbf8c4b5fb7cbab19ae3232a5a5e999f6cb0928a62daa26763debff4` |
| 45 | `theorem` | [rightAdjointMate_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/rightadjointmate-comp-evaluation.md) | 568 | `result-track:28775fdec7a5f7cb968b4acf16823ac7d7056bc576a3b62ccb5d3feed99ac566` |
| 46 | `def` | [exactPairingCongrLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/exactpairingcongrleft.md) | 575 | `declaration-track:f91c8ddcc047c72abb7bac56d17414d42ec7072a144696851214b4189e47f399` |
| 47 | `def` | [exactPairingCongrRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/exactpairingcongrright.md) | 599 | `declaration-track:2f7915dd74551add56c704d091c2044a678565a28ca0dc72f790930224dd66c6` |
| 48 | `def` | [exactPairingCongr](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/exactpairingcongr.md) | 623 | `declaration-track:1336cf4339669a45385c0e2892b77fcb2f659ae3bc96bab8e6362e0187bfb077` |
| 49 | `def` | [rightDualIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/rightdualiso.md) | 630 | `declaration-track:31bfb357ecfa964c02a908462da32a85b612c99e417720271727ed5617d6eb2f` |
| 50 | `def` | [leftDualIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/leftdualiso.md) | 645 | `declaration-track:16ea792dc0378d7031be30426a20d14788d774d230bb5a38956caa22e471b9ff` |
| 51 | `theorem` | [rightDualIso_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/rightdualiso-id.md) | 660 | `result-track:c21394cd140d7fbb606771a1213c2ce42dd9c23b163fa4fabfc70a8f18b87cfe` |
| 52 | `theorem` | [leftDualIso_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/leftdualiso-id.md) | 666 | `result-track:85f70a8baca667576357c2eee5036e1e0439fdba48efb860c91cb466cb714340` |
| 53 | `class` | [RightRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/rightrigidcategory.md) | 672 | `declaration-track:2b08a24f46b6df7df5ebae0024e9057c0ab3cd0de2a001033cebf9fb74c6ae56` |
| 54 | `class` | [LeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/leftrigidcategory.md) | 677 | `declaration-track:f8616eaa9e0085e0a173961031e9a5ee4304587eb4a7467bb7f26ea4596df2e8` |
| 55 | `def` | [monoidalClosedOfLeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/monoidalclosedofleftrigidcategory.md) | 692 | `declaration-track:25623adccfb34a1307b889bb7b7a3e4f3e9c780955446f697893aac26e4d4d50` |
| 56 | `class` | [RigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedTensorLeftHomEquivSymmCoevaluationCompIdTensor.lean/declarations/rigidcategory.md) | 698 | `declaration-track:d3a61b26a0bb9982bea63848fd5a714ac6657907451247a313e4d3f827f6fbd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed7071ed6d4710ef23ad1855dbfead1eb430abb8365de41288e04a4bedb0578c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9b1872b3290a7d65679e25b180999ca62f2978a8dd0e699edc3594db2cb8d3c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
