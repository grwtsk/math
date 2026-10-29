# Verification target: Endpoint Derivatives Attempt05 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c5d0ade425c8cb2f1a6c4f23cc676c21e79ab83",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant7fe2ebcdd2f6740b23fbb649a90727315975a1a1ebd3d28dc0142f7f9a377830.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/index.md) · [Full source](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c5d0ade425c8cb2f1a6c4f23cc676c21e79ab83`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant7fe2ebcdd2f6740b23fbb649a90727315975a1a1ebd3d28dc0142f7f9a377830.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant7fe2ebcdd2f6740b23fbb649a90727315975a1a1ebd3d28dc0142f7f9a377830.lean.json)

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
| 1 | `def` | [endpointFirstPolynomial](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpointfirstpolynomial.md) | 26 | `declaration-track:8dd7320accb4ca6256ea99aef244f60c0e5d2db6fec25e9e416421254a5d579b` |
| 2 | `def` | [endpointSecondPolynomial](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpointsecondpolynomial.md) | 55 | `declaration-track:41205fe0ec7059ddc5518fd0481167b2855f7dcab405ed0fb35f24cbb05ac151` |
| 3 | `def` | [endpointFullSlope](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpointfullslope.md) | 84 | `declaration-track:23b8d4a5688ef6b7313f85b44b5399fa91af40efff8183c167526f4fc8d21e28` |
| 4 | `def` | [endpointFullCurvature](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpointfullcurvature.md) | 87 | `declaration-track:56acf3a53bf54ffeb9a9f68c710320e3383369130c310265be274d817f72cf40` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpointfullpolynomial-contdiff.md) | 90 | `result-track:c0a60776c1143ded556f3574e27b3e0ec26b913585c9cf282945892689573741` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpointfirstpolynomial-contdiff.md) | 94 | `result-track:65638e66aa7fbe3a2f07890620b56cf531c589832d920e14ada4fb364668947b` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-full-deriv.md) | 98 | `result-track:81adf7afd02887e496cc8f726055646bced871bea65a38e78ed7c44aed1438c2` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-first-deriv.md) | 104 | `result-track:ce1ab50231e5a53f10fc1ff6dbee5be04da8664fb054c426b6215ba839326a27` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-full-hasderivat.md) | 110 | `result-track:998435cd146f0ae2fe3dd9e8651385bed2cf1a848353a5ca589dc345644352be` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-first-hasderivat.md) | 115 | `result-track:65ec76b3e97a94f12080a9a99fe64d45865b0593d66589ec695800c4cc28fb8c` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-slope-zero.md) | 120 | `result-track:351cf1703dbbb4fdc27ab4dc7149390c6f943757ad232a872ddb0a4b3e72bafd` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-curvature-zero.md) | 124 | `result-track:c902574520d0d456b53c2f917fcce5c23350e66725c4cb45310ab15d88d93e27` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-slope-continuous.md) | 130 | `result-track:bdc7283b159e7b796f6f4cd4963548f175ac610b539e1d50c6d51ca1eaa42cee` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-curvature-continuous.md) | 134 | `result-track:9788d68ca277ca2b84d59b9044def5eda8dee50ac09c8232d41eff906706cc36` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-slope-uniform-remainder.md) | 140 | `result-track:581fc9e05d1cee19f261aeaa952e900cf21f6d0950415eadd67668541eb9eb60` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/endpoint-curvature-uniform-remainder.md) | 153 | `result-track:bb60e5f6c4e0ab4e6c711dfff37c3b175b9ae392c5bb58165a1f6409f4398b54` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/actual-endpoint-model-eventuallyeq.md) | 168 | `result-track:4611c8684b2fad52085534f62417927234d18d878f0f149f214f4e48e2b27416` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/actual-endpoint-first-hasderivat.md) | 184 | `result-track:9aae7f5aa8925eee87fe56d5d0ddc092763c41ec5f95f0dea25a7387bd202bfd` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt05Namespaced.lean/declarations/actual-endpoint-second-hasderivat.md) | 199 | `result-track:b12d11d727fae5a7860cfbfbbe43b5b5739e092f375b6e2bf3f38cb3976e9521` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc83112a9d85908198b009fe06120f177894f9ba3dc0193092179bd06b13405c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant7fe2ebcdd2f6740b23fbb649a90727315975a1a1ebd3d28dc0142f7f9a377830.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant7fe2ebcdd2f6740b23fbb649a90727315975a1a1ebd3d28dc0142f7f9a377830.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
