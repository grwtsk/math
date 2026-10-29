# Verification target: Ring Theory Ideal Basic Ideal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf297d72a9004ca0e6747bf24acf2c5ba88790f4",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf297d72a9004ca0e6747bf24acf2c5ba88790f4`.

Source path: `GRWTSK/Algebra/Basic/Variant5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ideal.md) | 44 | `declaration-track:2c1fa13f56b9c85aeeb1284e622691e70671ab915e670f24b6f63a9bc5d0c738` |
| 2 | `theorem` | [zero_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/zero-mem.md) | 54 | `result-track:46439091f12471cd269e57b177784947ed7302cc6efdfab7ff462f2ff1bb9f07` |
| 3 | `theorem` | [add_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/add-mem.md) | 58 | `result-track:843ed9c8b55eea807206add7b827c281b3c71ff91ecb9d23a8897e398b412cc8` |
| 4 | `theorem` | [mul_mem_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mul-mem-left.md) | 64 | `result-track:e60b44eb14b9ea55aa6d18d5347b82d24c54245aa8d41b77d7ccb571499d1b6c` |
| 5 | `theorem` | [ext](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ext.md) | 71 | `result-track:f3dfc8bfee260da5fa9cac5a3df79bef77645525c21d4c555a42f49084ed33f1` |
| 6 | `theorem` | [sum_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/sum-mem.md) | 75 | `result-track:1c2f7d959cd81b1335bcefa47be263f4999fa837f965bfa2257e55ddd2470eee` |
| 7 | `theorem` | [eq_top_of_unit_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/eq-top-of-unit-mem.md) | 80 | `result-track:bef55fe15ebd7acd5908d5035e23619ede909ad08d6ca73e9778b1545e275fa5` |
| 8 | `theorem` | [eq_top_of_isUnit_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/eq-top-of-isunit-mem.md) | 88 | `result-track:6e5f3cb63ea6b402875cca831832c2669380273e18a5573fdf66f18f21cf384b` |
| 9 | `theorem` | [eq_top_iff_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/eq-top-iff-one.md) | 93 | `result-track:6281949e09143d88624cfe8494e7e810ef4aa26d53e1e5bbed8dd0d95c5988a2` |
| 10 | `theorem` | [ne_top_iff_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ne-top-iff-one.md) | 97 | `result-track:b34c2b7c8dbaa3e12c5ab8359ecbc274c0dd79f13af53193c079d5a915501ff0` |
| 11 | `theorem` | [unit_mul_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/unit-mul-mem-iff-mem.md) | 102 | `result-track:98d953745f917701ff7ca7b0320bc477902826e0bd153f02fcc933224aa23f1d` |
| 12 | `def` | [span](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span.md) | 110 | `declaration-track:8e6cd360683107f354935ab3eb482c9b743fd8dd8a839deb050b7b6c96983157` |
| 13 | `theorem` | [submodule_span_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/submodule-span-eq.md) | 115 | `result-track:0dd7510bdcccda697ae6fa644fbfc2acec45aacaaa8d13ad651ac0897f2cdbf4` |
| 14 | `theorem` | [span_empty](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-empty.md) | 120 | `result-track:e4996ee3a22bd992da0f51f88411371122bef10d51a1bce91c76d76b0e9d9c49` |
| 15 | `theorem` | [span_univ](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-univ.md) | 125 | `result-track:45317cd19166d0f28171f4539aeb5e8a53c608df665873c1a8c33840f99e495b` |
| 16 | `theorem` | [span_union](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-union.md) | 129 | `result-track:27c8371bae28d10cb7c026ce86fc035e30861ddefead5cadc9c2321220765f04` |
| 17 | `theorem` | [span_iUnion](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-iunion.md) | 133 | `result-track:012df3089f283cc1e9b23afc03bf2200d0bcbc3b1f48a97219662141837ea396` |
| 18 | `theorem` | [mem_span](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-span.md) | 137 | `result-track:821392a8c0a328e9405416775f922cf2d443228a4cc5ae0f1e6e36f86bd189c5` |
| 19 | `theorem` | [subset_span](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/subset-span.md) | 141 | `result-track:36872bbf64a1dfece8a06b527eaea355a90cffd30b72e5f670386b84501051a4` |
| 20 | `theorem` | [span_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-le.md) | 145 | `result-track:da66300ccfc48102ac9e061abc9620293eb5e64d02ef827e4402823a33852cb2` |
| 21 | `theorem` | [span_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-mono.md) | 149 | `result-track:1c76f18a33670f9b57de8c8cfcac5f144411c6512b33282d242a9651423f660b` |
| 22 | `theorem` | [span_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-eq.md) | 154 | `result-track:39596f0f08dbf9c2fb44605879a9a771066bc9e2ae53a23aa0589dae8d2364c3` |
| 23 | `theorem` | [span_singleton_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-one.md) | 159 | `result-track:3d9be2c8507c136811513f7f1f3e95e1244f0b22997e31a446a4d7c0b40983cc` |
| 24 | `theorem` | [mem_span_insert](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-span-insert.md) | 163 | `result-track:48cd66f089e98bb221bbcc5110147e740bf0bd6cd63924f817edf5c802b2fce8` |
| 25 | `theorem` | [mem_span_singleton'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-span-singleton-source-edition-2.md) | 168 | `result-track:b15ed5d8ad6210942334bcd9cc39ea8f629c7f45017c189edd12c25af4316352` |
| 26 | `theorem` | [span_singleton_le_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-le-iff-mem.md) | 172 | `result-track:39348f5b3cecc0f4d34ec0d7b5105c4f23e6b606b7b070d8f47803b8cd7a8634` |
| 27 | `theorem` | [span_singleton_mul_left_unit](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-mul-left-unit.md) | 176 | `result-track:aaf9a0b2ab4602c1800305a45f82c6df6032ee85de8ce8cee3b7dd6478bcdd8e` |
| 28 | `theorem` | [span_insert](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-insert.md) | 182 | `result-track:3edebfdb0ba69eb9c25835ecfe025d2471fcaeb07fcfe1115ab1a7e369c8c9f5` |
| 29 | `theorem` | [span_eq_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-eq-bot.md) | 186 | `result-track:c9f7fd78bc79a835a7f8ea25460a0dfbf99510bd2b0651683183e60127733304` |
| 30 | `theorem` | [span_singleton_eq_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-eq-bot.md) | 191 | `result-track:eb00a00cc310f6d1a000a1e8c0be0fa98c053ab7dc04de5bb826aaadc00eac86` |
| 31 | `theorem` | [span_singleton_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-ne-top.md) | 195 | `result-track:754dec589a935dd1facf2a73bb611f3591a684bce257148447a26eaa1e60e1b9` |
| 32 | `theorem` | [span_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-zero.md) | 203 | `result-track:1cbdf1f24fc0c12be0c68da06d9c3df7e796f15372d02fc04ef654abd25374a2` |
| 33 | `theorem` | [span_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-one.md) | 207 | `result-track:4d3af34f2907202d9b1b01ba72a1e378b8f1c06059705cc096c2eb27372531e3` |
| 34 | `theorem` | [span_eq_top_iff_finite](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-eq-top-iff-finite.md) | 210 | `result-track:1bba83130bb8711b8555e377b522e67529c2f960b7ad5d0adc4745ab3d31f2f4` |
| 35 | `theorem` | [mem_span_singleton_sup](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-span-singleton-sup.md) | 216 | `result-track:f6d3b8629fe56e672f0433a7cdf93044b131e7011a3d253db571c7ac244b1bbb` |
| 36 | `def` | [ofRel](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ofrel.md) | 229 | `declaration-track:e66af4b4788288e23714d3d9bcfae64c4912d86d4ab81c05ee5255068848b3f8` |
| 37 | `class` | [IsPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/isprime.md) | 234 | `declaration-track:d68e8a4aee087646716ca49e5e9e5b01995514bcde6e0a1319118d5306b3e805` |
| 38 | `theorem` | [isPrime_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/isprime-iff.md) | 241 | `result-track:a0801b0ea3f4187c8d4d8858843d0774be444755f44ddffffc6f5549da9074f4` |
| 39 | `theorem` | [IsPrime.ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/isprime-ne-top.md) | 245 | `result-track:5aa8a60d836a4bf925c7909608f97772ae93cac70e147cf0b4459f0fd06438f5` |
| 40 | `theorem` | [IsPrime.mem_or_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/isprime-mem-or-mem.md) | 249 | `result-track:d03808459b1c4bb7ddc9bb5684036267b5eb5db9b58876f075ccd6c068fad312` |
| 41 | `theorem` | [IsPrime.mem_or_mem_of_mul_eq_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/isprime-mem-or-mem-of-mul-eq-zero.md) | 253 | `result-track:786403fc36793d9a6783836f1022368c301d2a75c38ba8d670d4e4a2a1dcbfdc` |
| 42 | `theorem` | [IsPrime.mem_of_pow_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/isprime-mem-of-pow-mem.md) | 258 | `result-track:773b0093d9623be202aead987308c38330b1e67c6e5fa2bf316b72ca9ce5eab8` |
| 43 | `theorem` | [not_isPrime_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/not-isprime-iff.md) | 267 | `result-track:820b33f85df9397fcb7244a602574cf36a5abd8880ab2345eef332faeb12d173` |
| 44 | `theorem` | [zero_ne_one_of_proper](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/zero-ne-one-of-proper.md) | 276 | `result-track:d1826870ff01ff62c0dc2dad4a12b508ce87633cf5c4980ba5e82e5946779b9b` |
| 45 | `theorem` | [bot_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/bot-prime.md) | 280 | `result-track:14a13f7006ab3756323227a98600317bd9e43fe05ac1e14442afb6de79568e81` |
| 46 | `class` | [IsMaximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ismaximal.md) | 286 | `declaration-track:b39740311cd427ab1cbed53c6c1415084de658ae7a979e0bda943b312d9a271e` |
| 47 | `theorem` | [isMaximal_def](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ismaximal-def.md) | 292 | `result-track:ddc9a2bc2dbb1799b95af9bf239fc9e9e48aaa46c638b48421ff1f2f5a5e67db` |
| 48 | `theorem` | [IsMaximal.ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ismaximal-ne-top.md) | 296 | `result-track:a66a36d13c3c43f277b5143066e7a7af4f2216f9e402f914cc6af0abeea3fed3` |
| 49 | `theorem` | [isMaximal_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ismaximal-iff.md) | 300 | `result-track:d18956999323ffcd3bc169eeeca473f70c6d47d5dcc2309b8dc827f0721b2fe0` |
| 50 | `theorem` | [IsMaximal.eq_of_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ismaximal-eq-of-le.md) | 313 | `result-track:679378aad238524ff7b7659f8403b6dc47f292101a208230f888c8d572d5f8bb` |
| 51 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/instance.md) | 317 | `declaration-track:a6046e91915c17d206a4437ade7acf21001a7282c64c5ff55ee0a9f6de76d313` |
| 52 | `theorem` | [IsMaximal.coprime_of_ne](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ismaximal-coprime-of-ne.md) | 322 | `result-track:89ea169a1850e668582fdc78f8d92146c5a26be01bdac29e21359c18f4cf896b` |
| 53 | `theorem` | [exists_le_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/exists-le-maximal.md) | 330 | `result-track:6a0da9aadad7d105e60459a4f541d4478f520178d41ed5e9000254ac6203bca2` |
| 54 | `theorem` | [exists_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/exists-maximal.md) | 338 | `result-track:5309a543fe3e7b7986d3771f82b3d855f804012d1d9bf192717b021cc0ae2dff` |
| 55 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/instance-source-edition-2.md) | 345 | `declaration-track:e22f7d8d48cd3df9ce5917a6ba3aa69dd16fd773d8a1c6372ed0b20e927abe80` |
| 56 | `theorem` | [maximal_of_no_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/maximal-of-no-maximal.md) | 351 | `result-track:41987128990ae8b539eb09badaec2cf447b465381284b0746392f593c0bd6e59` |
| 57 | `theorem` | [span_pair_comm](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-pair-comm.md) | 358 | `result-track:b57ee20515ce3101ed72ead21d24dc929fcec1bcbab8619e137d6720a57fac27` |
| 58 | `theorem` | [mem_span_pair](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-span-pair.md) | 362 | `result-track:ebecf8082abd0523257bc41646e58b602efc7d6846f70b0a31d6b92611cd6497` |
| 59 | `theorem` | [span_pair_add_mul_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-pair-add-mul-left.md) | 367 | `result-track:fd8e427146f64d9812046f3f237717bd66f76aad8fe6d758eb041f21b679b217` |
| 60 | `theorem` | [span_pair_add_mul_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-pair-add-mul-right.md) | 383 | `result-track:384d5819aacf08637f507187e4341ce2a448caa5605a8df8f85afe7e9f905a80` |
| 61 | `theorem` | [IsMaximal.exists_inv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ismaximal-exists-inv.md) | 388 | `result-track:170cc49132a2a8c3014c67b70c589387bfa220d13c99487a411d7015a3e38110` |
| 62 | `theorem` | [mem_sup_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-sup-left.md) | 404 | `result-track:601e34cb2aa84c169963d3aba2976a8ae46cad274c19a0791e00782ca3eb1a0a` |
| 63 | `theorem` | [mem_sup_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-sup-right.md) | 408 | `result-track:4513e06cba88631287c6a927d704dab3f68a253b20531f072abefea22e757fbd` |
| 64 | `theorem` | [mem_iSup_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-isup-of-mem.md) | 412 | `result-track:5703e48644626633422122b8e80186298e9f5ed0015e9267d133854093d27fb1` |
| 65 | `theorem` | [mem_sSup_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-ssup-of-mem.md) | 416 | `result-track:54b4749f2c6ac7d25f0ebb8250c2ad8e617079696a6da03c978e989569a20dc8` |
| 66 | `theorem` | [mem_sInf](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-sinf.md) | 421 | `result-track:eac7d6bf3ac4f73a86902c166d620dd2d36570c36c02ad88a82e96b55d0794db` |
| 67 | `theorem` | [mem_inf](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-inf.md) | 426 | `result-track:fc685e21a3e45ae24c83aafc1d3c4cc394a522ab76aec30aab93ac45deb67f8e` |
| 68 | `theorem` | [mem_iInf](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-iinf.md) | 431 | `result-track:3ea12ae7a4b30142b87cee2be4ce0330e40713f25b2e1c328bf92db3b96975ba` |
| 69 | `theorem` | [mem_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-bot.md) | 436 | `result-track:98c219c09db24bd527030d7fe7aef6be3a07a12fa7404875b98b43f67b6cf7a5` |
| 70 | `def` | [pi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/pi.md) | 447 | `declaration-track:e369b6831a09ff8b5ca94136f1e2df397737cbc83079d19ed8e57e7d6163d68c` |
| 71 | `theorem` | [mem_pi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-pi.md) | 454 | `result-track:95e65321d70946c797ae615bc585b487a29e98b29dc7aa5b563a7926142f2ab5` |
| 72 | `theorem` | [sInf_isPrime_of_isChain](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/sinf-isprime-of-ischain.md) | 460 | `result-track:712ce601cc1fa8ff99cdd0030df5e140d1e3e0dccc62abc2c7b68b1e7b151b34` |
| 73 | `theorem` | [mul_unit_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mul-unit-mem-iff-mem.md) | 491 | `result-track:8c21e17eb2dcc5df1d6397c1f294d2567ba5bc1ea211d6499eca7017a05aba16` |
| 74 | `theorem` | [mem_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-span-singleton.md) | 495 | `result-track:4a85e5ae01eb911ea91ebac98a0e0a64e150b28fe20f2e551ba672be942f1285` |
| 75 | `theorem` | [mem_span_singleton_self](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-span-singleton-self.md) | 499 | `result-track:83207f5180c3c78a06d9fd1cd6636675426f9f7a8758fad40b786bf857b464de` |
| 76 | `theorem` | [span_singleton_le_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-le-span-singleton.md) | 503 | `result-track:6a0bed019d50cd2242007e5c15c1dd40f99e2c62c282ad59f00d9d0bda2c6c99` |
| 77 | `theorem` | [span_singleton_eq_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-eq-span-singleton.md) | 508 | `result-track:4171aecdb6960e802420b0e809a235cd683996a3ff1c2470441ccf0305fd1636` |
| 78 | `theorem` | [span_singleton_mul_right_unit](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-mul-right-unit.md) | 514 | `result-track:e6c6247cb0b2a63a410c88e8693f11ec58e456a2de0f2e53fb80a58f5df34474` |
| 79 | `theorem` | [span_singleton_eq_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-eq-top.md) | 518 | `result-track:bd7ced46f8c138cfe5474dabe65aa408e5b53e3c7d211f358c862655c254ae0e` |
| 80 | `theorem` | [span_singleton_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-prime.md) | 522 | `result-track:a9d0491039aa8809129493096c9a88d9d361491c773b134df7467dfd8bc0cf07` |
| 81 | `theorem` | [IsMaximal.isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ismaximal-isprime.md) | 526 | `result-track:b2edb07db1c842f32271778c3ca455b8bebf95b881834cce967f27e414561e53` |
| 82 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/instance-source-edition-3.md) | 542 | `declaration-track:ebef623fd4f6aa9655971f890af35ac7bcfd4e2ca0737041e62238097b1860b4` |
| 83 | `theorem` | [span_singleton_lt_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-lt-span-singleton.md) | 546 | `result-track:f622fd2210c5a2dac0086c1115e6f6cefe34a2f20fc520e5db5487b48d791f22` |
| 84 | `theorem` | [factors_decreasing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/factors-decreasing.md) | 552 | `result-track:81145a5132424ea8cc6a1884b7fe2c9f8a048cec7aa38f2b5df2aaf0229bea6a` |
| 85 | `theorem` | [mul_mem_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mul-mem-right.md) | 562 | `result-track:8026148d3723e843ccdb4906448bed502c8d3c991ab73ba3fc95e300bb8545e1` |
| 86 | `theorem` | [pow_mem_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/pow-mem-of-mem.md) | 568 | `result-track:fa1113a121959d233e5fc23a5771a45255a4b06026d56d598c243b766619e998` |
| 87 | `theorem` | [IsPrime.mul_mem_iff_mem_or_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/isprime-mul-mem-iff-mem-or-mem.md) | 573 | `result-track:d40edc1cab752bdd2c01564a146e04d45ccd2c8acd36f18666e7a033c230b795` |
| 88 | `theorem` | [IsPrime.pow_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/isprime-pow-mem-iff-mem.md) | 580 | `result-track:950b465b9a11bbb48dd0482bfdfa64d960a5e2bc4da4c80d90e75246a22e6e71` |
| 89 | `theorem` | [pow_multiset_sum_mem_span_pow](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/pow-multiset-sum-mem-span-pow.md) | 585 | `result-track:75f2c973b977aa8410aa6af8d2dbbcbb17bfed9f3266f68f55798bbea01d8b08` |
| 90 | `theorem` | [sum_pow_mem_span_pow](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/sum-pow-mem-span-pow.md) | 612 | `result-track:bd12b314d272318400c889ffb0c59b883ac85ed132471d221fbc266b0f5708e4` |
| 91 | `theorem` | [span_pow_eq_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-pow-eq-top.md) | 619 | `result-track:852720735ae2de34ab3281885862d19f65a19b26577728d9c1afd0788dee78b0` |
| 92 | `theorem` | [neg_mem_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/neg-mem-iff.md) | 654 | `result-track:2fe0e12ea702342e01a76ae368745058c9ebdbdf460e30b5ba0b688f058df37c` |
| 93 | `theorem` | [add_mem_iff_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/add-mem-iff-left.md) | 658 | `result-track:a6e19e3920cfc1b23a6041245e33e93d4fd9bdf37601e6afd1577dcd25770e3e` |
| 94 | `theorem` | [add_mem_iff_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/add-mem-iff-right.md) | 662 | `result-track:45779cfab171937c9984eb320588f0a37ab33a363f0c8448b76a3e2e9169ff3d` |
| 95 | `theorem` | [sub_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/sub-mem.md) | 666 | `result-track:ab634f25700cc2380235b6f4c4a401fcc1061cd33d24ee1dd600f19ea8fa9672` |
| 96 | `theorem` | [mem_span_insert'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-span-insert-source-edition-2.md) | 670 | `result-track:4e0b54e21b588e4ffae382fcc0aff7f9ccab0b9944062b6d1656336e6683c0be` |
| 97 | `theorem` | [span_singleton_neg](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/span-singleton-neg.md) | 675 | `result-track:f3e8eae6fdd7a16fd4cd1d0fe5ecb47de5c3255bd967a896226eb1210b9dde07` |
| 98 | `theorem` | [eq_bot_or_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/eq-bot-or-top.md) | 692 | `result-track:b7135a9978410156ea8dc1d84f79ea07b30c05b897309dcfa1c9b8269acb7d9e` |
| 99 | `instance` | [isSimpleOrder](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/issimpleorder.md) | 705 | `declaration-track:3d19da859deb146e23066f9e3a6a8bfd67067f51a4fca5846eeefe032a9cb212` |
| 100 | `theorem` | [eq_bot_of_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/eq-bot-of-prime.md) | 709 | `result-track:a285a6e45ac0d1eea23481abd8aa06759e786d248a4219037d6f9796bb3271b4` |
| 101 | `theorem` | [bot_isMaximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/bot-ismaximal.md) | 713 | `result-track:87365006d6e0bc06ce2c415e9bd55e710e532fff2a66d8962c8cab6ec6884620` |
| 102 | `theorem` | [mul_sub_mul_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mul-sub-mul-mem.md) | 726 | `result-track:5718f13c73052c451389249debb099e11a1ecc153ae55c17ea56130068586cc8` |
| 103 | `theorem` | [exists_not_isUnit_of_not_isField](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/exists-not-isunit-of-not-isfield.md) | 742 | `result-track:159aa9b720757caa4f97e0c8e6ac7484d2da4fdfab07d713f9a0569c8e81f692` |
| 104 | `theorem` | [not_isField_iff_exists_ideal_bot_lt_and_lt_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/not-isfield-iff-exists-ideal-bot-lt-and-lt-top.md) | 751 | `result-track:d056700cb6bd08c9b6c3ab62f6ef76d2d5269e690700bd0a0e118492543e0bcb` |
| 105 | `theorem` | [not_isField_iff_exists_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/not-isfield-iff-exists-prime.md) | 767 | `result-track:ecb8508d3016df4359dae6444f6a67dd39d367781abdad5c824c8bc7161c063f` |
| 106 | `theorem` | [isField_iff_isSimpleOrder_ideal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/isfield-iff-issimpleorder-ideal.md) | 780 | `result-track:c2b07c8b8fdcaaa5fb0b7ed888bb4587d0e49bd9d334e0ee8bcfca7a50d0109d` |
| 107 | `theorem` | [ne_bot_of_isMaximal_of_not_isField](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/ne-bot-of-ismaximal-of-not-isfield.md) | 792 | `result-track:51236aca0981a4b554039afd56556a1aa368c14b1b9325a59a0fcd6fa5d7c637` |
| 108 | `theorem` | [bot_lt_of_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/bot-lt-of-maximal.md) | 807 | `result-track:17fb1abb37f181bc6975a2f658735256adc31dc80ddf625eb0ae70f08f9425a8` |
| 109 | `def` | [nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/nonunits.md) | 822 | `declaration-track:bee536e940d466f0dd09d97f81ff9cf6d1c99d6a7a9dd75fc1b4c2784a6d202b` |
| 110 | `theorem` | [mem_nonunits_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mem-nonunits-iff.md) | 827 | `result-track:964e2fef7ccab22cbb39f418858a4c8b49c1487794d0eba209f119442241a43f` |
| 111 | `theorem` | [mul_mem_nonunits_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mul-mem-nonunits-right.md) | 831 | `result-track:194c505bea49d7102b3e781fb802d87b24d903398a2e04153485b38140faf2aa` |
| 112 | `theorem` | [mul_mem_nonunits_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/mul-mem-nonunits-left.md) | 835 | `result-track:8285474517f8096dfd8e29cebbe0df866071659cab9148283536e44b623723bc` |
| 113 | `theorem` | [zero_mem_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/zero-mem-nonunits.md) | 839 | `result-track:a2cc8b5ef564faa7ab1780638269c3b8a5144d327e97e012dd1d6710c20bb8b2` |
| 114 | `theorem` | [one_not_mem_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/one-not-mem-nonunits.md) | 844 | `result-track:bdac2e64cfed1cd0d14e70a10efc4716a87fe2631a4ed80457f55605a2091925` |
| 115 | `theorem` | [coe_subset_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/coe-subset-nonunits.md) | 848 | `result-track:846f3b83c404f555e4c6301b818c0d71891e4e9d31117488ed1197131e10c185` |
| 116 | `theorem` | [exists_max_ideal_of_mem_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicIdeal.lean/declarations/exists-max-ideal-of-mem-nonunits.md) | 852 | `result-track:f2c426172b6cf67cf659ffedbf9be1497fcd1a36f52f8cdacb3e0cec322203d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=168a907df7c258d40913343c0ec802933730a1cb4782e8eb48c7ad8f0bc3974b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant5329ff410b95c6e9c9052ef4d686b938d6b2f658a6489ebe5b361f3bb7d6a664.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
