# Verification target: GRWTSK.Topology.GeneralTopology.UnitInterval.Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02f68dd5dbae8c74e92697f072a1f0d9ab02c96b",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02f68dd5dbae8c74e92697f072a1f0d9ab02c96b`.

Source path: `GRWTSK/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.ProjIcc` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Instances` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [unitInterval](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/unitinterval--2824e14d30ce4858466b263d.md) | 42 | `declaration-track:2824e14d30ce4858466b263d28f0b8b4c7c402b94f5ad8a78a795661e15a2997` |
| 2 | `theorem` | [zero_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/zero-mem--da511d558fa75411b462fc65.md) | 51 | `result-track:da511d558fa75411b462fc6543ac944795866e337ab05dfa1f8dd3a239f24afa` |
| 3 | `theorem` | [one_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/one-mem--01b778699523a781d323aba0.md) | 55 | `result-track:01b778699523a781d323aba0960eb37bf5178bc2f7f5a35d3a945f594f93cc3f` |
| 4 | `theorem` | [mul_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/mul-mem--7e89dcf3ce6e9fc295fd246d.md) | 59 | `result-track:7e89dcf3ce6e9fc295fd246df5a5e1ffe5bfc0be3248dab1d65c2eb478cc80dc` |
| 5 | `theorem` | [div_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/div-mem--6dac2b4dad84f37fbf76e25b.md) | 63 | `result-track:6dac2b4dad84f37fbf76e25bd7714a5ab97f833aca53a9ae49d0cf972782f52c` |
| 6 | `theorem` | [fract_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/fract-mem--4e72df0bc5bc3822707e0054.md) | 67 | `result-track:4e72df0bc5bc3822707e0054df816c8d0ccfc90e0582f744d2547b3a1190aed1` |
| 7 | `theorem` | [mem_iff_one_sub_mem](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/mem-iff-one-sub-mem--bdde541a78fc048eb87416c3.md) | 71 | `result-track:bdde541a78fc048eb87416c39d541b42a0076516b0fe7936ab33678ddbc698b3` |
| 8 | `instance` | [hasZero](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/haszero--394387dc079e6dcc131b8e8e.md) | 76 | `declaration-track:394387dc079e6dcc131b8e8e1f9f5f2137eb91ab011ebdf587a16e3ff40af7b6` |
| 9 | `instance` | [hasOne](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/hasone--a1d2123a6421c5810d88ea8b.md) | 80 | `declaration-track:a1d2123a6421c5810d88ea8b3139a37b5886eed98e748c99107371dc2acd28e0` |
| 10 | `theorem` | [coe_ne_zero](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/coe-ne-zero--d820669f1fc5bca3de7413ff.md) | 84 | `result-track:d820669f1fc5bca3de7413ff5905a8011c06af4bd39d48a0d3abae9b64d8db47` |
| 11 | `theorem` | [coe_ne_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/coe-ne-one--7de3ec46f10d7a49be2a6e01.md) | 88 | `result-track:7de3ec46f10d7a49be2a6e0124cbe9601b3c50fed15a519ddde7b4c0315c48b0` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/instance--beeaa45aa1805fb5f0c0163e.md) | 92 | `declaration-track:beeaa45aa1805fb5f0c0163e3cbf87ed73c38d6d099b8af829a59c2208cf5649` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/instance--a3471fade57cca0c43a4ce5d.md) | 95 | `declaration-track:a3471fade57cca0c43a4ce5ddfe30dac79cadc37327c95f731b48c6b02d1efc4` |
| 14 | `theorem` | [mul_le_left](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/mul-le-left--b43e1f07d1276947cef32756.md) | 99 | `result-track:b43e1f07d1276947cef32756b8371eab8f7ab24eb16f9a2c9691d8e1ba825355` |
| 15 | `theorem` | [mul_le_right](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/mul-le-right--ffe1f0a5a51e2b9df0b37867.md) | 103 | `result-track:ffe1f0a5a51e2b9df0b37867bef516a35e6abb37687021a28f6d1c8c337a7633` |
| 16 | `def` | [symm](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/symm--8e599c05a68af96748350718.md) | 108 | `declaration-track:8e599c05a68af967483507183c724b2995318205ea44a9d7fa66ba8ae06a9c3f` |
| 17 | `theorem` | [symm_zero](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/symm-zero--695b0964142b6621f1ca897e.md) | 115 | `result-track:695b0964142b6621f1ca897e4324b6f0bf5b9057ade9901cb5a921e22d7f898b` |
| 18 | `theorem` | [symm_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/symm-one--384a771fcbbacfe0f1493967.md) | 120 | `result-track:384a771fcbbacfe0f1493967bca2dbc6b8e2cee7ea51becf611aa0747f5eced9` |
| 19 | `theorem` | [symm_symm](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/symm-symm--b9bd3ee0573baafba06051b0.md) | 125 | `result-track:b9bd3ee0573baafba06051b0a048da4aa4c1eded3e1b9252c976782dbb3186f4` |
| 20 | `theorem` | [coe_symm_eq](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/coe-symm-eq--d6d85c77336b9e23882ea464.md) | 130 | `result-track:d6d85c77336b9e23882ea464893680de2f8049323cae5c1825aaccb0f7f2fae1` |
| 21 | `theorem` | [continuous_symm](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/continuous-symm--8160177c63a4120d1003d5eb.md) | 136 | `result-track:8160177c63a4120d1003d5eb02f7f664ca23989f837ea62cd7feaada31ec798b` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/instance--1c018acabb31f312474919fb.md) | 140 | `declaration-track:1c018acabb31f312474919fb7b4a3795e08ddb561f91024f5ede454e2a3e3bd1` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/example--084a8f00eac0f3bddd2701b5.md) | 144 | `declaration-track:084a8f00eac0f3bddd2701b513952ce1905d65776f2445cdf32f34d84a4effbb` |
| 24 | `theorem` | [nonneg](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/nonneg--be757adf0316751756d2eabc.md) | 146 | `result-track:be757adf0316751756d2eabc13d044a437039273910ebbcaa8bcfc8b4d6a6a38` |
| 25 | `theorem` | [one_minus_nonneg](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/one-minus-nonneg--8116614545c9d1591c3518b7.md) | 150 | `result-track:8116614545c9d1591c3518b789d43bad859001436b87fe2bef816abcc442951e` |
| 26 | `theorem` | [le_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/le-one--48153b084d01c9125ab37b1d.md) | 153 | `result-track:48153b084d01c9125ab37b1d80690f998fa7df39d9437c9704046cf89548b902` |
| 27 | `theorem` | [one_minus_le_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/one-minus-le-one--995ac6515450216addb339ef.md) | 157 | `result-track:995ac6515450216addb339effb21662c94240749defbc8a538f2042606e848cd` |
| 28 | `theorem` | [add_pos](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/add-pos--03bde80bb00407b2e0076a97.md) | 160 | `result-track:03bde80bb00407b2e0076a973bb03fb8d05d47137b4d0e9e0a0a3e6d197d8dea` |
| 29 | `theorem` | [nonneg'](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/nonneg--67365edadfe243317c04f79e.md) | 165 | `result-track:67365edadfe243317c04f79e3bb49b4c403959e10e24213f101a62b5aac2d63a` |
| 30 | `theorem` | [le_one'](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/le-one--a6f81bc0da8685f0e89b7b41.md) | 170 | `result-track:a6f81bc0da8685f0e89b7b41a63fa621424db8567cf934782fe4b87a20172bb8` |
| 31 | `theorem` | [mul_pos_mem_iff](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/mul-pos-mem-iff--e70e0fe990871dd7bbc9bb74.md) | 174 | `result-track:e70e0fe990871dd7bbc9bb74756a36c653bef623446a2fada107652ed9f9f0dd` |
| 32 | `theorem` | [two_mul_sub_one_mem_iff](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/two-mul-sub-one-mem-iff--6ce3d588e0eea5980f6f09c4.md) | 182 | `result-track:6ce3d588e0eea5980f6f09c47fa6b63f581299ac99561a67f3407f6739adb029` |
| 33 | `theorem` | [projIcc_eq_zero](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/projicc-eq-zero--bc6f968c195db8e63c27d5cc.md) | 189 | `result-track:bc6f968c195db8e63c27d5cce513f98752953ee9422d95a481600c1fe406137d` |
| 34 | `theorem` | [projIcc_eq_one](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/projicc-eq-one--666614cdf0f6f30850798362.md) | 194 | `result-track:666614cdf0f6f308507983625967f193c0df2ee08e64397f3950b7c7b05bb457` |
| 35 | `macro` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/macro--9577f7281aad831bfea89cf5.md) | 202 | `declaration-track:9577f7281aad831bfea89cf5702d1172cc96cb1781f2d5387522ef6b001365fb` |
| 36 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/example--46a521e39727c9e4780752d6.md) | 210 | `declaration-track:46a521e39727c9e4780752d6f30bb9254986a9ad26e499020b0a6b38110c4c4c` |
| 37 | `theorem` | [affineHomeomorph_image_I](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/affinehomeomorph-image-i--44094198aaff111cf2263855.md) | 222 | `result-track:44094198aaff111cf2263855c71e6b414b7a87e48a50ef10ff01f30195a753ce` |
| 38 | `def` | [iccHomeoI](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/icchomeoi--4529ebf53ca4483b5b226a0f.md) | 229 | `declaration-track:4529ebf53ca4483b5b226a0fd3144ff372dc5531c060c48518d794a94c3f3e71` |
| 39 | `theorem` | [iccHomeoI_apply_coe](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/icchomeoi-apply-coe--03e18dc67ce5c77483fa6580.md) | 239 | `result-track:03e18dc67ce5c77483fa6580ceeabf0f302eb662aad9567995de93504f2625c5` |
| 40 | `theorem` | [iccHomeoI_symm_apply_coe](../../../../../mathematics/Topology/GeneralTopology/UnitInterval/Variant30af0ad991941e4973e08bbdc094301d59e04ad149747bde9f41a36597b09d45.lean/declarations/icchomeoi-symm-apply-coe--aea2f2be69f175d251cdbe6f.md) | 246 | `result-track:aea2f2be69f175d251cdbe6f8f5fdd26b0118aaafc940b8549a78196ff74fda9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
