# Verification target: Sheaf Cohomology Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ce568178412fa65ab985f47d4ce16862880f2b0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd63fdc2348590d83edcdcec4896cab43230cb6e1c530605145299d4272394067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ce568178412fa65ab985f47d4ce16862880f2b0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd63fdc2348590d83edcdcec4896cab43230cb6e1c530605145299d4272394067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd63fdc2348590d83edcdcec4896cab43230cb6e1c530605145299d4272394067.lean.json)

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
| 1 | `abbrev` | [H](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h.md) | 67 | `declaration-track:2614cfb783c194dc59c6b27ca5b3ede2febe98a419c40ce2771fda72998ed0bf` |
| 2 | `def` | [cohomologyPresheafFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/cohomologypresheaffunctor.md) | 80 | `declaration-track:1bd25b7879636310192d45d3091c1c6fcfb8e4a31d2e3adfe7435c601b9efa52` |
| 3 | `abbrev` | [cohomologyPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/cohomologypresheaf.md) | 89 | `declaration-track:acc0aef564e224640cbcacdf41e9dab4bd19b85c2cf110223d6c6d2e87926dbe` |
| 4 | `abbrev` | [H'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-source-edition-2.md) | 95 | `declaration-track:e455727faadd558f28437c22e4929778a79867e4fbb3117b8e9262ab028f6b69` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 105 | `declaration-track:c778788077a7d774d95f3238da13d60464057a21c30ac98843b389426af08e13` |
| 6 | `def` | [H.equiv₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-equiv.md) | 113 | `declaration-track:cd9791a77caa6891e23edffe85f582d8b27f54ac8d1e9b707740440c9064a60c` |
| 7 | `def` | [H.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-map.md) | 122 | `declaration-track:2602648700dedd1f95634f25873795e4cd27d5fa87983a027882fb78c7953487` |
| 8 | `lemma` | [H.addEquiv₀_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-addequiv-map.md) | 126 | `result-track:869590287d08320b73cdc7c0ba0a3d815513ecee8f716397b8d2ce6a1243f4fa` |
| 9 | `theorem` | [H.equiv₀_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-equiv-naturality.md) | 133 | `result-track:74c936d1c64db3cd3df024b3da57e2561977f1d6ccfc9a573e5a20466cf44179` |
| 10 | `theorem` | [H.equiv₀_symm_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-equiv-symm-naturality.md) | 138 | `result-track:167acc8e89a341a4d50dfe3f56c834bf2bd8271ca172536e92a82391a91bd324` |
| 11 | `lemma` | [H.map_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-map-apply.md) | 143 | `result-track:cbd8852cd18ca4cba55c13ca8e34d2d0ebb61468f91397298da546ade1b200a2` |
| 12 | `lemma` | [H.map_id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-map-id-apply.md) | 147 | `result-track:a9b32bc15367d4a53b3a96dfa60d2e732f16a6b80f480303512c27048ff86fc0` |
| 13 | `lemma` | [H.map_comp_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-map-comp-apply.md) | 150 | `result-track:d77cebf8f20ea193365760a791d1099ecfb5eec5048d51eb29f453b5fcb93bdb` |
| 14 | `lemma` | [H.map_add_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/h-map-add-apply.md) | 155 | `result-track:fe3182c4e9bc1783a9102898a759e2e03202669033a80cd04f817ee3576b1534` |
| 15 | `def` | [functorH](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/functorh.md) | 163 | `declaration-track:3ff063a6a6a804d6b2ecd054138beb46b1a18190ef8b4c4502b9e90e78978fcd` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/instance.md) | 167 | `declaration-track:c08ba149070f1e454b3c519bfbd27ff2b235fc6c0af8a6c99800e28bac93f407` |
| 17 | `lemma` | [subsingleton_H_of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SheafCohomologyBasicNamespacedPublic.lean/declarations/subsingleton-h-of-iszero.md) | 169 | `result-track:8e279eb08463ea76f330cc35728f75564d43c9097af4ade9019fb460b3e96098` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=273752c23a2cdac6ef8bff694a9abe22c3e7f7f3ee7b28980e290780c59cd5e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd63fdc2348590d83edcdcec4896cab43230cb6e1c530605145299d4272394067.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantd63fdc2348590d83edcdcec4896cab43230cb6e1c530605145299d4272394067.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
