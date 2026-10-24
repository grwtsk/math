# Verification target: GRWTSK.Topology.GeneralTopology.Spectrum.Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8047e6528b21f30cbf65849dca0d5a7a836fc76e",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8047e6528b21f30cbf65849dca0d5a7a836fc76e`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IsAlgClosed.Spectrum` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Liouville` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.RadiusLiminf` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.CharacterSpace` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Exponential` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/spectralradius--c424e3fad8cd16496630e1f7.md) | 55 | `declaration-track:c424e3fad8cd16496630e1f7773309bd7d98c4fc3095d181886fee1d28170380` |
| 2 | `theorem` | [SpectralRadius.of_subsingleton](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/spectralradius-of-subsingleton--281dcab1a99eca6fc6d19181.md) | 75 | `result-track:281dcab1a99eca6fc6d1918136d48a75bf2a0b9ce93eb26b5bed521c4fe9146e` |
| 3 | `theorem` | [spectralRadius_zero](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/spectralradius-zero--2211682c9fc9f876923f059d.md) | 80 | `result-track:2211682c9fc9f876923f059deca3fce762c79c1f8d58bb257ff0a8b96f06f1d6` |
| 4 | `theorem` | [mem_resolventSet_of_spectralRadius_lt](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/mem-resolventset-of-spectralradius-lt--698deff3b2240e6716b5eb91.md) | 85 | `result-track:698deff3b2240e6716b5eb91cec352441318596cb9b956050009b61d34cc53e4` |
| 5 | `theorem` | [isOpen_resolventSet](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/isopen-resolventset--737ea84be600858db08c4390.md) | 92 | `result-track:737ea84be600858db08c4390772cc98864dde9f58c59f0e931704d37034a5a44` |
| 6 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/isclosed--dd41bb7f72eb785e05aaba15.md) | 96 | `result-track:dd41bb7f72eb785e05aaba15725c1929358e81c46a7ed6eb92d181056c43875c` |
| 7 | `theorem` | [mem_resolventSet_of_norm_lt_mul](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/mem-resolventset-of-norm-lt-mul--1bf00fc5ad1080fd5297d2a5.md) | 100 | `result-track:1bf00fc5ad1080fd5297d2a57b86a7abdf1fa14fbbe6a78c7f62dd53e80fc459` |
| 8 | `theorem` | [mem_resolventSet_of_norm_lt](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/mem-resolventset-of-norm-lt--076e4ddf639c72a2f0357b14.md) | 112 | `result-track:076e4ddf639c72a2f0357b14ae7c9ec8dbf441547317dfe8cc581aabcd7ee4d2` |
| 9 | `theorem` | [norm_le_norm_mul_of_mem](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/norm-le-norm-mul-of-mem--215c5fa8515a1fb666ac160d.md) | 116 | `result-track:215c5fa8515a1fb666ac160da34efe096f18188516bd595b193b8c766e37787f` |
| 10 | `theorem` | [norm_le_norm_of_mem](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/norm-le-norm-of-mem--b96cc48d14d0a4e888e34173.md) | 120 | `result-track:b96cc48d14d0a4e888e341731b9c8fb4c7432718fd5de2d56737faa5ec27977c` |
| 11 | `theorem` | [subset_closedBall_norm_mul](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/subset-closedball-norm-mul--6c6f4f7b62d9addd51cefc70.md) | 124 | `result-track:6c6f4f7b62d9addd51cefc70605e09b8a58ba25f8d551e50bc0e27615f047e98` |
| 12 | `theorem` | [subset_closedBall_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/subset-closedball-norm--c78b71756be3cd3fc66b91ed.md) | 128 | `result-track:c78b71756be3cd3fc66b91edf5f8ee049c088a83f066b0e7d856031fb6b75abb` |
| 13 | `theorem` | [is_bounded](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/is-bounded--f2dd5b6bcadb065982f5c210.md) | 132 | `result-track:f2dd5b6bcadb065982f5c210310d0b8151ae4161364393dd698d0cfc0462c74e` |
| 14 | `theorem` | [isCompact](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/iscompact--fa11caa58e35e1c99c3deea6.md) | 136 | `result-track:fa11caa58e35e1c99c3deea69d2065b058df30a79b7a9a36d9ebcd229ef020b5` |
| 15 | `theorem` | [spectralRadius_le_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/spectralradius-le-nnnorm--0e58f3013c67ae1e082cddf5.md) | 140 | `result-track:0e58f3013c67ae1e082cddf51dc9ca143dcf24de52e1127d17a0f33e41a0e916` |
| 16 | `theorem` | [exists_nnnorm_eq_spectralRadius_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/exists-nnnorm-eq-spectralradius-of-nonempty--967d842ee618f10af1acc1e1.md) | 145 | `result-track:967d842ee618f10af1acc1e16684de46e0f63add594191b0030c2d8ee2256979` |
| 17 | `theorem` | [spectralRadius_lt_of_forall_lt_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/spectralradius-lt-of-forall-lt-of-nonempty--b831529c520a59e8abd6277a.md) | 151 | `result-track:b831529c520a59e8abd6277aa21b0810ba8accc451019d308f81369e36729941` |
| 18 | `theorem` | [spectralRadius_le_pow_nnnorm_pow_one_div](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/spectralradius-le-pow-nnnorm-pow-one-div--727257ca6d29bf4781d429c0.md) | 163 | `result-track:727257ca6d29bf4781d429c0f331cdbba8854d435d91c5d1db39c31de2ded274` |
| 19 | `theorem` | [spectralRadius_le_liminf_pow_nnnorm_pow_one_div](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/spectralradius-le-liminf-pow-nnnorm-pow-one-div--b119ba66150d35b5082d2466.md) | 183 | `result-track:b119ba66150d35b5082d2466c0524d6ca029e4be45508233b56f39e354a1bc95` |
| 20 | `theorem` | [hasDerivAt_resolvent](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/hasderivat-resolvent--4ef1dc096a7828728cd34c78.md) | 215 | `result-track:4ef1dc096a7828728cd34c78d05d03ec5ac1081d18e44015a9a2755d1ffbb331` |
| 21 | `theorem` | [norm_resolvent_le_forall](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/norm-resolvent-le-forall--b59f1ac6250d6a19a6e2bf88.md) | 226 | `result-track:b59f1ac6250d6a19a6e2bf8802342aadf845128eff9289ec1ad43629923b58c6` |
| 22 | `theorem` | [hasFPowerSeriesOnBall_inverse_one_sub_smul](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/hasfpowerseriesonball-inverse-one-sub-smul--5958e989ec28de79f7a94277.md) | 274 | `result-track:5958e989ec28de79f7a94277730a6fe7d267a7139fd13efe3afdf712c5f0b232` |
| 23 | `theorem` | [isUnit_one_sub_smul_of_lt_inv_radius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/isunit-one-sub-smul-of-lt-inv-radius--800c683c0b9a5bfa35f3cd17.md) | 305 | `result-track:800c683c0b9a5bfa35f3cd171033937f1d6052e8893709117c5750b793f57e31` |
| 24 | `theorem` | [differentiableOn_inverse_one_sub_smul](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/differentiableon-inverse-one-sub-smul--69d35bb99ffe6efe84cf6e5a.md) | 320 | `result-track:69d35bb99ffe6efe84cf6e5a3b69dca3498cd2c4301750212f4e1e1fd7cb81f9` |
| 25 | `theorem` | [limsup_pow_nnnorm_pow_one_div_le_spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/limsup-pow-nnnorm-pow-one-div-le-spectralradius--7cec78bc26cf30a3a80e779f.md) | 344 | `result-track:7cec78bc26cf30a3a80e779f153a84169c54816d2a3cd2a4e7c2d499dcf872ab` |
| 26 | `theorem` | [pow_nnnorm_pow_one_div_tendsto_nhds_spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/pow-nnnorm-pow-one-div-tendsto-nhds-spectralradius--45a877e4a73189a7cba01cd3.md) | 364 | `result-track:45a877e4a73189a7cba01cd3065086b06b2ae117b3e4a72a02218fc0e4151f64` |
| 27 | `theorem` | [pow_norm_pow_one_div_tendsto_nhds_spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/pow-norm-pow-one-div-tendsto-nhds-spectralradius--a53fbb66f834675b0dcc2ce0.md) | 374 | `result-track:a53fbb66f834675b0dcc2ce0d59273502eda2d547fc7b1126c2e6924841a6572` |
| 28 | `theorem` | [nonempty](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/nonempty--5d12c84510e93dc55f23cc17.md) | 390 | `result-track:5d12c84510e93dc55f23cc17b5ac9935dc0e88c1da061c9681cbe7d57dfa0d0e` |
| 29 | `theorem` | [exists_nnnorm_eq_spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/exists-nnnorm-eq-spectralradius--7b4ad3de4c2b52b98eac8556.md) | 425 | `result-track:7b4ad3de4c2b52b98eac8556ade5208c5057b967d16fda51228a199b2e0e2ef9` |
| 30 | `theorem` | [spectralRadius_lt_of_forall_lt](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/spectralradius-lt-of-forall-lt--cdba3929c9c3e3b768e9d055.md) | 431 | `result-track:cdba3929c9c3e3b768e9d0558c3733b77c25a687f27e82e2a09d2e55246d5e0f` |
| 31 | `theorem` | [map_polynomial_aeval](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/map-polynomial-aeval--c887e93108e6263e88365214.md) | 441 | `result-track:c887e93108e6263e88365214e5bd8229c2f09498a70024b930eeeaf0f6edacfe` |
| 32 | `theorem` | [map_pow](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/map-pow--a13520b0a024812cc3fcaf15.md) | 449 | `result-track:a13520b0a024812cc3fcaf15ab10c5b22b7e984c1cd8ed98677344516e461b97` |
| 33 | `theorem` | [algebraMap_eq_of_mem](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/algebramap-eq-of-mem--4fd343d97ce4f9476542921b.md) | 462 | `result-track:4fd343d97ce4f9476542921bd932bd7ebf6a5350e20c7992156e33e4ba92fd64` |
| 34 | `def` | [_root_.NormedRing.algEquivComplexOfComplete](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/root-normedring-algequivcomplexofcomplete--1fe21557396c12e4b77fce68.md) | 476 | `declaration-track:1fe21557396c12e4b77fce687638cc9ecb36c564b1ad09fd1eeec6b376cf92b3` |
| 35 | `theorem` | [exp_mem_exp](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/exp-mem-exp--e87c99f73fe9aaa46b2ddb67.md) | 494 | `result-track:e87c99f73fe9aaa46b2ddb67dc43ad1ad0c5007abf4b8d975b28276def25b060` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/instance--5e2a200222e97a58dc73169e.md) | 535 | `declaration-track:5e2a200222e97a58dc73169e8d980c9b9c19e03400d6e407f918a6238b3b0307` |
| 37 | `def` | [toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/tocontinuouslinearmap--b118ebb4a2f0e7927a99f600.md) | 543 | `declaration-track:b118ebb4a2f0e7927a99f600c99d102ed6dc628b1026a99345fdda6e0be1bbde` |
| 38 | `theorem` | [coe_toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/coe-tocontinuouslinearmap--ec780fcb074f69884b1b93a9.md) | 548 | `result-track:ec780fcb074f69884b1b93a94fb251e690735db2c9ad03bdb5773ab2e93b6dfc` |
| 39 | `theorem` | [norm_apply_le_self_mul_norm_one](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/norm-apply-le-self-mul-norm-one--bd8a4dee057f9c2753ae16d5.md) | 552 | `result-track:bd8a4dee057f9c2753ae16d55392b9a083ccd11b0e47da91aa1f70215e2810ef` |
| 40 | `theorem` | [norm_apply_le_self](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/norm-apply-le-self--d6a4ded44599eab5916fbdef.md) | 557 | `result-track:d6a4ded44599eab5916fbdef045333061f5306bb310645d57ba013901ca67533` |
| 41 | `theorem` | [toContinuousLinearMap_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/tocontinuouslinearmap-norm--88c0f82a1e148b5b95500179.md) | 570 | `result-track:88c0f82a1e148b5b95500179edd0e377f4c81e6e5280ba27063e052bb81b2b42` |
| 42 | `def` | [equivAlgHom](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/equivalghom--d0ea294acba922fa9c201187.md) | 590 | `declaration-track:d0ea294acba922fa9c20118729540920e66f409b35c218acd364150eccd0b9c5` |
| 43 | `theorem` | [equivAlgHom_coe](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/equivalghom-coe--4cb98a1feb2e5e5e8f6a64e3.md) | 600 | `result-track:4cb98a1feb2e5e5e8f6a64e3800b84edeaf5d49757c319f8f843396f9e771a82` |
| 44 | `theorem` | [equivAlgHom_symm_coe](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.lean/declarations/equivalghom-symm-coe--e0e5c02ea463e01a6459dd62.md) | 605 | `result-track:e0e5c02ea463e01a6459dd62dbdc0507b22b53c348c0848563e21b13d8c3fdb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
