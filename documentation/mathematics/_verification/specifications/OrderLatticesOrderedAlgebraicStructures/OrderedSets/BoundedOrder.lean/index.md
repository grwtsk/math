# Verification target: Bounded Order

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b28621dcebb2f345075f91725b81723edd88a9e2",
  "lexical_observation_count": 160,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundedOrder/Variantd870c993783c74a6c2800b2321e0cd58cbc91f5adb7da6136f0875ee9cbbd4b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b28621dcebb2f345075f91725b81723edd88a9e2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundedOrder/Variantd870c993783c74a6c2800b2321e0cd58cbc91f5adb7da6136f0875ee9cbbd4b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundedOrder/Variantd870c993783c74a6c2800b2321e0cd58cbc91f5adb7da6136f0875ee9cbbd4b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Option.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ULift` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-source-edition-2.md) | 45 | `declaration-track:b79ceda0a3dae042443f999d7072f1ced7d3fc68fc9d7374e5433612072680cf` |
| 2 | `class` | [Bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot.md) | 52 | `declaration-track:1e9b6d987aaa2fda1b4cc9adcacfd6bc2fab063790c96eb10682c4c6d489735f` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/instance-source-edition-6.md) | 63 | `declaration-track:cfaf734dcb4703ee776a5a6ab8309dd8962e5265cd2618a8b0588b3129129113` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/instance-source-edition-3.md) | 67 | `declaration-track:8c1da8996012a553fa168b146453fdc9029242761ea06ea3c046e8971f899a3a` |
| 5 | `class` | [OrderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ordertop-source-edition-2.md) | 75 | `declaration-track:23557b3d000216f0c5a1be4d3a2bdf8802821b2b9634880847afe27e16711e04` |
| 6 | `def` | [topOrderOrNoTopOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/toporderornotoporder.md) | 84 | `declaration-track:a90bb76979cf4d4fd2cc445df96ec0c207733769aa633b76821cfc76b4284281` |
| 7 | `theorem` | [le_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/le-top.md) | 97 | `result-track:a0da6c5c59d30c02379300de9444be8347f52a962ef0ccc247e74e3ad18479ff` |
| 8 | `theorem` | [isTop_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/istop-top.md) | 102 | `result-track:22e1803134b04e4fa0dcdf271d9d1dab0a6e44386487331a88b2202bcb8c0d1e` |
| 9 | `theorem` | [isMax_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ismax-top.md) | 112 | `result-track:a961dbad531d2116a37d86da1ed077ed381f1c552f6e0380367faa04d67b2085` |
| 10 | `theorem` | [not_top_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-top-lt.md) | 117 | `result-track:b8627f848d7d1c085a7e50b154e27dc6c48166aec22e1620e27ab65f03dab13c` |
| 11 | `theorem` | [ne_top_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ne-top-of-lt.md) | 121 | `result-track:71a4aada1fb880bcc8b12922c317f1e0559ba2899c689b617f67d376001e9927` |
| 12 | `theorem` | [isMax_iff_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ismax-iff-eq-top.md) | 132 | `result-track:a986bbdc227fdff399bc802d0d840a39ba8cc5a5f02938983221824ebfb831e8` |
| 13 | `theorem` | [isTop_iff_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/istop-iff-eq-top.md) | 137 | `result-track:0ea0f5ec693a85c3bd5aa8e977908101b7a754ee783347f2c63971be938b2f2e` |
| 14 | `theorem` | [not_isMax_iff_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-ismax-iff-ne-top.md) | 141 | `result-track:0b642e4484e2b4b7260f4d1af83660e3b7d926ea0378b354fcc6ec97dcd86f02` |
| 15 | `theorem` | [not_isTop_iff_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-istop-iff-ne-top.md) | 145 | `result-track:fad39f7707f6c0f6b202ff20cc3b4480e52546325b95261b63281a438f3ca9bc` |
| 16 | `theorem` | [top_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-le-iff.md) | 156 | `result-track:1bf754275f6b58b822e99f4145cc2ed572a83f140e3edd52c273cac058791279` |
| 17 | `theorem` | [top_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-unique.md) | 160 | `result-track:c9a874a4aecae9de82cb60bdff1afc005b01c459077452c40017e33bc36b16d6` |
| 18 | `theorem` | [eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/eq-top-iff.md) | 164 | `result-track:4efa88e2b80bbcddfdb80d4fa987dc90c22b9da5e8019d87a2ee16fc486127f7` |
| 19 | `theorem` | [eq_top_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/eq-top-mono.md) | 168 | `result-track:96cc66b2228637484d56cb6161a11f100092d59921e5fd52c4c9a32eb93b42d6` |
| 20 | `theorem` | [lt_top_iff_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/lt-top-iff-ne-top.md) | 172 | `result-track:c37499baa065cdfb4a34a60625ef44952ffa47cf482cd1a2716d8137d5acffb9` |
| 21 | `theorem` | [not_lt_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-lt-top-iff.md) | 177 | `result-track:4543d517c1d104f7baa77e2970f344d26fc078b1926c9afb05e29da07d6f0a88` |
| 22 | `theorem` | [eq_top_or_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/eq-top-or-lt-top.md) | 181 | `result-track:16b7e62230b2eb259fb68eac2d91effa207ccbcc8917acb5d560f472fabf561c` |
| 23 | `theorem` | [Ne.lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ne-lt-top-source-edition-2.md) | 185 | `result-track:dcfedd2b6b6893ee8a55f3a882a45738cb5f22b33d4695e6e7fe49a7fec9e02e` |
| 24 | `theorem` | [Ne.lt_top'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ne-lt-top.md) | 189 | `result-track:b8c82bd4662b9d42e9a6021130633e5568948b5416b12f86d8fdb63699cccf28` |
| 25 | `theorem` | [ne_top_of_le_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ne-top-of-le-ne-top.md) | 193 | `result-track:584cdc5485f21e8e892a2b351afef9a367cfca7cfb1e41b0afa6839bf0b13205` |
| 26 | `theorem` | [StrictMono.apply_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/strictmono-apply-eq-top-iff.md) | 197 | `result-track:caa72fbe9d6b3c3463f96707fc889f13b62d98733d5ddf970432a315178ac3f0` |
| 27 | `theorem` | [StrictAnti.apply_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/strictanti-apply-eq-top-iff.md) | 201 | `result-track:3425c5b4cfc75fadfe06fc107a253f856236f528c9e1ef3ec1ea9e636e84dcaa` |
| 28 | `theorem` | [not_isMin_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-ismin-top.md) | 207 | `result-track:1bdb4c6ffa1cffc711a04eaf5cd172120977fb21f44cbe5efc3fa0fb938ad3d8` |
| 29 | `theorem` | [StrictMono.maximal_preimage_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/strictmono-maximal-preimage-top.md) | 214 | `result-track:351437c7a32e3a7a1aed2adb918e4a0e3d6dc24622439039bd6eb5576a91bc50` |
| 30 | `theorem` | [OrderTop.ext_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ordertop-ext-top.md) | 223 | `result-track:3e53a7227778a5af7c549d92f9a4aa9dbdcb702c79bd7441d87b4b86b84852ba` |
| 31 | `theorem` | [OrderTop.ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ordertop-ext.md) | 231 | `result-track:703cd8cd7ed03b01919aef8af2efc7cb7cbf3b2d4aa9de7495c0411eb68839e8` |
| 32 | `class` | [OrderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/orderbot.md) | 241 | `declaration-track:11050d49d0718d1c25feb5354f6d5ba8880461730cb1982fc90688932ae7a14e` |
| 33 | `def` | [botOrderOrNoBotOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/botorderornobotorder.md) | 250 | `declaration-track:685c48cc9203b37531ce33d177326a4c13d25d2c618ffcdf1cdcd414ebed953b` |
| 34 | `theorem` | [bot_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-le.md) | 263 | `result-track:e54ee1be8eb655916cb3304d6201c403e0fe8baa3c7e07fe92be8162fb882716` |
| 35 | `theorem` | [isBot_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/isbot-bot.md) | 268 | `result-track:0bc5bd887106dfb3ad6730da650401c9143c5dc1f6fda0fc65c9daa9e0e85ead` |
| 36 | `instance` | [top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-source-edition-3.md) | 277 | `declaration-track:ebbf755822ffe3a8813e98726ada2c16878fde1508a113dceebd032fcf5a1c09` |
| 37 | `instance` | [bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-source-edition-3.md) | 280 | `declaration-track:d2a6edbd41cee4e5536f14aea2eecef74465c03fbe3e1664a9c95b0111150e5c` |
| 38 | `instance` | [orderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ordertop-source-edition-3.md) | 283 | `declaration-track:7f94489fbe1028a983516be5eaa1a0a512cec039d5c1e92e224a07d5dbba56e6` |
| 39 | `instance` | [orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/orderbot-source-edition-2.md) | 287 | `declaration-track:4adab6ca873e375aeebd1471f4c71e293b7478c81d2152a8e6cbe3d88f9f78ce` |
| 40 | `theorem` | [ofDual_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ofdual-bot.md) | 292 | `result-track:c24a447b814cc8e3f9660882a9c73da73c15b9923ac20aa7afce7898a04a9705` |
| 41 | `theorem` | [ofDual_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ofdual-top.md) | 297 | `result-track:bc1ce7cd72c601093299cf46c2e641f5588d30874e59c160ceb085ab14039988` |
| 42 | `theorem` | [toDual_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/todual-bot.md) | 302 | `result-track:2c4fbbe1061f2093602269796b2008439632f3eb51b6dad0bd4d0c824b9c0908` |
| 43 | `theorem` | [toDual_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/todual-top.md) | 307 | `result-track:e04f82dfeb9aab5644317a59d0d664797867ef627575da50b3be8dacf7655a68` |
| 44 | `theorem` | [isMin_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ismin-bot.md) | 318 | `result-track:8db9ed92e12254062f1a712c3edd4423405af7b7f27ffe02e8ffaf410069eed4` |
| 45 | `theorem` | [not_lt_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-lt-bot.md) | 323 | `result-track:281cbe8c963f99a869af49f8e1bcbc8b55bb35746abd61702bb983dd937f68a7` |
| 46 | `theorem` | [ne_bot_of_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ne-bot-of-gt.md) | 327 | `result-track:e0ad94562ceff23bfee00db764aef40180bef575dab32a6c8d8287c63e384318` |
| 47 | `theorem` | [isMin_iff_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ismin-iff-eq-bot.md) | 338 | `result-track:f3f44cf6fd9c9a3dffa8ef3e68ad11e5c1ed1504f1d20b5b2e877a0df159db6d` |
| 48 | `theorem` | [isBot_iff_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/isbot-iff-eq-bot.md) | 343 | `result-track:886aa62a72635541d2864219c0fc1eeb07164f1549297f119ea0e65cccbfc6f4` |
| 49 | `theorem` | [not_isMin_iff_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-ismin-iff-ne-bot.md) | 347 | `result-track:317c21ce4187595bf99e686e37f2ff5cced00c417675e45d3feebec43d25f0aa` |
| 50 | `theorem` | [not_isBot_iff_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-isbot-iff-ne-bot.md) | 351 | `result-track:c8a5266d8630727f5aee358a8156080c758e73cc94d7445cc6e4f2bdfd9cbc16` |
| 51 | `theorem` | [le_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/le-bot-iff.md) | 362 | `result-track:3642b2579a11e94e38feb784f0600b5e523fa315908132eec7486f2490469173` |
| 52 | `theorem` | [bot_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-unique.md) | 366 | `result-track:068520d7d04561851ac8f61091c7b9c21ac2e030c8d3834da12a3ca4ff6bc2df` |
| 53 | `theorem` | [eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/eq-bot-iff.md) | 370 | `result-track:0e7392bfe4452055f6432f00fa3630bf53c9a53c57fdbd5e9a85f21e0b521d75` |
| 54 | `theorem` | [eq_bot_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/eq-bot-mono.md) | 374 | `result-track:baef57ac818d6d0586873294e32a146254737d593ce26b7095042a269fd064ab` |
| 55 | `theorem` | [bot_lt_iff_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-lt-iff-ne-bot.md) | 378 | `result-track:4448b397d32e96ac379c3df80af3198961e993a5039e3cfeaef4dbd5d17deb7a` |
| 56 | `theorem` | [not_bot_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-bot-lt-iff.md) | 383 | `result-track:5169e2617efa7b1e47e43ca37344250476afacfc148d0ec2e70386f9e2ff7d27` |
| 57 | `theorem` | [eq_bot_or_bot_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/eq-bot-or-bot-lt.md) | 387 | `result-track:fb3c875504a4233ad2bf881a8cb01eec2f3f1d9ec1fc4c89f74131c7bf50155e` |
| 58 | `theorem` | [eq_bot_of_minimal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/eq-bot-of-minimal.md) | 391 | `result-track:02beeaabbd7c0788c2d91371070c82691fdce5d29d01eaf78e324a265e819dfc` |
| 59 | `theorem` | [Ne.bot_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ne-bot-lt-source-edition-2.md) | 395 | `result-track:d9afcdcde2d81d096d29b9be69aaf00f0b93fdf5cde9ef67923a60084398d3dc` |
| 60 | `theorem` | [Ne.bot_lt'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ne-bot-lt.md) | 399 | `result-track:593c3587c8d73623076e2fb98f30e12de6f48a97fc1c5b8e7d3b3d221fcf9116` |
| 61 | `theorem` | [ne_bot_of_le_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ne-bot-of-le-ne-bot.md) | 403 | `result-track:1c52af6da0bc009af83fe3609a005ece9a8b84dfe2d72d370cebebf83e208b42` |
| 62 | `theorem` | [StrictMono.apply_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/strictmono-apply-eq-bot-iff.md) | 407 | `result-track:b6acef84932c0190bbac5621bdaf5c01458441ff10e47b68cb81743e2056f9db` |
| 63 | `theorem` | [StrictAnti.apply_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/strictanti-apply-eq-bot-iff.md) | 411 | `result-track:c9c11ccbcc68320c5d56f51f83aedd906f6b086e8d1e9a30b9d0084200f5774a` |
| 64 | `theorem` | [not_isMax_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/not-ismax-bot.md) | 417 | `result-track:bc1a76355c6a7a914f2ed90fd75e50c9251c56c3883e3b0f7a0df7a022ce34c7` |
| 65 | `theorem` | [StrictMono.minimal_preimage_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/strictmono-minimal-preimage-bot.md) | 423 | `result-track:de7844eb60bcd8bb75c47a994b9f0231ca506566c2277649eafd5c190544035b` |
| 66 | `theorem` | [OrderBot.ext_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/orderbot-ext-bot.md) | 432 | `result-track:62a5f48a07ff36363ad669f5697104a72f325a329c4329b7eec0c09e7917abf8` |
| 67 | `theorem` | [OrderBot.ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/orderbot-ext.md) | 440 | `result-track:63c8df977aa79e3a348d688093fdd285fe10b40426051d5f579ce783d19d002f` |
| 68 | `theorem` | [top_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-sup-eq.md) | 453 | `result-track:36ac92e707d644e0d51bde376f95f16fa927b011d2fe21143ce52b418d0b6613` |
| 69 | `theorem` | [sup_top_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/sup-top-eq.md) | 458 | `result-track:44dd758075a7347ac2a3de0584777eec34b0af320bed0f70f26a91d815851e7b` |
| 70 | `theorem` | [bot_sup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-sup-eq.md) | 469 | `result-track:e8976289c16b83d0cec829eaaf4774ee6adc581324140a5ec70e8ba291f7780d` |
| 71 | `theorem` | [sup_bot_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/sup-bot-eq.md) | 474 | `result-track:92d973ed3adb9692a16cf57a03ef963b7b0f196aba5a2c8a601e067688d41643` |
| 72 | `theorem` | [sup_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/sup-eq-bot-iff.md) | 479 | `result-track:e372615c06f246dbdc106917cc54773adc82f183e634e31e4c5f3a32163ebc5c` |
| 73 | `theorem` | [top_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-inf-eq.md) | 489 | `result-track:f80048012532eb25505ccefbc3a05189d31358498b81820f8499af09d49cbfb9` |
| 74 | `theorem` | [inf_top_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/inf-top-eq.md) | 494 | `result-track:3937b726b708683a335b5daa1237888d00936e907812b8144b0a5ab8269aed0b` |
| 75 | `theorem` | [inf_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/inf-eq-top-iff.md) | 499 | `result-track:7c56cdc5687b6b443283d2d83469d507b5691cf4cd40d250f36ea236bd56a537` |
| 76 | `theorem` | [bot_inf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-inf-eq.md) | 510 | `result-track:0c8c3fad660570b3dadcb7d165944af522e98868913a6f8647f52998677f89f9` |
| 77 | `theorem` | [inf_bot_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/inf-bot-eq.md) | 515 | `result-track:6d37f0c903d5b0b40c201d0a086ef99d8746459f34cfb1550ab4924df35ef107` |
| 78 | `class` | [BoundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/boundedorder-source-edition-3.md) | 526 | `declaration-track:d2fb6ac1f59169f147e4d19d9ca66c67740636e6fc4c68630249bff9559bdf46` |
| 79 | `instance` | [OrderDual.boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/orderdual-boundedorder.md) | 529 | `declaration-track:2d294481c0046bbbdd6267628a155bc4eea53298d2b7976eb933b0e58b1248df` |
| 80 | `theorem` | [BoundedOrder.ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/boundedorder-ext.md) | 533 | `result-track:bb6138efa6f646118249042394fbbac8fbc07b90e3786cad6f985e3e244cbdc0` |
| 81 | `theorem` | [monotone_and](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/monotone-and.md) | 552 | `result-track:6f9c8fc86bd1397767d826b502aeee83c5b09c6d1da97045fcd480e512734f59` |
| 82 | `theorem` | [monotone_or](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/monotone-or.md) | 558 | `result-track:979702135bb4a21d9326c466aaac4b94806d4eb9ae1d2eace1851074f3e75ed4` |
| 83 | `theorem` | [monotone_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/monotone-le.md) | 563 | `result-track:c8943aca14056b270b9cf1c42f585142622f5fa969439bbb03160b40c33c9dd9` |
| 84 | `theorem` | [monotone_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/monotone-lt.md) | 566 | `result-track:f2e8004776db8bdb0b8da8aadb2019269117ec7508c1bea66ebb9d9f728c7679` |
| 85 | `theorem` | [antitone_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/antitone-le.md) | 569 | `result-track:ff1d2f0083ece4ae47e7ac9ac40b8d489d2b16c2bb4668377304a32963dfc447` |
| 86 | `theorem` | [antitone_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/antitone-lt.md) | 572 | `result-track:723d8d630dd2fd7b2199595c6fbdbbd56ec741f6812f62965f039c540ed36340` |
| 87 | `theorem` | [Monotone.forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/monotone-forall.md) | 575 | `result-track:69d7bde572be7342ed6c69ae02714d641a7fa9df7ec3a9a4f0fce63f0469dfc1` |
| 88 | `theorem` | [Antitone.forall](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/antitone-forall.md) | 580 | `result-track:296c270aa241404bfbd4a2e92b08069371d0f645f9d30b36c6f031dfff633730` |
| 89 | `theorem` | [Monotone.ball](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/monotone-ball.md) | 585 | `result-track:406449a626a948e6493d8d69ca8411cd5ccf253cb7f81920085e08b797a305c3` |
| 90 | `theorem` | [Antitone.ball](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/antitone-ball.md) | 589 | `result-track:d56063588037a158d3316d8c9f2c0a41edb37ed722438f7dc1cbec4192ed8fd8` |
| 91 | `theorem` | [Monotone.exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/monotone-exists.md) | 593 | `result-track:edbb4d8d9b96c8ff492ed486757ca5c721c6239b4f9e3b7802f4910d47c8e5da` |
| 92 | `theorem` | [Antitone.exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/antitone-exists.md) | 597 | `result-track:56541babcf05faa5a561234d8d65cc77b6324f503b231fe5d36f19eba275e1a0` |
| 93 | `theorem` | [forall_ge_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/forall-ge-iff.md) | 601 | `result-track:4061c57fa3c978747b3676347aa503a50a2dfcd9ca87c81abf5722e513992bc1` |
| 94 | `theorem` | [forall_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/forall-le-iff.md) | 605 | `result-track:b2125fe49aa459f58fb85782d4d196cf1de24b37bbb60403958896e6015ed582` |
| 95 | `theorem` | [exists_ge_and_iff_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/exists-ge-and-iff-exists.md) | 615 | `result-track:ee6eaf091db856dca42eee39a83ccc5a2cd43142193957a9bc254c410860a8d5` |
| 96 | `theorem` | [exists_le_and_iff_exists](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/exists-le-and-iff-exists.md) | 626 | `result-track:db2395b750cefaf3b17d39e2fd4e17505f265b2bc2a4ea91054122986a4bb0fd` |
| 97 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/instance-source-edition-2.md) | 642 | `declaration-track:424ff2875a7e97aa18ea3929bb04f2cb4a05d82b6d4887284b7170e9c8aa38b1` |
| 98 | `theorem` | [bot_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-apply.md) | 646 | `result-track:7f3c3a8df240a1fd7a097578ca696df10336ef0c252ee29180750e27dfb62311` |
| 99 | `theorem` | [bot_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-def.md) | 650 | `result-track:fad4fcf27f10855eb4cfc2321f2a6374b63d041a0667a4c5fc0ed980eeaf52c2` |
| 100 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/instance-source-edition-8.md) | 654 | `declaration-track:dfa9c056697408f91b6f1456adb8912d77368d6c54f7a93e6f5961c0a6e27145` |
| 101 | `theorem` | [top_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-apply.md) | 658 | `result-track:7c47699d2325478231223e5ced3643937487c738d6005ee2ef721196c519d093` |
| 102 | `theorem` | [top_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-def.md) | 662 | `result-track:dd4a5c5409feec1f5c330c7e3c10fb807bfff40c985bb05dbb938ca81bfb4852` |
| 103 | `instance` | [orderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ordertop.md) | 666 | `declaration-track:1d4cbbccd9f8e8821ef84c8ab802ce25be037dbb64caaf40d25f256e8897b33c` |
| 104 | `instance` | [orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/orderbot-source-edition-4.md) | 669 | `declaration-track:e2f2c0ba63f629df42d190d0173d861eb4a6691c7214a0a9b187c823c033821f` |
| 105 | `instance` | [boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/boundedorder-source-edition-4.md) | 672 | `declaration-track:f23b6bc8bea0150834d0ec6ec8ea72d13ce008b0e0bf207314039d1b0f90d927` |
| 106 | `theorem` | [eq_bot_of_bot_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/eq-bot-of-bot-eq-top.md) | 682 | `result-track:d6d74e93ee85717c8b974a661346fc245998a4ed8282e06e0c37216858abda66` |
| 107 | `theorem` | [eq_top_of_bot_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/eq-top-of-bot-eq-top.md) | 686 | `result-track:e4354321d4c6c4d93de03c806736f828c66638e0e426590824366f5e3308bed9` |
| 108 | `theorem` | [subsingleton_of_top_le_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/subsingleton-of-top-le-bot.md) | 690 | `result-track:ef07d317d5f4eb500ee3490ee1a450f6cafbb0658f633de91b5d1868e26fefef` |
| 109 | `theorem` | [subsingleton_of_bot_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/subsingleton-of-bot-eq-top.md) | 695 | `result-track:8e9569e9432e216223f36012d9c07d09d19ac6277c392434f894071077cea288` |
| 110 | `theorem` | [subsingleton_iff_bot_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/subsingleton-iff-bot-eq-top.md) | 699 | `result-track:bf074168f8594efd9f338c24f709a6a85865f05f9bdf1c9495c506afa866bf86` |
| 111 | `def` | [OrderTop.lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ordertop-lift.md) | 710 | `declaration-track:4b733a322adb4d961019906b1e2575352b3560d109208a0b0540815b16baf50f` |
| 112 | `def` | [OrderBot.lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/orderbot-lift.md) | 722 | `declaration-track:2d6a3360c271f1a0bf8d6fa22ecb38137bdc06f4257023707f04152608ea84a0` |
| 113 | `def` | [BoundedOrder.lift](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/boundedorder-lift.md) | 734 | `declaration-track:a85dea8c94e3e11e389fbd3d32454b51db9a3bf34636f2470b86a5b3bbf92f43` |
| 114 | `def` | [orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/orderbot-source-edition-3.md) | 751 | `declaration-track:adf1b7ca76ae961a4801af59cd8853231c01c3796e42b1b676c5a3d56fcf9414` |
| 115 | `def` | [orderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ordertop-source-edition-4.md) | 759 | `declaration-track:bc40c51bc351de1661de9288c925d21a6aa581922d68d536dcfc4f093f5decf7` |
| 116 | `def` | [boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/boundedorder-source-edition-2.md) | 767 | `declaration-track:4fe0bbbdbf992e251648feb9558fb0dfa578be44effa4f84d8f505c922f73d8b` |
| 117 | `theorem` | [mk_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/mk-bot.md) | 775 | `result-track:b88e10116bfeb7b81c2521cbeefba249d13ca9e9cf4c9f454fe22a60332a331b` |
| 118 | `theorem` | [mk_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/mk-top.md) | 780 | `result-track:eec3968770fec1f800cf02d3a26d0682b24eaeb37ac4dd64be342014ebf1d7c0` |
| 119 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/coe-bot.md) | 784 | `result-track:ef1b490de9c8064e6ced1661f20ff92250748ddf1496ae0956b6073eb35237d0` |
| 120 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/coe-top.md) | 788 | `result-track:fb42f238a541132167210e5897791069018613960323ce613081bd135c2c8697` |
| 121 | `theorem` | [coe_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/coe-eq-bot-iff.md) | 793 | `result-track:2c0d7d889c038992e5446d51a345b7cede58cf36dd135c106dc5fc2bb7570dd6` |
| 122 | `theorem` | [coe_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/coe-eq-top-iff.md) | 799 | `result-track:b5361c236519ee3426fc44e04d99e0d765ad6f581bf5b154b6f726ded8e2ae8a` |
| 123 | `theorem` | [mk_eq_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/mk-eq-bot-iff.md) | 805 | `result-track:15c509c832d8ce5b76fc1fcfe810987d5d97af888cd57300b2179c5d83ff440e` |
| 124 | `theorem` | [mk_eq_top_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/mk-eq-top-iff.md) | 811 | `result-track:7a479ed05cb897f6bf9cbe325f7fb1130e2979eeedb8a8719c5ccdf1dcda6802` |
| 125 | `instance` | [top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top.md) | 822 | `declaration-track:6a045445216a5694a4221fcf0c0f1c8bfe6bedc24c929960d6b7b19abc9dc43b` |
| 126 | `instance` | [bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-source-edition-2.md) | 825 | `declaration-track:8beb8b1d81c76fd4c4ecffc2b7536877ff12dd678011bf29138431e5afb5ab7c` |
| 127 | `theorem` | [fst_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/fst-top.md) | 828 | `result-track:bd267e73291a128d875b8813074142c0d6ee511b0063060589f8267d04e4475c` |
| 128 | `theorem` | [snd_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/snd-top.md) | 829 | `result-track:ef6e9aba413b65d6be25e1c500af4216f363a69148cd277bf1201d2da73275f8` |
| 129 | `theorem` | [fst_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/fst-bot.md) | 830 | `result-track:30a66cada3edfa84368879f1208f3a77484a8695a341d487baa3c4d5333ed1d9` |
| 130 | `theorem` | [snd_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/snd-bot.md) | 831 | `result-track:945301884364aaed66fefb66e9a3baa4f961223aeddb00b8ec1d9eaf14fc59e9` |
| 131 | `instance` | [orderTop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/ordertop-source-edition-5.md) | 833 | `declaration-track:f355d2d92ea65b22f78c499aee6b399ef6aa341c679ebd8c38fa9c6bd69e2136` |
| 132 | `instance` | [orderBot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/orderbot-source-edition-5.md) | 837 | `declaration-track:fab432db467985d577a48f409cb1a37a457dce557c800d587ca81e72b4549760` |
| 133 | `instance` | [boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/boundedorder.md) | 841 | `declaration-track:4f3607cca6baa721949d4cf457a8931c8c7850e0e9c110a2aa2286e885236a2e` |
| 134 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/instance-source-edition-9.md) | 849 | `declaration-track:e94cd59cf830ecf8d382c2c07758bc24a1ed529257f4a16ec7ce6c4b7b294649` |
| 135 | `theorem` | [up_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/up-top.md) | 851 | `result-track:66f3a872d908f948379d3a910b25a04dcae86396f3a0d520f9601bb979fc6f74` |
| 136 | `theorem` | [down_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/down-top.md) | 852 | `result-track:6f2c862d1451cfaf4e4f289cd6f373a911f8a24fd5b0d406ef9f4b7bf7fc9164` |
| 137 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/instance-source-edition-4.md) | 854 | `declaration-track:8f930fa75f3a2a9b3ef38bd6e0562e08d0a62670cc447529d7808db9db931054` |
| 138 | `theorem` | [up_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/up-bot.md) | 856 | `result-track:1c659450cc44f886fa32de4fea10c20b9d6f462e9a32a2f11073a94c19f83aa5` |
| 139 | `theorem` | [down_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/down-bot.md) | 857 | `result-track:91642898d202730a7134bf796358e0e154085df26007df93eb163a7fc28df074` |
| 140 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/instance-source-edition-5.md) | 859 | `declaration-track:c5c01ca8fd0bb6593e62cd65adfa0fdceb90f80e76bad0966579ffcf80f4ee25` |
| 141 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/instance-source-edition-7.md) | 862 | `declaration-track:d12b2185d693fc34e2ce31792c98bf83f0cc3727bb35dd75c3d98c06f8117145` |
| 142 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/instance.md) | 865 | `declaration-track:25143ce3049a49d16acb9054e1e36a013509a3d928514fa1600bec03c1493ca0` |
| 143 | `theorem` | [min_bot_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/min-bot-left.md) | 874 | `result-track:f17b4e002a4dc15cc2db21faa82b58431c8ae8105d15ae39efa1fd7137d3f146` |
| 144 | `theorem` | [max_top_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/max-top-left.md) | 878 | `result-track:fc52e52862c27b685862422dd9aa9adfb87b0938595538f33fb0d77ff6c7f5b1` |
| 145 | `theorem` | [min_top_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/min-top-left.md) | 882 | `result-track:a2598d067bf3940cb586118f447e1f1e2e39d74dca7d6129168e7e334589f63b` |
| 146 | `theorem` | [max_bot_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/max-bot-left.md) | 886 | `result-track:44a1ead62ebb04a3d6f4ac934de5229b86b75f190f04744bf89f89b5e1e4f860` |
| 147 | `theorem` | [min_top_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/min-top-right.md) | 890 | `result-track:744e95570868655fd9892ae4d97b915ee97ff376a7574b52820288f872dabe5f` |
| 148 | `theorem` | [max_bot_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/max-bot-right.md) | 894 | `result-track:44a9bde3504b5b3e96409d76b3b79c39041ed2995fa7c09c59eb1b195ef2d0a3` |
| 149 | `theorem` | [min_bot_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/min-bot-right.md) | 898 | `result-track:29b9677511ddba5f98804d6d2c78793c1411e40b684c5f4ce4f5f837785a0a5c` |
| 150 | `theorem` | [max_top_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/max-top-right.md) | 902 | `result-track:8e7f0d83d7111f311d1111ce134e16dabb9753505013772586017f87b7564599` |
| 151 | `theorem` | [min_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/min-eq-bot.md) | 907 | `result-track:7ee714324aa4fde57d59d5b11f1eb3983f45e5310ef030763e41f67a4455ba9f` |
| 152 | `theorem` | [max_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/max-eq-top.md) | 912 | `result-track:70484ea5d4634cd09b52c091cd4ce8634b64869d3f15d4faf9813ff30e8b1242` |
| 153 | `theorem` | [max_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/max-eq-bot.md) | 917 | `result-track:a19d6e583ce9ec338cfdb4adb127eb378a03cdd17ccbeddc33b16533373aaaad` |
| 154 | `theorem` | [min_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/min-eq-top.md) | 922 | `result-track:95f9e4786e2caac6e1f5b44559adcf8ac89b1c3521bb761c18c6b511363f48b7` |
| 155 | `theorem` | [bot_ne_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-ne-top.md) | 933 | `result-track:3d7cad9669609d07b4a915a889c67c5ef8826d429d8a1d2e135b3d07f3a57ecd` |
| 156 | `theorem` | [top_ne_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-ne-bot.md) | 937 | `result-track:6e15a40b6cda38540b3756c17e5b260f902cd88730988646d3522b2795355d78` |
| 157 | `theorem` | [bot_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-lt-top.md) | 942 | `result-track:5f14c78be2b5c3ff3ef8baee42a0398c3193632c40b7af2cd48d57fa905635db` |
| 158 | `instance` | [Bool.boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bool-boundedorder.md) | 952 | `declaration-track:3217a646fbb0ca7a32986a9477198fc158eb335ca03f3dbdbd83331d86a572ad` |
| 159 | `theorem` | [top_eq_true](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/top-eq-true.md) | 959 | `result-track:82d8c3ac690eefd373a564abd9616ff2b931f8ce83499526ad2d2171205c76ef` |
| 160 | `theorem` | [bot_eq_false](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BoundedOrder.lean/declarations/bot-eq-false.md) | 964 | `result-track:856fb40e47e920ba2ede926fb5313a2eacc2f84ac74e239dec8d19b8b4285e24` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9e815f6240c6795a294d94cfdab9dbe2756927ba7ca3d26d55b31bc34bafe14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundedOrder/Variantd870c993783c74a6c2800b2321e0cd58cbc91f5adb7da6136f0875ee9cbbd4b0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/BoundedOrder/Variantd870c993783c74a6c2800b2321e0cd58cbc91f5adb7da6136f0875ee9cbbd4b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
