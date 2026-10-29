# Verification target: Endpoint Derivatives Attempt03 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26080bb68872c1490e4d958886634880f566ca19",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variant7f5547a0cef369517462a2019ea12b840ca65839c1f578cde78f21a56c760615.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/index.md) · [Full source](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26080bb68872c1490e4d958886634880f566ca19`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variant7f5547a0cef369517462a2019ea12b840ca65839c1f578cde78f21a56c760615.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variant7f5547a0cef369517462a2019ea12b840ca65839c1f578cde78f21a56c760615.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpointfirstpolynomial.md) | 26 | `declaration-track:4bdff16629f16a3aedc792006a1b544b987d3f5c20048243f44cf10e579bd924` |
| 2 | `def` | [endpointSecondPolynomial](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpointsecondpolynomial.md) | 55 | `declaration-track:d4182b45de7bc48a5947c6bb93ff6b87dc6122636a5a18a3eec65bd4d7af1dad` |
| 3 | `def` | [endpointFullSlope](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpointfullslope.md) | 84 | `declaration-track:a9aa227a4926a303673595a35c4736ad87f16164832892323d1b4f9df7612f29` |
| 4 | `def` | [endpointFullCurvature](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpointfullcurvature.md) | 87 | `declaration-track:4a42c4c9bb67f922b95717719badc0bb8eeb2cb57f78d601950914c9fbad5850` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpointfullpolynomial-contdiff.md) | 90 | `result-track:f1583e1a4c4aaf5de786a03d93d580bd380713f09c3a384028b973a7dd271d50` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpointfirstpolynomial-contdiff.md) | 94 | `result-track:0c5235068e8061251f7b8268e7b68a2289def98d446984b8f053200a7ecfdd40` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-full-deriv.md) | 98 | `result-track:c8347880640ddd9b3950ccac6523c55c12ffbab6af7d46a85b3803f1b155a657` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-first-deriv.md) | 104 | `result-track:4a5403421d858170e593a0990b5df056652e552c898d906dcc91303b005bebb6` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-full-hasderivat.md) | 110 | `result-track:2a5da8e195ed46645d2baa0fe7ed5171f883d72cb6a7112bb25a64246fd5f54d` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-first-hasderivat.md) | 115 | `result-track:1c5e352ad1ebaff84305134e30c05953ddb0653f9455ef97cbc1100697b97da8` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-slope-zero.md) | 120 | `result-track:4e9632e638a03ca5f6bc2bd464d44fd495195d90d0f9500774293e87af37cc22` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-curvature-zero.md) | 124 | `result-track:d386eaa34a0dce6205f0da286379fd29d9cc4c0c236cec8fa821058d95a45659` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-slope-continuous.md) | 130 | `result-track:04a648ac0dc1c3ddaf5bfe1aaab0a7daea5328f1db9c22eb63cfe2fe1029e12a` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-curvature-continuous.md) | 134 | `result-track:89cabf96aa1397fd507b2aafa8c0d4bbf0008246261949be8f93b67ca5bf7bca` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-slope-uniform-remainder.md) | 140 | `result-track:418b0a53917e8251931e07b60e0cca8a7560f6bd97f6c04abcfc59cf1cb44bbd` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/endpoint-curvature-uniform-remainder.md) | 152 | `result-track:b54570af7da7877f5d0f5dcd5b968f8690d0c797b9e94eb1f161ff4d2c8133e0` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/actual-endpoint-model-eventuallyeq.md) | 166 | `result-track:0092732f2cbf5e6002b7ea87e78893e9c3c4288f9bd7a95747a8a270107cc303` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/actual-endpoint-first-hasderivat.md) | 182 | `result-track:91722a4d766d3869120ca937bd04d65e92ac901e5fd114a22f6e5f160a3c960f` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt03Namespaced.lean/declarations/actual-endpoint-second-hasderivat.md) | 199 | `result-track:6bec9d29d7f72ccae75e23af904487879a7d719e46fabab40a317261c05605bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44a9d8a25af2bb30f7ae60e0c82630a2eb488db549b556a7f592f4be30ff6c9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variant7f5547a0cef369517462a2019ea12b840ca65839c1f578cde78f21a56c760615.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt03/Variant7f5547a0cef369517462a2019ea12b840ca65839c1f578cde78f21a56c760615.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
