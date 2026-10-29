# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CompletedZetaPoleLogDetector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eac118be2215d95e026dbaa78eeb4559dfcde0f0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eac118be2215d95e026dbaa78eeb4559dfcde0f0`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.MeromorphicLogOrderDetector`](../../../../../../GeneralTopology/MeromorphicLogOrderDetector.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [zeroPoleUnit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/zeropoleunit.md) | 15 | `declaration-track:8397cc468d0c6803e8fbed8fc048bdfd5759f724d125cd1cfd9140f4ae133f6f` |
| 2 | `def` | [onePoleUnit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/onepoleunit.md) | 19 | `declaration-track:9ce23d3fe0363337c0ea62eb5c35a3119dcfa07c1e8f614a6636d4f753a1d1b0` |
| 3 | `theorem` | [zeroPoleUnit_analytic_value](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/zeropoleunit-analytic-value.md) | 23 | `result-track:3b4aadd0479d51b9a3e1302c0dda0aeba8d76ca84abcc8e8aae590b9b8a0d81e` |
| 4 | `theorem` | [onePoleUnit_analytic_value](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/onepoleunit-analytic-value.md) | 30 | `result-track:7ec2cc610157c5a43f2bc2adf978bc54e6db3651671bf7fe275e674644d0bd91` |
| 5 | `theorem` | [completed_zero_pole_factorization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/completed-zero-pole-factorization.md) | 38 | `result-track:9053893284342811203066e1859ff5f0bbeb167d282dc7c26bfbdfc4c9617952` |
| 6 | `theorem` | [completed_one_pole_factorization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/completed-one-pole-factorization.md) | 52 | `result-track:420b4c23bb2ae6299e4b647122589353ad1a799b3e38922d4d4f8f341c414977` |
| 7 | `theorem` | [completed_zero_pole_meromorphic_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/completed-zero-pole-meromorphic-order.md) | 66 | `result-track:ed2f4e01c7f7035b688909a2cf618062f5667ef1f891bda8845a5b3b6d508aad` |
| 8 | `theorem` | [completed_one_pole_meromorphic_order](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/completed-one-pole-meromorphic-order.md) | 73 | `result-track:645542a4e59079f542d48c84394767c12825593e2809abdae3062a5fab72a7e4` |
| 9 | `theorem` | [completed_zero_pole_scaled_coefficient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/completed-zero-pole-scaled-coefficient.md) | 80 | `result-track:da8b881c185a6e3f8ee3f931f45328264abc55d4a9baad8fb4b3561faf2bbff9` |
| 10 | `theorem` | [completed_one_pole_scaled_coefficient](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/completed-one-pole-scaled-coefficient.md) | 88 | `result-track:851bd383151bf0121a59a5ebe897cdd26f1f9f180e0c70e1b89e59b083754bb2` |
| 11 | `theorem` | [completed_zero_pole_no_continuous_extension](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/completed-zero-pole-no-continuous-extension.md) | 96 | `result-track:164c0d136442b2ac47a71ebfcf927ebd61e98b0473d2a203cd4bceed72579e6c` |
| 12 | `theorem` | [completed_one_pole_no_continuous_extension](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompletedZetaPoleLogDetector.lean/declarations/completed-one-pole-no-continuous-extension.md) | 103 | `result-track:b56b54ebb3103328d5f5954ee681a82747dd8b8a21e65f5496ff12f4c2dd6f29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7bd09148291b147a9b96cc0222fd491822fcc3149758a4e868a28a51f64a8884 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CompletedZetaPoleLogDetector.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
