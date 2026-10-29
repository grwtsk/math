# Verification target: Presentable Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3ef0eab0b19fc3a62d6d4a3da6254261974177f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantf5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3ef0eab0b19fc3a62d6d4a3da6254261974177f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantf5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantf5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Filtered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Filtered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Functor.IsFinitelyAccessible](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/declarations/functor-isfinitelyaccessible.md) | 32 | `declaration-track:f7538e45837837e7bf2f98eda10aac1e1365c90a6e18a7cfc8de0abfc48aded1` |
| 2 | `lemma` | [Functor.IsFinitelyAccessible_iff_preservesFilteredColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/declarations/functor-isfinitelyaccessible-iff-preservesfilteredcolimitsofsize.md) | 34 | `result-track:50231ebc7bebeaa11831b17b8b561753f380102be4a31895dba40b4d43c1b612` |
| 3 | `lemma` | [Functor.isFinitelyAccessible_iff_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/declarations/functor-isfinitelyaccessible-iff-preservesfilteredcolimits.md) | 40 | `result-track:6b7fe8c08b0bafee361fa819fa0f3e26e5a3398a3cfcd9d6fceeb403f39a1525` |
| 4 | `abbrev` | [IsFinitelyPresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/declarations/isfinitelypresentable.md) | 45 | `declaration-track:3f10dc3aa60bae097de8d597fbc6e450531afcf75cdc0c06b5c2729f63006dc6` |
| 5 | `lemma` | [isFinitelyPresentable_iff_preservesFilteredColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/declarations/isfinitelypresentable-iff-preservesfilteredcolimitsofsize.md) | 48 | `result-track:c99bbd0cd3ac01f2ed6fbe7c494d64a75e8c1bd11d2a8fff865e6a82c4c4b0cf` |
| 6 | `lemma` | [isFinitelyPresentable_iff_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/declarations/isfinitelypresentable-iff-preservesfilteredcolimits.md) | 52 | `result-track:9e8724e2cdf311253ec2f532b6020cfc288ddad6f215d6f4009d05107cb7dacd` |
| 7 | `lemma` | [HasCardinalFilteredColimits_iff_hasFilteredColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/declarations/hascardinalfilteredcolimits-iff-hasfilteredcolimitsofsize.md) | 56 | `result-track:04a454342d25b90c2cc6cf788f582edd2a31ac152227a192d85ce1d7b25eb389` |
| 8 | `lemma` | [HasCardinalFilteredColimits_iff_hasFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresentableFinite.lean/declarations/hascardinalfilteredcolimits-iff-hasfilteredcolimits.md) | 62 | `result-track:e33a892d35286dcb788263ceea04947b48fa2380ce2f88e403bc99ca2aa52027` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a09b7b2f8a77859c57b2381577c2230702ed7f02247caf63b88068bdf6442d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantf5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantf5c7a8916065557e98b354ae5c572e98ee80a08f74b0ce0b52ae55501217ecb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
