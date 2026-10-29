# Verification target: Fubini Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14e2d8c5b6583d1cbb0092c22851120b84a61231",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Varianta7f3aa89c0e665e3ae7ac8534082aa2f81e325b351e622a9e0def0b9a3ea4532.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14e2d8c5b6583d1cbb0092c22851120b84a61231`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Varianta7f3aa89c0e665e3ae7ac8534082aa2f81e325b351e622a9e0def0b9a3ea4532.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Varianta7f3aa89c0e665e3ae7ac8534082aa2f81e325b351e622a9e0def0b9a3ea4532.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DiagramOfCones](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/diagramofcones.md) | 64 | `declaration-track:35c2fac55df7d5b100234c6cd7d2d8c630b840f598bff30c379c1a9ec393b742` |
| 2 | `def` | [DiagramOfCones.conePoints](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/diagramofcones-conepoints.md) | 78 | `declaration-track:5ed2d8fdbfe3ea54a4311b3d8705b02cdb2d22399dfe3c004321af0a198c9111` |
| 3 | `def` | [coneOfConeUncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/coneofconeuncurry.md) | 89 | `declaration-track:842c0c9440384479b61c4d0542bf2e13f09ccdc6fa0fa99d404b4b4ae67a1bbb` |
| 4 | `def` | [coneOfConeUncurryIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/coneofconeuncurryislimit.md) | 122 | `declaration-track:bbb0c92069263e523a051b9aa0f41eca7922b91ade1bf3c170621b26ab5b338c` |
| 5 | `def` | [DiagramOfCones.mkOfHasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/diagramofcones-mkofhaslimits.md) | 171 | `declaration-track:b6fef62a78e1b66a97887084b9312cafab6bfc06238ffb8aa3b50a9a9693a024` |
| 6 | `instance` | [diagramOfConesInhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/diagramofconesinhabited.md) | 177 | `declaration-track:bbdd164f341884eb6b1302575058ca14dc7a032863b83996964d21a426795913` |
| 7 | `theorem` | [DiagramOfCones.mkOfHasLimits_conePoints](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/diagramofcones-mkofhaslimits-conepoints.md) | 182 | `result-track:1e2f2d60589fdbc4b0359c44083e1cd8eb5e9ea8edef9689816ac92b9c2810a0` |
| 8 | `def` | [limitUncurryIsoLimitCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limituncurryisolimitcomplim.md) | 195 | `declaration-track:e9bd8b3e925a7b88567935e73b71b2d263feb63d8fec8b02c03db63ae6dafb18` |
| 9 | `theorem` | [limitUncurryIsoLimitCompLim_hom_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limituncurryisolimitcomplim-hom.md) | 206 | `result-track:bdb939d5d4c47bf5d4e16301b76b11471612b16159a6c7342477293b4e27107c` |
| 10 | `theorem` | [limitUncurryIsoLimitCompLim_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limituncurryisolimitcomplim-inv.md) | 214 | `result-track:9377d903f6f74a112055150ffb03ebc882cf645b27931fbd5831206a86079220` |
| 11 | `def` | [limitFlipCompLimIsoLimitCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limitflipcomplimisolimitcomplim.md) | 231 | `declaration-track:468b6e5a0fbc3b8b2cc0a841e34923ca3909a75c0110b1d377ad835dfb7e2a43` |
| 12 | `theorem` | [limitFlipCompLimIsoLimitCompLim_hom_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limitflipcomplimisolimitcomplim-hom.md) | 241 | `result-track:0e71b29012f7af10d425439e22e7a26c553780665bb755f79ba3df40f261289b` |
| 13 | `theorem` | [limitFlipCompLimIsoLimitCompLim_inv_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limitflipcomplimisolimitcomplim-inv.md) | 251 | `result-track:9c3bda7b706ae772e8904e6657d9d0740e65cd17a186f9e55834f9518fd29545` |
| 14 | `def` | [limitIsoLimitCurryCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limitisolimitcurrycomplim.md) | 276 | `declaration-track:b74508e34b117ef2e06025eebfc330739bf568e3b27efe928433ad7e62ae3e92` |
| 15 | `theorem` | [limitIsoLimitCurryCompLim_hom_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limitisolimitcurrycomplim-hom.md) | 285 | `result-track:fff98d10d886ce172c2c4f40400c163082acbdabde285578464bff3fbfde1c02` |
| 16 | `theorem` | [limitIsoLimitCurryCompLim_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limitisolimitcurrycomplim-inv.md) | 292 | `result-track:9cb8b5330e1111084142caa4a63b19c6c330bda92a8fe5c477ba1abadffb5b29` |
| 17 | `def` | [limitCurrySwapCompLimIsoLimitCurryCompLim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limitcurryswapcomplimisolimitcurrycomplim.md) | 311 | `declaration-track:488f468cb7a1c37ecc58f656b58c95f2aecf600c174bc2febed5cff667f7c98c` |
| 18 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_hom_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limitcurryswapcomplimisolimitcurrycomplim-hom.md) | 322 | `result-track:824ca5fb1f9d85aeaf7cc4341ea90b5cb041678c4a210e689938efda4da228aa` |
| 19 | `theorem` | [limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FubiniNamespaced.lean/declarations/limitcurryswapcomplimisolimitcurrycomplim-inv.md) | 340 | `result-track:04b316d3ce21ad14d493ae1894cfa202849928568728ef14f8afbd7d9d43bd72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d68e640cc11626998dbb85eed951f1b632cf34e96a7948ae6049191ed3c996e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Varianta7f3aa89c0e665e3ae7ac8534082aa2f81e325b351e622a9e0def0b9a3ea4532.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Varianta7f3aa89c0e665e3ae7ac8534082aa2f81e325b351e622a9e0def0b9a3ea4532.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
