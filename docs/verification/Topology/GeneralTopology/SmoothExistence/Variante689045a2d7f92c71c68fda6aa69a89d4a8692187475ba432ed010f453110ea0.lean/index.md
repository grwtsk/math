# Verification target: GRWTSK.Topology.GeneralTopology.SmoothExistence.Variante689045a2d7f92c71c68fda6aa69a89d4a8692187475ba432ed010f453110ea0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b33edf879b1117ae0912512529051f0ba77b7d9e",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SmoothExistence/Variante689045a2d7f92c71c68fda6aa69a89d4a8692187475ba432ed010f453110ea0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SmoothExistence/Variante689045a2d7f92c71c68fda6aa69a89d4a8692187475ba432ed010f453110ea0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SmoothExistence/Variante689045a2d7f92c71c68fda6aa69a89d4a8692187475ba432ed010f453110ea0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b33edf879b1117ae0912512529051f0ba77b7d9e`.

Source path: `GRWTSK/Topology/GeneralTopology/SmoothExistence/Variante689045a2d7f92c71c68fda6aa69a89d4a8692187475ba432ed010f453110ea0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SmoothExistence/Variante689045a2d7f92c71c68fda6aa69a89d4a8692187475ba432ed010f453110ea0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lemma` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.PartitionOfUnity` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Bound` — import line 4; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Mathlib.Algebra.Notation.Support` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [smooth_urysohn_support_Ioo](../../../../../mathematics/Topology/GeneralTopology/SmoothExistence/Variante689045a2d7f92c71c68fda6aa69a89d4a8692187475ba432ed010f453110ea0.lean/declarations/smooth-urysohn-support-ioo--02919fbcd96148c353d6763c.md) | 12 | `result-track:02919fbcd96148c353d6763c21ee4b70f03e5689acfd3663ea23d2efd88b853b` |
| 2 | `lemma` | [SmoothExistence](../../../../../mathematics/Topology/GeneralTopology/SmoothExistence/Variante689045a2d7f92c71c68fda6aa69a89d4a8692187475ba432ed010f453110ea0.lean/declarations/smoothexistence--aab0887256ed7c228873baf1.md) | 61 | `result-track:aab0887256ed7c228873baf1b1564380a65933be2c3398456a77877e2dd2bcd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
