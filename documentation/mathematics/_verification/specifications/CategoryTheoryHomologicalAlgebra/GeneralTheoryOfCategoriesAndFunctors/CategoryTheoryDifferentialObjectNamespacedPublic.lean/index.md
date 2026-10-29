# Verification target: Category Theory Differential Object Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa9a4fb61488cabc621f06a4886a20ea612ae5b5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant58251b32e76f42de60b6cb7897a3fa55c12b59f3a07d8e8312fbd1cf251f802e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa9a4fb61488cabc621f06a4886a20ea612ae5b5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant58251b32e76f42de60b6cb7897a3fa55c12b59f3a07d8e8312fbd1cf251f802e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant58251b32e76f42de60b6cb7897a3fa55c12b59f3a07d8e8312fbd1cf251f802e.lean.json)

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
| 1 | `structure` | [DifferentialObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/differentialobject.md) | 48 | `declaration-track:6bb4eed43b8f6e7da62653b36773850bbd41986086aa52867825a1a912d03482` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/hom.md) | 64 | `declaration-track:389cd10e0ccb011abc8c6e52729e572667b3ba84e64d76f82d01030c03d544d2` |
| 3 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/id.md) | 75 | `declaration-track:22380bb07c0a412afbc0374e6f60ba5864faf4948d4a315e5bb690284e54219c` |
| 4 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/comp.md) | 80 | `declaration-track:7e1683ed432811a2f5a061d99c0a39e90b53d366e98567f1e196efeb866862d0` |
| 5 | `instance` | [categoryOfDifferentialObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/categoryofdifferentialobjects.md) | 85 | `declaration-track:d50aa0c2e952b7b56cc937cc17dbbb7fd29f9a5c7235ab6283c35cea49402401` |
| 6 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/ext.md) | 91 | `result-track:d27c3a06d57f647535b2d3a6b27d847f820927303adebee7e1aab7fe1ef55524` |
| 7 | `theorem` | [id_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/id-f.md) | 95 | `result-track:a17a36985016f72c508f4c48f2832c13571dc44a3a0c4b02eccce2b9f9a536b4` |
| 8 | `theorem` | [comp_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/comp-f.md) | 98 | `result-track:e004a9c7c591c709c5b5f936d1ff74347d398f33f10e8f2302bcae7e2a53d487` |
| 9 | `theorem` | [eqToHom_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/eqtohom-f.md) | 103 | `result-track:14e78b623a090a2eda13d26e1daeab3a80e6b6f9602d0b69eb2ce9d16e960d6b` |
| 10 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/forget.md) | 112 | `declaration-track:48ada4bc5cdfec009b6b12187cb59335f9628440293b7e1afa992d01b52d14b3` |
| 11 | `instance` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/forget-faithful.md) | 116 | `declaration-track:2ab370478b39e77e6941bcde673bfbe4a4d22e68505d2906c47d9ee99ab06547` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 123 | `declaration-track:43e3b46f8e83771745e4dfb8c3034a061751f5e0f1db6681f8ffde1169842428` |
| 13 | `theorem` | [zero_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/zero-f.md) | 126 | `result-track:2f1d465ffc5d97f6da47c393929946eafd2001bb7ba4138e0fc3e60bc916ea78` |
| 14 | `instance` | [hasZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/haszeromorphisms.md) | 128 | `declaration-track:9d6e9900df82a4b388679534bf47a79070d470eb0b717277d37e9e307eed5763` |
| 15 | `def` | [isoApp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/isoapp.md) | 134 | `declaration-track:0a8935259b1ed272732e6791664d12ba585dfd65a286b5ef047481c3d99e8b86` |
| 16 | `theorem` | [isoApp_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/isoapp-refl.md) | 141 | `result-track:5d9e63e24b8083bd05d8b5d585fc263a9038a09216d0dd57d455b4a9cf474c7a` |
| 17 | `theorem` | [isoApp_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/isoapp-symm.md) | 144 | `result-track:f0549b043bf3b6b2ab8d30813dbd91a8bd53f01f6e3f25031812b66aa4248055` |
| 18 | `theorem` | [isoApp_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/isoapp-trans.md) | 148 | `result-track:1ec1524c831ac21a5e41cfc0aa159c00ac4670796aeb538c40586efc7609ab94` |
| 19 | `def` | [mkIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/mkiso.md) | 154 | `declaration-track:4e0bca564b7d7b66c94fccb7d9c0c7518e39f237aeecfe4e5f8731a35571191b` |
| 20 | `def` | [mapDifferentialObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/mapdifferentialobject.md) | 175 | `declaration-track:1eb18f739f19d55168c140f2aa48e41978cca550139f3ce2a219dad0d8bb19fb` |
| 21 | `instance` | [hasZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/haszeroobject.md) | 211 | `declaration-track:4aed86d4e773395437b51d64e7913e2fb0484410360dedfbb05e2ac3fd441620` |
| 22 | `abbrev` | [HomSubtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/homsubtype.md) | 230 | `declaration-track:b6439a7bad273d62a1bb32936f29bd218497b35fb6c652dcb1a635f8ab31b358` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/instance.md) | 234 | `declaration-track:2c1ae08c83e05bce14c89719ce23adb74788db64d91d9287312dd4514ebb86ca` |
| 24 | `instance` | [concreteCategoryOfDifferentialObjects](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/concretecategoryofdifferentialobjects.md) | 239 | `declaration-track:d6d9e090f0b0eaf260b4cf6b7cd6e0ebfd37223cd354aaab2418b316a177ce7d` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 248 | `declaration-track:a330d6a0f6fc64ae92a85ef766a1b1152e4e891f17a95e6f55657389cc1354cd` |
| 26 | `def` | [shiftFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/shiftfunctor.md) | 268 | `declaration-track:f03952fcbf917fc1501d2eae1a9db4098e5c97650d4bf4ba3b5f170ba871e7cf` |
| 27 | `def` | [shiftFunctorAdd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/shiftfunctoradd.md) | 289 | `declaration-track:2976f1b386389a9a8ebcebe27218aaf597834f086e95b516b1239d016d66653e` |
| 28 | `def` | [shiftZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/shiftzero.md) | 308 | `declaration-track:c3b2f52e6fa6be88386d9aa2dc3d67c42d7101b23f690fbe317eac11b59092df` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryDifferentialObjectNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 318 | `declaration-track:c22794754963fd41ea090ac37b4bae70a4e55ef804907da46872718c729ab195` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3aee184a52b8e311d0084145ac638eefab5d2bbd3da9d377f941decb796f9627 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant58251b32e76f42de60b6cb7897a3fa55c12b59f3a07d8e8312fbd1cf251f802e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant58251b32e76f42de60b6cb7897a3fa55c12b59f3a07d8e8312fbd1cf251f802e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
