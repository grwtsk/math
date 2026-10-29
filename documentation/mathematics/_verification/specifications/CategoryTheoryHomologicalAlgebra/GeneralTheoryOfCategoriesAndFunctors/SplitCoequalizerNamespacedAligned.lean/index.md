# Verification target: Split Coequalizer Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37616032fb1d903f8f455590fe7dc9c314f972ca",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37616032fb1d903f8f455590fe7dc9c314f972ca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSplitCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/issplitcoequalizer.md) | 70 | `declaration-track:508023398a8d43f1b139fc4d18d288979648c4e61b79258334047b4691d35158` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/instance.md) | 90 | `declaration-track:d670e9734954e75bdbfcbce86f435aa5e81d9af5e308132d6e56ac3b1ef41976` |
| 3 | `def` | [IsSplitCoequalizer.map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/issplitcoequalizer-map.md) | 103 | `declaration-track:9efeab8653690138c73842ecafb7dfea31f99f194a96a95de0ff5e396c30a893` |
| 4 | `def` | [IsSplitCoequalizer.asCofork](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/issplitcoequalizer-ascofork-source-edition-2.md) | 120 | `declaration-track:d8cc51240282d9883ce8d872783ddbe6aa87ccaee665c5c7f4ef01643674fcbe` |
| 5 | `theorem` | [IsSplitCoequalizer.asCofork_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/issplitcoequalizer-ascofork.md) | 125 | `result-track:721adef27f0a70fd03e8b96211a333926ec384313cde596d6add8addeb87acfe` |
| 6 | `def` | [IsSplitCoequalizer.isCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/issplitcoequalizer-iscoequalizer.md) | 133 | `declaration-track:24a37bd144e1a42bb36cde0e8898332fe8ac4dbc47e3dd372d825e513677fa34` |
| 7 | `class` | [HasSplitCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/hassplitcoequalizer.md) | 150 | `declaration-track:037d39c3635f59aa00c6ff9a36c37767a220f269b536bc3bffb29732ac94d174` |
| 8 | `abbrev` | [Functor.IsSplitPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/functor-issplitpair.md) | 159 | `declaration-track:3c55b0db47cc41318b4037a18b63c0af480eb2347f8c096a1432461e16a39190` |
| 9 | `def` | [HasSplitCoequalizer.coequalizerOfSplit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/hassplitcoequalizer-coequalizerofsplit.md) | 164 | `declaration-track:88ee14c8a342a3baae408ebc67500454e7d9f4d1c6c9c5d3ff0f62a1a1fe0512` |
| 10 | `def` | [HasSplitCoequalizer.coequalizerπ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/hassplitcoequalizer-coequalizer.md) | 169 | `declaration-track:e75b92f44b0a5b20fda93d7ab67fed7df8d8a196ca5ec683066226237ace54df` |
| 11 | `def` | [HasSplitCoequalizer.isSplitCoequalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/hassplitcoequalizer-issplitcoequalizer.md) | 175 | `declaration-track:1e8793185ccbf45da1d28368e84777184f439780f46ea0a021587f855ddcc7fb` |
| 12 | `instance` | [map_is_split_pair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/map-is-split-pair.md) | 181 | `declaration-track:0540cbaa167fcd6a11a3b3e7b2c2c86f5e30857e79ed726d95d8d912840a5d3d` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SplitCoequalizerNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 189 | `declaration-track:dfe55c0552d39ba7c23c64728e1742d431de8cb47b4663d7a03ab4980876907d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0299c07394839c10672ad06c965b09d4ef9bcb4d5050778cf1bfb45b2c9ed36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitCoequalizer/Variantfb291eb08747a11f49525f6929dc14409137ec7d3498dc2500f7b738fc2d3939.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
