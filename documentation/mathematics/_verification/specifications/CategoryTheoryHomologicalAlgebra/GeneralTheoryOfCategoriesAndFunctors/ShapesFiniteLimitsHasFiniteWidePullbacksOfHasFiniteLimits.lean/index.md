# Verification target: Shapes Finite Limits Has Finite Wide Pullbacks Of Has Finite Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3244988e8db0c240031f321d4025ded4ac4d7c6",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantc50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3244988e8db0c240031f321d4025ded4ac4d7c6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantc50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantc50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FinCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Equalizers` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Option` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/hasfinitelimits.md) | 39 | `declaration-track:0dd258c63fb1c219db9febf7534a9f377933481fe9ca0541bc0c6d67d41080e1` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/instance-source-edition-4.md) | 45 | `declaration-track:cb8652e26a91cbbad0d6f7f789e79ba9b529f11bc4502f95f30f5d4bfbf80e8b` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/instance-source-edition-5.md) | 51 | `declaration-track:d90776ed61654348c9a149bcb4a0126a13a74d3478768f846e422cc521644d60` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/instance-source-edition-6.md) | 61 | `declaration-track:fc25144fb87df18a45e3f5ea0d80fee92cd926818e4575b209da5f3eae425bbf` |
| 5 | `theorem` | [hasFiniteLimits_of_hasFiniteLimits_of_size](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/hasfinitelimits-of-hasfinitelimits-of-size.md) | 67 | `result-track:9a5f8e3e7b0923ca343970c40fe06994da7590b35374b12daff8fc4f62f3e8a7` |
| 6 | `class` | [HasFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/hasfinitecolimits.md) | 89 | `declaration-track:d066b5689f2434c13f02688736f923b9e270bec65c1dff51d6dac533f5a1c489` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/instance.md) | 95 | `declaration-track:9ba075c34f5a371aa8dc587a657b430ad57735a67d3a041a7a70b276b5b66980` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/instance-source-edition-3.md) | 101 | `declaration-track:b73306e780c216083eb73e07cf9cc1914b7871218d0208be8d60dec64712f37c` |
| 9 | `theorem` | [hasFiniteColimits_of_hasFiniteColimits_of_size](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/hasfinitecolimits-of-hasfinitecolimits-of-size.md) | 112 | `result-track:d8ebaafcdf9fa63f1750777765be32020a15fed98e34652b66020d99356dc432` |
| 10 | `instance` | [fintypeWalkingParallelPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/fintypewalkingparallelpair.md) | 130 | `declaration-track:db7a7e5c4f6232dce2041ee6a028b9712199226ee39870bcec22de43c8ca07f8` |
| 11 | `instance` | [instFintypeWalkingParallelPairHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/instfintypewalkingparallelpairhom.md) | 137 | `declaration-track:47971e5d3e18738eea6ec229863d0460ae21c5e749adeb34dc57a5a220436fd5` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/instance-source-edition-2.md) | 149 | `declaration-track:b72b57bc048afec76366589051faa567f080dfce97122490f0ceb0bc909a2cd9` |
| 13 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/example-source-edition-4.md) | 154 | `declaration-track:ccd934748137711f04e26ee2953fbcb9595fb7b759d4a42d5ab9bf50e3f218d0` |
| 14 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/example-source-edition-2.md) | 158 | `declaration-track:6a421617fbb365e8ae881ca1f2bd47df52a10d1d123301a7093cfeef90a4b372` |
| 15 | `instance` | [fintypeObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/fintypeobj-source-edition-2.md) | 166 | `declaration-track:ac6205436efd4644f7038e3dd04051f2c6987dafdca2cc9228f1b1e453940288` |
| 16 | `instance` | [fintypeHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/fintypehom-source-edition-2.md) | 171 | `declaration-track:a960d25e21ec957a024e408f09f9b8dc5ca0f281860940a5e9a76d9a3a676626` |
| 17 | `instance` | [fintypeObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/fintypeobj.md) | 192 | `declaration-track:4006a2230d8600079ee193d5a23fd2cf29108310209d2476aa6be211545b2c4f` |
| 18 | `instance` | [fintypeHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/fintypehom.md) | 196 | `declaration-track:83493f7f9bd62ae36e6692e18e96603a3eaa75937599ce3cedbff15c6e583424` |
| 19 | `instance` | [finCategoryWidePullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/fincategorywidepullback.md) | 214 | `declaration-track:9e71d229a3891cfc544f2461276187f6024703915249414c47d43f00c4faf5fa` |
| 20 | `instance` | [finCategoryWidePushout](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/fincategorywidepushout.md) | 218 | `declaration-track:74b46fbea475709777c80748df596c25e3e328cf43ed433d5cefd4e4c1592224` |
| 21 | `class` | [HasFiniteWidePullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/hasfinitewidepullbacks.md) | 227 | `declaration-track:e4c0642d7a0d61e0797e8765784dc4870f6476f087029ec049832672527797f7` |
| 22 | `instance` | [hasLimitsOfShape_widePullbackShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/haslimitsofshape-widepullbackshape.md) | 232 | `declaration-track:02946c353d208b0264c2b575af01cdc30b30fbc982ae7047e5ef4f6da631e7d2` |
| 23 | `class` | [HasFiniteWidePushouts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/hasfinitewidepushouts.md) | 242 | `declaration-track:b57fed37f244cf49266e4dafe9df6c3b5f7d362d8319e926ec66bc1a049016fb` |
| 24 | `instance` | [hasColimitsOfShape_widePushoutShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/hascolimitsofshape-widepushoutshape.md) | 247 | `declaration-track:7489c77df8d6633cda60a65a936967ed62169f7f57849ec4fb993cb90ddf8519` |
| 25 | `theorem` | [hasFiniteWidePullbacks_of_hasFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/hasfinitewidepullbacks-of-hasfinitelimits.md) | 257 | `result-track:d0b8693d862a968e8083b19f8fc91a904358f2b07ae1ec58717fc49900dc9b62` |
| 26 | `theorem` | [hasFiniteWidePushouts_of_has_finite_limits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/hasfinitewidepushouts-of-has-finite-limits.md) | 264 | `result-track:a49f269402e180566c115749f228253112d0ba45d11ac058062160cb08b7af26` |
| 27 | `instance` | [fintypeWalkingPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/fintypewalkingpair.md) | 269 | `declaration-track:776346741fe8f2863114a7e8fef140597084b9e53c631342a24279b4b260f125` |
| 28 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/example.md) | 275 | `declaration-track:485ead9cc0d05d990d4fae429ad6c91d17c2c9f771348b06f6d7f1560c3e631c` |
| 29 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ShapesFiniteLimitsHasFiniteWidePullbacksOfHasFiniteLimits.lean/declarations/example-source-edition-3.md) | 278 | `declaration-track:74c423dfffa50985e865080a3042656aa0a02b3eb238fe0e4fbd516846c83f18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=78f1e11aac35a8d7a0b79350cd73c93ef4bb0d782fda8d23644ad29984d9fca3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantc50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteLimits/Variantc50e87764d496b5a016991a9b6d9a4049c49e6a6fcc92d76c642652509d3482e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
