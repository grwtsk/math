# Verification target: Basic Source V2 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ed366fed0880dd9b51c63a928c3072080d358c9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/BasicSourceV2Prebytes/Variant38ddbfbebcb1fa1d9d26604bbddb12ef5f62bc1a643c08296686bc8fc7f43687.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/index.md) · [Full source](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ed366fed0880dd9b51c63a928c3072080d358c9`.

Source path: `GRWTSK/Topology/GeneralTopology/BasicSourceV2Prebytes/Variant38ddbfbebcb1fa1d9d26604bbddb12ef5f62bc1a643c08296686bc8fc7f43687.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/BasicSourceV2Prebytes/Variant38ddbfbebcb1fa1d9d26604bbddb12ef5f62bc1a643c08296686bc8fc7f43687.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spatialDerivative](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivative.md) | 34 | `declaration-track:133ac56ca837c2b42d69ae8ab813c164b2886559abb96d24fd839353e6911149` |
| 2 | `theorem` | [normalizedSource_hasSpatialDerivAt](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/normalizedsource-hasspatialderivat.md) | 39 | `result-track:3eb3d3997496ea97d718fed3a61d2733ce8d01230097e0151ac1fa98a92ea431` |
| 3 | `theorem` | [spatialDerivative_eq_deriv](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivative-eq-deriv.md) | 59 | `result-track:b01488640e138a35fd389de662b5f2462b5f0733bce914a021d1f3954bac7f99` |
| 4 | `theorem` | [spatialDerivative_continuousAt_joint](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivative-continuousat-joint.md) | 64 | `result-track:3d59dde1788063362e2d8e82224d9bcfa30e3be65b407b243ea1454ef3c5fd0e` |
| 5 | `theorem` | [spatialDerivative_continuousOn_joint](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivative-continuouson-joint.md) | 75 | `result-track:24af17785a0e04ab82bc0e63c2151fecaaa01fed50fb30c87962d4947652dfd2` |
| 6 | `theorem` | [spatialDerivative_continuous](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivative-continuous.md) | 80 | `result-track:5afa1a27da087da464d24361bd4a0782689bedc377dc4f89589de08012291def` |
| 7 | `theorem` | [spatialDerivative_zero_of_le_abs](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivative-zero-of-le-abs.md) | 88 | `result-track:0f03e678a768b4417e5b74c3ce487e7da4d26c48f2cc7841cfd29e475ed4992a` |
| 8 | `theorem` | [spatialDerivative_hasCompactSupport](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivative-hascompactsupport.md) | 97 | `result-track:0bb95fc0af210afc8d279a444e6423b90d35f7d8f7c398b84d994f0c8b9174d2` |
| 9 | `theorem` | [spatialDerivative_memLp](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivative-memlp.md) | 112 | `result-track:f1e8ac6950f431416d962fa8c548d8c824d27f5350fce19cbfbffb6c41ac2b55` |
| 10 | `def` | [spatialDerivativeL2](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivativel2.md) | 118 | `declaration-track:870d54794401a3983c49e0d804648ee6e69d9cbbbf90e7bde85b56ff6aa941ef` |
| 11 | `theorem` | [spatialDerivativeL2_coe_ae](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivativel2-coe-ae.md) | 122 | `result-track:b5d36919229d74c398d8b9041462c474c5f805b97ca01b0ec7373597b3ff4880` |
| 12 | `def` | [spatialDerivativeState](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivativestate.md) | 132 | `declaration-track:55da7ad7baaae265eb87a296b21deff05acbf443ed754d93c5b2a7df2f11792f` |
| 13 | `theorem` | [spatialDerivativeState_eq](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivativestate-eq.md) | 136 | `result-track:948083de395add7c6119e9b8eb24c2875b456f6319464af635c0bf1de5aca6db` |
| 14 | `theorem` | [spatialDerivativeState_coe_ae](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivativestate-coe-ae.md) | 141 | `result-track:8fcf06be22812485516551a8df8238d3d2dcec984d106ae37512a465675d44c0` |
| 15 | `theorem` | [spatialDerivativeState_norm_sub_sq](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivativestate-norm-sub-sq.md) | 147 | `result-track:6c081ee951fb058be905a21f85de60e3e2c2462060bee01f94b2e69e4dc27e0f` |
| 16 | `theorem` | [spatialDerivative_differenceIntegral_continuousOn](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivative-differenceintegral-continuouson.md) | 168 | `result-track:9e0201f680171a3ea4150385eeaf8968636e375a0550af46990fb9b391838e74` |
| 17 | `theorem` | [spatialDerivativeState_continuousAt](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivativestate-continuousat.md) | 192 | `result-track:1a6da575f679d6eee315e0489fd5dff89de4ff6195661f176401a0ab9195b3c0` |
| 18 | `theorem` | [spatialDerivativeState_continuousOn](../../../../MeasureAndIntegration/BasicSourceV2Prebytes.lean/declarations/spatialderivativestate-continuouson.md) | 212 | `result-track:b80d9cc0d5887a69378a8aa2e6b2f87790fc7c5861c0e0072a3c96d099600316` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae1a13f2034f0dcf878ff76a48a63d9e1561974ac01da8776cacedeafd75dce3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/BasicSourceV2Prebytes/Variant38ddbfbebcb1fa1d9d26604bbddb12ef5f62bc1a643c08296686bc8fc7f43687.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/BasicSourceV2Prebytes/Variant38ddbfbebcb1fa1d9d26604bbddb12ef5f62bc1a643c08296686bc8fc7f43687.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
