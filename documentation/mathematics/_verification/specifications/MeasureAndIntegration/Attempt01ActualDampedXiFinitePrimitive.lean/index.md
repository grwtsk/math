# Verification target: Attempt01 Actual Damped Xi Finite Primitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b692776fe9f8966ec430cb4de561416a68645ed",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e9a325cd7a6ff0f724818a7f5263cedb4c9a267e4f44764bddf98aba26f36d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b692776fe9f8966ec430cb4de561416a68645ed`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e9a325cd7a6ff0f724818a7f5263cedb4c9a267e4f44764bddf98aba26f36d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e9a325cd7a6ff0f724818a7f5263cedb4c9a267e4f44764bddf98aba26f36d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiLaplaceMellin` — import line 1; external provider; requires a separately pinned dependency.
- `RootActualXiExponentialEnvelope` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualDampedXiFinitePrimitive](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive.md) | 21 | `declaration-track:229052b7e621e73e2519f97998a00a9b58ea7563df4e98129500c0b25e8f0eba` |
| 2 | `def` | [actualDampedXiFiniteBudget](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifinitebudget.md) | 25 | `declaration-track:9242ab5bb2438c2f9d823223682a999cabf09de96c35f882312e57151bb89c45` |
| 3 | `theorem` | [time_nonneg](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/time-nonneg.md) | 28 | `result-track:6d1fec9c55c970e5b901eb0b10d724fed7b142449762e6546e33cee0d04700d4` |
| 4 | `theorem` | [physical_lower](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/physical-lower.md) | 31 | `result-track:bea7daccb41d80e6418c5b9be9519609a14d57fc5c32d738530bd7ab28d94469` |
| 5 | `theorem` | [shifted_abs_le](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/shifted-abs-le.md) | 34 | `result-track:89bc3ed477f2a090093e244f51a36c27cea92f30bdc65c5878d8cf2ec3861cda` |
| 6 | `theorem` | [actualDampedXiFinitePrimitive_intervalIntegrable](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-intervalintegrable.md) | 46 | `result-track:a79eb1d1f65a336908e313020179b54e0edb90595986620c4bcaf8a97ce1411b` |
| 7 | `theorem` | [actualXiTimeDamped_eq_inverseSquare](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualxitimedamped-eq-inversesquare.md) | 53 | `result-track:81d6e041b251883f76a6ce795346852bdcb1f545dc834d3edcb188411409bb80` |
| 8 | `theorem` | [actualXiSevenInverseSquare_exact](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualxiseveninversesquare-exact.md) | 73 | `result-track:e4c54b40ed049150f0da047a9eff27fa0c563401a5182b42cf9de5e95bbe3fe5` |
| 9 | `theorem` | [damped_hasDerivAt](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/damped-hasderivat.md) | 87 | `result-track:3eb5147b4fd68742b11c1162fca78114d960db324ad4774f4a6b74c50cf0e49a` |
| 10 | `theorem` | [actualDampedXiFinitePrimitive_abel](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-abel.md) | 94 | `result-track:f0a0b218ece04dba50b1a8178d9a334e768edca34394b4f0776ba7526455b587` |
| 11 | `theorem` | [actualDampedXiFinitePrimitive_closed_readout](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-closed-readout.md) | 124 | `result-track:014a8a5e18ac10cd1bb3aba523642246e973f480a49dd18d78875a084311c196` |
| 12 | `theorem` | [actualXiSevenInverseSquare_abs_le](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualxiseveninversesquare-abs-le.md) | 132 | `result-track:218473a08d2e9b8bb38edfb7942923ab3f079304d68dc6172360be2077751a22` |
| 13 | `theorem` | [actualDampedXiFinitePrimitive_upperTrace_abs_le](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-uppertrace-abs-le.md) | 156 | `result-track:c6ef670a92bedf316e532b9d119ee008482a65e8aed870c1a1f2370489482dde` |
| 14 | `theorem` | [actualDampedXiFinitePrimitive_abs_le_budget](../../../../MeasureAndIntegration/Attempt01ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-abs-le-budget.md) | 172 | `result-track:d2b4cc212ce6bfde1565b0294178f9084286b5e6b770ad1558b37789be7a215d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1370865cb9cf74cf858f6554070d5e3f807584de1240eae61578fc280e5321c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e9a325cd7a6ff0f724818a7f5263cedb4c9a267e4f44764bddf98aba26f36d2.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variant8e9a325cd7a6ff0f724818a7f5263cedb4c9a267e4f44764bddf98aba26f36d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
