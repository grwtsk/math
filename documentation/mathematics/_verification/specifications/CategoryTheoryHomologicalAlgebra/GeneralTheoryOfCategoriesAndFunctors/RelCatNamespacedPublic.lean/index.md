# Verification target: Rel Cat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74c007c1fafe5dd47160a33c7d4437f038c7b5a7",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variantc3ed9d7db5013a32039061db2c0d23d0a01752c1c8c385f5b92cdd2541477ffe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74c007c1fafe5dd47160a33c7d4437f038c7b5a7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variantc3ed9d7db5013a32039061db2c0d23d0a01752c1c8c385f5b92cdd2541477ffe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variantc3ed9d7db5013a32039061db2c0d23d0a01752c1c8c385f5b92cdd2541477ffe.lean.json)

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
| 1 | `def` | [RelCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/relcat.md) | 41 | `declaration-track:3d07a5483258f9c59c7d3fc65c780c9c56da956072e693350f0c744ddc1ea259` |
| 2 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/hom.md) | 49 | `declaration-track:6763deb30873f543e5d7f051d604dc5b0cf87ad5b2f3e3b4a98574f191e03553` |
| 3 | `instance` | [instLargeCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/instlargecategory.md) | 59 | `declaration-track:b7f4ced4f14085d8362ae0c5e153adff985dc818df6e87e2588dbaaea57a260d` |
| 4 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/ext.md) | 66 | `result-track:d7837d08c2bc0c7a560dad5b917ef0ce7398ebfe73af900ec9bc2767dc6d2866` |
| 5 | `lemma` | [rel_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/rel-id.md) | 68 | `result-track:ed53a55919b88319ec96558cf4bfb2d706272cb2be4ab7e79f31607ff2be0d7d` |
| 6 | `lemma` | [rel_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/rel-comp.md) | 69 | `result-track:5d5ff6a3a9efd580f6bdcdc2abd5e8e3b1e21e82eca142d8bec48ff705bc8e11` |
| 7 | `theorem` | [rel_id_apply₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/rel-id-apply.md) | 71 | `result-track:2de1a9431fb7a1960a7f48c039000d8d8e1b94f59a8946cbf99a82753fa705a9` |
| 8 | `theorem` | [rel_comp_apply₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/rel-comp-apply.md) | 73 | `result-track:29e9e16b78ae6eee4047d96094471daa7a4ec6c697957323bfe23710dcd95d4e` |
| 9 | `def` | [graphFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/graphfunctor.md) | 82 | `declaration-track:0487062b6dc3ef7747771244fd9962a648f6af1cc5122885a9b487cda37157b2` |
| 10 | `instance` | [graphFunctor_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/graphfunctor-faithful.md) | 86 | `declaration-track:e7c010b8cf0d97aa58d0f32405544db5521198654365b55bccfc3d97859a2ccc` |
| 11 | `instance` | [graphFunctor_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/graphfunctor-esssurj.md) | 91 | `declaration-track:e8c5135074df8351ae6eec65f3d173cb7477dd8885bc08aa398638e69e2c7445` |
| 12 | `theorem` | [rel_iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/rel-iso-iff.md) | 97 | `result-track:7a61e3bb2df72a028261dfedba459e904252690338ed3f5d5d87fdcd1986226b` |
| 13 | `def` | [opFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/opfunctor.md) | 126 | `declaration-track:a95b1dfa2a08e64e5290ccaabdbe6a8a73d6b020242ee2f563a048b852c3efd9` |
| 14 | `def` | [unopFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/unopfunctor.md) | 132 | `declaration-track:56ffa724cdbfe2e02325bfbafd152066f6ec9405ce64d3cfa66d274eb9b3b0e8` |
| 15 | `theorem` | [opFunctor_comp_unopFunctor_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/opfunctor-comp-unopfunctor-eq.md) | 136 | `result-track:3bb772c38ef68ed2ff90a8f0080094f2e01f9ccd71484ae71bae5558743de758` |
| 16 | `theorem` | [unopFunctor_comp_opFunctor_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/unopfunctor-comp-opfunctor-eq.md) | 139 | `result-track:a9b2ed5d0804e0eeb78f71cdc0bc4cabe4e5f295486ccdbabbb03181bcf11fc0` |
| 17 | `def` | [opEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/opequivalence.md) | 146 | `declaration-track:9392d0c5a801dfcd3793f49786f67c6ecdcaecda56094487adde0d08c8f7c77f` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/instance.md) | 152 | `declaration-track:16590665b3b8d6ec7f3c56ce00b83499c7c9360fb813f14b1dbac0412efbf93a` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RelCatNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 156 | `declaration-track:2680d5fd3ac30665f5e2de0098e0902e71d2c832b280e4c6b7fcac074d35e04f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=22164df13953c0fa97eefcf73c11c04edcdf20263737e4b40f0fb87407242bfe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variantc3ed9d7db5013a32039061db2c0d23d0a01752c1c8c385f5b92cdd2541477ffe.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/RelCat/Variantc3ed9d7db5013a32039061db2c0d23d0a01752c1c8c385f5b92cdd2541477ffe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
