# Verification target: Ray Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90551029795c1169e59e3a09ff84c1d458a29155",
  "lexical_observation_count": 92,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ray/Variant0d1a68de6331f0d4a65d41743628fa030ceea85a3de9a895b0b8de13ef7c7218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90551029795c1169e59e3a09ff84c1d458a29155`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ray/Variant0d1a68de6331f0d4a65d41743628fa030ceea85a3de9a895b0b8de13ef7c7218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ray/Variant0d1a68de6331f0d4a65d41743628fa030ceea85a3de9a895b0b8de13ef7c7218.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Fin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Module.Algebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray.md) | 46 | `declaration-track:1780f3061de23d7f11eadfbed1ddfa9a2c8d021500df6e8f83cc6315cb078118` |
| 2 | `theorem` | [zero_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/zero-left.md) | 60 | `result-track:fe6fdef34c67b8f49ea8b1763dba22b8a3592cb431d6644ea0ea4492fbd0d8da` |
| 3 | `theorem` | [zero_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/zero-right.md) | 64 | `result-track:3736f47172347347edc422d23c2927b2d4b8f9cdd403e5d86ea5f993e2dfd58a` |
| 4 | `theorem` | [of_subsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/of-subsingleton-source-edition-2.md) | 68 | `result-track:eb45d4c0ec37cbbb0d8f7abeb4a29f30499348a9430a2b2163384ee3da74d167` |
| 5 | `theorem` | [of_subsingleton'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/of-subsingleton.md) | 73 | `result-track:29266bbb5c71da1c9993ab974d868eb05896ee9f562ddee5d2a6e03e63cfb025` |
| 6 | `theorem` | [refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/refl.md) | 79 | `result-track:8d76390986eb4014a82cab9b72761f126aa0a5593ecd69fcdb876dde0817debb` |
| 7 | `theorem` | [rfl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/rfl.md) | 83 | `result-track:84bba822e9e7ead93b887a3d0333888a57928886b8d61a4ae48602a97746bea1` |
| 8 | `theorem` | [symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/symm.md) | 88 | `result-track:b170a78db37c2bb6c93ad9912e212f03249fb6938252c20daf81ecbf3e627b2c` |
| 9 | `theorem` | [exists_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-pos.md) | 93 | `result-track:87774abf5a8dd6dc8b95bace28a8b769b6e006804a8d180b96de274b66684fb9` |
| 10 | `theorem` | [sameRay_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-comm.md) | 97 | `result-track:e2f9cc17c30e72497faa180559f456e633a84110afd42c74dd89232b21d18085` |
| 11 | `theorem` | [trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/trans.md) | 102 | `result-track:6fde6ac4240dcdcf3533dcbcaa1251022b109c449be158b927bae465ecd0608b` |
| 12 | `lemma` | [sameRay_nonneg_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-nonneg-smul-right.md) | 118 | `result-track:f3d9951c8c3fe364c85c1841467272a1f3247a77b21a6f5b27494d0dbd9db7a5` |
| 13 | `lemma` | [sameRay_nonneg_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-nonneg-smul-left.md) | 126 | `result-track:1a96ed53c8d594133df93391650fc8605c55fdf350c925ae1f61efddbd4f5b3b` |
| 14 | `lemma` | [sameRay_pos_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-pos-smul-right.md) | 130 | `result-track:f9754e2b968e9070dbc30409b9ba573e6fedbcbd1979288e2647898a90760f05` |
| 15 | `lemma` | [sameRay_pos_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-pos-smul-left.md) | 134 | `result-track:c747e26bfe75458742ed4db497336038a3c05c7baa438839703c9c4dcefa17dd` |
| 16 | `lemma` | [nonneg_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/nonneg-smul-right.md) | 138 | `result-track:7d24094738400ee3f9e6bed677de5bc576c2000719dc74bbd9bb2f8137572f14` |
| 17 | `lemma` | [nonneg_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/nonneg-smul-left.md) | 142 | `result-track:0da92cc8ded067313eabb1b9dd03eace5a34812dba9461092d9186913f314507` |
| 18 | `theorem` | [pos_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/pos-smul-right.md) | 146 | `result-track:a19ce40bf35ab34e883cfd93571ffc38b26caa86b452e2e7a79b37438019f45e` |
| 19 | `theorem` | [pos_smul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/pos-smul-left.md) | 150 | `result-track:eb0361f32898532c8552f645c03ffaf915992eb506acf01c2c04c48807d55c1a` |
| 20 | `theorem` | [map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/map.md) | 154 | `result-track:c077ec0dabb07749a020b8d9d4a7a5957f95ba215c754e2f9fe4a5a6729b8978` |
| 21 | `theorem` | [Ray Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-map-iff-source-line-161-occurrence-2.md) | 161 | `result-track:5a814feb00bbbb44adebeafb5c197841804ad61692d029b9779a4af2712c5dba` |
| 22 | `theorem` | [sameRay_map_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-map-iff.md) | 170 | `result-track:4fa7c98c76837a00b09f8f8ba2da3c310503d7f235309b531521e691a3b9ca87` |
| 23 | `theorem` | [smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/smul.md) | 175 | `result-track:6a7edcb33f789c8e4080507ffd7d4efef612ac3d60782f0c86694706ab522aa7` |
| 24 | `theorem` | [add_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/add-left.md) | 180 | `result-track:9773ee180f4e3783b3abdc5f3bad456648c918f2c909d4b62fb44a4f0458faf0` |
| 25 | `theorem` | [add_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/add-right.md) | 191 | `result-track:906f53e053361ecf3b4bbb335b5ec1381f56caf41e095293fac1398d8b2f251e` |
| 26 | `def` | [RayVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/rayvector.md) | 200 | `declaration-track:1c9a887a5608c0488395df2ca4fb49131babcff185ff26a938ff12e50240753c` |
| 27 | `instance` | [RayVector.coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/rayvector-coe.md) | 203 | `declaration-track:a41adec86d58a79175913fea70f3359a5447c5a4d88ff5f1ebb0799c54b90533` |
| 28 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/instance-source-edition-6.md) | 206 | `declaration-track:8ed3f53c63a8b284b6d883bc4c3af01a1cc873341b5df835cc04b43c87a91f6f` |
| 29 | `instance` | [RayVector.Setoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/rayvector-setoid.md) | 212 | `declaration-track:3d7d6651c567de254097904131ec038aec10d33596a8e32293c3bd3ab37fb631` |
| 30 | `def` | [Module.Ray](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/module-ray.md) | 220 | `declaration-track:546005e71020524be2c62137b011963fd0d1e97c5db24e99c57d4d89b784b441` |
| 31 | `theorem` | [equiv_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/equiv-iff-sameray.md) | 226 | `result-track:91afb507de1c33376b6b31e30e0c396e97c72ba96cf2858d0728fd207b143fa7` |
| 32 | `def` | [rayOfNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/rayofnezero.md) | 232 | `declaration-track:ebe91c0c94c120053e876ffb1d2fee772148fcb46fac694936f224370bf78b94` |
| 33 | `theorem` | [Module.Ray.ind](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/module-ray-ind.md) | 236 | `result-track:1a1c21aaada7a476777182356f44a5f60b4726d9806ffa1524dde61511fc3ca4` |
| 34 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/instance-source-edition-7.md) | 242 | `declaration-track:9a38ddfeeaea63ef9c6d55c4da9d403388adbaea7e9514a63ba6befa6f0b3c02` |
| 35 | `theorem` | [ray_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/ray-eq-iff.md) | 247 | `result-track:c15e33c5d4914203c76a310c561452489f80001862f0a70c692ae1e3ed4f7ec2` |
| 36 | `theorem` | [ray_pos_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/ray-pos-smul.md) | 253 | `result-track:b940d338eb461641d09d5b29171812893108ca08090c9c3907e0947afe38ddda` |
| 37 | `def` | [RayVector.mapLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/rayvector-maplinearequiv.md) | 258 | `declaration-track:4c3bd2a9a0950e7c11df29b81d26b9937923e30c160070e9621ef386c9836785` |
| 38 | `def` | [Module.Ray.map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/module-ray-map.md) | 262 | `declaration-track:73859d25978d4e912a3f531661c825b1c2387b36b5ed4b29abbb8c184cafcbb7` |
| 39 | `theorem` | [Module.Ray.map_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/module-ray-map-apply.md) | 266 | `result-track:7c09b35d0a668497ce91b0c8caa2b066b66a6d741dba1e3153c492f290cd2b2c` |
| 40 | `theorem` | [Module.Ray.map_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/module-ray-map-refl.md) | 271 | `result-track:758f0ab7ba2ccbcb3e001035a693f61f1e2c3fc72fda8924e8a8e1e75ff461d4` |
| 41 | `theorem` | [Module.Ray.map_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/module-ray-map-symm.md) | 275 | `result-track:c4c57c14dd38deec6244b3a9e2418ebde434c03a0fe75d57bb3261f9d31fc37b` |
| 42 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/instance-source-edition-8.md) | 284 | `declaration-track:ef17a54abfe068546d1ddc4b2f9998a0a6f33317818b2376f9bd4e03878e7ceb` |
| 43 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/instance-source-edition-3.md) | 293 | `declaration-track:81571c8a96d0c911cb81737517545335654362dd44b0bb641b5382261c16f39f` |
| 44 | `theorem` | [Module.Ray.linearEquiv_smul_eq_map](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/module-ray-linearequiv-smul-eq-map.md) | 300 | `result-track:7985b306732c210c99d6cee83afc09c4fe70a9e27fa8ce34c7a3930ccfcff11d` |
| 45 | `theorem` | [smul_rayOfNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/smul-rayofnezero.md) | 305 | `result-track:14f4f59f0ab5349459eb5696f1c6479ce3016b8593e7980c05dd00f12504a770` |
| 46 | `theorem` | [units_smul_of_pos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/units-smul-of-pos.md) | 314 | `result-track:f13e0d1e4ca5212809b771c32da21aed61374ef069c20ecd765f97c36852d144` |
| 47 | `def` | [someRayVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/somerayvector.md) | 320 | `declaration-track:8f4f95e83dd36e9ab7feefa0d9b511cef795db15f32322a18c287feab3ef3f1d` |
| 48 | `theorem` | [someRayVector_ray](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/somerayvector-ray.md) | 325 | `result-track:cefcccda2bf4a7da2aa73a39b848f098f4cf973eb534cbfd70fe27c20ccbd5b0` |
| 49 | `def` | [someVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/somevector.md) | 329 | `declaration-track:02f03f9738444e3fa69e4467badbbee5b12801e5d93a5bbf79e907f9a62d6e50` |
| 50 | `theorem` | [someVector_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/somevector-ne-zero.md) | 334 | `result-track:cd5c636935e37620af5979a90e11656f7f654fe5eed9e4a5205b919a56ade545` |
| 51 | `theorem` | [someVector_ray](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/somevector-ray.md) | 339 | `result-track:93d6fc94e22bddb1c1a3df99342e48b7d483999b9e61409476c4d151bdef11de` |
| 52 | `theorem` | [sameRay_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-neg-iff.md) | 353 | `result-track:f4e62a75e461ad582a4b26feb63b097f8c1b6924ef73cc0968da9db4765f392e` |
| 53 | `theorem` | [sameRay_neg_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-neg-swap.md) | 358 | `result-track:479bc8fc191bc91f5ae956ed54fb1fa71e743e01848f7d2d4f712d00f4467e4f` |
| 54 | `theorem` | [eq_zero_of_sameRay_neg_smul_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/eq-zero-of-sameray-neg-smul-right.md) | 360 | `result-track:822d33bf7d8df6955452aa43e4bdd28a22ff04a6555f5cb9cf6f3214e48ad602` |
| 55 | `theorem` | [eq_zero_of_sameRay_self_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/eq-zero-of-sameray-self-neg.md) | 370 | `result-track:dda888892f12f868d4155b28f112a9ed6161558653b1e02570a73a9e6c282b89` |
| 56 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/instance-source-edition-5.md) | 378 | `declaration-track:8dc308f060f564740813024dd058dbee803689de4697cd614cfc44df8d9e126f` |
| 57 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/coe-neg.md) | 383 | `result-track:d42f492343c910fe1e9994920129b361a1d8ced9835a4b4fc97515cc3b1328b0` |
| 58 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/instance-source-edition-2.md) | 387 | `declaration-track:5dc7d617bf754eb8580a72221a21c912fe4c0bcdd59be3907e1c5679e7ede394` |
| 59 | `theorem` | [equiv_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/equiv-neg-iff.md) | 393 | `result-track:ab93bdd317c909da2903c1347a0da6392e3311f97583dcd9f2e29465e9ca74ca` |
| 60 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/instance.md) | 401 | `declaration-track:1b96922270ae8f81dd778ec377a5c5a4ac43971aec3d78782555ce2652c8610f` |
| 61 | `theorem` | [neg_rayOfNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/neg-rayofnezero.md) | 406 | `result-track:b99adbab929181f48cbc0ec090903ed2a4621db02455f8fc63fb725c24ba4a0d` |
| 62 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/instance-source-edition-4.md) | 415 | `declaration-track:869a3d7d88898afef70b4cb6965263e2ace04e9b829d53b7492fea29389d5418` |
| 63 | `theorem` | [ne_neg_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/ne-neg-self.md) | 421 | `result-track:d00601e7f262cffa998c6a3add61c57c8c35cab1836582e1c763c56b3382a229` |
| 64 | `theorem` | [neg_units_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/neg-units-smul.md) | 426 | `result-track:21887b5c8569908794eface7007c011a4641d0b6f07dac21a9e44aca678c44c3` |
| 65 | `theorem` | [units_smul_of_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/units-smul-of-neg.md) | 431 | `result-track:5d9f87464b56b816c8e38ff75b654ccf4a5b716024299793b1adde4fdb4d910e` |
| 66 | `theorem` | [map_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/map-neg.md) | 436 | `result-track:8b93fba3aac37d369632eab3a434e380e2b1fd7584877e1b8c7154295aced5be` |
| 67 | `theorem` | [sameRay_of_mem_orbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-of-mem-orbit.md) | 449 | `result-track:ad2c1e50348d179d68da9186b4f51e80b95b3cec723808ad53c285647d68d042` |
| 68 | `theorem` | [units_inv_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/units-inv-smul.md) | 456 | `result-track:28443c4761c80317f7f861a39d91e7ca2c73ba8c74e18148456d1e4cc3d6efc3` |
| 69 | `theorem` | [sameRay_smul_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-smul-right-iff.md) | 467 | `result-track:8cad2ddb2eb7aaf9e90050ced82309b04ea6135c66df4652a3f25e0de3e83d08` |
| 70 | `theorem` | [sameRay_smul_right_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-smul-right-iff-of-ne.md) | 473 | `result-track:8e21c549426c89b72cce2e039b84315d5ff0465507548ab2ac0353bea89d833b` |
| 71 | `theorem` | [sameRay_smul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-smul-left-iff.md) | 478 | `result-track:37ad379801d29a59a10f087e7e3af24e5c80db9455258ef26e2fd1c09ed4e82a` |
| 72 | `theorem` | [sameRay_smul_left_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-smul-left-iff-of-ne.md) | 483 | `result-track:6f67f7e94b25e1f95c132bf1aa338eef2c16b4c92c10b69009302641034f8752` |
| 73 | `theorem` | [sameRay_neg_smul_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-neg-smul-right-iff.md) | 488 | `result-track:1ede90692c6169a1171e12c9b4154e80f3e89bb575cbe7bd6f910ad8641e8ed1` |
| 74 | `theorem` | [sameRay_neg_smul_right_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-neg-smul-right-iff-of-ne.md) | 491 | `result-track:1b72b5378fec5c14d23dd4cb477853fb4d7aa5e6d6bec7843120ae05dd175613` |
| 75 | `theorem` | [sameRay_neg_smul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-neg-smul-left-iff.md) | 496 | `result-track:c321bc18d49bfdaf7c7426f4102927e561c68f97b1480ac43c9dc757ccc0d118` |
| 76 | `theorem` | [sameRay_neg_smul_left_iff_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-neg-smul-left-iff-of-ne.md) | 499 | `result-track:06ee35f91d742667ab802d0dffcf9786557ed9c9c007445b97cb435cf5a09ef7` |
| 77 | `theorem` | [units_smul_eq_self_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/units-smul-eq-self-iff.md) | 504 | `result-track:301c525f31b4fb8d0b69e1d37a6bcd23284d1ae2a138e88802f86a39b9f6c060` |
| 78 | `theorem` | [units_smul_eq_neg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/units-smul-eq-neg-iff.md) | 509 | `result-track:ab6212a43e45dfc4ae3118216542c4e4f9fff5a8c80ac118f215f1174731bba0` |
| 79 | `theorem` | [sameRay_or_sameRay_neg_iff_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-or-sameray-neg-iff-not-linearindependent.md) | 515 | `result-track:398c69547e181ee4f29b953fd9566c461d8f361a494e76a4bb101d3866af07d4` |
| 80 | `theorem` | [sameRay_or_ne_zero_and_sameRay_neg_iff_not_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/sameray-or-ne-zero-and-sameray-neg-iff-not-linearindependent.md) | 559 | `result-track:e664d3324d2e4788fcfa7102d491a6f3799e13c0ab55557d9190cfb0d0a39117` |
| 81 | `theorem` | [exists_pos_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-pos-left.md) | 574 | `result-track:7b91b1f5c1877c647d4efd7ca0d9a75d7bdb5ff81225816ac721eaeb62035eaa` |
| 82 | `theorem` | [exists_pos_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-pos-right.md) | 579 | `result-track:585243628b43f1c1a4f30701fc95e333e714e59e05f9938cba6f2da708b3058f` |
| 83 | `theorem` | [exists_nonneg_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-nonneg-left.md) | 585 | `result-track:1a886fc904afd778d445d51df2b7927cc23e5c04a528a4cea9c5fe0601668924` |
| 84 | `theorem` | [exists_nonneg_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-nonneg-right.md) | 592 | `result-track:dab1d2b2d9ab345a276dbfcecf3a1fce7b34d328b9527659b1d84d526b83b03d` |
| 85 | `theorem` | [exists_eq_smul_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-eq-smul-add.md) | 597 | `result-track:d57af2bce41507812b2952ba017b3084fdddbbbf816177954d5fb3ec2b3a6ba5` |
| 86 | `theorem` | [exists_eq_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-eq-smul.md) | 613 | `result-track:18a17eaf067cbe9bfb9bb2ef550a789fb7dcbd4f7b93269f33e8aa10f2788a3f` |
| 87 | `theorem` | [exists_pos_left_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-pos-left-iff-sameray.md) | 624 | `result-track:4a00ee8d53413eed4eb372a5f4cc607dacb6c072370e630d32ec43173464d212` |
| 88 | `theorem` | [exists_pos_left_iff_sameRay_and_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-pos-left-iff-sameray-and-ne-zero.md) | 630 | `result-track:e77bd9648bfa63e5e3068ec2eec6a27e3732cb5f26e28d877bcf0c9ae28a680f` |
| 89 | `theorem` | [exists_nonneg_left_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-nonneg-left-iff-sameray.md) | 638 | `result-track:dab0ea46c251a5dbd7b5fadd5052fbe5ca447f4d2ad554fec102b661da4e8392` |
| 90 | `theorem` | [exists_pos_right_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-pos-right-iff-sameray.md) | 644 | `result-track:fc49f2bd5a26a660290d10cc3c682483b7cd77e9ffc7810ddc4a6039617ef50c` |
| 91 | `theorem` | [exists_pos_right_iff_sameRay_and_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-pos-right-iff-sameray-and-ne-zero.md) | 650 | `result-track:2b7e52e8b4516bdc8bc792553d5e1fdf73083d6e1cdc0cbcd2e3654b2d583783` |
| 92 | `theorem` | [exists_nonneg_right_iff_sameRay](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RayNamespaced.lean/declarations/exists-nonneg-right-iff-sameray.md) | 656 | `result-track:3217a2cf9def29bcf6c8f370b380a1e0c318f530faf88406d79a2aa35e2753bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a0a5d9c60ce46a937080199aebbcfbd1052b2369630b26adb5624cdf9b662d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ray/Variant0d1a68de6331f0d4a65d41743628fa030ceea85a3de9a895b0b8de13ef7c7218.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Ray/Variant0d1a68de6331f0d4a65d41743628fa030ceea85a3de9a895b0b8de13ef7c7218.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
