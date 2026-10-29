# Verification target: Extended Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1bec06518a80d91a6143d6ee17d3bb9ed16baed",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant2846f04154c57b851884778fe01ae93fccb2adc587748a453dde985021c004ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1bec06518a80d91a6143d6ee17d3bb9ed16baed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant2846f04154c57b851884778fe01ae93fccb2adc587748a453dde985021c004ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant2846f04154c57b851884778fe01ae93fccb2adc587748a453dde985021c004ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Basic.ENNReal.Operations` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor.md) | 58 | `declaration-track:1dbcfa172e6200e1f3bddd5ec70543ed5f470e233406d307b2bc6fe284110495` |
| 2 | `def` | [ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil.md) | 63 | `declaration-track:62e1102086299d6ea6ac74cdcb20c742f678288524e71fc7a8406926ba0a37fa` |
| 3 | `lemma` | [floor_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-top.md) | 70 | `result-track:90bc1feb4baa2cb21f0622db92418da1ceea700c632acb3373631ed2fc6a9443` |
| 4 | `lemma` | [ceil_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-top.md) | 72 | `result-track:227beeeadf7717c445f2db5c2e29cd3fb288cdb462706895ba46171e9deae6a8` |
| 5 | `lemma` | [floor_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-coe.md) | 74 | `result-track:1e02816f6d8b15b14b994dda238339242f406250fe32ff2b5d8aa82e18fd0d04` |
| 6 | `lemma` | [ceil_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-coe.md) | 76 | `result-track:0bc617a12d7d87a1a63535f6aa710e77be33168c110683ab1193f2b13d346123` |
| 7 | `lemma` | [floor_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-eq-top.md) | 78 | `result-track:167992c698538fd47f4e83d0e5dce16bbb10806d830702c78eac3d805840c64f` |
| 8 | `lemma` | [ceil_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-eq-top.md) | 80 | `result-track:7d24d52f56fd44f0f054a945860d94be3d287bb5a214157405a6cac442125d19` |
| 9 | `lemma` | [floor_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-lt-top.md) | 82 | `result-track:c0dc97266bbd97e44cfbf0b419fbc73a68247a9c24492937ba3b4db22fdb96b8` |
| 10 | `lemma` | [ceil_lt_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-lt-top.md) | 84 | `result-track:29fe534d9e0bfa69913336906fbf86e1efe853bb284cf87793df28fcf56be454` |
| 11 | `lemma` | [le_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/le-floor.md) | 86 | `result-track:b2040186d30f56e1bb4b54334e699db04adda404ad7a01d43dc1cd9df7476d11` |
| 12 | `lemma` | [ceil_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-le.md) | 88 | `result-track:356bd44873fae70f4fca93f51fdaa9fbe9f14904cba0ee072716d8e8942dcde1` |
| 13 | `lemma` | [floor_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-lt.md) | 90 | `result-track:9f2831deb6b5576301aa17da36efe8c4f3f1219fb7890f60bed7f87069b4e883` |
| 14 | `lemma` | [lt_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/lt-ceil.md) | 92 | `result-track:9b313d9b3f05c048f916c213c8768e609053df5cfa408bc5740ddafc8b0d63d0` |
| 15 | `lemma` | [gc_toENNReal_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/gc-toennreal-floor.md) | 94 | `result-track:cb3016e16f4c00e89171298f9ca07d45bb6b1efb4f8a0a4b68a5f4ddfa6c8b66` |
| 16 | `lemma` | [gc_ceil_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/gc-ceil-toennreal.md) | 95 | `result-track:0b98b79756883d66321749e98bb4b9ca727d3192fa74a4e74474917b5a3f3b10` |
| 17 | `lemma` | [floor_le_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-le-self.md) | 97 | `result-track:652f355cc692c1fdaa47200d7fa62318f48adeeb9250ee865c048ff1abc6302c` |
| 18 | `lemma` | [le_ceil_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/le-ceil-self.md) | 98 | `result-track:e07c602f6bb8ebbd04340b8b1d852c984de940513e6ae227fd9ac3b345fefd07` |
| 19 | `lemma` | [floor_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-le.md) | 100 | `result-track:24785bcc99d64ec64d1632d206dd5619bd4ec62e2247944749f6e9b4c2466bf0` |
| 20 | `lemma` | [le_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/le-ceil.md) | 102 | `result-track:6f8c5ea286d10277dd7b2f2d3b3461022386f71ceb36b7e137a032201904d732` |
| 21 | `lemma` | [lt_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/lt-floor.md) | 113 | `result-track:1ddaab7afffc69ed1c76f6174b1be3ec00743d0942f5872a75679ab8dd5ef4ec` |
| 22 | `lemma` | [ceil_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-lt.md) | 115 | `result-track:0189f9659b98d0a9a058422d3eb204f0aa31e2132a954bb7b5fca05a5dad8834` |
| 23 | `lemma` | [floor_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-mono.md) | 118 | `result-track:c47ec80bdb4aabd563ab1c1732c5bd6dbe962558b52afdca2caee3fc8149ed3f` |
| 24 | `lemma` | [ceil_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-mono.md) | 121 | `result-track:0acf6b4472b9a8f321ec7fb5e9363569f7a781c271051a3ecfce10128db17913` |
| 25 | `lemma` | [floor_le_floor](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-le-floor.md) | 123 | `result-track:38c9faf582939c8b32f173def92b3829fca46d3aedbdb6752ca07c803e2881bd` |
| 26 | `lemma` | [ceil_le_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-le-ceil.md) | 124 | `result-track:022cc47e3c7a35d92470e999bbeaf8f21e65cff474f0840039276f069b1eddd4` |
| 27 | `lemma` | [floor_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-natcast.md) | 126 | `result-track:2d5fbbe732e88f1f19020890281ab345a551c8ea906e130ee267f71dd2938bef` |
| 28 | `lemma` | [ceil_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-natcast.md) | 127 | `result-track:6abd8e8ecc86d7756be3e6235dd0249d151e41cd299bafe3d8282b4c641810d1` |
| 29 | `lemma` | [floor_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-zero.md) | 128 | `result-track:d73b51a6c24de07b4d5bd268903418ccfa00b180bd947af5627af9a39a6c6d24` |
| 30 | `lemma` | [ceil_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-zero.md) | 129 | `result-track:a94fef267564b00c08b176e6bb3b06b7733ae0d03b5ab49ecb9856ca7a2ed9d6` |
| 31 | `lemma` | [floor_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-one.md) | 130 | `result-track:a97b6495cffcd5f6fceea0ca9b44f9d4ab3c8f219001d84831d2d767741602cb` |
| 32 | `lemma` | [ceil_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-one.md) | 131 | `result-track:1e43021d0101ee54b1bf701711069a7eb7fbd3e498def514ad82dfbd5f835c17` |
| 33 | `lemma` | [floor_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-ofnat.md) | 132 | `result-track:c01a8917573c990e2efc62354c1d8c889f6549407e99c84122e2b9c1f7008c2c` |
| 34 | `lemma` | [ceil_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-ofnat.md) | 133 | `result-track:688ab05a9a5a84787b2a649524ebb7165d0b1e20092e9471d4d85b1cd77fd383` |
| 35 | `lemma` | [floor_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-pos.md) | 135 | `result-track:a40a6dc2521f4f5ab877d3710d9b420309e812eb31af56e9722d0586b0397c87` |
| 36 | `lemma` | [ceil_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-pos.md) | 136 | `result-track:73eb850c27454043ff39225a48ee08541e1fbdd6280071bdb9453439f006a15b` |
| 37 | `lemma` | [floor_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-eq-zero.md) | 138 | `result-track:f9b19344bc5cbabcb97784af73baba5ba262474c22b7f3155bd5575da41bcec9` |
| 38 | `lemma` | [ceil_eq_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-eq-zero.md) | 139 | `result-track:af0b92f90f1cbc2658fbb1f86c212bfc0de93dc015e2a0797a88b7fd432beeea` |
| 39 | `lemma` | [floor_le_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-le-ceil.md) | 141 | `result-track:c68aad303248ac92f69dc5e3ff6785f3787dfcec40ff446815a806379d419a29` |
| 40 | `lemma` | [ceil_le_floor_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-le-floor-add-one.md) | 143 | `result-track:46e7db2f3f2c30898820450fc3f9dd4fdc283e81d6190439c40e0bc3ad7b677b` |
| 41 | `lemma` | [floor_lt_ceil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-lt-ceil.md) | 147 | `result-track:3ed2283f2111542fb531471b26a20eab792faf19743449415b3986cdd208b2da` |
| 42 | `lemma` | [floor_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-congr.md) | 149 | `result-track:9b102f0ff3b1b62904ffd8cf093672eaffba458f51c6cba1ba89f635014f82c7` |
| 43 | `lemma` | [ceil_congr](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-congr.md) | 150 | `result-track:01838461a4eb312b6c532af65899194844fcb103ae9dfa1e33adeb3bf5a0d968` |
| 44 | `lemma` | [floor_add_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-add-toennreal.md) | 152 | `result-track:a911732cf739613fda3c68c93c9387c51f5ade26387329cdd2c5d637185b040a` |
| 45 | `lemma` | [ceil_add_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-add-toennreal.md) | 159 | `result-track:c61fbec255e4c693fb5c1a0ff9f1d59517815d36a02b66e572f6a1a560e3afe1` |
| 46 | `lemma` | [floor_toENNReal_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-toennreal-add.md) | 166 | `result-track:0dd86652b39a025b71a189d28aab8ef40abb7ce5c5ce9c3bd63d78d3eddd03d0` |
| 47 | `lemma` | [ceil_toENNReal_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-toennreal-add.md) | 169 | `result-track:344c3f884f467fbe1cb2e26a4d6792acc0eadb7533805c57519bd2bf1ae7046b` |
| 48 | `lemma` | [floor_add_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-add-natcast.md) | 172 | `result-track:1042c3a141159f5fa17ebcdce61736e49f2a8f8ca8c96776a6234bf52f257d10` |
| 49 | `lemma` | [ceil_add_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-add-natcast.md) | 173 | `result-track:5aac2f0e3950be2560f7f1e3a9c93291254470d506ef5fa156b3b805dc5cfba8` |
| 50 | `lemma` | [floor_natCast_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-natcast-add.md) | 175 | `result-track:7f0edf9f242f2359a0d1395ba8e5d401131601e24e14f02f88cde5c84bb3ba48` |
| 51 | `lemma` | [ceil_natCast_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-natcast-add.md) | 176 | `result-track:28937e63b8583d7ad5582b06231ab64267fc489724a0928599fe0e1f1d6b3c91` |
| 52 | `lemma` | [floor_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-add-one.md) | 178 | `result-track:533e32f96b458b1d353775593aec930ba3ebebb24ea141c9f3ec93fa3bf35ca1` |
| 53 | `lemma` | [ceil_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-add-one.md) | 179 | `result-track:bd0f0de9d502e00af0c4bf58d370888c09c60b399154b3168b56bb2e75b67c05` |
| 54 | `lemma` | [floor_add_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-add-ofnat.md) | 182 | `result-track:2ff3e6adf865dfe23f82fa30e204c10e9e2e5a63ae0a83cce49cfba35c6d1ccc` |
| 55 | `lemma` | [ceil_add_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-add-ofnat.md) | 186 | `result-track:5d5a3ab9badbf4dc0a1b7356c8cdc84863288fd14fa59d2dfcefcb4192f72662` |
| 56 | `lemma` | [floor_sub_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-sub-toennreal.md) | 189 | `result-track:fb0e44f8cbfc7b3eb0e7f22fbaf93e7f0523d4af091dc1401be153d26521c1af` |
| 57 | `lemma` | [ceil_sub_toENNReal](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-sub-toennreal.md) | 197 | `result-track:e6925fad93bb2abe4bcf2252e52e2ce97128e0d3c87ffda0da31c0c5d74223a9` |
| 58 | `lemma` | [floor_sub_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-sub-natcast.md) | 205 | `result-track:e75160199f3abc69e102d6785374a1292d7569551f12aa0762b8cec7e87c386c` |
| 59 | `lemma` | [ceil_sub_natCast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-sub-natcast.md) | 206 | `result-track:91686988b4c5da2c009dad16dff2b310c5851f7c0fd0403c3fa3e0e98b961c4c` |
| 60 | `lemma` | [floor_sub_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-sub-one.md) | 208 | `result-track:c2bd0f61f07febd8d3fd9f6ac46b2646dbbb437de40b94379fe323d2aeb43182` |
| 61 | `lemma` | [ceil_sub_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-sub-one.md) | 209 | `result-track:ec73bc15396234d1833f4bb6abbcc8b465e02a32642686bb68c98c5f66809f12` |
| 62 | `lemma` | [floor_sub_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/floor-sub-ofnat.md) | 212 | `result-track:3640ef50d9d0b7b20c3181385ee622425b80e91b46577064195448e21b66a4fe` |
| 63 | `lemma` | [ceil_sub_ofNat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-sub-ofnat.md) | 215 | `result-track:0146ada401e0278a30ae37076022c5be77ff52b0816c2f8d72eb4f9fe794dbf7` |
| 64 | `lemma` | [ceil_lt_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-lt-add-one.md) | 219 | `result-track:b513774e0024bf8be50054b093ca58fe73d9575488871316eb0e709e2e2b32c1` |
| 65 | `lemma` | [ceil_add_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/ceil-add-le.md) | 223 | `result-track:ae66a2ce9a094c17fac7c8ee755cd19d1b7530081fd36afbe1d986e4d3389929` |
| 66 | `lemma` | [toENNReal_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/toennreal-isup.md) | 228 | `result-track:dc3c4bcc239069525f203bedf36391a1e12b61e6f2adbb1044d01d02ef35928e` |
| 67 | `lemma` | [toENNReal_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/toennreal-iinf.md) | 231 | `result-track:a7a0d3a7104b3c2a3a77a81d58247d64ddbbfb2b5083b13b7c2556d8328d66fc` |
| 68 | `lemma` | [preimage_toENNReal_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/preimage-toennreal-ioi.md) | 234 | `result-track:881e323c0d99c844bb3b9bd08b8d64fc938ac8381145581989334c6a626b90ce` |
| 69 | `lemma` | [preimage_toENNReal_Iio](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/preimage-toennreal-iio.md) | 237 | `result-track:e8dc64625968c13d117fa502957b4c74830872e13529bf2659b471e5b4809a9b` |
| 70 | `lemma` | [preimage_toENNReal_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/preimage-toennreal-iic.md) | 240 | `result-track:bc7ab296a15d68a15a2f65ccbeeffc28140996be84f2cffd940873b903c62173` |
| 71 | `lemma` | [preimage_toENNReal_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/preimage-toennreal-ici.md) | 243 | `result-track:fb0f3c8b1c710cbc8b92119fdad7156debad0a759d8f2f60b8330ca219291bee` |
| 72 | `lemma` | [preimage_toENNReal_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/preimage-toennreal-icc.md) | 246 | `result-track:77da7c90c8613a7dca75d8c9a5f0b72debe4640446d36f0b1d8059d6688d2774` |
| 73 | `lemma` | [preimage_toENNReal_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/preimage-toennreal-ico.md) | 249 | `result-track:43882839cee2f04684613887d2097d13f4a62df0f133849e4f889a746a44a5c5` |
| 74 | `lemma` | [preimage_toENNReal_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/preimage-toennreal-ioc.md) | 252 | `result-track:0d2b33c5abae301e7bb3054d75bf1cd804763f23f9e7af017b205acf075a4719` |
| 75 | `lemma` | [preimage_toENNReal_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/preimage-toennreal-ioo.md) | 255 | `result-track:f93319a6dddb81d301ec102e0bf3048b170026bcb79b04ad614b4afbb23f15f7` |
| 76 | `def` | [evalENatCeil](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/evalenatceil.md) | 267 | `declaration-track:a7f49df6e65154f4f4b7e10161296fc8d2c008e4f17640a7d49c29bd617f24ed` |
| 77 | `example` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/ExtendedNamespacedPublic.lean/declarations/example.md) | 278 | `declaration-track:85a4a6e5a4db84d9156c06b6cf7998218b15d24da31ac9c5f5f24a5c16da0828` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2ef84d499160fbca85f7b9464143047cd8e3182fc60976ed32a4ca7faeabaae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant2846f04154c57b851884778fe01ae93fccb2adc587748a453dde985021c004ef.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Extended/Variant2846f04154c57b851884778fe01ae93fccb2adc587748a453dde985021c004ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
