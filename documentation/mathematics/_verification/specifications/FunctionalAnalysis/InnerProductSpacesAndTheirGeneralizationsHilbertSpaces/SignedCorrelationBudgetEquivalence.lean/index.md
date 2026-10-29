# Verification target: GRWTSK.Analysis.InnerProductSpace.SignedCorrelationBudgetEquivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48e0ed3b3549c09af34f7190d5467009c331a22a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedCorrelationBudgetEquivalence.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedCorrelationBudgetEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48e0ed3b3549c09af34f7190d5467009c331a22a`.

Source path: `GRWTSK/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity`](../../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.PrimeCounting.PrimeShellEnergyGrowth`](../../../../../MeasureAndIntegration/PrimeShellEnergyGrowth.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SignedCorrelationBudget](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedCorrelationBudgetEquivalence.lean/declarations/signedcorrelationbudget.md) | 12 | `declaration-track:cddbd8b5dc8c82ceba36573136b4e749cd15183c8674a8a3eac41e69d3cc5ddb` |
| 2 | `theorem` | [signedCorrelationBudget_iff_HSS](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedCorrelationBudgetEquivalence.lean/declarations/signedcorrelationbudget-iff-hss.md) | 16 | `result-track:88124e486b66cbfaff2af9771b8f870aa305307c9cede9deaaf3c3ab52058ab0` |
| 3 | `theorem` | [unsigned_settlement_budget_refuted](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedCorrelationBudgetEquivalence.lean/declarations/unsigned-settlement-budget-refuted.md) | 27 | `result-track:396b9ecced37089a81a80deef9e81d414d1d147dd40e36a1753cca1a679baf66` |
| 4 | `theorem` | [HSS_requires_mature_matching](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedCorrelationBudgetEquivalence.lean/declarations/hss-requires-mature-matching.md) | 37 | `result-track:8280dcf3ef3da517e24919e06d06f06144c45c47c55816f90e918edac9463ba1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1749f81dd65c1d3e5d67cc9810b57560596c980bd7e0ce9e9ce82b20844645fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean","GRWTSK/_verification/specifications/Analysis/InnerProductSpace/SignedCorrelationBudgetEquivalence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
