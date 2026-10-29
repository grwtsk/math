# Verification target: Units Opposite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da28d8524ae0b74e52b90eeff745880b0ba99252",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Opposite/Variantab0f7948722f66eb5ce3a75ffab04d7f646a9d895f962003e49b8b2f6082f1db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/UnitsOppositeNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/UnitsOppositeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da28d8524ae0b74e52b90eeff745880b0ba99252`.

Source path: `GRWTSK/Algebra/GroupTheory/Opposite/Variantab0f7948722f66eb5ce3a75ffab04d7f646a9d895f962003e49b8b2f6082f1db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Opposite/Variantab0f7948722f66eb5ce3a75ffab04d7f646a9d895f962003e49b8b2f6082f1db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Equiv.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Units.opEquiv](../../../../GroupTheoryAndGeneralizations/UnitsOppositeNamespaced.lean/declarations/units-opequiv.md) | 32 | `declaration-track:632028d046ffa810f6bb48078d3bd6e04cbc5385002be21121980303c0e1e269` |
| 2 | `theorem` | [Units.coe_unop_opEquiv](../../../../GroupTheoryAndGeneralizations/UnitsOppositeNamespaced.lean/declarations/units-coe-unop-opequiv.md) | 40 | `result-track:8db06b3b8b5f1c85636eba10d85cecc0f1c2a6fe866af5a862d78b1fa573cab9` |
| 3 | `theorem` | [Units.coe_opEquiv_symm](../../../../GroupTheoryAndGeneralizations/UnitsOppositeNamespaced.lean/declarations/units-coe-opequiv-symm.md) | 45 | `result-track:fc27d7b06b3ad74af2339585b5d8ac548e1624f5403b04e0b09f2bcdc8759543` |
| 4 | `theorem` | [IsUnit.op](../../../../GroupTheoryAndGeneralizations/UnitsOppositeNamespaced.lean/declarations/isunit-op.md) | 50 | `result-track:a90d56b20037c6e5ae2096cb4d1bc9ad5ab754d93879ae96d234ba85e45c6d1c` |
| 5 | `theorem` | [IsUnit.unop](../../../../GroupTheoryAndGeneralizations/UnitsOppositeNamespaced.lean/declarations/isunit-unop-source-edition-2.md) | 55 | `result-track:e3987304ed892e34653f95faa705e6a5b6acfd537f3481272f56ba72dc7027fe` |
| 6 | `theorem` | [isUnit_op](../../../../GroupTheoryAndGeneralizations/UnitsOppositeNamespaced.lean/declarations/isunit-op-source-edition-2.md) | 60 | `result-track:f6c46126ba7fccbc4ba4b9601c1595ce57ca5a1be65e33a6ef1287ca585efcf3` |
| 7 | `theorem` | [isUnit_unop](../../../../GroupTheoryAndGeneralizations/UnitsOppositeNamespaced.lean/declarations/isunit-unop.md) | 64 | `result-track:07ebd85902c25ed90e84e43c92c6f8a95381df96f1db4c3d59f3b17238e7dee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eee3525fda47ba725c52f017af8f56ca93bc5da42e3c26f516417930aaf43927 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Opposite/Variantab0f7948722f66eb5ce3a75ffab04d7f646a9d895f962003e49b8b2f6082f1db.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Opposite/Variantab0f7948722f66eb5ce3a75ffab04d7f646a9d895f962003e49b8b2f6082f1db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
