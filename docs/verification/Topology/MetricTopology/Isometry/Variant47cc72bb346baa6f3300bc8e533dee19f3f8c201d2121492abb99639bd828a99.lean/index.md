# Verification target: GRWTSK.Topology.MetricTopology.Isometry.Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7fd6dcf1b8a8abfe27d3c407d65d6372472f611",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7fd6dcf1b8a8abfe27d3c407d65d6372472f611`.

Source path: `GRWTSK/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Isometry](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/isometry--fa4cd625c7b1e8a1d69e006f.md) | 40 | `declaration-track:fa4cd625c7b1e8a1d69e006fe9ea62860cd8f2cc918d127017ded4dd8ef46e94` |
| 2 | `instance` | [instFunLike](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/instfunlike--a61f0508c50aa47f274e80db.md) | 52 | `declaration-track:a61f0508c50aa47f274e80dba38ed6a2d0c948130a16dc3b4759ce66705cfb1f` |
| 3 | `instance` | [instLinearMapClass](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/instlinearmapclass--608968c13cba4e08f9817ff8.md) | 56 | `declaration-track:608968c13cba4e08f9817ff8a39eaf81708ad2cbc5074952a4aa520cfbf6c169` |
| 4 | `theorem` | [toLinearMap_injective](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/tolinearmap-injective--7e45fbf28c651a428e7004e7.md) | 60 | `result-track:7e45fbf28c651a428e7004e724b79dcf0aea1fc8ff79866e6f069661631efa98` |
| 5 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/ext--7e64923a68b9e83614504932.md) | 65 | `result-track:7e64923a68b9e83614504932ea8a73768d8544514d45c75ac24f2ec019365d30` |
| 6 | `def` | [Simps.apply](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/simps-apply--578abef82d08e739f61e19fd.md) | 69 | `declaration-track:578abef82d08e739f61e19fd4de002162d955179d0f34a85fe2932704cf1ed87` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/map-app--688e4b62d94b5c46cb08ffec.md) | 74 | `result-track:688e4b62d94b5c46cb08ffec88dee4a65ffdcc07c5a274d817ede213598aac17` |
| 8 | `theorem` | [coe_toLinearMap](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/coe-tolinearmap--5bbb658d0f12aac8835f1df5.md) | 78 | `result-track:5bbb658d0f12aac8835f1df57656b00264aa4bbf58834854f8df42dfec45a37b` |
| 9 | `def` | [id](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/id--1ae36db0db546759fd673a36.md) | 83 | `declaration-track:1ae36db0db546759fd673a36c7dde8ef895ad19402924848a80991b034181ec6` |
| 10 | `def` | [ofEq](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/ofeq--f3ac5221151c4828f7735e65.md) | 89 | `declaration-track:f3ac5221151c4828f7735e656f315127b069134b38d8f04dce4f7ed50ce1e33b` |
| 11 | `theorem` | [ofEq_rfl](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/ofeq-rfl--bb99733b72eaf513c2bc5574.md) | 94 | `result-track:bb99733b72eaf513c2bc5574655bdbaf8114878529a6c3ee1cf1369251244f11` |
| 12 | `def` | [comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/comp--99df2f64e9b7e3b68e07b54d.md) | 98 | `declaration-track:99df2f64e9b7e3b68e07b54d054090be44849b1538d94bf5fac8d8514d5d382e` |
| 13 | `theorem` | [toLinearMap_comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/tolinearmap-comp--e91e4bd3b8112989dea38ee2.md) | 104 | `result-track:e91e4bd3b8112989dea38ee231d50747057b0ca50695a8d37ece69089c2c4c3c` |
| 14 | `theorem` | [id_comp](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/id-comp--6d48ef61711ce9e29c09b59f.md) | 109 | `result-track:6d48ef61711ce9e29c09b59f4d436e2a19dae8446bd272afdfd79f1aa6ffcdce` |
| 15 | `theorem` | [comp_id](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/comp-id--72cfca50f48fc9e650b2d39c.md) | 113 | `result-track:72cfca50f48fc9e650b2d39c352b30c4b1bb2eb9bc52d7b6a94a8ee21bf95d22` |
| 16 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/comp-assoc--fb4393feb0b9833cfa86c8aa.md) | 116 | `result-track:fb4393feb0b9833cfa86c8aab22c2b4dae9cafd68438f8ce16904a87685ca5e5` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/instance--510d0ea660957dbdea005bf6.md) | 121 | `declaration-track:510d0ea660957dbdea005bf6934bcf2fbe49cfe4cdb757cc4d470f81360ee757` |
| 18 | `instance` | [hasZeroOfSubsingleton](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/haszeroofsubsingleton--1f1d1b98df8ad6cdca09dac3.md) | 125 | `declaration-track:1f1d1b98df8ad6cdca09dac3d00b6406d2f8faeb8c47d7914a2480a4adb2e6e5` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean/declarations/instance--b248bbc5398358f367ff4408.md) | 131 | `declaration-track:b248bbc5398358f367ff44089c52666b54020fcbf6af465012703a5c106507a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
