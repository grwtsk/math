# Verification target: Encoding Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f447d5a01f929152d8ec9d0ae965e12c1aefa78f",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f447d5a01f929152d8ec9d0ae965e12c1aefa78f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 14; external provider; requires a separately pinned dependency.
- `Init.While` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.SInt.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.UInt.Bitwise` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isEncodedChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isencodedchar.md) | 48 | `declaration-track:413c7c8ba1778182a6bc3668198ca24122bcdf16a1d4853d15f3efd986aed35b` |
| 2 | `def` | [isEncodedQueryChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isencodedquerychar.md) | 55 | `declaration-track:7a041e09a1f58f581e9237f1bd0584834ed0a9f3d3ed8db61baf73ff26272319` |
| 3 | `abbrev` | [IsAllowedEncodedChars](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isallowedencodedchars.md) | 63 | `declaration-track:8466750c33550602e806ba3c5dc94f5433a737782011a218abd4991196e7cd2f` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 66 | `declaration-track:c7967c926750b444abcf994f1ea33b8804839c6250682deadb886a19b0218545` |
| 5 | `abbrev` | [IsAllowedEncodedQueryChars](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isallowedencodedquerychars.md) | 74 | `declaration-track:c94260734ec8e95f892c1631cdaeb3609e4eee9fcf024257e485cfa2a33a2888` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 77 | `declaration-track:6ac5f085d1b69deac5348bfe224f8a1564f9ebf2a62630686229fe105aa83b58` |
| 7 | `def` | [isValidPercentEncoding](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isvalidpercentencoding.md) | 90 | `declaration-track:4d89a3c9934afca4e63abe6824b5da0926a026fcfef9612ff9effea0818c8b5c` |
| 8 | `def` | [hexDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/hexdigit.md) | 111 | `declaration-track:95aaddcf0a9da4edb5ff07c0c556b3fd592ece4f36de8071f85b51915076c56f` |
| 9 | `def` | [hexDigitToUInt8?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/hexdigittouint8.md) | 119 | `declaration-track:2a74ab51881cb4f0a67abb35ac2c882b98d55aeb4b28229035b5ef9a8c9da1cb` |
| 10 | `theorem` | [IsAllowedEncodedChars.push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isallowedencodedchars-push.md) | 129 | `result-track:d9f05a09187be2c4e0f4330452a9e4d25adefc925cdc9287038eace1c85942c8` |
| 11 | `theorem` | [IsAllowedEncodedQueryChars.push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isallowedencodedquerychars-push.md) | 133 | `result-track:0ac790b23d165749aa6ae217be1b272dc8f451c43f9e03998b60ec88e0099833` |
| 12 | `theorem` | [isEncodedChar_isAscii](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isencodedchar-isascii.md) | 137 | `result-track:231c9a258c8b67d468fb3507978ecdc5e37c224db1344a7141c25476c4eec3ac` |
| 13 | `theorem` | [isEncodedQueryChar_isAscii](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isencodedquerychar-isascii.md) | 141 | `result-track:e5ab28150ab3cf4fbf3d3709e54ff9ef65254fc4aefc0b3fa078c135fdc3ae29` |
| 14 | `theorem` | [hexDigit_isHexDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/hexdigit-ishexdigit.md) | 148 | `result-track:660a61d7a624ea94f54728bf483a4cc939f1d2bf1cefe0885ca76c0217b9365a` |
| 15 | `theorem` | [isHexDigit_isAscii](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ishexdigit-isascii.md) | 175 | `result-track:5cc7789f76489f14c5cf494a1b39f1956f51a3096a5335dda66160fa23993b2d` |
| 16 | `theorem` | [isHexDigit_isEncodedChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ishexdigit-isencodedchar.md) | 182 | `result-track:418b60ba5a7ae471913919cc9027fe9a5db720feebb3ae9d2651c64ecfa96b8b` |
| 17 | `theorem` | [isHexDigit_isEncodedQueryChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ishexdigit-isencodedquerychar.md) | 187 | `result-track:71a52ab9a898f08269595fd25548e00a3c6d1618adf93fcca1c9f00273948233` |
| 18 | `theorem` | [all_of_all_of_imp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/all-of-all-of-imp.md) | 192 | `result-track:861e1d0a1180e07c2424a8cd7ca5c1424bf9221467c5e3443b1282a7b4ebe102` |
| 19 | `theorem` | [autf8EncodeChar_flatMap_ascii](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/autf8encodechar-flatmap-ascii.md) | 198 | `result-track:3a2c48cc0ec0ae47a4b5bddf52317af24fb5f1b9a7d6b4d8e3cfeb8c61b32e5d` |
| 20 | `theorem` | [List.toByteArray_loop_eq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/list-tobytearray-loop-eq.md) | 214 | `result-track:3d2d5840790f39b89c8f33432d6b954431150626437e1c050988712533d1dad3` |
| 21 | `theorem` | [ByteArray.toList_toByteArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/bytearray-tolist-tobytearray.md) | 220 | `result-track:a6c7785591b147930622954bcacec8d9bec381e2bcc053977d818283f2fa3438` |
| 22 | `theorem` | [isValidUTF8_of_isAsciiByte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/isvalidutf8-of-isasciibyte.md) | 229 | `result-track:7bfb891c842375b95dd9d92775f4b22dde47a8fa6674ce427dbc3d69112a2b11` |
| 23 | `structure` | [EncodedString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encodedstring.md) | 248 | `declaration-track:93193681ab43b0e4100cbdf5e950e44d5e4d1eb4bfb2cc06b086f75c909195b3` |
| 24 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/empty-source-edition-2.md) | 266 | `declaration-track:fd896138266ddefbc36359db8da5a192b7dd9119981a08a08e8d5eb334c7c145` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 269 | `declaration-track:c3dbce054e86cedbc0cf78a3fb3a649a57279c5fb091046b4c0cf3e1bd0e32ab` |
| 26 | `def` | [push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/push-source-edition-2.md) | 276 | `declaration-track:c2a74c65dd58ab9f54c4b0444761761709c1704a97ce1ab12472754b6f52203b` |
| 27 | `def` | [byteToHex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/bytetohex-source-edition-2.md) | 283 | `declaration-track:57ea805be5536a3c33caef5139d13dcf0b336b0c400f23215b7402fd01098a42` |
| 28 | `def` | [encode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encode.md) | 306 | `declaration-track:1bcba8a50c127bae345fdda08bfaac01be2f95077147bca463561143809d87fd` |
| 29 | `def` | [ofByteArray?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-11.md) | 317 | `declaration-track:da4db5c8593d93666eaa55f305f5a7018a3f2bc333a438e19851d87d131f71fc` |
| 30 | `def` | [ofByteArray!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-3.md) | 325 | `declaration-track:18bb73c17813f1593aecfc549b9ffadfe153c2c5f7f024dcfe59f319adea198d` |
| 31 | `def` | [ofString?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofstring-source-edition-4.md) | 334 | `declaration-track:e4582a0b82703f45cfad02e58be91d9ef5f183368b68c8d0faec460034e315a3` |
| 32 | `def` | [ofString!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofstring-source-edition-3.md) | 340 | `declaration-track:b656797d55e408e116b101c7e946cca031af8939d020bd91540091838f5da3ee` |
| 33 | `def` | [new](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/new.md) | 347 | `declaration-track:4785441b20aef97f25a2c737bcdf72247e4005340143810e4ff2b138ce45e679` |
| 34 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 350 | `declaration-track:8abd6c91d3556bee401e83ff36c181848cbd09383df92266dd7350bd1e9000ec` |
| 35 | `def` | [decode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/decode-source-edition-2.md) | 357 | `declaration-track:2d8efba22613e7e9b274a852f10cb5ffdd9189d60b3a7c07faf30aaa66a04a37` |
| 36 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 382 | `declaration-track:1c56e41dbde2c571394a0b2db6e9c7ffa27a046dfaf983b16ed11dc8d14c1ccf` |
| 37 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 385 | `declaration-track:085e35153ef5e21273211a569cfbafecb9115bdd7664a3260ac6966db0ce6558` |
| 38 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 388 | `declaration-track:1101c1f33c2887c24de1be60416a8a35f5bf071bd9081eb17786ce2c6fda6b91` |
| 39 | `structure` | [EncodedQueryString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encodedquerystring.md) | 401 | `declaration-track:aceb0b7537365b82ace2fef4715fec3d1fdf87131f191c121a8cfb60b99ff223` |
| 40 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/empty.md) | 419 | `declaration-track:a0442a977b81ac3231e951641f8e8e3965804ff56ce14361c101c77606ca2128` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 422 | `declaration-track:e5298e4e63235ebc6bc06eeaef76a5b88418ae285d2cad52f793d769cb072643` |
| 42 | `def` | [push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/push.md) | 428 | `declaration-track:c29f4311c6587142076c789e32a7d66120907a9bc93ab6f1e57e2bf16b5066af` |
| 43 | `def` | [ofByteArray?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-4.md) | 435 | `declaration-track:19b57a6a80b13e165d2bb753242899baab966b1b0ab3dbab2a94d83568daee5a` |
| 44 | `def` | [ofByteArray!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-2.md) | 443 | `declaration-track:095e8c4669c11bcd1b86349ddaad06b5dbfa72b588fbc07fa22318be6dda8c1a` |
| 45 | `def` | [ofString?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofstring-source-edition-2.md) | 452 | `declaration-track:9eb4c074c0c1197159d21efe1b44d3fb92b6f37cea9630bd46cadb18a74f78b6` |
| 46 | `def` | [ofString!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofstring.md) | 458 | `declaration-track:2ce912e26e628f2622c5c6fd9bfab37b6154bf1b77c2dafd2bce5d6c0779b70c` |
| 47 | `def` | [new](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/new-source-edition-2.md) | 465 | `declaration-track:7a82d94e46ec12783be9a91ad7f0c98d2c9c238a03d85f34d8fcaa0760025475` |
| 48 | `def` | [byteToHex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/bytetohex.md) | 472 | `declaration-track:3612b83f4231b276dc06fab34469e5e0406cdd7241dcbf0b689a404d506be0f0` |
| 49 | `def` | [encode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encode-source-edition-5.md) | 490 | `declaration-track:cf1272856cd0b6a24d73d7c6c627cd3c7debd307e959082fdcba1d7d0f7a29f8` |
| 50 | `def` | [toString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/tostring.md) | 502 | `declaration-track:2ba6cb267eb46b8c687cff3ea4caf650cbab8eab800fe1f8a9f83f908626e1f2` |
| 51 | `def` | [decode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/decode-source-edition-5.md) | 511 | `declaration-track:e502249963cfe067f593dff3d93bc9a0f3a1bb3fe7d0a8770c684aac61abf54c` |
| 52 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 541 | `declaration-track:52cd4ecb813e597f800e7c7a4e89103811ba0ee06156219a46b2a5c7f7d4a5b3` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance.md) | 544 | `declaration-track:08510406ad496fe8ed9221bbf9ce8cf12aab9c1e86f6da9d2acfa0b20e843400` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 547 | `declaration-track:bc905a35215833615e7f2289d0f314fd8bd333f12dd82ec62dd13d37ce593721` |
| 55 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 550 | `declaration-track:a732cbdb6d08341555a4c905b35cfaac44ed092a07b3604a411a4ca1133b23d1` |
| 56 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 553 | `declaration-track:e0227d5f3ccd3e792caadf66bd9b32dac67a9a91bdff5d20e8443cac4a097ce0` |
| 57 | `abbrev` | [EncodedSegment](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encodedsegment.md) | 561 | `declaration-track:c665576e126b04f2a7e53aa61f67473a0ae96f99346c69398d2f612a2a2f9592` |
| 58 | `def` | [encode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encode-source-edition-4.md) | 568 | `declaration-track:a2171453ad57b222821843824675e51e8e13d19d46a97191eb381638fefac89b` |
| 59 | `def` | [ofByteArray?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-5.md) | 574 | `declaration-track:22c6832b8903c5199da411901d6474a2b9b7f22b484bd2ae9edd5563d1990dbb` |
| 60 | `def` | [ofByteArray!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-12.md) | 580 | `declaration-track:eb60aaeff2f3586527a4032221d5517ee325d50b652574276becb4a7fd50841a` |
| 61 | `def` | [decode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/decode-source-edition-4.md) | 586 | `declaration-track:9e0587936be1bba3841b3407147ed23d871c4728573bab841724842c775bc3bb` |
| 62 | `abbrev` | [EncodedFragment](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encodedfragment.md) | 594 | `declaration-track:8946a8acc918448bb66d1023394189f725a8267e4372972d5d57673793493023` |
| 63 | `def` | [encode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encode-source-edition-3.md) | 601 | `declaration-track:838706b13fac279898226ccd1814e5285df8d0468f286814c0e821745b08dab9` |
| 64 | `def` | [ofByteArray?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-7.md) | 607 | `declaration-track:3d125ee94a72f5416cf8cd3f775c9ac86d153c5f4d36dbe89a7bcc5449cb3346` |
| 65 | `def` | [ofByteArray!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-10.md) | 613 | `declaration-track:c09b3d0c68f20e98d185b9fd3c85eda508bc5db8a6b0ff30ce1a8ef851d3e4a9` |
| 66 | `def` | [decode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/decode.md) | 619 | `declaration-track:2831ad615a568cb25e4cf96580a03cf62727041d18860f93609a54ac9589eb2e` |
| 67 | `abbrev` | [EncodedUserInfo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encodeduserinfo.md) | 627 | `declaration-track:0d11d39b600cd0f8b40772be67c059f67bcbd572e8a0b60b7001b9b74a4c4109` |
| 68 | `def` | [encode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encode-source-edition-2.md) | 634 | `declaration-track:48d749341e5d45c763802e9fe54c81258f6a689485c31ca22c39a82c451fd792` |
| 69 | `def` | [ofByteArray?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-9.md) | 640 | `declaration-track:6735c09595987d4edee5665a3f0f68921fe4e0503084f6a461657bc8e8a3e7d9` |
| 70 | `def` | [ofByteArray!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-8.md) | 646 | `declaration-track:467c436b22abc7eebdc8b60bb052aa520c5ffc2b21553f0cd4138d7ce185374c` |
| 71 | `def` | [decode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/decode-source-edition-6.md) | 652 | `declaration-track:eddab5f8ea4ab1a02cdc6e3b8fe2aa68963b2dbafb897246ff3a8f8c753bd9b2` |
| 72 | `abbrev` | [EncodedQueryParam](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encodedqueryparam.md) | 660 | `declaration-track:3761d02fae4e540c6b825df39d4971ceb8a2ea4817134ea49c295ea2a84e5bcb` |
| 73 | `def` | [encode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/encode-source-edition-6.md) | 667 | `declaration-track:f21eeec4fc98701803570ff68c8ffe967be5f5bb032a1ebc80508af8138003ed` |
| 74 | `def` | [ofByteArray?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray.md) | 673 | `declaration-track:03684dc59e18e7668ece02e189694329d6ef48e155e0f17af59dfe0409f031b2` |
| 75 | `def` | [ofByteArray!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/ofbytearray-source-edition-6.md) | 679 | `declaration-track:34ee991899a731c60b45679e4cb3bafdf1864d5dde86009624f29313460eb6b4` |
| 76 | `def` | [fromString?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/fromstring.md) | 685 | `declaration-track:721e06f216abe70b62c6d2f97b940d76469588f48a813eb0f8befade99026a64` |
| 77 | `def` | [decode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/EncodingNamespacedPublic.lean/declarations/decode-source-edition-3.md) | 691 | `declaration-track:527aebab05a494cbded7deec648644289b5657d5dc4cf5cee6fac401a0fbbd1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d855d63961e1780fea71dbc56cbc62f2a458b79728a133c20893d02f2373cbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Encoding/Variantc3229878cb2d9bdc5fe8f0c300a05dd34fe076e7321fc27de4c8bf828dbd86b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
