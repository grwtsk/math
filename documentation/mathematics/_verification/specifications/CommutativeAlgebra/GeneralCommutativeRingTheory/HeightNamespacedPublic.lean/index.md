# Verification target: Height Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77c8b8ec335772e7f87acc498acec2e9171eb0d1",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77c8b8ec335772e7f87acc498acec2e9171eb0d1`.

Source path: `GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.primeHeight](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-primeheight.md) | 40 | `declaration-track:ac5d334c55b1ff21d6a3b2938f8083f9737b90bae581285e40b3d0fa46bd85bd` |
| 2 | `def` | [Ideal.height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height.md) | 44 | `declaration-track:40b5c766d468d3ed2844af21b7c797f9d46c9776549490cb41074478cdf58b4e` |
| 3 | `lemma` | [Ideal.height_eq_primeHeight](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-eq-primeheight.md) | 49 | `result-track:a36c5a3c65478f8f1ae1a6cce59cb9343bb271e660676467763c5d52be1128a4` |
| 4 | `lemma` | [PrimeSpectrum.height_eq_orderHeight](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/primespectrum-height-eq-orderheight.md) | 52 | `result-track:d5b53439bb297ea3b142d3d50c473b1a85bc8c382b3bc3d4759772300c160c98` |
| 5 | `lemma` | [Ideal.height_eq_inf_minimalPrimes](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-eq-inf-minimalprimes.md) | 56 | `result-track:10d10053119d01fbe545f40861723aa656eb5d042987813e82f03763f4605df2` |
| 6 | `lemma` | [Ideal.exists_isPrime_height_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-exists-isprime-height-eq.md) | 61 | `result-track:fdcd9f9567908e703bbd7c660f190e022c04db192ea0246a1726f4473fd20dc1` |
| 7 | `class` | [Ideal.FiniteHeight](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-finiteheight.md) | 70 | `declaration-track:922b42b428bb1e6360139f420029b2c5da2e82fbf897a53d327433ea5bb9efa7` |
| 8 | `lemma` | [Ideal.finiteHeight_iff_lt](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-finiteheight-iff-lt.md) | 73 | `result-track:7e7b34e9a7b80c88bd1106afe360e23326020136fceed795303476d6cb1bcb29` |
| 9 | `lemma` | [Ideal.height_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-ne-top.md) | 77 | `result-track:8cc769edbe9f19948acbe40ffebee0d76b1f13858c86fff6cb8e7f6ced85a4e2` |
| 10 | `lemma` | [Ideal.height_lt_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-lt-top.md) | 81 | `result-track:f3982a3ff15236ec96879326a0b17e38836c7542b8b7ee140eb1828e7df2807b` |
| 11 | `lemma` | [Ideal.height_ne_top_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-ne-top-of-isprime.md) | 85 | `result-track:31cdb6bb14b67ed80f9fbba6f933833598406a287561d4f98484d85b27c67812` |
| 12 | `lemma` | [Ideal.primeHeight_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-primeheight-ne-top.md) | 90 | `result-track:a406b1738df7c14e0627b26eea1c9eb9880f33a20d202878fcf23e05e85a9e9e` |
| 13 | `lemma` | [Ideal.height_lt_top_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-lt-top-of-isprime.md) | 95 | `result-track:16c28f72587a82451a9d0bbd129e1782f97afdca554de5b2312e19359f93edde` |
| 14 | `lemma` | [Ideal.primeHeight_lt_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-primeheight-lt-top.md) | 100 | `result-track:2120426978a8551c22c16f6899bafea60ee388b239828fceacee566d8838913f` |
| 15 | `lemma` | [Ideal.exists_ltSeries_length_eq_height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-exists-ltseries-length-eq-height.md) | 105 | `result-track:8e619960098ba8d0f6324bde113ebdaa37f481ce6d9f6648bb9be9a19ffd7486` |
| 16 | `lemma` | [Ideal.height_mono_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-mono-of-isprime.md) | 113 | `result-track:fb3112bba8465e6e58d248273897cf97065149ffe34bb3834bf17c7fe8085046` |
| 17 | `lemma` | [Ideal.primeHeight_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-primeheight-mono.md) | 120 | `result-track:ebe85edf8ed4586eca18738889acea4f74b2bb29eefbb327db8759575cdba588` |
| 18 | `lemma` | [Ideal.height_add_one_le_of_lt_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-add-one-le-of-lt-of-isprime.md) | 124 | `result-track:11c0fe0c4db9d7008b250341827eb0b729c7b7f736fdc255dcb4f33ecb599425` |
| 19 | `lemma` | [Ideal.primeHeight_add_one_le_of_lt](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-primeheight-add-one-le-of-lt.md) | 130 | `result-track:8b05a576a03f8b5484d9a881b4b60004987ef316013b0d3080e106f591a2563d` |
| 20 | `theorem` | [Ideal.height_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-top.md) | 135 | `result-track:2651e1d0a3ba0ef82c9169ea236acbd01e0736ef4f7c4533caa14e11d6d124c5` |
| 21 | `theorem` | [Ideal.height_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-mono.md) | 139 | `result-track:a6d94f99999468729b316c98f9ce031d43b1c5cdd908b7a66346e2b0dd456779` |
| 22 | `lemma` | [Ideal.height_strict_mono_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-strict-mono-of-isprime.md) | 148 | `result-track:de01b2b158c669bcf611c80cf0b34f508242a3a887a3133ae47140223ae8dba8` |
| 23 | `lemma` | [Ideal.height_strict_mono_of_isPrime_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-strict-mono-of-isprime-of-isprime.md) | 159 | `result-track:00e87761b963bbdd34c831f1f88efe8c02aba2fd9c98d34e426ee0f2d8b363b3` |
| 24 | `lemma` | [Ideal.primeHeight_strict_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-primeheight-strict-mono.md) | 171 | `result-track:569702d084e0c91c22b1ec8e241b203cf2d386c7b2e2bd2475afe25ddddc729a` |
| 25 | `lemma` | [Ideal.height_le_ringKrullDim_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-le-ringkrulldim-of-isprime.md) | 175 | `result-track:6ac0232cc36b01c3e481cfea626d62afc1ad9831ea5a6f71c54087a01a9f4895` |
| 26 | `lemma` | [Ideal.eq_of_le_of_height_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-eq-of-le-of-height-le.md) | 181 | `result-track:f62e4b8fedfc65977583c3fce2343b4c0f8bb76acb7e94e5533369f5dd4f3f33` |
| 27 | `lemma` | [Ideal.primeHeight_le_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-primeheight-le-ringkrulldim.md) | 186 | `result-track:d2af91df17811426d8ed6983dfeda10078e4ed511f912fa264664d43acc32e07` |
| 28 | `lemma` | [Ideal.height_le_ringKrullDim_of_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-le-ringkrulldim-of-ne-top.md) | 189 | `result-track:d7b91577c63efa9fba9d20fee2f06d2d21604086dde23d7976758838d41f9ff6` |
| 29 | `lemma` | [Ideal.exists_isMaximal_height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-exists-ismaximal-height.md) | 197 | `result-track:0e199e36c40ed0cb19748f4d36e2dd87a041d3c9c540fad6151583fd97afad12` |
| 30 | `lemma` | [Ideal.exists_isPrime_le_height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-exists-isprime-le-height.md) | 209 | `result-track:3c6b69fdcbc8ef054736a880ab06e58cc8bb57301f6d59e6dd5aaafeaffafc05` |
| 31 | `theorem` | [Ideal.ringKrullDim_eq_top_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-ringkrulldim-eq-top-iff.md) | 215 | `result-track:f03f3730bb1e775ee272ffe37291bd40472df653558591da5acdefbd2c413ce5` |
| 32 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/instance.md) | 225 | `declaration-track:20463b818095dbb3814f6ce13d73bb9768b14df22de702b1cf71b74208bdcdca` |
| 33 | `lemma` | [Ideal.finiteHeight_of_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-finiteheight-of-le.md) | 231 | `result-track:cef60a5b5f460e2d46d7704a5b1e986ba8be489be563d9836f5057c8b9f6af6b` |
| 34 | `lemma` | [Ideal.mem_minimalPrimes_of_height_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-mem-minimalprimes-of-height-le.md) | 238 | `result-track:1809fef24e22cbb073fd427032255270b252689c2272a0e4129ebcc19f824355` |
| 35 | `lemma` | [Ideal.height_eq_zero_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-eq-zero-iff.md) | 252 | `result-track:8f1258141a5aaec91e364eb0fb8edcb896a787b7b9fe0d9ced8e5c0d1a82947a` |
| 36 | `lemma` | [Ideal.primeHeight_eq_zero_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-primeheight-eq-zero-iff.md) | 260 | `result-track:9834af7e70dd1348a61b3b846c8b3a809f7a73ef964314518f8694bdaad1d82e` |
| 37 | `lemma` | [Ideal.one_le_height_span_singleton_of_mem_nonZeroDivisors](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-one-le-height-span-singleton-of-mem-nonzerodivisors.md) | 265 | `result-track:fe12acf4c1bc582dc24e1661a7c1406cf007713827203cffd59bd817141209fc` |
| 38 | `lemma` | [Ideal.height_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-bot.md) | 276 | `result-track:ba808d8921fa84365929bf6935ec8199ebe4ba46b5ada718425f659af61fd760` |
| 39 | `lemma` | [Ideal.height_eq_zero_iff_eq_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-eq-zero-iff-eq-bot.md) | 283 | `result-track:b950dead077e9bf04ce09599dd463fb36b0218ff3dedcc156954340671da0027` |
| 40 | `theorem` | [Ideal.ne_bot_of_height_eq_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-ne-bot-of-height-eq-one.md) | 290 | `result-track:a515de890a0b9447698fff220d899e49f055c3faaa650afd1cd0d3c5473906f6` |
| 41 | `lemma` | [Ideal.height_of_subsingleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-of-subsingleton.md) | 295 | `result-track:a9d0b81eee67beb485bc1cee97fe31bc029f311b485cb9873b9db627c1937667` |
| 42 | `theorem` | [Ideal.isMaximal_of_height_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-ismaximal-of-height-eq-ringkrulldim.md) | 298 | `result-track:dfa5cff2f46587f484dce71685360cd0bf1f4690b1c80f47056ef06b8f7a6a32` |
| 43 | `theorem` | [Ideal.isMaximal_of_primeHeight_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-ismaximal-of-primeheight-eq-ringkrulldim.md) | 309 | `result-track:9347efa8d6a8e2a941e120f1875d5d5c688eae1f7bd2ec52dc7513a107e7b849` |
| 44 | `theorem` | [IsLocalRing.maximalIdeal_height_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/islocalring-maximalideal-height-eq-ringkrulldim.md) | 315 | `result-track:ed22ed89bb0183602bde96bbd162b77359e7fcca33a1a660a40a35c7e6c2c64a` |
| 45 | `theorem` | [IsLocalRing.maximalIdeal_primeHeight_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/islocalring-maximalideal-primeheight-eq-ringkrulldim.md) | 322 | `result-track:13a739ca5b4f7d0ad69e099bc6450a986662dc48d84a7f20a4b0c07d6fa02c5f` |
| 46 | `theorem` | [Ideal.height_eq_ringKrullDim_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-eq-ringkrulldim-iff.md) | 328 | `result-track:942325086fad74df914d2685565227c9b9b946130c19f4ead2287279ff1267e6` |
| 47 | `theorem` | [Ideal.primeHeight_eq_ringKrullDim_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-primeheight-eq-ringkrulldim-iff.md) | 337 | `result-track:c373d42d7f4f0cab40458400f8e8341276cebe78c4c6ed6efb4cbca4449bdb72` |
| 48 | `lemma` | [Ideal.height_le_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-le-iff.md) | 342 | `result-track:90948e3ac2f0128652d035d6931f70d8326575b4a3432d9cbbefff24956716aa` |
| 49 | `lemma` | [Ideal.height_le_iff_covBy](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-height-le-iff-covby.md) | 350 | `result-track:5f07773fdcf3f361c40cdaf6ddc7852437441e94aa7ca58dc0c7d81fcac18160` |
| 50 | `lemma` | [RingEquiv.height_comap_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ringequiv-height-comap-of-isprime.md) | 364 | `result-track:6e5e870ff7222d514ed167d34b9b8bd040a13f2473a546404843cdeee25b9864` |
| 51 | `lemma` | [RingEquiv.height_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ringequiv-height-comap.md) | 372 | `result-track:073cd88cf0d4d42c178a604cb219b9839c7a52779b15b883a31779936e71ffff` |
| 52 | `lemma` | [RingEquiv.height_map](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ringequiv-height-map.md) | 384 | `result-track:18417e058a9869ea6e6c9d669bc85c21f8ccc82d5dcb153b994d5bcb0a3399d6` |
| 53 | `lemma` | [ringKrullDim_le_iff_height_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ringkrulldim-le-iff-height-le.md) | 389 | `result-track:c1bf73a65463b7cc614b6f44536f93f4ab39dda406079dfe273b95f1a03d0034` |
| 54 | `lemma` | [ringKrullDim_le_iff_isMaximal_height_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ringkrulldim-le-iff-ismaximal-height-le.md) | 399 | `result-track:e03958cceff8ede50ce88e49e6cbf495839957287a28cdd8b6179dfce49102a4` |
| 55 | `theorem` | [IsLocalization.height_under_eq_of_isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/islocalization-height-under-eq-of-isprime.md) | 408 | `result-track:c03d0a2f148cbbabcca43627ebbd9df7f90d2ab3de74d65138b4e5092329e8b1` |
| 56 | `theorem` | [IsLocalization.primeHeight_comap](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/islocalization-primeheight-comap.md) | 427 | `result-track:e81b37ef5fa204308951c39bc6c0d6023e7a14f6b06697c9806521799b60671c` |
| 57 | `theorem` | [IsLocalization.height_under](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/islocalization-height-under.md) | 432 | `result-track:4b7962ec904fecbd18692faed1428ee2027d2b14e20e11de96df77e6db7cf66a` |
| 58 | `theorem` | [IsLocalization.AtPrime.ringKrullDim_eq_height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/islocalization-atprime-ringkrulldim-eq-height.md) | 443 | `result-track:36054dee9aba1bd311575597cfe26cfc7fdd1fccf7ffe0f368362093e68c8820` |
| 59 | `lemma` | [IsLocalization.height_map_of_disjoint](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/islocalization-height-map-of-disjoint.md) | 451 | `result-track:36c55c46b899345ec74e0b1cfe49a7f80d3ada4ece5866159034391b06ecc676` |
| 60 | `lemma` | [mem_minimalPrimes_of_primeHeight_eq_height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/mem-minimalprimes-of-primeheight-eq-height.md) | 464 | `result-track:d801e40729b6d1045e68e89415ff568eb2494380479d2014aa331572ac34ffb2` |
| 61 | `lemma` | [exists_spanRank_le_and_le_height_of_le_height](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/exists-spanrank-le-and-le-height-of-le-height.md) | 469 | `result-track:3fa93a2aa608a34f7b3dfc1c8d58bb7d714b906cde2585852ff78462563dec5f` |
| 62 | `lemma` | [Ideal.sup_height_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-sup-height-eq-ringkrulldim.md) | 514 | `result-track:72b516fc01c529255f2fef271d3b652a5bec82dcda5feb333e8b2f497889d538` |
| 63 | `lemma` | [Ideal.sup_isPrime_height_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-sup-isprime-height-eq-ringkrulldim.md) | 531 | `result-track:95e9bb53f81d24290e0e53bcf2960ec6f467069d8d67d576fac8dfbc94db7437` |
| 64 | `lemma` | [Ideal.sup_primeHeight_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-sup-primeheight-eq-ringkrulldim.md) | 545 | `result-track:ee5848563c21a584fccca0041bdaf8709d5510da5194a9ad4387df535430d75c` |
| 65 | `lemma` | [Ideal.sup_isMaximal_height_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-sup-ismaximal-height-eq-ringkrulldim.md) | 551 | `result-track:e59c5ec617397c403997b7d417e132b05436258d38c50a399d94790c9089879a` |
| 66 | `lemma` | [Ideal.sup_primeHeight_of_maximal_eq_ringKrullDim](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-sup-primeheight-of-maximal-eq-ringkrulldim.md) | 563 | `result-track:04d28192335e50e96e0149f31ded720ea77fc665ef7083f722077494b6708cd2` |
| 67 | `lemma` | [Ring.krullDimLE_of_isLocalization_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ring-krulldimle-of-islocalization-maximal.md) | 575 | `result-track:03373fa6f627ea19f63e0869cbf651b31abf935ce7d3e16213ae7dd3b43af863` |
| 68 | `lemma` | [Ideal.eq_span_singleton_of_height_eq_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/HeightNamespacedPublic.lean/declarations/ideal-eq-span-singleton-of-height-eq-one.md) | 587 | `result-track:d6e2def485d619382cf2ea6f32885f0b0095434bde745db91d2d38234cf25835` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbb118703049d4c53ed0783fd132c8034df387c73803b371f435fffcd02d927a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean","GRWTSK/_verification/specifications/Algebra/Height/Variant0cdbfcc933876c1e486636065198ccdb0ddc2af8193113c2b7cafae6306f9e9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
