# Verification target: GRWTSK.Topology.GeneralTopology.PowerSeries.Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af148b1723747ac2c0787b31519c296b1f3ce7e1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af148b1723747ac2c0787b31519c296b1f3ce7e1`.

Source path: `GRWTSK/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Enumerative.Pentagonal.Ring` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_order_pow_mul_prod_one_sub_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/tendsto-order-pow-mul-prod-one-sub-pow--9690679c359693051601e9a7.md) | 53 | `result-track:9690679c359693051601e9a704f0eeedb88404e6476e181fed63c388e09a8f3d` |
| 2 | `theorem` | [tendsto_order_neg_X_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/tendsto-order-neg-x-pow--d476d9b0e3acc308e330ce9f.md) | 64 | `result-track:d476d9b0e3acc308e330ce9fd5c189d76aadff2ec6bcd0c8571689762f9f280c` |
| 3 | `theorem` | [summable_pow_mul_prod_one_sub_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/summable-pow-mul-prod-one-sub-pow--39ebf6696d737b47c8076f6d.md) | 72 | `result-track:39ebf6696d737b47c8076f6de7796db77d5be2273bc7731a4c1dea991b4c8d2e` |
| 4 | `theorem` | [multipliable_one_sub_X_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/multipliable-one-sub-x-pow--31b3bc69e2c6400d71d366bd.md) | 77 | `result-track:31b3bc69e2c6400d71d366bd9e22e643e814894ea0f4ce4c08953429e07e689c` |
| 5 | `def` | [pentagonalSeries](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/pentagonalseries--fcaa49595ca6b7457a39dc08.md) | 89 | `declaration-track:fcaa49595ca6b7457a39dc088b0441ab0e45d759d93a59c5b6538afa8a975b23` |
| 6 | `theorem` | [coeff_pentagonalSeries_eq_zero](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/coeff-pentagonalseries-eq-zero--f729fa8297720be7f4233f57.md) | 95 | `result-track:f729fa8297720be7f4233f57d5b983b50d3daf57517a170c1817da48cb7a6ada` |
| 7 | `theorem` | [coeff_pentagonalSeries_pentagonal](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/coeff-pentagonalseries-pentagonal--faf4e50815d5a7e453d42d32.md) | 99 | `result-track:faf4e50815d5a7e453d42d3290e4cb5916d8ee384a1c9a23d9e2f4eca7f75767` |
| 8 | `theorem` | [coeff_pentagonalSeries_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/coeff-pentagonalseries-eq-zero-iff--72cf66ffe6c6564327b7e752.md) | 104 | `result-track:72cf66ffe6c6564327b7e75275fa1c87c05b19883a2016fc9e895fa2936b7d1a` |
| 9 | `theorem` | [coeff_pentagonalSeries_mul_eq_extend](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/coeff-pentagonalseries-mul-eq-extend--4cd9baa10279a9e91757d309.md) | 108 | `result-track:4cd9baa10279a9e91757d3096c9604c0e2a1507c88aef03abd3b9caf12fd8281` |
| 10 | `theorem` | [hasSum_pentagonalSeries](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/hassum-pentagonalseries--c812720fc657e2dd9751d594.md) | 121 | `result-track:c812720fc657e2dd9751d5941caf1f748380d27eb00a457d5dac89bb098e8a16` |
| 11 | `theorem` | [pentagonalSeries_eq_tsum](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/pentagonalseries-eq-tsum--bcab0c80f6d5ae46a765495e.md) | 130 | `result-track:bcab0c80f6d5ae46a765495e4011e98c1d111fe6b6df3e7b01431a7124045830` |
| 12 | `theorem` | [hasSum_pow_pentagonal_sub_pentagonalSeries](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/hassum-pow-pentagonal-sub-pentagonalseries--646aab8b90d9a24d084a564b.md) | 137 | `result-track:646aab8b90d9a24d084a564b51b23f983c654b22fcb904fb0654dd2e933d4994` |
| 13 | `theorem` | [pentagonalSeries_eq_tsum_pow_pentagonal_sub](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/pentagonalseries-eq-tsum-pow-pentagonal-sub--186817ead8ce1106ac9a6007.md) | 147 | `result-track:186817ead8ce1106ac9a600717f83dd797cdf80104757c58df1f7e44aeb994bb` |
| 14 | `theorem` | [tprod_one_sub_X_pow'](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/tprod-one-sub-x-pow--6d6912ef68ec95905763cf3b.md) | 153 | `result-track:6d6912ef68ec95905763cf3bb08eb2adc45e96ed88304879af6425606bbeebfc` |
| 15 | `theorem` | [coeff_prod_one_sub_X_pow_eventually_eq](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/coeff-prod-one-sub-x-pow-eventually-eq--e09e5e18d2ea36584f070059.md) | 177 | `result-track:e09e5e18d2ea36584f07005939516042fd3ed270cec5f16d4fb1cca2ec6a0f2f` |
| 16 | `theorem` | [hasProd_one_sub_X_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/hasprod-one-sub-x-pow--4b266fb3fc25e0a04a864718.md) | 191 | `result-track:4b266fb3fc25e0a04a86471898ee91a9a8636945ab85617b94a58dd459ca322b` |
| 17 | `theorem` | [tprod_one_sub_X_pow](../../../../../mathematics/Topology/GeneralTopology/PowerSeries/Variant11310320ceebb0eea330fdcb7789489adfeec7836c84675cd55d2b8d0e739abd.lean/declarations/tprod-one-sub-x-pow--eb9e89d9e5b09e03d1b7f181.md) | 198 | `result-track:eb9e89d9e5b09e03d1b7f181bb0e313140c65c1f84c775a7841cdbf85deea3b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
