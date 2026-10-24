# Verification target: GRWTSK.Topology.GeneralTopology.Urysohn.Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a5a05820db602585f4c8b483d272230ab02b237",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a5a05820db602585f4c8b483d272230ab02b237`.

Source path: `GRWTSK/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Bounded.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_isInducing_l_infty](../../../../../mathematics/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean/declarations/exists-isinducing-l-infty--e2660215c6c9418d72bbc6e1.md) | 43 | `result-track:e2660215c6c9418d72bbc6e18c8719514bf85e8ad63fc292c2315c854ee96326` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean/declarations/instance--1067b4f3c0891d2fc8af5378.md) | 119 | `declaration-track:1067b4f3c0891d2fc8af5378a49393c12267bda2bbd05f5ea104b8bb3b087a88` |
| 3 | `theorem` | [exists_embedding_l_infty](../../../../../mathematics/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean/declarations/exists-embedding-l-infty--6ed57cfe6f7a3ba389b798ab.md) | 129 | `result-track:6ed57cfe6f7a3ba389b798ab9ae31552f734db4e7a7a60c7a3aa1648197aefbf` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Urysohn/Variante628b7a47c5304a167867eef31d72e90e9d79646a1ab276afc7d9443fb9644fc.lean/declarations/instance--40b7331fa6c8ba229fc7daf4.md) | 135 | `declaration-track:40b7331fa6c8ba229fc7daf4aba040856b024e103399992eb3524b6b69e6e797` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
