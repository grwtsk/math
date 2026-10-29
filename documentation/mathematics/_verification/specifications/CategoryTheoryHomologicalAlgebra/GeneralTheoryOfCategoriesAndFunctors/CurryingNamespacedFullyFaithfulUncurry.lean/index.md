# Verification target: Currying Namespaced Fully Faithful Uncurry

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad73cfb6e527dd27bd8244286d5342b1e5665672",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variantc0c5a58ac220aed490427a025effec76dcf5a5844cccd7edc2d435841f51522f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad73cfb6e527dd27bd8244286d5342b1e5665672`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variantc0c5a58ac220aed490427a025effec76dcf5a5844cccd7edc2d435841f51522f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variantc0c5a58ac220aed490427a025effec76dcf5a5844cccd7edc2d435841f51522f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/uncurry.md) | 37 | `declaration-track:c51328f7854df296d46c9989feaa3691cc3e228ee07e538cdd6c35a371e3e945` |
| 2 | `def` | [curryObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/curryobj.md) | 57 | `declaration-track:ff6b0fab6a33db265415dd5f715e926ec7ee9356cadc6600beabb839c9a5b73c` |
| 3 | `def` | [curry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/curry.md) | 72 | `declaration-track:b69a3c4714dcebfa1937868740f1801d0d49796e9324e65c778d82213a720838` |
| 4 | `def` | [currying](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/currying.md) | 88 | `declaration-track:3578d7477845952ad6befe59972000aeac24bee21c71024fa6ed8ea8d2a90779` |
| 5 | `def` | [fullyFaithfulUncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/fullyfaithfuluncurry.md) | 100 | `declaration-track:fa448b51181e23120375b00dd9842fff95cd1d7c42418d26b3646f0a0574e957` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:eac960b001b3e43b1334db0d9c1b1bd19e91b6ee7768f170f7176cad8f1ef62e` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/instance.md) | 106 | `declaration-track:8ecd3748cf269762a73c5e8d58ffc16f34d13083a6deb3191ad07d0745598162` |
| 8 | `def` | [curryObjProdComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/curryobjprodcomp.md) | 113 | `declaration-track:3346666dac13a463d325b8a4eab02a9faca8439e08348e4329f53655f939accf` |
| 9 | `def` | [flipIsoCurrySwapUncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/flipisocurryswapuncurry.md) | 121 | `declaration-track:50f0b08cbd4f55f811671b83ab3d63b0cc20b554a22a94a5917bed28ed15a3e7` |
| 10 | `def` | [uncurryObjFlip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/uncurryobjflip.md) | 127 | `declaration-track:bd8f5539ae4468488525d2873a3c973d0229484cbfa4cf26b258e44bff9f7f19` |
| 11 | `def` | [whiskeringRight₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/whiskeringright.md) | 136 | `declaration-track:d2081bf1811ef0acacb29dc9e68e4bbeb15931729469779e4faaa8433d552e00` |
| 12 | `lemma` | [uncurry_obj_curry_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/uncurry-obj-curry-obj.md) | 144 | `result-track:6f7c0991c805c344b29e94d9bc7f4347ccea56199bc8c030db709f023361aced` |
| 13 | `lemma` | [curry_obj_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/curry-obj-injective.md) | 149 | `result-track:a7e5f6ad8d5c101aee1da34e86e1276e4995504d7e9223ddb191d0d507ec0ac7` |
| 14 | `lemma` | [curry_obj_uncurry_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/curry-obj-uncurry-obj.md) | 153 | `result-track:ecffffab2aef7ac5274f074c728e94d6ccfa03a5edea0235ea5d8b4ab43c73da` |
| 15 | `lemma` | [uncurry_obj_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/uncurry-obj-injective.md) | 156 | `result-track:7f58311d262f21c4b6e2c5af058406fe2b09704bdedfe57f806774fdb65d472d` |
| 16 | `lemma` | [flip_flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/flip-flip.md) | 160 | `result-track:af7fff3a929c91443a4e55302e746d177fbcac2f3b301482d41f546e8cf52e6a` |
| 17 | `lemma` | [flip_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/flip-injective.md) | 162 | `result-track:19c13a1a24f4a760b4b2d2b9597362073dea3e20f76c6027abd7e6ac5438a3d4` |
| 18 | `lemma` | [uncurry_obj_curry_obj_flip_flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/uncurry-obj-curry-obj-flip-flip.md) | 166 | `result-track:4e170ea1a645f82a2c40cdc467ed74c3044d2cf411de9f64541743e4bc1c29f4` |
| 19 | `lemma` | [uncurry_obj_curry_obj_flip_flip'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CurryingNamespacedFullyFaithfulUncurry.lean/declarations/uncurry-obj-curry-obj-flip-flip-source-edition-2.md) | 172 | `result-track:eed44ced7b5877f7ad78afd3016f67f4d36e6eb9dd6bb8d1c3b17548abdb7e56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31b860d3ec8b5d494b02eebed995ad1908a4c27d48ff5b4219feb34c0ddf93db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variantc0c5a58ac220aed490427a025effec76dcf5a5844cccd7edc2d435841f51522f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Currying/Variantc0c5a58ac220aed490427a025effec76dcf5a5844cccd7edc2d435841f51522f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
