# Verification target: Nat Prime

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550",
  "lexical_observation_count": 109,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fe1c9b9e5e0b65775bc6d1fa1f66ab0bfeea550`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Parity` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Dvd.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Units` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Sqrt` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime.md) | 46 | `declaration-track:a43c3f4a8496635de3a8665daaf7b140e54c34e7e578708e51a32ab8569b0322` |
| 2 | `theorem` | [irreducible_iff_nat_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/irreducible-iff-nat-prime.md) | 50 | `result-track:475ed1c41854a6dadba9c0bb4d19bdc8837d2a3fa64119d21af2ad65c9ffc38a` |
| 3 | `theorem` | [not_prime_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/not-prime-zero.md) | 54 | `result-track:67ae47bd663cae3fd4ea78398502d5184901064b22dc803482af4795ab66ac65` |
| 4 | `theorem` | [not_prime_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/not-prime-one.md) | 58 | `result-track:555e14341994c9c482562ecd8f12268f58224ac032d49f785d6255f6abe8d44e` |
| 5 | `theorem` | [Prime.ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-ne-zero.md) | 62 | `result-track:a9d20ed57f9b4b9ab94785c6babea9b9207db1a5dbe92562856d08ccf57f3ed1` |
| 6 | `theorem` | [Prime.pos](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-pos.md) | 66 | `result-track:b2cf0f7594c4c6c1b680a9b1b43d09020f96e9959e3894becf0e4cfa3ff6a83d` |
| 7 | `theorem` | [Prime.two_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-two-le.md) | 70 | `result-track:fa9480aa4ae2b73084d7c710e0619ee53fb94d2d0ae92cf0113055c88a75e21a` |
| 8 | `theorem` | [Prime.one_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-one-lt-source-edition-2.md) | 76 | `result-track:b525d40809d94a2b4aadb6c9396ad2413011de920f1c5fd5e181710ae1bedb0c` |
| 9 | `instance` | [Prime.one_lt'](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-one-lt.md) | 80 | `declaration-track:65855a50c255565ca58090300211909cdbd5a80a76c81e89d163f6048c7922bd` |
| 10 | `theorem` | [Prime.ne_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-ne-one.md) | 84 | `result-track:2ec1d2eb168e0e3d6b3ab3cc83adbc7fc3d9671344671712b55d766eb637c15c` |
| 11 | `theorem` | [Prime.eq_one_or_self_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-eq-one-or-self-of-dvd.md) | 88 | `result-track:8d9d8608093edf1e0041628635301959fcc164f43cf13177f22f0e7513dd1882` |
| 12 | `theorem` | [prime_def_lt''](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-def-lt-source-edition-2.md) | 98 | `result-track:d2bbc70aae657fc297a0e22a453fc2fe157cfad5c50ea0ce53cfa68e755546a8` |
| 13 | `theorem` | [prime_def_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-def-lt-source-edition-3.md) | 111 | `result-track:f8a49d779b7c68e54776e1996dc0e2e61e7d329a62a59aa538dfe19636c8c6cb` |
| 14 | `theorem` | [prime_def_lt'](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-def-lt.md) | 119 | `result-track:875b18771934b84b9c9188db5800a5ea41061326af7ef914e1ab63e88a898c69` |
| 15 | `theorem` | [prime_def_le_sqrt](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-def-le-sqrt.md) | 132 | `result-track:d74985d3fb25f5f0afc2dbf3cd53fa62c02d4d3f16b73b2814c8b7788a13cacc` |
| 16 | `theorem` | [prime_of_coprime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-of-coprime.md) | 146 | `result-track:f45b4531c02c1f733f9f84e71060dbb724b816ceb3f0fb2de855795b7a3e9c14` |
| 17 | `def` | [decidablePrime1](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/decidableprime1.md) | 165 | `declaration-track:ac3d44c038fd2cf4329760cadbd3418d9e0920a2818db6391b55331e46670d1e` |
| 18 | `theorem` | [prime_two](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-two.md) | 169 | `result-track:61fca32a18a30736575bb5bffad716b941b8929c41aace80f182ee1799750159` |
| 19 | `theorem` | [prime_three](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-three-source-edition-2.md) | 172 | `result-track:bbe851e535962447f37211d15712628d97d912534625b8b0f652ce39909af247` |
| 20 | `theorem` | [Prime.five_le_of_ne_two_of_ne_three](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-five-le-of-ne-two-of-ne-three.md) | 175 | `result-track:ac0a3d3180c104433e317818debdc0e573e60ff23c00d449383cbf27bb01fb2e` |
| 21 | `theorem` | [Prime.pred_pos](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-pred-pos.md) | 191 | `result-track:0e8e01c0428d60f5d488f933132885b50f2d0c06b9909f3c1080a54ceb5dcbac` |
| 22 | `theorem` | [succ_pred_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/succ-pred-prime.md) | 195 | `result-track:36a537087c84ec8f101cb862b3f47c3008e695a1dcca387b64aac8909d322a0d` |
| 23 | `theorem` | [dvd_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/dvd-prime.md) | 199 | `result-track:09e15e928b3e07f0aa848819f607716e48bd8480ca68618539aba854e3d779e2` |
| 24 | `theorem` | [dvd_prime_two_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/dvd-prime-two-le.md) | 204 | `result-track:2828dfd620831f9d47fe428d0601e1c1464f2319f9d98a3a9bdc39e3651ff298` |
| 25 | `theorem` | [prime_dvd_prime_iff_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-dvd-prime-iff-eq.md) | 208 | `result-track:171968230fb7ff5a74fc0b6466c2d693551084fd7743eb81a3ea5ac753dcd2d7` |
| 26 | `theorem` | [Prime.not_dvd_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-not-dvd-one.md) | 212 | `result-track:8cf1fd3429ffb5c9c9410dd0ecaa8726fc3d66a2331ae578a9ee72b256255726` |
| 27 | `theorem` | [not_prime_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/not-prime-mul-source-edition-2.md) | 216 | `result-track:5868921d0585d5ec884c98fdbf63cf8eca30a0c6e21d60b805294172fbfac248` |
| 28 | `theorem` | [not_prime_mul'](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/not-prime-mul.md) | 221 | `result-track:11b7afb6d03dbd33c9c3e690f38c751bc1afb0f464d3b0dfe910ae9f15ce4996` |
| 29 | `theorem` | [prime_mul_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-mul-iff.md) | 226 | `result-track:864f684ef522091812d180e4efc581c8052ce913f213c7e086ec0af5d2e5e140` |
| 30 | `theorem` | [Prime.dvd_iff_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-dvd-iff-eq.md) | 230 | `result-track:ada527412d797b0e064275cb025d4f6f10bab68187183d35ee7154f315844c9b` |
| 31 | `theorem` | [minFac_lemma](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-lemma.md) | 243 | `result-track:7411fe7bb29340e2eec99e9b9c314a7c4e9279996a2052364851eb25f869b52a` |
| 32 | `def` | [minFacAux](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfacaux.md) | 250 | `declaration-track:6356b35138fe2e113d15532df0de291221cafdc4131882a0814c1e8d5beec164` |
| 33 | `def` | [minFac](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac.md) | 262 | `declaration-track:d1d4e56d0ec3e5d4a9e2dfef067c71a338c2141d2fec06181a14a89caa5b5d18` |
| 34 | `theorem` | [minFac_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-zero.md) | 267 | `result-track:e2fbd3bec852dbd073bef0c5de24ad6ab7d60e3c95eb1be25b6ea73591a5f192` |
| 35 | `theorem` | [minFac_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-one.md) | 272 | `result-track:4821b8ab99f61cc5e4c56a6f4280ac94b68fe0652550105be5f8d75c92e15660` |
| 36 | `theorem` | [minFac_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-eq.md) | 276 | `result-track:773d71f94f81a726be7cf9bccfc3ede0c12a68bec3d92d28c31da7cf2fd10260` |
| 37 | `def` | [minFacProp](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfacprop.md) | 279 | `declaration-track:f831489789672601e2590b9d49b6132c4f605147d22b8666a050845d729e96bc` |
| 38 | `theorem` | [minFacAux_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfacaux-has-prop.md) | 282 | `result-track:e752c8b05c2d53ddb6ee3c06a2145e4df64dc1ef229ce37b3bf80ddf48a87ce1` |
| 39 | `theorem` | [minFac_has_prop](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-has-prop.md) | 312 | `result-track:27a393d01a130173d25288e07d9a2ccf7d28b4dff82441061f68d51a52e70703` |
| 40 | `theorem` | [minFac_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-dvd.md) | 326 | `result-track:634aa64bdfd1e8c55cb809c497da6d434cab36af1388f1ad2deee4ed773276d6` |
| 41 | `theorem` | [minFac_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-prime.md) | 330 | `result-track:d338e99a9ac4fda3dc0f6392f6a3e524612a892777b393ccce8bc8818189b2e3` |
| 42 | `theorem` | [minFac_le_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-le-of-dvd.md) | 335 | `result-track:784cef0c1926e223147672cd2a7e0e15092fec02d15aee927b8ea3c6b392608e` |
| 43 | `theorem` | [minFac_pos](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-pos.md) | 340 | `result-track:2a731fe5a5d97b16d9812aa395d820c6e0b867be95a447a0024f464f9671da22` |
| 44 | `theorem` | [minFac_le](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-le.md) | 344 | `result-track:8192516aed8990f556a0f4dba551619bd424c1551dcfa904b28ed61766201ce4` |
| 45 | `theorem` | [le_minFac](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/le-minfac-source-edition-2.md) | 348 | `result-track:1302809e2d678893b68f63e78b04b5333c90bdc3b1ec795b256d0e717200d91d` |
| 46 | `theorem` | [le_minFac'](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/le-minfac.md) | 355 | `result-track:0d3ae597deb0b49ce12f9e272101e03fdeb05c57e463082bcedc3e2277c64103` |
| 47 | `theorem` | [prime_def_minFac](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-def-minfac.md) | 362 | `result-track:664fdfa55b5d7107a58c5da32bd59c794e18a5bba0fcf31b2cd863c1d3556f64` |
| 48 | `theorem` | [Prime.minFac_eq](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-minfac-eq.md) | 371 | `result-track:5c2a3fa3bfc22f94ae52232a5400094c3a592c79158f4dd8b39e8fac3e31fae0` |
| 49 | `instance` | [decidablePrime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/decidableprime.md) | 382 | `declaration-track:4e1bb34ba40f28b0d525dd234dc334ff0ad10875c56d0be0d8108b94cea04c47` |
| 50 | `theorem` | [not_prime_iff_minFac_lt](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/not-prime-iff-minfac-lt.md) | 386 | `result-track:896e42d33b8998bc2cd992f2e5f8eb9fb7bf45d3d165ca89a85eade3ab82bdea` |
| 51 | `theorem` | [minFac_le_div](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-le-div.md) | 391 | `result-track:e58777a2f57c8049b802835f60e9feb98f77be883707e2070f7f542969a1370d` |
| 52 | `theorem` | [minFac_sq_le_self](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-sq-le-self.md) | 409 | `result-track:435a2a39d8e56b9c2de725409d57771fecf9149d7facc34c29c49eccbaf80de0` |
| 53 | `theorem` | [minFac_eq_one_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-eq-one-iff.md) | 418 | `result-track:72b60bd1dd9038dea44ebca3c69b64ac5a357d082c321dccf5f1a37d76004f0a` |
| 54 | `theorem` | [minFac_eq_two_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/minfac-eq-two-iff.md) | 430 | `result-track:9a8a30fcf391a23a406d16848532aa07726e0618fdd39eea58da06378d7a3b43` |
| 55 | `theorem` | [exists_dvd_of_not_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/exists-dvd-of-not-prime.md) | 447 | `result-track:91026924551582abcb14243b0f34b8292ddd46c231f2ea7c57bd28e5cbb43d1e` |
| 56 | `theorem` | [exists_dvd_of_not_prime2](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/exists-dvd-of-not-prime2.md) | 452 | `result-track:b13034699898efa45baef68dacc0216455f540afd36399525f03f8a14ad87c07` |
| 57 | `theorem` | [exists_prime_and_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/exists-prime-and-dvd.md) | 458 | `result-track:8270d3e34ec28499dcb689413bcdd81485544fd4125527720405fdd971478863` |
| 58 | `theorem` | [dvd_of_forall_prime_mul_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/dvd-of-forall-prime-mul-dvd.md) | 462 | `result-track:ce18e7b41b070d409bc372d678c7874bddb61cadfb375c62cb50a684711f7079` |
| 59 | `theorem` | [exists_infinite_primes](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/exists-infinite-primes.md) | 472 | `result-track:bcf64454bb0201bc4bba1e1d12dff4f2712891c1a0123d2426a34cc394fa327e` |
| 60 | `theorem` | [not_bddAbove_setOf_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/not-bddabove-setof-prime.md) | 485 | `result-track:e811fca2d69485c31360a0c5743fb7a9f70e94b87fef7969faec4bf46cc6e1e9` |
| 61 | `theorem` | [Prime.eq_two_or_odd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-eq-two-or-odd-source-edition-2.md) | 492 | `result-track:c4e363732e36ba48717109bc6e09ef94aea728683b985d4dcd510879c72d3d2c` |
| 62 | `theorem` | [Prime.eq_two_or_odd'](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-eq-two-or-odd.md) | 497 | `result-track:8a3dd83dbd242c5ea5d4a97555ab4890f7329fcb7d0c7739001db7ab6dcc3a44` |
| 63 | `theorem` | [Prime.even_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-even-iff.md) | 501 | `result-track:0fe87c68809dd954cbe21ad1a5507d59a876e76775de6c93b85b73f951156847` |
| 64 | `theorem` | [Prime.odd_of_ne_two](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-odd-of-ne-two.md) | 505 | `result-track:23512f46c67d2971eb1327dd6a5deda751ec61534ffa7e4cece603cfb541bd28` |
| 65 | `theorem` | [Prime.even_sub_one](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-even-sub-one.md) | 509 | `result-track:0b6f6d1a834a34b89dbf713f298098131e395db6995b01c6d077448e6a5e4444` |
| 66 | `theorem` | [Prime.mod_two_eq_one_iff_ne_two](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-mod-two-eq-one-iff-ne-two.md) | 514 | `result-track:c4c66fea4a50c5245ec7e69bcf5e36e0a6bee0a8705eb10a258f1597e79116be` |
| 67 | `theorem` | [coprime_of_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/coprime-of-dvd-source-edition-2.md) | 520 | `result-track:cb1d545c97c0b672c0f11c39c27189c85f76f912fba58a37d626b91601559fc8` |
| 68 | `theorem` | [coprime_of_dvd'](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/coprime-of-dvd.md) | 529 | `result-track:33a48b0ada0a4b7ac7e3bc41e80c44532b9fae8f1729547f65b51138b50a99d0` |
| 69 | `theorem` | [factors_lemma](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/factors-lemma.md) | 533 | `result-track:8d9c0b923413290fb3daa22a5b934a9f74c60e85a48c8247b6f46f9a965fb40d` |
| 70 | `theorem` | [Prime.coprime_iff_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-coprime-iff-not-dvd.md) | 541 | `result-track:069b055787d37f7de50bb976d703e89edb072ff1ffdde861cf2b276a1976b11a` |
| 71 | `theorem` | [Prime.dvd_iff_not_coprime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-dvd-iff-not-coprime.md) | 546 | `result-track:19b454a30d58f699323bdc4c1934c2c3690ac5f9616ebd72311bb40f1994d6f5` |
| 72 | `theorem` | [Prime.not_coprime_iff_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-not-coprime-iff-dvd.md) | 550 | `result-track:7fc33e65b89bd8fe5950f0d236dbae77438bf56065715e25c634867c7d881492` |
| 73 | `theorem` | [Prime.dvd_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-dvd-mul.md) | 561 | `result-track:a35e0fc0f2ac6a5cf299b3ffbb616340f2818affb7849b1bee97a357e3fcd15f` |
| 74 | `theorem` | [Prime.not_dvd_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-not-dvd-mul.md) | 566 | `result-track:8cbcda0f84355ddfdf948e91cf9d14038233c37de638f4033c1d5dd92bb44949` |
| 75 | `theorem` | [prime_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-iff.md) | 570 | `result-track:0b7e7bb74bfd10c2c6eb73eeaab33e1eacec1efe07057cd52378296c57d2e06e` |
| 76 | `theorem` | [irreducible_iff_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/irreducible-iff-prime.md) | 580 | `result-track:7151194c83c8144371be4ff91c62ab473b05f0a70ef2b76b6ba4c908511c2b80` |
| 77 | `theorem` | [Prime.dvd_of_dvd_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-dvd-of-dvd-pow.md) | 584 | `result-track:f53ec9d658afa2007cde8476eebc0fa3fab594391bda0e1331daa9687a549313` |
| 78 | `theorem` | [Prime.pow_not_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-pow-not-prime.md) | 591 | `result-track:10392b74ff521c3812065180bcef65098b8f609e8669d85bac5950384b4f3765` |
| 79 | `theorem` | [Prime.pow_not_prime'](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-pow-not-prime-source-edition-2.md) | 601 | `result-track:bfdc3a6f69c091cb476ef97e1173e1fcd9c8b29c2df898115901bd896549abf7` |
| 80 | `theorem` | [Prime.eq_one_of_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-eq-one-of-pow.md) | 607 | `result-track:abc81126c3271eddf8a477674d3c6665666a403ded6e80a60622a7e9e02a06ab` |
| 81 | `theorem` | [Prime.pow_eq_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-pow-eq-iff.md) | 611 | `result-track:e14e6c36a3efc80aba7c83baf9a80c949eeda9effdcc390e03dbe9f40bb8ea6f` |
| 82 | `theorem` | [pow_minFac](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/pow-minfac.md) | 617 | `result-track:fe45bc0ef3dca409720959978984781582964c0785b5d7ea3ea0fa0f4b090443` |
| 83 | `theorem` | [Prime.pow_minFac](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-pow-minfac.md) | 627 | `result-track:eb2ef7a0c5f042ceacb1c46b26129e349097ed1e48fe26dcc159a50d348a4baa` |
| 84 | `theorem` | [Prime.mul_eq_prime_sq_iff](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-mul-eq-prime-sq-iff.md) | 631 | `result-track:9cc4b69dcf4d1a9d0349e724d340d256f671a7ad9a79a8287fa6ce09ea5befcf` |
| 85 | `theorem` | [Prime.dvd_factorial](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-dvd-factorial.md) | 658 | `result-track:ca0333e916953e8478e90735ba96ca965bb512a366f940f9a0c87e8e57d4aeec` |
| 86 | `theorem` | [Prime.coprime_pow_of_not_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-coprime-pow-of-not-dvd.md) | 667 | `result-track:c24eaef289bd4f8b8f497464e62279a2395ed778c1836ee6df6fe71043deffe3` |
| 87 | `theorem` | [coprime_primes](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/coprime-primes.md) | 671 | `result-track:0ee6360b9253eee6805feb8366fc734ae799892eb405e604b2863e646570c41e` |
| 88 | `theorem` | [coprime_pow_primes](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/coprime-pow-primes.md) | 675 | `result-track:c4379df807cab9faf227b5d46f05830c07091e8a80fd79bb9ec8b36ef22b293b` |
| 89 | `theorem` | [coprime_or_dvd_of_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/coprime-or-dvd-of-prime.md) | 680 | `result-track:b0ccae8240df3d85df254f1fea093501f89b10eb261effa90c27b06e72c7ca7b` |
| 90 | `theorem` | [coprime_of_lt_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/coprime-of-lt-prime.md) | 684 | `result-track:28a5b4863b1f9f5226a774766945122d4b6975f92de9359870bc4ad732004700` |
| 91 | `theorem` | [eq_or_coprime_of_le_prime](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/eq-or-coprime-of-le-prime.md) | 688 | `result-track:f79f4daf0a4182a6318efe4660651bd3651e3ddd8c04ac1d94c7a79e4d8229dd` |
| 92 | `theorem` | [dvd_prime_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/dvd-prime-pow.md) | 693 | `result-track:7922bc998986ebb93c12a506da22f838142e1d74a02041dedd103841a7d33d49` |
| 93 | `theorem` | [Prime.dvd_mul_of_dvd_ne](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-dvd-mul-of-dvd-ne.md) | 697 | `result-track:435902d1ace65f96ce50af9a7b4ea93f0688f7db814c7a2a0015f5d469e60961` |
| 94 | `theorem` | [eq_prime_pow_of_dvd_least_prime_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/eq-prime-pow-of-dvd-least-prime-pow.md) | 706 | `result-track:9e4e42f4229676b111227e0e946ee1668bc6491d712b50502d2867271a46022c` |
| 95 | `theorem` | [ne_one_iff_exists_prime_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/ne-one-iff-exists-prime-dvd.md) | 713 | `result-track:5723e5200ce1ab88924e8c14136892c7b27a67f262af3000eb34eea3d41861cb` |
| 96 | `theorem` | [eq_one_iff_not_exists_prime_dvd](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/eq-one-iff-not-exists-prime-dvd.md) | 723 | `result-track:2dd5ceb93a5679c11469e6a06590e18d73b99b11db0d69aeeed6ce37d32a556b` |
| 97 | `theorem` | [succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul.md) | 727 | `result-track:8e262804409830f9f2a1cc0efae2ceec9bc6311ec13311d98ca16fd0c67c2542` |
| 98 | `theorem` | [prime_iff_prime_int](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-iff-prime-int.md) | 743 | `result-track:5208186aba789e60c3b493a12ab070bd817e13f0f9b98ea4f633d2b3a9681a9b` |
| 99 | `def` | [Primes](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/primes.md) | 756 | `declaration-track:9404a46a6f610c15a9caced7370696e1ebcf36673042112e812cbc0483ebf1fe` |
| 100 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/instance.md) | 763 | `declaration-track:c2e68f7a6cf36bdf7dab3130a97e4b1c0ab1c0861acd37f887c2aae76f035345` |
| 101 | `instance` | [inhabitedPrimes](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/inhabitedprimes.md) | 766 | `declaration-track:148482209be314c147991310a82670b4d188d8ea36f408cf304ddc40d6f1d8e1` |
| 102 | `instance` | [coeNat](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/coenat.md) | 770 | `declaration-track:86712c566a241f9c8235f399ccd395594c4c4976cbc844dd62dea06d1490e506` |
| 103 | `theorem` | [coe_nat_injective](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/coe-nat-injective.md) | 775 | `result-track:a39be490200b38af7e653325b0b0dc1c31304c3fee2e17726d3738d60e3d05fc` |
| 104 | `theorem` | [coe_nat_inj](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/coe-nat-inj.md) | 779 | `result-track:65ae628cf387c68e9aaa881c5810bfd9c62ee2345469bd5892aa7f00da6d1000` |
| 105 | `instance` | [monoid.primePow](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/monoid-primepow.md) | 785 | `declaration-track:dde96ed14cda13d8739f8790ca5af7097c464f35cd442b34e775c525cb7e9ace` |
| 106 | `instance` | [fact_prime_two](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/fact-prime-two.md) | 793 | `declaration-track:ff5176ba5f5340f52da0e37d68e2a355d60180498556d9407447720d51795166` |
| 107 | `instance` | [fact_prime_three](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/fact-prime-three.md) | 797 | `declaration-track:7bd8723ba8ddaaea6a9edc8053faaa663052c3c026bbe29408d945b07d6cf8f3` |
| 108 | `theorem` | [prime_two](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-two-source-edition-2.md) | 805 | `result-track:ea53d25a28a87ef54aababa1ba966eb65dfd15a7fe05f7952eaad21a14417240` |
| 109 | `theorem` | [prime_three](../../../../../NumberTheory/ElementaryNumberTheory/NatPrime.lean/declarations/prime-three.md) | 809 | `result-track:4e5734c66b39f0f0be29f4f4c840b1529431f87814afbf41f31cdb5dd68fb2f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5970b6c9e73ef7d4a15d36f340d0910788bfc5bac4361d6807bcb252f2529fdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/Prime/Variantab6b78ee526261643f2d74808e2c1c4e30dd9aacd8ed7585e563c736c054c0fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
