# Verification target: Gevrey Correlation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "381ea2a831d39222ecdc6a913652c016b4b2aaa0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GevreyCorrelation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GevreyCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `381ea2a831d39222ecdc6a913652c016b4b2aaa0`.

Source path: `GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.GevreyNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correlation](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/correlation.md) | 21 | `declaration-track:e004fc7211641321e0e3ccb44cacbfe7190c1ba602dc4f01b1c7e579831cf733` |
| 2 | `theorem` | [profile_hasCompactSupport](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/profile-hascompactsupport.md) | 25 | `result-track:7ac7077acfefd3b228ed19de4b7fd12c6fb78f28ccb46962582b44a33739d10a` |
| 3 | `theorem` | [scaledProfile_support](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/scaledprofile-support.md) | 30 | `result-track:76c871e264151b3603839616c90c46aa7c738f4f7e1922c607025c4ddf34e1e4` |
| 4 | `theorem` | [dilationOperator_support](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/dilationoperator-support.md) | 44 | `result-track:4a5de9df7e83b93675dfad130377de26d2cf49db376c2d4d2f834022330d792c` |
| 5 | `theorem` | [normalizedOperator_support](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/normalizedoperator-support.md) | 62 | `result-track:49f9891ee349e437ab4a4e64ca070ad445c0348b8294693515357872524a673e` |
| 6 | `theorem` | [normalizedOperator_continuous](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/normalizedoperator-continuous.md) | 70 | `result-track:6a002cb5b7aafd2fcd9a9c89882eac89b8887e6bf09155232c0664f8ef6454b1` |
| 7 | `theorem` | [normalizedOperator_hasCompactSupport](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/normalizedoperator-hascompactsupport.md) | 78 | `result-track:56fefa31caac33879cdddc44cd27b532a75073fcfcc0f94bc7bbdb0ff40250b4` |
| 8 | `theorem` | [zero_of_radius_le_abs](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/zero-of-radius-le-abs.md) | 84 | `result-track:879144df7a82cc6498b0bdda225d9c130ce602df00d8ceef83a28d3c791fb970` |
| 9 | `theorem` | [normalizedOperator_zero_of_le_abs](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/normalizedoperator-zero-of-le-abs.md) | 108 | `result-track:919040f5dc15af729d006b9dee4b7759ce973db1f121a813d81ebf22ce92f286` |
| 10 | `theorem` | [correlation_zero_of_le_abs](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/correlation-zero-of-le-abs.md) | 115 | `result-track:561caa846240ed5f91bb44de1075655b59be7dda58fbc957063c20c09604a2d7` |
| 11 | `theorem` | [correlation_support](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/correlation-support.md) | 134 | `result-track:f4ae04c236e046ec2f42f12605c066dc45b54c49b4fb9f00b196f80315c32bf6` |
| 12 | `theorem` | [correlation_zero](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/correlation-zero.md) | 144 | `result-track:458b4ef054f7b676ffc4da643fcbb77188b438fe187bbd59022fa772e6d8808f` |
| 13 | `theorem` | [correlation_eq_convolution](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/correlation-eq-convolution.md) | 150 | `result-track:0e1894d7153f24654669adf101de859e718e7415122a611e7d00d03d61a1d69d` |
| 14 | `theorem` | [correlation_integrable](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/correlation-integrable.md) | 161 | `result-track:9cca1d04ad506582c73f6cce279680f45980f1f8ebeed6539345f310501ff06b` |
| 15 | `theorem` | [correlation_continuous](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/correlation-continuous.md) | 168 | `result-track:704b9682762b3963e3b37ffadddc37d86911c378367ac039551a892aba3201c6` |
| 16 | `theorem` | [correlation_hasCompactSupport](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/correlation-hascompactsupport.md) | 183 | `result-track:e5719f83fc98848b84afbf9db1e7a7d5e5cc9d88e90139c1d29c152fa72666b2` |
| 17 | `theorem` | [profile_support_radii](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/profile-support-radii.md) | 189 | `result-track:9c1dbf96775fd0235b94a3443b07ca66241102dc4e83928bf8bc1381eacb5d8e` |
| 18 | `theorem` | [profile_correlation_zero](../../../../MeasureAndIntegration/GevreyCorrelation.lean/declarations/profile-correlation-zero.md) | 202 | `result-track:5c2815a68329d46f0faa0c25afab96633fbf145a9ebd882cee938557fab56914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d22e3dbc40d0ff4deb5c7f7603620e23d8ea3e2695bce9ed4bab37db1030bfe3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/GevreyCorrelation/Variant5b794ed0457448bf1f2fb10f5f018fd53ced3b5c8e74fd66e0c34561bb269440.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
