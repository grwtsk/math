# Verification target: Isomorphism Classes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d14b1824f039df5c080c2e5d0de2128156ed3873",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsomorphismClasses.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsomorphismClasses.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d14b1824f039df5c080c2e5d0de2128156ed3873`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsIsomorphic](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsomorphismClasses.lean/declarations/isisomorphic.md) | 27 | `declaration-track:cf5b556e29917f9ca606574adc392850f44f63910ae8c4682d08ec401a39f6b3` |
| 2 | `def` | [isIsomorphicSetoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsomorphismClasses.lean/declarations/isisomorphicsetoid.md) | 32 | `declaration-track:515d006d02611e1bb95c0e6f883496cd162976ce903bf5d0369ad108c818047f` |
| 3 | `def` | [isomorphismClasses](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsomorphismClasses.lean/declarations/isomorphismclasses.md) | 40 | `declaration-track:e8e76f5cb820feb2a489c08e36a0e2efff23bba23a34fa68edfd404ea7699ac3` |
| 4 | `theorem` | [Groupoid.isIsomorphic_iff_nonempty_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsomorphismClasses.lean/declarations/groupoid-isisomorphic-iff-nonempty-hom.md) | 58 | `result-track:20c0dbad9ea9ff0d8cc94cf97c6c071a0148685cca861b3033471e0a2a08c027` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9adca5993ed6e1860805b17f406b9c1e04082ca690574bc20b404bc74e898e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IsomorphismClasses/Variantd81e2dff07fdf59bfd6c5ba758be8fecf967fe8b1e1c4f01aec9723e703779ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
