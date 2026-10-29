# Verification target: Rigid Basic Namespaced Coevaluation Evaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1548317dc32c8b5b0d430e1dda5a62d3f5c5e06`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Monoidal.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExactPairing](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/exactpairing.md) | 81 | `declaration-track:88770eb6919161c696f514bd846ac5d7133e709f05014969c7559a6cbc22143e` |
| 2 | `def` | [coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/coevaluation.md) | 107 | `declaration-track:83565c60ed9b060bd9fc928b9f360ef52d7541dfdd7f56cd93cc0f00cab25412` |
| 3 | `def` | [evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/evaluation.md) | 110 | `declaration-track:89482e5543bbcc0e73fe4a36ecb876209e49e23ed287e9c090dde9d4815d36aa` |
| 4 | `lemma` | [coevaluation_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/coevaluation-evaluation.md) | 115 | `result-track:91eda7c79a21ce11ee58fee864a16770bf2aee47e46ce14cce78c0169ca0828b` |
| 5 | `lemma` | [evaluation_coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/evaluation-coevaluation.md) | 119 | `result-track:399018e660e1c9dc3eae801af75c971c4a39a32cb58b0776ed36f2c5d246526c` |
| 6 | `lemma` | [coevaluation_evaluation''](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/coevaluation-evaluation-source-edition-2.md) | 123 | `result-track:f973a90b3a1eb82398082dab5bf60d31a0d90110250009762e18a2f8c3d7a34d` |
| 7 | `lemma` | [evaluation_coevaluation''](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/evaluation-coevaluation-source-edition-2.md) | 127 | `result-track:6065c72683abf9f3ef882e7584092d3269ccd529803196fb2dffc616f28656b6` |
| 8 | `instance` | [exactPairingUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/exactpairingunit.md) | 136 | `declaration-track:866bbd7a91c4266f98647a07fc95ad63e6db20473b2d0bbfcdb21ee291da7879` |
| 9 | `class` | [HasRightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/hasrightdual.md) | 143 | `declaration-track:792456a5f97f45147060361a2fcfb008918f1c489b091756a1c47d8d42dfbed3` |
| 10 | `class` | [HasLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/hasleftdual.md) | 149 | `declaration-track:a174778e7bae3b2813765e7fbb3ba2572fe015ae680828f81b097570526fbf25` |
| 11 | `instance` | [hasRightDualUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/hasrightdualunit.md) | 167 | `declaration-track:c96c4142ac9010b813fcd7b149240c82cc108e0f71d462ac017f61aa86dea8a2` |
| 12 | `instance` | [hasLeftDualUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/hasleftdualunit.md) | 170 | `declaration-track:380499aca76a5e2cd4031c45d0e8c1587293155b93f1af3b7f9b98603feb3d79` |
| 13 | `instance` | [hasRightDualLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/hasrightdualleftdual.md) | 173 | `declaration-track:08b628542a1157e1959acef7a50f9f1afa7af5ed0efc8570e2f487fbbc502ef0` |
| 14 | `instance` | [hasLeftDualRightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/hasleftdualrightdual.md) | 176 | `declaration-track:cb8098b42c1dca2384b72e1c38f9330763942c8be912022d26c37c80d28e279d` |
| 15 | `theorem` | [leftDual_rightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/leftdual-rightdual.md) | 180 | `result-track:7b6a1eb955788dcb94164932471daf89a10b19e94247cdd1e15b6958d213b250` |
| 16 | `theorem` | [rightDual_leftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/rightdual-leftdual.md) | 184 | `result-track:16b4347fe1c489afbb89a118a80eb4d912862c9ea4da5c822fa92b890b92726d` |
| 17 | `def` | [rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/rightadjointmate.md) | 188 | `declaration-track:338b931867fe9bdebf27a61a957b9b4126f41af1f4067af9e0ca839ae2319263` |
| 18 | `def` | [leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/leftadjointmate.md) | 192 | `declaration-track:a3655703ddaf0c27f8e6346c696cf6c8e0ed7f12651ddd5495aac204206e70a0` |
| 19 | `theorem` | [rightAdjointMate_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/rightadjointmate-id.md) | 199 | `result-track:f671b259f1564ae4e5daf3009e9c3f09fa7cf85c459f8c916c728c3f46c637c8` |
| 20 | `theorem` | [leftAdjointMate_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/leftadjointmate-id.md) | 203 | `result-track:deee27e3f6816d2b6785e20832de29cd241eacfcae408368593dbe868b97e508` |
| 21 | `theorem` | [rightAdjointMate_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/rightadjointmate-comp.md) | 206 | `result-track:c1949781fa9e1fafc745254ec6c2539e766a95761e8d57688a1010367b27c991` |
| 22 | `theorem` | [leftAdjointMate_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/leftadjointmate-comp.md) | 217 | `result-track:38e87362fed497ddfe67e973b1cece434721b389eb7b8263413681ddc95cdc9f` |
| 23 | `theorem` | [comp_rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/comp-rightadjointmate.md) | 230 | `result-track:f6cd70424bcda8d89cd9328f6204bad4a63fbfca2996212cfacf67fa256695a9` |
| 24 | `theorem` | [comp_leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/comp-leftadjointmate.md) | 251 | `result-track:5b320b824134458985fecd09c54a66aa48d86a1fe79ba4e51b8fe6872e714949` |
| 25 | `def` | [tensorLeftHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorlefthomequiv.md) | 279 | `declaration-track:0674a3680dd7d03f3d060aa44c9fc814cc011c9f56ad61c4451729bf1630176b` |
| 26 | `def` | [tensorRightHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorrighthomequiv.md) | 303 | `declaration-track:3abd4eddb0f8913e66e28ed1646533570abae99c3cc1ac01aeab564f4b109db8` |
| 27 | `theorem` | [tensorLeftHomEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-naturality.md) | 323 | `result-track:ab65f41c61eb241f300e37ae5aa09c228b654ba65f6f5f266f429581a22fac44` |
| 28 | `theorem` | [tensorLeftHomEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-symm-naturality.md) | 328 | `result-track:1520952e33e2b30e98a61aea9212f00d585af0bfe24d48f4b2fc6e68b9d75582` |
| 29 | `theorem` | [tensorRightHomEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-naturality.md) | 334 | `result-track:baed4996a3c748b2ed601e906029d60cafac308d33ac30ac341646b9864f4d27` |
| 30 | `theorem` | [tensorRightHomEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-symm-naturality.md) | 339 | `result-track:fc9fe1dbc00129b500e85c8ebe2a3d2fb6d6081ca5bb397dac5f2b6724bb99d9` |
| 31 | `def` | [tensorLeftAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorleftadjunction.md) | 348 | `declaration-track:7b5657357c858a0d5367a9946326196fbfbed081ddf7de4ff330356293fc3f25` |
| 32 | `def` | [tensorRightAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorrightadjunction.md) | 357 | `declaration-track:a122875928c50a9b86c45f911ac10ea1dcbe76d677ee4453b40a1eac7b55f12d` |
| 33 | `def` | [closedOfHasLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/closedofhasleftdual.md) | 374 | `declaration-track:fb923ec10ee14464c82856fecca10b01427f784a3bc3657d95f4e9aacefcda85` |
| 34 | `theorem` | [tensorLeftHomEquiv_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-tensor.md) | 379 | `result-track:e42efa4a6ac18b829898a1e3fb7c5727681acdc404eca4fccb7659e9fbbae0de` |
| 35 | `theorem` | [tensorRightHomEquiv_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-tensor.md) | 386 | `result-track:21e2ab32578cf8e01885069907785a4cee48f248cbbbb28e466419a9c52274b5` |
| 36 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-symm-coevaluation-comp-whiskerleft.md) | 393 | `result-track:6a2d0770587d41466be4edc037571788cb7af068e7d1906e4830a5c56385a9ed` |
| 37 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-symm-coevaluation-comp-whiskerright.md) | 403 | `result-track:02d967cc4118b8c15db8c456b722dced751fdbb933e308b76b8f88a4973df64f` |
| 38 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-symm-coevaluation-comp-whiskerleft.md) | 410 | `result-track:9e77077f088516c821edccbf3f4a6b7b65082ad29547d2f6872c7dda2a1444d5` |
| 39 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-symm-coevaluation-comp-whiskerright.md) | 417 | `result-track:e363be0176e2f9b47af234239d42703c605681ae526efe3298bd96f0e76b187b` |
| 40 | `theorem` | [tensorLeftHomEquiv_whiskerLeft_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-whiskerleft-comp-evaluation.md) | 428 | `result-track:f9cde7bacbd442a4aecaeb4c6c37aaa0ddb3c72ef90d01753fd7bee6366db075` |
| 41 | `theorem` | [tensorLeftHomEquiv_whiskerRight_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-whiskerright-comp-evaluation.md) | 439 | `result-track:e589c297a65b93b4ae6766fb8fa26388c50cf70ecbb8f37a123423e5e3ee0c7e` |
| 42 | `theorem` | [tensorRightHomEquiv_whiskerLeft_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-whiskerleft-comp-evaluation.md) | 445 | `result-track:f6b7c94bad128b8de52005bf3a6b6ae326a622916ca0a04a47252139c250a7cf` |
| 43 | `theorem` | [tensorRightHomEquiv_whiskerRight_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-whiskerright-comp-evaluation.md) | 451 | `result-track:b27b46a282a74eab0d0084595a37e5d6c3ef5df04ea354692971ff46eecdf782` |
| 44 | `theorem` | [coevaluation_comp_rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/coevaluation-comp-rightadjointmate.md) | 463 | `result-track:c1a25bed2520dc7f247a9b2cc3b4013d63e5c9a836df5d0b72a871b294e20833` |
| 45 | `theorem` | [leftAdjointMate_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/leftadjointmate-comp-evaluation.md) | 469 | `result-track:f6f2509926b048255c7ac30aee7e13a8e6a8447a2ba6b5e654f490f94f3c7f64` |
| 46 | `theorem` | [coevaluation_comp_leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/coevaluation-comp-leftadjointmate.md) | 475 | `result-track:d76258ca681fa1319ee788e1c2e6687871be20ce88619b0c73e533b1d4d6adea` |
| 47 | `theorem` | [rightAdjointMate_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/rightadjointmate-comp-evaluation.md) | 481 | `result-track:648ac7b691d8125085c6be5cb7b768261e7af5b1b87265f8ca6020f4c4e09d19` |
| 48 | `def` | [exactPairingCongrLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/exactpairingcongrleft.md) | 487 | `declaration-track:f92b1295ed33c3046ca82e248368cfc19b689fc36001813358fdc5d8304888e1` |
| 49 | `def` | [exactPairingCongrRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/exactpairingcongrright.md) | 515 | `declaration-track:abbd06ab8b8981b43aa8f7526e2e56aef1784b7f9775acd471acac386cd85aca` |
| 50 | `def` | [exactPairingCongr](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/exactpairingcongr.md) | 543 | `declaration-track:85e09e0a46239d0a2bc5e2a74713994827ce802c00efcc9b8c4df769fcdb4025` |
| 51 | `def` | [rightDualIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/rightdualiso.md) | 549 | `declaration-track:2c623b8d89aeb0176274aaf856c4497755bbc6ced0b4a6ca7330aa1ad9b188ee` |
| 52 | `def` | [leftDualIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/leftdualiso.md) | 563 | `declaration-track:1fd9854f0765eabeb87d38dd17013eb873c8175a99fa3b0dd6cae258e09f4e79` |
| 53 | `theorem` | [rightDualIso_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/rightdualiso-id.md) | 577 | `result-track:9ca56aea970666a2b9513202c93c355f796a6ef994a016fe55385265d92c15b8` |
| 54 | `theorem` | [leftDualIso_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/leftdualiso-id.md) | 582 | `result-track:0158937c0d571744cede031fa00ac28b5ae17c33e1306899a9f0da969f55b088` |
| 55 | `class` | [RightRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/rightrigidcategory.md) | 587 | `declaration-track:515142f88d550b87449e9a50a3dd0817cb4e76e0d5574b54de8adf3d4e3dd573` |
| 56 | `class` | [LeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/leftrigidcategory.md) | 591 | `declaration-track:efb5df3ff825c82c88138ec0577af00ec53a41d2dc6524210d0fd9201922df63` |
| 57 | `def` | [monoidalClosedOfLeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/monoidalclosedofleftrigidcategory.md) | 605 | `declaration-track:49e3a5b390f523520ae033fd49590740b81f54313610ce8eb84b3eba86ffa162` |
| 58 | `class` | [RigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicNamespacedCoevaluationEvaluation.lean/declarations/rigidcategory.md) | 610 | `declaration-track:77da9911ce25832d090c9b1c3722bb1b7da3787bd877480e8d856dd0aadd3651` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9c8f6dbff6acdf39411215374615d51f85ac88cf26a6f0669ac597a83ba42e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant67c6cc3974c0ca82d4a704a5c25ac1d391150330ee759fd0f34a436d43cb4a6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
