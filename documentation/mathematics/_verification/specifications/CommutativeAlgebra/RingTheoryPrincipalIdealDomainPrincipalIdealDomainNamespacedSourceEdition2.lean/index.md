# Verification target: Ring Theory Principal Ideal Domain Principal Ideal Domain Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6de315c92879d8c2503b6bc99e92b1e564a7b23",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6de315c92879d8c2503b6bc99e92b1e564a7b23`.

Source path: `GRWTSK/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GCDMonoid.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Maps` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Nonunits` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Noetherian.UniqueFactorizationDomain` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [bot_isPrincipal](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/bot-isprincipal.md) | 60 | `declaration-track:e1da15ecc5ed2db1fe960b180917c4f214e0eb7f486b178047ea0b7740a63e40` |
| 2 | `instance` | [top_isPrincipal](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/top-isprincipal.md) | 63 | `declaration-track:033b50cab6fd472a4e74a3e1df6f9a3d0cd85598908f51507071aa0c182ed901` |
| 3 | `class` | [IsBezout](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/isbezout.md) | 69 | `declaration-track:dcca667477c990a5481dd7f6a3831fb84d16ebd498da43706657d140e9ac9396` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/instance-source-edition-6.md) | 73 | `declaration-track:fb7477212e271f553e70d51c1c3edcaa879a4f58a26731068d29355dfc337d41` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 76 | `declaration-track:7e7200e867948ef59fc853b54420bcc21f8531a7099c56a052ca66e7fcadfd16` |
| 6 | `def` | [generator](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/generator.md) | 94 | `declaration-track:785297c4141924836f20ad372a327ef08b59bc7666f8157c42137e0a00387698` |
| 7 | `theorem` | [span_singleton_generator](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/span-singleton-generator.md) | 97 | `result-track:e4c04e9de596bad663adb175cbf173d76b18ec19f65a3a5ceb91db5f84cfb3f9` |
| 8 | `theorem` | [Ring Theory Principal Ideal Domain Principal Ideal Domain Namespaced Source Edition2](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/span-singleton-generator-source-line-101-occurrence-2.md) | 101 | `result-track:29706d76dace22e8a758a7b053484aea145fb941b8325061c80a9bf66edfa8b6` |
| 9 | `theorem` | [generator_mem](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/generator-mem.md) | 106 | `result-track:3e77a20e830921984c423368c10e4912ef5ad050deb48c9daa5bf23e77ffb1b9` |
| 10 | `theorem` | [mem_iff_eq_smul_generator](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/mem-iff-eq-smul-generator.md) | 111 | `result-track:f2af202e2c8790e3a083f79ce5e871f813eda9fd658bdaade22faed96511c48f` |
| 11 | `theorem` | [eq_bot_iff_generator_eq_zero](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/eq-bot-iff-generator-eq-zero.md) | 115 | `result-track:1a08b97c6fedb43d1f3329f94ca6ba441167582778ad33c199ebf1c0de9d9736` |
| 12 | `lemma` | [fg](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/fg.md) | 118 | `result-track:e27a35873e84c248559607f8dbae2189af3d8aa3d7e343c1dc1cefcebc35f45d` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/instance.md) | 122 | `declaration-track:3347d8102af405d4111ec9ab125aad0fa1e459c97e6713e4da3aa5786e0b0032` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 127 | `declaration-track:388a36e0fdd82ff9eba325b6474fb8d31b4f229d89c3f8a4325a6ad3c2b2cfb2` |
| 15 | `theorem` | [associated_generator_span_self](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/associated-generator-span-self.md) | 137 | `result-track:24882af6f45bc02c3925f8edbc28184af7c9e0838a269a0900b7b8c5a272db20` |
| 16 | `theorem` | [mem_iff_generator_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/mem-iff-generator-dvd.md) | 142 | `result-track:f00b4ded6f9be3632d325c07ff102fb8a94aae23a3f28e9d0e72102fff9ec5da` |
| 17 | `theorem` | [prime_generator_of_isPrime](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/prime-generator-of-isprime.md) | 145 | `result-track:f26ecb6fe95023d1eecac76ce8a768876694d5330a5c8811de8cef41de1d98cc` |
| 18 | `theorem` | [generator_map_dvd_of_mem](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/generator-map-dvd-of-mem.md) | 152 | `result-track:e552f9274ace84aecc060070f2b3d0cfd91bcc57be4e4ea1d79a5255fd1f27bd` |
| 19 | `theorem` | [generator_submoduleImage_dvd_of_mem](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/generator-submoduleimage-dvd-of-mem.md) | 158 | `result-track:1928a248a41b1b12a4d38e2ca982f4f4334d78fb0cfdb3cec7ef8eb36d9a3bd7` |
| 20 | `instance` | [span_pair_isPrincipal](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/span-pair-isprincipal.md) | 174 | `declaration-track:93e69256d061ce2910ace72c406b0dc7724baca5344f4156f267c9be900f47cc` |
| 21 | `def` | [gcd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/gcd.md) | 182 | `declaration-track:6a793e315cea2fb17a67f0228b31dd2dc73ba031676c67e186ad04f12bce51c5` |
| 22 | `theorem` | [span_gcd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/span-gcd-source-edition-2.md) | 184 | `result-track:42df777c860cd38f02be95a7bd4130ec4364054a7f1dfb13b092a7d1b8f87489` |
| 23 | `theorem` | [gcd_dvd_left](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/gcd-dvd-left.md) | 191 | `result-track:63874a571fa9868664d9dc1ae0d7d5dea20c3aa2679f118cd9a836b671d54be6` |
| 24 | `theorem` | [gcd_dvd_right](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/gcd-dvd-right.md) | 194 | `result-track:8d55ba3cb60f56e9a7a83a9c2a3b63c08dcf44046d053ae176f25997559bd579` |
| 25 | `theorem` | [dvd_gcd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/dvd-gcd.md) | 198 | `result-track:3586978a1e162b1d3c23162f72db7db4d80c60a8df200fbbec7027083d6ed56b` |
| 26 | `theorem` | [gcd_eq_sum](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/gcd-eq-sum.md) | 203 | `result-track:fb9976b3a3abea6ab19a3969e937b1e04f7ffc114183c5f4abe1028968495603` |
| 27 | `theorem` | [Ring Theory Principal Ideal Domain Principal Ideal Domain Namespaced Source Edition2](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/iscoprime.md) | 208 | `result-track:1f84c1a78306e200ad5a518de1126ca5453c6d5e596628e905433cd760d824dd` |
| 28 | `theorem` | [Ring Theory Principal Ideal Domain Principal Ideal Domain Namespaced Source Edition2](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/isrelprime-iff-iscoprime.md) | 213 | `result-track:8e8680636b2f5c08ef55cb42aae6630e954be8fe17bc53d431464e793d511f81` |
| 29 | `def` | [toGCDDomain](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/togcddomain.md) | 220 | `declaration-track:ed5e1114f1ee84f980bc620685f19df0e3fa69ba83d5ffc3b77062190559870f` |
| 30 | `instance` | [nonemptyGCDMonoid](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/nonemptygcdmonoid.md) | 223 | `declaration-track:a06ff45a167bcd02525b346e2d8edbf914f8a49f79fa89863cb44bd5f873aed5` |
| 31 | `theorem` | [associated_gcd_gcd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/associated-gcd-gcd.md) | 226 | `result-track:3052c2fa6ede323e373c2a203f21146f406a606f6fe42ac49e909633841664b2` |
| 32 | `theorem` | [to_maximal_ideal](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/to-maximal-ideal.md) | 240 | `result-track:dfbfc487cc6ca25afe519e9b25740c670585f77b6f1c592f008e766c6b477aed` |
| 33 | `theorem` | [mod_mem_iff](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/mod-mem-iff.md) | 265 | `result-track:a7e11ccfb67ece7a4c217dea9006c493f1b31bf4844097098ea009e0ae4820a7` |
| 34 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 270 | `declaration-track:8723f1472bca9e4e88077a23c0a4f2178287ef5b2405f8959c6b22773bb87a19` |
| 35 | `theorem` | [IsField.isPrincipalIdealRing](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/isfield-isprincipalidealring.md) | 298 | `result-track:4a36d536192f0079c74a3b35874686ca87b77ce4cd439dde8938665880b813a9` |
| 36 | `theorem` | [isMaximal_of_irreducible](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/ismaximal-of-irreducible.md) | 306 | `result-track:c1c16a2fef295cc7825a30335a72042c6835ca6f81ced59bb6ef4b44d5e585ac` |
| 37 | `def` | [factors](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/factors.md) | 322 | `declaration-track:06932cc8f44edd4d2fbd57741d74cf2bdd101cb053777222323895a22ececeb5` |
| 38 | `theorem` | [factors_spec](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/factors-spec.md) | 325 | `result-track:236f0a950a596f11f6f0fba67d2865ac5a54ec3309103f14370d1800f08fd5c3` |
| 39 | `theorem` | [ne_zero_of_mem_factors](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/ne-zero-of-mem-factors.md) | 330 | `result-track:d9b76cb403b5e2375215f77af51a609880fedd3f577792344ab7ce9e51980806` |
| 40 | `theorem` | [mem_submonoid_of_factors_subset_of_units_subset](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/mem-submonoid-of-factors-subset-of-units-subset.md) | 334 | `result-track:3d60b921f1333d6dee13fc0ddb0c3b5cd181e65d70174f0db92e4e8a94029d92` |
| 41 | `theorem` | [ringHom_mem_submonoid_of_factors_subset_of_units_subset](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/ringhom-mem-submonoid-of-factors-subset-of-units-subset.md) | 342 | `result-track:68f567abca1ad3c0e3ea54559398edb8bbd070cbe017e29cc8e0279343d3d803` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 349 | `declaration-track:6e461344e9313356a5bc9aadf589b924f0c32b1c08d273f33a49c61696ae3b44` |
| 43 | `theorem` | [Submodule.IsPrincipal.map](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/submodule-isprincipal-map.md) | 364 | `result-track:2568392c02bd4f6428eb9db0c1fdc32527c68dfc2aae977b630774359e413840` |
| 44 | `theorem` | [Submodule.IsPrincipal.of_comap](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/submodule-isprincipal-of-comap.md) | 369 | `result-track:5093d7d6f5608649da7bf4eb4b05e662465d739f278effa5839c538bc391126f` |
| 45 | `theorem` | [Submodule.IsPrincipal.map_ringHom](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/submodule-isprincipal-map-ringhom.md) | 374 | `result-track:819e0465a2e26b5f3414b3f8a9ed1fad19a193859340e869ec40326299d740e3` |
| 46 | `theorem` | [Ideal.IsPrincipal.of_comap](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/ideal-isprincipal-of-comap.md) | 380 | `result-track:fa589369179fb81814a62ac6d2da105b9a530e5819bda3fd4f38a641d4374e94` |
| 47 | `theorem` | [IsPrincipalIdealRing.of_surjective](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/isprincipalidealring-of-surjective.md) | 386 | `result-track:ada55769f5af3e58cbb47b3d9345b079c15a7090ed34a5eda60f987da3e10791` |
| 48 | `theorem` | [isCoprime_of_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/iscoprime-of-dvd.md) | 401 | `result-track:b90eb9fd65ce34687b1f826e9eab5a213ea50cdcd95cdacb3cd737499fd64b27` |
| 49 | `theorem` | [dvd_or_isCoprime](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/dvd-or-iscoprime.md) | 405 | `result-track:0039ab115a3a808359ff801b4bfc05d4a0f3d978b1eaefbf260418d744d4134f` |
| 50 | `theorem` | [Irreducible.coprime_iff_not_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/irreducible-coprime-iff-not-dvd.md) | 411 | `result-track:a0925c2530c40fbf82630159e9e505966b05264f11c7d4bc374667e8f4016949` |
| 51 | `theorem` | [Irreducible.dvd_iff_not_isCoprime](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/irreducible-dvd-iff-not-iscoprime.md) | 415 | `result-track:df433ba58767de717365a910476a74b116335be04471e8fa73e406329dc87a89` |
| 52 | `theorem` | [Irreducible.coprime_pow_of_not_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/irreducible-coprime-pow-of-not-dvd.md) | 421 | `result-track:343085384f0808eeb7c87818efdf4920271d1fb49d19105cebe2f823fa6e40fb` |
| 53 | `theorem` | [Irreducible.isCoprime_or_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/irreducible-iscoprime-or-dvd.md) | 425 | `result-track:3ff35de3b80461ee000ff4165eb3ba519d080eb42ae10949d2ea4b25f2df9c6d` |
| 54 | `theorem` | [IsBezout.span_gcd_eq_span_gcd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/isbezout-span-gcd-eq-span-gcd.md) | 436 | `result-track:f99091d7ddb4c9a508a85d8621a9e151a4532c5cd1bd3f0a38046a2b1cae5307` |
| 55 | `theorem` | [span_gcd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/span-gcd.md) | 443 | `result-track:2bd808df18988759de86d8f38a537811e3ad9976d1266064706353d826e0f401` |
| 56 | `theorem` | [gcd_dvd_iff_exists](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/gcd-dvd-iff-exists.md) | 446 | `result-track:fc78530e105f31dcb4a0f3fcc2f15ee0a35a43336e5da4d19457b78790402f6a` |
| 57 | `theorem` | [exists_gcd_eq_mul_add_mul](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/exists-gcd-eq-mul-add-mul.md) | 451 | `result-track:e62e8040b39d6115cc0d04037d9fbbc309a80eb22665d633308f71d1eea742c7` |
| 58 | `theorem` | [gcd_isUnit_iff](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/gcd-isunit-iff.md) | 454 | `result-track:136e6447f37cbb0db03db648b150b13fcbd5527488fa4a1323158f41b176a0cd` |
| 59 | `theorem` | [Prime.coprime_iff_not_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/prime-coprime-iff-not-dvd.md) | 459 | `result-track:1eaaf9bb503cbd7b85d700c63b9224efb94ea8e37eb8a547e43393391e582049` |
| 60 | `theorem` | [exists_associated_pow_of_mul_eq_pow'](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/exists-associated-pow-of-mul-eq-pow.md) | 462 | `result-track:15b9cdca9ef84b2cccd472cb2da323b19d1a4badf4d7d35e3fdacb369ba3cbd0` |
| 61 | `theorem` | [exists_associated_pow_of_associated_pow_mul](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/exists-associated-pow-of-associated-pow-mul.md) | 468 | `result-track:debe319088b1d3b888ead4d6d8015d10432ce05575e2eece95d83d2e1efc1f2f` |
| 62 | `theorem` | [isCoprime_of_irreducible_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/iscoprime-of-irreducible-dvd.md) | 478 | `result-track:237eb084204289e7d41d3681b21899b99511e10a8073d552f3df10a9eb2a41e0` |
| 63 | `theorem` | [isCoprime_of_prime_dvd](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/iscoprime-of-prime-dvd.md) | 482 | `result-track:70fd6f8b98268d19f4f625c32aca09e7fc893d1c0890c10f45d65862ffd52b5d` |
| 64 | `def` | [nonPrincipals](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/nonprincipals.md) | 495 | `declaration-track:309dbe82cc5ba0d9291d4a0f5d434eaef762f3b5bb3121bbf6541aabc15f9f9a` |
| 65 | `theorem` | [nonPrincipals_def](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/nonprincipals-def.md) | 498 | `result-track:30e9e4b8bee3e3f43c280a81090d3c3396fb51781423ee404b37eee301588f68` |
| 66 | `theorem` | [nonPrincipals_eq_empty_iff](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/nonprincipals-eq-empty-iff.md) | 503 | `result-track:184566442b29f069b87a2cda8b5fc12ba2163aefe6f06ae5bf4bfa0bbfda81dc` |
| 67 | `theorem` | [nonPrincipals_zorn](../../../../CommutativeAlgebra/RingTheoryPrincipalIdealDomainPrincipalIdealDomainNamespacedSourceEdition2.lean/declarations/nonprincipals-zorn.md) | 509 | `result-track:0eca97c48121e00c396a774fadb673e17980c6a270356f08fc35e248d9d45407` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a534abec6ede4c0295d5deb5f8963717e08b77a425bd607e61b25ada9621cdc4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean","GRWTSK/_verification/specifications/Algebra/PrincipalIdealDomain/Variant665d2e9a1cdb718719bc533561641fe1bbb84fd354dd651479dcbea845e7dfce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
