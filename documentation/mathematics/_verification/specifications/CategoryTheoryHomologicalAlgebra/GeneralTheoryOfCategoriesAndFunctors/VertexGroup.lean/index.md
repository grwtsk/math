# Verification target: Vertex Group

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9add7e6426c4d776c759af702ac3da4396b5d847",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/VertexGroup.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/VertexGroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9add7e6426c4d776c759af702ac3da4396b5d847`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PathCategory.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Path` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [vertexGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/VertexGroup.lean/declarations/vertexgroup.md) | 40 | `declaration-track:23b876815b1ec07337080edaab455fdf3a4ef15fe6e0101234ee00d22e184efd` |
| 2 | `theorem` | [vertexGroup.inv_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/VertexGroup.lean/declarations/vertexgroup-inv-eq-inv.md) | 50 | `result-track:121f3738d090484d1956ba5b3937307a92c9c6d191165d2ae225a37bee98fcaf` |
| 3 | `def` | [vertexGroupIsomOfMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/VertexGroup.lean/declarations/vertexgroupisomofmap.md) | 57 | `declaration-track:03133957b85b47554e5c315a07aaeb96a9bc1387b3846029e8c813ce9ef1aea6` |
| 4 | `def` | [vertexGroupIsomOfPath](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/VertexGroup.lean/declarations/vertexgroupisomofpath.md) | 71 | `declaration-track:7b044c55e7a6c308e7c0daa8c13758d89b972d76d9daa6678a964f77121b5bc3` |
| 5 | `def` | [CategoryTheory.Functor.mapVertexGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/VertexGroup.lean/declarations/categorytheory-functor-mapvertexgroup.md) | 76 | `declaration-track:69489982faa8264e442016de7be016d65f065aba007cce20cec3b6aa94475407` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e20128b04fe4a62bc73f667147e7986d464aec6dbcb1e270619c9bc199268ff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/VertexGroup/Varianteb3d332fae83e52432867399163ace30a57ead020200d8866d425c221e42c902.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
