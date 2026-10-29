# Verification target: Probability Mass Function Binomial Namespaced Binomial Apply Last

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ae46216406960fc0a2091057411ec54d3569c49",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantf7191e83027667507cec2f6ad929e964ca87b4c3c553e85ea418afa201e33c54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBinomialNamespacedBinomialApplyLast.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBinomialNamespacedBinomialApplyLast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ae46216406960fc0a2091057411ec54d3569c49`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantf7191e83027667507cec2f6ad929e964ca87b4c3c553e85ea418afa201e33c54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantf7191e83027667507cec2f6ad929e964ca87b4c3c553e85ea418afa201e33c54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Choose.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [binomial](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBinomialNamespacedBinomialApplyLast.lean/declarations/binomial.md) | 33 | `declaration-track:3a92b543d178b530d74d926be7405d2cea5429fb106791bb34bbdfcdf03e47c4` |
| 2 | `theorem` | [binomial_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBinomialNamespacedBinomialApplyLast.lean/declarations/binomial-apply.md) | 48 | `result-track:15ef51113cec5b32ca695411f9893b839f616b9fea0cd3d268b42a75b5150621` |
| 3 | `theorem` | [binomial_apply_zero](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBinomialNamespacedBinomialApplyLast.lean/declarations/binomial-apply-zero.md) | 54 | `result-track:026bb22c9513d7cfdfaa6d0a13779edac18c3894825479511405f8f2a97856a6` |
| 4 | `theorem` | [binomial_apply_last](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBinomialNamespacedBinomialApplyLast.lean/declarations/binomial-apply-last.md) | 59 | `result-track:a7448b2591e858bd4456961803e0a938bd07740d6c964cc1b5de4169f51375ec` |
| 5 | `theorem` | [binomial_apply_self](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBinomialNamespacedBinomialApplyLast.lean/declarations/binomial-apply-self.md) | 63 | `result-track:58e54bcf8ff73b3c04e6709cbd69c38245c07a1b6e7245776c835c20ba7f9061` |
| 6 | `theorem` | [binomial_one_eq_bernoulli](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBinomialNamespacedBinomialApplyLast.lean/declarations/binomial-one-eq-bernoulli.md) | 67 | `result-track:59cde4fa3e34032cb9b2e399df869a78c00fd1ea5fa1ce5af22e769daa80cd53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c719dffb70a487915ba394a07777e16d4975bca1a46dfcda0f136b6b1f46ef8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantf7191e83027667507cec2f6ad929e964ca87b4c3c553e85ea418afa201e33c54.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Binomial/Variantf7191e83027667507cec2f6ad929e964ca87b4c3c553e85ea418afa201e33c54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
