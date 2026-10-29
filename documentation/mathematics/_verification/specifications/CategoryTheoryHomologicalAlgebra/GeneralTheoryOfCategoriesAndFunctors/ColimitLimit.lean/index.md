# Verification target: Colimit Limit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2be415870d8c26a00b74901f30b92ba0b133b1e9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ColimitLimit.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ColimitLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2be415870d8c26a00b74901f30b92ba0b133b1e9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Currying` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id_left_eq_curry_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ColimitLimit.lean/declarations/map-id-left-eq-curry-map.md) | 39 | `result-track:0ca5996a21602e7385fd59db78eb034f0f429d8bf071b16e1a2575a0e9d462e4` |
| 2 | `theorem` | [map_id_right_eq_curry_swap_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ColimitLimit.lean/declarations/map-id-right-eq-curry-swap-map.md) | 43 | `result-track:8fd96312aced02ce129b2d522839164a44c08dfc4ed7dd4c600281969d10b7ac` |
| 3 | `def` | [colimitLimitToLimitColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ColimitLimit.lean/declarations/colimitlimittolimitcolimit-source-edition-2.md) | 53 | `declaration-track:f721881ac80f3340cee4f23d1695c9759366a7e53404dd1101f61c73c76a967a` |
| 4 | `theorem` | [ι_colimitLimitToLimitColimit_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ColimitLimit.lean/declarations/colimitlimittolimitcolimit.md) | 85 | `result-track:61f28d66c15ec1286e02d06136e8995d1aeed819c4b0bfdfae0b018348372219` |
| 5 | `theorem` | [ι_colimitLimitToLimitColimit_π_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ColimitLimit.lean/declarations/colimitlimittolimitcolimit-apply.md) | 92 | `result-track:9cef88cef53c23fd689869e1208cc0a8083341c528ff2320c019480c636204be` |
| 6 | `def` | [colimitLimitToLimitColimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ColimitLimit.lean/declarations/colimitlimittolimitcolimitcone.md) | 104 | `declaration-track:8dc14a038c8681f865e91ec57b4ef87e45038354f625c6b29369688045ae5839` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2dc47f2df0766999a5a7389bc32bcc734762ce3a01b1e6387600d108f3b26322 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimitLimit/Variant04b4360d8896418637e620e25644c88297e477ebbda8ccc8ddab387e5adb39f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
