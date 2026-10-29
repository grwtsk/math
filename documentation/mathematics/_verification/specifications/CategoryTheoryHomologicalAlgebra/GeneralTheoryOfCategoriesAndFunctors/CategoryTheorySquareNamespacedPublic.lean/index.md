# Verification target: Category Theory Square Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35562a8848cd9c682d18739237a4b7ecd0c8caa1",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant6685b0ada847b0fc300c45771cfe42e829cfe4691f0981421c7a7c6d82630c1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35562a8848cd9c682d18739237a4b7ecd0c8caa1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant6685b0ada847b0fc300c45771cfe42e829cfe4691f0981421c7a7c6d82630c1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant6685b0ada847b0fc300c45771cfe42e829cfe4691f0981421c7a7c6d82630c1c.lean.json)

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
| 1 | `structure` | [Square](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/square.md) | 55 | `declaration-track:287d4c30a8003645c631accd8d235a8b3ed59f0fb94607c78bf8b8b30c974eee` |
| 2 | `lemma` | [commSq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/commsq.md) | 78 | `result-track:338c9fc7fddaaeb40459ca339654ce8ca004ef9a0882f9a128a0b5cdba34168d` |
| 3 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/hom.md) | 84 | `declaration-track:a15fa060c5a6ac68ea8d09809691d8ff7aec215dcfd5891891cca8afedde7fe0` |
| 4 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/id.md) | 104 | `declaration-track:89710bd0070b713d74c984d95a4ae491af7890b74f842100341f27b9b14b38c0` |
| 5 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/comp.md) | 112 | `declaration-track:0b4455908f3c4eb294ebf56072ea1fbf1203236e400f64538b9ff8ac32b78bef` |
| 6 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/category.md) | 121 | `declaration-track:51c3cf027bb77f30ad8d3a3233c85d1b9b24f5bdd8664ff43661d21f8b4051fd` |
| 7 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/hom-ext.md) | 127 | `result-track:f2fd9d12773eb08e1a276c274932005e26219aeee36d1d5f22ff69596f640fda` |
| 8 | `def` | [isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/isomk.md) | 133 | `declaration-track:f700b666a30b6088fb7cd526aacaab2da62922578a586abe8e70cb9070504192` |
| 9 | `def` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/flip.md) | 161 | `declaration-track:a2c0cc7b0170d7cc0c4aaadc1472de1ac9df411767e759025f0dd4afea46c7f6` |
| 10 | `def` | [flipFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/flipfunctor.md) | 171 | `declaration-track:d3a00198b9f9d2037b3ee599c3ee64d9fd448723ab746ade4ca76b772a72e78e` |
| 11 | `def` | [flipEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/flipequivalence.md) | 183 | `declaration-track:e4c893b7a48cf7348d2d709023046c23302fc32c677e84c9c8ef991d8f66e7a6` |
| 12 | `def` | [toArrowArrowFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/toarrowarrowfunctor.md) | 194 | `declaration-track:0a1edd94e36ff7eabbad67dfb6628c87b7abea9e4dbedfb45fc30131ef68e682` |
| 13 | `def` | [fromArrowArrowFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/fromarrowarrowfunctor-source-edition-2.md) | 203 | `declaration-track:6d323eaf05883dc29ed5a0640408709b3beff785c2b99058d2e92e33fa2b95dd` |
| 14 | `def` | [arrowArrowEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/arrowarrowequivalence.md) | 221 | `declaration-track:642ebe6ced4c97af4a6c2be6ea43c333d65f1f59dab8c14ecb0b3548e5ce404b` |
| 15 | `def` | [toArrowArrowFunctor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/toarrowarrowfunctor-source-edition-2.md) | 232 | `declaration-track:b96bd41ea96b56e8afedfeef553c3392c20ed2568694c18f0910349b7264fcc5` |
| 16 | `def` | [fromArrowArrowFunctor'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/fromarrowarrowfunctor.md) | 241 | `declaration-track:3530265f5570535d0fd5cac6e0923c8a945279f228ae7c4821e6a39bc8b36d92` |
| 17 | `def` | [arrowArrowEquivalence'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/arrowarrowequivalence-source-edition-2.md) | 259 | `declaration-track:f8d8367f52b64c7bce6ae813a404a80d53ae459a37de37ba561b1e0f6b0de496` |
| 18 | `def` | [evaluation₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/evaluation.md) | 267 | `declaration-track:2cb5813bb7d33ddb6aead03f01ac78669dfbc1e2f718da61b32225e59c9e5570` |
| 19 | `def` | [evaluation₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/evaluation-source-edition-3.md) | 273 | `declaration-track:64a266e6696c679bf419ebb524557439d25ff2cc998991bddd0c41f48d1b6b63` |
| 20 | `def` | [evaluation₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/evaluation-source-edition-4.md) | 279 | `declaration-track:e7510d518ed47b37c459a65f7436e1ddf2819cccabb782b027c80d146edd98fc` |
| 21 | `def` | [evaluation₄](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/evaluation-source-edition-2.md) | 285 | `declaration-track:301d082369a78f5c479f2c56c2dcba195646eefb9b8685d46fd51bf70201b137` |
| 22 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/op.md) | 292 | `declaration-track:1ff1b460d58ab5e7772dbf6b30b1e73bb5fbe931a8930e4052cb31267285027a` |
| 23 | `def` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/unop.md) | 302 | `declaration-track:179556e11a47d9ee1d04e287e7596c4f45833be09caf61ef1aed58ea5636d392` |
| 24 | `def` | [opFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/opfunctor.md) | 312 | `declaration-track:e99e8308d674b5816ed4eec90799ddabdf29b149a86f826cad93e7abe7a3f606` |
| 25 | `def` | [unopFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/unopfunctor.md) | 326 | `declaration-track:61cf8e95d7208d1d2a7cbf83193a17f5f1a6711de37797f3a65036f24415dedc` |
| 26 | `def` | [opEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/opequivalence.md) | 340 | `declaration-track:1de02c8a577a4373d09aaf9002c4197a6ed21c9599cad67f878926e7e82ce92d` |
| 27 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/map.md) | 348 | `declaration-track:41dafc27680772cfd85211d9b658502f5567f91b68baf6e0c73bbc9dc346e82d` |
| 28 | `def` | [mapSquare](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/mapsquare.md) | 363 | `declaration-track:6d63219ac364572ac0bd5c50fef49e8abfee75d6563837ab3cfa735a71e8a939` |
| 29 | `def` | [NatTrans.mapSquare](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/nattrans-mapsquare.md) | 382 | `declaration-track:40b80bb1048c71d83894de2e1a4e9a0da4471d8f5ddfb82177c17277b50df307` |
| 30 | `def` | [Square.mapFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheorySquareNamespacedPublic.lean/declarations/square-mapfunctor.md) | 392 | `declaration-track:8f522fc6370bc95126fb7cfd1b0fb9b09a56d7f2938add83c5f20922f7fb7851` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cf2ee15c041633f479952ada6a20348a361495d6c95a217abf1218b173e3c78 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant6685b0ada847b0fc300c45771cfe42e829cfe4691f0981421c7a7c6d82630c1c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant6685b0ada847b0fc300c45771cfe42e829cfe4691f0981421c7a7c6d82630c1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
