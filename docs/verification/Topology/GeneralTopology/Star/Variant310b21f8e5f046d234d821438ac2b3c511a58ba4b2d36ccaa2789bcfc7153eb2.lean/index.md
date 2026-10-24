# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e40cc3dd8981c4f54873218e8d5d0ec6b269354",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e40cc3dd8981c4f54873218e8d5d0ec6b269354`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instStarAddMonoid](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/declarations/inststaraddmonoid--c00a0398b570e828c70de727.md) | 56 | `declaration-track:c00a0398b570e828c70de727cffdd102c3e5d9b37edff5dba7bf38abe9043607` |
| 2 | `theorem` | [coe_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/declarations/coe-star--c339638f638023efe1b9c913.md) | 64 | `result-track:c339638f638023efe1b9c913a00a54102fc0ff83a5792d271d8dd748bec578b1` |
| 3 | `theorem` | [star_apply](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/declarations/star-apply--8ade6eaad3109ed4e20e8d62.md) | 67 | `result-track:8ade6eaad3109ed4e20e8d622042f19742cc1b6e6d7bb6631f98a047f1be4666` |
| 4 | `instance` | [instNormedStarGroup](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/declarations/instnormedstargroup--b3033eb024ddddf9a0558e14.md) | 69 | `declaration-track:b3033eb024ddddf9a0558e1439e858b0f8ac2e982433eed29b169f45e7705f65` |
| 5 | `instance` | [instStarModule](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/declarations/inststarmodule--145611898093445f28263d99.md) | 72 | `declaration-track:145611898093445f28263d99e5710219eaca05e232d55581a1c765cd6dbc9a8a` |
| 6 | `instance` | [instStarRing](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/declarations/inststarring--d390d3df231bf8f78d6ca768.md) | 82 | `declaration-track:d390d3df231bf8f78d6ca7683fb57a87e4c5dfb15b9277e610650b3fe6542f5d` |
| 7 | `instance` | [instCStarRing](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/declarations/instcstarring--ed4d9409ee265e0aea370559.md) | 88 | `declaration-track:ed4d9409ee265e0aea370559e3f7d51d878bef89785ef4f281c07d5d433bce49` |
| 8 | `def` | [toContinuousMapStarₐ](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/declarations/tocontinuousmapstar--664612f3c871b135afcf1b8c.md) | 104 | `declaration-track:664612f3c871b135afcf1b8c12c99109f4955e5d262a81b217a3b2f1e17c11b4` |
| 9 | `theorem` | [coe_toContinuousMapStarₐ](../../../../../mathematics/Topology/GeneralTopology/Star/Variant310b21f8e5f046d234d821438ac2b3c511a58ba4b2d36ccaa2789bcfc7153eb2.lean/declarations/coe-tocontinuousmapstar--91deda397837c60890673066.md) | 108 | `result-track:91deda397837c6089067306685c710145cd3ac6b2b2ddd057b9537dfb02bc0c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
