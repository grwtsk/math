# Verification target: Polynomial Monic Monic Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f4b072fc3c1a39dcaa7c68604466fea727ca147",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monic/Variant7cb45b5d8c5837e42efe7e49a2fd92f57d7e54a0c8264565236d8c3ed4ca325e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f4b072fc3c1a39dcaa7c68604466fea727ca147`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monic/Variant7cb45b5d8c5837e42efe7e49a2fd92f57d7e54a0c8264565236d8c3ed4ca325e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monic/Variant7cb45b5d8c5837e42efe7e49a2fd92f57d7e54a0c8264565236d8c3ed4ca325e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Reverse` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Regular.SMul` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [monic_zero_iff_subsingleton](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-zero-iff-subsingleton.md) | 43 | `result-track:1f8758746203e2490c21b3ae18eb0799cd8a45481a4d8c57c31e7d3fe7912823` |
| 2 | `theorem` | [not_monic_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/not-monic-zero-iff.md) | 47 | `result-track:318a0ef0c86eeecb5cdb9bafd93fe6225069bc196d28f88a132a203abc2787ce` |
| 3 | `theorem` | [monic_zero_iff_subsingleton'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-zero-iff-subsingleton-source-edition-2.md) | 51 | `result-track:97fcf69dec1eb601bd80032001f2e2c30383c31cc0afe6f5a3d8dd13e565d451` |
| 4 | `theorem` | [Monic.as_sum](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-as-sum.md) | 59 | `result-track:ba0f85d5989feae43b0f601da299f06f551cec00127b0dfa31cf4735f8cd5403` |
| 5 | `theorem` | [ne_zero_of_ne_zero_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/ne-zero-of-ne-zero-of-monic.md) | 66 | `result-track:d970b72e45d758143dca14ef24627e4ab21d3a3285482ce3128b976d10fb1051` |
| 6 | `theorem` | [Monic.map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-map.md) | 73 | `result-track:a91c74d2e718c97c51a23235a93cb469d51b8793f7c494414009a0e808f65ecc` |
| 7 | `theorem` | [monic_C_mul_of_mul_leadingCoeff_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-c-mul-of-mul-leadingcoeff-eq-one.md) | 84 | `result-track:1827d446294ccb0223496009016bdf24e110173b9acdc0a28d7c06505c46d4ef` |
| 8 | `theorem` | [monic_mul_C_of_leadingCoeff_mul_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-mul-c-of-leadingcoeff-mul-eq-one.md) | 92 | `result-track:937bd4ea0e4ad5491f647afa41553869ab42a93456188cbd8c146cd0c51a15e7` |
| 9 | `theorem` | [monic_of_degree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-of-degree-le.md) | 100 | `result-track:4f36d2925568b7be32af3413a41b35610dcbd6a7315704d647ace6b6f50d707b` |
| 10 | `theorem` | [monic_X_pow_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-x-pow-add.md) | 107 | `result-track:6256765cbb5b74c42beb4551911290be576b3bb860f5d35af62f01acf84c583d` |
| 11 | `theorem` | [monic_X_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-x-add-c.md) | 115 | `result-track:84ce0f5686011cc073a06156c23661c6a6692c226bdebce7b96171924e132c6f` |
| 12 | `theorem` | [Monic.mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-mul.md) | 120 | `result-track:216dbb32c1b6aaa07502a982fab6fd8c11f545936fb6fcdcd58903aef9179e62` |
| 13 | `theorem` | [Monic.pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-pow.md) | 130 | `result-track:74d8f9a292577e4e6ac95157cd98faf9d0b1218c16f5bf1611721dd7e315506e` |
| 14 | `theorem` | [Monic.add_of_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-add-of-left.md) | 137 | `result-track:8f3276a755162beec13f5fe36a95fe38d0a535f174851c17c2f491d0e3618bc9` |
| 15 | `theorem` | [Monic.add_of_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-add-of-right.md) | 141 | `result-track:6d226eee0c0ea6bef9d5629e96b56436bfe9bf0cf251091fad625cd2edf5d006` |
| 16 | `theorem` | [Monic.of_mul_monic_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-of-mul-monic-left.md) | 145 | `result-track:c1e9bfd5317f7a83d4c06ffe32c22bfd404c390ca9756b2a6dc0821d61b6c7be` |
| 17 | `theorem` | [Monic.of_mul_monic_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-of-mul-monic-right.md) | 151 | `result-track:05a861258b633da72a29f7ba91228d65f32679b8f345d1ad24714903afcfb8d6` |
| 18 | `theorem` | [natDegree_eq_zero_iff_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/natdegree-eq-zero-iff-eq-one.md) | 160 | `result-track:dc788cdbfd8a57254b741776fd3d8a52e1e7a3013b010231dc27a97b2420c5ef` |
| 19 | `theorem` | [degree_le_zero_iff_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/degree-le-zero-iff-eq-one.md) | 173 | `result-track:0e56596a0be5881cdf03befb093eb54ebabb9764d4204b03f166d97bf7fd3449` |
| 20 | `theorem` | [natDegree_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/natdegree-mul.md) | 177 | `result-track:0c59504e331fb04471af939ce08b3a72b9fba16fed195cfaab15c4603d95c948` |
| 21 | `theorem` | [degree_mul_comm](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/degree-mul-comm.md) | 184 | `result-track:b1a6c4b824c206277e3d097dc565ff6043198e133e4c3160fb322722c39cb690` |
| 22 | `theorem` | [natDegree_mul'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/natdegree-mul-source-edition-2.md) | 192 | `result-track:c8892178bbf8cfadf9d3c50b1e2a911b0e7c79f6c91a9188922b59f5e0b2e4eb` |
| 23 | `theorem` | [natDegree_mul_comm](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/natdegree-mul-comm.md) | 198 | `result-track:392b44ba658fbb5b6253201f1762b7b6d5208ae10e6809110b4cb0088f437677` |
| 24 | `theorem` | [not_dvd_of_natDegree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/not-dvd-of-natdegree-lt.md) | 205 | `result-track:9e541cecc145d9531c25796403dd12e42796d84b121c8a445c68cde804800abd` |
| 25 | `theorem` | [not_dvd_of_degree_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/not-dvd-of-degree-lt.md) | 212 | `result-track:752d189c6cd7b91275d45385afa834a6295e52b5d9a8339f6158ff8dedc08396` |
| 26 | `theorem` | [nextCoeff_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/nextcoeff-mul.md) | 216 | `result-track:da7a676ce6b74a253e04fa00e5a819dfe5ba272f8867eee13e7153a734c6cba6` |
| 27 | `theorem` | [eq_one_of_map_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/eq-one-of-map-eq-one.md) | 225 | `result-track:f2ce3ebf1c4b32579051c3c69f7411cb0a835e554519aca6d0a16547508422a4` |
| 28 | `theorem` | [natDegree_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/natdegree-pow.md) | 238 | `result-track:ddee71c1d1f15af83195f85ad315f096318fa1e24b1836b89c8f82a0cf653b22` |
| 29 | `theorem` | [natDegree_pow_X_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/natdegree-pow-x-add-c.md) | 247 | `result-track:4e913b00261ee13bc5ac7f208985ecd2faa50767aff9d488399db1d854c21e49` |
| 30 | `theorem` | [Monic.eq_one_of_isUnit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-eq-one-of-isunit.md) | 252 | `result-track:bc8f041a5b16195a363e913da813ba896d4dc78041bb6f0ea083733daa62ab9b` |
| 31 | `theorem` | [Monic.isUnit_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-isunit-iff.md) | 260 | `result-track:62d28a7fbe94de68af1ef08388bb271414cb3eb21a27c5e5f3273db0c8eafce0` |
| 32 | `theorem` | [monic_multiset_prod_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-multiset-prod-of-monic.md) | 270 | `result-track:baf25476d4bcb43b4bf28e8aced2a7d2f3f349e352c4486d05c121d628e80d1c` |
| 33 | `theorem` | [monic_prod_of_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-prod-of-monic.md) | 279 | `result-track:e04e7759d8309b97bddad4955df3fedb5956d7a976898be00841c7d2b44cd005` |
| 34 | `theorem` | [Monic.nextCoeff_multiset_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-nextcoeff-multiset-prod.md) | 284 | `result-track:8930b939dad9b864bb37819ca3dfdcb743d2008b9d79b26e86abc8791cd88027` |
| 35 | `theorem` | [Monic.nextCoeff_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-nextcoeff-prod.md) | 298 | `result-track:28ba96ee602417e28fb57b15d29f07dba24bcf7d2f5880f732422b96db6a0454` |
| 36 | `theorem` | [Monic.natDegree_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-natdegree-map.md) | 310 | `result-track:7981612573027bf2af289d57d6bc1667c2507026fe5cacb356ca01abf5051399` |
| 37 | `theorem` | [Monic.degree_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-degree-map.md) | 318 | `result-track:aa980dd1a9fdcb6eed2c6ac420514f0248da357bf59cb2c1db5dcca13b5b6442` |
| 38 | `theorem` | [degree_map_eq_of_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/degree-map-eq-of-injective.md) | 335 | `result-track:2c01b39a85b245f87f798472ad921904b931b0ea3303008854c926f451a00e3f` |
| 39 | `theorem` | [natDegree_map_eq_of_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/natdegree-map-eq-of-injective.md) | 342 | `result-track:ea9931cb3733a85495aac9e2b08ff2100519667a0126ee531237f98bb3293514` |
| 40 | `theorem` | [leadingCoeff_map'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/leadingcoeff-map.md) | 346 | `result-track:f015076e4c9d08e80d161c4dda4f747c285470087f38c9a74b4bd9a5bf0723c2` |
| 41 | `theorem` | [nextCoeff_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/nextcoeff-map.md) | 351 | `result-track:5fc0cb190ed1d7b6a6e6fa7bee955cc3f1429eef10d0bbbda98eac660e056111` |
| 42 | `theorem` | [leadingCoeff_of_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/leadingcoeff-of-injective.md) | 357 | `result-track:d81b1351b7f65ce0237d971a24bf44af46d781afc3c2694c7b06ee6b8b58196d` |
| 43 | `theorem` | [monic_of_injective](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-of-injective.md) | 362 | `result-track:02522a97f73b93a8220096e8677255f75f4b59a9b8a8b4926748356eec7ad081` |
| 44 | `theorem` | [Polynomial Monic Monic Namespaced Source Edition2](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-mo.md) | 367 | `result-track:7fa31ba294cd3795fae8947614a0a61aeca3b4f4bf7538b3989e0f32cfe97dc1` |
| 45 | `theorem` | [monic_X_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-x-sub-c.md) | 379 | `result-track:e28a016327714a797ffbfe0ea671663544d2258e3600e49c270f83a29ebf90fe` |
| 46 | `theorem` | [monic_X_pow_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-x-pow-sub.md) | 384 | `result-track:de6b4669bfd1693095c7ad571b6533330a38ae8705a408aa20788e972dd47c35` |
| 47 | `theorem` | [monic_X_pow_sub_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-x-pow-sub-c.md) | 390 | `result-track:31c4c6734d39b45c1e6c7e94f6870bfa46f84fb1ef71935ff7cd5e94119897d8` |
| 48 | `theorem` | [not_isUnit_X_pow_sub_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/not-isunit-x-pow-sub-one.md) | 398 | `result-track:9f32ec679d6e7c609a48637020266293a0afd425551218e1eb9166031bce4d6c` |
| 49 | `theorem` | [Monic.sub_of_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-sub-of-left.md) | 408 | `result-track:025b99430ef9ceeeeeb0f4a1f0438b82a05fdd3e8d2779555ca4859bac4c26a6` |
| 50 | `theorem` | [Monic.sub_of_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-sub-of-right.md) | 415 | `result-track:cfb5bc6a0ca3cbf2afc34cb650eebb49db097aa16d6d9a519c481221768b877a` |
| 51 | `theorem` | [not_monic_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/not-monic-zero.md) | 431 | `result-track:bb3c44c8ab3f8d0f278d1db669d7c7e78671b113dee083361b7456ea58d431fd` |
| 52 | `theorem` | [Monic.mul_left_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-mul-left-ne-zero.md) | 442 | `result-track:de267c55b649893407b2d1b53609f087a3b5676ba01025abba657851df900e0c` |
| 53 | `theorem` | [Monic.mul_right_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-mul-right-ne-zero.md) | 452 | `result-track:2478aa6bfaf23e9a15634e8b8e44071f378c205e9246c28b4a5a1ea6d8e9812d` |
| 54 | `theorem` | [Monic.mul_natDegree_lt_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-mul-natdegree-lt-iff.md) | 463 | `result-track:e4275ba6d36042fcae8388df729527102d51aea2122d21ce29fc64e2fd93d6ec` |
| 55 | `theorem` | [Monic.mul_right_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-mul-right-eq-zero-iff.md) | 471 | `result-track:410cbf5c30804f7f1344c90bd1a5af71a3abb6248fdc94c119074915b50ca64c` |
| 56 | `theorem` | [Monic.mul_left_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-mul-left-eq-zero-iff.md) | 475 | `result-track:e6baa3448b77c071c1e87174230880eafbc31fa06ac3b75c59e461659c994dee` |
| 57 | `theorem` | [Monic.isRegular](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-isregular.md) | 479 | `result-track:ce60b89657e1e226e39f4b48fc61a79f18603330bc2a03f8103c31d765f15ad1` |
| 58 | `theorem` | [degree_smul_of_smul_regular](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/degree-smul-of-smul-regular.md) | 489 | `result-track:0cb526c6f02e496852a5fa8efc69241ba4e77a29220e414da823986ce2fa93f8` |
| 59 | `theorem` | [natDegree_smul_of_smul_regular](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/natdegree-smul-of-smul-regular.md) | 503 | `result-track:2e95c0aecc4590ca9904c2c4450da20c8815e6c0bcafb74a9ea980a748bebfc6` |
| 60 | `theorem` | [leadingCoeff_smul_of_smul_regular](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/leadingcoeff-smul-of-smul-regular.md) | 515 | `result-track:8caf2f50b9079c721da63e5720d13f8e5f4a69e3edd2c36aafad2188cf11a452` |
| 61 | `theorem` | [monic_of_isUnit_leadingCoeff_inv_smul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/monic-of-isunit-leadingcoeff-inv-smul.md) | 521 | `result-track:8afb39233649d6a716de054e1f379d675347d1bc5d2bc97b78cf813004a800a3` |
| 62 | `theorem` | [isUnit_leadingCoeff_mul_right_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/isunit-leadingcoeff-mul-right-eq-zero-iff.md) | 529 | `result-track:a472281120932a787eeabfc0a16533031619f88b8ba58cbec8268c0efe64da4a` |
| 63 | `theorem` | [isUnit_leadingCoeff_mul_left_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/PolynomialMonicMonicNamespacedSourceEdition2.lean/declarations/isunit-leadingcoeff-mul-left-eq-zero-iff.md) | 545 | `result-track:d12531fa4baf57242781e79674d80f7a939f4b5a6264c9b0d03a1f5ab216460b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7b4890862a778dbab6f4eaa45a345884448108edfea4ccf9e1be918147ed655 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monic/Variant7cb45b5d8c5837e42efe7e49a2fd92f57d7e54a0c8264565236d8c3ed4ca325e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Monic/Variant7cb45b5d8c5837e42efe7e49a2fd92f57d7e54a0c8264565236d8c3ed4ca325e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
