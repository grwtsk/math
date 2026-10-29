# Verification target: Attempt06 Namespaced Inverse Power Bound Sharp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d6cefe118c678586532783b041c1719e2bb0584",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt06/Variant37dba7b8a056204fddfdafbe52f9dd60e995f53b9cecf84f6edf846c0b194c6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/index.md) · [Full source](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d6cefe118c678586532783b041c1719e2bb0584`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt06/Variant37dba7b8a056204fddfdafbe52f9dd60e995f53b9cecf84f6edf846c0b194c6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt06/Variant37dba7b8a056204fddfdafbe52f9dd60e995f53b9cecf84f6edf846c0b194c6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryRate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_power_bound_sharp](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/inverse-power-bound-sharp.md) | 24 | `result-track:47cd22c3856952f91f841496e30f1aceb94f95d92343b14bf44cb722a7877fe4` |
| 2 | `theorem` | [positiveEndpoint_error_sharp](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/positiveendpoint-error-sharp.md) | 33 | `result-track:ec62e14e09b2885a8bcad65da70a27e3b15fe9aa946cc6c53e5a98e0f583dd0b` |
| 3 | `theorem` | [reflectedEndpoint_bound_sharp](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/reflectedendpoint-bound-sharp.md) | 65 | `result-track:6c077d9bd78f4b530c34ca10c200933c67492baedfea714581003c2214890ba4` |
| 4 | `theorem` | [negative_endpoint_envelope](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/negative-endpoint-envelope.md) | 98 | `result-track:ccaf0a0539f747ce8c1846b53f52fdce0360e7c02c7722e63d9202a2cbe34e1a` |
| 5 | `theorem` | [actual_normalization_deficit_544](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/actual-normalization-deficit-544.md) | 109 | `result-track:833d28016a1d57f0c6eca8ab9b8e53b8f09d27046ba096ef681bf1750995f810` |
| 6 | `def` | [sharpError](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/sharperror.md) | 115 | `declaration-track:86b09386975c5382e6ae663d6acf7b2f6fcc22d74d8fb1b35275219c1fd60515` |
| 7 | `theorem` | [actual_source_ratio_sharp](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/actual-source-ratio-sharp.md) | 118 | `result-track:a926993667d2a6bacc3f29e768e4053a1943c1503b9df17e2251b04abc579894` |
| 8 | `theorem` | [sharpError_nonneg](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/sharperror-nonneg.md) | 161 | `result-track:4ff71f1f6fc3db29eded0cb4bf62f2465f8da1f5fab93e1c21970cabcfbe2ceb` |
| 9 | `theorem` | [errorPolynomial_path_tendsto](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/errorpolynomial-path-tendsto.md) | 169 | `result-track:9b6592a1ff861d1535409e5c10f2e03b5af9ef2ec430caf2148c9b14e2a613f0` |
| 10 | `theorem` | [negative_endpoint_path_tendsto](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/negative-endpoint-path-tendsto.md) | 182 | `result-track:c5e4313c5c00d5fc14bffd02896fe75d2b16aab0e2d147f50871092253839948` |
| 11 | `theorem` | [sharpError_path_tendsto](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/sharperror-path-tendsto.md) | 193 | `result-track:ad348b11a12f6faadbe3b1d2fe7bd867e9d5cf6e42df83037227ee4fe3ea48e9` |
| 12 | `theorem` | [actual_source_ratio_path_tendsto](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/actual-source-ratio-path-tendsto.md) | 206 | `result-track:85c681a9caa21a8c8e61629a1a22b38019788d71f5da0139f8fe3b43e8207f5a` |
| 13 | `theorem` | [boundary_ratio_exact](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/boundary-ratio-exact.md) | 226 | `result-track:afa8290b821f3a7c9afbd0144f076828ae281cb438856e4e23144762c8a46806` |
| 14 | `theorem` | [actual_boundary_ratio_path_tendsto](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/actual-boundary-ratio-path-tendsto.md) | 235 | `result-track:f07de4484f23cafbca8f8a1b1f5f06a796e3dac1f00ddac798fb0bbc1e3287ed` |
| 15 | `def` | [leadingEnvelope](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/leadingenvelope.md) | 260 | `declaration-track:1982a9d7790b2a90b52a71979fcb7a2f120f31c8289b51ad91b554f751b4214b` |
| 16 | `theorem` | [leadingCoefficient_half_plane_bound](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/leadingcoefficient-half-plane-bound.md) | 263 | `result-track:d684000492db6ee038599d3a1f8d42e7029ea413c9a2a442f98b8154932dec9f` |
| 17 | `theorem` | [half_plane_absolute_amplitude_rate](../../../../GeneralTopology/Attempt06NamespacedInversePowerBoundSharp.lean/declarations/half-plane-absolute-amplitude-rate.md) | 285 | `result-track:39058a99854fb5ada743f2693184484b72e43544695cd4fa237e62817fac9a16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7046ce1f0e315cc32ff68385cc5ddd0e72c93fc604f1812aa3ff0e71820248a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Attempt06/Variant37dba7b8a056204fddfdafbe52f9dd60e995f53b9cecf84f6edf846c0b194c6d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Attempt06/Variant37dba7b8a056204fddfdafbe52f9dd60e995f53b9cecf84f6edf846c0b194c6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
