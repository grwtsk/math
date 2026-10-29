# Verification target: Power Series Basic Namespaced Forall Coeff Eq Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fa2a4079e55c4b3af0ce23de3824576e017d6df",
  "lexical_observation_count": 157,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4217358ed5fcad8bed93184e486a2b928eb6345c761f00ee9ec257d93d2d2b6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fa2a4079e55c4b3af0ce23de3824576e017d6df`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4217358ed5fcad8bed93184e486a2b928eb6345c761f00ee9ec257d93d2d2b6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant4217358ed5fcad8bed93184e486a2b928eb6345c761f00ee9ec257d93d2d2b6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MoveAdd` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PowerSeries](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/powerseries.md) | 62 | `declaration-track:b73ac4ea945e794fbe4a80a550d3c925ff10a134e0e59d9ec867ce51772c496d` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-10.md) | 83 | `declaration-track:899339c4b370a729c285f4c46c2ec5e682f477055cae3814e2e59ec672848337` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-7.md) | 87 | `declaration-track:769cec6ac7461ff74d16af28dec844c6890d2b4db6d6cd63477ff37dbc127118` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-14.md) | 91 | `declaration-track:de48a4908fd63ce7eb7835f828e9a71f8798edf3b827de4970084406f3495b3c` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-15.md) | 95 | `declaration-track:de66c88b8004adaf1ea6c8b677b960dbb1b3421bafa755afd80e641cffff2ebb` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-4.md) | 99 | `declaration-track:63165023ddc1e9f2cac0ac48537b91e67b0aabb557317bc318b9e2ff7de845a8` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-11.md) | 103 | `declaration-track:c274e325acf11da71394a98aabc4a9c76d878d523cb9a50445b9a0c040eea284` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-2.md) | 107 | `declaration-track:0a6c88766396ace36432a153637df48ec237b0afc7cf7cc927380bcc487f7987` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-6.md) | 111 | `declaration-track:648ae2419fc21e1c14123ade4b9787cf07aa0685e4daa248fdddedb00d128777` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-9.md) | 115 | `declaration-track:8684fd657279ecdd04c974b43311422424fa125f270f3f13e342c0f58d7f69ee` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-17.md) | 119 | `declaration-track:ffd0c2acb4729a1967dde52832c07a25a4c2fefe2247c0673930107a144f2453` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance.md) | 123 | `declaration-track:04ac5d7f6612f206f1a8824bb25388c50734e45f0df954231e32847072abc59c` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-12.md) | 127 | `declaration-track:c2ec10ae44c5b140d4170e7293716f4de89d10a661b4d7ffa5858d9445361c4b` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-5.md) | 131 | `declaration-track:632e0966557a809eb28c20998fadec5da8800c68baaee642ee8ce3068e2261f3` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-13.md) | 135 | `declaration-track:d78995f572fb168e77c8676777c9784a646255a80e07865cc7568b3a634a1f1d` |
| 16 | `def` | [coeff](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff.md) | 146 | `declaration-track:c4b59560f5a371ce17fa88dfa5573cb2928037bda4194d7e6ab023f5de4be6b5` |
| 17 | `def` | [monomial](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/monomial.md) | 150 | `declaration-track:2f91cfef1306e0c8fb6a68faaf33909b8e951391f31f9040691cd7195848c48a` |
| 18 | `theorem` | [coeff_def](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-def.md) | 155 | `result-track:6796dfcceb75cea662b82e67d73da1f9b59073e458f7d572baa654abcd9d7117` |
| 19 | `theorem` | [ext](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/ext.md) | 160 | `result-track:2af1f09c86614e92633ea6d8e665458bcf1e995c3ce9b1e0f50a86f316a21b71` |
| 20 | `theorem` | [forall_coeff_eq_zero](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/forall-coeff-eq-zero.md) | 167 | `result-track:355d5ae9bf1dceafd88c30466b01e5e14959dae9d1fbdb808ea044ec6290f3cc` |
| 21 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-16.md) | 173 | `declaration-track:e004a67a45137f8f5c650b36b579d3d834b5df053fd1f7783b43f62ab7da12ae` |
| 22 | `def` | [mk](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/mk.md) | 178 | `declaration-track:143f211f6b3e849fc98fdb6f580eeb1a12a49036441c12d806c2023971f2a7ec` |
| 23 | `theorem` | [coeff_mk](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-mk.md) | 181 | `result-track:86e2a3b1ad4b8d09774a6e0b17a2c6c80ac357ef1c9a5ceb032fd6e59972d180` |
| 24 | `theorem` | [coeff_monomial](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-monomial.md) | 184 | `result-track:30f0b033665e849faf1214ba2b8419f9bda7f4c3834ecffcd88442d8beaee9e8` |
| 25 | `theorem` | [monomial_eq_mk](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/monomial-eq-mk.md) | 189 | `result-track:eb550f3ebd82a6a48e701d7f1673e244f24a2b15f830d6780983f473897110ac` |
| 26 | `theorem` | [coeff_monomial_same](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-monomial-same.md) | 193 | `result-track:d5fd81f0c58d746e866f6298fa5ceb994cb76e1379a2c47bafaf6e6bc8f38d20` |
| 27 | `theorem` | [coeff_comp_monomial](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-comp-monomial.md) | 197 | `result-track:7c16e40e9a4975ccd661d85ec0d0156c0f71f81329a7c90ef9b0df5adb42d48f` |
| 28 | `def` | [constantCoeff](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff.md) | 203 | `declaration-track:a383209946125be3f8b69ffaa4b9c07807189bf0d0a05371602b4b1815df686e` |
| 29 | `def` | [C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/c.md) | 207 | `declaration-track:dfed0f453a73b505b87d3e368111d2bd672c921108388d75b92c83fa1981f5b6` |
| 30 | `lemma` | [algebraMap_eq](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/algebramap-eq.md) | 210 | `result-track:6eab4b03e1360d0c572223346980d9a775ce82feb5202c51a95d9e80446adde5` |
| 31 | `def` | [X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x.md) | 215 | `declaration-track:81baa885478b4c97ff592b5858cd1412f574086c2f7fae72f0104c4efc8dd50b` |
| 32 | `theorem` | [commute_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/commute-x.md) | 218 | `result-track:da770d9416aeed9f7bb01d95827e792b1324e83fd31ac8546f6076fa8263858e` |
| 33 | `theorem` | [X_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-mul.md) | 221 | `result-track:3bbccd284b9be509d13e1c8163916fa780e5ea6579cf01abf408e3a7bf4a2b2e` |
| 34 | `theorem` | [commute_X_pow](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/commute-x-pow.md) | 224 | `result-track:811de9fe0fd7ad8e8f0eb349bec3a8b88dd48b06a6561b51efd8b602bd05d6b2` |
| 35 | `theorem` | [X_pow_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-pow-mul.md) | 227 | `result-track:bf2df2446cc173c5dc0f79d122c06e66b330df8269b50694ddf95af2446e3077` |
| 36 | `theorem` | [coeff_zero_eq_constantCoeff](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-zero-eq-constantcoeff.md) | 231 | `result-track:432579c13409180b4bc718faf0df7752a81f5fb7ab9b392089561e059093a277` |
| 37 | `theorem` | [coeff_zero_eq_constantCoeff_apply](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-zero-eq-constantcoeff-apply.md) | 235 | `result-track:2adfa2f335b7627f07e5db2892dc443df6f5914acedfb7bc959f2cffee7dba5e` |
| 38 | `theorem` | [monomial_zero_eq_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/monomial-zero-eq-c.md) | 239 | `result-track:ae7607830581856facbaeecc6acc518eff2cbe28a1d6d3aa223c6837b6c98870` |
| 39 | `theorem` | [monomial_zero_eq_C_apply](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/monomial-zero-eq-c-apply.md) | 244 | `result-track:8cda4f518aee3b3d1b3f7f58c470250b0eb5ed7e98d88defd77bfa52b8a5fa70` |
| 40 | `theorem` | [coeff_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-c.md) | 246 | `result-track:a2e78f80f5b2dd8df39ed626e1755711f2e4f8101f0658da87f6a39dc399e235` |
| 41 | `theorem` | [coeff_zero_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-zero-c.md) | 250 | `result-track:fc7d9a79bd035af3ca6d769a57952d4051395c2f6fa7e42383cf382d3d2f0b94` |
| 42 | `theorem` | [coeff_ne_zero_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-ne-zero-c.md) | 253 | `result-track:5e546d9df8bcad8dbc670428cfe559d70e663a0c025830d957ac5b3106e85437` |
| 43 | `theorem` | [coeff_succ_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-succ-c.md) | 257 | `result-track:ec0d06b6b46a74a08cd4534696fcfe371807e6fcc454caa172e72d284bbe2654` |
| 44 | `theorem` | [C_injective](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/c-injective.md) | 260 | `result-track:b94f7c9c496083c0617afc8b0f2af7af70e8472e06bf194ca8ff0e3611132807` |
| 45 | `theorem` | [subsingleton_iff](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/subsingleton-iff.md) | 265 | `result-track:a1230d4b699f08e5a2d033acc50d6cbdabe93a3392dc8bc5ab6c35ea39acbc05` |
| 46 | `theorem` | [X_eq](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-eq.md) | 270 | `result-track:ddb3511357b0e4f6227bd0494f0f0f165dedbec47f4db126754794b6e434331b` |
| 47 | `theorem` | [coeff_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-x.md) | 273 | `result-track:39d011fe3e6e89f656eef0a0a6aa65e92e0eeb3dcaa64fbb533cd480d6cf4298` |
| 48 | `theorem` | [coeff_zero_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-zero-x.md) | 277 | `result-track:cf61419cf1abfa52e11d264428436856d8002a5f77b61ac17b1c0723f43d074b` |
| 49 | `theorem` | [coeff_one_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-one-x.md) | 281 | `result-track:b396eee5c2f38b7b024a0e78790db5e7418952d9e0386484232890f58841936f` |
| 50 | `theorem` | [X_ne_zero](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-ne-zero.md) | 284 | `result-track:44ac5bad2a00d95ce848d43bfa58d64edde122c75c897858f0d83c77996b43eb` |
| 51 | `theorem` | [X_pow_eq](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-pow-eq.md) | 287 | `result-track:d3d263614501822b6eecd3225f27db7b128bbaead3655b382f2ce17b547b73db` |
| 52 | `theorem` | [coeff_X_pow](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-x-pow.md) | 290 | `result-track:72fefc562ea992fdfe64b6cf095c18226b9639e047873c227615da37e40c28e9` |
| 53 | `theorem` | [coeff_X_pow_self](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-x-pow-self.md) | 294 | `result-track:76cc3b0afb94702914beca78b3f9a7f8fab58b1233c35871d6d3afe433468f1f` |
| 54 | `theorem` | [coeff_one](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-one.md) | 298 | `result-track:b31338fb763d5cf1a4edee81e4cbef178d0d20ba51fd9c84270a373f34f847b0` |
| 55 | `theorem` | [coeff_zero_one](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-zero-one.md) | 301 | `result-track:0459a36138506fbde9d380573add191d6722844cc64d7d0189d48f7457141b96` |
| 56 | `theorem` | [coeff_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-mul.md) | 304 | `result-track:be3a55e124a7be20663a0143e7c201983b2ee8b1e7b4333999cbcbc9c2dc1ae4` |
| 57 | `theorem` | [coeff_mul_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-mul-c.md) | 312 | `result-track:5e35cb8410defb0b30b7c87b7db922afdb8a473f07c5a011d3c295b0d83d2068` |
| 58 | `theorem` | [coeff_C_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-c-mul.md) | 316 | `result-track:b42227453004509f65bd2507988038ad088afd8d67b240ba20a2b1fcdd27dfd0` |
| 59 | `theorem` | [coeff_smul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-smul.md) | 320 | `result-track:57cd4bfe76b43560e8db3824c70c50292c8806e7bfd831f25eed9299d56ee805` |
| 60 | `theorem` | [constantCoeff_smul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff-smul.md) | 325 | `result-track:216cae3fdde4d64c9c1c0a57c16a5d62f17f1b91ab0c32ab45bfb5119491d669` |
| 61 | `theorem` | [smul_eq_C_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/smul-eq-c-mul.md) | 329 | `result-track:5386aba7d73d22913750eabf716af072570e43e101db5544f153c857dac4bf09` |
| 62 | `theorem` | [coeff_succ_mul_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-succ-mul-x.md) | 334 | `result-track:914928e4c17723803613e837ea5d5e67d6e85c7109f3592fa1d56a5bc6245097` |
| 63 | `theorem` | [coeff_succ_X_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-succ-x-mul.md) | 340 | `result-track:1b9c7142dcb7f1e35bc2e232a23c68f41038670962b262a93115017f8eff37e6` |
| 64 | `theorem` | [mul_X_cancel](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/mul-x-cancel.md) | 345 | `result-track:b4a4a8465c40e3d343d51a343d6782bb8f2ae65baa405ce868f2d3f6e449daee` |
| 65 | `theorem` | [mul_X_injective](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/mul-x-injective.md) | 350 | `result-track:4ab89de5c8552d2df51e58cb63e7f6a051b932cfb55a4c0dfa87ada08f299594` |
| 66 | `theorem` | [mul_X_inj](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/mul-x-inj.md) | 353 | `result-track:bf9397bde040877df183dce7db7d762a423ddcd04392b4ba556e1c5a83aa5d98` |
| 67 | `theorem` | [X_mul_cancel](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-mul-cancel.md) | 356 | `result-track:ef5a8b2bde563b4fd107ea8092f36f07334e99a70d2dee0625f06ac201f8d6e0` |
| 68 | `theorem` | [X_mul_injective](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-mul-injective.md) | 361 | `result-track:dbdc3486b6955264710d577f65aecdfee41f66127e3c8e973fbdc6dd8ce3d879` |
| 69 | `theorem` | [X_mul_inj](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-mul-inj.md) | 364 | `result-track:04446bc495daf21ebb87f8082a287871bc334a9f1d7d782bb26083f19cd77fc6` |
| 70 | `theorem` | [constantCoeff_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff-c.md) | 368 | `result-track:f7f412eb124568e3dfa0b2808c56cdb38df143cfc5ce2e41e7fcb714355b9790` |
| 71 | `theorem` | [constantCoeff_comp_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff-comp-c.md) | 372 | `result-track:aee20fe1a3fb9082937dd1f609f3926ad3ced2b386c893351136dbc9425e2b58` |
| 72 | `theorem` | [constantCoeff_zero](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff-zero.md) | 376 | `result-track:5105fd312da4015901f409b422c97351b87254a152ae463f3530bfc640b46a1f` |
| 73 | `theorem` | [constantCoeff_one](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff-one.md) | 380 | `result-track:e374c08949af01ea4cbe4587f7de73cf0ab50fde1467c879b0ab5705e3bd6560` |
| 74 | `theorem` | [constantCoeff_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff-x.md) | 384 | `result-track:8a090caaf5ce63f93387935a8c9c2ea3b1fd4f51f802352c244081519a3649cc` |
| 75 | `theorem` | [constantCoeff_mk](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff-mk.md) | 388 | `result-track:5be7af48b7719aa18a8869b5bbb6625a08dc57cf1638281f4c15b7ea55083de2` |
| 76 | `theorem` | [coeff_zero_mul_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-zero-mul-x.md) | 390 | `result-track:73c01c966b3b46343b6795333b424105f9e22ca8686c1e89bc09ea4383c39959` |
| 77 | `theorem` | [coeff_zero_X_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-zero-x-mul.md) | 392 | `result-track:a3d079798e2172a90f38ba2d9e39b47791053c723ff23bc7c3ae09e0bcbcc403` |
| 78 | `theorem` | [constantCoeff_surj](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff-surj.md) | 394 | `result-track:6553adc7dd0b84b16d7de433bd433274a56a0187bacb628c0677edbe5a749b1c` |
| 79 | `theorem` | [coeff_C_mul_X_pow](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-c-mul-x-pow.md) | 401 | `result-track:96d59c41574d2a4f0bf10c743b8ec6be3a0017bd974a4389d336f1fae9ea58a2` |
| 80 | `theorem` | [coeff_mul_X_pow](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-mul-x-pow-source-edition-2.md) | 406 | `result-track:8cf7b02ee6c8abca78225e57601df52fd916003d0f47f1f3a0bcbc2ad4d406da` |
| 81 | `theorem` | [coeff_X_pow_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-x-pow-mul.md) | 419 | `result-track:6e42b3f6c12de396d6df4ee0bd96a1dbed1d39799e11fc96ee915775f8c0440f` |
| 82 | `theorem` | [mul_X_pow_cancel](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/mul-x-pow-cancel.md) | 432 | `result-track:34fa0efb72f3dae5871e2a2ec528d18200bb0fa1b2673cab2829b82ac15cd7bc` |
| 83 | `theorem` | [mul_X_pow_injective](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/mul-x-pow-injective.md) | 438 | `result-track:cd819933ffe64a692e00d69d5516290419fe5f410732c5f23579286ff621204c` |
| 84 | `theorem` | [mul_X_pow_inj](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/mul-x-pow-inj.md) | 441 | `result-track:d223fd0d0d28e5b061e24b5e4e295d1d88d4bab953adacb3e532a8eac40dbc7a` |
| 85 | `theorem` | [X_pow_mul_cancel](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-pow-mul-cancel.md) | 445 | `result-track:54d5359b7e37fc206f986f5974bd14188559f7c503312009d22acab3e91d212d` |
| 86 | `theorem` | [X_pow_mul_injective](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-pow-mul-injective.md) | 451 | `result-track:c6ecc3f357a67c47fe83996849117ece6163ce5fd724b28b9a78670ecaba2e5c` |
| 87 | `theorem` | [X_pow_mul_inj](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-pow-mul-inj.md) | 454 | `result-track:289e3348bc0e489909f4b7dfe0b9b7987c9cfdf8f9a9db74fa9b8244a18c1f3a` |
| 88 | `theorem` | [coeff_mul_X_pow'](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-mul-x-pow.md) | 458 | `result-track:6738cd7a4f4af1042658fd8d035d2a27bbb6bbc2b5be1c085cb9f3a002dcdd28` |
| 89 | `theorem` | [coeff_X_pow_mul'](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-x-pow-mul-source-edition-2.md) | 466 | `result-track:f9b82b57502fbfae5e9588898461d6e191af50eb777a03c9ddf765423bbfce72` |
| 90 | `theorem` | [isUnit_constantCoeff](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/isunit-constantcoeff.md) | 480 | `result-track:367236e005f56bf24379ee55b04d4dea26a6148e1d78ceee97f60e2edc002ca6` |
| 91 | `theorem` | [eq_shift_mul_X_add_const](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/eq-shift-mul-x-add-const.md) | 484 | `result-track:e2638b90659e61a3b5fddeb66a72d106afb9b32659ab7fc77af54b4f3850b889` |
| 92 | `theorem` | [eq_X_mul_shift_add_const](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/eq-x-mul-shift-add-const.md) | 493 | `result-track:6502e3928a730fac26eb25d3ee52209c3c90e0c899a1bf6bbb4b9cec7822bc41` |
| 93 | `def` | [map](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/map.md) | 507 | `declaration-track:e21629915b68483beb203adeb65465a21bddfcfc2ad490d9390a2b51ad6e6fa8` |
| 94 | `theorem` | [map_id](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/map-id.md) | 511 | `result-track:5312ffaa009a7653d75bcf05c9eff2ed31d4ad9b068c322dbdf3b85a976de9d3` |
| 95 | `theorem` | [map_comp](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/map-comp.md) | 514 | `result-track:64331c9442ed9e7f6394fa263331250d500a865642d1ccde5b3ceec5fe807e1b` |
| 96 | `theorem` | [coeff_map](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-map.md) | 518 | `result-track:1a5d78415bfb38472b67a046b71d34eb562eb887ea2d0910f9ec8d14627df993` |
| 97 | `theorem` | [map_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/map-c.md) | 522 | `result-track:905c9acb599206474860fad3211bdbef95ea65537160106ba5cb1534e9f72009` |
| 98 | `theorem` | [map_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/map-x.md) | 527 | `result-track:a4c56ad1888baf33c74db2b6e9656c2b7bba4e6eea326aaf901ed64d9e618072` |
| 99 | `theorem` | [map_surjective](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/map-surjective.md) | 531 | `result-track:8d2072dd111e0574afe299b4f7df3ff30705bc076ebf2ecf230705d992a0aed7` |
| 100 | `theorem` | [map_injective](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/map-injective.md) | 539 | `result-track:e03520ccae900b84034a1096197dc32293b135fae49ed46028e1a8574173545a` |
| 101 | `theorem` | [map_eq_zero](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/map-eq-zero.md) | 549 | `result-track:e17e73bcf3684dd2e0b82f1c3f6f21834f88223ad5c0a060be49441bc023acd1` |
| 102 | `theorem` | [X_pow_dvd_iff](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-pow-dvd-iff.md) | 553 | `result-track:fe9c3be89920b452971a398d8f43119fc07ee31f3e7be82b3d8b5c9e12e38fba` |
| 103 | `theorem` | [X_dvd_iff](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/x-dvd-iff.md) | 562 | `result-track:0dfe1a7beaa82153f368b9a316a7a1bbc01b460deee8ad414772e862cf8bc5ff` |
| 104 | `def` | [rescale](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/rescale.md) | 578 | `declaration-track:2edcf0b8afb824eed7290d621abc7061c0b33ad83c1721a9d8a3c33a0a5febbb` |
| 105 | `theorem` | [coeff_rescale](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-rescale.md) | 603 | `result-track:cdc7ffac872132c790383f4854621dc90faca1167f01299a2a683ece83d04702` |
| 106 | `theorem` | [rescale_zero](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/rescale-zero.md) | 608 | `result-track:eaa8d63ed2eb27391f199e3e6eacf7bfb267c781fb5f46495f778efe35b3b3f8` |
| 107 | `theorem` | [rescale_zero_apply](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/rescale-zero-apply.md) | 614 | `result-track:3db14b42c31d3136facf77e7c93f18bf4f643723b649065e496572c499be22b8` |
| 108 | `theorem` | [rescale_one](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/rescale-one.md) | 617 | `result-track:58becb5a4764e4ce401e0acc460f48c4374dcb8652047f0a2e0dae2bf2ee3420` |
| 109 | `theorem` | [rescale_mk](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/rescale-mk.md) | 621 | `result-track:ab04b90029a5c0f85da9e8bc863c7224e066ab9f3504cb19a6119328b35ced94` |
| 110 | `theorem` | [rescale_rescale](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/rescale-rescale.md) | 625 | `result-track:4a78099db73f0b6d4a03ba60ba822e9f62109a4aa1ce2ac1f7314f60268bf044` |
| 111 | `theorem` | [rescale_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/rescale-mul.md) | 631 | `result-track:98d5499cb3b84f92045c20a08b43bcd368bb164531d642d2c9971987360de484` |
| 112 | `theorem` | [coeff_prod](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-prod.md) | 644 | `result-track:fffdba4f53e122bbb06c0b9847b48cd4b5cae061c21ec001e51c26de91cbc8f2` |
| 113 | `lemma` | [coeff_pow](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-pow.md) | 658 | `result-track:82f2fcf26455ebdabfb136c1bb67e4559cd5b20802003295d498f18e0e99f0f4` |
| 114 | `lemma` | [coeff_one_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-one-mul.md) | 667 | `result-track:d6ad6531e2bbcc16941b42a98ab1bb91774957ad3c9d507d92bf322811c4afe6` |
| 115 | `lemma` | [coeff_one_pow](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-one-pow.md) | 675 | `result-track:6c6da7316386a2568b77c828dc7a41771201a3d7b42e42bf9035c86b4b3f5b01` |
| 116 | `theorem` | [not_isField](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/not-isfield.md) | 712 | `result-track:a8b554958f3cddd942ea59a3641bedfd113f3f54a0e4b4f8393006b097645278` |
| 117 | `theorem` | [rescale_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/rescale-x.md) | 726 | `result-track:51c3c91057083eddaa8e78fe2077ddff0bef91e4b2de4d5a375855bf3cad6e58` |
| 118 | `theorem` | [rescale_neg_one_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/rescale-neg-one-x.md) | 731 | `result-track:206236159fceb7f77a1cad377097baa1978269400f7cdcefadb53c4b442aaf17` |
| 119 | `def` | [evalNegHom](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/evalneghom.md) | 735 | `declaration-track:a6be05a292888cba38de9ca166f5f6097ddacb9855beda57ac7c8e962a20129c` |
| 120 | `theorem` | [evalNegHom_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/evalneghom-x.md) | 739 | `result-track:d3b529693fdfbb0b00b794bc4b7211aeab1717e98588ef6bf632d97e899e9320` |
| 121 | `theorem` | [C_eq_algebraMap](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/c-eq-algebramap.md) | 748 | `result-track:60a0654233cb52d3c6d80c1db64a5e5b10da78cdf0142699dad8ed8a5cda0630` |
| 122 | `theorem` | [algebraMap_apply](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/algebramap-apply-source-edition-2.md) | 751 | `result-track:21513444e84f68a8d4a2d916b1aa3fdb78af8ea5c7d22d3463c6a861f5f7af9f` |
| 123 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-8.md) | 754 | `declaration-track:8301292570c282216d6c9860fd20f5c5722a7371d58a64153d46a234221a71e7` |
| 124 | `def` | [mapAlgHom](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/mapalghom.md) | 758 | `declaration-track:b8f060c36f15cccd5fd04b1dcb82fecb4e09f0709b09c15245ef6a3bd87810fa` |
| 125 | `theorem` | [mapAlgHom_apply](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/mapalghom-apply.md) | 762 | `result-track:b68c587aee858fd9e0d1ab6eadd95c1882ec9bfc5a0ca4ceb8bc12902ad4a62a` |
| 126 | `def` | [toPowerSeries](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/topowerseries.md) | 779 | `declaration-track:1669b6b880e5036d438ac84887375ef0723a69884d5164a4135e2e46718d16ed` |
| 127 | `instance` | [coeToPowerSeries](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coetopowerseries.md) | 785 | `declaration-track:c72d16d9f92e6a6e6434d04e748bff47b86a290f5891ec08de39566bd6def4b1` |
| 128 | `theorem` | [coe_def](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-def.md) | 788 | `result-track:dd1120c9e991309a6ede04252c31e5d9e06ae8827eef1b1e372ffcaff67e9d2d` |
| 129 | `theorem` | [coeff_coe](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coeff-coe.md) | 792 | `result-track:4be094b77162eee576ba51c154017c78c9067867bda984f649994f1b38800ba5` |
| 130 | `theorem` | [coe_monomial](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-monomial.md) | 796 | `result-track:367ed8c94e2fd647ded5eef07f3c1390b91da0528267b464a9289814bc9f4c1b` |
| 131 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-zero.md) | 802 | `result-track:75c7d1e0ed13504f8b5550d2fcf32e7da6f3d0772cc63c7d6f855f86fd1ec449` |
| 132 | `theorem` | [coe_one](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-one.md) | 806 | `result-track:5a88d51c2d5293f669268a2531ca54da6899ca6a26c087723732b3e4d2a90633` |
| 133 | `theorem` | [coe_add](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-add.md) | 811 | `result-track:a6cb7204f26b33bf1c906892e2b6f83d4456cbb9a88a0622f169a96b5c9dfc3f` |
| 134 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-mul.md) | 816 | `result-track:5ad2535ac123f46fa3a69c5b70b61e6084db9fb011dd7d74d29d3e8076046947` |
| 135 | `theorem` | [coe_C](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-c.md) | 820 | `result-track:445efa1c5e93a55552fe0abda0ff39a682293edfe3e9eb08759aaba8281eb875` |
| 136 | `theorem` | [coe_X](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-x.md) | 825 | `result-track:c60469dd1cc2d36ffe066d44965548252c0665449b62647abd94f0230c016bac` |
| 137 | `lemma` | [polynomial_map_coe](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/polynomial-map-coe.md) | 829 | `result-track:d8f0077ebc1a307ce4817605381302e88f004bd4e02642f7b4cbae646ce8183a` |
| 138 | `theorem` | [constantCoeff_coe](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/constantcoeff-coe.md) | 835 | `result-track:5b84e1176a2b7fcd10567aa9573038ac64efd2e91143e1f67f9abbd0a2a4c6c9` |
| 139 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-injective.md) | 840 | `result-track:0dc204278380fd3f5557ac17fccda5cf2363d465372e8008c3bb90be850ffcb0` |
| 140 | `theorem` | [coe_inj](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-inj.md) | 847 | `result-track:48d84a2991d236daadbf7884ea1b87b199ba30be714dd85a78378972da6ae66a` |
| 141 | `theorem` | [coe_eq_zero_iff](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-eq-zero-iff.md) | 851 | `result-track:3e219bfa6adc856f92ef79b7627b95192a88a92eff2f417dedb083e8b0f69855` |
| 142 | `theorem` | [coe_eq_one_iff](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-eq-one-iff.md) | 854 | `result-track:48e168310745a76af81c49fcb374bfc9dbab849005e1e6721dc35afad0e1cc82` |
| 143 | `def` | [coeToPowerSeries.ringHom](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coetopowerseries-ringhom.md) | 859 | `declaration-track:d7c8b3d4835e3183322c3a65075730ddd772884fb092e3aad4e9471ee37c4706` |
| 144 | `theorem` | [coeToPowerSeries.ringHom_apply](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coetopowerseries-ringhom-apply.md) | 867 | `result-track:a05b758d3622c783c97f95b205345ef4fb54750fe7223149544fbb0bc9790c56` |
| 145 | `theorem` | [coe_pow](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-pow.md) | 871 | `result-track:33491ce403186c2c775fa1cdb8352cd359acd0dcbe07883611d1b2a334fdfb91` |
| 146 | `theorem` | [eval₂_C_X_eq_coe](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/eval-c-x-eq-coe.md) | 874 | `result-track:928ffab830377d5fd8b84e074739dc272f1aa0ee65f9daf3a28acec6fde59582` |
| 147 | `theorem` | [Power Series Basic Namespaced Forall Coeff Eq Zero](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/tomvpowerseries-punitalgequiv.md) | 888 | `result-track:c0b24756dfbdee9ac030a452d3203647345d1be9c36f1fcac20149aaa1620fe7` |
| 148 | `theorem` | [pUnitAlgEquiv_symm_toPowerSeries](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/punitalgequiv-symm-topowerseries.md) | 899 | `result-track:62530784af776634dc735bd103bbcae26ffd8302ee81d1b2cc3625e2f65853ab` |
| 149 | `def` | [coeToPowerSeries.algHom](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coetopowerseries-alghom.md) | 911 | `declaration-track:e5f25d430538580283af2a53987d06be8072a31c0129254ba48c7de9841b6609` |
| 150 | `theorem` | [coeToPowerSeries.algHom_apply](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coetopowerseries-alghom-apply.md) | 916 | `result-track:92c8af95b68d913eb15c35fcc4a47494468419e035f0054a0718304fb1d4a078` |
| 151 | `lemma` | [coe_neg](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-neg.md) | 926 | `result-track:1a8a522c5367a321d7a46067be8ecc777cbc3709dbe2ec81bf4e3af9c58d3699` |
| 152 | `lemma` | [coe_sub](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/coe-sub.md) | 930 | `result-track:862503dd422f0020cfe4ea5ce4e2c9989e6e0aa7d1b667c451f95f4935568c55` |
| 153 | `instance` | [algebraPolynomial](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/algebrapolynomial.md) | 945 | `declaration-track:fa38983047d54966460af23a3fb67a57dc95298f7b62b715c79cb4de00178511` |
| 154 | `instance` | [algebraPowerSeries](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/algebrapowerseries.md) | 948 | `declaration-track:1760c7f98bda41498ec50acc072c895d465452ea19446004cf8c60b26e320e70` |
| 155 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/instance-source-edition-3.md) | 952 | `declaration-track:0adbf12ad0a8e7826908b7c7d709abad284922a904493945cea65876bc7ca495` |
| 156 | `theorem` | [algebraMap_apply'](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/algebramap-apply-source-edition-3.md) | 958 | `result-track:bdbfe6b533450ec03f8a5f8ec1badebfc49f82a156c3a634b1695678cc1b60ec` |
| 157 | `theorem` | [algebraMap_apply''](../../../../CommutativeAlgebra/PowerSeriesBasicNamespacedForallCoeffEqZero.lean/declarations/algebramap-apply.md) | 961 | `result-track:0f840fb486a2299faf8a3106c1b2c479ad03e001e57f99a522611489c0887250` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4e552495084b10540219fc15f0768dd10bd4b447822a0db11cf5ec23c3c026b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant4217358ed5fcad8bed93184e486a2b928eb6345c761f00ee9ec257d93d2d2b6e.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant4217358ed5fcad8bed93184e486a2b928eb6345c761f00ee9ec257d93d2d2b6e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
