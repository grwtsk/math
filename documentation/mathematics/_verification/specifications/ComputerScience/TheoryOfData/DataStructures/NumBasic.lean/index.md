# Verification target: Num Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e130990e280f5c133818654a5f0eb0a594d8b74",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantbaf371c66d10e21bb931d597ecce86863fa74902a696bb6c21585c96119d9f4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e130990e280f5c133818654a5f0eb0a594d8b74`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantbaf371c66d10e21bb931d597ecce86863fa74902a696bb6c21585c96119d9f4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Basic/Variantbaf371c66d10e21bb931d597ecce86863fa74902a696bb6c21585c96119d9f4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Linter.Deprecated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Notation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.BinaryRec` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TypeStar` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PosNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/posnum.md) | 24 | `declaration-track:11237c1bd45d0f8652565e573f2250baddfe40f04a812988a6df55a60d60145d` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-34.md) | 30 | `declaration-track:f3fb0f3e46062c52e341391a64d35278e5f7cf56ac69f6826384a1a7b2931d55` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-23.md) | 33 | `declaration-track:9403acd537f9eaf0f1b8333d1738d54366c193b9e0c30573f44f4f798f5857ed` |
| 4 | `inductive` | [Num](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/num.md) | 39 | `declaration-track:b41962b0975b3dda00f759d580dea8cb1c1189d21cedb00a84a28680d1626a0a` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance.md) | 44 | `declaration-track:01cafcda55bcd760d781c9f224f95a00869278a66d597f7b44c89928d8e09f2d` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-28.md) | 47 | `declaration-track:ba26bab3862547d0bc82a1772c7ba7dface6be38ee62ef58609e5d1616faec44` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-15.md) | 50 | `declaration-track:5f07b7f127cf199e9a348ebf18a426077792664998ba39d41e345fab58033b4a` |
| 8 | `inductive` | [ZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/znum.md) | 57 | `declaration-track:b9585ac25ac3eda25528c3c0cd5166b03988e8a71e96fa28c236eec7c41ed039` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-9.md) | 63 | `declaration-track:33df43f060a4d0d99e1f33f7a48dfc7e1f28de0f1183c825a695297bcea218d1` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-13.md) | 66 | `declaration-track:574fb545a1b0b7aa19b59260327c7023ae9e52d4379413840f9fa48c9b4e08d8` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-16.md) | 69 | `declaration-track:6afb769a1bb7956437e8097b8c0f734277050592de59d5d032f584d2f003bcb2` |
| 12 | `def` | [bit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/bit.md) | 75 | `declaration-track:2dbafbaaa322df724fd6758e1ec6dcb3c973b7540bb79983f503ad803457b520` |
| 13 | `def` | [succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/succ-source-edition-3.md) | 79 | `declaration-track:a360483b142b202afe691fccd091047b085fd10b08d6b10ec0f47d33285e47b2` |
| 14 | `def` | [isOne](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/isone.md) | 85 | `declaration-track:2db0cccb98d0a753ba8282515fb4b76f5772ff6d354d34080da4c6d0f57def4a` |
| 15 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/add-source-edition-3.md) | 90 | `declaration-track:dd14da206c1bc3e062181d822a82d1aa9a074e7f4c19443afd76b6b8fc06a1ce` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-2.md) | 98 | `declaration-track:03040ea7e656e78980323f0094bbb6c8a5f02be7747a478dcc228f2c8bc6019a` |
| 17 | `def` | [pred'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/pred-source-edition-4.md) | 102 | `declaration-track:bde36f9cba9f3e130a4d5b45666f8795c5139d1c7edeb48879b8bedd877d9d7f` |
| 18 | `def` | [pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/pred.md) | 108 | `declaration-track:0e9148c31ed80552ceff87ae55cac1eeed0daf98137c6ea2f877ad820dfa22b2` |
| 19 | `def` | [size](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/size-source-edition-2.md) | 112 | `declaration-track:fd2386c501b46984a1b43780687c898a97cab2cfbc910d211c2d6255c798acff` |
| 20 | `def` | [natSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/natsize-source-edition-2.md) | 118 | `declaration-track:f151397be0ad85c0cb97f43a769939404c40691633809a89f547dcce48ac9c2c` |
| 21 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/mul.md) | 124 | `declaration-track:76f3b612f6fbaa1fd93e8ea54ae3a39ff7eb6064793390b7f3a0d6cc8984650d` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-10.md) | 129 | `declaration-track:33fec0634dbb2c7144d0e09c35be12596638124dbe17c46e744d2cf205f0f303` |
| 23 | `def` | [ofNatSucc](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/ofnatsucc.md) | 133 | `declaration-track:db2279f6b928108d8de3171d08dfd81a8b07dd9e8075cb0e552119f8f02f4df3` |
| 24 | `def` | [ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/ofnat.md) | 138 | `declaration-track:600b3e870a92868e1678694d5c09eab8fa5dc132bada26efb9bda15b007c48bd` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-26.md) | 141 | `declaration-track:aeb62d266fd38e77518809c621ff6a07b5887d304dcf1d990d1af57f7d967ab0` |
| 26 | `def` | [cmp](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/cmp.md) | 147 | `declaration-track:290a77a8b7cfb1c4ab3ac313832b2d4b277038f68b6a98f3404878f74430f5a0` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-32.md) | 156 | `declaration-track:e899a6b8efc1ce1cf42ff8522c932e48e6704de654f6da58aa3ed38dd37e3250` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-17.md) | 159 | `declaration-track:6c7560b5aeec1a862d3e78a8c690a722cda3ba5a2d5693f0d89f054b99f056e5` |
| 29 | `instance` | [decidableLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/decidablelt-source-edition-2.md) | 162 | `declaration-track:bc6eaad8f8174764637b659e7a8850f6f8db7295e5b6b8eb0a4a777576ddd73f` |
| 30 | `instance` | [decidableLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/decidablele.md) | 165 | `declaration-track:053a27678002cd722a00d6bedcc73c711ad03faa87d775ce7b809d8185b2cdb9` |
| 31 | `def` | [castPosNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/castposnum.md) | 176 | `declaration-track:7d9ee945ee2dc0c9ba5cf9757a8ad5da4a915668bac73a818f55c084bc39278a` |
| 32 | `def` | [castNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/castnum.md) | 183 | `declaration-track:ccdeb1558348618e00487bd94d26858f6b8b2c74e5d31e74bc4dfc99e01c3323` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-31.md) | 188 | `declaration-track:e3301edab7acb5cb1005f3d97cbfb0eeb52ab1183a9b0c6819a59bb35ea17bc6` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-8.md) | 192 | `declaration-track:2d278c6c55aca7acb9085997171657da4125150cb593301017b946989b8f69af` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-21.md) | 195 | `declaration-track:8c04d63f9275671c4ff858c29d0288092e30cb54ffd90ec4c5929e39fa88237d` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-12.md) | 198 | `declaration-track:56c358fa83288589b368ef69a03b2ca3cf3ec330d727e35b96e22f3d7659cb8e` |
| 37 | `def` | [succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/succ-source-edition-4.md) | 208 | `declaration-track:db4d0b311a713caff397f95e26d3923cc84723c57dce4431da2ce14bd4634bbb` |
| 38 | `def` | [succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/succ.md) | 213 | `declaration-track:74901e17585120da52d36a044f3f349a7c9b53d915b927fd24dd2b5d80602b37` |
| 39 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/add-source-edition-2.md) | 217 | `declaration-track:bf9886c605fb0152c0e696718041a0bb4081a1eb32b11f43b56a4dd95b61331f` |
| 40 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-19.md) | 222 | `declaration-track:799e72f053f346679ca42f6e9a2343bea306a5e31dbcc51ca8533491cedcc6c8` |
| 41 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/bit0-source-edition-2.md) | 226 | `declaration-track:184d5b03ec243033be29d129a8b317bb19cfecf2b6ccac8fd50bfb4e4b779362` |
| 42 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/bit1.md) | 231 | `declaration-track:98e69acc2fd5163db1781e82c2a9d05a8f6780e2fec930edace1fc7edabf3f18` |
| 43 | `def` | [bit](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/bit-source-edition-2.md) | 236 | `declaration-track:d67c104f4f92833ac38633502e645f3e0bbfe6b96ec0521a539ebcae7e69e48a` |
| 44 | `def` | [size](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/size.md) | 240 | `declaration-track:c5592833df66d65eb5aba1c571c6a6602eb54dd485cee9230541e0dd0156a390` |
| 45 | `def` | [natSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/natsize.md) | 245 | `declaration-track:88be185c19be35104ec9a47adf42d275750cbeb45f12c52e6753bf96ddada6c2` |
| 46 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/mul-source-edition-3.md) | 250 | `declaration-track:ebec109b5ad5ef0a11d2f32916c680956e26a04ce5983df4eb1fae7420539b0c` |
| 47 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-14.md) | 255 | `declaration-track:58b610744fc75739f46cf8a9300ea3cea8e800374ddefa0562d6fcbfe9c47f30` |
| 48 | `def` | [cmp](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/cmp-source-edition-2.md) | 261 | `declaration-track:4f6694dd661541954a0df8c68319d638c3c4f6bba8cd98f063ff4336038f0b5f` |
| 49 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-20.md) | 267 | `declaration-track:8be68792eb0198626b0960735c0b0ef2f0ebd0ddfc77133a7b73bed9e4e5370a` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-27.md) | 270 | `declaration-track:b68e4a6f71cb74cd6f3124532dfeb8352b70f0547e6b7c56ea8ecd4433d2f16f` |
| 51 | `instance` | [decidableLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/decidablelt-source-edition-3.md) | 273 | `declaration-track:e3920b402637c697add619d2cec8e52b757b046abee620b9d31982f265e32311` |
| 52 | `instance` | [decidableLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/decidablele-source-edition-2.md) | 276 | `declaration-track:c569c8560587892bf8b7865ac48838af3ce3580ea3e94a15eba9acf5d7fa952f` |
| 53 | `def` | [toZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/toznum.md) | 280 | `declaration-track:169065e418ba57557de21aade300838908c58df6f7994361a47395f177282599` |
| 54 | `def` | [toZNumNeg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/toznumneg.md) | 285 | `declaration-track:8023b3d7bc6a318c4d88a924f6f5840924162284600a093ab181d3f5d5bc5577` |
| 55 | `def` | [ofNat'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/ofnat-source-edition-2.md) | 290 | `declaration-track:e6d8b4716b52276348b18f41cf43b75932f65f30559a91925eea407cd1073fb0` |
| 56 | `def` | [zNeg](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/zneg.md) | 300 | `declaration-track:9ad34ccc8c8447cc8d060b33673bf0e0e86e3ea147e0b35f85354a2a4764f108` |
| 57 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-4.md) | 305 | `declaration-track:1c3d6bd45936443f445b77ea48eb45377eab7d77fe35b8024e67e758632baa9a` |
| 58 | `def` | [abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/abs.md) | 309 | `declaration-track:f69b5c8b671dec8abe42ec5eda8bbf6cce96f57735342e8a2de151350980d4cb` |
| 59 | `def` | [succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/succ-source-edition-2.md) | 315 | `declaration-track:91b172c6df38ec8c82ccde9f223d984eb667b617082ee7ae96d28f20dbcef963` |
| 60 | `def` | [pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/pred-source-edition-3.md) | 321 | `declaration-track:bd0738dcd6c26ad36f27a8fc83fd1ce779f140234ed4790b35d9f6f75dac27e1` |
| 61 | `def` | [bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/bit0.md) | 327 | `declaration-track:0a5f7de88662eefe689f86d0dc15e4e1b900aabf12ee77a295f8062070318e28` |
| 62 | `def` | [bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/bit1-source-edition-2.md) | 333 | `declaration-track:da12ac03516da52e00535d8be19f19697196b37bcbd41c18d7f1122f00735002` |
| 63 | `def` | [bitm1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/bitm1.md) | 339 | `declaration-track:465be1a13bddab5986b07695198dc675d8a3ad7b1e489dff8a3c99009181f74c` |
| 64 | `def` | [ofInt'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/ofint.md) | 345 | `declaration-track:73303cbed4f8be272345197a8ea035e3a77f694e80c81d46a5c2ead07e631879` |
| 65 | `def` | [sub'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/sub-source-edition-2.md) | 356 | `declaration-track:52ae2b35317068a2faa9973a8de52113586697ce5c4be1c7d46cd13d470b2e65` |
| 66 | `def` | [ofZNum'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/ofznum-source-edition-4.md) | 366 | `declaration-track:e7668625662b7c72e5ca5de2ce4b729ccf6deba1ef1ee61daf5b54c72e01339b` |
| 67 | `def` | [ofZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/ofznum-source-edition-2.md) | 371 | `declaration-track:7fe730c87796c1d2551d3461560e9c4f59461a842d2b9ea3dcaf5a85855d6173` |
| 68 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/sub.md) | 376 | `declaration-track:4d5e49ddb227746a4e383b52fc2dd8eb420c15277fe074c46e4685ed869d58be` |
| 69 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-7.md) | 381 | `declaration-track:25967633f88e6dd1303a837b5cea0b9e58db74824216cf475457f8a199436d7a` |
| 70 | `def` | [ppred](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/ppred.md) | 389 | `declaration-track:84c14aa7dd0445749f51bcff998fd7cee93eef20ea3c6cd4a20793c4dedc9983` |
| 71 | `def` | [pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/pred-source-edition-2.md) | 394 | `declaration-track:7efdf6a2ab7643f8cc6b05ec61602510e15d47979e434079d675f39fbf71482f` |
| 72 | `def` | [div2](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/div2.md) | 399 | `declaration-track:ef01ed3bf26a556fb667d57afe13da0f9df8c1900933deda491bd011ecf5588c` |
| 73 | `def` | [ofZNum'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/ofznum-source-edition-3.md) | 406 | `declaration-track:c2164a2f0f25d1d504f3d6a3afd2e325dfd193a2c755f2e09cae9eeb5d7dad5f` |
| 74 | `def` | [ofZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/ofznum.md) | 412 | `declaration-track:40683246e034ab9229394e9259beb5d777485e4cb8148fdf95145d24e8755839` |
| 75 | `def` | [sub'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/sub-source-edition-4.md) | 417 | `declaration-track:afd3a246e4158a395191eebfb25bbcec9afb9994d6df3557d80a937a832c65d5` |
| 76 | `def` | [psub](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/psub.md) | 424 | `declaration-track:3b4b9e1c79598dd4921de4f0d905c1ab569474eb1ce2ef9edd2d5298e56d46fd` |
| 77 | `def` | [sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/sub-source-edition-3.md) | 428 | `declaration-track:87c569b0a73ae81ecc191441b6b4e47266820e25c47c50d8406b81d45baa2cd4` |
| 78 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-18.md) | 431 | `declaration-track:73977c4e8c5d5ca4447e056b3eae9839867e8192c8c67927b3ab0c85a83472cc` |
| 79 | `def` | [add](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/add.md) | 441 | `declaration-track:52161cbedfa8a9a71171605914b1f9dfd9683b9d58da5e2335c28aca97405977` |
| 80 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-25.md) | 449 | `declaration-track:a15a2cc89fe2c7f494150e4700465b0e371aa36a3566ff31f608934eecfa8487` |
| 81 | `def` | [mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/mul-source-edition-2.md) | 453 | `declaration-track:c7eabc196a32b94f124f7e8538b728c2dc5a7fb9045033a9ed65ccd6682d28bc` |
| 82 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-29.md) | 461 | `declaration-track:c40f6ea65e3be0f84c45e5d09ac0624c9a0ab551147d5707ed3380da28a5f2a9` |
| 83 | `def` | [cmp](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/cmp-source-edition-3.md) | 467 | `declaration-track:65ff05b361709e747ee1ced8820426abcb7d8731cd875afd5892356e7da2432c` |
| 84 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-22.md) | 476 | `declaration-track:8f24338402409ef2206811d3d7fee087112244894ff6a02c1226bbb5cfd06143` |
| 85 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-5.md) | 479 | `declaration-track:2077551b7b7420b34c5081e12fddb66aeb5bf73a20b0f8f7d6ca2c540cc1c4f0` |
| 86 | `instance` | [decidableLT](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/decidablelt.md) | 482 | `declaration-track:26fd60701ba9ce577ff4d7e85fa4c347c152eb2558458d6e1f12c16e2d4b7bd1` |
| 87 | `instance` | [decidableLE](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/decidablele-source-edition-3.md) | 485 | `declaration-track:d85da35e606a06e9b9cc47dad0ab9aa63f3cd2fd6016fad3b61f26d2112f3423` |
| 88 | `def` | [divModAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/divmodaux.md) | 493 | `declaration-track:0a1f74eff6e020131861608dd2ebc329ddba32e14f50ea841d4a22beaacad55a` |
| 89 | `def` | [divMod](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/divmod.md) | 499 | `declaration-track:7c86fb9958f1347002b0e3bbea7bfca00f36363b2f81aeb5ef3552a3ecf83d70` |
| 90 | `def` | [div'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/div-source-edition-3.md) | 509 | `declaration-track:9397c4b216f6d128204c9dd788d38b5f78b80fba32bc87595f3f46cb278f563e` |
| 91 | `def` | [mod'](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/mod-source-edition-3.md) | 513 | `declaration-track:7a3a86c0ce3914956401c5308fdaf59c794a4116673c07f9cdcd37cc2f93d959` |
| 92 | `def` | [sqrtAux1](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/sqrtaux1.md) | 517 | `declaration-track:421f2b45da6c2f1755198f6704e3c7f0febeffc4c602848576865ff1decc9a26` |
| 93 | `def` | [sqrtAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/sqrtaux.md) | 523 | `declaration-track:1dc768815328b71f93a69ca9cbc6d4a84df6e50d90d1993bd2d6dea1a451446d` |
| 94 | `def` | [div](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/div-source-edition-2.md) | 533 | `declaration-track:1a302df7b02e5c009286cf116557b46042a64bdcd461c8ee94c7bbdc95b94e8f` |
| 95 | `def` | [mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/mod-source-edition-2.md) | 539 | `declaration-track:455c67e02a8a6e2ba586386d4a69585d652f56708192fe4023e4316471e50a4a` |
| 96 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-3.md) | 544 | `declaration-track:17ee7c3a44cc3325d6b401d2e25810740f903703a75db586e21125b6ccf581ba` |
| 97 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-30.md) | 547 | `declaration-track:c753225fb7898e2242754759c058b0541fd28efbe0bb6ad8085bfcc0dabb91e2` |
| 98 | `def` | [gcdAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/gcdaux.md) | 551 | `declaration-track:738897ca6705d4b5bf67ead3214d5a6b73ac75e2c661981c972de1d94f7e610f` |
| 99 | `def` | [gcd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/gcd-source-edition-2.md) | 557 | `declaration-track:ea11da356e7f2c1396ef4d57e965cfd94ecef6f5a337c126935b8c4eb84b506c` |
| 100 | `def` | [div](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/div.md) | 565 | `declaration-track:165fa28538cc804e4ead9e48487fbedf38f5293121b2056fc7d47f7cea80966a` |
| 101 | `def` | [mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/mod.md) | 574 | `declaration-track:308257153eae5d084f8beb9a03f2e7a798977ac1c5d94e183e5a9fed4e4561ef` |
| 102 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-33.md) | 579 | `declaration-track:ec3a17776fc9303cadafa17cc6d86be2d94fea06b1e321a35046201e9b24d72d` |
| 103 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-11.md) | 582 | `declaration-track:53676835389183743b656d4048a5f39b1397ac9e1a2cba91345b675c98169e7f` |
| 104 | `def` | [gcd](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/gcd.md) | 586 | `declaration-track:3aebbb51332a6c598e68a80ec1ae4a6356442d1a1f45d1b624e67f60a9fdf19c` |
| 105 | `def` | [castZNum](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/castznum.md) | 596 | `declaration-track:7fe34e8ba087498bd254f263d2e1835ffdf1aecd95843b69c7875bd2da0abe46` |
| 106 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-24.md) | 602 | `declaration-track:9c4debbaa2f05dc1c41373e15bbcd9c155830da42345b2b73da67c05fbda4c0a` |
| 107 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/NumBasic.lean/declarations/instance-source-edition-6.md) | 605 | `declaration-track:20c6355fed1b2ffdf9b94b8e80c4412c41318eb0ad648890d120751c3b1e1c36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eaad38fae72f2366ce4973b5b0324776f017d71b4416c59d12c8b72ab36b3379 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variantbaf371c66d10e21bb931d597ecce86863fa74902a696bb6c21585c96119d9f4d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Basic/Variantbaf371c66d10e21bb931d597ecce86863fa74902a696bb6c21585c96119d9f4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
