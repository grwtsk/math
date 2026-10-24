# Verification target: GRWTSK.Topology.Homotopy.FiniteConcatenation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2ee08735394e2339024cdb08817b8bcb3ef3b96",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Homotopy/FiniteConcatenation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/index.md) · [Full source](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2ee08735394e2339024cdb08817b8bcb3ef3b96`.

Source path: `GRWTSK/Topology/Homotopy/FiniteConcatenation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Homotopy/FiniteConcatenation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homotopy.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftTime](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/lefttime--cf50ec576701d3255c5869a2.md) | 30 | `declaration-track:cf50ec576701d3255c5869a2e833bb4dcfce256ef3ddd041936b4c99d3864ac4` |
| 2 | `def` | [rightTime](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/righttime--c60aed2d82d8e5f09c2acc9b.md) | 33 | `declaration-track:c60aed2d82d8e5f09c2acc9b5e03d7d1e3b9e883ce3f55f499fc607beac5c23b` |
| 3 | `theorem` | [trans_left](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/trans-left--edaa727dbba140534bdefe79.md) | 36 | `result-track:edaa727dbba140534bdefe7956795cf46b55aa1531285c796535bb7953a3b3d0` |
| 4 | `theorem` | [trans_right](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/trans-right--613c4d85ed0c3959cd9f2a00.md) | 49 | `result-track:613c4d85ed0c3959cd9f2a004f52b1978e83f10374367668709399cc3d0b8e98` |
| 5 | `def` | [concat](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/concat--de8aaafaae0a895f63db489c.md) | 67 | `declaration-track:de8aaafaae0a895f63db489c41199614695bc93047cec764aa39c2ff4eca2596` |
| 6 | `theorem` | [concat_start](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/concat-start--0ade2c0688fa3ba902d2fa33.md) | 74 | `result-track:0ade2c0688fa3ba902d2fa33633c25d616990e246a4f7fa4c4595f769a7ab903` |
| 7 | `theorem` | [concat_finish](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/concat-finish--9e0f54449de89a8ad9a84ebb.md) | 78 | `result-track:9e0f54449de89a8ad9a84ebb12cfbf4fa700595b8265e141718bd25ce8e54c8d` |
| 8 | `theorem` | [value_cases](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/value-cases--730dc479c12598641fb86518.md) | 83 | `result-track:730dc479c12598641fb86518cbfaa07b165fb61e0b6226b75f053462301eb657` |
| 9 | `theorem` | [hits_cell](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/hits-cell--c0fc7750ef02af1c9fc487fc.md) | 99 | `result-track:c0fc7750ef02af1c9fc487fc28d61f0e2ba8bda6c41d4d8783cbb80c3ab3d34f` |
| 10 | `theorem` | [range_iff](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/range-iff--9acf95e3d8ac70f9c03b60bc.md) | 117 | `result-track:9acf95e3d8ac70f9c03b60bc3c522a189191ed474e77c6e898de9a35ca035c29` |
| 11 | `theorem` | [natural](../../../../mathematics/Topology/Homotopy/FiniteConcatenation.lean/declarations/natural--53c020430b15fcb40b7328b3.md) | 134 | `result-track:53c020430b15fcb40b7328b3648ab0e9d314ef0ce5534be9479822736a68ece0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
