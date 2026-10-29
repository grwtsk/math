# Verification target: Prime Square Abel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90772f1a4ecf3e195059118dd8cc3c6043fa4133",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantd4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90772f1a4ecf3e195059118dd8cc3c6043fa4133`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantd4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantd4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean.json)

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
| 1 | `theorem` | [primeHarmonicPrefix_eq_threshold_sum](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/primeharmonicprefix-eq-threshold-sum.md) | 17 | `result-track:41e6a7b728b381791a0924d71b5619e13f6b63e6dd00fbf9e49149424df99032` |
| 2 | `theorem` | [prime_log_mem_interval](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/prime-log-mem-interval.md) | 40 | `result-track:a510b2718782151678b6abf866f550e0e2f6633f0f1ac17c6577b3900c64d9b7` |
| 3 | `theorem` | [closed_tail_intervalIntegrable](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/closed-tail-intervalintegrable.md) | 50 | `result-track:2cdb804a3362b2ab25878846253de1273880e93a9279b9ef372b5978eec36fd6` |
| 4 | `theorem` | [integral_closed_tail](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/integral-closed-tail.md) | 59 | `result-track:554412cf3fa8b56735d5b8b4b6573677d5e355295fc735a89cab5bc107f7646d` |
| 5 | `theorem` | [sourceCorrelation_double_derivative_continuous](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/sourcecorrelation-double-derivative-continuous.md) | 76 | `result-track:747c6867f5998608792e9c42ef7cc1fdc71e04a48a9b1b3c5e9c6d26c1401b1d` |
| 6 | `theorem` | [primeHarmonicPrefix_mul_intervalIntegrable](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/primeharmonicprefix-mul-intervalintegrable.md) | 86 | `result-track:67b9993ce2178caf22700632f7ce141f8b257ff7e6cc77a9c0096dda0662c63b` |
| 7 | `theorem` | [primeHarmonicPrefix_weighted_abel](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/primeharmonicprefix-weighted-abel.md) | 112 | `result-track:b4528c8271699d5ca45d388e9416401b7b6be3e0551a97221755433ff18b8ae4` |
| 8 | `theorem` | [primeHarmonicPrefix_centered](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/primeharmonicprefix-centered.md) | 150 | `result-track:dd6084f8b7b9caf712f1210cb356de14701ad1736c80eab467cbff7151ac9518` |
| 9 | `theorem` | [thetaRemainder_mul_intervalIntegrable](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/thetaremainder-mul-intervalintegrable.md) | 155 | `result-track:4da607c7251b1fc24d013fb69e3b3ea04d0dcfdb2ec4ce2008e40d77614ca0a8` |
| 10 | `theorem` | [primeHarmonicPrefix_centered_abel](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/primeharmonicprefix-centered-abel.md) | 169 | `result-track:35d58dfa802935ac1d39f9999d96032e114893ad3a7edaa47841fffe2d255545` |
| 11 | `theorem` | [primeSquare_weighted_abel](../../../../MeasureAndIntegration/PrimeSquareAbel.lean/declarations/primesquare-weighted-abel.md) | 210 | `result-track:2ce292aee41b4fe4c49d3782e0b1932fc00d32c4346424b273d41af4906d4cb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=086fd42a0686c19a1e53f3079d626d576f8bf2e46a86993f29988a6da89c57fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantd4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantd4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
