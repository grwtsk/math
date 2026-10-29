# Verification target: Attempt06 Inverse Power Bound Sharp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "886353b181356de812e4e22e5af4b925ad0f49a3",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt06/Variantc643ca409182d4d31428532286c0086aff41c661f339807d8c6e598dde4c8fc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/index.md) · [Full source](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `886353b181356de812e4e22e5af4b925ad0f49a3`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt06/Variantc643ca409182d4d31428532286c0086aff41c661f339807d8c6e598dde4c8fc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt06/Variantc643ca409182d4d31428532286c0086aff41c661f339807d8c6e598dde4c8fc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryRate` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_power_bound_sharp](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/inverse-power-bound-sharp.md) | 16 | `result-track:ec7d88b9a7d67b1720bcc106a6e29d65f014edfb4257f3fb50081c3301785ce0` |
| 2 | `theorem` | [positiveEndpoint_error_sharp](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/positiveendpoint-error-sharp.md) | 25 | `result-track:2e7ad05ea42af190d5c2fa646b98007d4d5a8c6f7b0117958dd3dd36968d0564` |
| 3 | `theorem` | [reflectedEndpoint_bound_sharp](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/reflectedendpoint-bound-sharp.md) | 57 | `result-track:160e708ede9bde76c4da9564be285b25cf919eff6d9993bbc71ed3c71285e907` |
| 4 | `theorem` | [negative_endpoint_envelope](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/negative-endpoint-envelope.md) | 90 | `result-track:a5a6ae8ef993d9c0825ddbac68477afc13b0c217769cbcfff529b79083c93ba8` |
| 5 | `theorem` | [actual_normalization_deficit_544](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/actual-normalization-deficit-544.md) | 101 | `result-track:0703952ee1013479a9404171f04e9b0d02c89980d0796e25e76faa43a860b2b7` |
| 6 | `def` | [sharpError](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/sharperror.md) | 107 | `declaration-track:ecfaaac2da581e653f4138aad803113c6f7175d4dc66ef36dee9c87b42bc4cf4` |
| 7 | `theorem` | [actual_source_ratio_sharp](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/actual-source-ratio-sharp.md) | 110 | `result-track:188cf9096bffa7cfff2a6b1e407f5b5501da4bbb739266bad7dd4bb341034fd5` |
| 8 | `theorem` | [sharpError_nonneg](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/sharperror-nonneg.md) | 153 | `result-track:bbbe5ab3db3a651344346f37b4b70b48bca2b9d46ab49216ce74b9d2d28e7601` |
| 9 | `theorem` | [errorPolynomial_path_tendsto](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/errorpolynomial-path-tendsto.md) | 161 | `result-track:7ba013b4bfef67ba5a0720337dd210a2fe285fc347a04f1ecffd34553203b397` |
| 10 | `theorem` | [negative_endpoint_path_tendsto](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/negative-endpoint-path-tendsto.md) | 174 | `result-track:4a78864a55566532c3b40efa5f5fceae71cce744777dc729ac2d9f14e2c252d5` |
| 11 | `theorem` | [sharpError_path_tendsto](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/sharperror-path-tendsto.md) | 185 | `result-track:e9b21084171c00508f768fe02d7f4650002df7aa2e05eb3a9615d6ab4f90e338` |
| 12 | `theorem` | [actual_source_ratio_path_tendsto](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/actual-source-ratio-path-tendsto.md) | 198 | `result-track:a20ecda322a5dd24f1c03d11d0ef511e1986183dfd28501052ddc15829c524be` |
| 13 | `theorem` | [boundary_ratio_exact](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/boundary-ratio-exact.md) | 218 | `result-track:4b2070e45499e7e910cc25c01eb03069cff4414ecf49e6e7cb38377bddd1bdb2` |
| 14 | `theorem` | [actual_boundary_ratio_path_tendsto](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/actual-boundary-ratio-path-tendsto.md) | 227 | `result-track:95964237a574130287c5c24ba58a2af95dfc85864e9cc7e24eb95c49b4afa19e` |
| 15 | `def` | [leadingEnvelope](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/leadingenvelope.md) | 252 | `declaration-track:c15c7070c4883c9f93f49f0ab00e575acb2d1fb51dd11c2bc652e041d0dc0a25` |
| 16 | `theorem` | [leadingCoefficient_half_plane_bound](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/leadingcoefficient-half-plane-bound.md) | 255 | `result-track:5cec4d93b9f3a90044f34e88ebc0d0af3b5d854ee85d56d162fc34f4c267ee16` |
| 17 | `theorem` | [half_plane_absolute_amplitude_rate](../../../../GeneralTopology/Attempt06InversePowerBoundSharp.lean/declarations/half-plane-absolute-amplitude-rate.md) | 277 | `result-track:5dd52d0ae0a99c44d2a598cbbd80d2b96d9b863f713dd3ef28db1521de99eada` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66cb01e3cd042027b333a9fb2f79f8c790d16685ceaa0f6b1e994f9aec92a3fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Attempt06/Variantc643ca409182d4d31428532286c0086aff41c661f339807d8c6e598dde4c8fc1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Attempt06/Variantc643ca409182d4d31428532286c0086aff41c661f339807d8c6e598dde4c8fc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
