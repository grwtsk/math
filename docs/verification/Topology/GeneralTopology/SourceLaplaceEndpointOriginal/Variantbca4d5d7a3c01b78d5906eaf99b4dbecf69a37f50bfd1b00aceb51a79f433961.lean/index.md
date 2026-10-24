# Verification target: GRWTSK.Topology.GeneralTopology.SourceLaplaceEndpointOriginal.Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e75447124feead8dc5b7f02252ed8c655686401f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e75447124feead8dc5b7f02252ed8c655686401f`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceLaplaceDetection` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseKernelBoundary` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointPrimitive](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/endpointprimitive--987f47ef08586e8fa719c12f.md) | 32 | `declaration-track:987f47ef08586e8fa719c12feb0dce734af18895a8cf5cb34e7c2997c939395a` |
| 2 | `theorem` | [endpoint_antiderivative](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/endpoint-antiderivative--47b257eb573f3bf881ed7c61.md) | 44 | `result-track:47b257eb573f3bf881ed7c613645bb4877e0fb5c734b76f5874380f31019fa2a` |
| 3 | `theorem` | [bump_laplace_endpoint_formula](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/bump-laplace-endpoint-formula--e10fefa6a8b61bf8974b355a.md) | 81 | `result-track:e10fefa6a8b61bf8974b355ad5039f76c15451d50795be2fbea827727e9dc64a` |
| 4 | `def` | [endpointProfile](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/endpointprofile--5887968be0b3bb12014bf91f.md) | 99 | `declaration-track:5887968be0b3bb12014bf91fc305caee53b2ff265badda88366716044f8a33f4` |
| 5 | `theorem` | [endpoint_profile_continuous](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/endpoint-profile-continuous--5a9aa42c9b25c78e4dd1f0f9.md) | 101 | `result-track:5a9aa42c9b25c78e4dd1f0f9a1cc04636a56402a2d68d77441be4112c78e97a4` |
| 6 | `theorem` | [reciprocal_ray_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/reciprocal-ray-tendsto-zero--946d21311c389a71da1e7496.md) | 106 | `result-track:946d21311c389a71da1e7496500c5ff1986783a258c1fb6642b4b622f2549503` |
| 7 | `theorem` | [negative_ray_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/negative-ray-exp-tendsto-zero--447e04faf1ddff1f0ffdbf3e.md) | 114 | `result-track:447e04faf1ddff1f0ffdbf3ec032cf5c8f5073238dee33fa31ea290790532286` |
| 8 | `theorem` | [profile_endpoint_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/profile-endpoint-tendsto-one--384232f5689c5c03a2e7c9dd.md) | 124 | `result-track:384232f5689c5c03a2e7c9dd50c20753c79e8979d52670dbd168dd4d2e7bb991` |
| 9 | `def` | [bumpEndpointRatio](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/bumpendpointratio--d3712315681f3fc2d3eae92e.md) | 135 | `declaration-track:d3712315681f3fc2d3eae92e9f6faca348407f90aecfb45632c4124569e84502` |
| 10 | `theorem` | [bump_endpoint_ratio_eq_profile](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/bump-endpoint-ratio-eq-profile--863314b4f8416746dcd3ecef.md) | 141 | `result-track:863314b4f8416746dcd3ecefabaa1ca61a564e4013929b95c73811d5e4b63ab3` |
| 11 | `theorem` | [bump_endpoint_ratio_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/bump-endpoint-ratio-tendsto-one--ea5e797eaa3852aed555c255.md) | 156 | `result-track:ea5e797eaa3852aed555c255f80e88183aa1cb89a6d40181b47145e0cbcec689` |
| 12 | `theorem` | [source_normalization_closed_form](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/source-normalization-closed-form--c164702c5f2afe0522a6739a.md) | 168 | `result-track:c164702c5f2afe0522a6739a69b44036ed6256dbe70b79346bf8d02be54949a8` |
| 13 | `theorem` | [source_laplace_scaled_eq_ratio](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/source-laplace-scaled-eq-ratio--6c460cc7c2da035290879682.md) | 179 | `result-track:6c460cc7c2da035290879682c2e03509d43f5597f34c6cd45c9d3f0faba24ede` |
| 14 | `theorem` | [source_laplace_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/source-laplace-scaled-tendsto--18289d1fed357fe67d426ee5.md) | 196 | `result-track:18289d1fed357fe67d426ee588323b04df18ef3dca51f0d92a8bc33219f07fd6` |
| 15 | `theorem` | [source_laplace_norm_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantbca4d5d7a3c01b78d5906eaf99b4dbecf69a37f50bfd1b00aceb51a79f433961.lean/declarations/source-laplace-norm-scaled-tendsto--89637ed7c5b4deebb9383518.md) | 218 | `result-track:89637ed7c5b4deebb938351862fe8b484c6cbb9e30cc61a59919ed6ab2a005ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
