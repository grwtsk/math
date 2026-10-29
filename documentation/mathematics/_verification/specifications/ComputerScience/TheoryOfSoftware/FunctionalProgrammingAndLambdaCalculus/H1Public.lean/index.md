# Verification target: H1 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebfa37bf07bbdf9ecde9e0ba367ba6db9b9b9c35",
  "lexical_observation_count": 103,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebfa37bf07bbdf9ecde9e0ba367ba6db9b9b9c35`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean.json)

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
| 1 | `structure` | [StepResult](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/stepresult.md) | 40 | `declaration-track:a8727a23bb2493a4aa8da14cebf20e5f573324fbb94167b2e764c11cb5fb12d0` |
| 2 | `structure` | [PulledChunk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/pulledchunk.md) | 55 | `declaration-track:4837d374f5a212cc44bd84e4643260fe13db4b9267296485c9bf83ce58ee7409` |
| 3 | `structure` | [Machine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/machine.md) | 76 | `declaration-track:a80c0469d7d6ebdf45b5af1f69d79a554edd4e5598f721c8ef9038128007655b` |
| 4 | `def` | [modifyWriter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/modifywriter.md) | 131 | `declaration-track:16bec810a7525242adfb5e8def938779a7f1901bfdb711d8ee6da150ae651365` |
| 5 | `def` | [modifyReader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/modifyreader.md) | 139 | `declaration-track:069b76d9ee146568083bc455cd670f340962948cd3c8790f72df791d33376ed7` |
| 6 | `def` | [setReaderState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/setreaderstate.md) | 147 | `declaration-track:291246f78f7e9fec156d99f53b56205966290c882f6fe37da92d493ac4069e59` |
| 7 | `def` | [setWriterState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/setwriterstate.md) | 154 | `declaration-track:bf9e6ee10ae4fdd3bf05903e9634d4b5c5819f89c8e6a0edb5a5618571255e95` |
| 8 | `def` | [addEvent](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/addevent.md) | 161 | `declaration-track:b8b360841dc0867abb65802e9826aecdfe9e3e76ba50a4d178a1fe266af587ec` |
| 9 | `def` | [setEvent](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/setevent.md) | 169 | `declaration-track:e58504f7b03a1d45e253e07ff17cb9300ef46e2d5741070f6bd5fe16db5eade8` |
| 10 | `def` | [setError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/seterror.md) | 178 | `declaration-track:5e89923f71aeac1a0bba40c324f4ee677a91ef9624265fc88f04e01418b58902` |
| 11 | `def` | [disableKeepAlive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/disablekeepalive.md) | 186 | `declaration-track:43d1c6340c7a48e53f5d585c9268084be581ddc0cea437391f0c1adde73fe824` |
| 12 | `def` | [setFailure](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/setfailure.md) | 194 | `declaration-track:1642b599c8951dcde40899dbab5bf705e0101fe937b3b0b8cd7b5c42be2fc02c` |
| 13 | `def` | [failBadMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/failbadmessage.md) | 204 | `declaration-track:99c32721de6ad5ea90875988ac96216e23a1e58129c555ca803025d1c44544b6` |
| 14 | `def` | [updateKeepAlive](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/updatekeepalive.md) | 211 | `declaration-track:f55f764039f75669a9e8396ff3fb46a4cb96068c74be2b53a616910f0af12a28` |
| 15 | `inductive` | [BodyMode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/bodymode.md) | 214 | `declaration-track:998a7f562b364ff71ee3d1784d0ab606412df5e06fb92074af4b31bfd237644a` |
| 16 | `def` | [responseMustNotHaveBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/responsemustnothavebody.md) | 230 | `declaration-track:726b9ac61694736779fbfad3588ec56933976a363521c9cbef809406e49a8c7f` |
| 17 | `def` | [isValidRequestTargetForMethod](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/isvalidrequesttargetformethod.md) | 242 | `declaration-track:f55083560c1333903de2a4141d6a7e9df645aa85e36773bc5bdfb49a87367366` |
| 18 | `def` | [isDefaultTunnelPort](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/isdefaulttunnelport.md) | 258 | `declaration-track:9fc759e82993423c8e5a596c799bd7322602a3b8e44f1796f69c3a7d6b2448cc` |
| 19 | `def` | [hostAuthorityMatchesConnectAuthority](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/hostauthoritymatchesconnectauthority.md) | 262 | `declaration-track:c4cb05c8b13b0126310a5cf81eab7f7227f3783d36d6ec236219fc843dc85919` |
| 20 | `def` | [hasSingleAcceptedHostHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/hassingleacceptedhostheader.md) | 286 | `declaration-track:6218edb1002578fe442cd82f5b0f41b1f6555e322e39bb0f5c1e652262f5f9db` |
| 21 | `def` | [checkReceivingMessageHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/checkreceivingmessagehead.md) | 309 | `declaration-track:1b0d1bd719a0eb81729f9aca17a80d12c5150e57427fe34b9677616cfcaa400a` |
| 22 | `def` | [hasFramingHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/hasframingheaders.md) | 332 | `declaration-track:c3d316d161856301a181268d93a0a689ac8484b0cf3f2e6d66009a71d52f67db` |
| 23 | `def` | [checkSendingMessageHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/checksendingmessagehead.md) | 342 | `declaration-track:1374812957b31f4b240cbf9cc8692850c07bd3c2b10fd8050095e0132133768a` |
| 24 | `def` | [checkMessageHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/checkmessagehead.md) | 360 | `declaration-track:c7d2e9e87e1b3bfba63c3d2b20474f01e516cf4a58378879b7b32f449f0f40ea` |
| 25 | `def` | [hasExpectContinue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/hasexpectcontinue.md) | 372 | `declaration-track:1702829af6701af958788ca4a3e4a369952b8b32cdfea9ae5e24795616be80b3` |
| 26 | `def` | [normalizeFramingHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/normalizeframingheaders.md) | 385 | `declaration-track:e037900b6b4d74cfa77fcfb2bb5a2491dc94b32cddfa624d53cedb9e8a528919` |
| 27 | `def` | [responseForbidsFramingHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/responseforbidsframingheaders.md) | 396 | `declaration-track:710798b31dc7de07ea17fcfe1b736d17b23c55069bea59d24e94094567df1ef7` |
| 28 | `def` | [drainBodyInternally](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/drainbodyinternally.md) | 404 | `declaration-track:42e43d59634a5859d8879459e6f4a4f5c4484c0c60fcc8986f011851f6003e12` |
| 29 | `def` | [mkPulledChunk?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/mkpulledchunk.md) | 416 | `declaration-track:1cd97035d87cce5634191056bc10e1a8c2418b968ea78cc68296048001edb334` |
| 30 | `def` | [fitsBodyLimit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/fitsbodylimit.md) | 438 | `declaration-track:7f1c614edbef8fa81b449f4979305262e8dcd6b91f05fbbd85d890715f63fc78` |
| 31 | `def` | [maxBufferedInputBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/maxbufferedinputbytes.md) | 448 | `declaration-track:d992817c79a1cdec78fc0e1511df50178739607e17df6271094f0caf5aa46b70` |
| 32 | `def` | [addBodyBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/addbodybytes.md) | 455 | `declaration-track:a60964682cd9cad749c2cc3138053a5e956bc0a3e6114b21b2d4dc662ed73766` |
| 33 | `def` | [failed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/failed.md) | 464 | `declaration-track:5620af009d5741efb0e49fa67e625094bf8ba2744f14766facc39950f28cd173` |
| 34 | `def` | [isReaderComplete](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/isreadercomplete.md) | 473 | `declaration-track:30b8fee5972ca2d958bf6b2569b10da79866397633ba6a030afded52b53bbc12` |
| 35 | `def` | [isReaderClosed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/isreaderclosed.md) | 482 | `declaration-track:817088cdcc1bba56815ba02f2df84687203395e31916fd5d74b214c290d2e15d` |
| 36 | `def` | [isReaderAwaitingContinue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/isreaderawaitingcontinue.md) | 492 | `declaration-track:344cd684e604b59bcc478acb969c604e753a1561381e8897dd708fff8c626054` |
| 37 | `def` | [shouldFlush](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/shouldflush.md) | 501 | `declaration-track:e453084972492fe7734cdb4fd9d97a5586a7b9f3b76c4b04849e65c26b95dea6` |
| 38 | `def` | [isWaitingMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/iswaitingmessage.md) | 515 | `declaration-track:d38bd6b547eb3a267caf5ddbed246a8cdbc562af36f5cbbeaef2c1c2b54411e4` |
| 39 | `def` | [halted](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/halted.md) | 523 | `declaration-track:ece67c8d0b12c0c29dc02c275382dd83b5dc3dc57b201cb78a7afd5bf3268875` |
| 40 | `def` | [canPullBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/canpullbody.md) | 532 | `declaration-track:d8f307de9afa42c6d937697eaf4ce74676589ed41ea63d55cbdde6cd808a588f` |
| 41 | `def` | [canPullBodyNow](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/canpullbodynow.md) | 542 | `declaration-track:96c7a471c87e20e750216252e668f495fa87a70e2f715e13dfcda88badef9122` |
| 42 | `def` | [parseWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/parsewith.md) | 554 | `declaration-track:a73249022fb1e2def08e7c715bd5c7bfa6d3159383a28c0e9f8fe954bf2cf842` |
| 43 | `def` | [resetForNextMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/resetfornextmessage.md) | 593 | `declaration-track:1fbe18513572768a485c736ec25a19365fdff64934f20d4b7238a62e59c729a9` |
| 44 | `def` | [exceedsBodyLimitForMode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/exceedsbodylimitformode.md) | 630 | `declaration-track:fdfb8f39bacd38952c475de7211054a6055342ae96a3298a26f0ff6efbd1081d` |
| 45 | `def` | [readerStateForMode](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/readerstateformode.md) | 642 | `declaration-track:c6dce443af0bd21adc4219f60693062f3d27c574be6073069ea2d55961ed6534` |
| 46 | `def` | [waitingContinueAfterHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/waitingcontinueafterheaders.md) | 653 | `declaration-track:768ef0c02d6bb3a1f63999b24092f8be1bf3e65029ccff20003ba0822592e62e` |
| 47 | `def` | [advanceAfterHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/advanceafterheaders.md) | 662 | `declaration-track:a584d7c8985c6514dadaa64e0f08d72b7a9b6ccb4fd1867c8bc83314d4c9a89f` |
| 48 | `def` | [processHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processheaders.md) | 679 | `declaration-track:ca76b96c9693f60758768b9241ca5159f8aa4151a586993790f4b6b2b746aae2` |
| 49 | `def` | [writeHead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/writehead.md) | 699 | `declaration-track:f640242613c2623027433dcf170d599fd8d86c1e141509f1bb462b66129bfe5e` |
| 50 | `def` | [feed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/feed.md) | 786 | `declaration-track:b38774173aba065b3744ca70d17cd574849702df1a169bc17af4d295e6f8ebfc` |
| 51 | `def` | [closeReader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/closereader.md) | 803 | `declaration-track:7d60e9daf52a087011cde73f46fd15a3c3bff18d28bfe3bef6c0ff685f97581b` |
| 52 | `def` | [closeWriter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/closewriter.md) | 810 | `declaration-track:4e74b6489f80c1b322d690650a86351f1a3f4e2d8aa2f048b9d2bd338eadb400` |
| 53 | `def` | [userClosedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/userclosedbody.md) | 817 | `declaration-track:6f1c7080fbdd30c9cdbd68c6ea6b4e529a838a46a4ed85899dbb0f05820d5267` |
| 54 | `def` | [noMoreInput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/nomoreinput.md) | 824 | `declaration-track:e999800cc2576a748c06d7e3a8715a966cd276a70b7e6299e196631b7a1f62d9` |
| 55 | `def` | [setKnownSize](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/setknownsize.md) | 831 | `declaration-track:d4dd291ddc5175049ed1d6b28b34534b7bb78b84da2b613e0724f41f3f7f93d7` |
| 56 | `def` | [suppressOutgoingBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/suppressoutgoingbody.md) | 839 | `declaration-track:fe68f692359f14a5e3e5112b7e15d00798e4ab7097af45b9d4df905e35c18f57` |
| 57 | `def` | [failOnFramingHeaders](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/failonframingheaders.md) | 852 | `declaration-track:f17e0ef9d6ec4ab446c1df632a1ab053b071d503c22f6729fad22d25143ecef2` |
| 58 | `def` | [reconcileOutgoingFraming](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/reconcileoutgoingframing.md) | 862 | `declaration-track:fd07b0e5529cb57ee975234ec6af19d6d9c90d0f82d2c90e505aa306b8c80818` |
| 59 | `def` | [maybeSuppressOutgoingBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/maybesuppressoutgoingbody.md) | 878 | `declaration-track:47fb495d846b6c842b4eec3d2a1ebc31698ddf5d1f66fc6c3b43a16a8a806c7d` |
| 60 | `def` | [isWriterClosed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/iswriterclosed.md) | 891 | `declaration-track:38f36bed9b03256fb1e1c4e5df109b757681498f918f4f565f0789e6acb20ff9` |
| 61 | `def` | [send](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/send.md) | 908 | `declaration-track:60bc85068d1c64d33b28b79bcc54fc752020570d4a0b9ffca41d3fd667adeba0` |
| 62 | `def` | [canContinue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/cancontinue.md) | 953 | `declaration-track:a78c7f69bdff19fd4afbc9d9db94ac4c49c8e1fe43c5750a7c394c20f7f4ac5a` |
| 63 | `def` | [closeWithError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/closewitherror.md) | 979 | `declaration-track:aa45d8fa821bc243adf66e7b240dee7610a591aecd96e06d346c8d016363e541` |
| 64 | `def` | [sendData](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/senddata.md) | 992 | `declaration-track:abb376e5e35757d115ef4faa9c1bdeddc99d093e77bce64088a612ce99c15bf8` |
| 65 | `def` | [takeEvents](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/takeevents.md) | 1004 | `declaration-track:41df304c10184c6915ae7b4aeadf871f8db2c8aaaead49248c3aa1e831a7aeb2` |
| 66 | `def` | [takeOutput](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/takeoutput.md) | 1011 | `declaration-track:43744b178005d8f50a579e8329ba6a6cfdfb2e73ee62379b6a9d810417d2ed61` |
| 67 | `def` | [closeOnBadMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/closeonbadmessage.md) | 1020 | `declaration-track:9a066b855b78a0c046e2923a5d1863e50d8c6d2a8e72f42cbc0211ae64024902` |
| 68 | `def` | [bufferedUserDataBytes](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/buffereduserdatabytes.md) | 1033 | `declaration-track:9aa34f70220c610ba1ff1033f89ea28a506ab578949636f0f6010bba36316af3` |
| 69 | `def` | [processCompleteStep](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processcompletestep.md) | 1042 | `declaration-track:58b58ec712181865892580a420a1a85e5d4c62b0d7eba93e0cbfbb6c7541e1c9` |
| 70 | `def` | [completeWriterMessage](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/completewritermessage.md) | 1072 | `declaration-track:60c9981dc13ba74d756a6125ef5e9acffeec518872df62da55e99f9a8f807969` |
| 71 | `def` | [completeOmittedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/completeomittedbody.md) | 1081 | `declaration-track:83ae98a2c924fc8c52844dcb04303e48ff889a861a465ba3d479ce2a09cfe7b6` |
| 72 | `def` | [processFixedZeroBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processfixedzerobody.md) | 1092 | `declaration-track:53b604cc7ecceacff476b7a157a71374fa553d4e63e782e5f9f45b0d2ce1e874` |
| 73 | `def` | [processFixedBufferedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processfixedbufferedbody.md) | 1107 | `declaration-track:cdd8bf77b173f2988d070002ad9816ac1394e9d06bf57729372e031ee1e27080` |
| 74 | `def` | [processFixedIdleBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processfixedidlebody.md) | 1140 | `declaration-track:9bd0cbcbba03c967cc3133e1195c6a625f78d8e6bf4d42ac860fbbe6d555752a` |
| 75 | `def` | [processFixedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processfixedbody.md) | 1152 | `declaration-track:50f02ffa3f2b8f4c9d4017f4b5f8cbb93a4dd326af1ca0e9f9abbbd08d30d56d` |
| 76 | `def` | [processChunkedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processchunkedbody.md) | 1165 | `declaration-track:3551ee50e40fe3236ffce49a1563b013a3448ac739c03e761090653d93864ca7` |
| 77 | `def` | [processClosingFrameBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processclosingframebody.md) | 1178 | `declaration-track:bc52c263d66f6f148854c6cdf3052ff2fafa37c9aca07c9b14b467bbbf878716` |
| 78 | `def` | [processWrite](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processwrite.md) | 1197 | `declaration-track:f99eb4976bfe6421a535478379bb475592ede008818285213fb86660da74e9b2` |
| 79 | `def` | [errorResponseStatus](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/errorresponsestatus.md) | 1232 | `declaration-track:92abaa5b94d961f0cc16441234a9e99c977018afe756bd4dbb52a2cc005dc466` |
| 80 | `def` | [handleReaderFailed](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/handlereaderfailed.md) | 1248 | `declaration-track:b526ecb7b54c4d969a6be8cd609fcbe81c8bc0c933493728dcfa80125ff9d78b` |
| 81 | `def` | [bodyNoProgress](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/bodynoprogress.md) | 1270 | `declaration-track:be9a3560f17f7e89f5ea607c7bacbb7e565a883fd45b534dea4ea1f7656d553f` |
| 82 | `def` | [bodyTooLarge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/bodytoolarge.md) | 1278 | `declaration-track:85d39538f2aa47ef1b7f2fd557ba4a0e6cbfe1cdea4953411b4999c547e811c8` |
| 83 | `def` | [emitBodyChunk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/emitbodychunk.md) | 1289 | `declaration-track:f42380c1557a3593e34b60907fc68f3ad163a392ac2a002d321a4653cad0d609` |
| 84 | `def` | [parseFixedZeroBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/parsefixedzerobody.md) | 1310 | `declaration-track:9c7126284d0487a42c1905e3853f477a79d562fdfcd10dc3edaab7105b4616a6` |
| 85 | `def` | [parseFixedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/parsefixedbody.md) | 1317 | `declaration-track:ce371dd0a24fa65654614650919298f9fd247d059201de59bfbbb05ab6a55aa9` |
| 86 | `def` | [parseChunkSizeBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/parsechunksizebody.md) | 1332 | `declaration-track:06c760c7d8dbb7d1fc43f736bc2a6460c97e8cde99c28f4491e6ae25384d7ead` |
| 87 | `def` | [parseLastChunkBodyState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/parselastchunkbodystate.md) | 1352 | `declaration-track:ec32b3c6f0e10089e9263b8c014c8335fb9555cbd9dc3c86da740307630af7ab` |
| 88 | `def` | [parseChunkedBodyState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/parsechunkedbodystate.md) | 1364 | `declaration-track:c42ce77d971e84cf6508384ec5a2f9dde03847b2ff87e5376eaaf97291526644` |
| 89 | `def` | [parseCloseDelimitedBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/parseclosedelimitedbody.md) | 1383 | `declaration-track:1bba0764a9f19952b95c2f59ef15806506ed75eec51f99d37cb7bf23254c7999` |
| 90 | `def` | [parseBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/parsebody.md) | 1399 | `declaration-track:fb305005abb5b64bfe68ac1b73fc1f853cd2ac7cb1a2f13a8bfd4177480cdbfc` |
| 91 | `def` | [typedHeader?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/typedheader.md) | 1411 | `declaration-track:16d70ae519d7c82b61297b8686abcc32b7a2acbb0c4a068831624c9f2bd144b5` |
| 92 | `def` | [classifyStartLineHardError](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/classifystartlineharderror.md) | 1418 | `declaration-track:fb104e08fe0aef9581de1e0fe9c71075edf969d909d5171d2a63984d8d05b356` |
| 93 | `def` | [processReceivingStartLine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processreceivingstartline.md) | 1428 | `declaration-track:26e588273b687aa438e14a5fb0fb52518e9e006ebde9fdcd16eb1b1d4722aede` |
| 94 | `def` | [processSendingStartLine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processsendingstartline.md) | 1450 | `declaration-track:bc19a7e6f394cf5dcebf3a5449cd8bc587aaa93e79999337e04a320b4441eb39` |
| 95 | `def` | [processNeedStartLine](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processneedstartline.md) | 1481 | `declaration-track:10bbdcddd7c4f9e6164fa60d8e53d89e9f8de152b135b99a891fd66b440deb6b` |
| 96 | `def` | [processParsedHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processparsedheader.md) | 1502 | `declaration-track:6dc611e51571052fe8e63e7f6bdfc3f8474a90b2f9a28611c1a8ea1ec48296d0` |
| 97 | `def` | [processNeedHeader](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processneedheader.md) | 1528 | `declaration-track:19552e2e3c4e6cdc8a94bd15b140dc38f385cc397f8d8463bdf2fd74f0187738` |
| 98 | `def` | [processReadBodyState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processreadbodystate.md) | 1542 | `declaration-track:c9daf93db4897ad99231ea8266825e355febbf7d2e15fc2853a32b0b8ae73581` |
| 99 | `def` | [processReaderCompleteState](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processreadercompletestate.md) | 1553 | `declaration-track:03254860684d1e8f6b258ae555f2517402ff1569bf52f4cb6f7886485f1084db` |
| 100 | `def` | [processRead](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/processread.md) | 1588 | `declaration-track:32093a46031104a62750f7d84b8501178c688f930905dff46726619b1ec1d3cb` |
| 101 | `def` | [step](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/step.md) | 1615 | `declaration-track:a0c8ef870b4ade817561b8ffce204abe062c410437455cc78e66e5e209886a4e` |
| 102 | `def` | [pullNextChunk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/pullnextchunk.md) | 1627 | `declaration-track:7a2170aa4fcb562189e09080109d36795ab6542f08991381c4c7f22907361bdb` |
| 103 | `def` | [pullBody](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/H1Public.lean/declarations/pullbody.md) | 1650 | `declaration-track:3d5d19bc8f50d3b56e02903162961bc9f6aac6e6cda206b1310c62581c628e90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c136682ddd2be9b141627d686849b408a2f5c1c180d67f4c9661b78cf627825c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Varianta41b71cf0d32018f66ec40eba22afb2975608beee1d3330db8b953e67120c3cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
