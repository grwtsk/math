# Verification target: Source Actual Monotone Kernel Probe Frozen

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9234655406ca52af771c25772dcaa012eee2e69b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variantb91d5de73d3bc01f91b952ab6b4154b5d541d91904c31d32de02073fc0385c2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9234655406ca52af771c25772dcaa012eee2e69b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variantb91d5de73d3bc01f91b952ab6b4154b5d541d91904c31d32de02073fc0385c2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variantb91d5de73d3bc01f91b952ab6b4154b5d541d91904c31d32de02073fc0385c2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexCorrelationAsymptotic` — import line 1; external provider; requires a separately pinned dependency.
- `CriticalRelativePairing` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [syntheticRelativeProbe](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/declarations/syntheticrelativeprobe.md) | 26 | `declaration-track:325e40bca7cd8438effe6bff70c5d9516b4c19c7508cd720001ca88561ee4183` |
| 2 | `def` | [actualKernelProbeReadout](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/declarations/actualkernelprobereadout.md) | 30 | `declaration-track:cfe9ac30537717a15d5319724830212b6a98f02c86e61f0fb759d9bb1caceb8c` |
| 3 | `theorem` | [actualKernelProbeReadout_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/declarations/actualkernelprobereadout-intervalintegrable.md) | 35 | `result-track:336999219a1f4acc89008eaab2a505a37ee9e11d7970f87cb2b49425c5d15e22` |
| 4 | `theorem` | [halfTransform_real](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/declarations/halftransform-real.md) | 45 | `result-track:d9ac64e5a168cb76c19645c68742263b61073f1697a91591e27be7cfac8bb728` |
| 5 | `theorem` | [actual_real_mode](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/declarations/actual-real-mode.md) | 60 | `result-track:d09934c82c0df4dab021a52c4368eab48110b9bdc35366275dc81bf433718299` |
| 6 | `theorem` | [actualKernelProbeReadout_eq](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/declarations/actualkernelprobereadout-eq.md) | 103 | `result-track:33c2de477b4cb603f7dee014edab357e21d54ed03c029f7ca2e9691018637a33` |
| 7 | `theorem` | [actual_half_real_scaled](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/declarations/actual-half-real-scaled.md) | 136 | `result-track:85b51b52bdf51ca886970157de085217eef2d526f2c3870388bb3a822909e55e` |
| 8 | `theorem` | [actualKernelProbeReadout_normalized_tendsto](../../../../MeasureAndIntegration/SourceActualMonotoneKernelProbeFrozen.lean/declarations/actualkernelprobereadout-normalized-tendsto.md) | 169 | `result-track:1b8483d2e6cb61db3f85b7664ef470cccdfc1acb91cb26fb8c4134318e98c621` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6dabd057700d175d8fdaffaf52e7baa231b5ed260eb48607f33f1b97c8bac16c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variantb91d5de73d3bc01f91b952ab6b4154b5d541d91904c31d32de02073fc0385c2a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMonotoneKernelProbeFrozen/Variantb91d5de73d3bc01f91b952ab6b4154b5d541d91904c31d32de02073fc0385c2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
