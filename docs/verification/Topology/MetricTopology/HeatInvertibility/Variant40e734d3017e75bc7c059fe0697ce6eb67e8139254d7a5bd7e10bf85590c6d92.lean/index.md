# Verification target: GRWTSK.Topology.MetricTopology.HeatInvertibility.Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdef392d3f7f978c7c0641d8d55cfe5f4d8a6ac6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdef392d3f7f978c7c0641d8d55cfe5f4d8a6ac6`.

Source path: `GRWTSK/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Spectral.Heat` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Spectral.Residual` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.Theorem.Spectral.HeatResidual` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HasTwoSidedInverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/declarations/hastwosidedinverse--9c3ceb60d7073c5c73114a09.md) | 30 | `declaration-track:9c3ceb60d7073c5c73114a093bbf9caa3738765357ddf55ec204f7bb466ac8a7` |
| 2 | `structure` | [StableInverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/declarations/stableinverse--176cc9ac4b16ffd24cb657bc.md) | 37 | `declaration-track:176cc9ac4b16ffd24cb657bc405bf6738948bc7405ed4f1344f96a53669a698e` |
| 3 | `structure` | [LiftedHeatInverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/declarations/liftedheatinverse--0ec10647fbd51a9452f32f34.md) | 45 | `declaration-track:0ec10647fbd51a9452f32f349f55f6146547a9de8ed12a6cc295f2e1c44be529` |
| 4 | `def` | [spectralLiftedHeatInverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/declarations/spectralliftedheatinverse--891eb4a239f8808aaebbcc16.md) | 53 | `declaration-track:891eb4a239f8808aaebbcc16a015fd942731fef081fa89e456ab68536fc51ae7` |
| 5 | `theorem` | [lifted_heat_reconstructs](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/declarations/lifted-heat-reconstructs--fe896619159b04b144ec4455.md) | 67 | `result-track:fe896619159b04b144ec445526abda060a048c45b62922a9bf31f214859319c0` |
| 6 | `theorem` | [ordinary_heat_left_inverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/declarations/ordinary-heat-left-inverse--5caabdb91b435400beace0d0.md) | 75 | `result-track:5caabdb91b435400beace0d0ae1f607e41cb045d72a66d2d59b416ddb93d86a2` |
| 7 | `theorem` | [ordinary_heat_right_inverse](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/declarations/ordinary-heat-right-inverse--d39b173f6fbdf27aaef580e3.md) | 83 | `result-track:d39b173f6fbdf27aaef580e3eb132e55414fd248adcc60a59e11ee2f492586a5` |
| 8 | `theorem` | [stable_inverse_has_lipschitz_bound](../../../../../mathematics/Topology/MetricTopology/HeatInvertibility/Variant40e734d3017e75bc7c059fe0697ce6eb67e8139254d7a5bd7e10bf85590c6d92.lean/declarations/stable-inverse-has-lipschitz-bound--e72e3c9e6e3a4d49ddb76eb8.md) | 91 | `result-track:e72e3c9e6e3a4d49ddb76eb8811255afd8d4e1a56dbf11b1a8c3f7e8db7ac228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
