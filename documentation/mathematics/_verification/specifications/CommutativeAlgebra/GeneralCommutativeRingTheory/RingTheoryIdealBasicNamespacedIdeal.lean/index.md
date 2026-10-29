# Verification target: Ring Theory Ideal Basic Namespaced Ideal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6d8f26b55eff3b9ac078e04077949c955e32c75",
  "lexical_observation_count": 116,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantd204acf8b143fb62f1cfc7669c1a7f4f2449cb815ce3532bd2148023384af203.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6d8f26b55eff3b9ac078e04077949c955e32c75`.

Source path: `GRWTSK/Algebra/Basic/Variantd204acf8b143fb62f1cfc7669c1a7f4f2449cb815ce3532bd2148023384af203.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantd204acf8b143fb62f1cfc7669c1a7f4f2449cb815ce3532bd2148023384af203.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Associated` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Atoms` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompactlyGenerated` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Choose.Sum` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ideal.md) | 52 | `declaration-track:ecb5bdd98edfb37997e82d9122b8005733f1827303f2322e6dc3bdc94ab1bbcd` |
| 2 | `theorem` | [zero_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/zero-mem.md) | 62 | `result-track:8c7d0fa27aea3f597e91ea63f0326244e9700d60dd37b6acb73a4fe2336b7812` |
| 3 | `theorem` | [add_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/add-mem.md) | 66 | `result-track:256ad838f8dda72ff82c451f1f3726e06b3751b6ee37e845d702939f7a63ccc3` |
| 4 | `theorem` | [mul_mem_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mul-mem-left.md) | 72 | `result-track:3b4247b9ad3a2f788a0c229b698a4557dd86b16d08d584d9cbe8720ede0c7c8e` |
| 5 | `theorem` | [ext](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ext.md) | 79 | `result-track:c9be017bcd6e471ae05c71e3f8470f3bf14786453f94b243c2c5717973e1ff5e` |
| 6 | `theorem` | [sum_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/sum-mem.md) | 83 | `result-track:b38a3943d11b027d87a0845a33121754b5fcf61ee7080f100d644a6478073044` |
| 7 | `theorem` | [eq_top_of_unit_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/eq-top-of-unit-mem.md) | 88 | `result-track:73f8fc0bc6532124309df75d4689c3636f1e279d0e0db3e8ff6bdf26248ade13` |
| 8 | `theorem` | [eq_top_of_isUnit_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/eq-top-of-isunit-mem.md) | 96 | `result-track:80a16cc6eb7782a760781bc130a10df3c1fb3bb1a783b8eba1e69658e83ef9f5` |
| 9 | `theorem` | [eq_top_iff_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/eq-top-iff-one.md) | 101 | `result-track:3a9cd3c0593138ab1d24a601aed98b0fc01a9eb201798eadc856ea848c90e6fa` |
| 10 | `theorem` | [ne_top_iff_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ne-top-iff-one.md) | 105 | `result-track:40531187bbd99c1645fc91904a234f06e0ecc1111a3caf1a0e336586a71a008d` |
| 11 | `theorem` | [unit_mul_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/unit-mul-mem-iff-mem.md) | 110 | `result-track:242646ed5897faf9c891b1d545450d8182ea0e64570df2f7c3c1a04d743a4658` |
| 12 | `def` | [span](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span.md) | 118 | `declaration-track:0623e16324ec6e333b771796db4264da391bce01248dbe3ac4ac567b1eaa897d` |
| 13 | `theorem` | [submodule_span_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/submodule-span-eq.md) | 123 | `result-track:a5ffd0535712377229383b9dcd109e55a3d6744974c03e0e6ef94d15a8442a2a` |
| 14 | `theorem` | [span_empty](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-empty.md) | 128 | `result-track:15c7eb1108d8e094a1feee37ce75080f211ae9bb5a02123d8b8bb6d2ccd6d8f4` |
| 15 | `theorem` | [span_univ](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-univ.md) | 133 | `result-track:aded3dcc478bf1241770d77f3e51eea2c3f9e33967956032b1a7aa554e62be72` |
| 16 | `theorem` | [span_union](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-union.md) | 137 | `result-track:5dfd46e5c35eb8483fa2812b70c61b4f5e73097b5eae80a3bf6aaf775bf79c08` |
| 17 | `theorem` | [span_iUnion](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-iunion.md) | 141 | `result-track:6cfd7b9edc51c15e11c126704b58bf6caa78298c6e205b5e461b810a63b46fa4` |
| 18 | `theorem` | [mem_span](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-span.md) | 145 | `result-track:217db56217af9a79f6fffe453f44c8f7f85a3e99b6da1c5fd86b9e7ce0a3c294` |
| 19 | `theorem` | [subset_span](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/subset-span.md) | 149 | `result-track:15acb5f5abed3ea5007ff14d40e2110d636d33cdee7cffbc5e662cb0084e4bd6` |
| 20 | `theorem` | [span_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-le.md) | 153 | `result-track:66ef2e60fb1fc68c6e60cc4bb8bdf935d51a91e521e281b800cc9da1ba59d428` |
| 21 | `theorem` | [span_mono](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-mono.md) | 157 | `result-track:7431963d5dfc1d41e6ddfbe49393948241a4392239a58480b4c481b8d7feb958` |
| 22 | `theorem` | [span_eq](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-eq.md) | 162 | `result-track:7f511faadf1cc61f5738f97b655d35c7c71563ec008eda85f91a67fb72fdd918` |
| 23 | `theorem` | [span_singleton_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-one.md) | 167 | `result-track:6e80bd55937c5cba486d7b2c7f202e809c75aa85b2642784aff352a61babcc55` |
| 24 | `theorem` | [mem_span_insert](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-span-insert-source-edition-2.md) | 171 | `result-track:e6452f9fa883900667397a4b14ad4bf49b50f0ac219688680a0ede818bd75b4b` |
| 25 | `theorem` | [mem_span_singleton'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-span-singleton-source-edition-2.md) | 176 | `result-track:69ed29faf89412182d659725ea18b82cb96e5827fff2096c170f164f328b6127` |
| 26 | `theorem` | [span_singleton_le_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-le-iff-mem.md) | 180 | `result-track:c1becabec7a25a507610ea29d32917a73df480b1e693a439bccbe37cda8c06ef` |
| 27 | `theorem` | [span_singleton_mul_left_unit](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-mul-left-unit.md) | 184 | `result-track:99c9ff155de4c27e62051001e6fb3135efbb8c881c41988ad34cae141f9d3bd4` |
| 28 | `theorem` | [span_insert](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-insert.md) | 190 | `result-track:17ce261d7e2740d07863357a50295d47be2fac91c3b628c1dd4008172e603ccc` |
| 29 | `theorem` | [span_eq_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-eq-bot.md) | 194 | `result-track:311b447f616e2f10c98527d3a2b2ee4c0400e2d2685dbb176152f04a02ed1a4e` |
| 30 | `theorem` | [span_singleton_eq_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-eq-bot.md) | 199 | `result-track:4f5288ac9ff36b3fac7fbb8e24ff346989ebfdbeec3751f32735232d4ba2b6e5` |
| 31 | `theorem` | [span_singleton_ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-ne-top.md) | 203 | `result-track:5a105e17a4e94923d4445c9ddc1563486114d04ea7197ec3555d6fc8ef4ab29d` |
| 32 | `theorem` | [span_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-zero.md) | 211 | `result-track:1d11019ad91da823dbdd6befbdb36a365ac0a6976a63132749e8bcd36dbfed20` |
| 33 | `theorem` | [span_one](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-one.md) | 215 | `result-track:868c86ec293e6f156ec46cf9d19b3a6fbade4c1597f138b3b610c73a449168e9` |
| 34 | `theorem` | [span_eq_top_iff_finite](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-eq-top-iff-finite.md) | 218 | `result-track:c8fc1e80abff9dbc7616e4d523cf30d6f8368e8e977886c173372d9d89f476a3` |
| 35 | `theorem` | [mem_span_singleton_sup](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-span-singleton-sup.md) | 224 | `result-track:9b391d3718e2021a5ce2b1f9c403522237d41688f9267a46ce0aa02cd17ff3ea` |
| 36 | `def` | [ofRel](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ofrel.md) | 237 | `declaration-track:4b4732c8a877115f6f7278e57a9f4388b002df47d0c9d26e89bd2ad333c99e0a` |
| 37 | `class` | [IsPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/isprime.md) | 242 | `declaration-track:500d53051b320549527d638f0cb010268adb80da1c500f0dfbe58a266e66b56e` |
| 38 | `theorem` | [isPrime_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/isprime-iff.md) | 249 | `result-track:ff8b804ab7fa197552aebad4db50e7a44877d840e0345109c566579a8d83961d` |
| 39 | `theorem` | [IsPrime.ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/isprime-ne-top.md) | 253 | `result-track:3134a040af7cba13fc3627d52bac681748e3d8fcf13028a297bcaba2aa81f939` |
| 40 | `theorem` | [IsPrime.mem_or_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/isprime-mem-or-mem.md) | 257 | `result-track:bfe38d20141e030dc69d1308c50e1452e3661bc9db2dd042d3fd8d3318dfe357` |
| 41 | `theorem` | [IsPrime.mem_or_mem_of_mul_eq_zero](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/isprime-mem-or-mem-of-mul-eq-zero.md) | 261 | `result-track:3cf0d5dd853b562dc0cdaa96d942e90ccd0b1dc4c53fc084a333eebf56815f69` |
| 42 | `theorem` | [IsPrime.mem_of_pow_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/isprime-mem-of-pow-mem.md) | 266 | `result-track:201cd1faefe8875a4eb8a537bd659e3a5ccf82c3cc877df341562f7378e35277` |
| 43 | `theorem` | [not_isPrime_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/not-isprime-iff.md) | 275 | `result-track:5fd21ff7187ed28680c3c67eda6ad6968e76cbe5b19ceaa0f9decc5cb0dff67e` |
| 44 | `theorem` | [zero_ne_one_of_proper](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/zero-ne-one-of-proper.md) | 284 | `result-track:b2bcb1a00ef809aa22054710feb2f555c1db0cd1e8b0dc1543bd4dd958034e90` |
| 45 | `theorem` | [bot_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/bot-prime.md) | 288 | `result-track:a02e079c81fce9c326ef765bc7a41ef24fc099d44dcfbaf66801486e2beed15b` |
| 46 | `class` | [IsMaximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ismaximal.md) | 294 | `declaration-track:5c801dc8959a51746bf3bedaa1b7e013bda882296c8a02e84dcf162112c4970b` |
| 47 | `theorem` | [isMaximal_def](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ismaximal-def.md) | 300 | `result-track:4a2dfb9f2751641c0a8815d3bc13be6b5c4d243dec556b069b7dda42e3101e0b` |
| 48 | `theorem` | [IsMaximal.ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ismaximal-ne-top.md) | 304 | `result-track:39847af858eefc604b7f15bf0906b167b4444965db2d1c195af58652053a8d60` |
| 49 | `theorem` | [isMaximal_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ismaximal-iff.md) | 308 | `result-track:c6172333764ce999e846f8f34dac95af4a63b839d712ec34e141863ac2076fc6` |
| 50 | `theorem` | [IsMaximal.eq_of_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ismaximal-eq-of-le.md) | 321 | `result-track:009454b82f18492cbd28284cb82a60e9d50b6ec0469e126d43d96419f8b1cbc2` |
| 51 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/instance-source-edition-3.md) | 325 | `declaration-track:8e8526713dd3bbd75ecb988b2e5e3e577b41ed98a264923275c14aa1ff581691` |
| 52 | `theorem` | [IsMaximal.coprime_of_ne](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ismaximal-coprime-of-ne.md) | 330 | `result-track:81e1fb7847eb983df5954d5bd13b3ca5a36d87450eb4888ea0bd0b63ee83c264` |
| 53 | `theorem` | [exists_le_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/exists-le-maximal.md) | 338 | `result-track:c689e94cdbbac82608558e4bee34ee90dd7712ce4716eb053f67a675bf566b19` |
| 54 | `theorem` | [exists_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/exists-maximal.md) | 346 | `result-track:479f6ef3a57b89b79b394dce21a0ad2e5cd3eb99aff89dbe3cd07043e3c1b120` |
| 55 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/instance-source-edition-2.md) | 353 | `declaration-track:4853e500a7bcde82df8082c6e24831b2fab674feeb455b54bd44a1fe7f86a7d0` |
| 56 | `theorem` | [maximal_of_no_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/maximal-of-no-maximal.md) | 359 | `result-track:f70ec343dc2b2c695c6f1fafb13ca5e1d0b3ca5a84413d7753556cd578fef61f` |
| 57 | `theorem` | [span_pair_comm](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-pair-comm.md) | 366 | `result-track:769ebdbb26400352d8648b607714be35fc866041b61824c378c63dbdfcb8a843` |
| 58 | `theorem` | [mem_span_pair](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-span-pair.md) | 370 | `result-track:1952f23a1b7b77bc430f6d54703b83bc84beb1481e7657f728039798bb7eda2c` |
| 59 | `theorem` | [span_pair_add_mul_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-pair-add-mul-left.md) | 375 | `result-track:a07b153495860013d9013d7b17cf21eb6b335a4c0740c20530aa5bac03f88b0e` |
| 60 | `theorem` | [span_pair_add_mul_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-pair-add-mul-right.md) | 391 | `result-track:a11b0dc9e97ffc6c2473dab9eb09fb2509ae60ce9e1bd663e81606ee11e87641` |
| 61 | `theorem` | [IsMaximal.exists_inv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ismaximal-exists-inv.md) | 396 | `result-track:8b4175c28eaaaa7caf4b339b24e21b72849241e747c2044acf23ed0de3bbbba1` |
| 62 | `theorem` | [mem_sup_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-sup-left.md) | 412 | `result-track:a58eed8538cce713c857c994c068aebb699d8f24d931e486a2875f9b6071c73c` |
| 63 | `theorem` | [mem_sup_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-sup-right.md) | 416 | `result-track:5e83956b4e12cd62d8da91259a6de9d33f75092d91dd834282b9aa80db769622` |
| 64 | `theorem` | [mem_iSup_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-isup-of-mem.md) | 420 | `result-track:5f70e16b5ed811ad1d438cdbb188bc25ba7904fec8c93563a22850ffbde0f677` |
| 65 | `theorem` | [mem_sSup_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-ssup-of-mem.md) | 424 | `result-track:7d2618f587c8f765140a3461d11d7fa8c7bf720670d122f9b0844f48d0ce8f8d` |
| 66 | `theorem` | [mem_sInf](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-sinf.md) | 429 | `result-track:a98cd04d80d337481ce7e03abb4c1b78a5cb88bfb6c3020feb470b8e988c3428` |
| 67 | `theorem` | [mem_inf](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-inf.md) | 434 | `result-track:0e7462a64014501b82a5e45410cbd9fd357e3a7ba32d38bae27383ddbf5034ef` |
| 68 | `theorem` | [mem_iInf](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-iinf.md) | 439 | `result-track:7ac8b638d9ef02936ba7c23c38c1b400b43fea5f9938e5578437a8d56c720a6d` |
| 69 | `theorem` | [mem_bot](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-bot.md) | 444 | `result-track:67af205de65b389a223be10065480d6d2c57c8069942c0ad1aff6dcf3f861b88` |
| 70 | `def` | [pi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/pi.md) | 455 | `declaration-track:e56f4de68bbc36535059a2fe0b8d43616bd0a376c622a4ec1f3135a73c5068e7` |
| 71 | `theorem` | [mem_pi](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-pi.md) | 462 | `result-track:788dca5b30aa0067b8f19a64f76cf63228a1f4c7ce05aef24c2c55df427ce889` |
| 72 | `theorem` | [sInf_isPrime_of_isChain](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/sinf-isprime-of-ischain.md) | 468 | `result-track:03e0be3c5e5096613cb4e02faced4019002ebc0e4399ae5583f365390b672d5a` |
| 73 | `theorem` | [mul_unit_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mul-unit-mem-iff-mem.md) | 499 | `result-track:56fb6b4d8a5e77e5145e31624c57f29e059dc61630731b0697f4d1a5d42714ae` |
| 74 | `theorem` | [mem_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-span-singleton.md) | 503 | `result-track:65edafdb89d654d985c647456d50c5b040b4f897e69da4bf9b1dce12d2f9ab5e` |
| 75 | `theorem` | [mem_span_singleton_self](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-span-singleton-self.md) | 507 | `result-track:a02938dd7576118a1b2f7875831aedcf6192f57dc7686a56560fc4f8790a2c80` |
| 76 | `theorem` | [span_singleton_le_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-le-span-singleton.md) | 511 | `result-track:af6ed4d54c50fcce35eb30523096e0d80124e64a4793b690da19ada614d331bb` |
| 77 | `theorem` | [span_singleton_eq_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-eq-span-singleton.md) | 516 | `result-track:7e0aa17376e8ae7e657ae3059ad2abf8e3c01cee14edceebcbc81e8f48de3471` |
| 78 | `theorem` | [span_singleton_mul_right_unit](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-mul-right-unit.md) | 522 | `result-track:e4331372aaaa331b1edfa5bd8a3072bd59c21d11c890b71864d6001ca6ff279f` |
| 79 | `theorem` | [span_singleton_eq_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-eq-top.md) | 526 | `result-track:28b85357268a7189d789399e151b14b0b29fdc51236746dbbd6d28d383686da1` |
| 80 | `theorem` | [span_singleton_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-prime.md) | 530 | `result-track:ff337e1ee4705b62479c98625ea82a410cbb0c6a793383544f04dc38c543383b` |
| 81 | `theorem` | [IsMaximal.isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ismaximal-isprime.md) | 534 | `result-track:cfb98e654fab4fc922d024f2d3ada5c6ad947d9e8d151d18ae01a5a308ad0f67` |
| 82 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/instance.md) | 550 | `declaration-track:3786f85b82cbfc867a79bf38e84b7b2aae45ebefa83c317e34d0dd40f30fbe93` |
| 83 | `theorem` | [span_singleton_lt_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-lt-span-singleton.md) | 554 | `result-track:1905dc315135a957f0df8f4130d3cfad6782044b88ecf04b1788404e9021dc46` |
| 84 | `theorem` | [factors_decreasing](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/factors-decreasing.md) | 560 | `result-track:62b53153d8715e196c1b190f10ad75534a9365b2f3df10dd36e833836e0025e0` |
| 85 | `theorem` | [mul_mem_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mul-mem-right.md) | 570 | `result-track:39d59c5e9be1cfebaca7f47077a0c5e185ff99f182926509a3648c09053fbc4d` |
| 86 | `theorem` | [pow_mem_of_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/pow-mem-of-mem.md) | 576 | `result-track:9db7163f21693b7694d1fd79083b7137833d4096d8fc5caa963fe0c6a150fa49` |
| 87 | `theorem` | [IsPrime.mul_mem_iff_mem_or_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/isprime-mul-mem-iff-mem-or-mem.md) | 581 | `result-track:efd7d16da7cb3c99441af48f1e853527ce40608e37d9d249aa2c889e3e9f135d` |
| 88 | `theorem` | [IsPrime.pow_mem_iff_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/isprime-pow-mem-iff-mem.md) | 588 | `result-track:c9a844787f8c4078d25518d78befcbfe9d7b5d9e53911f627bc956ddca3ede85` |
| 89 | `theorem` | [pow_multiset_sum_mem_span_pow](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/pow-multiset-sum-mem-span-pow.md) | 593 | `result-track:f3ea7eda6156abaf386a22bad9768fb357723507ce1a074c4cfd612cbaf84044` |
| 90 | `theorem` | [sum_pow_mem_span_pow](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/sum-pow-mem-span-pow.md) | 620 | `result-track:efd61d186572713535d46fc2463f99bdf4e61babfd7b35c5596d0a7d62149825` |
| 91 | `theorem` | [span_pow_eq_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-pow-eq-top.md) | 627 | `result-track:08d18884e0f4ea4b46e125b7d8eda1ab862dac5c2af70a853362d9141c26088b` |
| 92 | `theorem` | [neg_mem_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/neg-mem-iff.md) | 662 | `result-track:cc52c6ccf6f31f539b20fde1391ad3d4bae9d98e2b43a94b8761708ee6663e76` |
| 93 | `theorem` | [add_mem_iff_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/add-mem-iff-left.md) | 666 | `result-track:b641436e63434a11ba971039bf1bfe7595818663e7a8eb75f031b1a2e9a5dd03` |
| 94 | `theorem` | [add_mem_iff_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/add-mem-iff-right.md) | 670 | `result-track:3f880045403ef88bbd26cb212cf0f1061e13a7f44d9c9dd5ca327fbfd87853e3` |
| 95 | `theorem` | [sub_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/sub-mem.md) | 674 | `result-track:ad4a13b1f18c4efffb7e4bb5183fcb1aa81df197ac887b8a6845f4debbb9f92f` |
| 96 | `theorem` | [mem_span_insert'](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-span-insert.md) | 678 | `result-track:1f6e8a4c7ad6733808258124b5124911c954fed5d8d0309765bebee8028413e7` |
| 97 | `theorem` | [span_singleton_neg](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/span-singleton-neg.md) | 683 | `result-track:22e0dfb82e635b588b9055face6cf8b8db185595e11827307f4baa288fa9ceca` |
| 98 | `theorem` | [eq_bot_or_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/eq-bot-or-top.md) | 700 | `result-track:305595080f2ac3a858e608085aa6d766e7f4638fd32caf2602d045afcc1a7e56` |
| 99 | `instance` | [isSimpleOrder](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/issimpleorder.md) | 713 | `declaration-track:8d1199aeddcc276a3cb001b180eef95f224b3e7cb09e9bdc601844253502cc64` |
| 100 | `theorem` | [eq_bot_of_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/eq-bot-of-prime.md) | 717 | `result-track:f5d4a8f5717efe0319e301b9c92a64af8d06021929d0bb004f2a8bf2054ba61e` |
| 101 | `theorem` | [bot_isMaximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/bot-ismaximal.md) | 721 | `result-track:aecaa2b27b92184802e05272d34c1fcb244038d61c2f1cc1b673c97c670499f9` |
| 102 | `theorem` | [mul_sub_mul_mem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mul-sub-mul-mem.md) | 734 | `result-track:6c88876ea5e8b419d6d0b18bfe67099999b830032d2cc6c81921aa7b6555b3f6` |
| 103 | `theorem` | [exists_not_isUnit_of_not_isField](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/exists-not-isunit-of-not-isfield.md) | 750 | `result-track:2f87eefaa02e2342c8d8d3c806832a9cd874e2c5aeb001747834885ce21721ed` |
| 104 | `theorem` | [not_isField_iff_exists_ideal_bot_lt_and_lt_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/not-isfield-iff-exists-ideal-bot-lt-and-lt-top.md) | 759 | `result-track:2bbeeb650527623373ed353fcee947956fd2f7d8e6d30bd9674fbf82f9a2d886` |
| 105 | `theorem` | [not_isField_iff_exists_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/not-isfield-iff-exists-prime.md) | 775 | `result-track:9a48d03f14de2772722a336a639efd62d7840488675730add0c7c68ac15912a4` |
| 106 | `theorem` | [isField_iff_isSimpleOrder_ideal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/isfield-iff-issimpleorder-ideal.md) | 788 | `result-track:cdf87b93cc11d644e60dd6addda579d347888fe3abd3ecf6376f033834610906` |
| 107 | `theorem` | [ne_bot_of_isMaximal_of_not_isField](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/ne-bot-of-ismaximal-of-not-isfield.md) | 800 | `result-track:c3681777bcd0bcc3c6febfc80af9aadb4f2a1ea6bcb912fa4f5d73b4f5ecabe6` |
| 108 | `theorem` | [bot_lt_of_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/bot-lt-of-maximal.md) | 815 | `result-track:c5ed75bb88f139cdfacd62cf82c47598c7399a3117565c90bf9776158a966b02` |
| 109 | `def` | [nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/nonunits.md) | 830 | `declaration-track:3bc1dd1dce1991f86a11517c544da66235e673c61075af25a19669284f1963df` |
| 110 | `theorem` | [mem_nonunits_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mem-nonunits-iff.md) | 835 | `result-track:dfb4588e2f7007cd2ebc9e9fa2a99b1b7591c25db104120723234f01eedaeec8` |
| 111 | `theorem` | [mul_mem_nonunits_right](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mul-mem-nonunits-right.md) | 839 | `result-track:a6a68176a86353f77d3ca54d68fe9b5431f25a059801f1ae609e37c78e90c5e1` |
| 112 | `theorem` | [mul_mem_nonunits_left](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/mul-mem-nonunits-left.md) | 843 | `result-track:1e050a1636d42f83321ebdf545fe8c89ef3fc30c2da99aafd2e002e9e322b7dc` |
| 113 | `theorem` | [zero_mem_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/zero-mem-nonunits.md) | 847 | `result-track:6e099c768f1b8b9ff61b5175cc0674abfd93f4c81cc14b1bf5c67dc914d7e246` |
| 114 | `theorem` | [one_not_mem_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/one-not-mem-nonunits.md) | 852 | `result-track:f4ac4959fce2099ff2cfb613dddab4bf25453acf13a2ef924edb1bef916bff3e` |
| 115 | `theorem` | [coe_subset_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/coe-subset-nonunits.md) | 856 | `result-track:573844fdaa5958c8f24fcf2336e27d508a5d42a765b21443ec5e690ccfec5aca` |
| 116 | `theorem` | [exists_max_ideal_of_mem_nonunits](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/RingTheoryIdealBasicNamespacedIdeal.lean/declarations/exists-max-ideal-of-mem-nonunits.md) | 860 | `result-track:5a8b545072f017b90933bfdaee609d698ebaee863a59600aa1e5b77841257741` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2772756a84f84347fa5fc8a70a6c0b385f34c92e39915cee04bcd37a438722c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantd204acf8b143fb62f1cfc7669c1a7f4f2449cb815ce3532bd2148023384af203.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantd204acf8b143fb62f1cfc7669c1a7f4f2449cb815ce3532bd2148023384af203.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
