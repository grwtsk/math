# Verification target: Category Theory Essentially Small

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67eaa7efb02edf3fa979e2bf4d2a47ab95632fe3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant566607d13399696f5b1375af1a4b181aac4105289751e97889ac7244cb34c1a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67eaa7efb02edf3fa979e2bf4d2a47ab95632fe3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant566607d13399696f5b1375af1a4b181aac4105289751e97889ac7244cb34c1a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant566607d13399696f5b1375af1a4b181aac4105289751e97889ac7244cb34c1a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Small.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.ULift` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Skeletal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EssentiallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/essentiallysmall.md) | 36 | `declaration-track:e19b49dee52ea7f816f26c784f2a946c352b56c6dc1cf848262d9b50501c06c2` |
| 2 | `theorem` | [EssentiallySmall.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/essentiallysmall-mk.md) | 42 | `result-track:9d7ef0887054b815535e5f95db76d92b74f6bd0d37d0944e008f7eb9a25f3154` |
| 3 | `def` | [SmallModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/smallmodel.md) | 50 | `declaration-track:f16bd99a26bf8a5fdc3500b998b5dd0ac5a0db8bc8918d8d5a599a08ea4018fb` |
| 4 | `instance` | [smallCategorySmallModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/smallcategorysmallmodel.md) | 54 | `declaration-track:b136efb01a46e14893aaeb487dcc57d3415f8a58e03e989fe1817da6122966e0` |
| 5 | `def` | [equivSmallModel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/equivsmallmodel.md) | 62 | `declaration-track:38142d226227e9ad66a14cf4c22b0c98e53cc6c26140fbe2ea96ae5e41a79ea1` |
| 6 | `theorem` | [essentiallySmall_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/essentiallysmall-congr.md) | 68 | `result-track:8102300a18b53cdab12b7a37a2e63a83f2f53b8fbcc58e2c20abd6530776ca62` |
| 7 | `theorem` | [Discrete.essentiallySmallOfSmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/discrete-essentiallysmallofsmall.md) | 79 | `result-track:4d96e16f307cefb870a2e14d2ed19e90697c5fb46702a361d2deadf6f686ab8f` |
| 8 | `theorem` | [essentiallySmallSelf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/essentiallysmallself.md) | 84 | `result-track:bdaa3289e85ffd3de7d5f57d29901c1a8f14d3d18bf55780afa176c187c620eb` |
| 9 | `class` | [LocallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/locallysmall.md) | 92 | `declaration-track:f7feba181926c81d6c2460d695fcf08b0c97747c6003f52dc0b648ca80690692` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:206428ec7a006a669fc0b2f448b8757c4a6293d68de9d06ad304b194496bdbf0` |
| 11 | `theorem` | [locallySmall_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/locallysmall-congr.md) | 100 | `result-track:3c75575c5b4d677095450eccf137fb4ca2067fe482a3ddb6342960987c71c12d` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/instance-source-edition-3.md) | 117 | `declaration-track:5229ec218cdc87625f2ac354673cdbd32edb8006bd77b530dae2ec106494461a` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/instance-source-edition-4.md) | 121 | `declaration-track:a55d2bb7145dbec256da41fec7dcfa08a4507c7d9f703d2bc5d9c7b7726a0fa4` |
| 14 | `def` | [ShrinkHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/shrinkhoms.md) | 130 | `declaration-track:d1b20ca08b5a29d06ea1bc27364331527834bee8076e231aafce447fb7903346` |
| 15 | `def` | [toShrinkHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/toshrinkhoms.md) | 142 | `declaration-track:66e98b34a75f6e19bdb05782183e36d01488b3c5ec8b985e0d9f0a7939147ba2` |
| 16 | `def` | [fromShrinkHoms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/fromshrinkhoms.md) | 147 | `declaration-track:a5263caf54713ff2d65e6ff5beb2ca5704d12477c1831fdc34f975b024d43800` |
| 17 | `theorem` | [to_from](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/to-from.md) | 152 | `result-track:3c493e5222e2277140ae370952a10c664ab55ac532ffd0fc5ca5c6898491a150` |
| 18 | `theorem` | [from_to](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/from-to.md) | 157 | `result-track:6a70c1d3d5a2fde7b39f6cac2468b3e53ccd09a8dc3c0fcb9301fbf71c2eb201` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/instance.md) | 166 | `declaration-track:0dafebfdce9e0f910497a1020225ca82a2a45cc185d0ad8f9ac92e86e3ef567b` |
| 20 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/functor.md) | 174 | `declaration-track:ad6d1dce09420d49f41129e81b2e717142231d00da58b37eec84c53491a4f94f` |
| 21 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/inverse.md) | 182 | `declaration-track:a9cd4d9b824f45df4922e7ce71d4955729eea06d89af8ef679bc65249f3bafa3` |
| 22 | `def` | [equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/equivalence.md) | 191 | `declaration-track:b6c9b83de1f55161f0a8f90d91bd9d242ef72d12a8dbf7a4f732735b219f7c9d` |
| 23 | `theorem` | [essentiallySmall_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/essentiallysmall-iff.md) | 203 | `result-track:d05114df065e7d59b08b0ce00c72a3b5a1d8b24067ca7beedfdb96c300ab8788` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/instance-source-edition-5.md) | 227 | `declaration-track:fa445a20a38d4d21cecbf13728644f265ba6fc81eb805012e9425072427bbf50` |
| 25 | `theorem` | [essentiallySmall_iff_of_thin](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryEssentiallySmall.lean/declarations/essentiallysmall-iff-of-thin.md) | 234 | `result-track:69c2628c8a71113df7c9af37fc9a5634f4255fa86947aaaaa7f5dd2fd365b0a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec67b63b820b7bdfd2a429ab41a1dcd81afae8a06b76fd60ff13be0b32ede9e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant566607d13399696f5b1375af1a4b181aac4105289751e97889ac7244cb34c1a7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant566607d13399696f5b1375af1a4b181aac4105289751e97889ac7244cb34c1a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
