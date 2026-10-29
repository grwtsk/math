# Verification target: Source Actual Signed Precision Criterion Namespaced Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2173f2c7f88b2d84ae2430abdef54dbbde95f5e0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant9c8325eefd9931a82cae6fd017104e072597c9a4bb94b41d7828409d6986ea5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2173f2c7f88b2d84ae2430abdef54dbbde95f5e0`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant9c8325eefd9931a82cae6fd017104e072597c9a4bb94b41d7828409d6986ea5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant9c8325eefd9931a82cae6fd017104e072597c9a4bb94b41d7828409d6986ea5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualSignedVariationFraction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualResidual_eq_twice_variation_skew](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/declarations/actualresidual-eq-twice-variation-skew.md) | 29 | `result-track:fe4798f4fbdca81b7e94af7f9554ded8d1acd78d0a848427feb9dacd72467e00` |
| 2 | `theorem` | [actualResidual_le_iff_positive_fraction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/declarations/actualresidual-le-iff-positive-fraction.md) | 39 | `result-track:d2c94aff2d1dd960d7654a6eceacfae569498125d869b157a21d0a58b160732f` |
| 3 | `theorem` | [actualResidual_le_iff_negative_fraction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/declarations/actualresidual-le-iff-negative-fraction.md) | 50 | `result-track:adad317b8dddcae0d55cad1ee1774c635b57287c4f72293657af47f16af47617` |
| 4 | `def` | [ActualPositiveVariationPrecisionTailBound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/declarations/actualpositivevariationprecisiontailbound.md) | 65 | `declaration-track:42852ff817e87a3d714cc07fa38d10659b62a6d5129a36856577591c27981d79` |
| 5 | `theorem` | [actualPositiveVariationPrecisionTailBound_iff_residual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/declarations/actualpositivevariationprecisiontailbound-iff-residual.md) | 72 | `result-track:08f594193317b5a6e9783db4ad1fceb5b79bb055e4476376f5f409ad6841aba4` |
| 6 | `theorem` | [actualPositiveVariationPrecisionTailBound_iff_estimate](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/declarations/actualpositivevariationprecisiontailbound-iff-estimate.md) | 97 | `result-track:3802f5789a0eb94d34aa9c65391073ec1322667c6ed7ec7463d1fd2246e2deb6` |
| 7 | `theorem` | [actualAbsoluteVariation_inverse_eventually_exp_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/declarations/actualabsolutevariation-inverse-eventually-exp-bound.md) | 119 | `result-track:ae6305d6e92b8acd7153e0d35d2c9a1195333876e889c508615e43783c860239` |
| 8 | `theorem` | [actualResidual_cap_implies_positive_fraction_exp_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualSignedPrecisionCriterionNamespacedEdition3.lean/declarations/actualresidual-cap-implies-positive-fraction-exp-budget.md) | 140 | `result-track:426fa80c6bae76b6c9bcad2abb8d7ad77e45cda895f61c26af7f848c978cf496` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48108ec3c95501beebd08a4a48508c2c7d0d124448344721c2b6b5d328a3d72b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant9c8325eefd9931a82cae6fd017104e072597c9a4bb94b41d7828409d6986ea5c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant9c8325eefd9931a82cae6fd017104e072597c9a4bb94b41d7828409d6986ea5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
