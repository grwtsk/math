# Verification target: Top Cat Yoneda Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d332b1c9c3f5d12ce3b417cabb860f09e0f4b603",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopCatYonedaNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/TopCatYonedaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d332b1c9c3f5d12ce3b417cabb860f09e0f4b603`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Products` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [yonedaPresheaf](../../../../GeneralTopology/TopCatYonedaNamespaced.lean/declarations/yonedapresheaf.md) | 41 | `declaration-track:40f7c81eb49a937a45a6969f58b6f82c5f5ce69461e5fca8aa616893d010d592` |
| 2 | `def` | [yonedaPresheaf'](../../../../GeneralTopology/TopCatYonedaNamespaced.lean/declarations/yonedapresheaf-source-edition-2.md) | 50 | `declaration-track:7f083a434a77a2843bfe9d9ad556ac099beb0d8285168b277effb0539b4a0e0b` |
| 3 | `theorem` | [comp_yonedaPresheaf'](../../../../GeneralTopology/TopCatYonedaNamespaced.lean/declarations/comp-yonedapresheaf.md) | 54 | `result-track:df3af09fe98f6e1a3fdd6d9baec25f7248a8c7217f589811c229cb4766ea6eb1` |
| 4 | `theorem` | [piComparison_fac](../../../../GeneralTopology/TopCatYonedaNamespaced.lean/declarations/picomparison-fac.md) | 56 | `result-track:49b9e4497374beb6316a0f2ff3fb3b175819889757d57600f8eddecda8681872` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/TopCatYonedaNamespaced.lean/declarations/instance.md) | 69 | `declaration-track:6fb9d254e93f6a752559d8ee786e07a5fbb833d67eff44340db77e170e21bc9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b265648801acdf52342145d56d25d46e378c848f499bf4e22f54877fc7b05e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant02a330fb811d8a1c6c7eeb48ba8640a609b786319f655435d5ae7fe584dd1f2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
