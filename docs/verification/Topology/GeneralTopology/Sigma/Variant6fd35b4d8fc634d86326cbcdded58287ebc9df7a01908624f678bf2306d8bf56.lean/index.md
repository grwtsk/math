# Verification target: GRWTSK.Topology.GeneralTopology.Sigma.Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a21ebe5f161612f1fb4820367cd5e17a9ae7c50f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a21ebe5f161612f1fb4820367cd5e17a9ae7c50f`.

Source path: `GRWTSK/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Connected` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [embedding_sigmaMk_comp](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean/declarations/embedding-sigmamk-comp--9ee8ea20196ab05017aece9d.md) | 53 | `result-track:9ee8ea20196ab05017aece9dd75afb5b25c6e5edb508ba5ab403035797e62ccb` |
| 2 | `theorem` | [exists_lift_sigma](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean/declarations/exists-lift-sigma--fe9288cdaa269ea3271030c8.md) | 74 | `result-track:fe9288cdaa269ea3271030c87ff8480f056c0ca7d54af560553327a4be014de6` |
| 3 | `def` | [sigmaCodHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Sigma/Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56.lean/declarations/sigmacodhomeomorph--ac6b600d67c1b1ed129178b6.md) | 86 | `declaration-track:ac6b600d67c1b1ed129178b67345ff3aa003f8cba62d909b46c7f5c6394e1473` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
