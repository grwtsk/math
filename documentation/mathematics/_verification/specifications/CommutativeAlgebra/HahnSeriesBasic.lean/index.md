# Verification target: Hahn Series Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41a55ac28b69392ddbabe0d245b1cb3c7e649532",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41a55ac28b69392ddbabe0d245b1cb3c7e649532`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Support` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.WithTop` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.WellFoundedSet` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HahnSeries](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/hahnseries.md) | 44 | `declaration-track:019e4e4702128e6267fdb2e3e7b8d1cc8e605d60749275517add01473dc022eb` |
| 2 | `theorem` | [coeff_injective](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-injective.md) | 57 | `result-track:3c1413fec8ec87385f2b1bf522fbb3e385c4731540c21e2d2f2a7397981b9076` |
| 3 | `theorem` | [coeff_inj](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-inj.md) | 61 | `result-track:ea87e92806665497ce2af82d86c0569748751589324c3648fe28cf27f46d1651` |
| 4 | `def` | [support](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/support.md) | 66 | `declaration-track:609e5b8392a992a395f2dca4bd9aeb8cd98c62e1ff8b7a0fa3a0f6baa69d4be1` |
| 5 | `theorem` | [isPWO_support](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ispwo-support.md) | 70 | `result-track:f8a47a07399a405f7766099f367b66b47178993f97f740aaa5f21158e35d81fe` |
| 6 | `theorem` | [isWF_support](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/iswf-support.md) | 74 | `result-track:ca8903a4adefcbdfbbeeec2dee9870cec8dde1885eee8600102ba6f1ddaa3897` |
| 7 | `theorem` | [mem_support](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/mem-support.md) | 78 | `result-track:ca77314799def50456f036251d15e8d6244f3eae8d34163028084c2c4a0d17c1` |
| 8 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/instance-source-edition-2.md) | 81 | `declaration-track:c6e1f1b6447498adeb8238d4353ba0cf3e5de2b596138bbd09530bcc73da80b8` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/instance.md) | 85 | `declaration-track:5e775a70e22bc90abf9da0ee366ea15f8425ab72dc21ee22fc2094ffc196a23a` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/instance-source-edition-3.md) | 88 | `declaration-track:e9e336e6d01b0ccac4288d795cb9fd651d085e948de3b2c2433e02d30cca3304` |
| 11 | `theorem` | [coeff_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-zero.md) | 92 | `result-track:c9d9d7b351b99203a5738bd4f79c0270308cfc452b8ade96ec3f1ae024ae733a` |
| 12 | `theorem` | [coeff_fun_eq_zero_iff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-fun-eq-zero-iff.md) | 98 | `result-track:43c7dd0a5d02a4fe91cd9b550d429dfb58c7b312710139b45eda1faf08498e19` |
| 13 | `theorem` | [ne_zero_of_coeff_ne_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ne-zero-of-coeff-ne-zero.md) | 101 | `result-track:17156386b76c46451895e6f6dd15f0fb8a4edcf5d861ef8fdf7a31769b1c44c3` |
| 14 | `theorem` | [support_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/support-zero.md) | 105 | `result-track:7799d6891edbf86a707750d7e51ece7a4700266de48ce58e215b7c33f0ff8e33` |
| 15 | `theorem` | [support_nonempty_iff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/support-nonempty-iff.md) | 109 | `result-track:3c01b44d58f9b16f9daddce994503077f2527a543cba094302bbf57cdb1e6a95` |
| 16 | `theorem` | [support_eq_empty_iff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/support-eq-empty-iff.md) | 113 | `result-track:87b130edba21ab39bda0d194d5ffaeefc504ff19b686c2ab4ad2992bc3658c74` |
| 17 | `def` | [map](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/map.md) | 118 | `declaration-track:8bff20d54fe332178e06b77836b8bbf870985e15c441de3a67b20e8805d7c200` |
| 18 | `lemma` | [map_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/map-zero.md) | 124 | `result-track:712b9a67de0ddcee780b7c9e996af4a125c4bb5f4934793fe32efd4f4ce0e70d` |
| 19 | `def` | [ofIterate](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ofiterate.md) | 129 | `declaration-track:9d487b9951bfd6a1380c56b6d10b919e69e951accc03e0d4de8bc6b309f6ae2d` |
| 20 | `lemma` | [mk_eq_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/mk-eq-zero.md) | 140 | `result-track:29c6888a122687663829efb2dd4ca60b0a49bd24d3d3948e1d305a4e4c74854d` |
| 21 | `def` | [toIterate](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/toiterate.md) | 144 | `declaration-track:bb4b09812cb53501bc34f8e289a4842796c8d031b87bd2c6ed49ff05bb94d979` |
| 22 | `def` | [iterateEquiv](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/iterateequiv.md) | 160 | `declaration-track:d4124ad6ea74346db01f64054d89485205058019bf388feb32e7c28212b0ee8c` |
| 23 | `def` | [single](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/single.md) | 169 | `declaration-track:412cfd28f088fd4cd7946d6e7e96b8bc1ea5ea30c8024ef13028a14513330af4` |
| 24 | `theorem` | [coeff_single_same](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-single-same.md) | 178 | `result-track:c61a1c2643ec887fb046dec65260abec400157bc4da1c2e6340118f0016831a2` |
| 25 | `theorem` | [coeff_single_of_ne](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-single-of-ne.md) | 184 | `result-track:0040c64f8424535fe1eb62b251513c667f734233df8f0be439695a37bce2df89` |
| 26 | `theorem` | [coeff_single](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-single.md) | 190 | `result-track:b48fe8d90944e7f6607ba4cf9bca756ad446d3a64582c130f81de2c289c5ee46` |
| 27 | `theorem` | [support_single_of_ne](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/support-single-of-ne.md) | 196 | `result-track:b93d906d189edf3922d7c0748ecf6f9cb5105a1a8f935495d06c9df56dfc7368` |
| 28 | `theorem` | [support_single_subset](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/support-single-subset.md) | 199 | `result-track:2bd3552e68c7ca1e8f2cde5cddb8562ae305c0826b1f05582cc54141336cbf7d` |
| 29 | `theorem` | [eq_of_mem_support_single](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/eq-of-mem-support-single.md) | 202 | `result-track:f1125e484cd63b57201f9eafba96bb3f394e8d461b95b82452befb688dac1753` |
| 30 | `theorem` | [single_eq_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/single-eq-zero.md) | 205 | `result-track:65428d79b5102e85d98432bad3823c4b29c242862fb32db199f4afca64abe29c` |
| 31 | `theorem` | [single_injective](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/single-injective.md) | 208 | `result-track:8aafa51c443e94b8b3c9fddcc2fe069be1abb2732226bd3fc45661df99c3a368` |
| 32 | `theorem` | [single_ne_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/single-ne-zero.md) | 211 | `result-track:fddfc853bd6ba1fa70ff790a19f66b449af928683986168789f564ea2dc058e9` |
| 33 | `theorem` | [single_eq_zero_iff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/single-eq-zero-iff.md) | 215 | `result-track:8c593ca33d08f5e39006f39f9240f699978ab76c13311fc5ef4c9873f90878a5` |
| 34 | `lemma` | [map_single](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/map-single.md) | 219 | `result-track:93186bd8f429c070a9dd1560ae4dfe2bb8322043b4b93d23876bc238e3477c87` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/instance-source-edition-4.md) | 223 | `declaration-track:ea2ace1d6b8ffdadeec2294b7bf1325688a3ffb0158b3da47899a13193dd2e2e` |
| 36 | `def` | [orderTop](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ordertop.md) | 235 | `declaration-track:229bcccf51e0ca360eca8967163b993a49a1186903d33fed48fc1f161fae03ac` |
| 37 | `theorem` | [orderTop_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ordertop-zero.md) | 239 | `result-track:ee83ea6624b98cac12cbd79fa8fcba18e08c631149a60046dbea305f2563ba0e` |
| 38 | `theorem` | [orderTop_of_Subsingleton](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ordertop-of-subsingleton.md) | 243 | `result-track:78737b3149c3417c5474b8686a2713a45fe7aecbbdae274fbfd557fd0db7ff1b` |
| 39 | `theorem` | [orderTop_of_ne](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ordertop-of-ne.md) | 246 | `result-track:848721bb3067f01a9a5821b5708086cac51e54b3a098a8ed388e285e27668f31` |
| 40 | `theorem` | [ne_zero_iff_orderTop](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ne-zero-iff-ordertop.md) | 251 | `result-track:0944425a1705d6c27472431935090435515074cc240a5fc85c34024df22747fa` |
| 41 | `theorem` | [orderTop_eq_top_iff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ordertop-eq-top-iff.md) | 257 | `result-track:758bcfb9af149a33e0702e545c9d1bea1e916ec25c8474f7dcc048d23945ea12` |
| 42 | `theorem` | [orderTop_eq_of_le](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ordertop-eq-of-le.md) | 263 | `result-track:4bca578b324ccdfd2e4eab1fa404bdd7d4380c3f412eb2f7221aa72ddcb1f94c` |
| 43 | `theorem` | [untop_orderTop_of_ne_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/untop-ordertop-of-ne-zero.md) | 268 | `result-track:1a0333851e49232aac9f6e6ca821c4700f48ca8b5cb62ba7a32f24b180346738` |
| 44 | `theorem` | [coeff_orderTop_ne](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-ordertop-ne.md) | 274 | `result-track:e68637514ec640c6b40e91ab4c3a5c8addb809b008e49d916f995b5896d3ae8e` |
| 45 | `theorem` | [orderTop_le_of_coeff_ne_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ordertop-le-of-coeff-ne-zero.md) | 282 | `result-track:a01d72bd7878d9f93e6ed69fc0f43f88389102db99b861ba5937c92e79bb9a11` |
| 46 | `theorem` | [orderTop_single](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ordertop-single.md) | 288 | `result-track:4685d19677cc23d7cb6e8da10d764778c9ba37f9ecd0047d9b2aa28cac6f6904` |
| 47 | `theorem` | [orderTop_single_le](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ordertop-single-le.md) | 293 | `result-track:d4a2ec2a5d5ed310b1fdda6c616e405ccb359b6ba92a9ad2615423689e629703` |
| 48 | `theorem` | [lt_orderTop_single](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/lt-ordertop-single.md) | 298 | `result-track:b589df2691e96b3f370d897f6e1abbd12ef0d0b792e107eda6560da902155367` |
| 49 | `theorem` | [coeff_eq_zero_of_lt_orderTop](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-eq-zero-of-lt-ordertop.md) | 301 | `result-track:f840edfdd60e089eb3942ade241a954ead31ef7e94f36b993d1d2fe29de5bb3b` |
| 50 | `def` | [leadingCoeff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/leadingcoeff.md) | 313 | `declaration-track:4827023052a6e5f668f213067e38d1b6fa224254f0238f40e66eb2653ffcd9ac` |
| 51 | `theorem` | [leadingCoeff_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/leadingcoeff-zero.md) | 317 | `result-track:6018c31dcac89b7288d4527d7c9c24b21fc1b810cd264f4238fcd2ccb241354d` |
| 52 | `theorem` | [leadingCoeff_of_ne](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/leadingcoeff-of-ne.md) | 320 | `result-track:14bb6b8fd4fbe8922374d37db81a93c112a241af39e89cb0526074f3128e8625` |
| 53 | `theorem` | [leadingCoeff_eq_iff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/leadingcoeff-eq-iff.md) | 324 | `result-track:72ed865bd01162d41a9740559d5279fdba11c1432b5459042fb642de1f46c520` |
| 54 | `theorem` | [leadingCoeff_ne_iff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/leadingcoeff-ne-iff.md) | 329 | `result-track:a7e04499a6c171c5fcc23e874f69b56c496ced890a71cb9800db378125f813ae` |
| 55 | `theorem` | [leadingCoeff_of_single](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/leadingcoeff-of-single.md) | 332 | `result-track:addd549714fa2c1d70cf5ab0d279e90fc77aa4853a7409621371a600d6525dd6` |
| 56 | `def` | [order](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/order.md) | 341 | `declaration-track:a1b472927b4e245befcbaafde472d70cc3212efcd8fa42a7a9f93aeb1ba122b3` |
| 57 | `theorem` | [order_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/order-zero.md) | 345 | `result-track:06589cc350bae145f28266c43f53f763e4878ae6e027c0af387188b08aef8218` |
| 58 | `theorem` | [order_of_ne](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/order-of-ne.md) | 348 | `result-track:da2984e7f28a5118ffdf0572911fbd2b982d014cf6407e1c676edcfd3d36ebbd` |
| 59 | `theorem` | [order_eq_orderTop_of_ne](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/order-eq-ordertop-of-ne.md) | 352 | `result-track:3f67729ac0c959013a753e1103bf06964e1dfc4ec592df431d4392c7d51de499` |
| 60 | `theorem` | [coeff_order_ne_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-order-ne-zero.md) | 355 | `result-track:5bbfe39f828266c25150b41774474a51c21197716c6f6643b7cba73f88edac04` |
| 61 | `theorem` | [order_le_of_coeff_ne_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/order-le-of-coeff-ne-zero.md) | 359 | `result-track:480f427fea758b3ed9518383236943cbef2f9fa2bf287ecf2d9a329f1e0f5748` |
| 62 | `theorem` | [order_single](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/order-single.md) | 365 | `result-track:0ebb94a1d3b31923c2c3c9ef8eb1055d908c093b14aba87b10977a6c2645f1c9` |
| 63 | `theorem` | [coeff_eq_zero_of_lt_order](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/coeff-eq-zero-of-lt-order.md) | 370 | `result-track:7d8b327e7eef3b0cdafe91ce685c890ad988e43d4e488107372f9c31a613e110` |
| 64 | `theorem` | [zero_lt_orderTop_iff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/zero-lt-ordertop-iff.md) | 379 | `result-track:e7241a63e446a6cd92855d0e4139ad3e717ddba0397bc75a31b2ec38f097ec37` |
| 65 | `theorem` | [zero_lt_orderTop_of_order](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/zero-lt-ordertop-of-order.md) | 383 | `result-track:f7c1c2058c60712f5c09ee14c49d9cc305cb225bbdf221df00314e5af1cf9298` |
| 66 | `theorem` | [zero_le_orderTop_iff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/zero-le-ordertop-iff.md) | 388 | `result-track:e78f5c5dd00f8b9f8d97502b01eeca00ee4fa188229253e0f4903eb04227e036` |
| 67 | `theorem` | [leadingCoeff_eq](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/leadingcoeff-eq.md) | 393 | `result-track:0e3d81ead292a1492ea70f48ec2b592e50feab722e1d85ec53259c42b1fbbfcf` |
| 68 | `def` | [embDomain](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/embdomain.md) | 406 | `declaration-track:84d2d19c83aa8d0398aac225d6ca73cd88e220493f97cdce9c37ed080bb82348` |
| 69 | `theorem` | [embDomain_coeff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/embdomain-coeff.md) | 414 | `result-track:4d3111be1f557f720518533e17d6715dc7385cd432e457528543ba2adc62455e` |
| 70 | `theorem` | [embDomain_mk_coeff](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/embdomain-mk-coeff.md) | 427 | `result-track:f2f9d9e7c6a088c65b3c699ca7e7cafdbbeebf2c46f4cbc02efcfe52600d062d` |
| 71 | `theorem` | [embDomain_notin_image_support](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/embdomain-notin-image-support.md) | 432 | `result-track:d7177e497bec041aa83852d8931396b2dba5a914f1ebd0210929be91f6fc59df` |
| 72 | `theorem` | [support_embDomain_subset](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/support-embdomain-subset.md) | 436 | `result-track:d30ad6a0e84c28ad39fdb519af43f1e7d7904ab8abd3d9e75b029a5237e08ac3` |
| 73 | `theorem` | [embDomain_notin_range](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/embdomain-notin-range.md) | 442 | `result-track:d534912a787ba6374bc3f4348cb5e111cd5fe5fefa1e6504e38102a99c7a360b` |
| 74 | `theorem` | [embDomain_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/embdomain-zero.md) | 447 | `result-track:cdd9925ad388eccf478f16f7b6313b7576da22e2182450dc79d59a57830030f1` |
| 75 | `theorem` | [embDomain_single](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/embdomain-single.md) | 452 | `result-track:1c602bbf98b47e1e04c4a1473956447ef5b8bf9e79eec04b02c7b6b49be03cab` |
| 76 | `theorem` | [embDomain_injective](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/embdomain-injective.md) | 462 | `result-track:53052b847ab99657ea66069f2a73c0c74b34f679fb06a1910c7389778f9c54f5` |
| 77 | `theorem` | [forallLTEqZero_supp_BddBelow](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/foralllteqzero-supp-bddbelow.md) | 477 | `result-track:8f2e856a2439054fcf687835a47ad8362223119dc2212f3327d343f8e0c42898` |
| 78 | `theorem` | [BddBelow_zero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/bddbelow-zero.md) | 485 | `result-track:3822c1e195976203554ccea51be4c5b2b97383fb91eb5d3bd029b1e149150f5b` |
| 79 | `theorem` | [suppBddBelow_supp_PWO](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/suppbddbelow-supp-pwo.md) | 490 | `result-track:37536f16542763ecae70435d85aa1a27597bfc336eef3bf59bdf264e40648815` |
| 80 | `def` | [ofSuppBddBelow](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/ofsuppbddbelow.md) | 496 | `declaration-track:3b8e6b38d1b915e67bdfaffa7c926e4a63936910f8aa810fe20359ab4879cf27` |
| 81 | `theorem` | [zero_ofSuppBddBelow](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/zero-ofsuppbddbelow.md) | 501 | `result-track:884c1a846ef4518eb24ef180d537fd0ed2f3a88b372fb16c7f3a4d7d725842d2` |
| 82 | `theorem` | [order_ofForallLtEqZero](../../../../CommutativeAlgebra/HahnSeriesBasic.lean/declarations/order-offoralllteqzero.md) | 504 | `result-track:dd0349ac2b34cf990610cf87a990db1d1190df36af36bdb16e851137b97e516f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab85bfc2ff15290ac55100fc12418a994779fa2d18b06d68e93758136253750d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb6aefdec6699efbea747212c2183a205e68d160b712a3c3ad7275ef4e2f24fa1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
