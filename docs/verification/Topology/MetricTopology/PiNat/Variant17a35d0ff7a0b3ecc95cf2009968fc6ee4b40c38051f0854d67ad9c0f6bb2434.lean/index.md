# Verification target: GRWTSK.Topology.MetricTopology.PiNat.Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca3bd8d91265aeffa42571b7fef04cad045745bb",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca3bd8d91265aeffa42571b7fef04cad045745bb`.

Source path: `GRWTSK/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [apply_firstDiff_ne](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/apply-firstdiff-ne--1eec857923d9e8797263056b.md) | 73 | `result-track:1eec857923d9e8797263056be0012a898df73b9a315f982b324be7f5dc408948` |
| 2 | `theorem` | [apply_eq_of_lt_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/apply-eq-of-lt-firstdiff--6f32d21503ab4f26f6b37966.md) | 79 | `result-track:6f32d21503ab4f26f6b37966360da2c28c42c181dcecdfd0f9f53ba97917710f` |
| 3 | `theorem` | [firstDiff_comm](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/firstdiff-comm--3fba4b29b9b39e1f0085a81f.md) | 87 | `result-track:3fba4b29b9b39e1f0085a81ffb827ead6de27592ddcf4f11b22ccd2410455614` |
| 4 | `theorem` | [min_firstDiff_le](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/min-firstdiff-le--f630d807e200e843b2209d6c.md) | 91 | `result-track:f630d807e200e843b2209d6c5353ba33c65ab426cf2f15dbc4a8ace0682bda3b` |
| 5 | `def` | [cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/cylinder--7899a0afaba5dee398f11922.md) | 107 | `declaration-track:7899a0afaba5dee398f1192220a07d883bb7c3fd6b8f178e499d5d03c57f4a12` |
| 6 | `theorem` | [cylinder_eq_pi](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/cylinder-eq-pi--c292f48a4f71666e7ae3d57c.md) | 111 | `result-track:c292f48a4f71666e7ae3d57ca82644c7b3bb0f77aa87845bb4a50e61437fa1d8` |
| 7 | `theorem` | [cylinder_zero](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/cylinder-zero--0603361ac76aa06856c5cbb4.md) | 118 | `result-track:0603361ac76aa06856c5cbb49e0dc7c20f7027472a9292cedaf97277b3cf8ef4` |
| 8 | `theorem` | [cylinder_anti](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/cylinder-anti--8ed1e2b78589c1594fcd5cfc.md) | 121 | `result-track:8ed1e2b78589c1594fcd5cfc6c880b80af15228ceab5b03b1b22aaf896786a89` |
| 9 | `theorem` | [mem_cylinder_iff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/mem-cylinder-iff--99df8f8fdf603d4b01b4d79f.md) | 126 | `result-track:99df8f8fdf603d4b01b4d79f3f0c8fc3e12051618394234617032e6fd92fb292` |
| 10 | `theorem` | [self_mem_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/self-mem-cylinder--642f6960fe97c129882d76f5.md) | 130 | `result-track:642f6960fe97c129882d76f542858257306f4859da10c6fe276459f206f4e258` |
| 11 | `theorem` | [mem_cylinder_iff_eq](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/mem-cylinder-iff-eq--a47fe52f1b864b9c4ded64d9.md) | 133 | `result-track:a47fe52f1b864b9c4ded64d977dc422c2855505d96d16d7cdc165b6248de76b0` |
| 12 | `theorem` | [mem_cylinder_comm](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/mem-cylinder-comm--e5dd0acc26bef04706a4f547.md) | 149 | `result-track:e5dd0acc26bef04706a4f547873b4273a55dcc9bcd225bb7f84a6792cad45f98` |
| 13 | `theorem` | [mem_cylinder_iff_le_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/mem-cylinder-iff-le-firstdiff--7839491deafe592fdcd30a4c.md) | 153 | `result-track:7839491deafe592fdcd30a4c3128c92c3bcae4649591d49d3c8acfc066f38585` |
| 14 | `theorem` | [mem_cylinder_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/mem-cylinder-firstdiff--3b2e94a29d026bdbd7edfb22.md) | 163 | `result-track:3b2e94a29d026bdbd7edfb221ff3bebe873ae5d8454d60cbba12bd4d4156c91d` |
| 15 | `theorem` | [cylinder_eq_cylinder_of_le_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/cylinder-eq-cylinder-of-le-firstdiff--8e2a31ca129737e23f6a332a.md) | 167 | `result-track:8e2a31ca129737e23f6a332a4bed2adf49ff801806ef8e3e4d938f2b0fa8659f` |
| 16 | `theorem` | [iUnion_cylinder_update](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/iunion-cylinder-update--73b82400d8517b028292b01a.md) | 174 | `result-track:73b82400d8517b028292b01ae95a33f1191334799f9574d60c2ac07b4131bf2d` |
| 17 | `theorem` | [update_mem_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/update-mem-cylinder--26a5a487c954b69dbdfa6e1c.md) | 188 | `result-track:26a5a487c954b69dbdfa6e1c2e955d8c1c0e36095a11537f24aec77f4f87035a` |
| 18 | `def` | [res](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/res--351f6985f0f17490c0fd67b5.md) | 202 | `declaration-track:351f6985f0f17490c0fd67b543a87694598211cd8034c3569bf0860906e00c62` |
| 19 | `theorem` | [res_zero](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/res-zero--352d4c60d680d10ac1470c3a.md) | 208 | `result-track:352d4c60d680d10ac1470c3a23d5c7e4b957ac2f50f79071478b10b28cf663e7` |
| 20 | `theorem` | [res_succ](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/res-succ--0f2f8d4b44429f052fc3727a.md) | 213 | `result-track:0f2f8d4b44429f052fc3727ad52fbbea3ed082f9f67e95f9603f72e7fbe6bdaf` |
| 21 | `theorem` | [res_length](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/res-length--dacef992417d2f41286452de.md) | 218 | `result-track:dacef992417d2f41286452dea0fa4719ed0bd6e493cf72fd40ef23ee2883e4a2` |
| 22 | `theorem` | [res_eq_res](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/res-eq-res--1cdf4fbc087f4a4935891005.md) | 222 | `result-track:1cdf4fbc087f4a4935891005e2f0773034a69147d26c38f5ca02f6a3c924922b` |
| 23 | `theorem` | [res_injective](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/res-injective--aef9ccb8ad2285d5b8e9c6a2.md) | 238 | `result-track:aef9ccb8ad2285d5b8e9c6a2f22c35d115df2ea3be858ab32815fdf01051f3e5` |
| 24 | `theorem` | [cylinder_eq_res](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/cylinder-eq-res--50f410a352623c26f21fe058.md) | 246 | `result-track:50f410a352623c26f21fe058d56b0202ce98505cb8196726ea4bff2487f95b8f` |
| 25 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist--497386f52a26d44a608bd3eb.md) | 267 | `declaration-track:497386f52a26d44a608bd3eb3386a01139fef8cc55d4d1ad4ac334169d8b65a6` |
| 26 | `theorem` | [dist_eq_of_ne](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist-eq-of-ne--45853ffadd24fcab4b9be027.md) | 273 | `result-track:45853ffadd24fcab4b9be027d5a15dbde677c339ba2dfa680c7dd2c1f178728f` |
| 27 | `theorem` | [dist_self](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist-self--00a9e07793ab70faed525bba.md) | 277 | `result-track:00a9e07793ab70faed525bba1c0b6570adc1fc0ee083e4095d71fce834362010` |
| 28 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist-comm--18621142c95871d581a3d322.md) | 280 | `result-track:18621142c95871d581a3d32238094384bea47fd340c63b1d444e523d73d1c12b` |
| 29 | `theorem` | [dist_nonneg](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist-nonneg--7d9cae96138a24972496d630.md) | 284 | `result-track:7d9cae96138a24972496d630fb00a396626fe78247ec99bd0746125d478db0b4` |
| 30 | `theorem` | [dist_triangle_nonarch](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist-triangle-nonarch--e3fdd9d5a8572d57a0583052.md) | 290 | `result-track:e3fdd9d5a8572d57a0583052e0d673f8480fb567768046c2d2dff1f30a0c60c2` |
| 31 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist-triangle--874c12a08909a93f9ae338a2.md) | 302 | `result-track:874c12a08909a93f9ae338a24f5fac13340d937e70145078381f373b2133ebee` |
| 32 | `theorem` | [eq_of_dist_eq_zero](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/eq-of-dist-eq-zero--864898f90950287e256871ab.md) | 308 | `result-track:864898f90950287e256871abc91597224dd54cc01f9e30b036e7d91b9fd7c3b4` |
| 33 | `theorem` | [mem_cylinder_iff_dist_le](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/mem-cylinder-iff-dist-le--e72c7b2842ae4ce6f7ef718e.md) | 314 | `result-track:e72c7b2842ae4ce6f7ef718e0d2a1fdcd874f8df201c3a67e626bf0fce2b6c32` |
| 34 | `theorem` | [apply_eq_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/apply-eq-of-dist-lt--248b3ad5663b59d04b333d32.md) | 327 | `result-track:248b3ad5663b59d04b333d32d294b78b2650ed4c568e1f8763a830bccbe4f837` |
| 35 | `theorem` | [lipschitz_with_one_iff_forall_dist_image_le_of_mem_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/lipschitz-with-one-iff-forall-dist-image-le-of-mem-cylinder--9fc793dc2a36a3866f021a88.md) | 339 | `result-track:9fc793dc2a36a3866f021a8895e955069f2483e4f062527b3ba368d06c93cf81` |
| 36 | `theorem` | [isOpen_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/isopen-cylinder--5b1f7a6c6ca48b189eff8a98.md) | 360 | `result-track:5b1f7a6c6ca48b189eff8a98adec8150a2351879a1620541299dcd63a91f203e` |
| 37 | `theorem` | [isTopologicalBasis_cylinders](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/istopologicalbasis-cylinders--99d824f795db5aa0d8d13977.md) | 365 | `result-track:99d824f795db5aa0d8d13977a25ad6c1922b489d0abec40502fc76bcfd2ece0e` |
| 38 | `theorem` | [isOpen_iff_dist](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/isopen-iff-dist--4e5e4199a0862a782c64f0e3.md) | 390 | `result-track:4e5e4199a0862a782c64f0e3e3aaa12a5c0e53207961093bdbd843dd6967dfd4` |
| 39 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/metricspace--90d304dc35c256cbfe815f2e.md) | 416 | `declaration-track:90d304dc35c256cbfe815f2e0025a09703b991af281c35743fe714ad37015d17` |
| 40 | `def` | [metricSpaceOfDiscreteUniformity](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/metricspaceofdiscreteuniformity--273f423af8ef1acf3771685c.md) | 424 | `declaration-track:273f423af8ef1acf3771685c8e4ee017c80600ebd54abc49128403dfb922813c` |
| 41 | `def` | [metricSpaceNatNat](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/metricspacenatnat--04d0c6ec7c6179fe73a8d343.md) | 462 | `declaration-track:04d0c6ec7c6179fe73a8d34359a5bd59cf3cbadf158dae3fec9a2661ebe2f94b` |
| 42 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/completespace--bb2ef041845d8cfafa0f6b0a.md) | 468 | `result-track:bb2ef041845d8cfafa0f6b0a3262db0782e6da70caebf539a840841add23b1af` |
| 43 | `theorem` | [exists_disjoint_cylinder](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/exists-disjoint-cylinder--bc700b4169cf03c9eb3484c0.md) | 487 | `result-track:bc700b4169cf03c9eb3484c003dd9cf91ba7a7d7578158a1b55866aa4be9115b` |
| 44 | `def` | [shortestPrefixDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/shortestprefixdiff--a8106e393f68e31e6170fa0a.md) | 506 | `declaration-track:a8106e393f68e31e6170fa0abd6fd05b5e24c1d89d7d58c93d3773df7686619f` |
| 45 | `theorem` | [firstDiff_lt_shortestPrefixDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/firstdiff-lt-shortestprefixdiff--21e435c1e9068302323866d8.md) | 510 | `result-track:21e435c1e9068302323866d85cf97bf0563ab00e878954a3b0d9494d7e6f9605` |
| 46 | `theorem` | [shortestPrefixDiff_pos](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/shortestprefixdiff-pos--bca3d12681e58a8db2b34ea0.md) | 522 | `result-track:bca3d12681e58a8db2b34ea002459e09152394856dc890b8d1015f54d1e6c161` |
| 47 | `def` | [longestPrefix](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/longestprefix--9c855390526dd4f26fc59cbb.md) | 531 | `declaration-track:9c855390526dd4f26fc59cbbdda1df5cbd25e7938051087d99f387376ab9e311` |
| 48 | `theorem` | [firstDiff_le_longestPrefix](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/firstdiff-le-longestprefix--10a88cad9c6bfe450733456d.md) | 535 | `result-track:10a88cad9c6bfe450733456df32bba746267e2f073c98e99054358f1630cbc6e` |
| 49 | `theorem` | [inter_cylinder_longestPrefix_nonempty](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/inter-cylinder-longestprefix-nonempty--d62224e7ac73e74486fd820c.md) | 542 | `result-track:d62224e7ac73e74486fd820c4d82394fd041cb2804cbf6c490d4878043bff4e2` |
| 50 | `theorem` | [disjoint_cylinder_of_longestPrefix_lt](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/disjoint-cylinder-of-longestprefix-lt--24d7caace45ce1273d269f35.md) | 557 | `result-track:24d7caace45ce1273d269f359fc5f6cc84e76a290b6b4edaef9de2683ab38704` |
| 51 | `theorem` | [cylinder_longestPrefix_eq_of_longestPrefix_lt_firstDiff](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/cylinder-longestprefix-eq-of-longestprefix-lt-firstdiff--6da93f1847d99bc0c1fbed0c.md) | 569 | `result-track:6da93f1847d99bc0c1fbed0c5fd7ea2bc67375a7f63b0b57045cfc14672add8b` |
| 52 | `theorem` | [exists_lipschitz_retraction_of_isClosed](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/exists-lipschitz-retraction-of-isclosed--740620ece61280eceeecab74.md) | 595 | `result-track:740620ece61280eceeecab746f90975454684935f7dc117bd16ba62c4d313c2b` |
| 53 | `theorem` | [exists_retraction_of_isClosed](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/exists-retraction-of-isclosed--1f14a366069ce0cb11c07d7e.md) | 699 | `result-track:1f14a366069ce0cb11c07d7ebec43d06fae443ffe5f1a5d0e69176288067b3ee` |
| 54 | `theorem` | [exists_retraction_subtype_of_isClosed](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/exists-retraction-subtype-of-isclosed--ce6b869fdb4d8f773d3a715e.md) | 705 | `result-track:ce6b869fdb4d8f773d3a715e127a81aae6bb5d43888a83b0fd6fbad70f11328b` |
| 55 | `theorem` | [exists_nat_nat_continuous_surjective_of_completeSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/exists-nat-nat-continuous-surjective-of-completespace--334088dcc5550567adf83eac.md) | 722 | `result-track:334088dcc5550567adf83eac6bd83a1856c638506088f44b982ceac495da4dca` |
| 56 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist--ae61de452f42e740256eb61c.md) | 822 | `declaration-track:ae61de452f42e740256eb61cd928c1b4731ea941f7000de370e9ebe41d0b61e0` |
| 57 | `theorem` | [dist_eq_tsum](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist-eq-tsum--3bcff28bdd40c7f7f9e34a9d.md) | 828 | `result-track:3bcff28bdd40c7f7f9e34a9d3604a6c40722d78e5cdc6563b80f3e033941975f` |
| 58 | `theorem` | [dist_summable](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist-summable--fec055fe88101047cc3e5708.md) | 833 | `result-track:fec055fe88101047cc3e57086e423bef80f45a87828f336962b00338cc26007f` |
| 59 | `theorem` | [min_dist_le_dist_pi](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/min-dist-le-dist-pi--cf0f099a71568872708a5b19.md) | 840 | `result-track:cf0f099a71568872708a5b197829a13d0fead6458c5392d55b94e984e815a9f0` |
| 60 | `theorem` | [dist_le_dist_pi_of_dist_lt](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/dist-le-dist-pi-of-dist-lt--594c92c75fd034541a51973c.md) | 845 | `result-track:594c92c75fd034541a51973c3d78911c431d69ba285ed236552197cec5cd22c1` |
| 61 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/PiNat/Variant17a35d0ff7a0b3ecc95cf2009968fc6ee4b40c38051f0854d67ad9c0f6bb2434.lean/declarations/metricspace--f2244024255684065722a91c.md) | 858 | `declaration-track:f2244024255684065722a91c323b7134b15f449c10c1c98f0a0090bf3eeffb88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
