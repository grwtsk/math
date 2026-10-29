# Verification target: Rigid Basic Coevaluation Evaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "951ff3764d4702e47edc3d43733b97a86d445921",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `951ff3764d4702e47edc3d43733b97a86d445921`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Monoidal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ExactPairing](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/exactpairing.md) | 73 | `declaration-track:746e99553fe4ac3b777cfd36adcfa647fe4babf18d5fa990e1bb338923fe9183` |
| 2 | `def` | [coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/coevaluation.md) | 99 | `declaration-track:96616c04b6ea6c6883a28fa40cf12bff38f62e8b6ebf4c80dec22bcc70326368` |
| 3 | `def` | [evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/evaluation.md) | 102 | `declaration-track:835b4b76e013523090185f3522e0e862f3112d4720116f916a88a7f525f520e8` |
| 4 | `lemma` | [coevaluation_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/coevaluation-evaluation.md) | 107 | `result-track:3aaa0aa7061583a20414078da7b7b34b90053ae4fd60f55cd3be4d85be720042` |
| 5 | `lemma` | [evaluation_coevaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/evaluation-coevaluation.md) | 111 | `result-track:e7fd367c537ffbbc28dc94f4929b343287682a98bdc30efdf929eef4f21a0bf2` |
| 6 | `lemma` | [coevaluation_evaluation''](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/coevaluation-evaluation-source-edition-2.md) | 115 | `result-track:49de90f54e1a6ddee504fe34f549204fe3f43e08b6a45b5633cef57c58dfc3f2` |
| 7 | `lemma` | [evaluation_coevaluation''](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/evaluation-coevaluation-source-edition-2.md) | 119 | `result-track:f21080b7cddfd7979bf6968cecbd66541c12d2864bd9d6d717e89f256123424d` |
| 8 | `instance` | [exactPairingUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/exactpairingunit.md) | 128 | `declaration-track:aa1319392ef41a698718b04e763be67f60dc564183c0cd928d16016c1f5f59cf` |
| 9 | `class` | [HasRightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/hasrightdual.md) | 135 | `declaration-track:a6c6e6feb2380aa37eb96632489a8008876a0a95b06722abe64cc3b0e569f6b8` |
| 10 | `class` | [HasLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/hasleftdual.md) | 141 | `declaration-track:251520c7f9f52ce4323d991595f66516a6c31bd8fe286043a00b703075ec2958` |
| 11 | `instance` | [hasRightDualUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/hasrightdualunit.md) | 159 | `declaration-track:df5523963b22eac95ea403ef86e02ac500ec1146ee0875933fe14b40a3c2f10a` |
| 12 | `instance` | [hasLeftDualUnit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/hasleftdualunit.md) | 162 | `declaration-track:4e03efe6073fda685acbe471244c5f31dbf7a082f0afb18124c5cb3d206c63ad` |
| 13 | `instance` | [hasRightDualLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/hasrightdualleftdual.md) | 165 | `declaration-track:b11055167a99ed5e6d62f6328da174277b3b6b4344162f23f2ee529b9e3bf704` |
| 14 | `instance` | [hasLeftDualRightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/hasleftdualrightdual.md) | 168 | `declaration-track:5c404f03ac11ba9445b74ff626ef988136f5ace9dd769e636044bde5d22b6901` |
| 15 | `theorem` | [leftDual_rightDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/leftdual-rightdual.md) | 172 | `result-track:283dba8b38e40eb25d8d9664c8676c269ef258f204ee8f3fc2afc8bcaff1d475` |
| 16 | `theorem` | [rightDual_leftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/rightdual-leftdual.md) | 176 | `result-track:a3a61e6427618d37e957d1b9e0240a15c0f02e77005f504fae9b70871da16746` |
| 17 | `def` | [rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/rightadjointmate.md) | 180 | `declaration-track:e8127b4add567ad516766154c5bb673b33c4c164ae2d51174e924fbd7678de5c` |
| 18 | `def` | [leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/leftadjointmate.md) | 184 | `declaration-track:da03b8f8293177107bb2d235162c6ff1a9786fbe8324c74abdb140c9479b122e` |
| 19 | `theorem` | [rightAdjointMate_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/rightadjointmate-id.md) | 191 | `result-track:66257d01939d9c8299c4e6613610d91dad834725ff8b6579e6784a49d984a166` |
| 20 | `theorem` | [leftAdjointMate_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/leftadjointmate-id.md) | 195 | `result-track:55d6d0a6263dee11ed40fab6a4a99b0c0367e3368fbfa685adc268da9702c315` |
| 21 | `theorem` | [rightAdjointMate_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/rightadjointmate-comp.md) | 198 | `result-track:5f5e715d4ff107ebe812f06abd2d8ca03d0dfee2f7cd5bda435d994b4ffff6e6` |
| 22 | `theorem` | [leftAdjointMate_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/leftadjointmate-comp.md) | 209 | `result-track:79be43f2e35e1031d9de94e8dae39bc26a58da0383de366899af9e02158057ca` |
| 23 | `theorem` | [comp_rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/comp-rightadjointmate.md) | 222 | `result-track:1e5bc4bc2dd31f6e7fe9cf5bc523fc96acdb29e55f2ca52ad1cc0304d4beeec6` |
| 24 | `theorem` | [comp_leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/comp-leftadjointmate.md) | 243 | `result-track:f170b71b63b3b55369c56c4999f4a7fbf3f897982d6509c164d4cee47a8d06ca` |
| 25 | `def` | [tensorLeftHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorlefthomequiv.md) | 271 | `declaration-track:a6a755678827c0a2c2d32685c7036d3a3a78178e902b2ecb01dc593f4264989c` |
| 26 | `def` | [tensorRightHomEquiv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorrighthomequiv.md) | 295 | `declaration-track:beafdb17fe403feb6f418e4d892555d79f5541df877b6fbd4c4261f8fe42c3d9` |
| 27 | `theorem` | [tensorLeftHomEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-naturality.md) | 315 | `result-track:8462e6df0b47c294041e8b85469fb0aa6f39c4c1d3991c567ebbbd57005726af` |
| 28 | `theorem` | [tensorLeftHomEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-symm-naturality.md) | 320 | `result-track:80aac76384491dc6dcebe8a7681c847881aec8ffedbba02c907bc59d4b9db511` |
| 29 | `theorem` | [tensorRightHomEquiv_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-naturality.md) | 326 | `result-track:e50d862af8a5ebaab134a8a3d0c8b78b730acbb32d6e91c46911d1ff55beed3d` |
| 30 | `theorem` | [tensorRightHomEquiv_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-symm-naturality.md) | 331 | `result-track:b4398cfd03ad3e06a26fa63f0e7998fe26d5f41b74dbc8ce33b988ea720fa19e` |
| 31 | `def` | [tensorLeftAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorleftadjunction.md) | 340 | `declaration-track:0c8139fa37a3ab2390ca49950bb456773c4e83c779c3027114c668d348056903` |
| 32 | `def` | [tensorRightAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorrightadjunction.md) | 349 | `declaration-track:75639530cbdd94963143d6af7a7298b2ef413eae24cd5a6a20a5aaca02e6730e` |
| 33 | `def` | [closedOfHasLeftDual](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/closedofhasleftdual.md) | 366 | `declaration-track:2130b001ddd7a61c0a0851fa3628d8fe0437293da4cd208ed4a0e388f44f40a5` |
| 34 | `theorem` | [tensorLeftHomEquiv_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-tensor.md) | 371 | `result-track:5a17ad05cc05f61aa4685084b13e1a25463739ace12fafc352304dba3840b70d` |
| 35 | `theorem` | [tensorRightHomEquiv_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-tensor.md) | 378 | `result-track:1275e0263f7697d94f0133f8ce7f13928d9da526a278126b56b406b2261eb58e` |
| 36 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-symm-coevaluation-comp-whiskerleft.md) | 385 | `result-track:f8d8ca1acd87753cfd240d0c454cc0c951656e1afe6dbdb481c5c18f267ed643` |
| 37 | `theorem` | [tensorLeftHomEquiv_symm_coevaluation_comp_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-symm-coevaluation-comp-whiskerright.md) | 395 | `result-track:859a5b842e0061537bc9faf80ebad1cb7174896a85a0c5cbb08c1828edabccb6` |
| 38 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-symm-coevaluation-comp-whiskerleft.md) | 402 | `result-track:68199f8b8c0430c4b500da4ccc7f9161a778f78070233bfe919b9021925eed5b` |
| 39 | `theorem` | [tensorRightHomEquiv_symm_coevaluation_comp_whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-symm-coevaluation-comp-whiskerright.md) | 409 | `result-track:af19e5de9b8e7b958abbd7337a5357ee31c5bcb1d05945a8a5947021f9511467` |
| 40 | `theorem` | [tensorLeftHomEquiv_whiskerLeft_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-whiskerleft-comp-evaluation.md) | 420 | `result-track:1f92be2bd21a4c0c32e4c7dce8433f0c9ce2dd488ad8925789a60d65ed88a168` |
| 41 | `theorem` | [tensorLeftHomEquiv_whiskerRight_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorlefthomequiv-whiskerright-comp-evaluation.md) | 431 | `result-track:eb5ef205a197db99b9164dc8ed866c4e2a98f0b24235c24cf43945c87fb25e10` |
| 42 | `theorem` | [tensorRightHomEquiv_whiskerLeft_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-whiskerleft-comp-evaluation.md) | 437 | `result-track:573d893d3e8e7fecf052cc562d0cfafc44371a796f3de8824add722c76ac7fdd` |
| 43 | `theorem` | [tensorRightHomEquiv_whiskerRight_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/tensorrighthomequiv-whiskerright-comp-evaluation.md) | 443 | `result-track:cc8e1114e4c788164a26cd725dde16c1ebe123a9d6fe08fb615f8bbb3134352f` |
| 44 | `theorem` | [coevaluation_comp_rightAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/coevaluation-comp-rightadjointmate.md) | 455 | `result-track:08ba54522aee1ff829a3a4d9f5d1a133742d803ca61630ba5b9020c71f7bcfe9` |
| 45 | `theorem` | [leftAdjointMate_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/leftadjointmate-comp-evaluation.md) | 461 | `result-track:a081ab7f2a6a403da04ad1ae8e2772991119aa4e9d92539ff4a3febdc0ac639a` |
| 46 | `theorem` | [coevaluation_comp_leftAdjointMate](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/coevaluation-comp-leftadjointmate.md) | 467 | `result-track:bb590b3cefc41c24f7f89c65ac0c9e370941965d8c49634f70b50c4a8e878150` |
| 47 | `theorem` | [rightAdjointMate_comp_evaluation](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/rightadjointmate-comp-evaluation.md) | 473 | `result-track:7e3ebe3e8f6f63555a1e192dbcf6837d0895617c70bfcfad8ec1779b332acf43` |
| 48 | `def` | [exactPairingCongrLeft](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/exactpairingcongrleft.md) | 479 | `declaration-track:435fe4ee8b0845805c4bc7d912ce7a95577e1db0f209be492427c94f53d5993e` |
| 49 | `def` | [exactPairingCongrRight](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/exactpairingcongrright.md) | 507 | `declaration-track:827078a069f6e319f3602709f656357ac5268edf475e511309d821720195c310` |
| 50 | `def` | [exactPairingCongr](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/exactpairingcongr.md) | 535 | `declaration-track:a65994428863616e5bdf822c33fcc53b3ac9c8bd34a73f6894b8c11944c9178b` |
| 51 | `def` | [rightDualIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/rightdualiso.md) | 541 | `declaration-track:ba6e3c3d3503b4c6a368cf89e8710ba514f18fe4cd92a75fbc863a1fd00db042` |
| 52 | `def` | [leftDualIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/leftdualiso.md) | 555 | `declaration-track:2ffe41cf8396d0581b08ca5084b6aaa941f1e5495c3e886f29fe8689d110476a` |
| 53 | `theorem` | [rightDualIso_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/rightdualiso-id.md) | 569 | `result-track:c52ac249e5b218a8bfd1811b93114c4e725dfc65268db05212b9b80acb7af67d` |
| 54 | `theorem` | [leftDualIso_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/leftdualiso-id.md) | 574 | `result-track:d122d7e915a80fc9ace81120c0d59fbab75bc2f48a9032a79a6fe44def768527` |
| 55 | `class` | [RightRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/rightrigidcategory.md) | 579 | `declaration-track:94b5884880eb00e189a4ca27f9172aa15435b8ab01820e0787f3213cee0cb2bb` |
| 56 | `class` | [LeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/leftrigidcategory.md) | 583 | `declaration-track:aab83d97984d9616d1927eb3eba81d69b9bb834039b52102abb629df39e081b3` |
| 57 | `def` | [monoidalClosedOfLeftRigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/monoidalclosedofleftrigidcategory.md) | 597 | `declaration-track:f5dc4f907b9268820430fca76b1f0568382ccdbbf44f8876c97b25cff2e0f5de` |
| 58 | `class` | [RigidCategory](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/RigidBasicCoevaluationEvaluation.lean/declarations/rigidcategory.md) | 602 | `declaration-track:4630b930c19fc573a70b80f9487568903b27b66eef0a3ab62549c632ac2ad6c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=397b58dd17f6c89ee6b69a3b8559e619996956cb645e38081822176075d79cff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant28ac6188d7015db0ee316dd9e459751fe399b852b5892e205e1973de6812310f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
