# Verification target: Private V1 Input Paired Prime Quadrature Tail Lower Bound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af262541ccf6b15458d1756a6aca79e9ffdcbf68",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af262541ccf6b15458d1756a6aca79e9ffdcbf68`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailTest` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePairedContrastResidual` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PairedPrimeQuadratureTailLowerBound](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/pairedprimequadraturetaillowerbound.md) | 29 | `declaration-track:424527b4dc08b32b9886e9f2e67d7785cfedd35849bdc6bc18b184b14fa21f85` |
| 2 | `theorem` | [window_zero_eq_sum](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/window-zero-eq-sum.md) | 34 | `result-track:e58cb48cb221a3f8e0adef04db5909bb17ed6acc74e9199168459cd5b7df5525` |
| 3 | `theorem` | [negativeSurvival_ge_one_left](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/negativesurvival-ge-one-left.md) | 46 | `result-track:cca560d371cd550609a5746f44b00fe2a30b8038af9e81036178ec84b737a9c1` |
| 4 | `theorem` | [pairedTailTest_ge_one_left](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/pairedtailtest-ge-one-left.md) | 52 | `result-track:83263babbc6f25c7dcc615d77926e36110e6f2421e39a42b6005609d9d28d809` |
| 5 | `theorem` | [negativeSurvival_signed_work](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/negativesurvival-signed-work.md) | 61 | `result-track:ae4256b598ff451a4c157f0977306f64414dac21c980eb1d30d77d52b273dd67` |
| 6 | `theorem` | [negativeSurvival_prime_sum_sub_mean](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/negativesurvival-prime-sum-sub-mean.md) | 74 | `result-track:3436cb09f546d257409f9428934bc51aaedda693cca82dc1bb351aa4dc7c07a8` |
| 7 | `theorem` | [negativeSurvival_prime_error_uniformly_bounded](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/negativesurvival-prime-error-uniformly-bounded.md) | 84 | `result-track:87dee5e1cb91a7447f8490028ebdb860067617140c596813b50ebe03fc218cbf` |
| 8 | `theorem` | [pairedTailTest_prime_sum_eq](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/pairedtailtest-prime-sum-eq.md) | 94 | `result-track:6996b908abc20db742635e2f5e92771283e8717b78b4e25faf70892951f2bc46` |
| 9 | `theorem` | [pairedErrorContrast_eq_prime_quadrature](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/pairederrorcontrast-eq-prime-quadrature.md) | 102 | `result-track:2cfa7946cb09f7a4fa089aab40c95dbc8534d5e3dda30251ff82cfc68c1d3d12` |
| 10 | `theorem` | [pairedTailTest_signed_work](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/pairedtailtest-signed-work.md) | 111 | `result-track:0b730a582c0ad9a4fbe2acc90e4538973610a78ee2494d0365c89ede2109ddb3` |
| 11 | `theorem` | [pairedTailTest_drift_pos](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/pairedtailtest-drift-pos.md) | 123 | `result-track:fb6d164cf1c18276dd9975cf97817e3f68ba464047cadd7fb272fde1f0245098` |
| 12 | `theorem` | [pairedTailTest_drift_le_upper](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/pairedtailtest-drift-le-upper.md) | 128 | `result-track:9cfc544471e176dc92904fd4ee76249f272e6041d4cdc52405e3f80d89ed3f67` |
| 13 | `theorem` | [pairedQuadrature_tail_iff_pairedContrast_tail](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/pairedquadrature-tail-iff-pairedcontrast-tail.md) | 135 | `result-track:2b9cc12cfdd328e43bcb79d6282fe943ee7f86c0ffa03aed30ec740fd7b5bcdd` |
| 14 | `theorem` | [mertens_residual_tail_iff_pairedQuadrature_tail](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/mertens-residual-tail-iff-pairedquadrature-tail.md) | 151 | `result-track:678eb70e81786bc339ffcf254316514af714297af5d2e57c50541c7b2bbdd8c4` |
| 15 | `theorem` | [mertensResidual_eq_paired_quadrature_remainder](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/mertensresidual-eq-paired-quadrature-remainder.md) | 157 | `result-track:10033ed0900f10124956f20fa093d549ec6a043ba15f7d09ac0a8d011ff75cc1` |
| 16 | `theorem` | [pairedContrast_abs_le_variation_budget](../../../../MeasureAndIntegration/PrivateV1InputPairedPrimeQuadratureTailLowerBound.lean/declarations/pairedcontrast-abs-le-variation-budget.md) | 167 | `result-track:35951d11ccb331643c00f3c7b2f576e408af69924e599c17dcf5ff851e5ab746` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcf86cfb198887dd013f2aa9b4e61433d69c5e80d14a9a9c7e2f9eb361503001 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variant3c5c9639980b93a1b26414af2602dd0aa54a9b2b2b6f2c4926f24a081b23cc9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
