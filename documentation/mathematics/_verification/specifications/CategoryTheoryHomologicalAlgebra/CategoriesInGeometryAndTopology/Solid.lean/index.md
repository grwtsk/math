# Verification target: Solid

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb17f4ded3709925844780d4ca6a5c24b86d3dc0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb17f4ded3709925844780d4ca6a5c24b86d3dc0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.KanExtension.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Functors` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [finFree](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/declarations/finfree.md) | 37 | `declaration-track:0c4f45f38111d4464575c13c04b3999b7ff34fe58a70c1288d1286aabd6555b3` |
| 2 | `abbrev` | [profiniteFree](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/declarations/profinitefree.md) | 41 | `declaration-track:cdab1a30a8bc6b7d54968f94332444a07fc4628f868752b10a5ec602c2628616` |
| 3 | `def` | [profiniteSolid](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/declarations/profinitesolid.md) | 45 | `declaration-track:0ad9f340df974d79642cd51aa8ed58375c981ba4c6f265e79a709c0549e081b2` |
| 4 | `def` | [profiniteSolidCounit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/declarations/profinitesolidcounit.md) | 51 | `declaration-track:1af6c9146d493452a7be1d1aa2170595d3edf4b879c00cc9b4e2a8a770a5ffd9` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/declarations/instance.md) | 54 | `declaration-track:397bad027b9a620e0bbb7f152add35aa9ed6763c42525e7264fc601738f720f5` |
| 6 | `def` | [profiniteSolidIsPointwiseRightKanExtension](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/declarations/profinitesolidispointwiserightkanextension.md) | 61 | `declaration-track:8d59e4b313a0d8f89cdd727121ed359b3fe4cd8bf0423eb068afbd24bc94a905` |
| 7 | `def` | [profiniteSolidification](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/declarations/profinitesolidification.md) | 66 | `declaration-track:d763695ebbcca521a5a71cccbdf3eb70ca166bd8b5da7d0ec70775b6d2c237cd` |
| 8 | `class` | [CondensedMod.IsSolid](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/Solid.lean/declarations/condensedmod-issolid.md) | 72 | `declaration-track:9315b7dd5aada510f31217fa3a8ae4f598ed6799eb09ffd63fe4c42d29b77568` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a81d1dc10403dfd3d02f0c5879734485eae38b830465ad7eb5f3e2e7082ea9ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Solid/Variant37af0fd83b67a1bfe36288034b7e869abfde7eb0c74b2a3acfc617401818f0b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
