# Verification target: GRWTSK.Topology.MetricTopology.SimpleFuncDense.Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6d89689f908d86b05fc4e444cfe9fc2173ce05f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6d89689f908d86b05fc4e444cfe9fc2173ce05f`.

Source path: `GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFunc` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nearestPtInd](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/nearestptind--2144102abe6d672e5dc31972.md) | 67 | `declaration-track:2144102abe6d672e5dc31972f7fe9aecf2b4f6252d29aa1009c42dd1edfda61d` |
| 2 | `def` | [nearestPt](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/nearestpt--3e5a035048c87f98571a3fd9.md) | 80 | `declaration-track:3e5a035048c87f98571a3fd918dab0461493646993858d4042eb99573f114632` |
| 3 | `theorem` | [nearestPtInd_zero](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/nearestptind-zero--817feea627c42ead9d6eda95.md) | 85 | `result-track:817feea627c42ead9d6eda95426dec10ecbd27289fd6326b84e9467bbcf43570` |
| 4 | `theorem` | [nearestPt_zero](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/nearestpt-zero--f947a0ae3c41f35ebe5b9da9.md) | 90 | `result-track:f947a0ae3c41f35ebe5b9da931b935e4c33de3dd1b15b78b33a64e75b8744125` |
| 5 | `theorem` | [nearestPtInd_succ](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/nearestptind-succ--bf8c0c0cbeb4f9594abf0f33.md) | 94 | `result-track:bf8c0c0cbeb4f9594abf0f331514ec4fb126c62543abc02f2b24451c98394e15` |
| 6 | `theorem` | [nearestPtInd_le](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/nearestptind-le--701ef581448ac7919588e01d.md) | 102 | `result-track:701ef581448ac7919588e01d6142a198bd39ffb450eed1d0520243f02c32dd4c` |
| 7 | `theorem` | [edist_nearestPt_le](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/edist-nearestpt-le--0e70ca4209c075c874bd9e59.md) | 109 | `result-track:0e70ca4209c075c874bd9e59be5db5c24e1d6dbf67f7d55d4aab631e5b6ecff8` |
| 8 | `theorem` | [tendsto_nearestPt](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/tendsto-nearestpt--a944d592d2511cab108c00af.md) | 123 | `result-track:a944d592d2511cab108c00aff990ca6e61a9482ed8138da7a0a28e78d8b9a6c4` |
| 9 | `def` | [approxOn](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/approxon--f7d21c1b39d339b7228d1b7b.md) | 135 | `declaration-track:f7d21c1b39d339b7228d1b7b53236e787c08d660f6f569f5ef0a0e3a8b35c34d` |
| 10 | `theorem` | [approxOn_zero](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/approxon-zero--06d77cc4f31091396e337251.md) | 142 | `result-track:06d77cc4f31091396e337251ddd3b95f08c494b6354835b170ee5bded4acec61` |
| 11 | `theorem` | [approxOn_mem](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/approxon-mem--973fe798db678e8546f5175b.md) | 147 | `result-track:973fe798db678e8546f5175bfcc07704748aeca5d298618209cdf5943c8ca40f` |
| 12 | `theorem` | [approxOn_comp](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/approxon-comp--bbe7cd63a601f802506a6d93.md) | 156 | `result-track:bbe7cd63a601f802506a6d936bc1d1191861a137881a068b19c0eaa530458c4a` |
| 13 | `theorem` | [tendsto_approxOn](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/tendsto-approxon--19310da13953a99343dda403.md) | 162 | `result-track:19310da13953a99343dda4038cbfd8f2f74a6edc0f91d95b5816c98dbc32831b` |
| 14 | `theorem` | [edist_approxOn_mono](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/edist-approxon-mono--15a0415ce63247538e194293.md) | 175 | `result-track:15a0415ce63247538e194293d98128a39ce24813dc3909311784a14925a86554` |
| 15 | `theorem` | [edist_approxOn_le](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/edist-approxon-le--b9e3fa42ad4f0700e2b2c34d.md) | 182 | `result-track:b9e3fa42ad4f0700e2b2c34d72bd400c6427aa067c3729155d75e46142b7508c` |
| 16 | `theorem` | [edist_approxOn_y0_le](../../../../../mathematics/Topology/MetricTopology/SimpleFuncDense/Variantb09f7ef27316d9535306d86b25ed537fef6a071c0a36e89245a1be9fd4a45ff4.lean/declarations/edist-approxon-y0-le--b2fb32beb7226b7059b7a22c.md) | 187 | `result-track:b2fb32beb7226b7059b7a22c1c22dc8c20150862ce8528477da3f9433a70b3d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
