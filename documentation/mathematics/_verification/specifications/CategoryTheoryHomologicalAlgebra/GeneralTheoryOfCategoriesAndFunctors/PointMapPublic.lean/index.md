# Verification target: Point Map Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43b925467551ee35ac42fd658a06c0caddf81eb5",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43b925467551ee35ac42fd658a06c0caddf81eb5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean.json)

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
| 1 | `lemma` | [map_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/map-aux.md) | 39 | `result-track:3d68f1b31164d68143b1de85340a5e689e0a62af8ff86f9885567e3ffbcf7e33` |
| 2 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/map.md) | 52 | `declaration-track:75f2cd9ea633cdcda0aaaa7e059e55de2af64e3db5390bc3b8dd26082b2babaf` |
| 3 | `def` | [toPresheafFiberMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/topresheaffibermap.md) | 61 | `declaration-track:e36d419a1c5d8bc1595ab3677799a6722b07d196fd48fc1e05936626ed36e2a0` |
| 4 | `lemma` | [toPresheafFiberMap_w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/topresheaffibermap-w.md) | 66 | `result-track:261bfd10c7131e64a1ac9367b429acc7d26b025f2563c8cfb132daf43616465a` |
| 5 | `lemma` | [toPresheafFiberMap_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/topresheaffibermap-naturality.md) | 74 | `result-track:5a1c90e56beb2263615ed6ed5286c1aca036a0c7385b65ba9c46aa869133d68e` |
| 6 | `def` | [presheafFiberMapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/presheaffibermapcocone.md) | 84 | `declaration-track:084726441eda863ef45f6fa4ba4dff9b00deccbce873ccd7430408aaea728c2b` |
| 7 | `def` | [isColimitPresheafFiberMapCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/iscolimitpresheaffibermapcocone.md) | 92 | `declaration-track:9047d527efb5169d4511022373452a953b62b4227a9a316c0e1008bf9bd984ab` |
| 8 | `lemma` | [presheafFiberMap_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/presheaffibermap-hom-ext.md) | 97 | `result-track:cebe6ace38571f0ec13670bd237e1f014b3fae9583e3a1a78366e2bc66664a38` |
| 9 | `def` | [presheafFiberMapObjIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/presheaffibermapobjiso.md) | 106 | `declaration-track:b7fb6cd16bf1bdff08e38ea008683e106b08990bc71decb2a5c6abc2394244e0` |
| 10 | `lemma` | [toPresheafFiberMap_presheafFiberMapObjIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/topresheaffibermap-presheaffibermapobjiso-hom.md) | 112 | `result-track:112ef30e32019b5b50244b45c7754b1a4a0865c2ce6fb41c027c46bb7deed5f3` |
| 11 | `lemma` | [toPresheafFiber_presheafFiberMapObjIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/topresheaffiber-presheaffibermapobjiso-inv.md) | 120 | `result-track:2676f22825c9c7ecd050eb3136b4c890860ac2ceb59cb111b9b1df91521b2981` |
| 12 | `def` | [presheafFiberMapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/presheaffibermapiso.md) | 131 | `declaration-track:50bc17a537147f86ca489dca9248b2e55c584269c2f06c825ceb339a6f3d0893` |
| 13 | `def` | [sheafFiberMapIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PointMapPublic.lean/declarations/sheaffibermapiso.md) | 140 | `declaration-track:75e9f0d978f986fe135ef69e445cd88fee2cdd0724d26e38b79d628236ead10e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb47b839a6828a5c41d7c22c8711584b905cc6d219557366cfe6a4d078a78e82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Map/Varianteaa16d353187f218547cfe1c6112e9532bb8287820f568ab3b425acd90b1c241.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
