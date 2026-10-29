# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSmall.Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38ec3f36f9f0b7bdee659186bc8819f42ed8f1a8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean/index.md) · [Full source](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38ec3f36f9f0b7bdee659186bc8819f42ed8f1a8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Small.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsSmall](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean/declarations/issmall--ee36c98b6822c085935c365f.md) | 38 | `declaration-track:ee36c98b6822c085935c365f0b8b95c43fe3966a215bfe3002d2b20ac922f473` |
| 2 | `instance` | [isSmall_ofHoms](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean/declarations/issmall-ofhoms--3c9c30dc3dbf52a2f5098340.md) | 43 | `declaration-track:3c9c30dc3dbf52a2f50983403183ff6cd1fd0c849cbf76062f9e1f66d185c517` |
| 3 | `lemma` | [isSmall_iff_eq_ofHoms](../../../../../../CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean/declarations/issmall-iff-eq-ofhoms--5e08cbe2adc751603cf64742.md) | 51 | `result-track:5e08cbe2adc751603cf647424e0e85fc491d6412cccf3bc40c6e5ee3488d3fca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46f5022c7e8e7e92b3b33a9772d964185202d570868a8a70c11099073cc057cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSmall/Variant6918a2415733942bcfa29cca33f7d925ac16ce733195094e267cc2de2a3f54d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
