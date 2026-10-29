# Verification target: Byte Array Public Parser

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8727f6f16969e4dcbe25f12c387ef7efb7bc1bf6",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8727f6f16969e4dcbe25f12c387ef7efb7bc1bf6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/instance.md) | 21 | `declaration-track:8635a515968e72ee422c2ecd5ca6d83edf320008d177a221d76024d21d408dc4` |
| 2 | `abbrev` | [Parser](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/parser.md) | 33 | `declaration-track:f9065e7086cc25648d3d75067b2fd921cb7dbfd9ecd2f509f38468435ee45387` |
| 3 | `def` | [Parser.run](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/parser-run.md) | 38 | `declaration-track:656d60d4fb8eca318d362bb9b25349a867c5447d4a223bb6e3140fd26ffa230f` |
| 4 | `def` | [pbyte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/pbyte.md) | 47 | `declaration-track:3d2686a65fe981a3377fcc4a3e7f246ba11360f085def58e56bcacd0e32d345d` |
| 5 | `def` | [skipByte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/skipbyte.md) | 61 | `declaration-track:a17b0c4eeb5e42cc9310551de5101bae70b7536930ca2c4ecce355a28c3a509a` |
| 6 | `def` | [skipBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/skipbytes.md) | 67 | `declaration-track:6fd078827ade62b0d7c43a03dcbdd00a88669bf86c54c285d151bb947fbde5ef` |
| 7 | `def` | [pstring](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/pstring.md) | 87 | `declaration-track:7802535a1cf424dd3534c5e259a21547eb02dfc3955a76be245cfb1317e17d4c` |
| 8 | `def` | [skipString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/skipstring.md) | 96 | `declaration-track:c496b521e32d5b06c12ab4b11958d67716fcf21a2b2130b5b2c57f7b9fed3163` |
| 9 | `def` | [pByteChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/pbytechar.md) | 102 | `declaration-track:49e67edaf59010df62f989c50f5a65598f6a459a41bdf67256859232d553dc1e` |
| 10 | `def` | [skipByteChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/skipbytechar.md) | 109 | `declaration-track:e3b97771faada388a823a8e6c88653d5f988dd2d2087c1804d020c29b43ba8f0` |
| 11 | `def` | [digit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/digit.md) | 115 | `declaration-track:e9cd0ae94b589b9549d615368acafb0643944be561628b2e5dabfc4788d23d50` |
| 12 | `def` | [digitToNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/digittonat.md) | 123 | `declaration-track:944c7d11f2fee2ff5c8e2f8ac79b492c1f31ac38c43358d9d1758e3f9cd00e53` |
| 13 | `def` | [digitsCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/digitscore.md) | 130 | `declaration-track:d306a7d1ae9e9ce4edc3ab1d4dd0045a80ffca306269d62d1a21658b766056c3` |
| 14 | `def` | [digits](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/digits.md) | 154 | `declaration-track:3badac58f32b7ace0ee2ca50f8a5d15270e5d7fc2dd5f7ae603c70057ad86e1a` |
| 15 | `def` | [hexDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/hexdigit.md) | 162 | `declaration-track:df86a4dfb7093d7194aacc54f93d9d800105bb539e97f65641de105bf95c53bc` |
| 16 | `def` | [octDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/octdigit.md) | 172 | `declaration-track:683675b753bef4ec65894b060b5a8696feb460949975c90e9d736933ec028f55` |
| 17 | `def` | [asciiLetter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/asciiletter.md) | 183 | `declaration-track:94b00f2211ecd4301b396e8f3e8795e1384a22622658dc2afe7907d22ef1ed27` |
| 18 | `def` | [skipWs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/skipws.md) | 190 | `declaration-track:9600e2f357d6f405197e66020ee04436081f9015460712abb3b7015c837527d9` |
| 19 | `def` | [ws](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/ws.md) | 204 | `declaration-track:de16c368e46d030001d07e1c56b67d5a97513f4743e2a90d4c925a74cb0e1390` |
| 20 | `def` | [take](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/take.md) | 210 | `declaration-track:76f289f70b3d87d58bde16cc69bc67d5624ac9836e567fbe37c273b1b47c8487` |
| 21 | `def` | [scanWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/scanwhile.md) | 219 | `declaration-track:8390c942a8d61a1bdb6aebd0bd8c5555efcff811d341fbf80186005ac7765c31` |
| 22 | `def` | [scanWhileUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/scanwhileupto.md) | 233 | `declaration-track:b28b8ac6057faacf0ce08ac4eacbddddfb836c8ff97c549529574510ecb91753` |
| 23 | `def` | [takeWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/takewhile.md) | 250 | `declaration-track:6d54701dcc027c69bd445cef4ff97c933770f97c02bee5ac38e695f116c56706` |
| 24 | `def` | [takeUntil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/takeuntil.md) | 262 | `declaration-track:3f9645fdb29599b290a4f6f32f47583af8855675173221aba59f69f961353b15` |
| 25 | `def` | [skipWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/skipwhile.md) | 270 | `declaration-track:f4554421d8516d53fcdb2ebce864b201117a769e7020abf408c1c32fc249c216` |
| 26 | `def` | [skipUntil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/skipuntil.md) | 282 | `declaration-track:5d9bdb5dd04583d8cd55c68073e0899cee02739eebfacbe9d7fab1e9001e75a6` |
| 27 | `def` | [takeWhileUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/takewhileupto.md) | 290 | `declaration-track:e9de5d008fd48995a438668e8b8bcf66c61c42572a9002cc899246b1c627b8ed` |
| 28 | `def` | [takeWhileUpTo1](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/takewhileupto1.md) | 304 | `declaration-track:b236569e6ebbc9916612d5ae08a93362c8d3b7987fc5d4c562ba38890fd2f6a9` |
| 29 | `def` | [takeUntilUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/takeuntilupto.md) | 319 | `declaration-track:5758bfe9caeebaeb11567bb7d17635494c286aa2306c7a0f221c132ae7e49b70` |
| 30 | `def` | [takeWhileAtMost](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/takewhileatmost.md) | 327 | `declaration-track:e53668d291349d4d1c4502801584bafe7fdea031f7e1ff9c684ed3301fe50b5e` |
| 31 | `def` | [takeWhile1AtMost](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/takewhile1atmost.md) | 337 | `declaration-track:63f4a8df328a95b6f7d2d8e9883ed9aad45a9ae2e52f04d28c8b2d5dd608e28b` |
| 32 | `def` | [skipWhileUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/skipwhileupto.md) | 350 | `declaration-track:fa4f673f7d2fbd48c076cda468d2dcdad2585e92d2fc07f4ddca62cd8508054d` |
| 33 | `def` | [skipUntilUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayPublicParser.lean/declarations/skipuntilupto.md) | 363 | `declaration-track:3ade54d169c59192547cd8b1ac00464c980662e5c2a108d4031911b7b0a6ae65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b921b0272b70d53d4c21032943093dc8965de56c778238a3d0fce03c663bb8aa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Varianta14f05ffb3f05f1a8313221f6b643aa7875119001e8c21616af04bac1c645df4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
