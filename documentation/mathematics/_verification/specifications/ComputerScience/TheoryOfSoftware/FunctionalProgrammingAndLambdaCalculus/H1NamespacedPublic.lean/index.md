# Verification target: H1 Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e244ad062e99c3043e796a2a97ac54bbdb7a8215",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e244ad062e99c3043e796a2a97ac54bbdb7a8215`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean.json)

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
| 1 | `structure` | [StepResult](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/stepresult.md) | 48 | `declaration-track:bee6d35e0c6c76cf49fdc2c5cf4f25eadd89d689ab9569b809b7d8dbc07cee76` |
| 2 | `structure` | [PulledChunk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/pulledchunk.md) | 63 | `declaration-track:b10cf62bb0f57cc8e579306d5a093c80c10759712ecc16d2f53c95cae4e83256` |
| 3 | `structure` | [Machine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/machine.md) | 84 | `declaration-track:971800c9af44a6cdfb221a75ff9a44df95a62d3cb4fb57f72d2664bd824dd74a` |
| 4 | `def` | [modifyWriter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/modifywriter.md) | 139 | `declaration-track:2196365de1cdb70b79574a3b5e381337aac30ea7f33ea9acd6290fa54482192a` |
| 5 | `def` | [modifyReader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/modifyreader.md) | 147 | `declaration-track:182ec84a504f4be17ac51264041960db9802d43733bddf7b206b64ee39a4d703` |
| 6 | `def` | [setReaderState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/setreaderstate.md) | 155 | `declaration-track:eeb1b902176c1a257a40b0df3a40b05f11008c9dae67b77b9738cb15d033de2b` |
| 7 | `def` | [setWriterState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/setwriterstate.md) | 162 | `declaration-track:3f3d4b2da78829cdfa85248838365c83f20b26fcebc46c7083680b9a5f012eb7` |
| 8 | `def` | [addEvent](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/addevent.md) | 169 | `declaration-track:804be4b805df4950a5530b8c0f9ff973bba80f2d92e5cfef002a068f8378b1af` |
| 9 | `def` | [setEvent](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/setevent.md) | 177 | `declaration-track:987631389bb0c911150ca6f5df14f0557d8456d23b61bb405c5650ba774bfd77` |
| 10 | `def` | [setError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/seterror.md) | 186 | `declaration-track:bdd520c97c247d7d3d6f8cdf201546e4859f4e5391f751bb0b676dbdc464b267` |
| 11 | `def` | [disableKeepAlive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/disablekeepalive.md) | 194 | `declaration-track:51ccfb1fa15b1adb3e2f30405396cc312bfa6aad30c252fb77023376ee32fa0a` |
| 12 | `def` | [setFailure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/setfailure.md) | 202 | `declaration-track:573c80f5c6150c6779f35a34e09e47da1d8ecdb0b87ca4042b87260d03c743d2` |
| 13 | `def` | [failBadMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/failbadmessage.md) | 212 | `declaration-track:079c1e8b83b957b83bde6bfdf68cf220fea1513d57025904c22abf728b3e3469` |
| 14 | `def` | [updateKeepAlive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/updatekeepalive.md) | 219 | `declaration-track:a1a3de7c8bc22ae49077be8214684f5d49223819843ab0a700d4fa5b94d659b7` |
| 15 | `inductive` | [BodyMode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/bodymode.md) | 222 | `declaration-track:70aca90a85bcfbb760b5a7250b33c98591647fb9482f8c2ca0294780a5649bbf` |
| 16 | `def` | [responseMustNotHaveBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/responsemustnothavebody.md) | 238 | `declaration-track:112d000f32c155112b16f6bba32fff39302192bab4304d4d8e155b477891cc5e` |
| 17 | `def` | [isValidRequestTargetForMethod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/isvalidrequesttargetformethod.md) | 250 | `declaration-track:858ff74fd9b1c0fd0617820d1402b28fb5242aa6180974c1d4bb4d7a4640cc66` |
| 18 | `def` | [isDefaultTunnelPort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/isdefaulttunnelport.md) | 266 | `declaration-track:6d73b7fa1488d7cb5e923b66fa3abb98eb96fef33e94a7d61ad554d88c18cfbb` |
| 19 | `def` | [hostAuthorityMatchesConnectAuthority](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/hostauthoritymatchesconnectauthority.md) | 270 | `declaration-track:0796b0b337bf6de8d3c9aa00d9e46f3946f5ba77e8bc598c5722ef6fa55ea388` |
| 20 | `def` | [hasSingleAcceptedHostHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/hassingleacceptedhostheader.md) | 294 | `declaration-track:e2a970128efe876b60defc92f774afc3d0c15477b280223a73bc10577124ba3d` |
| 21 | `def` | [checkReceivingMessageHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/checkreceivingmessagehead.md) | 317 | `declaration-track:6f6b1fb243f9f682c1f2b464ca037f8a2038854d668f3f8ce2dd07aea182f7d1` |
| 22 | `def` | [hasFramingHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/hasframingheaders.md) | 340 | `declaration-track:6b3646b9183f2cb949a001a4239a7b77fea224f683852ce3fba8c2a215d2d19a` |
| 23 | `def` | [checkSendingMessageHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/checksendingmessagehead.md) | 350 | `declaration-track:6d51297c836a1d25091b7aeb0a7113a52b16312f39cf84e642ef51050717c9b4` |
| 24 | `def` | [checkMessageHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/checkmessagehead.md) | 368 | `declaration-track:cac6ebd21505a1438193e33492ff31aa3856eedec61eb6741725ecb4b4dc66d8` |
| 25 | `def` | [hasExpectContinue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/hasexpectcontinue.md) | 380 | `declaration-track:4adaec490cfcbb43bb2859e4777b941f8b496b786e1c65f9514cb476106c3deb` |
| 26 | `def` | [normalizeFramingHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/normalizeframingheaders.md) | 393 | `declaration-track:0020e3a5f30e4aa20d3a2c3e5000ad79a7195f25dfa3e43d65067605d83e4083` |
| 27 | `def` | [responseForbidsFramingHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/responseforbidsframingheaders.md) | 404 | `declaration-track:4ae38d1edc844d8526c718a03668ff80d53a7c981c5b821eb251037babaffbce` |
| 28 | `def` | [drainBodyInternally](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/drainbodyinternally.md) | 412 | `declaration-track:9e8781dae6e146f911b3be68b8ebd47265a7ce81b7109a5ac9f0b96d93a3fcca` |
| 29 | `def` | [mkPulledChunk?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/mkpulledchunk.md) | 424 | `declaration-track:9c804f3e043d94e594f9fdedad22b81c4f8589027e440e67df08e6acb795f513` |
| 30 | `def` | [fitsBodyLimit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/fitsbodylimit.md) | 446 | `declaration-track:b554cc8616edd4c1242db60d443a4ad2269dfd9239d8500f11b0613e37d55dd0` |
| 31 | `def` | [maxBufferedInputBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/maxbufferedinputbytes.md) | 456 | `declaration-track:eb54c8de39ee8c8f6a0593daffdf31bd136ca210f43272af73ace0ac981cf312` |
| 32 | `def` | [addBodyBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/addbodybytes.md) | 463 | `declaration-track:f8da4248f7a79446a5b0925b5ac4b0197ece2251a0cdf3f3e99f0a99f5d1d702` |
| 33 | `def` | [failed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/failed.md) | 472 | `declaration-track:9e3bf18c4520d3671041fb8fa1cce35a3b157473c706ab7b9b77a1ead4a60520` |
| 34 | `def` | [isReaderComplete](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/isreadercomplete.md) | 481 | `declaration-track:a6e3a228e05d98645cb680ab99192b77c8b8e85d5b0b8dbfeea40a68544c62a0` |
| 35 | `def` | [isReaderClosed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/isreaderclosed.md) | 490 | `declaration-track:8497be5cf6a3623713cae01b3a8ba9c4326b403b9289994d5a42d368242788e9` |
| 36 | `def` | [isReaderAwaitingContinue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/isreaderawaitingcontinue.md) | 500 | `declaration-track:7b0debb2d54af486c60f6884ac4fc919db866cf78150a5c64dd3726dfc0ef2ac` |
| 37 | `def` | [shouldFlush](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/shouldflush.md) | 509 | `declaration-track:e8e5f563093e739497bf5df56c9447bb2dc79bce11645a698126d2b503be922c` |
| 38 | `def` | [isWaitingMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/iswaitingmessage.md) | 523 | `declaration-track:aa57af19f09cbef73d0eed1e795b30483fb991089e8b8e5dff32e1952f016e6c` |
| 39 | `def` | [halted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/halted.md) | 531 | `declaration-track:ffa329086e639ac2ac6b72a2ae4b5730fb3bb23fbf53b8ebc5c693f8dcf73bdb` |
| 40 | `def` | [canPullBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/canpullbody.md) | 540 | `declaration-track:6eb28c7cbbdcfc3c9cddee36cbabc7376d229e99b19fb0a2d77b295ffcf88b26` |
| 41 | `def` | [canPullBodyNow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/canpullbodynow.md) | 550 | `declaration-track:ec7a75e4889d333cc5f42bb06741406d68c114374cecc21bc4844804d725a660` |
| 42 | `def` | [parseWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/parsewith.md) | 562 | `declaration-track:900e693075d4099c90333e604f990e68c82a75c42ead2586f81f1dd6ca569fe3` |
| 43 | `def` | [resetForNextMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/resetfornextmessage.md) | 601 | `declaration-track:7f284492fa75ecc845a9059a3f713578248056bd208eb6c6703eb2a85dfddf75` |
| 44 | `def` | [exceedsBodyLimitForMode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/exceedsbodylimitformode.md) | 638 | `declaration-track:a085bb8ee63e366bce07dae78ce9218cc6719c44d96dbb31c5f256ddfa4ff19a` |
| 45 | `def` | [readerStateForMode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/readerstateformode.md) | 650 | `declaration-track:0fa43efe857cc2898ca64736666a1278444644df13f9de9ba38e354969f0746e` |
| 46 | `def` | [waitingContinueAfterHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/waitingcontinueafterheaders.md) | 661 | `declaration-track:d68140ba99a93d4b892746709f67f2c9796ce768ae96639f27e4bb1e50348e17` |
| 47 | `def` | [advanceAfterHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/advanceafterheaders.md) | 670 | `declaration-track:d335242ae34010cac55d926663bc50c5cfbbe6d0ece11f44835efb88cac03c3f` |
| 48 | `def` | [processHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processheaders.md) | 687 | `declaration-track:edd59130b2e6fd1a9d2c6792c5ca2c8eebdc759d4ccf83bc87fa7cc2d6e2aca5` |
| 49 | `def` | [writeHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/writehead.md) | 707 | `declaration-track:ec9872b0a5c9399d04fe42aa572ebb395f69c24df6b9703bbf43749f00e9f289` |
| 50 | `def` | [feed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/feed.md) | 794 | `declaration-track:4efbd56d24fdd45e3c682c33a0531d9de8ee636ea7f340d062404b84ca1c5190` |
| 51 | `def` | [closeReader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/closereader.md) | 811 | `declaration-track:e2b947cdb8260417886ad9bd2634ec58effa2894224b062028e814912b5412b4` |
| 52 | `def` | [closeWriter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/closewriter.md) | 818 | `declaration-track:72ee01075a737d49ba8f1b4a9eeecc48ffeb71482e850cccc06d3f87b91b81d8` |
| 53 | `def` | [userClosedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/userclosedbody.md) | 825 | `declaration-track:a9f5fa519dddd028d779fd335e42159300faf74c6820a5e85910ac490782dba8` |
| 54 | `def` | [noMoreInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/nomoreinput.md) | 832 | `declaration-track:06caa739cbff0c0424bff618cc06ac52d53e884dbe2736511bc3079f884e93c4` |
| 55 | `def` | [setKnownSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/setknownsize.md) | 839 | `declaration-track:956b9ec26d9157035f89675b611d422101ab08eb66a372aac003183d4851c358` |
| 56 | `def` | [suppressOutgoingBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/suppressoutgoingbody.md) | 847 | `declaration-track:48d10150c3ec4150a3d1959b4579058c86747276b1b317ea194af50b09868c14` |
| 57 | `def` | [failOnFramingHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/failonframingheaders.md) | 860 | `declaration-track:92a37c060dcd9d35ff8796e6266e2cf493ec61f4ce2ce46cd8b58f8cfaf50557` |
| 58 | `def` | [reconcileOutgoingFraming](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/reconcileoutgoingframing.md) | 870 | `declaration-track:4a285c924f9f66e5a287ed989076fa992e5bbede1f7e7ec418af731ca3d2e127` |
| 59 | `def` | [maybeSuppressOutgoingBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/maybesuppressoutgoingbody.md) | 886 | `declaration-track:52a64cd33785951db6afdefc8c0edc4318c9c01d4516178a515add9fc365da14` |
| 60 | `def` | [isWriterClosed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/iswriterclosed.md) | 899 | `declaration-track:015d96549606aafcaf2ed8bac2ef7c6ec4aa6fc768a6487c53c4398ca702fe79` |
| 61 | `def` | [send](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/send.md) | 916 | `declaration-track:36bcccc9b023419b1a538cf0a473695099f2f1a23b77e32c79670ab89c45bd00` |
| 62 | `def` | [canContinue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/cancontinue.md) | 961 | `declaration-track:69be7b0ac0b40d0513d111ff07f99923592404a513989ef47c9657050ca28d62` |
| 63 | `def` | [closeWithError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/closewitherror.md) | 987 | `declaration-track:58a227c69821888c5cdb2df4f00681cf33a6ae6dd0365be311dc359af7989e2c` |
| 64 | `def` | [sendData](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/senddata.md) | 1000 | `declaration-track:bdee3613229b7894b7caa1c18fadd5d926fc298f5cbd280ec03d149323423f7a` |
| 65 | `def` | [takeEvents](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/takeevents.md) | 1012 | `declaration-track:41bf54e7ed59cdb45e683e34f29fc7d2c604ee489ba1aab496783bb35a5f7589` |
| 66 | `def` | [takeOutput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/takeoutput.md) | 1019 | `declaration-track:272556628446bca73429422696b188bdde659ea5cf6bbe3a399ef2f2a488d7cf` |
| 67 | `def` | [closeOnBadMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/closeonbadmessage.md) | 1028 | `declaration-track:4e933e945dde31473109390760d141fc231937d3b3f2fbebac0d6c43813bcceb` |
| 68 | `def` | [bufferedUserDataBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/buffereduserdatabytes.md) | 1041 | `declaration-track:5d5ea54e17c58458d8e2f764a358a381553d7b10080ba063c8c1c60a2ac2c9df` |
| 69 | `def` | [processCompleteStep](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processcompletestep.md) | 1050 | `declaration-track:266eb748a3c9e4aa7ab616975a79b10813aaa57e10dd458ff5e1b4ddcd1753b6` |
| 70 | `def` | [completeWriterMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/completewritermessage.md) | 1080 | `declaration-track:76827af46e6c661002dc40f5912d24a8752a1934c3e1e48b2a8dd1dcae84d528` |
| 71 | `def` | [completeOmittedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/completeomittedbody.md) | 1089 | `declaration-track:379b6a28778fabc6a3d1672cc0826d87d1b0c8f961172828ad56034355e6a8f5` |
| 72 | `def` | [processFixedZeroBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processfixedzerobody.md) | 1100 | `declaration-track:f82b8e2d32b572529d7381e67ac9852e4ad2ecebc10403dc04978e36dc359d28` |
| 73 | `def` | [processFixedBufferedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processfixedbufferedbody.md) | 1115 | `declaration-track:5cfc643027d1bb7fe84678c52262145a2b9603d2443f5834027bdbd63339452c` |
| 74 | `def` | [processFixedIdleBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processfixedidlebody.md) | 1148 | `declaration-track:85633d90b9d818fd7d1c944f43c397141705045f25120905ba9b0b862a13db21` |
| 75 | `def` | [processFixedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processfixedbody.md) | 1160 | `declaration-track:490e440a88e0918da60cfdd0525de26fab817cdf5e31ea6a98bb9ebfe9cb556b` |
| 76 | `def` | [processChunkedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processchunkedbody.md) | 1173 | `declaration-track:7b6f49e4253e41b330a3a3cb9b0a214045fb2ed9d5ccb15df08f1aa880e983cf` |
| 77 | `def` | [processClosingFrameBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processclosingframebody.md) | 1186 | `declaration-track:e44c38b08232a8eca70a7f2bf417945cb2d1d622cd5ef08ddb2204ca1e831ddf` |
| 78 | `def` | [processWrite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processwrite.md) | 1205 | `declaration-track:aa6d0388a06ba2d0ec99b4abeacf87b26d3597aaf0277d0a8f3cde6bee0ffbd5` |
| 79 | `def` | [errorResponseStatus](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/errorresponsestatus.md) | 1240 | `declaration-track:de5af2911012111625889117b094cbce3eb3bac0bcac520ffd723e1010712678` |
| 80 | `def` | [handleReaderFailed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/handlereaderfailed.md) | 1256 | `declaration-track:88bba25f54ce44944cc24644bfe9c19e73069aa366a423be710204d0b2e013f0` |
| 81 | `def` | [bodyNoProgress](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/bodynoprogress.md) | 1278 | `declaration-track:81842109c2d17ab75704e343b8ccacc6dbefdf3a9e09061709a89e1720af3a4c` |
| 82 | `def` | [bodyTooLarge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/bodytoolarge.md) | 1286 | `declaration-track:0e4c478139591f29c60a2d82f14aa108cd6c3f964399335558524d2a2c023093` |
| 83 | `def` | [emitBodyChunk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/emitbodychunk.md) | 1297 | `declaration-track:d0d2a9310ab6294015f1b0fb41181b71d9960fa973f7eeb32a4670796ac364bd` |
| 84 | `def` | [parseFixedZeroBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/parsefixedzerobody.md) | 1318 | `declaration-track:dbdad54430bc332a21b957966a88d971f3be8bb48069cb0282929428938ccfb5` |
| 85 | `def` | [parseFixedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/parsefixedbody.md) | 1325 | `declaration-track:67c5f67741af7206e415e5534317e4e90c2323faf6c70f0f84c2cb6e26f7dea3` |
| 86 | `def` | [parseChunkSizeBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/parsechunksizebody.md) | 1340 | `declaration-track:0d35b6ecb6d85d78a7753ade824331976d59be38e1d621dc52a780e5cca1b86b` |
| 87 | `def` | [parseLastChunkBodyState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/parselastchunkbodystate.md) | 1360 | `declaration-track:c627c63e8c2e5ed5d84e57cebe08f62b78711296e97537038236c56005a4725b` |
| 88 | `def` | [parseChunkedBodyState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/parsechunkedbodystate.md) | 1372 | `declaration-track:c44ec8cd8e7ae9e1967f68b4fb58b8567d0ab5f1575638b6ef19f9d9cbe556fd` |
| 89 | `def` | [parseCloseDelimitedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/parseclosedelimitedbody.md) | 1391 | `declaration-track:e71c4363c893bf63517ed850a1afe47c242a26fe5fcfa412ce8292749067566a` |
| 90 | `def` | [parseBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/parsebody.md) | 1407 | `declaration-track:a54996f7c4cd474b9ec5634fc5c5f61f2c52e3b16dc38f1b9bb8a02fe16bf825` |
| 91 | `def` | [typedHeader?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/typedheader.md) | 1419 | `declaration-track:8309c545b93a96ae2b7771aaddd829e7e62899d01dee12101769290c014a962d` |
| 92 | `def` | [classifyStartLineHardError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/classifystartlineharderror.md) | 1426 | `declaration-track:7bfaf280e2868daba090c54465a1cbb9e2bb12b2e101ba95619cfb23fe88ccad` |
| 93 | `def` | [processReceivingStartLine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processreceivingstartline.md) | 1436 | `declaration-track:623822234da7dd926557243d08e9f908f4b08f8de9e06f15d4a171635f4fca29` |
| 94 | `def` | [processSendingStartLine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processsendingstartline.md) | 1458 | `declaration-track:506c8eee01feca4771da3a4eb05052361f992dcf818348ce73d6e741e666eccf` |
| 95 | `def` | [processNeedStartLine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processneedstartline.md) | 1489 | `declaration-track:4c2823c522621800898d4d2961eddbcd38bdcb052b2dbe6d828ff995bfd2a0c1` |
| 96 | `def` | [processParsedHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processparsedheader.md) | 1510 | `declaration-track:392adacc1b3ff29301c258f36330cd6390751833aff65345eba5cec4fee1694e` |
| 97 | `def` | [processNeedHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processneedheader.md) | 1536 | `declaration-track:9b3ef4fafa63defd953c3b5bc76043513f5dcb9e2fff36568ed67c17e0205aaf` |
| 98 | `def` | [processReadBodyState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processreadbodystate.md) | 1550 | `declaration-track:25145376bec8463aec3b014535bf31e0e37415d29b9e1fd5ee989d6e8c18a7a6` |
| 99 | `def` | [processReaderCompleteState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processreadercompletestate.md) | 1561 | `declaration-track:341f577db6d0e749ebe4e6dd66572e436519d2077360db9f425bd689a35f5092` |
| 100 | `def` | [processRead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/processread.md) | 1596 | `declaration-track:1db376fe566c9410088807984a206f754c2cba507ddfb3105646f43c5d79e268` |
| 101 | `def` | [step](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/step.md) | 1623 | `declaration-track:899e013ebe49deca2d6c2f48ed7246d748a58a62c2d132ed548ead95906a40b4` |
| 102 | `def` | [pullNextChunk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/pullnextchunk.md) | 1635 | `declaration-track:b84719578196ed9505014c6086934f626ce0fd71256d5de3d8d6175cc80d486a` |
| 103 | `def` | [pullBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1NamespacedPublic.lean/declarations/pullbody.md) | 1658 | `declaration-track:85f093f97d13d42147f9337ae660403c9273d3517fea4c9b0fc17deee541131f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17956a6faf9e2e1c9e000e7eca9db67746b0692864ebcac96acbf412715184a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
