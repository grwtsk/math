# Verification target: GRWTSK.Topology.MetricTopology.RewriteSearch.Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b255270400b0cb3c7614bff9b32f9bdbd622763b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b255270400b0cb3c7614bff9b32f9bdbd622763b`.

Source path: `GRWTSK/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Rewrites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.EditDistance.Estimator` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MLList.BestFirst` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 10; external provider; requires a separately pinned dependency.
- `Batteries.Data.MLList.Heartbeats` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/initialize--0b1c23dc82334ef24600a85a.md) | 54 | `declaration-track:0b1c23dc82334ef24600a85ac18cb2092ef17060874e6e76f04cc8a1a1b77d17` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/initialize--a27354cbaf9ef2591e65537a.md) | 55 | `declaration-track:a27354cbaf9ef2591e65537afaac31ff3d3e33dd7a03022f53c920772541fea3` |
| 3 | `def` | [splitDelimiters](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/splitdelimiters--b8e03524803a45125e39b83e.md) | 59 | `declaration-track:b8e03524803a45125e39b83eb6d1e7bbceb562f52a1e6832b42908a43e09cc52` |
| 4 | `def` | [tokenize](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/tokenize--fa099de6e557d896ba3ac023.md) | 86 | `declaration-track:fa099de6e557d896ba3ac0230127d8e32bc2f32412b323b1c3a8c7e95841984e` |
| 5 | `structure` | [SearchNode](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/searchnode--f82a883344bda86d5f84a9f8.md) | 93 | `declaration-track:f82a883344bda86d5f84a9f8912bfde8e7d5f3b4fe466681cd2238fbf46c9e33` |
| 6 | `def` | [editCost](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/editcost--6ea0b368a8080d1b2ecd07ad.md) | 125 | `declaration-track:6ea0b368a8080d1b2ecd07ad238900fea2bf1d128dcab28ca66d6eff68b3b802` |
| 7 | `def` | [compute_rfl?](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/compute-rfl--c8e43d6d3ddaf203dfc6c84c.md) | 128 | `declaration-track:c8e43d6d3ddaf203dfc6c84cf871edfe2b3e34316b2b57b54e9cdf42611bcf49` |
| 8 | `def` | [compute_dist?](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/compute-dist--7ac639514b5c7b52e56a2544.md) | 142 | `declaration-track:7ac639514b5c7b52e56a25446e267e30a74a234d1770bc20ba7a868833853c35` |
| 9 | `def` | [toString](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/tostring--17d13a6585f4278bd7bb4e02.md) | 149 | `declaration-track:17d13a6585f4278bd7bb4e0206900f3de0424324d2a0d3126cd8aca68c7e2f5e` |
| 10 | `def` | [mk](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/mk--c545e1360f9e6ef43599fcd0.md) | 162 | `declaration-track:c545e1360f9e6ef43599fcd0fa3e467253b84935446f866e074e0342c2b3ea03` |
| 11 | `def` | [init](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/init--68d39832b6977aed6ef0e3a5.md) | 181 | `declaration-track:68d39832b6977aed6ef0e3a507c903708e775e82a89515879438a86ca7285b59` |
| 12 | `def` | [push](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/push--8deca9d4daff699f6ec47092.md) | 183 | `declaration-track:8deca9d4daff699f6ec47092c99e5a434af3ca26434513a5c74b135d9ac3bf2a` |
| 13 | `def` | [lastIdx](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/lastidx--1e67e114b1f2a3f2d24f2c52.md) | 188 | `declaration-track:1e67e114b1f2a3f2d24f2c520e9cbb7630fb5a5a8237c93bb25ff6f92f334ba2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/instance--8ebadeeb9921983a62dc2d1f.md) | 193 | `declaration-track:8ebadeeb9921983a62dc2d1f0cc5823912e8f8661977c181d6e9182384e9bcf5` |
| 15 | `def` | [penalty](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/penalty--45e134048844c015925df5c2.md) | 225 | `declaration-track:45e134048844c015925df5c20c50e2da3d68dcaa659a319ba35cfc57cd6e6584` |
| 16 | `abbrev` | [prio](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/prio--fd4e37d4d909515fe6b7a028.md) | 228 | `declaration-track:fd4e37d4d909515fe6b7a02860d8734f90ceba0db1c9777855676591e182afe9` |
| 17 | `abbrev` | [estimator](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/estimator--ac65c3a1034cf5b69dd268a9.md) | 231 | `declaration-track:ac65c3a1034cf5b69dd268a9aa786879c569da769b8f9d3a5ba9e4060597865a` |
| 18 | `def` | [rewrite](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/rewrite--a59818d85d17cad9f5ed6848.md) | 235 | `declaration-track:a59818d85d17cad9f5ed68488ba0be977a45ce4e606d2daa2c96a7189be4f972` |
| 19 | `def` | [rewrites](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/rewrites--8ae87d1677aaee6a6325bcbb.md) | 247 | `declaration-track:8ae87d1677aaee6a6325bcbb08c165b50d32c09d7c429895dbcd4f9597509d0a` |
| 20 | `def` | [search](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/search--87d53fe8a3f38cb2250bf5be.md) | 263 | `declaration-track:87d53fe8a3f38cb2250bf5be4b0edc8cf22cfeba1fc33792cca71dc7a2dfadad` |
| 21 | `syntax` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/syntax--e454eae4b3c46047f5bfba79.md) | 305 | `declaration-track:e454eae4b3c46047f5bfba79bb98f1dd1717a913aa7f10504d21aa821eeac979` |
| 22 | `elab_rules` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant40442b0d3c3c8796030f42093b181879efa5122d825425de33a562b7f7ac2735.lean/declarations/elab-rules--2bffafb31504ac06ded48871.md) | 309 | `declaration-track:2bffafb31504ac06ded48871a513df6984a07d2d4c953cf99ffbfec365cc83f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
