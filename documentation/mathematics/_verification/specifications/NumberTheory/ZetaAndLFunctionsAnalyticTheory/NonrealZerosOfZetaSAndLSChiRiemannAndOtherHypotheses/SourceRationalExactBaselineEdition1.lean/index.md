# Verification target: Source Rational Exact Baseline Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f24e9f47d3438464541b0de695c79f488f86d657",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalExactBaseline/Variant26c2e52dc8434609442cb181c03b521ae937f7f076ef8c4382176f4aa40c129a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f24e9f47d3438464541b0de695c79f488f86d657`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalExactBaseline/Variant26c2e52dc8434609442cb181c03b521ae937f7f076ef8c4382176f4aa40c129a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalExactBaseline/Variant26c2e52dc8434609442cb181c03b521ae937f7f076ef8c4382176f4aa40c129a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceRationalCompensation` — import line 1; external provider; requires a separately pinned dependency.
- `SourceContinuousHalfEnergy` — import line 2; external provider; requires a separately pinned dependency.
- `SourceResidualBudget` — import line 3; external provider; requires a separately pinned dependency.
- `SourceLeadingCesaroPropagation` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfEnergyValue](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/halfenergyvalue.md) | 22 | `declaration-track:a78b1876ede9c22cb6f1b9c21efaa8512ed63bf6b1749e3e59e9d63c7a9abd20` |
| 2 | `theorem` | [halfEnergyValue_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/halfenergyvalue-pos.md) | 25 | `result-track:b4b09d7df6e61fa13681d4b97ebe373473c6e8a25dbd2f2190cab801732fe1d1` |
| 3 | `theorem` | [halfEnergyValue_lt_two](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/halfenergyvalue-lt-two.md) | 29 | `result-track:6970d0c25e9da36198966ec872f1c21d7877b73a1f279a7d7a46885ddd290408` |
| 4 | `theorem` | [halfEnergyValue_mono](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/halfenergyvalue-mono.md) | 35 | `result-track:c143f14a078b0ac59279c692a62cb8caaf26d06d39221b2bafc4f8317dec4cf1` |
| 5 | `theorem` | [continuousPoleHalf_eq_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/continuouspolehalf-eq-exact.md) | 52 | `result-track:8506e823ac4cc999fc6e8710b644642064f050e8b9906ca9c54b4d55d0e238df` |
| 6 | `theorem` | [continuousPoleHalf_lt_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/continuouspolehalf-lt-zero.md) | 58 | `result-track:58bfd9a2edf832bfbc01807b4d7db78ab700e6a235959751cc23213083757bc0` |
| 7 | `theorem` | [rationalBaseline_eq_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/rationalbaseline-eq-exact.md) | 63 | `result-track:a5cd6bfd76971ca6e04291f833aea81be0c341e34e87fa8ef2b39c212e9abd2b` |
| 8 | `theorem` | [rationalBaseline_upper_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/rationalbaseline-upper-at-radius.md) | 70 | `result-track:ce97fef72992e155e4887e5b05b810995a119c24615881cc6f2c2a2a94b1c736` |
| 9 | `theorem` | [rationalBaseline_strict_improvement](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/rationalbaseline-strict-improvement.md) | 78 | `result-track:987daf4be831add1d86006bd97368abe67bda361e8f972c0c4df59732cc45a27` |
| 10 | `theorem` | [residual_upper_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/residual-upper-at-radius.md) | 85 | `result-track:3ecb1597ac9e8b46d8d8aa5e083ac3a20245d8beecaad85976f8929f1cc7cf46` |
| 11 | `theorem` | [all_real_lower_at_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/all-real-lower-at-radius.md) | 93 | `result-track:af818bda657c9832ff58d9de9a493cac8c6f5bbf5a31af5583fc08957044fb4e` |
| 12 | `theorem` | [leading_upper_at_receiving_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/leading-upper-at-receiving-radius.md) | 103 | `result-track:4f6849f009ab7305979d2283dda75f8a80138bf7f201154fdefa250f005b7465` |
| 13 | `theorem` | [estimate_of_exact_rational_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceRationalExactBaselineEdition1.lean/declarations/estimate-of-exact-rational-bound.md) | 116 | `result-track:f617901cde92ca420525ed718040df6c728bf38a4f811a13115490ebbd2bfdca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0420f64b9fe06288ba083da7dbe49249168c08c159a69d447fa488d86ddd2cc6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalExactBaseline/Variant26c2e52dc8434609442cb181c03b521ae937f7f076ef8c4382176f4aa40c129a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalExactBaseline/Variant26c2e52dc8434609442cb181c03b521ae937f7f076ef8c4382176f4aa40c129a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
