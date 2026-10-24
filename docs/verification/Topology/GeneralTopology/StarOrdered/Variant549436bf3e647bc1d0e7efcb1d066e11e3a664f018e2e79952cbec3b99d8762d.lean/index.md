# Verification target: GRWTSK.Topology.GeneralTopology.StarOrdered.Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd9208dc2721913f04bd3568fd33c57b86ad0cf4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd9208dc2721913f04bd3568fd33c57b86ad0cf4`.

Source path: `GRWTSK/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Star.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousMapZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ordered` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousSqrt](../../../../../mathematics/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean/declarations/continuoussqrt--213f55671e098e1cfeb32486.md) | 48 | `declaration-track:213f55671e098e1cfeb32486052abf2d86754f7b442ebf5c22a7a29de21f171b` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean/declarations/instance--1bd4bbfa4bd3e65ade2de783.md) | 59 | `declaration-track:1bd4bbfa4bd3e65ade2de7835a86b1f3bcb6f7075910275e4e899a0511d3bd7c` |
| 3 | `instance` | [instStarOrderedRing](../../../../../mathematics/Topology/GeneralTopology/StarOrdered/Variant549436bf3e647bc1d0e7efcb1d066e11e3a664f018e2e79952cbec3b99d8762d.lean/declarations/inststarorderedring--b05934a8e0cd7883a3f3e4d7.md) | 81 | `declaration-track:b05934a8e0cd7883a3f3e4d7ef9333be44b62b33fe21d76bd431c65074bf3400` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
