# Verification target: Format Public Iso8601

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49a3487f390111db650b0ff5ce3f50a957a3703f",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantfba825b2ba466f981388d5f6b89a69d6c1e911a1c5c6e942e9c683c6dfa8fe92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49a3487f390111db650b0ff5ce3f50a957a3703f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantfba825b2ba466f981388d5f6b89a69d6c1e911a1c5c6e942e9c683c6dfa8fe92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantfba825b2ba466f981388d5f6b89a69d6c1e911a1c5c6e942e9c683c6dfa8fe92.lean.json)

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
| 1 | `def` | [iso8601](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/iso8601.md) | 26 | `declaration-track:81d8e3284da87ddfc7a8fbebca79795b41c108a68a0799f8e1526652a50e56c7` |
| 2 | `def` | [americanDate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/americandate.md) | 32 | `declaration-track:e2e40f87620f9b7069a3410cfbc85b5faedaf13801c92c70536b87f83b6fdcf4` |
| 3 | `def` | [europeanDate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/europeandate.md) | 37 | `declaration-track:b27916d3bf6043b80b5eb60dd6ec415e8ef66085eb013fb119def9161260ff2f` |
| 4 | `def` | [time12Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/time12hour.md) | 43 | `declaration-track:aaac696e848dd4fb16696658074b809ae5fcdae541ca5706ce7b434b8a45f051` |
| 5 | `def` | [time24Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/time24hour.md) | 49 | `declaration-track:54bd3a1d7132e51ba737f189c4c04f320eb4d59c35b92f5e1fc2dd330c85aabd` |
| 6 | `def` | [dateTime24Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/datetime24hour.md) | 55 | `declaration-track:b3ef0f1e0e2093f1b6183378b1ca9854e052db837cc7401ec13bff66fe4b7d39` |
| 7 | `def` | [dateTimeWithZone](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/datetimewithzone.md) | 61 | `declaration-track:91f3d5c5fa3dedfd3485576f6beff4702773a9e536282daf8ed3211cd552a5b0` |
| 8 | `def` | [leanTime24Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/leantime24hour.md) | 68 | `declaration-track:5ff0dcd83963dd86c9e78264e7b1459fadcd65c3824357009df2c9b5f66a3f57` |
| 9 | `def` | [leanTime24HourNoNanos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/leantime24hournonanos.md) | 75 | `declaration-track:beeb758acdec45953b9c3943c1da266079ceab088f9ed4e8803e73f84999a8e4` |
| 10 | `def` | [leanDateTime24Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/leandatetime24hour.md) | 82 | `declaration-track:491d3f378c2a315d57cc44209a76a9b288dcb92366a6fec517514c42ffd7f142` |
| 11 | `def` | [leanDateTime24HourNoNanos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/leandatetime24hournonanos.md) | 89 | `declaration-track:664f165a39896d93979bdeccde02781f5bf1db52ac412a7218c769a16677d47a` |
| 12 | `def` | [leanDateTimeWithZone](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/leandatetimewithzone.md) | 96 | `declaration-track:72446ca1e4805c9392cc04ec86b62791b6fe9f164ab3b56261cc07115535ab51` |
| 13 | `def` | [leanDateTimeWithZoneNoNanos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/leandatetimewithzonenonanos.md) | 103 | `declaration-track:2be9e0e10924efc01c20b2164b70e9158b6d0e465033ebf55e077d7330753403` |
| 14 | `def` | [leanDateTimeWithIdentifier](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/leandatetimewithidentifier.md) | 110 | `declaration-track:a60e578310a26c316cc497928af8bed4788757a10148a9f6a7057e165a6b06e9` |
| 15 | `def` | [leanDateTimeWithIdentifierAndNanos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/leandatetimewithidentifierandnanos.md) | 117 | `declaration-track:a049a4d9c3f97d798a11c20896b49ec4cb9ee4421e1e43cf587166381fc4878e` |
| 16 | `def` | [leanDate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/leandate.md) | 123 | `declaration-track:3ee279a2983c50c48ed86ca2fa0cfcd7f483587e4eba157451ce0539c34c1dc2` |
| 17 | `def` | [sqlDate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/sqldate.md) | 129 | `declaration-track:fcdc904b87f3468a9693d8c2222a8648417717082cd536d79c9c642da5e0ffb6` |
| 18 | `def` | [longDateFormat](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/longdateformat.md) | 135 | `declaration-track:9ba3009b9d4707e0b1e4fa4ff2eda495a380240f1e3ef1306c7c7af86c068eb1` |
| 19 | `def` | [ascTime](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/asctime.md) | 141 | `declaration-track:ddc759492baccfcfb8a281718c18d4d0d1ee66b367b72a55d069cceb09093a88` |
| 20 | `def` | [rfc822](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/rfc822.md) | 147 | `declaration-track:7dc2a2c87e3ad7609986fbea73cafdf9fbebe035a7885f74f288be953c5dd845` |
| 21 | `def` | [rfc850](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/rfc850.md) | 153 | `declaration-track:653e3bc3c145b7b203b77485e6f642c110d41d70d2e756d8832a94be20982cfa` |
| 22 | `def` | [fromTimeZone](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromtimezone.md) | 162 | `declaration-track:09c15993322dceb000c16a89c7566cc206b85b65d34a35ff87c68492a793f306` |
| 23 | `def` | [fromOffset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromoffset.md) | 171 | `declaration-track:d9dcc51fb12ce23192d021077e27c28f77f51c9d752d8d1334c21315256f55c6` |
| 24 | `def` | [format](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/format.md) | 183 | `declaration-track:2eafbc09b9cab07ec76aaa1d399c043c8dee29ef404c699c90cb3335953803a2` |
| 25 | `def` | [fromAmericanDateString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromamericandatestring.md) | 209 | `declaration-track:c77288a3a8fdf30d5a8fca8a450299ac3e2371ad0182be12cbe5a85fe2ad4e7a` |
| 26 | `def` | [toAmericanDateString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/toamericandatestring.md) | 215 | `declaration-track:2cae0ab9c0728f5081dbdf122c83f1efb45322e7dfee59f89bf0dd9938895564` |
| 27 | `def` | [fromSQLDateString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromsqldatestring.md) | 221 | `declaration-track:e6af502cab3be5a2cd52346affe5847d07e4fa4dd93d83b1e345006eabdf5262` |
| 28 | `def` | [toSQLDateString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/tosqldatestring.md) | 227 | `declaration-track:b2c2cbb446b08e14d079c173cb3d0e5298bf92cc82cd0fc2fa7179a86a36082b` |
| 29 | `def` | [fromLeanDateString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromleandatestring.md) | 233 | `declaration-track:9a65bb45584a08c455c9833d5bbd0a1443bfd8efb9f699e6ff0fbadf162cea5e` |
| 30 | `def` | [toLeanDateString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/toleandatestring.md) | 239 | `declaration-track:7cde84915293ebf4591110aa5fe09f69856b611be1608e831e0fe425181c1ff2` |
| 31 | `def` | [parse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/parse-source-edition-3.md) | 245 | `declaration-track:e59115dc0c01cc3ce2e256c83fa0ea7bdc00f1cd1f589a6b703cde72fe0871be` |
| 32 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/instance-source-edition-4.md) | 249 | `declaration-track:6ad296e8a2ac8e523dc2e79887fc62df74063bb1cdbc3f605cc3040139d6e691` |
| 33 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/instance-source-edition-5.md) | 252 | `declaration-track:79c33403648e4dc396124d9c2bb614f4273c0f184ab7c57e1edba1db5965bea0` |
| 34 | `def` | [format](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/format-source-edition-2.md) | 262 | `declaration-track:ad55358f8a1aa139ad2444f9defee3014d15303205327b60276bc3442bbf98c2` |
| 35 | `def` | [fromTime24Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromtime24hour.md) | 289 | `declaration-track:6a09fdbbd11061e2c81ce4fd94c5bb36a0dc6316f6461a9b076894e9ea94fa9c` |
| 36 | `def` | [toTime24Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/totime24hour.md) | 295 | `declaration-track:861edf76b3f0992a2252469e2c9e889b7df416585f1147c79f9fc325f7638e52` |
| 37 | `def` | [fromLeanTime24Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromleantime24hour.md) | 301 | `declaration-track:737c9f00bcdcffde1d162242e970c6fef854da00ab9aacdbfdb7a11318946758` |
| 38 | `def` | [toLeanTime24Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/toleantime24hour.md) | 308 | `declaration-track:e5ed5411754dc04880033bb42e718998b76a83bccf1df9757d97c0a2d28fe3fd` |
| 39 | `def` | [fromTime12Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromtime12hour.md) | 314 | `declaration-track:5b72194420bf3aa8c545656ac7847b5a56414fb7d6f39563541807e415d72888` |
| 40 | `def` | [toTime12Hour](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/totime12hour.md) | 324 | `declaration-track:628b6cc245064e4bc3b203715685f0a3a79fcf657490f0bcd2004ec3230270f4` |
| 41 | `def` | [parse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/parse.md) | 330 | `declaration-track:8903e53997d31bd15f72be9ca716898eb4176e5234f8c7ffe71b342e95f986ae` |
| 42 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/instance-source-edition-7.md) | 334 | `declaration-track:e3f4fd8f8e4b65466594883781e3c476e822e5038c39275cc0bd92bd2a663184` |
| 43 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/instance-source-edition-2.md) | 337 | `declaration-track:61327c8ea962b41eb090129400664a5bbef0ce6c8250e2c6dbbfabf2e71eaf23` |
| 44 | `def` | [format](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/format-source-edition-3.md) | 347 | `declaration-track:e068fb766f291ad203e57436b99ab1cb700a9d05cae07e15ce5e5f69efb3bd49` |
| 45 | `def` | [fromISO8601String](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromiso8601string.md) | 356 | `declaration-track:5d4ae991e8565580e5e1223637ef8de97ecb15aa56e7f7c8ab0e9a354775371e` |
| 46 | `def` | [toISO8601String](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/toiso8601string.md) | 362 | `declaration-track:4484a22b555a640dc640bd20621a32eefc5c3180f51c2739f86ec791d09eb7ea` |
| 47 | `def` | [fromRFC822String](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromrfc822string.md) | 368 | `declaration-track:787811772b287b157657b21e34e81106e33f519b157dfc1882e29bbcfe72035d` |
| 48 | `def` | [toRFC822String](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/torfc822string.md) | 374 | `declaration-track:bbc502ed143bfb79d6496cde520449b744205327091e14f1b25a16c2316d5b45` |
| 49 | `def` | [fromRFC850String](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromrfc850string.md) | 380 | `declaration-track:e90037d9eeb3448d9a264a701d2fbd1bac06f4fd91f3381521ca7e026da3e938` |
| 50 | `def` | [toRFC850String](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/torfc850string.md) | 386 | `declaration-track:8116050c0ff5dee35d6803fc08446fa579453596023a37e03704024d62ae37f8` |
| 51 | `def` | [fromDateTimeWithZoneString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromdatetimewithzonestring.md) | 392 | `declaration-track:818bf4946fe30f3d99739a615a6246f2a5ab44ddf9a19aa8e3ca183e38b6b8b2` |
| 52 | `def` | [toDateTimeWithZoneString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/todatetimewithzonestring.md) | 398 | `declaration-track:7a18cab45a87a09703de530a3d0b55ad6db5aa94469ed60103933815a6e206ea` |
| 53 | `def` | [fromLeanDateTimeWithZoneString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromleandatetimewithzonestring.md) | 404 | `declaration-track:98922bcca2fbc79387d8778703864e321619d2c951eb28b9def066b5a531f9ef` |
| 54 | `def` | [fromLeanDateTimeWithIdentifierString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromleandatetimewithidentifierstring.md) | 411 | `declaration-track:82eabe7ef0b47eae7f2f583ba0d7164f737bfe5e3e1fcb882b9b1f741de3d830` |
| 55 | `def` | [toLeanDateTimeWithZoneString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/toleandatetimewithzonestring.md) | 418 | `declaration-track:dd2171ab4952b74acd172b6cb4a7136f0a4e122c297c1b9edbbc70923001868b` |
| 56 | `def` | [toLeanDateTimeWithIdentifierString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/toleandatetimewithidentifierstring.md) | 423 | `declaration-track:92685108f530ce2cc2efed0758ad2eee837b1549cafcc023cf678b5c7057a8a4` |
| 57 | `def` | [parse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/parse-source-edition-4.md) | 429 | `declaration-track:e6023b7e9a9e43074b8056dc1c85f5f6114583c7db74953b5a8977cd94341a2a` |
| 58 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/instance-source-edition-6.md) | 436 | `declaration-track:890a116c7f89ffb15d86f3952ad7a95bd51105306fbf5d79c905c6600b0f3098` |
| 59 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/instance.md) | 439 | `declaration-track:0e75b48d5ddabd45f63fcde22fc0d97f2564497b3a2e80852392453198c5d174` |
| 60 | `def` | [format](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/format-source-edition-4.md) | 449 | `declaration-track:fc31c00f1baee89a65dfeb2454e6f5d839718cee8e606543f0dd563806e28a33` |
| 61 | `def` | [fromAscTimeString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromasctimestring.md) | 488 | `declaration-track:b5c4af42a443492bcf76abf8d5aa529289b661552a4d3eba7502ec2203a15510` |
| 62 | `def` | [toAscTimeString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/toasctimestring.md) | 495 | `declaration-track:27c57d98df54ee82f485a71ca444a618e325cdce7e986201b36ead4133941200` |
| 63 | `def` | [fromLongDateFormatString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromlongdateformatstring.md) | 501 | `declaration-track:d4b65da46ac1e90ec709f90186502fba7484cd03888b1554b1ad806c6b3e4994` |
| 64 | `def` | [toLongDateFormatString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/tolongdateformatstring.md) | 508 | `declaration-track:05847e07dfa48d39c004742fd9d593e99ee79db6a55b696e7d375c14257376e7` |
| 65 | `def` | [fromDateTimeString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromdatetimestring.md) | 514 | `declaration-track:440a8762bc9bc9fb46d24a9a39b05b769b88f3358a1c61546fbb03a4c7fc53d6` |
| 66 | `def` | [toDateTimeString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/todatetimestring.md) | 521 | `declaration-track:9fff73c265002f570b8138c7a8acf73f0c77e110763335129822b55f2b5d85f0` |
| 67 | `def` | [fromLeanDateTimeString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/fromleandatetimestring.md) | 527 | `declaration-track:22c86336f19fd92bf77ef3164c595a230489909d9f02bd0b5f5629bea24f2394` |
| 68 | `def` | [toLeanDateTimeString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/toleandatetimestring.md) | 534 | `declaration-track:a1de10e9adcd8c273643fe6bc1d722230148588a27fbb9aa1d9ed40045cfc32f` |
| 69 | `def` | [parse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/parse-source-edition-2.md) | 540 | `declaration-track:a95c66a26c97f5c70ce14f418c72d86a3c93f8c25af95a45262f8d87a352d9e0` |
| 70 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/instance-source-edition-8.md) | 546 | `declaration-track:fd3475b8a5c186181b3adfb06f1626bac2926169055187384ca5cd4450947dca` |
| 71 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FormatPublicIso8601.lean/declarations/instance-source-edition-3.md) | 549 | `declaration-track:67ebe0d4e5393c26dcbacad814aaa6b0123b41a0e092d130c739a6ebfc8dc5b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b52bf159a600e44aed6c257bff324867517039d4b9cdd798834ba6286753d55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantfba825b2ba466f981388d5f6b89a69d6c1e911a1c5c6e942e9c683c6dfa8fe92.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Format/Variantfba825b2ba466f981388d5f6b89a69d6c1e911a1c5c6e942e9c683c6dfa8fe92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
