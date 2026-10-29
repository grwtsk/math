# Verification target: Actual Negative Cost Attempt04 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "634e559a8b45b4677003d7de3811352de542bf18",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `634e559a8b45b4677003d7de3811352de542bf18`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NegativeCostFatou` — import line 6; external provider; requires a separately pinned dependency.
- `ActualCumulativeIntercept` — import line 7; external provider; requires a separately pinned dependency.
- `FixedCurvatureLimit` — import line 8; external provider; requires a separately pinned dependency.
- `ActualSecondAbel` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualNegativeDensity](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actualnegativedensity.md) | 30 | `declaration-track:e378078032bed2ad2c4b4a200ebfab191120c4f07fcb1e4d781a88337b51bac0` |
| 2 | `def` | [actualNegativeLimit](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actualnegativelimit.md) | 35 | `declaration-track:9473dfd28e4bc204377f1d07d135eac58d61aa41d54273bfdfcdfdfc983a9386` |
| 3 | `theorem` | [actual_negative_density_nonneg](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actual-negative-density-nonneg.md) | 38 | `result-track:a3203f481bfe29410f36f115664dc4b86a47ba787e604f36aabf5827f26f3c96` |
| 4 | `theorem` | [actual_negative_density_integrable](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actual-negative-density-integrable.md) | 45 | `result-track:a9a85fed4004b26a2bb344bbf23a2377e02dce00daccb083881d03933d798806` |
| 5 | `theorem` | [actual_negative_density_integral](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actual-negative-density-integral.md) | 51 | `result-track:b3811408d45c51fba2da35e306c6c9557b3894c5a26a834e5a10aaab39e3c8c5` |
| 6 | `theorem` | [actual_negative_density_fixed_tendsto](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actual-negative-density-fixed-tendsto.md) | 56 | `result-track:08fa5778ee1a259157a0f39840d29d30c7dd4a05b742407159cf5ab3407c7676` |
| 7 | `theorem` | [actual_prime_intercept_pos](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actual-prime-intercept-pos.md) | 77 | `result-track:84c6c70fbfe6df5f0f0d99029ec45d7f70ce1b0b3c3d6071e8e0f17cfaf0eae7` |
| 8 | `theorem` | [actual_negative_limit_not_integrable](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actual-negative-limit-not-integrable.md) | 82 | `result-track:aaaf8144582b68057e2f2f24e5a9185c3c2514c0f08c4e2b4970fd8374d0b3a4` |
| 9 | `theorem` | [actual_negative_curvature_budget_false](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actual-negative-curvature-budget-false.md) | 103 | `result-track:60b3618cbf48d45d80a431875314d3a24b3f3b884f1424963c933992e5366a8f` |
| 10 | `theorem` | [actual_negative_curvature_cost_arbitrarily_large](../../../../MeasureAndIntegration/ActualNegativeCostAttempt04Namespaced.lean/declarations/actual-negative-curvature-cost-arbitrarily-large.md) | 125 | `result-track:5d17a45196ddcf1976682b4da125cccd8e0691d724964712eb7f73b98f2f74b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59ae0d776e60d805ef02a272b4ed6dbed06d3023438dfd9f028ebe0934171b29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualNegativeCostAttempt04/Variant2e5aab9e9d4a8da8299645da4695b224bc5399b3f877ff1b457c9d04b5e3d938.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
