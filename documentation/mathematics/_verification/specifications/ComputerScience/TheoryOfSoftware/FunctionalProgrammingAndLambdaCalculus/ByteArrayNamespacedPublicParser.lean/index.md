# Verification target: Byte Array Namespaced Public Parser

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce22582c1eee98daf644abb537df03081bb9c98e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant2f0462d1cd5209a6b31597d4f52f3782dad7bfdd3c232278745f602647a1a317.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce22582c1eee98daf644abb537df03081bb9c98e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant2f0462d1cd5209a6b31597d4f52f3782dad7bfdd3c232278745f602647a1a317.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant2f0462d1cd5209a6b31597d4f52f3782dad7bfdd3c232278745f602647a1a317.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/instance.md) | 29 | `declaration-track:511330c63e45821e247028c27a4b01b7c7d507ab091aff6c307e1e6913fee3d9` |
| 2 | `abbrev` | [Parser](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/parser.md) | 41 | `declaration-track:9f60d938b4cdff1bbd0688be44829e19dacff526ea2fb16e3b26a55cd24c68e3` |
| 3 | `def` | [Parser.run](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/parser-run.md) | 46 | `declaration-track:19b8b214ac9329b67ffc33a3d3a5944001360f62d00245216772dac7ef1894d1` |
| 4 | `def` | [pbyte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/pbyte.md) | 55 | `declaration-track:e48a85cc1f24926e9adbd1eefcf518deede08ff7faef84ac021f1c5981555ecc` |
| 5 | `def` | [skipByte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/skipbyte.md) | 69 | `declaration-track:f34da35554e650350142380f8a4a703b0794d65bf6ab992575a6042317eae1d8` |
| 6 | `def` | [skipBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/skipbytes.md) | 75 | `declaration-track:dc2dfddee5a555529be4a2ae4f822e83a79f0edb42707efac61606bb008368a6` |
| 7 | `def` | [pstring](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/pstring.md) | 95 | `declaration-track:52275218c12becff2c0ce53ad482741b40cb51d98b00eb2db707be3ed1ca183f` |
| 8 | `def` | [skipString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/skipstring.md) | 104 | `declaration-track:c3b4440e5365afd6a44a7aafc0af48a38b3f56eff8f729959164abaa2a86f88d` |
| 9 | `def` | [pByteChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/pbytechar.md) | 110 | `declaration-track:5d6ad5c9c5d2aabb318dff609e0ff5f289a6582707660b712a9dbf95e1415c0d` |
| 10 | `def` | [skipByteChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/skipbytechar.md) | 117 | `declaration-track:a246017cc293abf5ea87b868ebbe3b075f58bc3da1e5126d11fa4d96d67daaf4` |
| 11 | `def` | [digit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/digit.md) | 123 | `declaration-track:6d4fccde4696ae4dc22b5451a5090bf0c243891207c1f9e35a9733ab123a597e` |
| 12 | `def` | [digitToNat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/digittonat.md) | 131 | `declaration-track:8fb9142428e46076b2098cd9691517972dfe2061517ccd255168a1b3971be645` |
| 13 | `def` | [digitsCore](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/digitscore.md) | 138 | `declaration-track:1d9379b8700e124ffe020bcd1541c2a8f77cc0da1366f76367fad198cf123ce9` |
| 14 | `def` | [digits](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/digits.md) | 162 | `declaration-track:92ce2a3abff16c6046b96bd762db252a795a93f917a538dec66e041fdfc4314d` |
| 15 | `def` | [hexDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/hexdigit.md) | 170 | `declaration-track:bbd69f7631ed4fb708b546e2ac6afe8976e7688d8c8a6eea3a5ac074a54aa718` |
| 16 | `def` | [octDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/octdigit.md) | 180 | `declaration-track:0e6a0be912cfa50df964c3ffdb9fc49120660245c44e44d63c06c42d46ef002c` |
| 17 | `def` | [asciiLetter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/asciiletter.md) | 191 | `declaration-track:f0427d060d7a83aa17fda60c36bc308b995c3fa4f66b39454431b8b2e0a4cf07` |
| 18 | `def` | [skipWs](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/skipws.md) | 198 | `declaration-track:c7667ebe86661e1492d9ed444d4d3079286d73a428bb1ac7db30fec9e793643e` |
| 19 | `def` | [ws](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/ws.md) | 212 | `declaration-track:5ee7d3c32824dd0d3092df06471d7d2864a53826aeeb10a7f3f931633176b38b` |
| 20 | `def` | [take](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/take.md) | 218 | `declaration-track:98fb44b69fef930570f3a27a5e027bc154ab7aaa2ba67bb7b145fad958b3c4c8` |
| 21 | `def` | [scanWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/scanwhile.md) | 227 | `declaration-track:b45fa31d45a602ef90ee17a26027aad20e8fcc3d8c005c230372099812c242e8` |
| 22 | `def` | [scanWhileUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/scanwhileupto.md) | 241 | `declaration-track:945fe343650768273d368a6f15f279b97ca631a712e9115b740abbe704323ffe` |
| 23 | `def` | [takeWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/takewhile.md) | 258 | `declaration-track:697afdcaf096665bff94ecd945a61300ba47dfa72e4b233d3ed9b3a6f86025fa` |
| 24 | `def` | [takeUntil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/takeuntil.md) | 270 | `declaration-track:64dfab12589d3add0a7911179c578513882ddb82e57cf4a4225594184bbf7d0a` |
| 25 | `def` | [skipWhile](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/skipwhile.md) | 278 | `declaration-track:3ecc41a1beb88d8f67d4c010ab1ad739240b7e09b59231bcbe7ff3ea1b597368` |
| 26 | `def` | [skipUntil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/skipuntil.md) | 290 | `declaration-track:53e106b52aa190b81148088a57f12a4f4da1f5a96ad44370f4505d351115e34c` |
| 27 | `def` | [takeWhileUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/takewhileupto.md) | 298 | `declaration-track:bfd040d473e402a41d43c2e3fe737cf68030b40063370326f7d19cf9281b8c2a` |
| 28 | `def` | [takeWhileUpTo1](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/takewhileupto1.md) | 312 | `declaration-track:b38f15e9c7eacde4d958585870e8e62e24221253360fda28c2bbc924815af9b8` |
| 29 | `def` | [takeUntilUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/takeuntilupto.md) | 327 | `declaration-track:b98e6e9aad180fa43b99cb31f88b4a12928145684f750c3d237c4fde6c2a4fd3` |
| 30 | `def` | [takeWhileAtMost](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/takewhileatmost.md) | 335 | `declaration-track:591a42313d320c8c088569ba0804be3175143df9ea0b73df2a6f122c40edfb93` |
| 31 | `def` | [takeWhile1AtMost](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/takewhile1atmost.md) | 345 | `declaration-track:e4194f69757d82ef3ad6306d2e720ff3cc9e4f51f3fb44a37a404cb272e1dd56` |
| 32 | `def` | [skipWhileUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/skipwhileupto.md) | 358 | `declaration-track:754733a52971393c0af8fddf4f1b7b87562d993f062ecaced2ba00f71413fe49` |
| 33 | `def` | [skipUntilUpTo](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ByteArrayNamespacedPublicParser.lean/declarations/skipuntilupto.md) | 371 | `declaration-track:c9ac08e276f8199ac8aa08172903f5b592d28892a60b4e227e70505601023238` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f03125c82a1b09b06e1df5b188e2ecb165aa649d5d2713e86c5f3a4e495f053d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant2f0462d1cd5209a6b31597d4f52f3782dad7bfdd3c232278745f602647a1a317.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteArray/Variant2f0462d1cd5209a6b31597d4f52f3782dad7bfdd3c232278745f602647a1a317.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
