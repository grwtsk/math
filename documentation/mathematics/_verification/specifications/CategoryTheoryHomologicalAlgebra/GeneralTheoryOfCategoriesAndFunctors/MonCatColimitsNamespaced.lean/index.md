# Verification target: Mon Cat Colimits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1071865925ffbb6eb2220f24ced0de2846938a6c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1071865925ffbb6eb2220f24ced0de2846938a6c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prequotient](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/prequotient.md) | 66 | `declaration-track:7c81c4a460a46b3011cdceaec0b517487be77a5cca7b8bf8ebb1fa7d3df3fb43` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/instance.md) | 73 | `declaration-track:3e1c32e64e74d4b8f286b035868b29739ec65953035a116020b147216e03ab82` |
| 3 | `inductive` | [Relation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/relation.md) | 82 | `declaration-track:865ec2034e7b880bc8b88b03df64f16350263c0260fce550b75c66f85a2ed87b` |
| 4 | `def` | [colimitSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/colimitsetoid.md) | 105 | `declaration-track:2f9fd18ebc363054f5c3e7d46cbe572e1eb54f48605c5f0565bd023a2b24d561` |
| 5 | `def` | [ColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/colimittype.md) | 115 | `declaration-track:8c81ff6bed87db8edbbd380292846102b2696fb26977dbb73c8abba32445c890` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/instance-source-edition-2.md) | 120 | `declaration-track:ed68a7c61f2de09bac1cb883183684da8f53457f29b6cee01442415260639664` |
| 7 | `instance` | [monoidColimitType](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/monoidcolimittype.md) | 124 | `declaration-track:188cae52330443709e0d3af5a91fcb57f53e72079a08e58903c02c2a2297cc30` |
| 8 | `theorem` | [quot_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/quot-one.md) | 136 | `result-track:65c2fd74118a744602b712be3e9978007ab90a76e06321a09bf193b4bef43692` |
| 9 | `theorem` | [quot_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/quot-mul.md) | 142 | `result-track:cd499884c9d1655a2acd42d681d10f94e402537440c3100322b4c825da5d5eac` |
| 10 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/colimit.md) | 150 | `declaration-track:3179260b9d619d66d92c89316c26266028740b54d92de818aa7f1841c1741564` |
| 11 | `def` | [coconeFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/coconefun.md) | 156 | `declaration-track:d0f452fa16748dd1b0d459921da3c782c62502a2e04df90ab8ecd74630121b32` |
| 12 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/coconemorphism.md) | 162 | `declaration-track:945c9abf21f5ecc256e007e29fa5a965ae33af5a1a2537e0d771b9a30b6e01fa` |
| 13 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/cocone-naturality.md) | 170 | `result-track:4d98d282f8d591d8bab0b98eb3cd036e5f6853edb6d795f49d10ea401efe434d` |
| 14 | `theorem` | [cocone_naturality_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/cocone-naturality-components.md) | 179 | `result-track:c29c677d73621c296de0fdcb465f75caf5de984d19b18bf32c34cb4eaacf8e8d` |
| 15 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/colimitcocone.md) | 187 | `declaration-track:2e50f8a4d5eb10513e901bc4e88d579108dc3819ae1dcd8f650b25ff47500010` |
| 16 | `def` | [descFunLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/descfunlift.md) | 195 | `declaration-track:6db2000fc1428442610704cb2e9ae05ee08e8fd17e181bf693c1bb90a5eee1e8` |
| 17 | `def` | [descFun](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/descfun.md) | 203 | `declaration-track:d1683afa02ee5a157aa5734a38d4166250904813340f5b6eca5e6f4b31b2250c` |
| 18 | `def` | [descMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/descmorphism.md) | 224 | `declaration-track:fec1afcbdb05dd1d53876b3a7bcf8398f2cbbe24b34b6e7d022e7d3dfd1e6968` |
| 19 | `def` | [colimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/colimitiscolimit.md) | 237 | `declaration-track:75b7133cfc070c215dbb33067bbb3f35278722a2a4ac59286018545c9bab7d6c` |
| 20 | `instance` | [hasColimits_monCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatColimitsNamespaced.lean/declarations/hascolimits-moncat.md) | 254 | `declaration-track:a4c3191ef5ca5059c1b13f63f62712c522024743bd568bb6f1cd540cfc751c53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=953475afc125e98ba665285cc04abe0cb3ca8b60a3bff0586dc93d878b79e475 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variantc4cb90932fa9a7d8a6fea32f7fa072c5739a24fcd0e4d4f872f7b18bbc936c6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
