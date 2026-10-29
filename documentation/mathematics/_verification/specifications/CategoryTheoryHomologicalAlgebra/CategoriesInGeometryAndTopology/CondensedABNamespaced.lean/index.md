# Verification target: Condensed ABNamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c87cb042f31043f35d3b2ee47ad4ea5bdcb2524f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/CondensedABNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/CondensedABNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c87cb042f31043f35d3b2ee47ad4ea5bdcb2524f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.AB` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Sheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.ExtensiveColimits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Equivalence` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Limits` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [hasExactColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/CondensedABNamespaced.lean/declarations/hasexactcolimitsofshape.md) | 41 | `result-track:d6e4a1f23653cee7fb2d8792a88cf92656c0ed340c961510a87e5242fc3ae1f6` |
| 2 | `lemma` | [hasExactLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/CondensedABNamespaced.lean/declarations/hasexactlimitsofshape.md) | 50 | `result-track:1cd2c6e4bf98f2085797059245bbbcd71c96190b14131f528c9c25b492b7500f` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/CondensedABNamespaced.lean/declarations/instance-source-edition-4.md) | 62 | `declaration-track:e5281baa39e7f11402652f7c08fbc968f9e9466ec2fb6d868d37658f34256faf` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/CondensedABNamespaced.lean/declarations/instance-source-edition-3.md) | 67 | `declaration-track:d089bacf93451fd9f4f2c1d68a8c31b28ce0642e711db742eb2876042178d360` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/CondensedABNamespaced.lean/declarations/instance.md) | 72 | `declaration-track:09c512635ad329c87cb6b6b7724cc184c7dc368f458edcab75e6e49714dc170e` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/CondensedABNamespaced.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:30e26e3f1657a08c4d2bb634c9385e8eeebeaaa9ac5e5b2cf81f7e2169a2bee1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03d9adf1c634270011069ab9c508c1eb0a8095f82b50824cd16ba83bec111e0b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/AB/Variant9cbccaa2c62c9a04b6240ff980fabb3b5eda640dabf4ff239e2598fb19ed946a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
