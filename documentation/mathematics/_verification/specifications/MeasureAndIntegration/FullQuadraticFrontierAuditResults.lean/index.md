# Verification target: Full Quadratic Frontier Audit Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "189ab9cea72b29a9448eecca082800fb8549ffc6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticFrontierAudit/Variant30f3717d09690a11f31fa7f1efb15329ae852c901c4fb0b5b14382b160aba975.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `189ab9cea72b29a9448eecca082800fb8549ffc6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticFrontierAudit/Variant30f3717d09690a11f31fa7f1efb15329ae852c901c4fb0b5b14382b160aba975.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticFrontierAudit/Variant30f3717d09690a11f31fa7f1efb15329ae852c901c4fb0b5b14382b160aba975.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.FullQuadraticAudit` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PoleFrontierInvariance` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fullCorrectionBound](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/declarations/fullcorrectionbound.md) | 31 | `declaration-track:75934935adfbc057bb41cbcd3c40229471e4ca92c2b6f6dac0e96ca527b7f915` |
| 2 | `theorem` | [full_correction_bound_nonneg](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/declarations/full-correction-bound-nonneg.md) | 34 | `result-track:b4a277b7de3e55ead141b57ef77634e648446c95d5af67b2c12829f934e06125` |
| 3 | `theorem` | [full_quadratic_discrepancy_correction](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/declarations/full-quadratic-discrepancy-correction.md) | 39 | `result-track:77f60afd13dfa6c98ffd0c2879255a390bfb379b3184c2a8fd46e980a420792b` |
| 4 | `theorem` | [full_quadratic_discrepancy_abs_le](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/declarations/full-quadratic-discrepancy-abs-le.md) | 49 | `result-track:cb6bae1cebff5453516d147a5802c3553514231a7d4095c7a9f5e3691a737d98` |
| 5 | `def` | [fullQuadraticTailAdapter](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/declarations/fullquadratictailadapter.md) | 71 | `declaration-track:8c49a7e78721ef50f804c6ddc64516f1059b04919c9240e3f07d77a17789a722` |
| 6 | `theorem` | [full_quadratic_frontier_certificate](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/declarations/full-quadratic-frontier-certificate.md) | 84 | `result-track:805a0d3c500f7e7e4dbbf78f4d86c8f5aa94f14d14a669dea24eb65e7ab35ec6` |
| 7 | `theorem` | [prime_square_compensation_of_full_estimate](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/declarations/prime-square-compensation-of-full-estimate.md) | 90 | `result-track:638871265613d375b60c83a2bdd6ae00db3ba575aba38233803c0a17db3573df` |
| 8 | `theorem` | [full_estimate_iff_prime_square_compensation](../../../../MeasureAndIntegration/FullQuadraticFrontierAuditResults.lean/declarations/full-estimate-iff-prime-square-compensation.md) | 104 | `result-track:e14615fc3522becabc3921b69753be4c78f305c48d9494cf65adf52d4708c4d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e5f110825b3bc33ab98b08bf143e8d3963540b620b3b4a28d4912f0c186205f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticFrontierAudit/Variant30f3717d09690a11f31fa7f1efb15329ae852c901c4fb0b5b14382b160aba975.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FullQuadraticFrontierAudit/Variant30f3717d09690a11f31fa7f1efb15329ae852c901c4fb0b5b14382b160aba975.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
