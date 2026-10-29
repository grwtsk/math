# Verification target: Homotopy Category Shift Sequence Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab3226a7442c9eb5b67b9f27e602c22cba0a45f4",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant8313ce490b9161c33cb01d890fe121c0023a3f9e8571de2b5bd29d44f8b35a0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab3226a7442c9eb5b67b9f27e602c22cba0a45f4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant8313ce490b9161c33cb01d890fe121c0023a3f9e8571de2b5bd29d44f8b35a0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant8313ce490b9161c33cb01d890fe121c0023a3f9e8571de2b5bd29d44f8b35a0c.lean.json)

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
| 1 | `def` | [shiftShortComplexFunctor'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/shiftshortcomplexfunctor.md) | 52 | `declaration-track:ec7ea9348584e30899bd78a9b2f2c6c259eef66c586e64af5b604929d36346b9` |
| 2 | `def` | [shiftShortComplexFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/shiftshortcomplexfunctoriso.md) | 64 | `declaration-track:c8d9a6de74a11e4f8d48b0d3c0374ab9686a6bf599f18a7cb9f0fd1e31dc407b` |
| 3 | `lemma` | [shiftShortComplexFunctorIso_zero_add_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/shiftshortcomplexfunctoriso-zero-add-hom-app.md) | 72 | `result-track:df93a047fa0ed2e0a3768010a4b99865e36379ce0f3654324750a9ab088d45fe` |
| 4 | `lemma` | [shiftShortComplexFunctorIso_add'_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/shiftshortcomplexfunctoriso-add-hom-app.md) | 79 | `result-track:97903a947c6345b191311f4b3d26efb0b2aa3386a05238154669fa813a29374f` |
| 5 | `def` | [shiftIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/shiftiso.md) | 97 | `declaration-track:aa3776270ae39cfba0bfe7c2c85a7f50361f891c623ed43792a771e0d50b425b` |
| 6 | `lemma` | [shiftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/shiftiso-hom-app.md) | 107 | `result-track:d2443b0d10b8f2121696013b2f899d3a2b32771f93a96d1fff881e6ea031eb0a` |
| 7 | `lemma` | [shiftIso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/shiftiso-inv-app.md) | 113 | `result-track:04407f032af8342c1380a8c1cb64e7371174c9f22191a4e5dcc38f26e523dc10` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/instance.md) | 122 | `declaration-track:3923eabcaff5d4ccf76ead2d6fc758d23a36e1c5487ee8e33e060de30ce0ed34` |
| 9 | `lemma` | [quasiIsoAt_shift_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/quasiisoat-shift-iff.md) | 139 | `result-track:bbc7924b86788b33614078bbed9baa2f34be8faa8b2242743e78bc740cce8854` |
| 10 | `lemma` | [quasiIso_shift_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/quasiiso-shift-iff.md) | 145 | `result-track:f16b15ed7b486ae039aceea814c35193216cf437eb7aee1da106d54b8b59d1c3` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 155 | `declaration-track:3f72456c4bf9503a100a2c8c0162b45d00f830151f30c723271a289c568a535f` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 160 | `declaration-track:77fd2c0da8a0600710ce83bb4155d4b7fc2eb99377bb736fe4e7740fde4d110f` |
| 13 | `lemma` | [homologyFunctor_shift](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/homologyfunctor-shift.md) | 164 | `result-track:cb80f8b2b5f4a03c196e1ef298634b04fe7328681e492ba6c3aef4f2b8707484` |
| 14 | `lemma` | [liftCycles_shift_homologyπ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/liftcycles-shift-homology.md) | 171 | `result-track:af4c2529c683c0d8c03cddb57e7e9d8fe7f449e8a86f61437369a28d98b73359` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 199 | `declaration-track:3b927a3d3a2752e70073b8addd2d704f367db2ae092747a391744c754ba2b643` |
| 16 | `lemma` | [homologyShiftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/homologyshiftiso-hom-app.md) | 207 | `result-track:f8032faf19d636a438813f1917fb347aa34b9f175980b037b97d2104a42b816a` |
| 17 | `lemma` | [homologyFunctor_shiftMap](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomotopyCategoryShiftSequenceNamespacedPublic.lean/declarations/homologyfunctor-shiftmap.md) | 217 | `result-track:7eea8c98872236390d828eecd1564383c8110009979f6565b36052c95610e54d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a70171ac6274d6976fa154f4eb9eb413234a0bdeab4142975cb6a7d63e506477 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant8313ce490b9161c33cb01d890fe121c0023a3f9e8571de2b5bd29d44f8b35a0c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftSequence/Variant8313ce490b9161c33cb01d890fe121c0023a3f9e8571de2b5bd29d44f8b35a0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
