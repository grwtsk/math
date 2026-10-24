# Verification target: GRWTSK.Topology.MetricTopology.RewriteSearch.Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b82f207e7111d1043404195a3fea09cd64293172",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b82f207e7111d1043404195a3fea09cd64293172`.

Source path: `GRWTSK/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Rewrites` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.EditDistance.Estimator` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MLList.BestFirst` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 15; external provider; requires a separately pinned dependency.
- `Batteries.Data.MLList.Heartbeats` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/initialize--e9b060f26cf392518320a2fb.md) | 62 | `declaration-track:e9b060f26cf392518320a2fbbf5b2a03b0cca20e184b61209f1639785e3966c5` |
| 2 | `initialize` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/initialize--b48ee5a645995857a1762df6.md) | 63 | `declaration-track:b48ee5a645995857a1762df6a5583b3a433a7887e28fbff3f1306a86d4228d31` |
| 3 | `def` | [splitDelimiters](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/splitdelimiters--c03134460c4f27cd427b4a56.md) | 67 | `declaration-track:c03134460c4f27cd427b4a563210fc273efca8d5c3dda211e9dab096248061f0` |
| 4 | `def` | [tokenize](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/tokenize--e0f7ab4565481be1d67d35a2.md) | 94 | `declaration-track:e0f7ab4565481be1d67d35a22be7ad50bac93aa85aaf5f29be82c8b02fdbf016` |
| 5 | `structure` | [SearchNode](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/searchnode--affb0eeeab72d60b8947326e.md) | 101 | `declaration-track:affb0eeeab72d60b8947326e9082915186446a3ab5da88b6f8eefcdb4d79c273` |
| 6 | `def` | [editCost](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/editcost--4dfcacaf0acf1fa037bee8bb.md) | 133 | `declaration-track:4dfcacaf0acf1fa037bee8bb265945e27665f6df9252e57d6e0ba8b93e0851d8` |
| 7 | `def` | [compute_rfl?](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/compute-rfl--3468c03152c2cae64d82ad3c.md) | 136 | `declaration-track:3468c03152c2cae64d82ad3ce1ba1e3965c3d568d9a95b2413ef053235cb9968` |
| 8 | `def` | [compute_dist?](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/compute-dist--15de0221eda29171aa21317e.md) | 150 | `declaration-track:15de0221eda29171aa21317e3fd41c9756409b3cafbee0e30ff97539c210ab8a` |
| 9 | `def` | [toString](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/tostring--789618cfc4939b35deaae7aa.md) | 157 | `declaration-track:789618cfc4939b35deaae7aa481efb4caa32e31cc50da8afdaeaff84f0813d14` |
| 10 | `def` | [mk](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/mk--867bed7c0142bd6da20598f1.md) | 170 | `declaration-track:867bed7c0142bd6da20598f1af1fb9bce29ffb1a79d85efcf7e5621b2bc2d898` |
| 11 | `def` | [init](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/init--cb4854d1c9ca4accba2c3337.md) | 189 | `declaration-track:cb4854d1c9ca4accba2c3337f8382175ce934aba33a33d57df48db418e937456` |
| 12 | `def` | [push](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/push--657104400a6c85208b587870.md) | 191 | `declaration-track:657104400a6c85208b5878702efa1ae1d75166b74d867d7d4d14526fc9a864f8` |
| 13 | `def` | [lastIdx](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/lastidx--51693567d95b5fdd0e056c64.md) | 196 | `declaration-track:51693567d95b5fdd0e056c642d3b15fb86ee16daaabea93634651ef1b1cbfbd7` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/instance--d2a7d4ccd6a475e3e4204f06.md) | 201 | `declaration-track:d2a7d4ccd6a475e3e4204f06d70d1097c21d0b4ba670f389e6325bf7fafea1a0` |
| 15 | `def` | [penalty](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/penalty--d0ab8616511f1408d5e7350b.md) | 233 | `declaration-track:d0ab8616511f1408d5e7350bed67e55c306858e677eb6f32db1e2b034b9fa0d9` |
| 16 | `abbrev` | [prio](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/prio--491c177942283debfc744ef1.md) | 236 | `declaration-track:491c177942283debfc744ef1fcaa41cb53519c3e57b165de0d5d2b1c48d00cd8` |
| 17 | `abbrev` | [estimator](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/estimator--9bddffbb6a859a31eae9541a.md) | 239 | `declaration-track:9bddffbb6a859a31eae9541ac365e04906dac2a09bfa673d74b4f2625437be0a` |
| 18 | `def` | [rewrite](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/rewrite--ba308e518b342ad05a72780d.md) | 243 | `declaration-track:ba308e518b342ad05a72780d481f689a3119d6bde72d67d660bde8b2448cad41` |
| 19 | `def` | [rewrites](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/rewrites--0b907d74e533345a9eaa8dca.md) | 255 | `declaration-track:0b907d74e533345a9eaa8dcafc917db54fd46aa1e6f67034d90bb5b5ac7a98d3` |
| 20 | `def` | [search](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/search--9873c32abeb9ef28328286ec.md) | 271 | `declaration-track:9873c32abeb9ef28328286ec394a50dfe03120ad704f78a019edd9deee793f4e` |
| 21 | `syntax` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/syntax--e8296baa2b1d234e3f8390da.md) | 313 | `declaration-track:e8296baa2b1d234e3f8390da15394f85d8bd417355b0b6f3177e3dc0f6573ea6` |
| 22 | `elab_rules` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/RewriteSearch/Variant0f65aa7c07ea5a9c9917cc1285ba2ba6aa5b48a5f7dc3bc61ab89989fa869c75.lean/declarations/elab-rules--d10d31382d79ac3e7c6c38f1.md) | 317 | `declaration-track:d10d31382d79ac3e7c6c38f187436003f4e56da7e11cdffdfb99522f736fe6ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
