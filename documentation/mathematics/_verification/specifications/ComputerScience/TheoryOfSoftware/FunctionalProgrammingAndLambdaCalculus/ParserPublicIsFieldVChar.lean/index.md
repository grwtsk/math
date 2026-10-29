# Verification target: Parser Public Is Field VChar

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bbb517506c9d1f6fab4804403eea5e23bf1a93d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bbb517506c9d1f6fab4804403eea5e23bf1a93d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isFieldVChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/isfieldvchar.md) | 32 | `declaration-track:602ee3ca6054641109cade0e555a5bb28f063afa42110e0b3f1bbec70c3d0e11` |
| 2 | `def` | [isQdText](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/isqdtext.md) | 41 | `declaration-track:475459619ed4edd313e3f2e9188ac2e713ea55db9a8b459924d9377f7f8833d5` |
| 3 | `def` | [isOwsByte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/isowsbyte.md) | 48 | `declaration-track:4fd24b75e42d2c9760f7e97b13974ced2f634850bbe1da326ffc2035d8deb5ff` |
| 4 | `def` | [manyItems](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/manyitems.md) | 57 | `declaration-track:a57692295303b9b82e3a4c4bae9f6ee28e9bed4d2aff11b68a4c4258213e0785` |
| 5 | `def` | [liftOption](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/liftoption.md) | 80 | `declaration-track:54d9063f4df710a0741510a4fe14dbde132912003f2b7c0aa305c7b24107fd2e` |
| 6 | `def` | [parseToken](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsetoken.md) | 91 | `declaration-track:0d7798ea60f99b1b74e53c8e49f14bc000c222241f9cf37e7caef603eb6e033d` |
| 7 | `def` | [crlf](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/crlf.md) | 98 | `declaration-track:5047a4cce82b3ada279abb5eec404ee8c13ac0bd8af985ef47cde59b6561c707` |
| 8 | `def` | [skipLeadingRequestEmptyLines](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/skipleadingrequestemptylines.md) | 109 | `declaration-track:862f3ac4a17994d0edd16d72650fb93d4fb79f2b2e3c42441c8022c1b43013cb` |
| 9 | `def` | [sp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/sp.md) | 121 | `declaration-track:075cb6a86bf74754b7164680505c9a13e924cb7fa8703e50b4689079fa5d2cd5` |
| 10 | `def` | [ows](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/ows.md) | 130 | `declaration-track:dd71a6924613715754d244664fb340a7483d72132c5ffb513d14d5e792a78cdc` |
| 11 | `def` | [hexDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/hexdigit.md) | 141 | `declaration-track:b31c9096fd175f74c297cfae9c5578e8c3044535b5739c5fe19d1b7ab4b58a9e` |
| 12 | `def` | [hex](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/hex.md) | 153 | `declaration-track:67467b6251e95a474600f88510b3a4ceaf5e091230df28322e6ce65e6930d2d9` |
| 13 | `def` | [parseHttpVersionNumber](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsehttpversionnumber.md) | 177 | `declaration-track:f93fb4dda4a3a5cc391b1ab7c1ded5b483b011ae67caf94a733d5a55a9d91134` |
| 14 | `def` | [parseHttpVersion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsehttpversion.md) | 188 | `declaration-track:b397d7f876fc53ac065189e7d16f0f5f07a1b5a5b0d45894ae8599c93fb3f8c5` |
| 15 | `def` | [parseMethod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsemethod.md) | 201 | `declaration-track:30154f8e06f92915427064df6e46069819cf27f07e889e7057d03c6e524cb56a` |
| 16 | `def` | [parseURI](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parseuri.md) | 248 | `declaration-track:62687273f9aeb62702fe0f5549e4a460f27bca4082b5a14d848b496329ac6418` |
| 17 | `def` | [parseRequestLineBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parserequestlinebody.md) | 263 | `declaration-track:a81da8b1eb9517e26df5643668fe01d5b6496b15429a9aeddf752ca2fa76ad93` |
| 18 | `def` | [parseRequestLine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parserequestline.md) | 275 | `declaration-track:88891f2f8cd79b6e3c20b5be32b7091ca2d24447de0319ba4ed46ccdb7d2541c` |
| 19 | `def` | [parseRequestLineRawVersion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parserequestlinerawversion.md) | 291 | `declaration-track:cd22dd9db08994d75539bbe63eb68a738eb252a8104aabad91b3afb1641b242e` |
| 20 | `def` | [parseFieldLine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsefieldline.md) | 302 | `declaration-track:2ea91dd6e15d839ff461df8c69adae43983331a3dcaad5093cf130a85239a7e4` |
| 21 | `def` | [parseSingleHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsesingleheader.md) | 320 | `declaration-track:94462c65db099cd36b6b87413a22d0224485020c825896e0ada7a3578a6b4764` |
| 22 | `def` | [parseQuotedPair](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsequotedpair.md) | 333 | `declaration-track:80ad92b525421cdb08bdd10de8d29d25d89b1d76d3c50e3bfc52160b9ca7a57f` |
| 23 | `def` | [parseQuotedString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsequotedstring.md) | 347 | `declaration-track:97250569ba75f9378b1c24461a83788ee257ebac21aeea279e80a58c95af1053` |
| 24 | `def` | [parseChunkExt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsechunkext.md) | 377 | `declaration-track:3d9356438eefce94298dec07c1b6ff5ff1dc30c4eabd27fb7cb183de64f96a5c` |
| 25 | `def` | [parseChunkSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsechunksize.md) | 401 | `declaration-track:f14aeaafcaa5bfdf00438851f3daed77ebf9fe9daf9c7df75c0198b933987774` |
| 26 | `inductive` | [TakeResult](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/takeresult.md) | 410 | `declaration-track:e9b4dea2e52f86bc3aa0a3d6d64704af94bf0ce1e3b17ab754930722bdc5eaa7` |
| 27 | `def` | [parseChunkPartial](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsechunkpartial.md) | 417 | `declaration-track:56c463fd89c8831ba5abb520d3b1873f80c17cdb3732684d4dfa6afde0bd2045` |
| 28 | `def` | [parseFixedSizeData](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsefixedsizedata.md) | 428 | `declaration-track:03b5a95eb73ed412daf9917d83e29737582f28b5e48490d2fa990381852d80cb` |
| 29 | `def` | [parseChunkSizedData](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsechunksizeddata.md) | 439 | `declaration-track:535d4c3a3513fa0f191127a4a423d473410ee47b6a797a0ce14b94829661090a` |
| 30 | `def` | [isForbiddenTrailerField](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/isforbiddentrailerfield.md) | 449 | `declaration-track:602e50c3a4d09f577f17544d61b16237b3c2b9ddd7cc3559f78bc3b52bd183b3` |
| 31 | `def` | [parseTrailerHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsetrailerheader.md) | 462 | `declaration-track:e3ea0d212ffca57348c7bb3b8921825e3f06f0ce37afbc6e20d5a68a22f8b6ea` |
| 32 | `def` | [parseTrailers](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsetrailers.md) | 475 | `declaration-track:7003ffbeaffe6d62f362f46a366ab38415bd2d95a3ce69c2b83adebfb3897049` |
| 33 | `def` | [isReasonPhraseByte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/isreasonphrasebyte.md) | 484 | `declaration-track:c282242cd3571c9661d23927ba0540b637b94c70ed96472315d612031d3f70ed` |
| 34 | `def` | [parseReasonPhrase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsereasonphrase.md) | 492 | `declaration-track:086617f5d75226a6d1f7090ee20d4f2c6905eab529b536ccd56d12fff72ab646` |
| 35 | `def` | [parseStatusCode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsestatuscode.md) | 500 | `declaration-track:a65ce3e949a3815ee5fe5219fb45f397010f116ef1ea6c12be1fcf6d31845fa9` |
| 36 | `def` | [parseStatusLine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsestatusline.md) | 520 | `declaration-track:2fc208996685a207e419f77200fba1aa2e9dbeed532e18ad8d2066f96198ec5e` |
| 37 | `def` | [parseStatusLineRawVersion](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parsestatuslinerawversion.md) | 536 | `declaration-track:b87a489029d5382c88bf4fd13894bdda2dd4db4315834a025533ded0aa2dd341` |
| 38 | `def` | [parseLastChunkBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ParserPublicIsFieldVChar.lean/declarations/parselastchunkbody.md) | 544 | `declaration-track:3b4a4e99fb8f6bfcc78216445a11bba20880c74614ba04b339065c7b2b91b685` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=888f11d1f7d4390eb9dddd4ef0cc00a754aea0d3a85712391e6b13e0aad466dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Parser/Variantcefaa2033deaa4a96a754a62b2da6e7991b50bc7c460af85ba17febbd50487b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
