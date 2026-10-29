# Verification target: Manifest Digest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6905ff6ffd5a0e0328877213c25669b14cb39700",
  "lexical_observation_count": 126,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6905ff6ffd5a0e0328877213c25669b14cb39700`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Rat.Defs` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Digest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/digest.md) | 18 | `declaration-track:a897c3dff036b4765b9f7d2739214aae9a46e3ad819b23d882e815946b6ae475` |
| 2 | `abbrev` | [WireString](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/wirestring.md) | 19 | `declaration-track:d2cd40623cedc7d1653da340022bf17af533d1a46901f3eef41d208f9c7cc748` |
| 3 | `def` | [maxFrameBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxframebytes.md) | 21 | `declaration-track:6d4754a3034f436ef84fd6eec18066afb894e2411e9e3980912d9bee5a825197` |
| 4 | `def` | [frameOverhead](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/frameoverhead.md) | 22 | `declaration-track:9b7d3e60883d521e3686ec00736a0d5d7ecaf49fa9b91073ce8deec7acdd0b83` |
| 5 | `def` | [maxStringBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxstringbytes.md) | 23 | `declaration-track:cbdd378026b4a1047c83fab26cbdd05a4b7f8eeb1b027fa0d53c059045366df9` |
| 6 | `def` | [maxSequenceItems](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxsequenceitems.md) | 24 | `declaration-track:41d65a06f85272c64145e4d1efa40f75dde521b885456183589e77876bba9479` |
| 7 | `def` | [maxFoldPath](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxfoldpath.md) | 25 | `declaration-track:a38abe77cc4df3705d9bb99eb9d80f6e637a45782cb4dd0024929a53df14ca98` |
| 8 | `def` | [maxOperators](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxoperators.md) | 26 | `declaration-track:8776833ac8fef4ef722da481eeee818a8601b87d0826d21c39bf8e8fe0858fae` |
| 9 | `def` | [maxCharacterProfiles](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxcharacterprofiles.md) | 27 | `declaration-track:94573eea8e2c01928046937892a0c5eb1467fe98133116f1365dfdc5556fac96` |
| 10 | `def` | [maxGammaEnclosures](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxgammaenclosures.md) | 28 | `declaration-track:2a96aaa3458f222fb45a08a9de4c361046e2b0047df61bd79c24384a48c9810c` |
| 11 | `def` | [maxTerrainNodes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxterrainnodes.md) | 29 | `declaration-track:de5497088603cb72456d03fd5d948349c3a79159342504977ba9dc7e53e78e18` |
| 12 | `def` | [maxTerrainEdges](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxterrainedges.md) | 30 | `declaration-track:7ae8b09edbb2ccf635eafd3864c8df41b235fc37d6397e7d8e66288a08d29149` |
| 13 | `def` | [maxFiniteDimension](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/maxfinitedimension.md) | 31 | `declaration-track:52fa527487170610d2d4af446e199be82600c6d52640a251a182ae4fd1dcc457` |
| 14 | `structure` | [SHAState](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/shastate.md) | 35 | `declaration-track:cc3d8b7c44949ed389eaa17140801ba9ba84adcc57cc00d868feea1d83dee09c` |
| 15 | `def` | [initialSHAState](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/initialshastate.md) | 45 | `declaration-track:91861c2010e264dd3b559d54235c166ca475a0cba74f8dc7da2ce0a055e529df` |
| 16 | `def` | [roundConstants](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/roundconstants.md) | 55 | `declaration-track:46d0fcf669bd55f460cc16b8408f6b7262cdccfc807af365285ad54a567b6385` |
| 17 | `def` | [xor3](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/xor3.md) | 73 | `declaration-track:968e930b8a38c5b0c502c2713c4a0fee30ed028fe2092bbdda6b7783161b841d` |
| 18 | `def` | [rotateRight](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/rotateright.md) | 75 | `declaration-track:532d1691b1e8af111635dea393cf5eb2c5a5e88865f25aacbd25828868bfdcce` |
| 19 | `def` | [bigSigma0](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/bigsigma0.md) | 79 | `declaration-track:07b31641824ffb0364f7c8b4721f9fd2c278332c786adaa81b979a59286432ef` |
| 20 | `def` | [bigSigma1](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/bigsigma1.md) | 82 | `declaration-track:77250cdc79d42374d5f77c984382a09795cf1c13ae00e93d12e9f01fc0069da5` |
| 21 | `def` | [smallSigma0](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/smallsigma0.md) | 85 | `declaration-track:fa7b8860585058ad8ae17df0ed6a6ab303662b2887c923e80a5c080a6e77269d` |
| 22 | `def` | [smallSigma1](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/smallsigma1.md) | 89 | `declaration-track:daaae0b9bbddf09e45b68b12e34b08a42a0b3b5c4ec38b4264d9184f2b178a21` |
| 23 | `def` | [choose](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/choose.md) | 93 | `declaration-track:238ffe9d6b3b8c292fc224355d7e9d36902499d4b5dba0565013b714e89bddf4` |
| 24 | `def` | [majority](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/majority.md) | 96 | `declaration-track:705848b3f3e8b59d412a1dfd4e6b871c8836966811954020d301b32eacc07535` |
| 25 | `def` | [wordOfBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/wordofbytes.md) | 99 | `declaration-track:23fac70803c06fef92b6633013f425d764dba34eba3e9d6054b5f46c29c05fa9` |
| 26 | `def` | [initialSchedule](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/initialschedule.md) | 103 | `declaration-track:a4a37edbae691616d792fef30be41663ac9f9242244bbf28db54518f6c3f0490` |
| 27 | `def` | [extendSchedule](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/extendschedule.md) | 106 | `declaration-track:0a396dcb15ebd4b01028e82d95a115a16b6911d4fb0f550f0a687f560bc936a3` |
| 28 | `def` | [runRounds](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/runrounds.md) | 114 | `declaration-track:374d99df576e0a79d73882d39767a242e633392ec88a7b38bf245c668f3ed170` |
| 29 | `def` | [compress](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/compress.md) | 133 | `declaration-track:d39b723abf968a2e59caca2fe19e63ad90ada6bd0b87de54fd4d96810645188b` |
| 30 | `def` | [natBytesBE](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/natbytesbe.md) | 145 | `declaration-track:1dbb3a5a2f55b2b1c50c7cc733e679d0da86a04f13a75235fac4329fb3f535de` |
| 31 | `def` | [padSHA256](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/padsha256.md) | 149 | `declaration-track:65b4a55f5215154a355092a5a3983ebe5452258116ade6d4bcdc9322c13e6304` |
| 32 | `def` | [wordBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/wordbytes.md) | 154 | `declaration-track:313221061b6907baa4e56b04ba4f845cfae4740e18cb1fddd1125ddb5d5011a7` |
| 33 | `def` | [sha256](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/sha256.md) | 158 | `declaration-track:41b36ac5a137efd760ead89972a86c5cf23efb7d1b1c65223e3a0a2e88c40ac7` |
| 34 | `inductive` | [FrameTag](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/frametag.md) | 165 | `declaration-track:795813ba275c1f60586c6ac3ab46a2b11f3dcd39a5b7dec40c2a6a6143dedfd6` |
| 35 | `def` | [FrameTag.byte](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/frametag-byte.md) | 171 | `declaration-track:cff18afb93de2b78b3133b570359669517895f65ff81a219523d096138799ddd` |
| 36 | `def` | [decodeFrameTag](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/decodeframetag.md) | 176 | `declaration-track:ca16c2f9f92293dffd2d5ec430ee3bddbab5eaaf7fca988a4c35ce624009f279` |
| 37 | `structure` | [Cursor](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/cursor.md) | 182 | `declaration-track:d65339f73de431b0bfce587b562f10041d71aaeeb18b3163216954f45efce67c` |
| 38 | `abbrev` | [Parser](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parser.md) | 185 | `declaration-track:6f2b5af8ae2706b86520b9c471ee75f8c43986269b66d49369c806a046703c13` |
| 39 | `def` | [failure](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/failure.md) | 187 | `declaration-track:09269895b7bfecfd967d59467842f400d001206e9c8c05a2248cf4f54d33a261` |
| 40 | `def` | [ensure](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/ensure.md) | 189 | `declaration-track:5c3679221c3b84fb6ba8bc2e4a960bfe19add4bb9376129975a66e823e8a1ff6` |
| 41 | `def` | [readByte](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/readbyte.md) | 192 | `declaration-track:7299347f3a7c6ea0d1f9be51ed44bd662032b6288879926521bb82ea816897ea` |
| 42 | `def` | [readBytes](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/readbytes.md) | 200 | `declaration-track:04869a9dd667385fe3d096a625593cab109efae4fc88bf61a33a029c079bb768` |
| 43 | `def` | [readNatBE](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/readnatbe.md) | 207 | `declaration-track:74a1ea61065db932b0d0db64182cbf9da7eff9629eab1f3c2787668c7cb42e65` |
| 44 | `def` | [readU16](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/readu16.md) | 211 | `declaration-track:e2fc697bc4aa8e0a20fc1ed4b758072bc502207816bdf619b69cbfe55de06bb4` |
| 45 | `def` | [readU32](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/readu32.md) | 212 | `declaration-track:b0f7bbf0d642d78e4b0542e1121e032e2c2e255d8362b30bfdd1d2003aa54660` |
| 46 | `def` | [readU64](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/readu64.md) | 213 | `declaration-track:4e4a587673d272de48d0373af56cb3b03fdf335303816136b464f8b84a5d676d` |
| 47 | `def` | [readDigest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/readdigest.md) | 214 | `declaration-track:9efdc3a013a91391d56f99d56df4997942de962a64ab0f7af849369d81da4abc` |
| 48 | `def` | [withRaw](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/withraw.md) | 216 | `declaration-track:31c416bb0c005070bd1da98760f693bb74f8de2f9beb4f4c81fa0580b441ba5f` |
| 49 | `def` | [runExact](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/runexact.md) | 224 | `declaration-track:2d38b6baef1e2d969bcedac856bf0dd5bd095aaf4ac633b93770894da4be49ae` |
| 50 | `structure` | [Envelope](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/envelope.md) | 229 | `declaration-track:f488fcce4de0e6bf680c4ed2a69a1fb5b7735990c04b84fbb492d1e6cf4e33dc` |
| 51 | `def` | [magic](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/magic.md) | 235 | `declaration-track:a2cfe7f9811cf7e188fac68427aa845662e50e8431b6ab5d7c69cb7b372e0ca4` |
| 52 | `def` | [decodeEnvelope](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/decodeenvelope.md) | 240 | `declaration-track:2af88927a8b7b0c025b35f60468205c5929ec219954226372f66a030fa9996d6` |
| 53 | `def` | [encodeEnvelope](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodeenvelope.md) | 263 | `declaration-track:d652c229c54538e7a4194769c89c671e1f798d7ad272769737c7f12e261adcb0` |
| 54 | `def` | [continuation](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/continuation.md) | 270 | `declaration-track:667e6118da9cb254136f75cb2780551b7a8a8db5b70c6e1091bfbc7dbf92a75a` |
| 55 | `def` | [validUtf8](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/validutf8.md) | 273 | `declaration-track:8e703e6b46e310daf052ec8922b685cb02c7d51017bfe7fdbaa4d99a0edf7227` |
| 56 | `def` | [parseString](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsestring.md) | 311 | `declaration-track:ea9028ccfaa50c3338d3edf3bee34673a43f060acaa192335cf2cbe390976794` |
| 57 | `def` | [parseCount](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsecount.md) | 318 | `declaration-track:b983899891c1cbe3db47c7b0875b055d86bb76ff7cc45a509b98ae4140519d40` |
| 58 | `def` | [parseMany](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsemany.md) | 323 | `declaration-track:e30b2334c353a9df49c091be3007ad4c75460c506372071d97228a86c1c5be8e` |
| 59 | `def` | [decodeI64](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/decodei64.md) | 330 | `declaration-track:3d6e473886b10a0463cc7901da0c1bb508529eb47cf0e85f8544970e29df5c68` |
| 60 | `def` | [parseI64](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsei64.md) | 334 | `declaration-track:c1a54b567ce81c9b64799a01b7708d3e0f332436585087d15d31de71ad2a4eb3` |
| 61 | `def` | [parseRational](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parserational.md) | 336 | `declaration-track:d6a2cfa76ed80629597f9657afff68f524731408f5edf1e3f9635c90d8b96625` |
| 62 | `structure` | [ExactComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/exactcomplex.md) | 344 | `declaration-track:814fa2e7c48f9e83b6ca032b51b6d0adc0440a3fc20a183f7c03c2333368091b` |
| 63 | `def` | [zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/zero.md) | 351 | `declaration-track:1b56de9fd7cec2edb30fe1295ef2be25c2768ce02f44ef6d9687f2788c93e2c5` |
| 64 | `def` | [one](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/one.md) | 352 | `declaration-track:a16052133d07e8fda9b9c9e12341b9ea1ed7799d25b359b61b577212e8c97695` |
| 65 | `def` | [conj](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/conj.md) | 353 | `declaration-track:30fcd8e276a4e8e3c64cccc3d258df867f8960b81a609f775fde1f1380d5fddb` |
| 66 | `def` | [add](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/add.md) | 354 | `declaration-track:70c03cf3ea513c4d84faf6eb373fb4b169236fe2e094b3868679e41ef1405cb8` |
| 67 | `def` | [mul](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/mul.md) | 356 | `declaration-track:cb00002e527d5a396e2bc45b50976464e59686af57bc7c43e2a1d381cb0d3b0c` |
| 68 | `def` | [normSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/normsquared.md) | 359 | `declaration-track:d82d0ea2c17a26319362fade89437383c1353a5f14dbbfbe8842c488c738219f` |
| 69 | `def` | [parseComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsecomplex.md) | 364 | `declaration-track:f6f81eeacf9ab55286b6a6891941020369a3f4f39e41abfde5863100040d7b69` |
| 70 | `structure` | [Dyadic](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/dyadic.md) | 367 | `declaration-track:ff544e6fe90dcffee0286c3d978f160ee451925724813b13903a980920cf2ea7` |
| 71 | `def` | [parseDyadic](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsedyadic.md) | 372 | `declaration-track:3a0bdf558010b030cce31da3954719b84fea37b72f7580d6c79a924a376cfc5a` |
| 72 | `structure` | [VectorEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/vectorentry.md) | 380 | `declaration-track:7d9f802eecdc65f1f264b5998e840dfe4b927db34b7b1242b2540a03a143b203` |
| 73 | `structure` | [SparseVector](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/sparsevector.md) | 385 | `declaration-track:a672e071e20b374e6101d0f507ff3d2e52f2db04745b9a61f51eb4d0683d5b2c` |
| 74 | `def` | [SparseVector.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/sparsevector-valid.md) | 390 | `declaration-track:fc5a9134857f61606f97eb28525d0ffed2c7e4b0030aab0ff01307a245ef6f3d` |
| 75 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/instance-source-edition-2.md) | 397 | `declaration-track:3915cfe0cf146fc5fc09b2f135a41c33790ca00244944b2e19d4c309dfa4560a` |
| 76 | `def` | [parseVectorEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsevectorentry.md) | 401 | `declaration-track:149b901a1afe9a14055799169c9939204451346bd3325eba10afd53cf7f942d2` |
| 77 | `def` | [parseVector](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsevector.md) | 406 | `declaration-track:72efc6f7fb214a99d14c50ec95fd89e0bf3b21a7882c77ce60292637906bdb52` |
| 78 | `structure` | [MatrixEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/matrixentry.md) | 414 | `declaration-track:aa92d3db527b78213762414e1ce8781bceae0f801aabbf65e67bb9829b619be1` |
| 79 | `structure` | [SparseMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/sparsematrix.md) | 420 | `declaration-track:785dc1cbf8c2d896ce70bb8e2bad7ea08d6b41862d40d7a4528717ffc2f0a922` |
| 80 | `def` | [SparseMatrix.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/sparsematrix-valid.md) | 426 | `declaration-track:cc1fd842a0e79ef67371862b4c8fdf5db51635786f4f7f0a40b1558f00798ced` |
| 81 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/instance.md) | 437 | `declaration-track:1b2244deaf1140d09fd44318cdf575c08dfa3e001c84c20a311a81ccf67a6f36` |
| 82 | `def` | [parseMatrixEntry](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsematrixentry.md) | 441 | `declaration-track:a76a710b896374c883a31ed578b0401add3897b2e70dfeb14c6faa07926357e8` |
| 83 | `def` | [parseMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsematrix.md) | 447 | `declaration-track:258613cd6bf58dadaf1a2b98cb63f8ca2529577fcb4b9c3aebafe9bad80f0417` |
| 84 | `def` | [encodeNatChecked](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodenatchecked.md) | 456 | `declaration-track:f728c31acc5e454b1543b9b697db801d53c987b3935e964aded39e05a148f416` |
| 85 | `def` | [encodeI64](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodei64.md) | 459 | `declaration-track:cc21525e6ca768739f515ba9aa4ec062e73ea1aba13c7d18ea88dbdd5e577a49` |
| 86 | `def` | [encodeRational](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encoderational.md) | 468 | `declaration-track:4d40692088a2d846d4368f73900ce69eb52b1755be2ce01394ddf6eb24432f9b` |
| 87 | `def` | [encodeComplex](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodecomplex.md) | 473 | `declaration-track:00c6707281b435e64fe490d6eef52f320e661f30232e2ff056a949c2703a55e4` |
| 88 | `def` | [encodeSparseVector](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodesparsevector.md) | 476 | `declaration-track:ef978993b7ea5ce1f6045868116d9096d88007cdf4234d1ad0b59b8a98349feb` |
| 89 | `def` | [encodeSparseMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodesparsematrix.md) | 484 | `declaration-track:1706a56757cf562bdc2fdf9a13bc294a71f18da28dd10d48e3a55495304d920d` |
| 90 | `def` | [SparseVector.valueAt](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/sparsevector-valueat.md) | 497 | `declaration-track:77386f73a238d9a121d8e2fe8a0ce5bda607d52fc83b913150ca4ea8506182de` |
| 91 | `def` | [SparseMatrix.apply](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/sparsematrix-apply.md) | 501 | `declaration-track:85097c5ec912ca8b07f02c10fc32b2b8434fcaffb532e9a15adca91fb839091d` |
| 92 | `def` | [SparseVector.normSquared](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/sparsevector-normsquared.md) | 514 | `declaration-track:5113aa04989c4fe7d7679b24e03572eccc00549583c09a41a4736af816f4b5ce` |
| 93 | `def` | [SparseVector.rankOneProjection](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/sparsevector-rankoneprojection.md) | 518 | `declaration-track:3f6d101528ab7c76fa4497cbc41b628280b7ac5ed63e7c503b475bd509680833` |
| 94 | `structure` | [TerrainNode](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/terrainnode.md) | 529 | `declaration-track:24c0fcf2daa8fa0ed15ce4676d6782e104a37d70fc68ed8e50111eb383a9159b` |
| 95 | `structure` | [TerrainEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/terrainedge.md) | 534 | `declaration-track:ce1e134b148c3c3242303fa6bb70c13521e085582bb6700579142eaa4f9ea5ec` |
| 96 | `structure` | [Terrain](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/terrain.md) | 539 | `declaration-track:e7d103a21ab6a828b1ecbb022bcef8331bcca65962147823ccacf0c88284ff53` |
| 97 | `def` | [Terrain.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/terrain-valid.md) | 544 | `declaration-track:b161871cccdc60e8ba92517a17513647a04470aedfc04f7f193ca503f6eb723d` |
| 98 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/instance-source-edition-4.md) | 553 | `declaration-track:8cd53a1de45eaff5f523094e5e45fada1d96aacfcb7ecacb8c33bdf5e39f4396` |
| 99 | `def` | [parseTerrain](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parseterrain.md) | 557 | `declaration-track:079f9ba03088dc15eadf53e61b269970107bd0ece70cbc46a1884c1843ee7771` |
| 100 | `structure` | [NamedOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/namedoperator.md) | 572 | `declaration-track:ff582a96633ab94fccd51645e933b1768ad3409912e93a7255cd475639c03e64` |
| 101 | `def` | [parseNamedOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsenamedoperator.md) | 578 | `declaration-track:d4cdc13f0341b5fc7acc5dbea17daab81dc1741d1ab61c20c5d84297f02c9d9b` |
| 102 | `inductive` | [CharacterParity](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/characterparity.md) | 586 | `declaration-track:10a8113db73ddf9c6df657ea015f68d480e0cd4fc7532bf0f24bb778f207ec71` |
| 103 | `structure` | [CharacterProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/characterprofile.md) | 591 | `declaration-track:730ef86ecc9dbbf520c0351b310dee722dd12d21494a73ce85796c93a4762c0a` |
| 104 | `def` | [parseCharacterProfile](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsecharacterprofile.md) | 598 | `declaration-track:f9220919bda27203e45cf59f3f0983c280f998ec8f693bfd3fd5070a0cec639a` |
| 105 | `structure` | [ClosedInterval](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/closedinterval.md) | 612 | `declaration-track:066b0d956c0919d8dfb9615910e4ccebe51ca1e33de6b759dcbacee21ce7de18` |
| 106 | `structure` | [AdvisoryGammaEnclosure](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/advisorygammaenclosure.md) | 617 | `declaration-track:6fe703bd1bdf5a0123b7bc8b163a69f4a91c203de1b4b41f3bb8d67ffe22da86` |
| 107 | `def` | [parseGammaEnclosure](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsegammaenclosure.md) | 624 | `declaration-track:bbab8e0b293a9102d95b661cbd5d3d1b23d95bfaacede73d6914e69b1200b12f` |
| 108 | `structure` | [RuntimeManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/runtimemanifest.md) | 641 | `declaration-track:d925f33864e7ba5c0a4faa7ea7e727c5199c6e52d230ea2f132db5dc695c22ac` |
| 109 | `def` | [RuntimeManifest.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/runtimemanifest-valid.md) | 651 | `declaration-track:42c7758d6d3b6ca0e7c168ceb18c414af0e639cd849175e00b877a08f2cbb6eb` |
| 110 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/instance-source-edition-3.md) | 660 | `declaration-track:5320aa944537050adc1bee7dd42d2ab533ed6e3f1f2ff2c9683ff65c1e4b8124` |
| 111 | `def` | [parseManifestPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parsemanifestpayload.md) | 664 | `declaration-track:0f39edf91eba7e8fdd33de998b85c941a98d329a9ff316018d619c8cc16340b9` |
| 112 | `def` | [decodeManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/decodemanifest.md) | 688 | `declaration-track:24ba1aa581d9cdecc217929e1ec26034377b0db1bc3a9aa25107cdfe2ff7684b` |
| 113 | `def` | [RuntimeManifest.findOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/runtimemanifest-findoperator.md) | 692 | `declaration-track:bc2b766fd67cf66a7b0f1801777e328233931cc2a6f19141e5f3b22644961ab6` |
| 114 | `def` | [RuntimeManifest.findCharacter](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/runtimemanifest-findcharacter.md) | 696 | `declaration-track:5188c494d2dc46eed4225dd767ce2600a1c82df7d1fa52871db99f7fcafbee6e` |
| 115 | `structure` | [ExecutionRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/executionrequest.md) | 702 | `declaration-track:f3a509778b3f91c3fdb86980c92bd0d7351faab689289291d4d0ea64101e80ad` |
| 116 | `def` | [parseOptionalString](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parseoptionalstring.md) | 710 | `declaration-track:c45db066db9f8b16ded4f7025a665a22c14adfc5950a0b6041002f9f570228a7` |
| 117 | `def` | [parseRequestPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/parserequestpayload.md) | 717 | `declaration-track:8fca57475a77fed6d5b5a02c50f5bcece46ad37ef7fef619b1018b3297a319b8` |
| 118 | `def` | [decodeRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/decoderequest.md) | 737 | `declaration-track:bad319d2a97c6a323cab28ddf9eb91f4a5b83134b330729f201432c760e73776` |
| 119 | `def` | [encodeString](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodestring.md) | 744 | `declaration-track:b4cab5d7fa87e86dfa83fe7bb249ea680db4b6930924378d5fe0792e3788d689` |
| 120 | `def` | [encodeTerrain](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodeterrain.md) | 748 | `declaration-track:7043e0c3fd9ed527e01b8572a2169f7ddb24c9ced82b4fb76da481a9d0e033b4` |
| 121 | `def` | [encodeNamedOperator](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodenamedoperator.md) | 757 | `declaration-track:457e232c645b5db2fffacca26552eca927d71b8f600951ee3b5ecfc96688c3e7` |
| 122 | `def` | [encodeCharacter](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodecharacter.md) | 762 | `declaration-track:ac53b9dd2a552a6c7bde3f78639c847fb583365f3c1ea017a1f5c6535e0b6c73` |
| 123 | `def` | [encodeManifestPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodemanifestpayload.md) | 771 | `declaration-track:75220c04b733aa6824899742a92f90bdd5bb6b887502e6a4213e290e06db4285` |
| 124 | `def` | [encodeManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encodemanifest.md) | 784 | `declaration-track:b493eac2c87d69ab3ecd706b0ff3a420f73a8ae09fc95ea11d039027a5f5134c` |
| 125 | `def` | [encodeRequestPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encoderequestpayload.md) | 787 | `declaration-track:4577af96f227f5763130feea28683f7882565bc0b5e96419503aec0ad5d04fc4` |
| 126 | `def` | [encodeRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/ManifestDigest.lean/declarations/encoderequest.md) | 797 | `declaration-track:c9bf113953b46f882634ea270b02350fb4a07f64ec3d290d220ab560dbfbe00a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7dc0d7765e1eabe292a5dafc9a27afdf18d1a99376db73995b224e67c0d59da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Manifest/Variant1bdc25c01cee27dfc8ad418e7997060e16d8bb6b110ea4a7df04c97d6549df26.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
