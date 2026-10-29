# Verification target: Normalized Rate Ga The Rate Needed To Recover An Additive Signed Bound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c82760fc9c59e6aebad4f3cdc67a8b8dbfb9bba",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant19e48ee89dc542f26229c0c78de509c628221f5845a8535bd7ee4a9c075facb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c82760fc9c59e6aebad4f3cdc67a8b8dbfb9bba`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant19e48ee89dc542f26229c0c78de509c628221f5845a8535bd7ee4a9c075facb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant19e48ee89dc542f26229c0c78de509c628221f5845a8535bd7ee4a9c075facb8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalization](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/normalization.md) | 25 | `declaration-track:bed6743a4320e9341c2a5b0646fbb329b0d5dc01f6a36ca3284d41a3e7b0cdec` |
| 2 | `def` | [modelShell](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/modelshell.md) | 28 | `declaration-track:a699e1fd4f9ca9d0f2ba89f7d2cb7fb4aba8c60c487b47afa1d32f8090ec0469` |
| 3 | `def` | [modelComplement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/modelcomplement.md) | 31 | `declaration-track:0f23daeeea506dd3a777b8a5ca0d98970c18fc40e69092513293e9a12750c7e2` |
| 4 | `def` | [modelResidual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/modelresidual.md) | 34 | `declaration-track:bee0fb23402eb9e729f58aad1704a76662c03ff9733a3cff9cdac714eaa4d70a` |
| 5 | `def` | [balancedComplement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/balancedcomplement.md) | 37 | `declaration-track:efd8495a745712002474105212c0755fbb071ce2fefb92b5956cf1cbcf7ea163` |
| 6 | `theorem` | [normalization_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/normalization-pos.md) | 39 | `result-track:672877591b227e18173a74a53f021852a8887e0c46238919615e5b5ecc4bc51e` |
| 7 | `theorem` | [normalized_cap_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/normalized-cap-iff.md) | 45 | `result-track:da20d206a8e0e91d769bb31e28b13457f999d780af4c8297acc34668c25b7193` |
| 8 | `theorem` | [modelResidual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/modelresidual-eq.md) | 52 | `result-track:58ec1ea0fbf6d32b2b33644c70232bb2b45d7ad60d1734e9f694cce7f0dc76b0` |
| 9 | `theorem` | [normalized_modelResidual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/normalized-modelresidual-eq.md) | 59 | `result-track:393516e76be56f10e779370f2706fe4534332228b5c35a3794a6290a191b128b` |
| 10 | `theorem` | [balanced_residual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/balanced-residual-eq.md) | 67 | `result-track:95ea8b92ebc054208c9bad8375e44e3afcbe54f61c76595b24bf0f4424a8877c` |
| 11 | `theorem` | [normalized_balanced_residual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/normalized-balanced-residual-eq.md) | 72 | `result-track:1bc8503b0dcd8fdec925556c1ef4ac721bcf5762b2eb3c0afa7af4e4b68bd8d2` |
| 12 | `theorem` | [normalization_exp_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/normalization-exp-eq.md) | 77 | `result-track:429e4ee85442bf68683a01131d3650cf53087d71f00f3266d38db07eaa118620` |
| 13 | `theorem` | [normalized_modelResidual_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/normalized-modelresidual-tendsto-zero.md) | 83 | `result-track:ca4909ef5321a2e53a74f326240f90d6c4dba895ebdacf63b89ce8d17f5f239a` |
| 14 | `theorem` | [exp_div_tenth_power_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/exp-div-tenth-power-lower.md) | 93 | `result-track:3ec1917e4e1b1c57c577ecba6db4022f20cc74f2b36f2da0a8f64b60c29b9540` |
| 15 | `theorem` | [modelResidual_exceeds_any_cap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/modelresidual-exceeds-any-cap.md) | 104 | `result-track:a521bd5124424f7f345d1a6f577b2f71ca39a4fbff985a976137a30ed3f33c77` |
| 16 | `theorem` | [modelResidual_has_no_eventual_upper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGaTheRateNeededToRecoverAnAdditiveSignedBound.lean/declarations/modelresidual-has-no-eventual-upper-bound.md) | 121 | `result-track:e1d9b6c3ba1fda0e7630224ecdc64f860da6d4088672a3d6251a5ff33a32ff46` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50e9d3e15edd433aea1981907ed419fe6d715cf792d50606990e700aefcfd9ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant19e48ee89dc542f26229c0c78de509c628221f5845a8535bd7ee4a9c075facb8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/45e50cd5cd11e89efa683170de76a474ddae59ccca3051551563e4e5dc77b206NormalizedRateGa/Variant19e48ee89dc542f26229c0c78de509c628221f5845a8535bd7ee4a9c075facb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
