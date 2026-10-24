# Verification target: GRWTSK.Topology.MetricTopology.Kuratowski.Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0fa5566df6e33afab5d1d6ab6d4f022159fd176",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0fa5566df6e33afab5d1d6ab6d4f022159fd176`.

Source path: `GRWTSK/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Lp.lpSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [embeddingOfSubset](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/declarations/embeddingofsubset--0fc633d8ee99ade11db238c0.md) | 36 | `declaration-track:0fc633d8ee99ade11db238c016a4ba9f05315b14a2197cb6bc4a0272a293352a` |
| 2 | `theorem` | [embeddingOfSubset_coe](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/declarations/embeddingofsubset-coe--fced09f68af487a0b9a75ad9.md) | 43 | `result-track:fced09f68af487a0b9a75ad97569f4d6fb3bbb17ac0336b26253c49797fab77f` |
| 3 | `theorem` | [embeddingOfSubset_dist_le](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/declarations/embeddingofsubset-dist-le--8b7b7cecfa1eb40543f2b597.md) | 47 | `result-track:8b7b7cecfa1eb40543f2b597142815d01c68b1247a746b174d54b69a6f848ca0` |
| 4 | `theorem` | [embeddingOfSubset_isometry](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/declarations/embeddingofsubset-isometry--7aae45d3f0678710cf1248a2.md) | 55 | `result-track:7aae45d3f0678710cf1248a242b5e1b7d62afa45a4654486619a1365440aa517` |
| 5 | `theorem` | [exists_isometric_embedding](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/declarations/exists-isometric-embedding--5c67ad30effad62e2436e95d.md) | 81 | `result-track:5c67ad30effad62e2436e95da4a3bc23fa894933755d71379d7b3022314d1914` |
| 6 | `def` | [kuratowskiEmbedding](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/declarations/kuratowskiembedding--b2d3d4e8e5b01c68dfc2a728.md) | 100 | `declaration-track:b2d3d4e8e5b01c68dfc2a72824a90bb4ab8f0e1f288ff426a649157746d9748e` |
| 7 | `theorem` | [kuratowskiEmbedding.isometry](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/declarations/kuratowskiembedding-isometry--4ea39b626d85e1f8c672856f.md) | 106 | `result-track:4ea39b626d85e1f8c672856f4684135c22da877bbb6f69c5ae005d258433fa0b` |
| 8 | `def` | [NonemptyCompacts.kuratowskiEmbedding](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/declarations/nonemptycompacts-kuratowskiembedding--da4430c8937989079b9fd6ad.md) | 111 | `declaration-track:da4430c8937989079b9fd6adab617b7bdf77c024dc034ae6bd689ddb4a80c654` |
| 9 | `theorem` | [LipschitzOnWith.extend_lp_infty](../../../../../mathematics/Topology/MetricTopology/Kuratowski/Variant22513b94a14216464cd59e6da2e40a2365466fce1883409cdff0da2ec944cc5a.lean/declarations/lipschitzonwith-extend-lp-infty--2f36a2c50f1742bf61855a65.md) | 126 | `result-track:2f36a2c50f1742bf61855a6543521109154bc3873cc062541025a52eb9ee58cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
