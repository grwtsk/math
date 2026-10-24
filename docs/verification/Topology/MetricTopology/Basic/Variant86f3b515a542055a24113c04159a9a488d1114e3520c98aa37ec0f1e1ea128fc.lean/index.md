# Verification target: GRWTSK.Topology.MetricTopology.Basic.Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29906d71d40aff862123d44634945ae14980abe2",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29906d71d40aff862123d44634945ae14980abe2`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion--06e308496edfc609b0224d2b.md) | 48 | `declaration-track:06e308496edfc609b0224d2b310dd5ac273e376bd93a9d1f29d6af82f07ea81f` |
| 2 | `theorem` | [inversion_def](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-def--fc9cb5e45e42ce0b6656fa34.md) | 51 | `result-track:fc9cb5e45e42ce0b6656fa34a23c857df103a898edd09189a964dd98da60556c` |
| 3 | `theorem` | [inversion_eq_lineMap](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-eq-linemap--2f6495ef770db5fa181eb056.md) | 63 | `result-track:2f6495ef770db5fa181eb0568283cf67592da7e8bb00dea6c412424aa98a8a42` |
| 4 | `theorem` | [inversion_vsub_center](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-vsub-center--35bbffd1f0593208fa7d60e5.md) | 67 | `result-track:35bbffd1f0593208fa7d60e5f28051cf2d3807a91709a81f6da4251cd3b63a40` |
| 5 | `theorem` | [inversion_self](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-self--1152eb80baf4da1c59c465de.md) | 72 | `result-track:1152eb80baf4da1c59c465dedd15c87cc92c09bba4fbf0e59ec06b7307de5d02` |
| 6 | `theorem` | [inversion_zero_radius](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-zero-radius--700a8bb65f806707442837fd.md) | 75 | `result-track:700a8bb65f806707442837fda68e6ebe71cacdbc5916d39c6f51d397b7fad6ef` |
| 7 | `theorem` | [inversion_mul](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-mul--f347bfcf953746c3762fd5c3.md) | 77 | `result-track:f347bfcf953746c3762fd5c390d47970e3fdae319b8f995300b8c140f009e4cf` |
| 8 | `theorem` | [inversion_dist_center](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-dist-center--b415be8a112de3bc3a4310ce.md) | 83 | `result-track:b415be8a112de3bc3a4310ceb20d7946c4724a2ed22dcee99d4b6fb17f7af7f6` |
| 9 | `theorem` | [inversion_dist_center'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-dist-center--5795aff824936123b2baadb2.md) | 90 | `result-track:5795aff824936123b2baadb2a6c2e5aa707402a5a3474bd8d984086062cc5f46` |
| 10 | `theorem` | [inversion_of_mem_sphere](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-of-mem-sphere--83f910391955b66b1fc7b6ec.md) | 93 | `result-track:83f910391955b66b1fc7b6eca5a0997a830e50657afa4d19c6a35d53b9ab5bdd` |
| 11 | `theorem` | [dist_inversion_center](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/dist-inversion-center--b408dd963d988083f385d254.md) | 98 | `result-track:b408dd963d988083f385d254b8484f62403e3679514cb5d677a6ac6224017cfd` |
| 12 | `theorem` | [dist_center_inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/dist-center-inversion--ec0050d2e8234d86dcc90aa4.md) | 111 | `result-track:ec0050d2e8234d86dcc90aa4606603342666a1caae4ac8b963c88f5f98f1ead1` |
| 13 | `theorem` | [inversion_inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-inversion--71a2a30ef23a20f72366f0da.md) | 115 | `result-track:71a2a30ef23a20f72366f0da79ec02a1b4fc43631076c92eb138cfbd5c0ad455` |
| 14 | `theorem` | [inversion_involutive](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-involutive--ca97951a6eacb2845b7c5cfc.md) | 124 | `result-track:ca97951a6eacb2845b7c5cfc65dba7ebfc266a1213a9c817efc2e8015a9fa199` |
| 15 | `theorem` | [inversion_surjective](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-surjective--630f426c1e0a0e77720cbb01.md) | 127 | `result-track:630f426c1e0a0e77720cbb018635f6868c9df0b677474916ad1623ab85e2c055` |
| 16 | `theorem` | [inversion_injective](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-injective--548ca788075aa547f470da9f.md) | 130 | `result-track:548ca788075aa547f470da9f6cc55841484ad2d0232c248c14fda0eb2ed5839c` |
| 17 | `theorem` | [inversion_bijective](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-bijective--b8d3db3a5738fcf1ca7527eb.md) | 133 | `result-track:b8d3db3a5738fcf1ca7527eb0d954f7eb9b467ab89f9ac9f93fe131d56c5c178` |
| 18 | `theorem` | [inversion_eq_center](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-eq-center--0359bdd4293ec74741e88823.md) | 136 | `result-track:0359bdd4293ec74741e88823e79211259b1223185ce139a2f006fa450423b406` |
| 19 | `theorem` | [inversion_eq_center'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/inversion-eq-center--5fec37ce4fe96ca5f83ad786.md) | 140 | `result-track:5fec37ce4fe96ca5f83ad78693fa30f0c00eb0bd320071ecfb865b13312869a6` |
| 20 | `theorem` | [center_eq_inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/center-eq-inversion--929ab5f3a945c011928ab439.md) | 143 | `result-track:929ab5f3a945c011928ab43995982f209c3fbdd8f28ca6f2e3d4b6f1c78def4a` |
| 21 | `theorem` | [center_eq_inversion'](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/center-eq-inversion--dcbe0193ebdb5d733f84af3e.md) | 147 | `result-track:dcbe0193ebdb5d733f84af3ed2b524923d662d1d52d51ed64d26cbd7ccaccefd` |
| 22 | `theorem` | [dist_inversion_inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/dist-inversion-inversion--8b8fd0a815e3e97760b8d2bf.md) | 160 | `result-track:8b8fd0a815e3e97760b8d2bf599e1aeaac4ae4f15e654de97b0b5fa6dfa92bc6` |
| 23 | `theorem` | [dist_inversion_mul_dist_center_eq](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/dist-inversion-mul-dist-center-eq--f16ff44df4fc8cf9e25c27d9.md) | 167 | `result-track:f16ff44df4fc8cf9e25c27d97ef28746b66094e572546abf733a7ba2d2afb119` |
| 24 | `theorem` | [mul_dist_le_mul_dist_add_mul_dist](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/mul-dist-le-mul-dist-add-mul-dist--7354d69858d8ab60181fcc35.md) | 188 | `result-track:7354d69858d8ab60181fcc3567016c5b370e2a17556fea7df4057f14f5fd1a2b` |
| 25 | `theorem` | [Filter.Tendsto.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/filter-tendsto-inversion--fafb778ee2844ef9b91d9cef.md) | 215 | `result-track:fafb778ee2844ef9b91d9cef045b558a50e21cd7b3f41c260461931f7efa843d` |
| 26 | `theorem` | [ContinuousWithinAt.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/continuouswithinat-inversion--a87b17337522bba96cda23d3.md) | 223 | `result-track:a87b17337522bba96cda23d342973f0181095e8f804be71a0469887807059b8c` |
| 27 | `theorem` | [ContinuousAt.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/continuousat-inversion--fa8cd55a90dab32013e7eb15.md) | 228 | `result-track:fa8cd55a90dab32013e7eb157fe18129a8d38c356889b89eab28bac4d04f819a` |
| 28 | `theorem` | [ContinuousOn.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/continuouson-inversion--15f8ce48df7acb3f3a2825f5.md) | 233 | `result-track:15f8ce48df7acb3f3a2825f5942bab75848c3fe7c2696ae7b56424e22008ae8f` |
| 29 | `theorem` | [Continuous.inversion](../../../../../mathematics/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/declarations/continuous-inversion--5887b076a4229947240d9de2.md) | 238 | `result-track:5887b076a4229947240d9de29e0a7f455fa45df6b2a2b42c4652dfc350293f8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
