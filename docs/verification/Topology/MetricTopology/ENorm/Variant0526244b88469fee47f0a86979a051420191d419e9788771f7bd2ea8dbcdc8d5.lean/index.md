# Verification target: GRWTSK.Topology.MetricTopology.ENorm.Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6192915b9c0861be6168f6397300ca082fda6be9",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6192915b9c0861be6168f6397300ca082fda6be9`.

Source path: `GRWTSK/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ENorm](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/enorm--b8eea3032b745ca7b204dae2.md) | 52 | `declaration-track:b8eea3032b745ca7b204dae24cab789064a61d2ec64a7128e9422cee12041549` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/instance--f7207e46b2418d93cbca39c7.md) | 66 | `declaration-track:f7207e46b2418d93cbca39c776f31354bb1437488d0de0753622a26a1eb9b42a` |
| 3 | `theorem` | [coeFn_injective](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/coefn-injective--c002e8e0a531612cbbc8c43b.md) | 69 | `result-track:c002e8e0a531612cbbc8c43b168d0ec7017f73e9e7439c664506f5d7e6fb23af` |
| 4 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/ext--13028dfdd6efc71a9e324969.md) | 76 | `result-track:13028dfdd6efc71a9e3249698219d3b6c8d36985884c6daa63a68f726b8fe6bd` |
| 5 | `theorem` | [ext_iff](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/ext-iff--bc8a532b9e2b3e4e63db959a.md) | 80 | `result-track:bc8a532b9e2b3e4e63db959a24cbbf0d2cb3cb81081de127180f5c50314e0eb3` |
| 6 | `theorem` | [coe_inj](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/coe-inj--0a73575c0a5a6d6aa841b6b5.md) | 85 | `result-track:0a73575c0a5a6d6aa841b6b569da091e28563a45ad3cd89fc91ff7ad0daab947` |
| 7 | `theorem` | [map_smul](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/map-smul--43aab5f74fbc3a3759f34653.md) | 90 | `result-track:43aab5f74fbc3a3759f346534c3cbf827c7d530a85e8e2beea626d1b5ead7f60` |
| 8 | `theorem` | [map_zero](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/map-zero--0eb6bf8526cd41cd2f53789a.md) | 104 | `result-track:0eb6bf8526cd41cd2f53789a1f9872193974b445cb9298a9e833c2a8b9a9e17f` |
| 9 | `theorem` | [eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/eq-zero-iff--a113e3d67ea54709baff08d3.md) | 110 | `result-track:a113e3d67ea54709baff08d396d3804a0c056d5bda23bc65555db8d737684e1d` |
| 10 | `theorem` | [map_neg](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/map-neg--736e8119b1063447959469d2.md) | 115 | `result-track:736e8119b1063447959469d27f47bd5f00d8dbd83029acf759fc597dab572556` |
| 11 | `theorem` | [map_sub_rev](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/map-sub-rev--ddddf50982c47dacbdbb693e.md) | 121 | `result-track:ddddf50982c47dacbdbb693e3648d03840f03fa63c036936d353b16234e7900c` |
| 12 | `theorem` | [map_add_le](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/map-add-le--1cee79ba82e0a35ec1821c75.md) | 124 | `result-track:1cee79ba82e0a35ec1821c75258da9fb65d5063519a9cae113a2dc717b061e87` |
| 13 | `theorem` | [map_sub_le](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/map-sub-le--e0b206d4b5f00f01fe97e379.md) | 128 | `result-track:e0b206d4b5f00f01fe97e379a13ee4fb40371cf93c039944d1b38a360ce32ab9` |
| 14 | `instance` | [partialOrder](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/partialorder--8d3749c87668dae555f8d624.md) | 135 | `declaration-track:8d3749c87668dae555f8d6249f6d6e699f3ed2f29738efaa2eeefd2c77df070c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/instance--b1f85c102803ed9e96de3f46.md) | 142 | `declaration-track:b1f85c102803ed9e96de3f46cdb7c9a7209b8b5c27b8ed6a3eae2a0a4395414d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/instance--0eb2ae29d6204263b47bb242.md) | 158 | `declaration-track:0eb2ae29d6204263b47bb24284137f0668260ee7376f39aa71a995159c5585e4` |
| 17 | `theorem` | [top_map](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/top-map--0aacfed48d693ccf078c5127.md) | 161 | `result-track:0aacfed48d693ccf078c51277626c9404b50cbfb8ee64edb483930da2d65b324` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/instance--4be29c1a1f6fd4a10ee729d9.md) | 165 | `declaration-track:4be29c1a1f6fd4a10ee729d936428c1c4b2b03e5595ea35907d86962c254b649` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/instance--d79fdd18e56cb1425e0a6cae.md) | 169 | `declaration-track:d79fdd18e56cb1425e0a6cae94618529199c9e63a341146a81feb8057a817f5b` |
| 20 | `theorem` | [coe_max](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/coe-max--176e8865a1c874a3c8e1ded9.md) | 185 | `result-track:176e8865a1c874a3c8e1ded9012d2caa75eb6c69d890a991ade678f8a9a3fba7` |
| 21 | `theorem` | [max_map](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/max-map--4d90b873afcd38c398f49701.md) | 190 | `result-track:4d90b873afcd38c398f49701371a04c0d5a67f42db9b200d7f7170a6f8152d06` |
| 22 | `def` | [emetricSpace](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/emetricspace--852799b54c1e804be34e0ced.md) | 196 | `declaration-track:852799b54c1e804be34e0ced1b06ca4ccd2512c2b97a446a566a1d09c8f5a097` |
| 23 | `def` | [finiteSubspace](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/finitesubspace--db39e898bd5dbc00e6136116.md) | 208 | `declaration-track:db39e898bd5dbc00e6136116207798d90d92b92537f2e49018add63cc28d6a1f` |
| 24 | `instance` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/metricspace--be860d450f7eef95ca767574.md) | 220 | `declaration-track:be860d450f7eef95ca76757401d7f9c6ab8ece58dd581f957b1a22676175b717` |
| 25 | `theorem` | [finite_dist_eq](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/finite-dist-eq--478a104a0c0786d67194f985.md) | 226 | `result-track:478a104a0c0786d67194f9851ef7aa50ed5cb0e6d0206bc56edcf6b8e4fef83e` |
| 26 | `theorem` | [finite_edist_eq](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/finite-edist-eq--99123daa3555e23b227c3843.md) | 230 | `result-track:99123daa3555e23b227c38431938c6e1b9b73f3f08670dad240571766228b7d4` |
| 27 | `instance` | [normedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/normedaddcommgroup--7d578de8d633afb642e6b716.md) | 235 | `declaration-track:7d578de8d633afb642e6b7168ddcabf8ab99a95d9296731c55f60b4c0430c459` |
| 28 | `theorem` | [finite_norm_eq](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/finite-norm-eq--3e866d9126f72dae6d92553d.md) | 241 | `result-track:3e866d9126f72dae6d92553d26ac63d33f81891cf281c036ff92e90b0015e14f` |
| 29 | `instance` | [normedSpace](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant0526244b88469fee47f0a86979a051420191d419e9788771f7bd2ea8dbcdc8d5.lean/declarations/normedspace--07a21b8933ca87c91622d6e7.md) | 246 | `declaration-track:07a21b8933ca87c91622d6e754596cb0c49d03d6796d4ed0f453ca281cd0db35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
