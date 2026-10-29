# Verification target: Shapes Zero Preserves Terminal Object Of Preserves Zero Morphisms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "327d6861096d535bf1eaf4863ffa20789a3a48d5",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `327d6861096d535bf1eaf4863ffa20789a3a48d5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/preserveszeromorphisms.md) | 45 | `declaration-track:c21ee63a9d02e7710570e24c980e767b9fb4756cd872659f2ee335c4fc22a398` |
| 2 | `theorem` | [map_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/map-zero.md) | 51 | `result-track:a99883a2413f3411ff49d48f8ca64f8cb938e11cac73847c956eb148475d4cb5` |
| 3 | `theorem` | [zero_of_map_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/zero-of-map-zero.md) | 56 | `result-track:e36628eab7f4b95bb4de07153a2890949fdb0f57a067f2f42572cb835e361daa` |
| 4 | `theorem` | [map_eq_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/map-eq-zero-iff.md) | 61 | `result-track:d2bfaa3118849723e48cdbd14ff0d6f64d72d0784b93e4a5571a872058f6b81f` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/instance-source-edition-5.md) | 68 | `declaration-track:ddc2cfdd5fb4d0ec54ed976058a554bf5894b57c31723e7d4e465ff2b0e834d5` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:381922cc8a9c2b798cffaa4eed44242f9a37b71a9c0ce16caf9eeca57e8543d1` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/instance-source-edition-4.md) | 95 | `declaration-track:b56d3e305b12636b4157ddae1956b0e10d03e7b08d6fb0826e7f051136781a40` |
| 8 | `instance` | [preservesZeroMorphisms_evaluation_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/preserveszeromorphisms-evaluation-obj.md) | 103 | `declaration-track:4420174b0bbbed218dc759d52621e3f79750cd8eee80bb104203ed1c6b51b379` |
| 9 | `def` | [mapZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/mapzeroobject.md) | 118 | `declaration-track:d38e65f0e1e87f3fe0f11e79be9366e2ec7a3f62222680818f391e369b549c7c` |
| 10 | `theorem` | [preservesZeroMorphisms_of_map_zero_object](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/preserveszeromorphisms-of-map-zero-object.md) | 127 | `result-track:3dc521619c2e7c3d1847ade87632007d293608f0b05b847d3b52b300e6a7e769` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/instance-source-edition-3.md) | 135 | `declaration-track:a5ed9febdf78f7b7af73cb56aeb484b27af144a0328c7e5cc7e86b7dd0982858` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/instance.md) | 142 | `declaration-track:1811056d818e02a3b99f548c4cd3585f7d641915a6e2f7788809bd4f478a5127` |
| 13 | `def` | [preservesTerminalObjectOfPreservesZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/preservesterminalobjectofpreserveszeromorphisms.md) | 152 | `declaration-track:dadda775365654f71467b17f9ac790e818850b4ef84e342450a52c9e17779bca` |
| 14 | `def` | [preservesInitialObjectOfPreservesZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroPreservesTerminalObjectOfPreservesZeroMorphisms.lean/declarations/preservesinitialobjectofpreserveszeromorphisms.md) | 159 | `declaration-track:aeab86c3c6733741b5c8f22f5d54d604101e31247e0995c6e36415d92a35eaa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c8362fb250c195f028022c1fb407bbe191e033534393bd2ac632cf00e2327eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variantb6c77a03cf4eb0d039f9b750303e3bd853cdcf293108a081e4af58a7d76d1b8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
