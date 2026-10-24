# Verification target: GRWTSK.Topology.GeneralTopology.SmoothingSeminorm.Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78335489fe106e5b36b836341da5d119cb2a2e9a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78335489fe106e5b36b836341da5d119cb2a2e9a`.

Source path: `GRWTSK/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.GroupWithZero.Bounds` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Unbundled.RingSeminorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Sequences` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [smoothingSeminormSeq](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingseminormseq--0b6d0c983b73cb3281897143.md) | 60 | `declaration-track:0b6d0c983b73cb3281897143850a38330fa6a643fae506b9f4e03a41dc901c91` |
| 2 | `theorem` | [smoothingSeminormSeq_exists_pnat](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingseminormseq-exists-pnat--6a4d343e2e0cbf0f243ec339.md) | 64 | `result-track:6a4d343e2e0cbf0f243ec339db5e73ba2f84f85941025a0ae10f2f0a3c7310d6` |
| 3 | `theorem` | [smoothingSeminormSeq_tendsto_aux](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingseminormseq-tendsto-aux--df9c831f743bf3faacc9c252.md) | 69 | `result-track:df9c831f743bf3faacc9c2522d914cadeb87d33d4b05470d043a11ff8fdda7cb` |
| 4 | `theorem` | [zero_mem_lowerBounds_smoothingSeminormSeq_range](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/zero-mem-lowerbounds-smoothingseminormseq-range--060bef131bbcf637aba3aecd.md) | 90 | `result-track:060bef131bbcf637aba3aecdcf41c985c24baee0fc386fa91db9eed1e7c7eda7` |
| 5 | `theorem` | [smoothingSeminormSeq_bddBelow](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingseminormseq-bddbelow--5fb0224266cb52d8cfa5778f.md) | 96 | `result-track:5fb0224266cb52d8cfa5778f2880293c3d3eddc1a1fe02c988cc4b3cc94ddfbc` |
| 6 | `abbrev` | [smoothingFun](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingfun--d3ed0886b21ae462601ebd4d.md) | 101 | `declaration-track:d3ed0886b21ae462601ebd4d28d5d7b617d835824f625fe78646f8428ad217b1` |
| 7 | `theorem` | [tendsto_smoothingFun_of_eq_zero](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/tendsto-smoothingfun-of-eq-zero--fa17cc4b0f0223394f5126d5.md) | 105 | `result-track:fa17cc4b0f0223394f5126d5970bd7947ba42cd08fe58f59eae6d85a478eb7e4` |
| 8 | `theorem` | [tendsto_smoothingFun_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/tendsto-smoothingfun-of-ne-zero--24c4f229ffa765e5a63e54ac.md) | 121 | `result-track:24c4f229ffa765e5a63e54ac9da89386ae96aa11d00a976987a72be9091416fc` |
| 9 | `theorem` | [tendsto_smoothingFun_of_map_one_le_one](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/tendsto-smoothingfun-of-map-one-le-one--f86f212b110b77dd1db370aa.md) | 244 | `result-track:f86f212b110b77dd1db370aa00815bc58494302b69efd9842063a3a9f26b1d60` |
| 10 | `theorem` | [smoothingFun_nonneg](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingfun-nonneg--350193b1d2e771112712f725.md) | 251 | `result-track:350193b1d2e771112712f7255974c9141ff4a1991f16cb04b34660e39d6a7df3` |
| 11 | `theorem` | [smoothingFun_one_le](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingfun-one-le--4cba6c84b2e916b5a4eca5d0.md) | 256 | `result-track:4cba6c84b2e916b5a4eca5d0de57647d44b6f8e6158214b6cdadcf4913539430` |
| 12 | `theorem` | [smoothingFun_le](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingfun-le--c0978e6ea8c844721210600d.md) | 271 | `result-track:c0978e6ea8c844721210600da699e512e4a4a1150aad0047724b07e6c7254dd1` |
| 13 | `theorem` | [smoothingFun_le_self](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingfun-le-self--ef29e198b4d753be5ff9f13a.md) | 276 | `result-track:ef29e198b4d753be5ff9f13a1ec687f0dd08915187f7bf810adf014f02ecfb84` |
| 14 | `def` | [mu](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/mu--f119e4d6a94bae3313721731.md) | 288 | `declaration-track:f119e4d6a94bae3313721731ac13ace22f1c3b17836b3013203961d3769e29de` |
| 15 | `theorem` | [mu_property](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/mu-property--929984d75499ec4f7889364d.md) | 290 | `result-track:929984d75499ec4f7889364d0e096df5af8255eeab1144783756599bae7bfe8d` |
| 16 | `theorem` | [mu_le](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/mu-le--bf66daff81737865dc93f384.md) | 294 | `result-track:bf66daff81737865dc93f38401bfcb9445afc6ce83d13dd730ceed3c2b5ec5eb` |
| 17 | `theorem` | [mu_bdd](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/mu-bdd--cd50de3fea48ec44a921c257.md) | 297 | `result-track:cd50de3fea48ec44a921c257a42bfc814cb19350fbf7e189ee6a2654c4093394` |
| 18 | `theorem` | [μ_bddBelow](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/bddbelow--b212f23ab9219d7fd0b14f7d.md) | 304 | `result-track:b212f23ab9219d7fd0b14f7d7060358fc0c70b14e3f356a3211dab83ba42e1c8` |
| 19 | `theorem` | [μ_bddAbove](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/bddabove--0dbe676d6980da8c4dd22220.md) | 313 | `result-track:0dbe676d6980da8c4dd22220fd1619d2c05d26847026964adf0ecf33eea4f00a` |
| 20 | `theorem` | [μ_bddAbove'](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/bddabove--3fe92c4c10ae5db01e64a1aa.md) | 332 | `result-track:3fe92c4c10ae5db01e64a1aad6dac96aeaea58bc652c214d0a836b84ea2d9061` |
| 21 | `theorem` | [μ_nonempty](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/nonempty--e3513d8f3f6fa528832210bd.md) | 339 | `result-track:e3513d8f3f6fa528832210bd6bd9991722f639a5715375302f7aa2cf0e672799` |
| 22 | `theorem` | [μ_limsup_le_one](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/limsup-le-one--c830bba2ac05fd71e29996ee.md) | 356 | `result-track:c830bba2ac05fd71e29996ee901d933b858a6e8df9c6ee8215a5451017a778a2` |
| 23 | `theorem` | [limsup_mu_le](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/limsup-mu-le--97f49709116adefbf97de41a.md) | 383 | `result-track:97f49709116adefbf97de41ad01513b0dbd9309e30a7fa4c307f5bb60e83c189` |
| 24 | `theorem` | [tendsto_smoothingFun_comp](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/tendsto-smoothingfun-comp--826017b03b9312dfd33f10a4.md) | 422 | `result-track:826017b03b9312dfd33f10a43dcd586634174fb4c9dab540b3c06f60f7db558a` |
| 25 | `theorem` | [isNonarchimedean_smoothingFun](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/isnonarchimedean-smoothingfun--000ab54f209a63dc3d16bb6c.md) | 429 | `result-track:000ab54f209a63dc3d16bb6c0a6a9cc21a89e04ca66b9b4ad855ad1f46b32d1b` |
| 26 | `def` | [smoothingSeminorm](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingseminorm--01b98c29865d060faa229faf.md) | 523 | `declaration-track:01b98c29865d060faa229faf012ca2d3fe1a563d93f00cd733abac7b6f58484f` |
| 27 | `theorem` | [smoothingSeminorm_map_one_le_one](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingseminorm-map-one-le-one--678879c7eb2b1ae660640800.md) | 554 | `result-track:678879c7eb2b1ae6606408004c22a9c7488c801a297a5d337dbd1c5f78bcd013` |
| 28 | `theorem` | [isPowMul_smoothingFun](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/ispowmul-smoothingfun--f4171c5403d82535e6df5f78.md) | 560 | `result-track:f4171c5403d82535e6df5f785e0b4049295dfa5f849a43f1f23baece14d16f86` |
| 29 | `theorem` | [smoothingFun_of_powMul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingfun-of-powmul--fc3173f0c926df4083f165a3.md) | 575 | `result-track:fc3173f0c926df4083f165a3cd31f857e2867fc851a83ebfaf50037ab84d5505` |
| 30 | `theorem` | [smoothingFun_apply_of_map_mul_eq_mul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingfun-apply-of-map-mul-eq-mul--b7a926aaa22af8e304f0e3d8.md) | 587 | `result-track:b7a926aaa22af8e304f0e3d8edc325fbef3c76098c6434120db6a7c3dffc6340` |
| 31 | `theorem` | [smoothingSeminorm_apply_of_map_mul_eq_mul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingseminorm-apply-of-map-mul-eq-mul--4db4f22c6924866b48d5447e.md) | 608 | `result-track:4db4f22c6924866b48d5447e4161a6c933dd376ba8d6ce9b5d75f4cfba916b2c` |
| 32 | `theorem` | [smoothingFun_of_map_mul_eq_mul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingfun-of-map-mul-eq-mul--06833d77fa49c7c0e379f5fd.md) | 614 | `result-track:06833d77fa49c7c0e379f5fd8fb410c3a990591259fa62aaded5d1385708e455` |
| 33 | `theorem` | [smoothingSeminorm_of_mul](../../../../../mathematics/Topology/GeneralTopology/SmoothingSeminorm/Variant1f6d1726ccf6c71d6d1a9cb717bf3d8d7df481dae856591560f8918ae617a065.lean/declarations/smoothingseminorm-of-mul--72813026965da09c1ec57b73.md) | 633 | `result-track:72813026965da09c1ec57b73ca3ae8e9689dae1ae531a6bbe1a358235ee11d5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
