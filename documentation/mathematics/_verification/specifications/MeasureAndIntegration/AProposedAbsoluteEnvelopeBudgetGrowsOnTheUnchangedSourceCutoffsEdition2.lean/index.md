# Verification target: AProposed Absolute Envelope Budget Grows On The Unchanged Source Cutoffs Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9ee815428dde726b6e13fba65cfc8dba451a308",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/AProposedAbsoluteEnvelopeBudgetGrowsOnTheUnchangedSourceCutoffsEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/AProposedAbsoluteEnvelopeBudgetGrowsOnTheUnchangedSourceCutoffsEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9ee815428dde726b6e13fba65cfc8dba451a308`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateAbsoluteMertensEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.SubexponentialCountermodel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quarterBudget](../../../../MeasureAndIntegration/AProposedAbsoluteEnvelopeBudgetGrowsOnTheUnchangedSourceCutoffsEdition2.lean/declarations/quarterbudget.md) | 30 | `declaration-track:16d37bc7860317770546f71ff102aac1466181cfc4bb0b7f680432d972ee6e4c` |
| 2 | `def` | [paidBudget](../../../../MeasureAndIntegration/AProposedAbsoluteEnvelopeBudgetGrowsOnTheUnchangedSourceCutoffsEdition2.lean/declarations/paidbudget.md) | 36 | `declaration-track:7fd5a148fa5f62da15251389251a6eaebc23d50dce5870775647b0c5c037d58d` |
| 3 | `theorem` | [exact_source_quarter_budget](../../../../MeasureAndIntegration/AProposedAbsoluteEnvelopeBudgetGrowsOnTheUnchangedSourceCutoffsEdition2.lean/declarations/exact-source-quarter-budget.md) | 39 | `result-track:483522b5a8470a9136b62585baa6c17679c2cd84c786d966e12f09f3173c3985` |
| 4 | `theorem` | [exact_quarter_budget_dominates_subexponential_profile](../../../../MeasureAndIntegration/AProposedAbsoluteEnvelopeBudgetGrowsOnTheUnchangedSourceCutoffsEdition2.lean/declarations/exact-quarter-budget-dominates-subexponential-profile.md) | 49 | `result-track:53dd483623e2676794919daaaaa967b013526ed5933edf6ca7377a72b43224f4` |
| 5 | `theorem` | [quarter_budget_has_no_eventual_polynomial_upper](../../../../MeasureAndIntegration/AProposedAbsoluteEnvelopeBudgetGrowsOnTheUnchangedSourceCutoffsEdition2.lean/declarations/quarter-budget-has-no-eventual-polynomial-upper.md) | 61 | `result-track:90fb2caa98ec4fc485f25b364f121f8447ed731c1ed51c0a6cb6c6af434f92ad` |
| 6 | `theorem` | [source_quarter_budget_le_proposed_absolute_payment](../../../../MeasureAndIntegration/AProposedAbsoluteEnvelopeBudgetGrowsOnTheUnchangedSourceCutoffsEdition2.lean/declarations/source-quarter-budget-le-proposed-absolute-payment.md) | 71 | `result-track:13c13cca0eb68b73170ae87e915c269c2ec62d53c39c5644cb4b05c42fb42ec4` |
| 7 | `theorem` | [proposed_absolute_payment_has_no_eventual_polynomial_upper](../../../../MeasureAndIntegration/AProposedAbsoluteEnvelopeBudgetGrowsOnTheUnchangedSourceCutoffsEdition2.lean/declarations/proposed-absolute-payment-has-no-eventual-polynomial-upper.md) | 98 | `result-track:a5c3a1ecbfaf4a2b3181058abec42d5a88c1a8d5af3054a51757b9d1d7f1b089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73a396f49ef3038630524c9836e54075b1a70b176272b201a95c4ca9617ec6e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AbsoluteEnvelopeFiniteBudget/Variantd15e4e422100d4fa84380286a989d47826f31ae26fc72d55ec9f8c713ffa77d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
