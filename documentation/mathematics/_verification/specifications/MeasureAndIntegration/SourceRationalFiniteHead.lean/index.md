# Verification target: Source Rational Finite Head

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f19a1af4341bb3b113e433f85590f71b4685d6ae",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f19a1af4341bb3b113e433f85590f71b4685d6ae`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceRationalCompensation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rationalKernelHeadMass](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/rationalkernelheadmass.md) | 31 | `declaration-track:2374946d6f60cb275c53ee2eb7751b83601b0e7788d351930c8c969b57c4193c` |
| 2 | `def` | [rationalRemainderHead](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/rationalremainderhead.md) | 38 | `declaration-track:b15aa036737a9d0475e730a489bf52d7a5c3130bfeb09cd1ac8d81b762ced444` |
| 3 | `def` | [correctedRationalHead](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/correctedrationalhead.md) | 42 | `declaration-track:c1789e70f88a24f0a9b6e1fdc0939b6013835742cee422868f9e6c6d1e63d1bf` |
| 4 | `theorem` | [angularHead_eq_rational_masses](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/angularhead-eq-rational-masses.md) | 48 | `result-track:e82fd3b148f1b5f677d13862023c59a83b7b92ebb8cd5214b6c409df80e14a22` |
| 5 | `theorem` | [correctedRationalHead_eq_head_sub_baseline](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/correctedrationalhead-eq-head-sub-baseline.md) | 90 | `result-track:4c5c74954e1eb3dd172c4ebc6386cee37e097d603289fc954710510e1c803132` |
| 6 | `theorem` | [correctedRationalHead_real_readout](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/correctedrationalhead-real-readout.md) | 97 | `result-track:d58b3d56eb2b3bf5462c5a16598035536facbe8e52872518f97fedd5859d3c08` |
| 7 | `theorem` | [residual_sub_correctedRationalHead_norm_bound](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/residual-sub-correctedrationalhead-norm-bound.md) | 103 | `result-track:cb3015d4a853d741c21b796fe00c642d7edeaa7cd81ab6c8d363e69d4ec90694` |
| 8 | `theorem` | [residual_sub_correctedRationalHead_growing_norm_bound](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/residual-sub-correctedrationalhead-growing-norm-bound.md) | 112 | `result-track:058e59e62b5b6bb04afa0ac21d9ee82ea5a89d0b8b4b7b9523a14f4f48a413d8` |
| 9 | `theorem` | [residual_sub_correctedRationalHead_growing_abs_bound](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/residual-sub-correctedrationalhead-growing-abs-bound.md) | 121 | `result-track:484350fc60e1a51e072066af51ceb87629075646e1ae34d8096502a372ac1492` |
| 10 | `theorem` | [residual_upper_of_correctedRationalHead_with_baseline](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/residual-upper-of-correctedrationalhead-with-baseline.md) | 130 | `result-track:437cd349e9fc8da98301fcce3af4d5630a91ee06fd87c3fcf4ae6454c3e1ab20` |
| 11 | `theorem` | [residual_upper_of_correctedRationalHead](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/residual-upper-of-correctedrationalhead.md) | 140 | `result-track:e766192afa526ab8fb395b102d3aa256272e171c0443dc3c251f81640f4243ae` |
| 12 | `def` | [CorrectedRationalHeadTailUpperBound](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/correctedrationalheadtailupperbound.md) | 149 | `declaration-track:38ee970fe8a415e74c3703793224c3c13297bdbd03f2985b02cfbab4b3ad9f80` |
| 13 | `theorem` | [native_signed_head_of_corrected_rational](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/native-signed-head-of-corrected-rational.md) | 153 | `result-track:8c0a89333cebb8a578c639982f8ddb53a0103fee224be96f5ea2c0153e7d5588` |
| 14 | `theorem` | [estimate_of_corrected_rational_head](../../../../MeasureAndIntegration/SourceRationalFiniteHead.lean/declarations/estimate-of-corrected-rational-head.md) | 161 | `result-track:618d4386ac1e651c3c994ae12b3d803ed8ded1fa58dc78999d7d1f0130f9ff60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f1ff7c83e1f9b3813101bd934cedbaaa86747e9e86ff7139fd3e6a55dfdde3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Variantcd024c19a33fb7e3ac7d6260675742bd7e28e5686b038ab049d10282b542e519.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
