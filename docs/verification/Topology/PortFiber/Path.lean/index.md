# Verification target: GRWTSK.Topology.PortFiber.Path

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b8f54730f5255f9330ab502b5bf24b540b785c45",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/PortFiber/Path.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/PortFiber/Path.lean/index.md) · [Full source](../../../../mathematics/Topology/PortFiber/Path.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b8f54730f5255f9330ab502b5bf24b540b785c45`.

Source path: `GRWTSK/Topology/PortFiber/Path.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/PortFiber/Path.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.PortFiber.Basic`](../../../../mathematics/Topology/PortFiber/Basic.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComposableProperty](../../../../mathematics/Topology/PortFiber/Path.lean/declarations/composableproperty--8b25ba1a0f3c40f3346b63e9.md) | 8 | `declaration-track:8b25ba1a0f3c40f3346b63e95ce22c1a9a51e75a15893726bb49255b830dca12` |
| 2 | `inductive` | [CertifiedPath](../../../../mathematics/Topology/PortFiber/Path.lean/declarations/certifiedpath--2564045855e181473fabbc0f.md) | 15 | `declaration-track:2564045855e181473fabbc0f9bfec77dc79ed6cffe7628cc8d7cbb2ac8d59809` |
| 3 | `def` | [composite](../../../../mathematics/Topology/PortFiber/Path.lean/declarations/composite--214e296d9afb5d3dd07d16ef.md) | 27 | `declaration-track:214e296d9afb5d3dd07d16ef7f86b5e2c2216b13cc104f580816da8af41ffa94` |
| 4 | `def` | [eval](../../../../mathematics/Topology/PortFiber/Path.lean/declarations/eval--c894771e0e2c2a36542e2fd3.md) | 32 | `declaration-track:c894771e0e2c2a36542e2fd33a97af39def369452eccb037f18fc13de9aa402d` |
| 5 | `theorem` | [certified](../../../../mathematics/Topology/PortFiber/Path.lean/declarations/certified--9157f7092b10813679d83161.md) | 37 | `result-track:9157f7092b10813679d83161f806de705e6f75fd1f6220fa3b6752632403c2d8` |
| 6 | `theorem` | [map_composite](../../../../mathematics/Topology/PortFiber/Path.lean/declarations/map-composite--cb42cc8c093d6d638b49e048.md) | 43 | `result-track:cb42cc8c093d6d638b49e0484a6d4dca6b78f78d11144d83e18782aac6e704d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
