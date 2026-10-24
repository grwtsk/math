# Verification target: GRWTSK.Topology.MetricTopology.Lipschitz.Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "978aca7545aa610fe53d30981e3be0981cb2e193",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `978aca7545aa610fe53d30981e3be0981cb2e193`.

Source path: `GRWTSK/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.ProjIcc` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bornology.Hom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.EMetricSpace.Lipschitz` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Bounded` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lipschitzWith_iff_dist_le_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/lipschitzwith-iff-dist-le-mul--5403d01fa2c0a3d12ed85970.md) | 50 | `result-track:5403d01fa2c0a3d12ed8597021a8aed579b4f3e421bf0568300b7e55a23b37fa` |
| 2 | `theorem` | [lipschitzOnWith_iff_dist_le_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/lipschitzonwith-iff-dist-le-mul--a90f1e3089c429779baa4d95.md) | 57 | `result-track:a90f1e3089c429779baa4d95edbfcb2497065a1fa7bf47ca65151a3b23911254` |
| 3 | `theorem` | [of_dist_le'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/of-dist-le--044d702850a3ec8955ea2af4.md) | 73 | `result-track:044d702850a3ec8955ea2af4b9e1149336552033dc6372b3d80f853f77b58635` |
| 4 | `theorem` | [mk_one](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/mk-one--69644dcc1fc899734c589aa6.md) | 78 | `result-track:69644dcc1fc899734c589aa680f92e48fcc0b9c050f5bc1d974500ca3f92e68c` |
| 5 | `theorem` | [of_le_add_mul'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/of-le-add-mul--ab7a97b90a715d16d1a0846f.md) | 83 | `result-track:ab7a97b90a715d16d1a0846f024d597dc4dab8e677512cf2ce251e37acaee544` |
| 6 | `theorem` | [of_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/of-le-add-mul--b7f4020a636dba9c14213ad0.md) | 90 | `result-track:b7f4020a636dba9c14213ad07a5e6623ffd5c0c919ce709de6bd6e0e8af7950d` |
| 7 | `theorem` | [of_le_add](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/of-le-add--94c2c1b341d33c63aeae8067.md) | 93 | `result-track:94c2c1b341d33c63aeae80673da184b093c7e8e31a5bc2a7a0302cdeb435134d` |
| 8 | `theorem` | [le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/le-add-mul--0618c6b331a691aa1f5320b1.md) | 96 | `result-track:0618c6b331a691aa1f5320b17ce158d21de842547f5ba660e9c8756a6ae3a7f1` |
| 9 | `theorem` | [iff_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/iff-le-add-mul--8c86cbbf8ed2de9ad64df02d.md) | 100 | `result-track:8c86cbbf8ed2de9ad64df02db2edea62f96e95eab859be8a0248091e03d7809a` |
| 10 | `theorem` | [nndist_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/nndist-le--58ca2f2ccebe795f9b4db719.md) | 104 | `result-track:58ca2f2ccebe795f9b4db7193955eab65d7d553a987d4f82c36f3a28f8a1165d` |
| 11 | `theorem` | [dist_le_mul_of_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/dist-le-mul-of-le--eecd08ffaa247ea8dd7e7eb5.md) | 107 | `result-track:eecd08ffaa247ea8dd7e7eb569a081eba8caf8331bcc86837ef17ed5f0c85ae8` |
| 12 | `theorem` | [mapsTo_closedBall](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/mapsto-closedball--593b31e2d46462eb76558d82.md) | 110 | `result-track:593b31e2d46462eb76558d825cfdec9ae55ea00f21ab90e9492ebdbb9596bb23` |
| 13 | `theorem` | [dist_lt_mul_of_lt](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/dist-lt-mul-of-lt--25db6fa5f4521b4530251d05.md) | 114 | `result-track:25db6fa5f4521b4530251d05542d756f115136b9d0b7a079f61ddcde5aa63209` |
| 14 | `theorem` | [mapsTo_ball](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/mapsto-ball--aa7af778f59193d5ccd920df.md) | 118 | `result-track:aa7af778f59193d5ccd920df1a46266f1ba0b8891b9b9d1535832f41bf46370f` |
| 15 | `def` | [toLocallyBoundedMap](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/tolocallyboundedmap--092eb7d422021d03915ac51b.md) | 123 | `declaration-track:092eb7d422021d03915ac51b843afe1d229c105fc64de692f49e5f6167ec3038` |
| 16 | `theorem` | [coe_toLocallyBoundedMap](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/coe-tolocallyboundedmap--4102df04d478b0e31efee4ef.md) | 130 | `result-track:4102df04d478b0e31efee4ef00db928cee5735010c74499f3b6bc45064d19444` |
| 17 | `theorem` | [comap_cobounded_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/comap-cobounded-le--a9d848287c3eb09a0108b44a.md) | 133 | `result-track:a9d848287c3eb09a0108b44aac3c4d6e0a1c321bbaa37c02217ab4c7512a86c5` |
| 18 | `theorem` | [isBounded_image](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/isbounded-image--2ce0078732a8b88d3d0b04ce.md) | 138 | `result-track:2ce0078732a8b88d3d0b04ce45b77a15e51d4b4f0c65b9a10d6057a46205a70d` |
| 19 | `theorem` | [diam_image_le](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/diam-image-le--2fb8a41e7798f82e30175a1d.md) | 142 | `result-track:2fb8a41e7798f82e30175a1d698e44cceb6bd7e2b4b768a29131c59531e80532` |
| 20 | `theorem` | [dist_left](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/dist-left--cd8e4dc61d631311a645772d.md) | 148 | `result-track:cd8e4dc61d631311a645772db57b4a1b8dd619861fa48a9ae85265e6a30d2ee5` |
| 21 | `theorem` | [dist_right](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/dist-right--e520e92838756f87d179a01a.md) | 151 | `result-track:e520e92838756f87d179a01a79d3e7f1fcde8db2650aba33e8bfd2cac6fce88f` |
| 22 | `theorem` | [dist](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/dist--b5fae42001177a9d696f152e.md) | 154 | `result-track:b5fae42001177a9d696f152e512b43ba730881421db03a5b88cce0b127be1293` |
| 23 | `theorem` | [dist_iterate_succ_le_geometric](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/dist-iterate-succ-le-geometric--5560b524e80d96bb5665422c.md) | 158 | `result-track:5560b524e80d96bb5665422c76f284c482cf8cab4726d5dcf75d627d3208995d` |
| 24 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lipschitzWith_max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/root-grwtsk-topology-metrictopology-lipschitzwithiffdistlemul-variant9c0--3ea91161b1caa0d62cbc86ec.md) | 163 | `result-track:3ea91161b1caa0d62cbc86ec7066b64400b142886a3aa80c3f4eabe90407cec9` |
| 25 | `theorem` | [_root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.lipschitzWith_min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/root-grwtsk-topology-metrictopology-lipschitzwithiffdistlemul-variant9c0--723ad05c95aa0b729f644a3a.md) | 167 | `result-track:723ad05c95aa0b729f644a3a0e7e1e8e3785fe07795f0757d769d6919c37c040` |
| 26 | `lemma` | [_root_.GRWTSK.Topology.MetricTopology.LipschitzWithIffDistLeMul.Variant9c0a7e0e35957652a9d69415efcf0740c875cf1f04dae9e796f15ca0604abad1.Real.lipschitzWith_toNNReal](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/root-grwtsk-topology-metrictopology-lipschitzwithiffdistlemul-variant9c0--5200388092a363ef343e07bf.md) | 171 | `result-track:5200388092a363ef343e07bfabf6db974bbad69609cd992cb4aede2cd044a2b6` |
| 27 | `lemma` | [cauchySeq_comp](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/cauchyseq-comp--e4d2beca215851bbe8209a41.md) | 176 | `result-track:e4d2beca215851bbe8209a41aa06a1b8d56bdbb57ae13d198d103fc1b66b599a` |
| 28 | `theorem` | [max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/max--551b2d5ed6ea8bd402894a80.md) | 191 | `result-track:551b2d5ed6ea8bd402894a80d410155ab69c2c6c560df07e4b2758db15c4d3e4` |
| 29 | `theorem` | [min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/min--37ba01c79e7f50390744bcad.md) | 195 | `result-track:37ba01c79e7f50390744bcad748e28c0880ea515d2faf86b3bc58cb441677ba8` |
| 30 | `theorem` | [max_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/max-const--c72568b0a2791d6fab6ddfe7.md) | 199 | `result-track:c72568b0a2791d6fab6ddfe7c4c394b3ecd2b7b81d3d715fdfabfdce50a3265c` |
| 31 | `theorem` | [const_max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/const-max--fc263a866bd8b9131786c92c.md) | 202 | `result-track:fc263a866bd8b9131786c92c598314fa255d971dc343903b7f2813303e5c0fd3` |
| 32 | `theorem` | [min_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/min-const--601ce98fba508d9b7dca3f0c.md) | 205 | `result-track:601ce98fba508d9b7dca3f0c16d8580d0ac0b9e5c31bb4c1d42e094c1df58d97` |
| 33 | `theorem` | [const_min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/const-min--d58775bab4bd280905a296c2.md) | 208 | `result-track:d58775bab4bd280905a296c2aaad6c40b75be0716645a3cd32d6d7b167ae93eb` |
| 34 | `theorem` | [projIcc](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/projicc--a83fd026a2410a1d70efa288.md) | 213 | `result-track:a83fd026a2410a1d70efa28834d7da3a18709fb2f3047f57208a50a16bed681f` |
| 35 | `lemma` | [LipschitzWith.properSpace](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/lipschitzwith-properspace--a3a8ac31a611512047e56850.md) | 219 | `result-track:a3a8ac31a611512047e56850e6a572366a2d34e526c5ddefdafeadd5219e36fa` |
| 36 | `theorem` | [of_dist_le'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/of-dist-le--cd1097e3355f3c20f8fb88e8.md) | 238 | `result-track:cd1097e3355f3c20f8fb88e8dbc7c622708ab7c91a8ed2c9ad069d664f008c47` |
| 37 | `theorem` | [mk_one](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/mk-one--08e065aae1b3d8124e66353b.md) | 243 | `result-track:08e065aae1b3d8124e66353b2e86e3bb4ffb5e24b024e7b0c77192d7c26492d8` |
| 38 | `theorem` | [of_le_add_mul'](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/of-le-add-mul--443476e380c2a55e2a95f96f.md) | 249 | `result-track:443476e380c2a55e2a95f96f9921fd47e862fd5ebff72346405d37fa21ac2ba6` |
| 39 | `theorem` | [of_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/of-le-add-mul--e6ca542eb76e1a05d33070a4.md) | 258 | `result-track:e6ca542eb76e1a05d33070a4588dbea553202af72ea1e18575bd590bdb338037` |
| 40 | `theorem` | [of_le_add](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/of-le-add--43b3740bb45f5ca4a1d9dc52.md) | 262 | `result-track:43b3740bb45f5ca4a1d9dc52721c9056530f2454dad3f02df07ca2283786d93f` |
| 41 | `theorem` | [le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/le-add-mul--da0eb59c30236b2289e1123b.md) | 266 | `result-track:da0eb59c30236b2289e1123b024befbbd8045465ee4d73d38bd3c8c70fc4105a` |
| 42 | `theorem` | [iff_le_add_mul](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/iff-le-add-mul--e0e031fe94737726e601d62d.md) | 270 | `result-track:e0e031fe94737726e601d62d0830194d56e16639b6550e5642e18b72f4e79715` |
| 43 | `theorem` | [isBounded_image2](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/isbounded-image2--053a1b4bc294734d0cb84084.md) | 274 | `result-track:053a1b4bc294734d0cb8408492d6d7b4857cdce3b5fefbe509033c46bc8aeb0f` |
| 44 | `lemma` | [cauchySeq_comp](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/cauchyseq-comp--0751c4a1d1db19d4a8e6e9aa.md) | 285 | `result-track:0751c4a1d1db19d4a8e6e9aa1a2760165f4fb8214f8235b0b4a3c2fd46549336` |
| 45 | `lemma` | [min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/min--974ed5aa50a4a12703e97429.md) | 309 | `result-track:974ed5aa50a4a12703e974293d6e605708b32a1b1b6749a41a53a03ef67eda57` |
| 46 | `lemma` | [max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/max--0e2dab5c055595932070e21a.md) | 314 | `result-track:0e2dab5c055595932070e21a7093fe7d48de96abe7c710111a806ebb1045bd07` |
| 47 | `theorem` | [max_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/max-const--17f03a39a00e9b353ac782cb.md) | 318 | `result-track:17f03a39a00e9b353ac782cbfcd27bbc43e254d49822e848544639f143e7386a` |
| 48 | `theorem` | [const_max](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/const-max--d9fab930e1eb3fd4cc9a9785.md) | 321 | `result-track:d9fab930e1eb3fd4cc9a9785467b0b7f89d11ce010a06a858544e039cb3d2484` |
| 49 | `theorem` | [min_const](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/min-const--e39b108fc302e10f09efb96d.md) | 324 | `result-track:e39b108fc302e10f09efb96dc51f4159bcdb6816a8ddf30e75621e221699fcbe` |
| 50 | `theorem` | [const_min](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/const-min--9efccc474a7c2b29c5b71566.md) | 327 | `result-track:9efccc474a7c2b29c5b71566796954e57c35df95e1a869a9c6e170d39ba88d60` |
| 51 | `theorem` | [continuousAt_of_locally_lipschitz](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/continuousat-of-locally-lipschitz--c3f09ebd8ce5c59fde975a40.md) | 338 | `result-track:c3f09ebd8ce5c59fde975a40d2784290a194ce627d29952c8990272693b56fd6` |
| 52 | `theorem` | [LipschitzOnWith.extend_real](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/lipschitzonwith-extend-real--021802de0dae80b05eae0005.md) | 349 | `result-track:021802de0dae80b05eae00055dedf19602d915b5133ce2e6f70ebc19a7af5dc8` |
| 53 | `theorem` | [LipschitzOnWith.extend_pi](../../../../../mathematics/Topology/MetricTopology/Lipschitz/Variantd99fa9357a98fd3a79dd9a6f8b295cc52b147fcd5110992d2e5c74fb1145e37c.lean/declarations/lipschitzonwith-extend-pi--2995e85933be6fb9aefc095d.md) | 385 | `result-track:2995e85933be6fb9aefc095d971a94cf72e0df360e3c7265bf325ef27d5e03f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
