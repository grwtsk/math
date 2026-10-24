# Verification target: GRWTSK.Topology.PortFiber.Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e51c1b52fede0d883b147ffd196c0efe184a87d8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/PortFiber/Basic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/PortFiber/Basic.lean/index.md) · [Full source](../../../../mathematics/Topology/PortFiber/Basic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e51c1b52fede0d883b147ffd196c0efe184a87d8`.

Source path: `GRWTSK/Topology/PortFiber/Basic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/PortFiber/Basic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PortFiber](../../../../mathematics/Topology/PortFiber/Basic.lean/declarations/portfiber--34703741db926f4ce0bea577.md) | 11 | `declaration-track:34703741db926f4ce0bea577ff51e9ae82c84aca128688d92ef98b136659f19d` |
| 2 | `def` | [ofFunctions](../../../../mathematics/Topology/PortFiber/Basic.lean/declarations/offunctions--de8208310e3205eea51775e9.md) | 25 | `declaration-track:de8208310e3205eea51775e96236319a40505f4c2e436c9414eba362039296aa` |
| 3 | `structure` | [SourceIdentity](../../../../mathematics/Topology/PortFiber/Basic.lean/declarations/sourceidentity--5bfdc8cd8aefbd6eac9f50b7.md) | 40 | `declaration-track:5bfdc8cd8aefbd6eac9f50b7d6a28b2ba0f9721bd1eb75babfd11140534cbef3` |
| 4 | `structure` | [SourceBoundPort](../../../../mathematics/Topology/PortFiber/Basic.lean/declarations/sourceboundport--d58f017ae92655149d31d081.md) | 48 | `declaration-track:d58f017ae92655149d31d081a280c563b4796e747dbf853672beac42af84c38f` |
| 5 | `structure` | [SameSource](../../../../mathematics/Topology/PortFiber/Basic.lean/declarations/samesource--6e06cb07c19c09dd7f71218a.md) | 55 | `declaration-track:6e06cb07c19c09dd7f71218a1c2f4632d8165c22e1f91febd425863b08e88a37` |
| 6 | `def` | [comp](../../../../mathematics/Topology/PortFiber/Basic.lean/declarations/comp--873d9e620386e43fc6a439a8.md) | 64 | `declaration-track:873d9e620386e43fc6a439a8f6534540274ef09a3e5662682762e546445a43b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
