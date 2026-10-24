# Verification target: GRWTSK.Topology.GeneralTopology.TopologicalSimplex.Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13f1ac00dbe565cc2ac96f45d1ec9615b93cc5f7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13f1ac00dbe565cc2ac96f45d1ec9615b93cc5f7`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplexCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.NNReal` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/declarations/instance--96db53cd10d71deebbab1b8c.md) | 39 | `declaration-track:96db53cd10d71deebbab1b8c7e592ce40f66a56cb6b811fa17881dd16c4aca36` |
| 2 | `def` | [toTopObj](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/declarations/totopobj--fc3e549876b696978b1c91c8.md) | 45 | `declaration-track:fc3e549876b696978b1c91c89ae46763541a25936e7a5490cf350527fedb0ad7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/declarations/instance--3d673fd23689a26e1299fd19.md) | 50 | `declaration-track:3d673fd23689a26e1299fd190046a9470cce20e2cc9c7cce1460190a48d3a567` |
| 4 | `theorem` | [toTopObj.ext](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/declarations/totopobj-ext--a9fdb7c126c48270dcfd8927.md) | 54 | `result-track:a9fdb7c126c48270dcfd8927e1991df16cfa28640d9172825faf65685fcbe4ff` |
| 5 | `def` | [toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/declarations/totopmap--e5d2f924d7a1102f5b7cccbc.md) | 60 | `declaration-track:e5d2f924d7a1102f5b7cccbc28fabe457bcf29526882a8aa87e6a37e59fa4792` |
| 6 | `theorem` | [coe_toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/declarations/coe-totopmap--386fe2bd31f98f25a3ad6f95.md) | 81 | `result-track:386fe2bd31f98f25a3ad6f9519e04679788d70369c26db9a2ee21afac142883b` |
| 7 | `theorem` | [continuous_toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/declarations/continuous-totopmap--a3b2211b9c62ae02e294c3f6.md) | 88 | `result-track:a3b2211b9c62ae02e294c3f62198d30f77af18c8c359c55dd04a3e6abb69d240` |
| 8 | `def` | [toTop](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variant3616f64d0d746562675c36334919db6839e6c2108895e6dc6d3494d6c858e953.lean/declarations/totop--f0f29a2ca7e52bf8bd42dada.md) | 97 | `declaration-track:f0f29a2ca7e52bf8bd42dada16a2b8fd606d9dc4551b1df4f4033432f26830cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
