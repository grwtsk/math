# Verification target: Quadratic Module Cat Monoidal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "015a2d31285f1d5bdade4a8d43c35c819291fe54",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant34ce45bcbad37c4b364479b502639bdaa03b537e3a1824ec1bf84a1c3fdd888e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `015a2d31285f1d5bdade4a8d43c35c819291fe54`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant34ce45bcbad37c4b364479b502639bdaa03b537e3a1824ec1bf84a1c3fdd888e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant34ce45bcbad37c4b364479b502639bdaa03b537e3a1824ec1bf84a1c3fdd888e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Transport` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.QuadraticModuleCat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.TensorProduct.Isometries` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [tensorObj](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/declarations/tensorobj.md) | 44 | `declaration-track:2eb63d0bea63aa2441ab9a2f3208c98d5fc815f950836695b7ad1196677f6edc` |
| 2 | `abbrev` | [tensorHom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/declarations/tensorhom.md) | 50 | `declaration-track:edcf1e5300a501949c2defd94af30a2146e609a6695d15e0a3ef7ce21227b4ab` |
| 3 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/declarations/instance.md) | 61 | `declaration-track:c4b17ea87ae2e16bfb029e20b44b3dc7e121bd400a4d8aa5edfca51ad241c5bb` |
| 4 | `theorem` | [toModuleCat_tensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/declarations/tomodulecat-tensor.md) | 71 | `result-track:e4f454617a8a79688d002f30da20529e665025f11008616c77a4004c2d71f69b` |
| 5 | `theorem` | [forget₂_map_associator_hom](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/declarations/forget-map-associator-hom.md) | 74 | `result-track:5b155068ad9720f479bea2cdf2665c9c891fec1f91336f516b6202f6381eee1d` |
| 6 | `theorem` | [forget₂_map_associator_inv](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/declarations/forget-map-associator-inv.md) | 78 | `result-track:8bc28e49c715ef5f7238fe3f254ee3539c7a3757edfed24f1156eda2259b564c` |
| 7 | `instance` | [instMonoidalCategory](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/declarations/instmonoidalcategory.md) | 82 | `declaration-track:a81b7827bd470454831eacfb15fd62221e4f482d8b7bfd07421f5f2480a3970e` |
| 8 | `example` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticModuleCatMonoidal.lean/declarations/example.md) | 110 | `declaration-track:f868e8eff34efdc2c6f622b022ac5b8a667a38efccdb9d286b65a51773a7d8c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b2bb64258f4af8c03a4f75446b7f84074652020b8c285385c86cf53539792b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant34ce45bcbad37c4b364479b502639bdaa03b537e3a1824ec1bf84a1c3fdd888e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant34ce45bcbad37c4b364479b502639bdaa03b537e3a1824ec1bf84a1c3fdd888e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
