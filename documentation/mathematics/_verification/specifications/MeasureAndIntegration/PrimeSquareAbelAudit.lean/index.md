# Verification target: Prime Square Abel Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5758631f7c5b7dbc8f82c35cc424069154ca30d3",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5758631f7c5b7dbc8f82c35cc424069154ca30d3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicPrefix` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [primeHarmonicPrefix_eq_threshold_sum](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/primeharmonicprefix-eq-threshold-sum.md) | 17 | `result-track:5fd73667f1fa031fdf590d8199efe4852dbb59d055840f017a93a84c2a96d783` |
| 2 | `theorem` | [prime_log_mem_interval](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/prime-log-mem-interval.md) | 40 | `result-track:52f7d306e5f1011375bf03eb87170569b0137b118de784b82f60b7171f898797` |
| 3 | `theorem` | [closed_tail_intervalIntegrable](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/closed-tail-intervalintegrable.md) | 50 | `result-track:4b089255820ea70016a63ca8454c3bdc812b08163941f06cebc26ce1760d7fc8` |
| 4 | `theorem` | [integral_closed_tail](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/integral-closed-tail.md) | 59 | `result-track:4707179411786a88e58de9508be35d52ceddfafee6db68148dbff3568fc307b2` |
| 5 | `theorem` | [sourceCorrelation_double_derivative_continuous](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/sourcecorrelation-double-derivative-continuous.md) | 76 | `result-track:a7fa288a56041ded50af70375d30df511c0ec4ea16036e463b93749266f15335` |
| 6 | `theorem` | [primeHarmonicPrefix_mul_intervalIntegrable](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/primeharmonicprefix-mul-intervalintegrable.md) | 86 | `result-track:3570f4c0e6a377b766b9d0ba210ee736ea9c4bc9f4e4a58eb8fbde63ed7b0cbc` |
| 7 | `theorem` | [primeHarmonicPrefix_weighted_abel](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/primeharmonicprefix-weighted-abel.md) | 112 | `result-track:b14470424cd438bd4ea385e26a539c38173c86866c3c9bfe6f779d876030e663` |
| 8 | `theorem` | [primeHarmonicPrefix_centered](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/primeharmonicprefix-centered.md) | 150 | `result-track:e5eb9aef125e5efbfe67acd00835d1d06bec3465e2cd698865970b1878033b84` |
| 9 | `theorem` | [thetaRemainder_mul_intervalIntegrable](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/thetaremainder-mul-intervalintegrable.md) | 155 | `result-track:597480e3de53c8077e2edef4f978c833f306747c1b6259057294cd07dbb084f4` |
| 10 | `theorem` | [primeHarmonicPrefix_centered_abel](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/primeharmonicprefix-centered-abel.md) | 169 | `result-track:f2c7cf06cb8219a20f47a23cf15b141b066cf5723a5344804659a5d27748558a` |
| 11 | `theorem` | [primeSquare_weighted_abel](../../../../MeasureAndIntegration/PrimeSquareAbelAudit.lean/declarations/primesquare-weighted-abel.md) | 210 | `result-track:d536a90dcb225efb7d1e52beaed768b76cab4529b27643119b96efa3a7354a08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=897873d0f1456fa42ab526bb1a7b7050b19015ab807056702e004d38b8e22d29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelAudit/Variant68e477debd2b90d9cc4acd369053b205de07c6da69aaea92667f7878230b2fa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
