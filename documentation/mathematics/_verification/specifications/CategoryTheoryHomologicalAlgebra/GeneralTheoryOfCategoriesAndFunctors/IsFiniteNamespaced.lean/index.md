# Verification target: Is Finite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29c3ec2ce4412a1b2f19ad8e7e96302dcfe13fd7",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/IsFinite/Variante6692c053d364ab0d84e21fa6201bf235821c2abac058465a79d308d337fcc68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsFiniteNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsFiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29c3ec2ce4412a1b2f19ad8e7e96302dcfe13fd7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/IsFinite/Variante6692c053d364ab0d84e21fa6201bf235821c2abac058465a79d308d337fcc68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/IsFinite/Variante6692c053d364ab0d84e21fa6201bf235821c2abac058465a79d308d337fcc68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Zero` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Ab` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.SerreClass.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isFinite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsFiniteNamespaced.lean/declarations/isfinite.md) | 37 | `declaration-track:5c7effeca393e4da89b40d365b56cb7fa01d6021a0a6be7dc55d06c693e2c693` |
| 2 | `lemma` | [prop_isFinite_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsFiniteNamespaced.lean/declarations/prop-isfinite-iff.md) | 41 | `result-track:8df20a47eeec80889d654abaa1b46887e7eebd4b4b41d1f8ee203da2a98ad8f6` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsFiniteNamespaced.lean/declarations/instance.md) | 43 | `declaration-track:aa065fdb9ab90fbafc5801449277e9a2eeeea6a0935c2230958976bd12a2dde9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccaf40a2b5992558b2c0f76c20b3d67b406a0994624ed7357416f47729951ff4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/IsFinite/Variante6692c053d364ab0d84e21fa6201bf235821c2abac058465a79d308d337fcc68.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/IsFinite/Variante6692c053d364ab0d84e21fa6201bf235821c2abac058465a79d308d337fcc68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
