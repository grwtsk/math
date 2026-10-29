# Verification target: Manifest Namespaced Digest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a430afb0a6b8588b6d59739e2a0deb5402ed498",
  "lexical_observation_count": 126,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a430afb0a6b8588b6d59739e2a0deb5402ed498`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Digest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/digest.md) | 26 | `declaration-track:c89c83681d660ce3b19302c4dbe37e2e6480072973f5ad6b38ff01b1b311463e` |
| 2 | `abbrev` | [WireString](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/wirestring.md) | 27 | `declaration-track:b64e33e8584d2cd7b20547f1b821de451672074f60bd224cec9b9993eea8c097` |
| 3 | `def` | [maxFrameBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxframebytes.md) | 29 | `declaration-track:41db43abb1769bcb5b7efd65e4ffbe58dd0ec2313806e2d659ea5e4990729176` |
| 4 | `def` | [frameOverhead](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/frameoverhead.md) | 30 | `declaration-track:fe78dab20c843d19fffd3016e5c1eb7914584fa5863ce0d10c14f09ef5cd98a9` |
| 5 | `def` | [maxStringBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxstringbytes.md) | 31 | `declaration-track:64e2a9111bb12c63a3e6a6838c06aa684bd90348dbf81736919a271f9b0b98bc` |
| 6 | `def` | [maxSequenceItems](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxsequenceitems.md) | 32 | `declaration-track:5bf6674eed2db31e8ff5629809b9bfb5df5764fc9badbfa87ffe943512021b49` |
| 7 | `def` | [maxFoldPath](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxfoldpath.md) | 33 | `declaration-track:cd19ab71f304ad7e625961612f38b46178c85f0b7f5441d47534d456ac5354a2` |
| 8 | `def` | [maxOperators](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxoperators.md) | 34 | `declaration-track:0d89baeea9ffe263937b93fb147270ecd47ad6b4e51bdb7c2168f60011065abe` |
| 9 | `def` | [maxCharacterProfiles](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxcharacterprofiles.md) | 35 | `declaration-track:d58207b60bee142c2861e28ba39300e2d942ac0e622251bc11187b9fdc106003` |
| 10 | `def` | [maxGammaEnclosures](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxgammaenclosures.md) | 36 | `declaration-track:dc3bc28e6cba00fbbcc76696bf49b97346c48af06e9f2f16d71acf1253e43c7d` |
| 11 | `def` | [maxTerrainNodes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxterrainnodes.md) | 37 | `declaration-track:2dadba5441b6f9196953c412f5b2f2831509648bb8fe5e7d93dea6159be78938` |
| 12 | `def` | [maxTerrainEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxterrainedges.md) | 38 | `declaration-track:be1ade9606dbc6da6fe230305b30eb44aaa0de788a53903fe89cebfb709a69b0` |
| 13 | `def` | [maxFiniteDimension](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/maxfinitedimension.md) | 39 | `declaration-track:b48ea43a41914b960dac1213f9be45f8fc6d955dab4fad095e7c5f51749dfb6c` |
| 14 | `structure` | [SHAState](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/shastate.md) | 43 | `declaration-track:b3111dfdf3410f52b4c4557f263e94bb35707610ae510061de6df5502c61d5c8` |
| 15 | `def` | [initialSHAState](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/initialshastate.md) | 53 | `declaration-track:b08a2430de56c4661ad93c5520ca9b211b5fe8da9afd07b9f12bc074b742d052` |
| 16 | `def` | [roundConstants](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/roundconstants.md) | 63 | `declaration-track:efb9e3f5f195fab731dcdba8c64f25c83ea6781485aa7cc882191d3262e0b912` |
| 17 | `def` | [xor3](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/xor3.md) | 81 | `declaration-track:68c7b25a18bcd6ba14f14105ed168c93638d99942d59557e27609a2081bbc085` |
| 18 | `def` | [rotateRight](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/rotateright.md) | 83 | `declaration-track:251d6adf4926aef6a7504a44c05eb339e25dd3dd56ede7423f486080c91db4fa` |
| 19 | `def` | [bigSigma0](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/bigsigma0.md) | 87 | `declaration-track:7243fb91146830443163c0fb85e75297400ea8a47e7c32c10ff8ad1753361749` |
| 20 | `def` | [bigSigma1](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/bigsigma1.md) | 90 | `declaration-track:eabe77fdfeb06aacd3aaa199a1669731accef1b4c9aece95a212d185f984e101` |
| 21 | `def` | [smallSigma0](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/smallsigma0.md) | 93 | `declaration-track:8b706f7b53e0d296bb0f8b80c106fff97b18a07cd7ef2fc4327820e12a2197d1` |
| 22 | `def` | [smallSigma1](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/smallsigma1.md) | 97 | `declaration-track:d771e2de4d0dc87c78c0189559bacf6a6ff52a5c23a1ea0727e1941df0a24246` |
| 23 | `def` | [choose](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/choose.md) | 101 | `declaration-track:10c4c7e77b5287ad5d802a07d5ae1d83ea2bd75c45defd3275b3b02e2909f47f` |
| 24 | `def` | [majority](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/majority.md) | 104 | `declaration-track:9b3ba889dd9d2fff67c70bbdf0c8b32d707a6589b2572fcd7eb1fa3ab4fec160` |
| 25 | `def` | [wordOfBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/wordofbytes.md) | 107 | `declaration-track:79dd686a64e7b7a39d5bc05c566180fd331a4eb45214a8e451f3b260050bc471` |
| 26 | `def` | [initialSchedule](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/initialschedule.md) | 111 | `declaration-track:2600e96dcb86b1c7aba57a81741b8eed1358c958b4f63d93df849ae06c38a3c5` |
| 27 | `def` | [extendSchedule](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/extendschedule.md) | 114 | `declaration-track:1dc007125d6a01acbed7885f4ae2ed1c0fa18bb262bf7f4e6382a6492581637a` |
| 28 | `def` | [runRounds](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/runrounds.md) | 122 | `declaration-track:1b26779212a3f8007b650a91e3e2d70ed1a01f55734430e9633d6836af01614c` |
| 29 | `def` | [compress](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/compress.md) | 141 | `declaration-track:2fe8401fa721963f92fec6ad6b28d391b550fd3c58f5c5e70fcfbcaf3af865ba` |
| 30 | `def` | [natBytesBE](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/natbytesbe.md) | 153 | `declaration-track:13111806df4af0e0f7f166b8ec6f23e47e23b04b18062a07729da50787b9bd12` |
| 31 | `def` | [padSHA256](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/padsha256.md) | 157 | `declaration-track:00690b304d9a3d89f53cde7de564642eeb59f690ad37347b24f60eb7a0936da0` |
| 32 | `def` | [wordBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/wordbytes.md) | 162 | `declaration-track:7ad9377bdebac948f82d5a503d9b1fe41f5ed183cf06de491dc9b1bc693f012d` |
| 33 | `def` | [sha256](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/sha256.md) | 166 | `declaration-track:901bc08fc7c630d7018abca3f45627806d21b96faa6e72e14a1f8aa22af63038` |
| 34 | `inductive` | [FrameTag](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/frametag.md) | 173 | `declaration-track:957d08862e21476c16e20801b76c73fc95e59adca656cb25dede96894727303e` |
| 35 | `def` | [FrameTag.byte](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/frametag-byte.md) | 179 | `declaration-track:62e7a7684ee7a1985a4e6da26bdc2a81331bd6894dbe3458c1e103d3dc7f3642` |
| 36 | `def` | [decodeFrameTag](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/decodeframetag.md) | 184 | `declaration-track:b831b41f54726627213abd7bbbf1e3bdc4c8ace1034e922dca728100dd833747` |
| 37 | `structure` | [Cursor](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/cursor.md) | 190 | `declaration-track:5bc523164a50b543962840a2ad3c75d4615eb280d8344f6ae1a1e9ef850245f6` |
| 38 | `abbrev` | [Parser](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parser.md) | 193 | `declaration-track:49578b0854d48165d274b1ddd2b4f17e0516b3287bac8f56bf2148d08850bf1b` |
| 39 | `def` | [failure](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/failure.md) | 195 | `declaration-track:44d4bdb7464e9097ff64bd8d2ae7200ab277059a34b0fc21513d8fb969607f31` |
| 40 | `def` | [ensure](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/ensure.md) | 197 | `declaration-track:b23b7614e5ea3b46fcc602790ff3e2d423d8e0665068ac1fe6988cb63b9ec05a` |
| 41 | `def` | [readByte](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/readbyte.md) | 200 | `declaration-track:7fa80d37b580171acd9a799e141629ebd680628cabb39cf14588b6c9c998d0d6` |
| 42 | `def` | [readBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/readbytes.md) | 208 | `declaration-track:e3a91dcf60c157699a25e8f22ae9f2afb3c1a81a88af8ddd41634f6c2995d0a3` |
| 43 | `def` | [readNatBE](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/readnatbe.md) | 215 | `declaration-track:5f71c0dc60ccadbe2ecf27d739b6d86fdcc495da063a971235e3103edb073b7f` |
| 44 | `def` | [readU16](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/readu16.md) | 219 | `declaration-track:b05152abcfe02d7266759334a9d6570bdd763c845256a6d874cdfa75da429912` |
| 45 | `def` | [readU32](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/readu32.md) | 220 | `declaration-track:ec447f520273a5a5cbe58750d00f6e199e04a2332a5d2d5b4eed112d633c7fe5` |
| 46 | `def` | [readU64](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/readu64.md) | 221 | `declaration-track:67a0bf85dcd468381c3509cb9d0d452d4e3f7ce0e3cfcf9e2fcfa0c14df91903` |
| 47 | `def` | [readDigest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/readdigest.md) | 222 | `declaration-track:758179c3c1d69d579b96cb81d1b3a265801037cde303660ce1acee516ae0fa6c` |
| 48 | `def` | [withRaw](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/withraw.md) | 224 | `declaration-track:9f505ee2f202124fe071d4358e67ae3d47b7cc9c5137beb5e5293d0f60a7b7d0` |
| 49 | `def` | [runExact](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/runexact.md) | 232 | `declaration-track:bcb422d233dc30f527b616326f2d7296ed05bd19cffb23943451c8a7cbf0891c` |
| 50 | `structure` | [Envelope](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/envelope.md) | 237 | `declaration-track:b2da76bf1c8bbe0155ecfda2a13b8b0e689e9923bb2443af4faf519ac58dbab8` |
| 51 | `def` | [magic](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/magic.md) | 243 | `declaration-track:66b7b20f6afa5d9dc1daeffef41abb59229e3001331c44398917c343fde0ec53` |
| 52 | `def` | [decodeEnvelope](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/decodeenvelope.md) | 248 | `declaration-track:76b67303f84a356f5b7078b0d3c1eb066f3bf1dbafd97ab99a9c64d5f7705f6d` |
| 53 | `def` | [encodeEnvelope](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodeenvelope.md) | 271 | `declaration-track:29ddc04aae195b160de65acb68859d9abc0bc59e577192282d96cbebced77555` |
| 54 | `def` | [continuation](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/continuation.md) | 278 | `declaration-track:b0d327b6ad903be6270ed92ca4091c1af5c441afb3357c4b6130a5a8f182a002` |
| 55 | `def` | [validUtf8](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/validutf8.md) | 281 | `declaration-track:68beaf7ab121ffb033ee7ef54e1e4e061ea2fcb5cbb911ca090f449cef49645c` |
| 56 | `def` | [parseString](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsestring.md) | 319 | `declaration-track:14b023a47a2b3f718035f9714d302f9d484a3ba4b36748d25b4fbef459ec3e73` |
| 57 | `def` | [parseCount](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsecount.md) | 326 | `declaration-track:7f75b8ed32f7cdf114cb316deeca8bafa25c7ee954918db7883356ec552adc51` |
| 58 | `def` | [parseMany](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsemany.md) | 331 | `declaration-track:b69e4be86733bf597da6d18692da4698384a66ec0d6d21881fc85a382fa4d6dd` |
| 59 | `def` | [decodeI64](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/decodei64.md) | 338 | `declaration-track:4fa3e3d450c4733c631c7926dbb75d169da5e71e962edd364149f6bde507fcc4` |
| 60 | `def` | [parseI64](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsei64.md) | 342 | `declaration-track:955b11e66d6c9484b99b5056abc040a261e01d88e889526fd7198dead56b5f3e` |
| 61 | `def` | [parseRational](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parserational.md) | 344 | `declaration-track:d2072a537707426701860dc18e228022aec7e31cc1898bffabdf7911a435cb42` |
| 62 | `structure` | [ExactComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/exactcomplex.md) | 352 | `declaration-track:4d50a7592b9ca5ef0259042a2d3d694df98bb921ba0a4193b8c7cde80182a68e` |
| 63 | `def` | [zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/zero.md) | 359 | `declaration-track:706f7e3d01f68f1c8aaaa1226eb5d544b07bf87d4fc970f4a622a039e9e4315b` |
| 64 | `def` | [one](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/one.md) | 360 | `declaration-track:1f1ca3ed225d3b6b1ac8aee1e2b54f4e2c07aff3e6fda9218a3b54a683a6e444` |
| 65 | `def` | [conj](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/conj.md) | 361 | `declaration-track:ab6605c9808758517ed407ab6dc0f800732a1bfcec2da16466b264cb98d9a2ac` |
| 66 | `def` | [add](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/add.md) | 362 | `declaration-track:ae798141756223332e8d33395ada9977790a817cf577a19817b4a38decd6c033` |
| 67 | `def` | [mul](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/mul.md) | 364 | `declaration-track:8998a1d85973ac0f45e60dd16d984fcbe683203a87c04aed17ea22e77fffcd1c` |
| 68 | `def` | [normSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/normsquared.md) | 367 | `declaration-track:8f2e51a2f4fd92c696e8d1865838460ab9d515e0dd954f88edddd264df98fa1a` |
| 69 | `def` | [parseComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsecomplex.md) | 372 | `declaration-track:35dc7dc8ce9f7e2b6403cf7f0907f4d43f696db3533972ef0ad743e6a68f3d5d` |
| 70 | `structure` | [Dyadic](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/dyadic.md) | 375 | `declaration-track:2a7cf51a7dbf8867849fa9a12ca10a560efd605dd7e35f8a73fc81f9b3a3a93b` |
| 71 | `def` | [parseDyadic](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsedyadic.md) | 380 | `declaration-track:30a87fa5e2f4c3cd8ad0908935ea94e5c9f870e6d9ca8f0b4adcb05a50e97a4c` |
| 72 | `structure` | [VectorEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/vectorentry.md) | 388 | `declaration-track:f477f242b3ecb7a9b934dbf1dfd27b78a71669ccbfed4555432e6fbfdcfc2f21` |
| 73 | `structure` | [SparseVector](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/sparsevector.md) | 393 | `declaration-track:164194d4c67cbe1bdf55e44b838584c5de9b2efe48d906fe253822147850590e` |
| 74 | `def` | [SparseVector.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/sparsevector-valid.md) | 398 | `declaration-track:2dc6a4c963a796ca318d9d2a93ce2eac4784a8e6fcac5d9e8971b01345a84803` |
| 75 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/instance-source-edition-2.md) | 405 | `declaration-track:5f9e9c45c80bac03c7d073b69443edb7892947980454b35a3b3b61bb8654172b` |
| 76 | `def` | [parseVectorEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsevectorentry.md) | 409 | `declaration-track:e7559b116daec51b43e7b2489b912d771908fb5fa9c3c483296b6ddea8077ec5` |
| 77 | `def` | [parseVector](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsevector.md) | 414 | `declaration-track:e3ae64d017380f405a5711462d14a1f01e1a9e4f0881ac76a2e9c7e2d4619ce8` |
| 78 | `structure` | [MatrixEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/matrixentry.md) | 422 | `declaration-track:0bd44597a29ef45c140b9895c0573745d79e75b73bb58a42a4b0f3cc46dcf940` |
| 79 | `structure` | [SparseMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/sparsematrix.md) | 428 | `declaration-track:470ff188334f603f79dbcab70fe526ec5dc05a5dd2770642137a7366867558a4` |
| 80 | `def` | [SparseMatrix.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/sparsematrix-valid.md) | 434 | `declaration-track:a947fa1769cdfee373b978fbd44401d60aa45c71f547b65e65bc64ff5f2d753a` |
| 81 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/instance-source-edition-4.md) | 445 | `declaration-track:befcddbf8e4001f27c387553ff36c20fadd8c337337cc96d3c4a1cdbf962ebc9` |
| 82 | `def` | [parseMatrixEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsematrixentry.md) | 449 | `declaration-track:ac68afeaf313033a81d14d819ee928d63a9082e3416a0c11457f9b8e4647e39b` |
| 83 | `def` | [parseMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsematrix.md) | 455 | `declaration-track:c9ab8a0fc458eb08baf2b122c0dd318d0f0b9af3994fe02bda14e572a6864db1` |
| 84 | `def` | [encodeNatChecked](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodenatchecked.md) | 464 | `declaration-track:cda3a682f5c150edaec7b80e89f41a8824338c76ed56887853b6b5c0dff1a87c` |
| 85 | `def` | [encodeI64](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodei64.md) | 467 | `declaration-track:2b687c86e8986a8ab58ff287def328fdfad6b9f6879c996d51e6c1d5fa9d9973` |
| 86 | `def` | [encodeRational](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encoderational.md) | 476 | `declaration-track:abaf8dab7258d1ca8a79500d5b8cc0a6c873380b385ae4ae898852d8a2707bf7` |
| 87 | `def` | [encodeComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodecomplex.md) | 481 | `declaration-track:701b806ee50e2fbf95fd5be44a1d0b2b23751dcadfec105360ff6258aa9f602d` |
| 88 | `def` | [encodeSparseVector](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodesparsevector.md) | 484 | `declaration-track:0292b3869c47a241a0ec742b4bcc22ab112576ec39198161484d81e69e93d6e7` |
| 89 | `def` | [encodeSparseMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodesparsematrix.md) | 492 | `declaration-track:7be8f8fb01116b27266f30a3b958c5a59f86e4eaf05803960ececc907596dfe4` |
| 90 | `def` | [SparseVector.valueAt](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/sparsevector-valueat.md) | 505 | `declaration-track:9b28d2b8bb7cf2fe3c96d050ad5cd11797d48b749f333717a10a57c9051d80a8` |
| 91 | `def` | [SparseMatrix.apply](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/sparsematrix-apply.md) | 509 | `declaration-track:22e7e69b698696824ecb22df5821f4b0bf040c138604c8667a20f8139adf9e32` |
| 92 | `def` | [SparseVector.normSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/sparsevector-normsquared.md) | 522 | `declaration-track:2106e780732d452dc757861b1d0e92bfe48cf33eb08e8ded5d4f38090b5291fa` |
| 93 | `def` | [SparseVector.rankOneProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/sparsevector-rankoneprojection.md) | 526 | `declaration-track:6b3e41a6de9ae0a896433b5286f7b1b13fbbb1305f778726c250e8ceb33b85dc` |
| 94 | `structure` | [TerrainNode](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/terrainnode.md) | 537 | `declaration-track:654fd71da6b868dae32a609385a06bafa9fb53c63ef583444d18380e84b0d0ac` |
| 95 | `structure` | [TerrainEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/terrainedge.md) | 542 | `declaration-track:4b92462328976561865fab27436b5d605871218a5a8a4a8b86f2f01876dd73f1` |
| 96 | `structure` | [Terrain](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/terrain.md) | 547 | `declaration-track:97c9efbeb9e24a5aaa3b85d2e95d4c604159f60ac9c1e6a4ab6d46ba10cae1c3` |
| 97 | `def` | [Terrain.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/terrain-valid.md) | 552 | `declaration-track:0597c2637fffaf9e69bd11da12c0d41952d829de693b79ddace8d826e931737e` |
| 98 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/instance-source-edition-3.md) | 561 | `declaration-track:688f71a60b89882f3fbb8eb0c3077c8dcfe77cd74d9275aa427a7153a1bc4dee` |
| 99 | `def` | [parseTerrain](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parseterrain.md) | 565 | `declaration-track:16229f18e2f7e61237b74567be801a297b64df7118bfdcc819e4fd38b77d14b8` |
| 100 | `structure` | [NamedOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/namedoperator.md) | 580 | `declaration-track:010dcaaa2a985dd0a20c4da06af9b0e894310072bba0dcc796b1c0e8ebf306df` |
| 101 | `def` | [parseNamedOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsenamedoperator.md) | 586 | `declaration-track:5b5a309159be09466db530b892e08bc7b79ede39abd50b93e850798a1d45eb94` |
| 102 | `inductive` | [CharacterParity](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/characterparity.md) | 594 | `declaration-track:27967422114eccfd66bc9fe03a8635b824a9fd9fd407edc3e1f37c7ca85cc522` |
| 103 | `structure` | [CharacterProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/characterprofile.md) | 599 | `declaration-track:748781e7e511df32f1e2f75c48ef6ce7d52a234881367db2dab6af80f4048208` |
| 104 | `def` | [parseCharacterProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsecharacterprofile.md) | 606 | `declaration-track:0794cdfb29af89422150a8a171fa04a5b7c51b524733b21d2b5d93b5fa961b99` |
| 105 | `structure` | [ClosedInterval](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/closedinterval.md) | 620 | `declaration-track:343bcaca188322552c8e1d17e46ebb7b892f57ff7a4d3e0a364dc5f854c4bf16` |
| 106 | `structure` | [AdvisoryGammaEnclosure](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/advisorygammaenclosure.md) | 625 | `declaration-track:74a569df5b04a41ff7ce2b504a340112dbe371a414b11dee77ab212d6023d6a7` |
| 107 | `def` | [parseGammaEnclosure](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsegammaenclosure.md) | 632 | `declaration-track:89acfcb4ec4878c1c2e5f3a503a66cfe925703a9f3918acdd2dcb8b482cf398e` |
| 108 | `structure` | [RuntimeManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/runtimemanifest.md) | 649 | `declaration-track:ebcb8d8249c70de3aa5107a357bc5ba9f0d2a84362d520db60a55ce503d08362` |
| 109 | `def` | [RuntimeManifest.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/runtimemanifest-valid.md) | 659 | `declaration-track:e6273e93c6efb7f6c8eeafec2725bf3fbb9b0fbae97ffc8ade23040224f95823` |
| 110 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/instance.md) | 668 | `declaration-track:029e5c74022b3bb3aac4d44474e4353b326e58e260e064b24b776bfc3e509e61` |
| 111 | `def` | [parseManifestPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parsemanifestpayload.md) | 672 | `declaration-track:5a88a8ed49f27742d7eb5efdb69e42ab7b7c463142edb14c700b0d02425f620e` |
| 112 | `def` | [decodeManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/decodemanifest.md) | 696 | `declaration-track:053e242af63b4f8ae7a2b7a225a0b748d334f76211b0f0e10d5de196319c580c` |
| 113 | `def` | [RuntimeManifest.findOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/runtimemanifest-findoperator.md) | 700 | `declaration-track:fc76bb55e9c69ba372398222006ac51fbd6be7f4d8ab5ec378027ea434611fd5` |
| 114 | `def` | [RuntimeManifest.findCharacter](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/runtimemanifest-findcharacter.md) | 704 | `declaration-track:0a96091252d689482ffd6d971e547dfdfd1a296527abbec4967c42749673bac5` |
| 115 | `structure` | [ExecutionRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/executionrequest.md) | 710 | `declaration-track:a5ba922659989c32e40fd5e23605156ad0b7026277d818f48a2765347f5ceeff` |
| 116 | `def` | [parseOptionalString](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parseoptionalstring.md) | 718 | `declaration-track:ee8963de6c48d1da3e7019b25dc22a641a4919cc9af69d9764c5d83c1c62b7ab` |
| 117 | `def` | [parseRequestPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/parserequestpayload.md) | 725 | `declaration-track:2c0dad40a4ebb09e782c1940af2d18294ec051813a36938818990aa6e0d979ca` |
| 118 | `def` | [decodeRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/decoderequest.md) | 745 | `declaration-track:1a3e78f6a803d5918ae3d9165bde50e782e09759b4d46fb4bc7efe22a48c2192` |
| 119 | `def` | [encodeString](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodestring.md) | 752 | `declaration-track:b5cada2b81229c1f99e16648b89829087ff6aac2449db72f78bb6ae14bd37996` |
| 120 | `def` | [encodeTerrain](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodeterrain.md) | 756 | `declaration-track:0146de4625108aaba7df591ce3c82978c88dd57e7f5c698b9267303d3d625ec8` |
| 121 | `def` | [encodeNamedOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodenamedoperator.md) | 765 | `declaration-track:26e6577cc9b34cbc8e5a905f098342be83f4c44b91b190f2396702543b3e8c81` |
| 122 | `def` | [encodeCharacter](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodecharacter.md) | 770 | `declaration-track:63462e528c880005ef43fa815c99c004640f9e5af99fb384b629cfd70ccbc4ce` |
| 123 | `def` | [encodeManifestPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodemanifestpayload.md) | 779 | `declaration-track:0cb61bf7651aea33b78607b5bcafa2aad48b0efd2ee232605fe3e333dcf61776` |
| 124 | `def` | [encodeManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encodemanifest.md) | 792 | `declaration-track:17713de5ff4507f6ef98669ec235fcc155e2604fd11f6a2c9d863035e3a991fb` |
| 125 | `def` | [encodeRequestPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encoderequestpayload.md) | 795 | `declaration-track:34208dccc0819bb4279a173102662e5b70f2818c01a263b5340107afce08ba7e` |
| 126 | `def` | [encodeRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestNamespacedDigest.lean/declarations/encoderequest.md) | 805 | `declaration-track:8be3ed79767dc3db122d0102294864be30c7447acb8d12ba68061c83cd8f5c2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a34cf96ab3fcb8a509ae6adf2d084876d56564af5477873610721190e152043 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant12d18231ab059edeb89c12255cc64a3189319f986c039ae99039fbcec8e584c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
