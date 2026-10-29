# Verification target: Num Lemmas Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78cddb3e3ef233925fd162db5f3dc275ad6965e5",
  "lexical_observation_count": 137,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78cddb3e3ef233925fd162db5f3dc275ad6965e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Nat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bitwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PSub` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Size` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Num.Bitwise` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cast_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-one-source-edition-2.md) | 27 | `result-track:7a768bfdf3f45787423801acb6a07ebc2395e67f06b59641fe2aa8178622efeb` |
| 2 | `theorem` | [cast_one'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-one.md) | 31 | `result-track:07709234f75aae07b1b573586228a24174440813842aeb9bed423dd71374e570` |
| 3 | `theorem` | [cast_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-bit0-source-edition-2.md) | 35 | `result-track:b76be081f9c866bbf9c35bff1b6419c91f4d50a40bd41207609e3c224cb5f1cc` |
| 4 | `theorem` | [cast_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-bit1.md) | 39 | `result-track:094f8ccb62919de08d57a5b79aa7f729d9263f6c8ef07c7656f224a76ba14755` |
| 5 | `theorem` | [cast_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-to-nat-source-edition-2.md) | 43 | `result-track:eb0896e37fb609cf16ca2ca63d380edd7444d4360efdfd2282ec289fe0f37168` |
| 6 | `theorem` | [to_nat_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/to-nat-to-int.md) | 49 | `result-track:09b8308830d2a2c0002c1bcbff1b5c2c0132440ea37a5dfea9f259c4d6cc1007` |
| 7 | `theorem` | [cast_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-to-int.md) | 53 | `result-track:305b33202bff3134bfd48c0543587b9561485d9855c4248115d0c0808f5d06bf` |
| 8 | `theorem` | [succ_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/succ-to-nat-source-edition-3.md) | 56 | `result-track:b63c29ff6e30ee6f79ae71647d6ae880a02dbe511ce594a2fe6879e914ea690d` |
| 9 | `theorem` | [one_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/one-add.md) | 63 | `result-track:c7cfb498a3493487da69bcfca2383392d70c2ef729864314d352fedbda34845d` |
| 10 | `theorem` | [add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-one.md) | 65 | `result-track:9a14b4e30e86a776f825992ad8292be705853ca0532594c133f1cb8e04d5b851` |
| 11 | `theorem` | [add_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-to-nat-source-edition-2.md) | 68 | `result-track:bf9a657e5afce55699e86f41d167c4bb5ccf1dec0328e9efa77a736a6c4e79a4` |
| 12 | `theorem` | [add_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-succ-source-edition-2.md) | 82 | `result-track:fe0b4b5802ef88d4a665ef1ef3d94a844263596f476b885f25af4a568f706863` |
| 13 | `theorem` | [bit0_of_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/bit0-of-bit0.md) | 91 | `result-track:a03dfa0bfda24ac31c6569e322c0abe042f983a07b466ebc8bb3398b607293ac` |
| 14 | `theorem` | [bit1_of_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/bit1-of-bit1-source-edition-2.md) | 96 | `result-track:f792cac7b9220eba440eead66b0ea223f6a2548bbd2d0598f5145ffb02603eb2` |
| 15 | `theorem` | [mul_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/mul-to-nat-source-edition-2.md) | 100 | `result-track:b9a5653060c4dd7741aa566fbc8675607940ac0b10a40b54d99212990d688464` |
| 16 | `theorem` | [to_nat_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/to-nat-pos.md) | 107 | `result-track:2fa4e6d69c85882b2086fab4c600741ae70a268970596d69d0fd65afb84b021b` |
| 17 | `theorem` | [cmp_to_nat_lemma](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cmp-to-nat-lemma.md) | 114 | `result-track:209152d4a534a5f22f90e7d6bfd39d8afa62368b21ed4432ea33fc7645803b1f` |
| 18 | `theorem` | [cmp_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cmp-swap.md) | 118 | `result-track:06b6254b706992ff9ffd273a6a5db1c31fb7d6ab96b6f438a6dfdc795293f4c6` |
| 19 | `theorem` | [cmp_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cmp-to-nat.md) | 122 | `result-track:81e0ce125595e42f70cbe9b994360dbd89dcd1d9cca501e4ce959f5c292ef2b8` |
| 20 | `theorem` | [lt_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/lt-to-nat.md) | 160 | `result-track:c81b62f83101b1dc55f4d1e5bc9a05700b920b3e20b60c7cebd74bce4fca128b` |
| 21 | `theorem` | [le_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/le-to-nat.md) | 168 | `result-track:54f34ab3c3c994c449398563f267ac3a24955601ee70fcbbe0888535833d21bc` |
| 22 | `theorem` | [add_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-zero.md) | 179 | `result-track:54bcdf6e14ca1fa39c7ddaf5eb2282dc883da0e76e006348dc5e923db283abe1` |
| 23 | `theorem` | [zero_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/zero-add.md) | 181 | `result-track:e8556a68b46d16565a15f7f575c17823f7ab7c8f1a8d0c263b1f1b8adfba6e3f` |
| 24 | `theorem` | [add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-one-source-edition-2.md) | 183 | `result-track:f44fa7e04da64d96bb310d62c84f561d88c7fd392d3a8bf93a833c78aeeb74ff` |
| 25 | `theorem` | [add_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-succ.md) | 187 | `result-track:64887eaa7151dadd70630ed4084b7e1c278179e0f9528fcb493153312cf4a261` |
| 26 | `theorem` | [bit0_of_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/bit0-of-bit0-source-edition-2.md) | 192 | `result-track:a1d57fc0055ba087a9febd2bc5c5edc853d8f3751838ba20170ad0912571e54e` |
| 27 | `theorem` | [bit1_of_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/bit1-of-bit1.md) | 196 | `result-track:a24d848305085d9a8c5f4735cd9ce35f66e4bc7147c787c9349de5f86d9f3d4e` |
| 28 | `theorem` | [ofNat'_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/ofnat-zero.md) | 201 | `result-track:02c2960df9baa8237184518368b9a76319a4aaaa3cd5346d62becf7e88dfb15b` |
| 29 | `theorem` | [ofNat'_bit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/ofnat-bit.md) | 203 | `result-track:b7b3baf3be935a6950fb314b881eb3e540c98baf929cf30722ae2c73b70faf5c` |
| 30 | `theorem` | [ofNat'_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/ofnat-one.md) | 207 | `result-track:3089f0cbe65e6038074af0bc8cc4d3f38617a1edd2e40c7302fa6564375a57a1` |
| 31 | `theorem` | [bit1_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/bit1-succ.md) | 209 | `result-track:c19abdbaef3f47cb1807ffbba13a6510cfbf9a45290359af02b3c45fc24ec675` |
| 32 | `theorem` | [ofNat'_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/ofnat-succ.md) | 213 | `result-track:56f484ee04c2c9b4783707a68c4dd724c3d7cbd8fd71b20dc69115fa68afe77d` |
| 33 | `theorem` | [add_ofNat'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-ofnat.md) | 223 | `result-track:4ef89d325d9971ce16f9d88d2da111656120f0867d034fb66b92283156107e06` |
| 34 | `theorem` | [cast_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-zero-source-edition-2.md) | 229 | `result-track:e3d11e6c2b1d03f7f3bb207c2b03814e745681d4060b62556bce8788e21e833b` |
| 35 | `theorem` | [cast_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-zero.md) | 233 | `result-track:d9019b49a0222733d1c73535024cbcf2ec9e17dd65179325e889c90b71d8d621` |
| 36 | `theorem` | [cast_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-one-source-edition-3.md) | 237 | `result-track:c42d3dfada30ed7810ed31e723d9e714a1212b34b99e5968896660a7a677d092` |
| 37 | `theorem` | [cast_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-pos-source-edition-2.md) | 241 | `result-track:7e53cb48b6c1297f1e3dccccf1050d6c40c8be1e1b82d2e5a3385e66424623cb` |
| 38 | `theorem` | [succ'_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/succ-to-nat.md) | 244 | `result-track:7006d7465633c6f66b7c17a080c1b256b95b464948ea87d8627994a125b43c67` |
| 39 | `theorem` | [succ_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/succ-to-nat-source-edition-2.md) | 248 | `result-track:95864704e24afbf5aadfff265a5da6390cdf90bc5c2c039e22bd8250856bde01` |
| 40 | `theorem` | [cast_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-to-nat.md) | 252 | `result-track:e6f71b7bf175c462eddcdfc8bc0084e5c98f88b6e6231d946642e1f5e086f0d3` |
| 41 | `theorem` | [add_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-to-nat.md) | 257 | `result-track:9ccfcbd64c0849c46da38f3bbaa2f9b914e64bb832f2beabf9b2b5a3bca021a3` |
| 42 | `theorem` | [mul_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/mul-to-nat.md) | 264 | `result-track:8f48e6313bd5bc4ea40914589024201ab6af81727e18e6c6faad1e89803afd08` |
| 43 | `theorem` | [cmp_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cmp-to-nat-source-edition-2.md) | 270 | `result-track:d534ff724bb924e7b19d6662010b77efac8432f348ea9ececbcaf61b8d6fb5e3` |
| 44 | `theorem` | [lt_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/lt-to-nat-source-edition-2.md) | 279 | `result-track:e20732489c2b8b865f83e140531eceacb28dc20160c64f078d8dfbd3c774bb47` |
| 45 | `theorem` | [le_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/le-to-nat-source-edition-2.md) | 287 | `result-track:6699b3253fe20db31cf56e0a1f792801716ee19bb677c2411c2095251e7a0d1c` |
| 46 | `theorem` | [of_to_nat'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/of-to-nat.md) | 295 | `result-track:6a87d0c3f3ca22f8e0724aebd5bd049b6c3b6a3d49ff5c4aebb65635ace419ac` |
| 47 | `theorem` | [of_to_nat'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/of-to-nat-source-edition-3.md) | 307 | `result-track:958037c23bea45f03d39cb85caaedcbab319c91e5a52c707bb3fc00f9c4ffb60` |
| 48 | `lemma` | [toNat_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/tonat-injective.md) | 311 | `result-track:5f0e62b9140c4157904e4134978444489e84bb727fd0f1d13dfa9a901fe921b3` |
| 49 | `theorem` | [to_nat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/to-nat-inj-source-edition-2.md) | 315 | `result-track:8fc59e059d6151c5501dd60569517a47082b0460fc68ac2eaa044ff8a5f56133` |
| 50 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/macro-source-edition-2.md) | 324 | `declaration-track:83a0ac06ac253bcd80dab9315c3f65f18208c53f6b8fe8a0717ae377161575b8` |
| 51 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/macro.md) | 335 | `declaration-track:03deb2acedd226a17c111860ee59dfd7d8829c3f7b17a9bbf34e6e1d1f6555fb` |
| 52 | `instance` | [addMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/addmonoid.md) | 338 | `declaration-track:4e4abeafcec29865916b6c042b1ebafe035e911012172276fc8ca07287005b4e` |
| 53 | `instance` | [addMonoidWithOne](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/addmonoidwithone.md) | 346 | `declaration-track:fb5d1ece454d6cffc262ffbc4ffbe816a0ff06033850db6b7f7bfdaa43824067` |
| 54 | `instance` | [commSemiring](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/commsemiring.md) | 353 | `declaration-track:694024b2592cb14ccb96446e2cdb9a059ffade01293a45c0cbfcf2370e1bb897` |
| 55 | `instance` | [partialOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/partialorder.md) | 368 | `declaration-track:e84ec20b3d130b25d06ae26e7ace7cde14e7ade4ed57f52db0fc5b309206dc12` |
| 56 | `instance` | [isOrderedCancelAddMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/isorderedcanceladdmonoid.md) | 374 | `declaration-track:569f2b035bfbb8c0acf89278b9fad784754f72973f806aa564bed02b2b39fa0b` |
| 57 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/linearorder-source-edition-2.md) | 378 | `declaration-track:e7341cc27097b265e30224fb9e0891059c2f4c87cc3060151ace097f79a43119` |
| 58 | `instance` | [isStrictOrderedRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/isstrictorderedring.md) | 390 | `declaration-track:38af10101b8af10ffcfa4a3b842db9281a121ae8e6849484f67bf29593421487` |
| 59 | `theorem` | [add_of_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-of-nat.md) | 403 | `result-track:d291758bfb00a699b61b4a39e20ee87da608909dcaf8c96fc7794b495b123563` |
| 60 | `theorem` | [to_nat_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/to-nat-to-int-source-edition-2.md) | 407 | `result-track:c963854de6920e8c42029c33a78eaab2294607633a8c1f8e88f5e389bce2f012` |
| 61 | `theorem` | [cast_to_int](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-to-int-source-edition-2.md) | 411 | `result-track:baf46014cefadff9986c92196bf333c55b4771fbeeb05ea5c8849455cf8b9843` |
| 62 | `theorem` | [to_of_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/to-of-nat.md) | 414 | `result-track:0e8922358c53874d7c601dd2936948b2a64dfb0e0f8df16fce0d2b38f4118c2e` |
| 63 | `theorem` | [of_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/of-natcast.md) | 419 | `result-track:839180237278b6b9528d352a1785689de2d9ae04d7666f85e108576e08eee21d` |
| 64 | `theorem` | [of_nat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/of-nat-inj.md) | 423 | `result-track:724f94bafaf328faa360b54a6ec40de32be4d33aa3dc4838c6285823bbd884a4` |
| 65 | `theorem` | [of_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/of-to-nat-source-edition-4.md) | 428 | `result-track:f973e6a649696c560d7ea7a6eb812a59b3276736f87d57e73a5995e9bb627096` |
| 66 | `theorem` | [dvd_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/dvd-to-nat-source-edition-2.md) | 432 | `result-track:b5d5312b4bcd86d49f03af8f541280d170c37d6446440ba7a727d7f740e623cf` |
| 67 | `theorem` | [of_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/of-to-nat-source-edition-2.md) | 445 | `result-track:6ae307ce2c09bde2af03ab83412ff2d645d44cca3873a61f7c28ad8f02472045` |
| 68 | `theorem` | [to_nat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/to-nat-inj.md) | 449 | `result-track:01ef1082703a19cd9bd6c2f92e702495101c2877710d6111ebd5c9756113a1ce` |
| 69 | `theorem` | [pred'_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/pred-to-nat.md) | 452 | `result-track:9fbe789c0db701dd87afd626f01f86775af9dea73d7acbc465a53814ca528ea5` |
| 70 | `theorem` | [pred'_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/pred-succ.md) | 465 | `result-track:acbbfdfa5b2022147acf93b63d913e1c1d9871f13be33acde227d6a6d3d54169` |
| 71 | `theorem` | [succ'_pred'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/succ-pred.md) | 469 | `result-track:40e64b552436306477d145b5a1c497a4a04c8b840c5a63e3eac9a04fa9171e51` |
| 72 | `instance` | [dvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/dvd.md) | 473 | `declaration-track:16d916f3d52252de09032d26d39c0603d628e169bbcdfbdbd2e833b828ce0d18` |
| 73 | `theorem` | [dvd_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/dvd-to-nat.md) | 477 | `result-track:7355c109adea25db62642d8fa904558acf57f9f9c70d896aff4bbbe3afaa5c45` |
| 74 | `theorem` | [size_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/size-to-nat-source-edition-2.md) | 480 | `result-track:80a73fed3e0eeb5d7a9d5b747f683173282d711c756e51e22e3715f350e56d49` |
| 75 | `theorem` | [size_eq_natSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/size-eq-natsize.md) | 492 | `result-track:593e00b0a40d859be5d0364d521b4887a5e595b313a3ff75bc0278dbe624cba6` |
| 76 | `theorem` | [natSize_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/natsize-to-nat.md) | 497 | `result-track:2c9ad8989ec8fe8791785195d6187f9fbbd446f5b11d05b517ab6b08bd60dddd` |
| 77 | `theorem` | [natSize_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/natsize-pos.md) | 499 | `result-track:0a32f776ba87d41601560e165cf09bb3635c5848fd23f7e2601572cb82d78b96` |
| 78 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/macro-source-edition-3.md) | 508 | `declaration-track:84d272cf1e118296b5a82cea9c87c5868123367528f7afcddb8b3b4714ac3deb` |
| 79 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/macro-source-edition-4.md) | 519 | `declaration-track:8ebf6bc3e4bde28c26bbcb488fd423c3d852399625b95156c29403162b47f668` |
| 80 | `instance` | [addCommSemigroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/addcommsemigroup.md) | 522 | `declaration-track:47e6029ac9e930adca200a8e14eb2fff435416e26bea76a480e272bfa2efc629` |
| 81 | `instance` | [commMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/commmonoid.md) | 527 | `declaration-track:8c1cd0be4bbaf16e313426dc113387e092eaa26a267d3a4e0045e715bd2f1ff1` |
| 82 | `instance` | [distrib](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/distrib.md) | 536 | `declaration-track:add698625c97bba8da78eb7e60d213a2ce656623043a7450abe9c7e4b98c9918` |
| 83 | `instance` | [linearOrder](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/linearorder.md) | 542 | `declaration-track:2661c9fbd94c70e89bff92ff3be1bea7fc715e6f826912c467c210fe439795bf` |
| 84 | `theorem` | [cast_to_num](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-to-num.md) | 567 | `result-track:068c360fcf16bb9b2734f9150b31f87ece8347de495a38700307a3d74e517885` |
| 85 | `theorem` | [bit_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/bit-to-nat.md) | 570 | `result-track:4ae2ccfb83f6e6cce23e2d21dad004c2fb07f605d9387389ecc2a03f096079fb` |
| 86 | `theorem` | [cast_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-add.md) | 573 | `result-track:5f7fbcbabd0780bf2f8e2044cb1d14147564cca1bd0f87aec4c57c4648cb196f` |
| 87 | `theorem` | [cast_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-succ-source-edition-2.md) | 577 | `result-track:e0f9fafe924208dd13ee4a8ac926d27fa033c5a28326cf713836832fd45f8e03` |
| 88 | `theorem` | [cast_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-inj.md) | 581 | `result-track:2d83f327b4561a66deed4daa30557b096ab3839ee2062279ce2521599bf02c9b` |
| 89 | `theorem` | [one_le_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/one-le-cast.md) | 585 | `result-track:b2587aca2c5eb7a12fe032b61746937af8abfdaf1874e9521a0547a7580d6b25` |
| 90 | `theorem` | [cast_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-pos.md) | 590 | `result-track:1ef1b9a0037a0d87d2cbd87ef45b42160f1371c6094e843ba7a5e361f2a7575d` |
| 91 | `theorem` | [cast_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-mul.md) | 594 | `result-track:8ca34bc3b6bb1821fe9e98b45d678ca52ec014489407d701ec1b0a9252c3bb6a` |
| 92 | `theorem` | [cmp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cmp-eq-source-edition-2.md) | 598 | `result-track:c93ffb7d935e82df626c3c486b9f6e7cde6f1ad59c018c5f6fe42542155cbce1` |
| 93 | `theorem` | [cast_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-lt.md) | 605 | `result-track:6d849dbecca2ecdc8d930a65bac77300992a7a153048d49b9ab64fabbe95ca78` |
| 94 | `theorem` | [cast_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-le-source-edition-2.md) | 610 | `result-track:ab8ba31088bf6e67a06b47294eccacb586d5af90040f2a5d0c2e1504e8f30bc9` |
| 95 | `theorem` | [bit_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/bit-to-nat-source-edition-2.md) | 622 | `result-track:54719c11c86dfc4ba1bdf964d80f715b0e045e669b345694c8e933b647ad7337` |
| 96 | `theorem` | [cast_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-succ.md) | 625 | `result-track:16d0e48e245a5c53593f473db5936acb23511b5f81a5650c2a50b7ccdac75b0e` |
| 97 | `theorem` | [cast_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-succ-source-edition-3.md) | 628 | `result-track:f35aaddc094d6d5b5d323aec919729e52abf071d5f6d6feb5edb46a9bdc651bc` |
| 98 | `theorem` | [cast_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-add-source-edition-2.md) | 632 | `result-track:b61338239861293b9ff475b2f96ef13e6c98c46902bd7ba59347dc92620ebfeb` |
| 99 | `theorem` | [cast_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-bit0.md) | 636 | `result-track:75a363db92a89b36dcee2c8c476c94c105d572a98049349c2a2443cd8c808bbe` |
| 100 | `theorem` | [cast_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-bit1-source-edition-2.md) | 640 | `result-track:f0ee493ffcd5786c2551a5ce5f00c331f146e2dd88eced3fdbd1f1d8db0d9cd1` |
| 101 | `theorem` | [cast_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-mul-source-edition-2.md) | 644 | `result-track:e4099efcd4738285f21676d9e191f839f712231e82a94c566f30307e44b76999` |
| 102 | `theorem` | [size_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/size-to-nat.md) | 650 | `result-track:15a1004dcd7e2437511f14ada35c62ac9f8fa885a445ed48d58cd79585d8593a` |
| 103 | `theorem` | [size_eq_natSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/size-eq-natsize-source-edition-2.md) | 654 | `result-track:e529cd79fc017ee5a976204a754d5279cafe8c90e8c90aedfdffafb221043d99` |
| 104 | `theorem` | [natSize_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/natsize-to-nat-source-edition-2.md) | 658 | `result-track:ac7f7e705096a45553cfbedaf850b1dd221b94eaf7d31b9ce4bfd9ca36553d67` |
| 105 | `theorem` | [ofNat'_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/ofnat-eq.md) | 661 | `result-track:548a349842a2d767733a6e8af858a1cce01b8306dcee93ca3f2610ee69c00fe5` |
| 106 | `theorem` | [zneg_toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/zneg-toznum.md) | 664 | `result-track:2d34078a0e0837155ecf2f3eef0d1bb63f267b016e14ab3c7c834068850afddb` |
| 107 | `theorem` | [zneg_toZNumNeg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/zneg-toznumneg.md) | 666 | `result-track:f6a3b89b57a638d67ea97cf53557010ccdadbe4c505bf1739497b41d242bef03` |
| 108 | `theorem` | [toZNum_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/toznum-inj.md) | 668 | `result-track:b4ed41c5a5422c61c953eadd652b2a9f05ba3c383b31749c751e01f7cd27df36` |
| 109 | `theorem` | [cast_toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-toznum.md) | 672 | `result-track:87fbe49f1ed2497661c6fd48674df491695e421104d48c3fd5f6094b783f0284` |
| 110 | `theorem` | [cast_toZNumNeg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-toznumneg.md) | 677 | `result-track:3290522f0f1d93eb349da408254bd87c51de7e1a6a4db396cdfae7dc396ee0d6` |
| 111 | `theorem` | [add_toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/add-toznum.md) | 682 | `result-track:10d60a0e2b41cb537088313bbf25b78c0fb4c78f300b731cb837de222756affa` |
| 112 | `theorem` | [pred_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/pred-to-nat-source-edition-3.md) | 691 | `result-track:dc148af03c7cf36133e1f5bc2b311ef833e2c4a4519eb48ff5256a314360170d` |
| 113 | `theorem` | [sub'_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/sub-one.md) | 700 | `result-track:0e7d817464018ebac70c5cdb71cdb8c2f578825ae253830010f6234862da798e` |
| 114 | `theorem` | [one_sub'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/one-sub.md) | 702 | `result-track:7bc3beb43bc2744e0b16652fb83a27455fc5b88f284cabdf89977ca7e7c497e8` |
| 115 | `theorem` | [lt_iff_cmp](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/lt-iff-cmp.md) | 704 | `result-track:291678b4ebf301f1ff5ba0107217114bb63b021ce4b054c227a424a3882fd612` |
| 116 | `theorem` | [le_iff_cmp](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/le-iff-cmp-source-edition-2.md) | 707 | `result-track:ee222c2acb48322e7fe4200cd22026f64e033f2200b224d2f8ccfa0418e65132` |
| 117 | `theorem` | [pred_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/pred-to-nat-source-edition-2.md) | 718 | `result-track:c83ccd0593b2231fe29062086675553b913dc3cc631c56952824f997fdae4772` |
| 118 | `theorem` | [ppred_to_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/ppred-to-nat.md) | 722 | `result-track:42e326996da17c0e735e35cc859064291ae411dc4229568036d09069e4cb5472` |
| 119 | `theorem` | [cmp_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cmp-swap-source-edition-2.md) | 729 | `result-track:469ff6dcf179395a406a2bbabc279f83eb3922ae7608b57568b44f28acd3ce68` |
| 120 | `theorem` | [cmp_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cmp-eq.md) | 732 | `result-track:1c4244460e64eb1908473269114dcbfe2501272c3a73f0b8e54c69d795b4fbfd` |
| 121 | `theorem` | [cast_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-lt-source-edition-2.md) | 739 | `result-track:6e3725d6410c6205097b8d6034d45cb066fc3f8a350fa570fe4e301ae2704306` |
| 122 | `theorem` | [cast_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-le.md) | 744 | `result-track:09afe74444d076e4f7194a831c02b1bb98b8e2ec217619fdbf0d4d8e355343f8` |
| 123 | `theorem` | [cast_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/cast-inj-source-edition-2.md) | 749 | `result-track:5d5b95b21a166c9af9839ebdf1b764f7c8cb8f853a997242bfb85ed04cd69f74` |
| 124 | `theorem` | [lt_iff_cmp](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/lt-iff-cmp-source-edition-2.md) | 753 | `result-track:454a00a71f6f021127693dfb8faba20501965bc2884ca283e10645d818cc6928` |
| 125 | `theorem` | [le_iff_cmp](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/le-iff-cmp.md) | 756 | `result-track:8ae0f2f651f51caf8b196152809659b8b2196c1dff88c9525d2cac796d889967` |
| 126 | `theorem` | [castNum_eq_bitwise](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/castnum-eq-bitwise.md) | 759 | `result-track:e78708684a080faaf5ca8dad5f639f150493e0aa776ec5147823f1066f839521` |
| 127 | `theorem` | [castNum_or](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/castnum-or.md) | 797 | `result-track:1d3d8fba712b7e3c079ead5aa610616ba1b114c7799be7ad3ca1ad78eab9ab49` |
| 128 | `theorem` | [castNum_and](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/castnum-and.md) | 802 | `result-track:a18bb753133d37b323770c92906051d4b94ef179fb34b3392273a48f8656322f` |
| 129 | `theorem` | [castNum_ldiff](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/castnum-ldiff.md) | 806 | `result-track:491071073978658a98cb2c662b6284eda9ad28b777b1f315096f56009203dc83` |
| 130 | `theorem` | [castNum_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/castnum-xor.md) | 810 | `result-track:b871279336c81901a215548c081e2e4fdbefa0de6c0a9209c0cdf3178df3bd0b` |
| 131 | `theorem` | [castNum_shiftLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/castnum-shiftleft.md) | 814 | `result-track:89454dc939b57cf8b5bc6d36dbb14947e1947912b026662c0efae7741a2caf3f` |
| 132 | `theorem` | [castNum_shiftRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/castnum-shiftright.md) | 825 | `result-track:473caaad6021f6f0819d0bd53628678e9b9d3bbb18b0b284c4848bf3adff09ea` |
| 133 | `theorem` | [castNum_testBit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/castnum-testbit.md) | 851 | `result-track:730dc69dca56dbad8c1e01fef7df1e279a73819bb0f9e69a1a867102eef021b0` |
| 134 | `def` | [ofSnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/ofsnum.md) | 871 | `declaration-track:aadfe44a65f71ae6cb051fae094c8b2cf0f4eda0accfec921bdf10a3d4c9a908` |
| 135 | `instance` | [snumCoe](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/snumcoe.md) | 874 | `declaration-track:497c46b4a0def61fb3aacd3e65999a520fe0d21679069a1de6f7e8b28d670326` |
| 136 | `instance` | [SNum.lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/snum-lt.md) | 879 | `declaration-track:413e8863a3cf96e0a394785190b2d73a0dc9b7673b126db108ef9bb84171e2fe` |
| 137 | `instance` | [SNum.le](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumLemmasSourceEdition2.lean/declarations/snum-le.md) | 882 | `declaration-track:dac82534a9f0037a22c1ce1d0cf01c0319a25097777d4fff036b0885904ea36b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5a11fcab0f454f7f935beabe3414375e717bfcadc57f4d54ccf678a9ecf58c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Lemmas/Variant336b4bc6da1d66ed88823fd393bf7890ef6ce1bdf4aefa610a05744fd2ff61de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
