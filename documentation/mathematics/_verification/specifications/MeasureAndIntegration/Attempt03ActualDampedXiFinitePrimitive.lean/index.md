# Verification target: Attempt03 Actual Damped Xi Finite Primitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2df3777906a2d0eaf5222bb25b1699903f89e17",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9b3ac64efe5be7db748abe4ce94e8d0dbd348f1901d31bfa81b0ddcb0fcd87be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2df3777906a2d0eaf5222bb25b1699903f89e17`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9b3ac64efe5be7db748abe4ce94e8d0dbd348f1901d31bfa81b0ddcb0fcd87be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9b3ac64efe5be7db748abe4ce94e8d0dbd348f1901d31bfa81b0ddcb0fcd87be.lean.json)

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
| 1 | `def` | [actualDampedXiFinitePrimitive](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive.md) | 21 | `declaration-track:84f0ff1bdba107e7de7dde0d645c99a8402ad1cffd24ae722f7db28dadf31215` |
| 2 | `def` | [actualDampedXiFiniteBudget](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifinitebudget.md) | 25 | `declaration-track:c5944faa266c41263b2658ab07d18035e27f84967f0e7b5ad27c4ab2ec8fa3fa` |
| 3 | `theorem` | [time_nonneg](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/time-nonneg.md) | 28 | `result-track:b2471b8749869fe49108fe87c3a73b58d0e2e55d5de8f075575b97872c730eff` |
| 4 | `theorem` | [physical_lower](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/physical-lower.md) | 31 | `result-track:e79a96f4800eb31538fbd3292ea9dbd95c191d255762ef7b18ca43bb043526c9` |
| 5 | `theorem` | [shifted_abs_le](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/shifted-abs-le.md) | 34 | `result-track:ac14520995bb2d0c1544581156ad4193faee70c1501b73a9ba2aa35945100ee7` |
| 6 | `theorem` | [actualDampedXiFinitePrimitive_intervalIntegrable](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-intervalintegrable.md) | 46 | `result-track:8b23ba0412e674731a2ffb842e918ea32f357e729e23c40d830edcc374044181` |
| 7 | `theorem` | [actualXiTimeDamped_eq_inverseSquare](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualxitimedamped-eq-inversesquare.md) | 53 | `result-track:d9e50feadd7e61bdfd46419868c2ef2e684386af3a7af1ab52012e81b748a8f5` |
| 8 | `theorem` | [actualXiSevenInverseSquare_exact](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualxiseveninversesquare-exact.md) | 73 | `result-track:b741ffe85dbc898df64d11e6411ea1593fe185f63f5420934c45f7977ee23a41` |
| 9 | `theorem` | [damped_hasDerivAt](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/damped-hasderivat.md) | 87 | `result-track:0e41d61d617078f94d353aa2eff298f519b8abbf206dd6a632eb63e9ce54fdc9` |
| 10 | `theorem` | [actualDampedXiFinitePrimitive_abel](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-abel.md) | 95 | `result-track:1f2326991de8a30fd971b0413d1fb8c046b3384b101b00011dbd8f4ec67e879f` |
| 11 | `theorem` | [actualDampedXiFinitePrimitive_closed_readout](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-closed-readout.md) | 129 | `result-track:cbd8b5fd8d1eb194ea5d5f21c47eea98e8adda648cfe9d424c1f3966b79fe4b6` |
| 12 | `theorem` | [actualXiSevenInverseSquare_abs_le](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualxiseveninversesquare-abs-le.md) | 137 | `result-track:6cd802ad02737884b76bd9e2630be838e23dbc1934daf6d2053777596a50fa73` |
| 13 | `theorem` | [actualDampedXiFinitePrimitive_upperTrace_abs_le](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-uppertrace-abs-le.md) | 161 | `result-track:7f87e1277053870671c9600bb48ba6c6e3c7946a5d6bedeafb312d733757ca10` |
| 14 | `theorem` | [actualDampedXiFinitePrimitive_abs_le_budget](../../../../MeasureAndIntegration/Attempt03ActualDampedXiFinitePrimitive.lean/declarations/actualdampedxifiniteprimitive-abs-le-budget.md) | 178 | `result-track:aeb717dd77143fe3df48ab89804109765316b97de3f6a79d6b84e045b49cc163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7288225f91d3967831367397f9cb160ebb003d8bc1547119cdc4feefd8774580 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9b3ac64efe5be7db748abe4ce94e8d0dbd348f1901d31bfa81b0ddcb0fcd87be.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant9b3ac64efe5be7db748abe4ce94e8d0dbd348f1901d31bfa81b0ddcb0fcd87be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
