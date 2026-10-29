# Verification target: Algebra Polynomial Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff7cc5c14f3429a3badd33da6317ab0f01cb295d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff7cc5c14f3429a3badd33da6317ab0f01cb295d`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Inductions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Splits` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_eval₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/continuous-eval.md) | 54 | `result-track:13b9bdc222e493a88387f6367b41976d3db6feaf65e8c1925378c4333217d54e` |
| 2 | `theorem` | [continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/continuous.md) | 60 | `result-track:f437893904d846608db937f7049b945831e0bf0b422b053ca9ebff33e5920052` |
| 3 | `theorem` | [continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/continuousat.md) | 64 | `result-track:2eb32f28c89eac8fb403a1c4d313d66ba949c8da7abd0091630626b795550fde` |
| 4 | `theorem` | [continuousWithinAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/continuouswithinat.md) | 68 | `result-track:b1f8e20b2986b419c070997a9a0c8e7abf3606c47cff9ac9a0d72f9a6f43f34e` |
| 5 | `theorem` | [continuousOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/continuouson.md) | 72 | `result-track:fa06d3f573e34f7cf82d00558c972b0d740619ce7eb1525048764cdbd4cc7dd3` |
| 6 | `theorem` | [continuous_aeval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/continuous-aeval.md) | 83 | `result-track:e3b7aca798c6bc903e3f6cf4d2694246867d37f09ce503898b5a31c5d7772205` |
| 7 | `theorem` | [continuousAt_aeval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/continuousat-aeval.md) | 87 | `result-track:5b53584a753911e364b9af58c85666bbabd39ae48baf428c8f43fa07fe3e2540` |
| 8 | `theorem` | [continuousWithinAt_aeval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/continuouswithinat-aeval.md) | 91 | `result-track:bf35ef8b2ba6c7b172e5e8cf104405a002bfdd223694e625b3748b8ec5b80f87` |
| 9 | `theorem` | [continuousOn_aeval](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/continuouson-aeval.md) | 96 | `result-track:4bc99264b7f8996951e08aa00a51e9327756d3d7098cb163a5368397dd911af6` |
| 10 | `theorem` | [tendsto_abv_eval₂_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/tendsto-abv-eval-attop.md) | 101 | `result-track:14b085710477d0cc1b8cbac4ce43d56406f7f06789034288e543d067ee159585` |
| 11 | `theorem` | [tendsto_abv_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/tendsto-abv-attop.md) | 119 | `result-track:3ed45f4d3dd6979103a1f4ea352147558f22ac9700f08205beeef58b4cb0ce04` |
| 12 | `theorem` | [tendsto_abv_aeval_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/tendsto-abv-aeval-attop.md) | 126 | `result-track:02d4462822f425ace07894fbd04f5064c55904cba6c5d5bab6cd5e87ba26c8fe` |
| 13 | `theorem` | [tendsto_norm_atTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/tendsto-norm-attop.md) | 135 | `result-track:a0a51f9dbc0f5da3b7cfcde3d9dba98d51dc5476eff341bf2a76382b7a734dd1` |
| 14 | `theorem` | [exists_forall_norm_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/exists-forall-norm-le.md) | 139 | `result-track:33386fd0884d392768f657115d3d159256b26355370792cc4242907c6e530f7d` |
| 15 | `theorem` | [eq_one_of_roots_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/eq-one-of-roots-le.md) | 153 | `result-track:2327b462f0c4209dc30a7499913e3e4598f527f81c1c4b0596abc9b160243259` |
| 16 | `theorem` | [coeff_le_of_roots_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/coeff-le-of-roots-le.md) | 161 | `result-track:ac85b00f593bbca1faf96cf71ece7fc4fbcc8b962f5f99c923062448d0caf031` |
| 17 | `theorem` | [coeff_bdd_of_roots_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraPolynomialNamespaced.lean/declarations/coeff-bdd-of-roots-le.md) | 190 | `result-track:5d20e547c9becf970b207980456f01042163bf86e8c6d1be451eb545e0cfe9d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dda584c054c600f169de6ff3a10afdecc5f11de74b5f9b1d3ddf405f90d06952 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Polynomial/Variantf642ebc5a0b214f9757c7adfa407ca2e660b58dacafbf50a5c875db710e110a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
