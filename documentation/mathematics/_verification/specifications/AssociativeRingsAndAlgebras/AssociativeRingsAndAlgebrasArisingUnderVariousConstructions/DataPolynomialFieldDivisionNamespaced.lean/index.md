# Verification target: Data Polynomial Field Division Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bc967765eae42316583ebf0154236715efa01a16",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant5fe9f691309ae4a2c3908fe609feb14f28fb7831dec383ed9c9c30fb6bdc4c48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bc967765eae42316583ebf0154236715efa01a16`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant5fe9f691309ae4a2c3908fe609feb14f28fb7831dec383ed9c9c30fb6bdc4c48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/FieldDivision/Variant5fe9f691309ae4a2c3908fe609feb14f28fb7831dec383ed9c9c30fb6bdc4c48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Derivative` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.RingDivision` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EuclideanDomain` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [derivative_rootMultiplicity_of_root](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/derivative-rootmultiplicity-of-root.md) | 42 | `result-track:247f6e324919a53840c3da2e7a2771ff07fda15531be2b6e7e830306ef231509` |
| 2 | `theorem` | [rootMultiplicity_sub_one_le_derivative_rootMultiplicity](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/rootmultiplicity-sub-one-le-derivative-rootmultiplicity.md) | 68 | `result-track:6c108046898ec1005d79007d826204f6b44f3a62e00e9b01867ced0c3da88089` |
| 3 | `instance` | [instNormalizationMonoid](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/instnormalizationmonoid.md) | 80 | `declaration-track:62c39d5e51362147b6a7205e33e57ecf1330fa52ed4967c4fd0432753e27e937` |
| 4 | `theorem` | [coe_normUnit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/coe-normunit.md) | 101 | `result-track:0cd226982c71cbe9e42c96920c1311aaa545d7507adc012f933a629db19fa374` |
| 5 | `theorem` | [leadingCoeff_normalize](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/leadingcoeff-normalize.md) | 105 | `result-track:723df211a0295f56b156370250820f1804d12f82fdbd3b1eeeb621c02fcd7fe4` |
| 6 | `theorem` | [Monic.normalize_eq_self](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/monic-normalize-eq-self.md) | 109 | `result-track:55c54ceeba91bc0d97724b44c6e346142bd5540beadf8320f61c4f653a62dbe6` |
| 7 | `theorem` | [roots_normalize](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/roots-normalize.md) | 114 | `result-track:e63d89af7b304f88a15a63267deb82628b64173a624daf376549be2692533919` |
| 8 | `theorem` | [degree_pos_of_ne_zero_of_nonunit](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/degree-pos-of-ne-zero-of-nonunit.md) | 126 | `result-track:42c7fc5673caeed6a7995d302207194191c7cba516180822547e7fde9c97a2f8` |
| 9 | `theorem` | [monic_mul_leadingCoeff_inv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/monic-mul-leadingcoeff-inv.md) | 132 | `result-track:ad714dfe9993af370c91f12de7931fa6ccbfe1d867ee6f603a92bf6a7152ae42` |
| 10 | `theorem` | [degree_mul_leadingCoeff_inv](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/degree-mul-leadingcoeff-inv.md) | 137 | `result-track:569e4053924cf9bd58ac2d1ef00ca2959241137f50d1754f499ed3e79b618939` |
| 11 | `theorem` | [map_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/map-eq-zero.md) | 144 | `result-track:763cdc2e0b058f38c6a34be8b78c3f8f1adebdcd36b648a182663771d64aa767` |
| 12 | `theorem` | [map_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/map-ne-zero.md) | 150 | `result-track:f0fe52e2fbd871dea4e881f9cdc0787d15fca5a5260d55ca00e8206defcfe5b4` |
| 13 | `theorem` | [degree_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/degree-map.md) | 155 | `result-track:87aa2b51bba7c28d161e8564b21548ade40f1b8807793944e2252b42eae9f983` |
| 14 | `theorem` | [natDegree_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/natdegree-map.md) | 161 | `result-track:00da32cd8ab45b5901acf4992beb03574994a6de74df28cf5324eb658d7b244e` |
| 15 | `theorem` | [leadingCoeff_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/leadingcoeff-map.md) | 167 | `result-track:9b5f5d79d880ad3bdd1bf8c91f13834e9279c8ee7a1ddcaba2b03620ccb8bfdc` |
| 16 | `theorem` | [monic_map_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/monic-map-iff.md) | 172 | `result-track:2151e1fd0592e812bd15e70f8842cecca469e3c5a72b8fae2adeaa09f72ce5f4` |
| 17 | `theorem` | [isUnit_iff_degree_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/isunit-iff-degree-eq-zero.md) | 183 | `result-track:d7e6d1e05a81be1d10e55d994ed55c43226439696e6a4accadbe6b043c680fa0` |
| 18 | `def` | [div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/div.md) | 195 | `declaration-track:3f72a92e58f1675dfb77e821d201a5e996d40d53204b414980d09027bc8d9094` |
| 19 | `def` | [mod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/mod.md) | 200 | `declaration-track:02b7289e0b8edba277c708eb9cf15f646e22f3e462db2ae85f47ba2eafb52b7d` |
| 20 | `theorem` | [quotient_mul_add_remainder_eq_aux](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/quotient-mul-add-remainder-eq-aux.md) | 204 | `result-track:a3b416328d7bbdc4b78f5d919f09b43373f0492f554e181cfbbf2c3fc9cb2680` |
| 21 | `theorem` | [remainder_lt_aux](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/remainder-lt-aux.md) | 212 | `result-track:328cd8299dba033463c4dff4a8c26b0598608395d8057903b75dae51ea636f0a` |
| 22 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/instance-source-edition-2.md) | 216 | `declaration-track:0590c51cc29129710f3ea0d9fde9cebd8be2de43e6922c151932cacb35e15540` |
| 23 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/instance-source-edition-3.md) | 219 | `declaration-track:e233c948e5df0de0ff928c8e4adb1512658c5eb6c1329e0944ed10f52ce6e290` |
| 24 | `theorem` | [div_def](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/div-def.md) | 222 | `result-track:1689149a15a8dde9ee82e8081e754f5314c426d14f481acf2aa7c811efa9b240` |
| 25 | `theorem` | [mod_def](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/mod-def.md) | 226 | `result-track:882a0b6ed64ab35415cf3be7cef70b5788e8c45c281bbcfad0190e5888e35f54` |
| 26 | `theorem` | [modByMonic_eq_mod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/modbymonic-eq-mod.md) | 229 | `result-track:5481ad4d59edf941eb2737bca06a6d99d49484ba7417a683d3b06579e38e8691` |
| 27 | `theorem` | [divByMonic_eq_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/divbymonic-eq-div.md) | 233 | `result-track:1551d978dd27dade3b8935da17b996153c688a8ca28796b15d928b78371a26b6` |
| 28 | `theorem` | [mod_X_sub_C_eq_C_eval](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/mod-x-sub-c-eq-c-eval.md) | 238 | `result-track:61df740f924abbe5962f698c8599f98a5e7ce2e1ddda6479d3eb01809539f088` |
| 29 | `theorem` | [mul_div_eq_iff_isRoot](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/mul-div-eq-iff-isroot.md) | 243 | `result-track:1d1a18b450c3807c33948bf7173646690ad03d2f6a92a999a92bd983003a694c` |
| 30 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/instance.md) | 247 | `declaration-track:04dc40bdd3bc4df0f7aac8ac6b80361e703c30c5f0f7cd9e739b38d14b47e187` |
| 31 | `theorem` | [mod_eq_self_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/mod-eq-self-iff.md) | 259 | `result-track:cb90b39c8d58c59f584e089c12f8e958ae6362e88f27b1efda1bc08e6d7fb2a6` |
| 32 | `theorem` | [div_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/div-eq-zero-iff.md) | 270 | `result-track:5cf5986861f29f116676e1f6b503238c36ea0d30a62ce4db34586b625c6d1cde` |
| 33 | `theorem` | [degree_add_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/degree-add-div.md) | 281 | `result-track:a295ffaea7932049709b1b234c0bb3d349f8135b08c59cd6d92f8db4c433fa1e` |
| 34 | `theorem` | [degree_div_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/degree-div-le.md) | 292 | `result-track:5fd200481d8e2cda21881a788ae5a03fdeea8970541ab288ea8d936ef407c7e2` |
| 35 | `theorem` | [degree_div_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/degree-div-lt.md) | 298 | `result-track:a76aa9742d53616542621a9f5cab56ffe1dcebd58569ca8e58502b47f8438ace` |
| 36 | `theorem` | [isUnit_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/isunit-map.md) | 306 | `result-track:3a82efa67b1737e21690e625a12521e88c0750e9d0cab816988b13e81497beb5` |
| 37 | `theorem` | [map_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/map-div.md) | 310 | `result-track:1244cd8ffe3492de95055a1c77bd571dc10960a74279084d38ccd0b85c5d03df` |
| 38 | `theorem` | [map_mod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/map-mod.md) | 317 | `result-track:38ad0ac378bd12a4a31dd0357dced5c782ba336691b5ff8befa29660319862b0` |
| 39 | `theorem` | [gcd_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/gcd-map.md) | 328 | `result-track:04d9b061a9b079c257e73fa9fcfc2941d175c2a7b239dce729848c3779b990a6` |
| 40 | `theorem` | [eval₂_gcd_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/eval-gcd-eq-zero-source-edition-2.md) | 336 | `result-track:8bd640a9566124bf54254ba7a0e714a98a2ffe7e89d42fd63d8bf87197345ebb` |
| 41 | `theorem` | [eval_gcd_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/eval-gcd-eq-zero.md) | 343 | `result-track:8ba17002ce77658a8e01c23ce531200d9e9db299537c17320b78d64136fedc43` |
| 42 | `theorem` | [root_left_of_root_gcd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/root-left-of-root-gcd.md) | 348 | `result-track:81996b04f29f53efbca60357bdb9b0a130652562f4dbb58ad147d3c39232b7aa` |
| 43 | `theorem` | [root_right_of_root_gcd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/root-right-of-root-gcd.md) | 354 | `result-track:32e74e949cccea636f4cf7c502b7c22d0e5e539032a86150b55a6c93c1f829a3` |
| 44 | `theorem` | [root_gcd_iff_root_left_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/root-gcd-iff-root-left-right.md) | 360 | `result-track:b8c27d2e443a4b5640c4e03a62c28c6443e614d8b477dd6f3a831d8892b84d2b` |
| 45 | `theorem` | [isRoot_gcd_iff_isRoot_left_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/isroot-gcd-iff-isroot-left-right.md) | 366 | `result-track:216318a77ccf01b1f2c60ec50d266d3985bdea748625e4bad430e8e681241f91` |
| 46 | `theorem` | [isCoprime_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/iscoprime-map.md) | 371 | `result-track:a9d0016d894e53ceec4d6c9609ad48a72cd3f095dac08c589c751f40f68673fc` |
| 47 | `theorem` | [mem_roots_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/mem-roots-map.md) | 376 | `result-track:46ec5a7c36182bacc8e24c51f23a1bb00bd9a62716a9acc7129d787a930fb673` |
| 48 | `theorem` | [rootSet_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/rootset-monomial.md) | 381 | `result-track:e60277b2e64eac3dab51e56757b2ac18d57059900aede2383a65b8de81b19849` |
| 49 | `theorem` | [rootSet_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/rootset-c-mul-x-pow.md) | 388 | `result-track:9ee273b31a0f7b2343547e47b3a56ab6913f665afd2d0a5d8cb63ae05942a7a2` |
| 50 | `theorem` | [rootSet_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/rootset-x-pow.md) | 394 | `result-track:b123e8e6c0c60fd16d8c135b7f9422dcc2136feffadcfc54020bff799f7837a7` |
| 51 | `theorem` | [rootSet_prod](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/rootset-prod.md) | 401 | `result-track:98f4360779040751e9e20599e72270fbd9f20875bb00660eaa6f55cb134c94c5` |
| 52 | `theorem` | [exists_root_of_degree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/exists-root-of-degree-eq-one.md) | 409 | `result-track:9049f69f52d1a37db8ea5ebc8f26bb907cda56debf7a918f4e271ea005d04f52` |
| 53 | `theorem` | [coeff_inv_units](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/coeff-inv-units.md) | 419 | `result-track:79c63dd21fa629de163765761a04b8ffb82d053768e40e15b56087e9e9028d89` |
| 54 | `theorem` | [monic_normalize](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/monic-normalize.md) | 429 | `result-track:aa046e76fffc402b02da69a89aadde30617b89877766f656e081e2e1514ee7d0` |
| 55 | `theorem` | [leadingCoeff_div](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/leadingcoeff-div.md) | 435 | `result-track:c834c90c314637fe53a5535c4730b37d4636c6746d963084a4a40441d9160d99` |
| 56 | `theorem` | [div_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/div-c-mul.md) | 445 | `result-track:1e2f3c7563e897a10cc66ad54a9e94b2c73f979f4ec018389f889372528c83b5` |
| 57 | `theorem` | [C_mul_dvd](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/c-mul-dvd.md) | 454 | `result-track:0d6f0b0f9d4f9bc1174a34d51d6549924c58ac04a2321fb0ab109e9d874395ff` |
| 58 | `theorem` | [dvd_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/dvd-c-mul.md) | 462 | `result-track:35520000a522372129418922ee3e9a8ce544e2479138f42a15ff445d5f2c209a` |
| 59 | `theorem` | [coe_normUnit_of_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/coe-normunit-of-ne-zero.md) | 471 | `result-track:cfc5c74466ce84508a1587d770dbb1828383ebc5d5ebf70a4daedd6a2a41a9cd` |
| 60 | `theorem` | [normalize_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/normalize-monic.md) | 477 | `result-track:d413f5572d0eb9e1bf9cec7d074b8e4142d4a8d597fe7d8b61cdf0eae14ba7ce` |
| 61 | `theorem` | [map_dvd_map'](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/map-dvd-map.md) | 480 | `result-track:528059e9bc9244e9c9cb94f40617d210de8f85b3642ca0593536e841e10854e6` |
| 62 | `theorem` | [degree_normalize](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/degree-normalize.md) | 490 | `result-track:584f087f4171b51d3a33aae1378e9f2c90e99ac76b1ce5297b3d086a50e5a87f` |
| 63 | `theorem` | [prime_of_degree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/prime-of-degree-eq-one.md) | 493 | `result-track:c95289bd7ad965ff35fcca3e8c852e01d86da91bf10082601adff6b65192a8da` |
| 64 | `theorem` | [irreducible_of_degree_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/irreducible-of-degree-eq-one.md) | 501 | `result-track:40736b1d55f6b11444c1bb60b1d4a5ac5f8fbf11bdf183d0b07a6ca8ee92be2b` |
| 65 | `theorem` | [not_irreducible_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/not-irreducible-c.md) | 505 | `result-track:1a72f72c055c0440cc1a2de48fc400a20b51d96f69bb9b770369c616d505ccc6` |
| 66 | `theorem` | [degree_pos_of_irreducible](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/degree-pos-of-irreducible.md) | 513 | `result-track:b44cac7b17f2f0d1abf03a1e80944790b0035d113afc535d16ba23f605f745be` |
| 67 | `theorem` | [X_sub_C_mul_divByMonic_eq_sub_modByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/x-sub-c-mul-divbymonic-eq-sub-modbymonic.md) | 521 | `result-track:706e6ddf6379ecc2c3d47fde286309e2aa6fc5f7f072bcc9333f9e48d6a0c9b0` |
| 68 | `theorem` | [divByMonic_add_X_sub_C_mul_derivate_divByMonic_eq_derivative](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/divbymonic-add-x-sub-c-mul-derivate-divbymonic-eq-derivative.md) | 528 | `result-track:79af39d3894db4a2994db3967ae25fe414c065e497e920060fa23347c147afc8` |
| 69 | `theorem` | [X_sub_C_dvd_derivative_of_X_sub_C_dvd_divByMonic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/x-sub-c-dvd-derivative-of-x-sub-c-dvd-divbymonic.md) | 540 | `result-track:353589583bddcf7a62316ce70683c6c0d7f0416f7699c554f536ba97920e1fc7` |
| 70 | `theorem` | [isCoprime_of_is_root_of_eval_derivative_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialFieldDivisionNamespaced.lean/declarations/iscoprime-of-is-root-of-eval-derivative-ne-zero.md) | 550 | `result-track:ac0780f710517ceda0040147596db439218bbc3cf99b33e0c6133b7aa781d675` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68ce25bbc1f1121fb02c2f7775f2c76daca13ce421be6cc7aa4a15a103cdfabc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/FieldDivision/Variant5fe9f691309ae4a2c3908fe609feb14f28fb7831dec383ed9c9c30fb6bdc4c48.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/FieldDivision/Variant5fe9f691309ae4a2c3908fe609feb14f28fb7831dec383ed9c9c30fb6bdc4c48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
