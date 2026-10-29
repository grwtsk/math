# Verification target: Source Adaptive Gaussian Budget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "093dceda45b61f15ee7e94abe565106e2a8e876c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variantae9786d1173be296f1fa421ec8a1d2a453c778e8502fa2fa962fae90d0266f68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `093dceda45b61f15ee7e94abe565106e2a8e876c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variantae9786d1173be296f1fa421ec8a1d2a453c778e8502fa2fa962fae90d0266f68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variantae9786d1173be296f1fa421ec8a1d2a453c778e8502fa2fa962fae90d0266f68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.GaussianSourceConsumer` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ActualSourceConsumer` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientMass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/coefficientmass.md) | 30 | `declaration-track:dbea77313b750400d1f57bd4a5c3f02f78836c88bed46345327b16915f0dcb9f` |
| 2 | `def` | [driftMass](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/driftmass.md) | 34 | `declaration-track:f9d7594e3ffffaffd741f81fcca4480e1435f760068a7c94399b08464a5a0bc7` |
| 3 | `theorem` | [coefficient_abs_le_nat](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/coefficient-abs-le-nat.md) | 39 | `result-track:02f76d2fcc8385e673559e9611a5d8607ddc63d9f2672bf8e55bbbdb0eeaee6b` |
| 4 | `theorem` | [coefficient_weight_le_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/coefficient-weight-le-cutoff.md) | 49 | `result-track:e4fab2c168761767a46ff6d6da46f7660b6d7a4eb5e0a67bb167e4ec758d03f0` |
| 5 | `theorem` | [drift_atom_le_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/drift-atom-le-two.md) | 61 | `result-track:c752bd4b7f5d6a842a533dbf56588a34764ecc5d3bd30070d01937e0d8b8215b` |
| 6 | `theorem` | [coefficientMass_le_square](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/coefficientmass-le-square.md) | 92 | `result-track:fb572651eebec47f5a6a57e4328bc382b1c57689c64f5182a277986c4c70ebd8` |
| 7 | `theorem` | [driftMass_le_twice_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/driftmass-le-twice-cutoff.md) | 104 | `result-track:b4404a58e4c904003107827e3717c7fa1c1d5d9ea8acab8eef713deba9e6cba5` |
| 8 | `def` | [cutoffVariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/cutoffvariance.md) | 116 | `declaration-track:ae6a6ee0d7b75492f1b6858ed3e02e9d6d9164235ae0a5094e9c57397e3853fd` |
| 9 | `theorem` | [cutoffVariance_pos](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/cutoffvariance-pos.md) | 119 | `result-track:5a18ec271b4a4a544e120ff37bc1326ef4aac47d206ce480b236cc8094a812b2` |
| 10 | `theorem` | [sqrt_cutoffVariance](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/sqrt-cutoffvariance.md) | 123 | `result-track:e391b10884b1a141d8f3e4eee4a07f4e754171f7a0d664b77f414d677e03a57e` |
| 11 | `theorem` | [inverse_cutoff_mul_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/inverse-cutoff-mul-le-one.md) | 128 | `result-track:cacfd1705796e7972394468b6e1cf6e9616858367b7783484c6bf4230eb297b7` |
| 12 | `theorem` | [variance_coefficientMass_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/variance-coefficientmass-le-one.md) | 135 | `result-track:8f54113bf3bc675eaf3a8c70496d91652d033805f8d12a004206035d87b464f0` |
| 13 | `theorem` | [sqrt_variance_driftMass_le_two](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveGaussianBudget.lean/declarations/sqrt-variance-driftmass-le-two.md) | 151 | `result-track:79274fb18950b405db0391d7e1c960389ece86cd126e38036734026f0c535e7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21dfa1e65e7359bb3d95173c440d70dff930b50115a8af75aaa4578f033a560f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variantae9786d1173be296f1fa421ec8a1d2a453c778e8502fa2fa962fae90d0266f68.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveGaussianBudget/Variantae9786d1173be296f1fa421ec8a1d2a453c778e8502fa2fa962fae90d0266f68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
