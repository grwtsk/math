# Verification target: Limits Kan Extension Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcfa98a8e768524404a5754dbff8cdc3b22038cc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant83ddf21976502f779c03c1f891c512ed57ac5fc0bb442f529a0e020149d53374.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcfa98a8e768524404a5754dbff8cdc3b22038cc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant83ddf21976502f779c03c1f891c512ed57ac5fc0bb442f529a0e020149d53374.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant83ddf21976502f779c03c1f891c512ed57ac5fc0bb442f529a0e020149d53374.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PUnit` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.StructuredArrow` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/diagram-source-edition-2.md) | 61 | `declaration-track:67424006d773af876ff211ef6ce15ac62ad77f3413870d1fd69b1f133889bab3` |
| 2 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/cone.md) | 70 | `declaration-track:8cf1fbd0113cb154108de8ee0459db171454a89cf2be943f2c1365d7064d234e` |
| 3 | `def` | [loc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/loc.md) | 90 | `declaration-track:a3f4c011e138ffeb669d8599fe7ba85af8995fcb3827efc76552e9736e401f81` |
| 4 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/equiv.md) | 123 | `declaration-track:5d7b9c45aefaed3991598bf2dc327a12183135ce420b9c710750b16fc320fd61` |
| 5 | `def` | [ran](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/ran.md) | 170 | `declaration-track:348093f7b9be95a48f47f651b43ed476d844a07008704d2c4597a70b4fa53540` |
| 6 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/adjunction.md) | 187 | `declaration-track:3d5f09c68bcec69115ae146b60ffbe7f5c94cbdae5683f42eb8c51e380e0d1f4` |
| 7 | `theorem` | [reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/reflective.md) | 193 | `result-track:544f64029b30c543e4aa6795364e4e968c5c228b6b53324862333cd55fe6670c` |
| 8 | `abbrev` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/diagram.md) | 217 | `declaration-track:35ee190c129f9d31efe267d954628d5935772e77ff2c34a67a1b2f299256f5fa` |
| 9 | `def` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/cocone.md) | 226 | `declaration-track:7172110082b689e1bcc5626d0bc38ab24caad94992c512e02879eefefae4c731` |
| 10 | `def` | [loc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/loc-source-edition-2.md) | 244 | `declaration-track:f4ddfe8d539dc787567c361488bf2824606776f744dda41fe979569dbea04b23` |
| 11 | `def` | [equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/equiv-source-edition-2.md) | 280 | `declaration-track:becf85eea30f97344133d53a0984e71022cac7f78512c83e4091deb657f45bf1` |
| 12 | `def` | [lan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/lan.md) | 339 | `declaration-track:8e6703739b23fde3ff4612fa41e93d4beacbfb9b34546c20ff42beaad071db79` |
| 13 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/adjunction-source-edition-2.md) | 352 | `declaration-track:ab0ea00d7064d82ab6bf7c9224e8f2cce272f971fe4f0d0c0699f85b5567fdb9` |
| 14 | `theorem` | [coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsKanExtensionNamespaced.lean/declarations/coreflective.md) | 358 | `result-track:2cab011c0d8f08c857958fb65902f6789cd2026f53736b964c423445e8b58cdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9634e88a9f1b6e266109ce43c25f99d19c7a134f73892f54c754b5f04d550769 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant83ddf21976502f779c03c1f891c512ed57ac5fc0bb442f529a0e020149d53374.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/KanExtension/Variant83ddf21976502f779c03c1f891c512ed57ac5fc0bb442f529a0e020149d53374.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
