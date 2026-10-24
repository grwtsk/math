# Verification target: GRWTSK.Topology.NodalContinuousConsumer.Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db9e3823743b7477851a8d4180a6c30db4032c20",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean/index.md) · [Full source](../../../../mathematics/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db9e3823743b7477851a8d4180a6c30db4032c20`.

Source path: `GRWTSK/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.NodalPanelMinimality` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.LocallyConnected` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Indicator` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [component_atom_norm_le_source](../../../../mathematics/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean/declarations/component-atom-norm-le-source--2ca915d1d224563609c4f3ed.md) | 24 | `result-track:2ca915d1d224563609c4f3ed4bfd93615c676f7a1ff33a472b9fd9bbb0dff8c3` |
| 2 | `theorem` | [component_atom_continuous](../../../../mathematics/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean/declarations/component-atom-continuous--9d0079f3787982a777dedef3.md) | 28 | `result-track:9d0079f3787982a777dedef35685e70fb6f7c745616fc96381675c840a24751f` |
| 3 | `theorem` | [finite_minimal_reconstruction_is_continuous](../../../../mathematics/Topology/NodalContinuousConsumer/Variant2f66ac69dc0fb1b321cdca4687ff5b329a75681af4b07aad562c9dde423f4c16.lean/declarations/finite-minimal-reconstruction-is-continuous--df5d5693812f3c7008a41ddf.md) | 56 | `result-track:df5d5693812f3c7008a41ddfdb7c6559d57e5da5a63884becc7036aa03e033f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
