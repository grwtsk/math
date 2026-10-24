# Verification target: GRWTSK.Topology.GeneralTopology.SourceLaplaceEndpointOriginal.Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6508f1bd0e449e7df47fa5d931a47843f96b3441",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6508f1bd0e449e7df47fa5d931a47843f96b3441`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceLaplaceDetection` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseKernelBoundary` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointPrimitive](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/endpointprimitive--cfc90f108017328576e4f3a1.md) | 24 | `declaration-track:cfc90f108017328576e4f3a10877a2d269a35a32013578b116d1c45aea2e78e9` |
| 2 | `theorem` | [endpoint_antiderivative](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/endpoint-antiderivative--e2cfb919312cc8a040567de9.md) | 36 | `result-track:e2cfb919312cc8a040567de93f6bceaecd57050a2b325ad27e2ff8a920ea8ab4` |
| 3 | `theorem` | [bump_laplace_endpoint_formula](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/bump-laplace-endpoint-formula--80cfc3d287e5e14d3ce58a11.md) | 73 | `result-track:80cfc3d287e5e14d3ce58a1138e4de9467ce18d9a340ede7c7869bad639cac4c` |
| 4 | `def` | [endpointProfile](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/endpointprofile--8ff7636ea5a5c0760e11be8e.md) | 91 | `declaration-track:8ff7636ea5a5c0760e11be8e227e836bbc6c4c100b723750c87c4eea1da5ea4e` |
| 5 | `theorem` | [endpoint_profile_continuous](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/endpoint-profile-continuous--c6eac2f2f3ec3a41631d57c7.md) | 93 | `result-track:c6eac2f2f3ec3a41631d57c7addeef11357c826ad3d60e98ce73f2ce8e2c1ebd` |
| 6 | `theorem` | [reciprocal_ray_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/reciprocal-ray-tendsto-zero--d164f4bc5667b140a067a546.md) | 98 | `result-track:d164f4bc5667b140a067a546721c81180793bf4b7aa42a192df43a8feeaf6997` |
| 7 | `theorem` | [negative_ray_exp_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/negative-ray-exp-tendsto-zero--9ce9a2c1cec9e0475c788b7f.md) | 106 | `result-track:9ce9a2c1cec9e0475c788b7f55a032fb887f273ae40d41789f7bec96b4f4ba08` |
| 8 | `theorem` | [profile_endpoint_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/profile-endpoint-tendsto-one--7d830a0cf83048e5c8ed767b.md) | 116 | `result-track:7d830a0cf83048e5c8ed767bcb3d008c0b471bd142617c46c275591a685690ca` |
| 9 | `def` | [bumpEndpointRatio](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/bumpendpointratio--62a449914775d42105b10c3c.md) | 127 | `declaration-track:62a449914775d42105b10c3ce1d5ed2ddc1a9c4abf8544d6bcc663041c611e2e` |
| 10 | `theorem` | [bump_endpoint_ratio_eq_profile](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/bump-endpoint-ratio-eq-profile--37d9f47a2fb22fd1fbae49d7.md) | 133 | `result-track:37d9f47a2fb22fd1fbae49d75def51a99515451197548fa7a7ec2cb41b755ebf` |
| 11 | `theorem` | [bump_endpoint_ratio_tendsto_one](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/bump-endpoint-ratio-tendsto-one--ac6ee11d2905151fdc55b396.md) | 148 | `result-track:ac6ee11d2905151fdc55b3961e586cc1d1276b41d383a3cd12a06b293b69f1ac` |
| 12 | `theorem` | [source_normalization_closed_form](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/source-normalization-closed-form--244027532914ae8c56c95e94.md) | 160 | `result-track:244027532914ae8c56c95e9431c9f2267b77208361067dfdc4c63e6909eff673` |
| 13 | `theorem` | [source_laplace_scaled_eq_ratio](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/source-laplace-scaled-eq-ratio--50b018a60f448d02a9ee30b3.md) | 171 | `result-track:50b018a60f448d02a9ee30b3cf516971011c7c48195d0ec75e5d5ff1eb0c4544` |
| 14 | `theorem` | [source_laplace_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/source-laplace-scaled-tendsto--2f5d9c291d4f703d6694f152.md) | 188 | `result-track:2f5d9c291d4f703d6694f152b4a440dd85d700f56bea1703552b616e189f1821` |
| 15 | `theorem` | [source_laplace_norm_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/SourceLaplaceEndpointOriginal/Variantdc5063024dd675d3a25ae70d7ea4b5a31bdfcbbd7f890d503f15fc2018213449.lean/declarations/source-laplace-norm-scaled-tendsto--c55802fc292b051b3f0fe8bc.md) | 210 | `result-track:c55802fc292b051b3f0fe8bc786af7c95ebdc886e19996b751faeaebc3ea7417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
