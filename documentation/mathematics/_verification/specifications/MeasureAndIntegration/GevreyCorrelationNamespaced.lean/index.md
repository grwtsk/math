# Verification target: Gevrey Correlation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6db8ae53708139ec792306a735e8d99b5d0a8dbb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6db8ae53708139ec792306a735e8d99b5d0a8dbb`.

Source path: `GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.GevreyNormalization` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correlation](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/correlation.md) | 29 | `declaration-track:ef680e4952c9f0522d2d40a9a84633aebc3814f06b94546597a2af1ffeabf8f9` |
| 2 | `theorem` | [profile_hasCompactSupport](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/profile-hascompactsupport.md) | 33 | `result-track:9dd5a9b174b1299e780c0183b8d942e757f21438d88a4e13011bf8999fd5ff0c` |
| 3 | `theorem` | [scaledProfile_support](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/scaledprofile-support.md) | 38 | `result-track:da479bb2d584800ee9e1ab2154e71b681a7392a7ada15899e97acb01a5f7c745` |
| 4 | `theorem` | [dilationOperator_support](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/dilationoperator-support.md) | 52 | `result-track:0c8092e1bab40581c19475350fa30f0aaaa6358fb6719ea071cf761ef13fc360` |
| 5 | `theorem` | [normalizedOperator_support](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/normalizedoperator-support.md) | 70 | `result-track:8701f7b260d29e9e96732f407e066964729e5a0e1ecc485b2aba063f76766639` |
| 6 | `theorem` | [normalizedOperator_continuous](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/normalizedoperator-continuous.md) | 78 | `result-track:91add2e4c57eca341aae648828b78a79ad386cbffc115a126316ba7db5421fe7` |
| 7 | `theorem` | [normalizedOperator_hasCompactSupport](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/normalizedoperator-hascompactsupport.md) | 86 | `result-track:a8cb90aa28cc99f325776c4182a05310b20d890d1b1bddbc03633e8ad5d9e881` |
| 8 | `theorem` | [zero_of_radius_le_abs](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/zero-of-radius-le-abs.md) | 92 | `result-track:97f9ae7680a3a9a6255b768c7f1a6fa279a95609ee472866115b539353418343` |
| 9 | `theorem` | [normalizedOperator_zero_of_le_abs](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/normalizedoperator-zero-of-le-abs.md) | 116 | `result-track:ac9262c3855e482b44feb3820cb74634f7e430ed3ca50f616eba4665fff2e214` |
| 10 | `theorem` | [correlation_zero_of_le_abs](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/correlation-zero-of-le-abs.md) | 123 | `result-track:40becbb37bad5d0ddb197bedcf84cd19fcfa5134b2895e1bc8bdfa191c2b949d` |
| 11 | `theorem` | [correlation_support](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/correlation-support.md) | 142 | `result-track:1fe69e5606df186e9962633bb2ad7727be296d85db01e0550e9b07c44ef4c054` |
| 12 | `theorem` | [correlation_zero](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/correlation-zero.md) | 152 | `result-track:606998b0d5ce4cd9b9626d75031b71aa98af2edf3b8a673320d5557b40311c0a` |
| 13 | `theorem` | [correlation_eq_convolution](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/correlation-eq-convolution.md) | 158 | `result-track:ca694456699bc2b4f06fa812ce0b1574ab31a834ad6fd6c930975ff7cbc67373` |
| 14 | `theorem` | [correlation_integrable](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/correlation-integrable.md) | 169 | `result-track:f8349e458af3b68667574a49754a960e12737e4d169b03c33367e39289d4aa9b` |
| 15 | `theorem` | [correlation_continuous](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/correlation-continuous.md) | 176 | `result-track:8fd3e2116184940912ab530ee0e6ba1cc85156c720653428b83c614958700e99` |
| 16 | `theorem` | [correlation_hasCompactSupport](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/correlation-hascompactsupport.md) | 191 | `result-track:3c2b47ee5fd2a061de5ca182db689efec0f11d2c613221436bb6b78629e389df` |
| 17 | `theorem` | [profile_support_radii](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/profile-support-radii.md) | 197 | `result-track:5267ee9cbf232b02cf8e2cfaf2c1078cb7cb71548a05064c7a9eb5cac4d26101` |
| 18 | `theorem` | [profile_correlation_zero](../../../../MeasureAndIntegration/GevreyCorrelationNamespaced.lean/declarations/profile-correlation-zero.md) | 210 | `result-track:6d128145406bdbb3e8b5f33448edc1c8faa3483d8332462d014eb04fb84cf201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a3624c5eacf40d8f685a576a871e303563e5a959bf159726b504328ba672f75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/GevreyCorrelation/Variant6424d82bcc61573e31dbc6f8e3b0863dea94d0c40ea70918910a0c65fac652cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
