# Verification target: GRWTSK.Analysis.MellinTransform.DyadicIntegralSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb55a15888cb0a1340f5afb86b105f510d78ac7e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MellinTransform/DyadicIntegralSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb55a15888cb0a1340f5afb86b105f510d78ac7e`.

Source path: `GRWTSK/Analysis/MellinTransform/DyadicIntegralSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MellinTransform/DyadicIntegralSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 7; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Series.DyadicPartition`](../../../../RealFunctions/DyadicPartition.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Analysis.MellinTransform.PositiveCoordinates`](../../../../MeasureAndIntegration/PositiveCoordinates.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [background](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/background.md) | 25 | `declaration-track:8ad75a735394707102ee0631ce7e4996ef97bf4ec75c467467c7ad8b266cdaaa` |
| 2 | `def` | [ratio](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/ratio.md) | 28 | `declaration-track:e81631a7a459f78e27b06844b718869a1632b33113124fa7a274c968c175991c` |
| 3 | `theorem` | [power_natPow](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/power-natpow.md) | 30 | `result-track:b290305bf900457f3943630e62b9f851383be2600182e5b5cc7aef858d591a21` |
| 4 | `theorem` | [power_edge](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/power-edge.md) | 37 | `result-track:4316d343a1939724e79b6e6ef0995663e21e55899ccf1899915d53be7c98e425` |
| 5 | `theorem` | [power_integrable](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/power-integrable.md) | 41 | `result-track:8d5e7590fab31a16fc916d28d43ce53d353c263e14e017d1b0ebcee283f74cea` |
| 6 | `theorem` | [primitive_hasDerivAt](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/primitive-hasderivat.md) | 47 | `result-track:de46a7c3758af733a63b2f6eefdd3729735a791439d96a266414004bd5c0c103` |
| 7 | `theorem` | [finite_integral](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/finite-integral.md) | 57 | `result-track:517103acff242c324f645cc00c57e854fbc6a1389b623e65f833ac1c7aa14577` |
| 8 | `theorem` | [ratio_norm](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/ratio-norm.md) | 67 | `result-track:433bd4f0f6cc286b24eebcc85f0046ca31079ff83ef989050bdfb19926d0612e` |
| 9 | `theorem` | [ratio_norm_lt_one](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/ratio-norm-lt-one.md) | 71 | `result-track:aa297eb3f8147fbc042ac3752b0137d2937daf64aacf27f58557c7598c67fcfe` |
| 10 | `theorem` | [parameter_ne_one](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/parameter-ne-one.md) | 75 | `result-track:19e6f70cfa36b5c26466552856a0a350a9d2a482e2e49bbdbb8da44cd3b7133b` |
| 11 | `theorem` | [one_sub_ratio_ne_zero](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/one-sub-ratio-ne-zero.md) | 79 | `result-track:6c05fa72366b3a855595c32d76e1bbbdce8879b41a8ff1422c9c4100c658b0ec` |
| 12 | `theorem` | [background_eq](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/background-eq.md) | 86 | `result-track:4b442b4458ccd9971526911dc88374bc967aa689edc8fb7e1ff59bcffc91d38b` |
| 13 | `theorem` | [finite_background_sum](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/finite-background-sum.md) | 99 | `result-track:8a1c1f9062aefda76ec181e00aaca5e44bd1a3a025858b0af45cf7d244fc5303` |
| 14 | `theorem` | [background_hasSum](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/background-hassum.md) | 109 | `result-track:cad03a09a4ffc7b7dd4c00fa6958b35a2e3c5ab7bb649ab25d5b4871607a2a79` |
| 15 | `theorem` | [background_at_one](../../../../MeasureAndIntegration/DyadicIntegralSeries.lean/declarations/background-at-one.md) | 127 | `result-track:7c13cbd541738169daa6f0c139a8d1dcdea46dd34c2edbe0072a71045df93027` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=474e598eec3a812a93d0cca8a7b67267455f7342319f30df54d30a80155e7912 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MellinTransform/DyadicIntegralSeries.lean","GRWTSK/_verification/specifications/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/DyadicIntegralSeries.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
