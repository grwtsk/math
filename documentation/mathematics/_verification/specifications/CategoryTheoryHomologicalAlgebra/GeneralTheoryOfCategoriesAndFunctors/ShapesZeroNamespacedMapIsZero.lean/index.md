# Verification target: Shapes Zero Namespaced Map Is Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4263ea3c87715d077ee107709044c2c2d0e3b693",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4263ea3c87715d077ee107709044c2c2d0e3b693`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.ZeroMorphisms` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preserveszeromorphisms.md) | 52 | `declaration-track:f7c1eca0bba66004895a95d7292596734ef1586bf3314b78cc886bb6ab5019b0` |
| 2 | `theorem` | [map_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/map-zero.md) | 57 | `result-track:ecdc1b84ad0b0801777591d7d37bf3cf9e23d989b4e12a71a750a3dd95bf4a6e` |
| 3 | `lemma` | [map_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/map-iszero.md) | 61 | `result-track:ad602695c187ef317575609467fb2596f3e2bd759886ca6625a9d3e83582115e` |
| 4 | `theorem` | [zero_of_map_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/zero-of-map-zero.md) | 66 | `result-track:5dd63f0aae9bec7072825e55930ea47201ac60a04a6cc0abfe9063c57080169c` |
| 5 | `theorem` | [map_eq_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/map-eq-zero-iff.md) | 70 | `result-track:e87bac57797612ff25c0bb8d8f106b3148bf73e66c7d3eb33923b71a0e5d80a8` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/instance-source-edition-3.md) | 76 | `declaration-track:610f1b3b8dae4ff6ed0b9b2a997dddd894014e5f12e2c6ee448edc674c26f2ea` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/instance-source-edition-6.md) | 89 | `declaration-track:baf1083c8ee065b1b44775c6e9a9657785457d7e8d1c65b684ac874b1a83a040` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/instance-source-edition-5.md) | 101 | `declaration-track:8ca354ed2f3548a722de2d5c823ab71e26ad3202cd9a039456de23daf4110b5f` |
| 9 | `instance` | [preservesZeroMorphisms_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preserveszeromorphisms-comp.md) | 108 | `declaration-track:60fc722c53f082aaca520f0718796940a86936ec2a6eb3f18ae5bac8964bff64` |
| 10 | `lemma` | [preservesZeroMorphisms_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preserveszeromorphisms-of-iso.md) | 112 | `result-track:e92e5b6e4e7e7e478251fe3713308784a518b2a4ef1dd550a2a730b800f4c159` |
| 11 | `instance` | [preservesZeroMorphisms_evaluation_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preserveszeromorphisms-evaluation-obj.md) | 117 | `declaration-track:41ace8d1d88c2b1e8943577154e38456199e61fbf5037dd61f7730bc46f31c9b` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/instance-source-edition-7.md) | 120 | `declaration-track:cf001c7f605d01d739605a808953424416df8c67109afcf557f3e97e39691f08` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/instance-source-edition-4.md) | 123 | `declaration-track:7f7d210b3fd807c4554384ddc46610998a3614584ee3469a04a63ea622312a8c` |
| 14 | `def` | [mapZeroObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/mapzeroobject.md) | 138 | `declaration-track:4e81b595e9cdff8e283cd5690c4776922b9594de287de20ee118e56e698464af` |
| 15 | `theorem` | [preservesZeroMorphisms_of_map_zero_object](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preserveszeromorphisms-of-map-zero-object.md) | 146 | `result-track:eebab337b9579e6081977f782d7890e7527026bccdfa1672e7b7e32ceaf01e18` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/instance.md) | 153 | `declaration-track:2344be305f852f7d9fb49a0a0b4fe8e5e62e50d4f7a167807063fba1c8cd40c9` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/instance-source-edition-2.md) | 159 | `declaration-track:26879ff55d796baa3395c0bc03e483b539bd2148cf1dd3967ce6d831c791491a` |
| 18 | `lemma` | [preservesTerminalObject_of_preservesZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preservesterminalobject-of-preserveszeromorphisms.md) | 168 | `result-track:c3ef930cb57528f5abc2753333b2f5ffe42ae96543473207d00d8dcad3580d8f` |
| 19 | `lemma` | [preservesInitialObject_of_preservesZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preservesinitialobject-of-preserveszeromorphisms.md) | 174 | `result-track:b3b4747263620881909691c4a450dc1918356466cee8b55e3385f18939d85474` |
| 20 | `lemma` | [preservesLimitsOfShape_of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preserveslimitsofshape-of-iszero.md) | 190 | `result-track:4e89818f15bd0b38f9e06ebeb6fe877b179beba4b14562367dce037c7178a897` |
| 21 | `lemma` | [preservesColimitsOfShape_of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preservescolimitsofshape-of-iszero.md) | 196 | `result-track:0ae546970369e878da45a4264f28f5389bad87ca322931dff79c21cd410d41a3` |
| 22 | `lemma` | [preservesLimitsOfSize_of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preserveslimitsofsize-of-iszero.md) | 202 | `result-track:6bf45174bf3d342ebbe87792d598ec3a711205bf223ce0350a9abc7fe499343c` |
| 23 | `lemma` | [preservesColimitsOfSize_of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesZeroNamespacedMapIsZero.lean/declarations/preservescolimitsofsize-of-iszero.md) | 206 | `result-track:9daeb5f8c318d7de4e50a52f46db57f72a52228c0054539d68f86b3e56881575` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23689abf84bcfed6ee18e307907075264d55799a9b194b4044c29271536961f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Zero/Variant3a2ed424bc856e1c347ca9b05c90347d33dd725d5c93e17aec9f6f1994041c35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
