# Verification target: Move Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "551f4f6b5029625f9608b1c1c1478512d5979b06",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `551f4f6b5029625f9608b1c1c1478512d5979b06`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [GamePhase](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/gamephase.md) | 21 | `declaration-track:f75d116f44ed42329b2e5e0446382c667d75dc611383f699539c0fd466140b80` |
| 2 | `def` | [GamePhase.rank](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/gamephase-rank.md) | 36 | `declaration-track:ea43f2a59cf266d02c8cfc860cd9cbc893b0e280eac5d949ec3983ae9913325a` |
| 3 | `inductive` | [GamePhaseStep](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/gamephasestep.md) | 49 | `declaration-track:a4d4ecbadc784f7bb6ccb7e57be587f55366975d52db3f62183ea9a6e58f1b48` |
| 4 | `theorem` | [gamePhase_rank_nonDecreasing](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/gamephase-rank-nondecreasing.md) | 71 | `result-track:76bfbe32433907d463e3faa19e7aba5cc43c085f05be1f403e1296559525e701` |
| 5 | `theorem` | [committed_requires_reviewReady_and_commitRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/committed-requires-reviewready-and-commitrequest.md) | 76 | `result-track:a69cbbc75d214062d777cbe1c9c674dc75b5b39b05b8ce9f9f1223c2b7649670` |
| 6 | `theorem` | [rejected_terminal](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/rejected-terminal.md) | 84 | `result-track:5ae8c6756881f5ed60156384a540377c33e9575db372760abb81185fe8d90895` |
| 7 | `theorem` | [cancelled_terminal](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/cancelled-terminal.md) | 91 | `result-track:9fd12b68eb9ea7997a4a4bc3e3a8af5bc32adf66291f4c73c9487417acd7d30a` |
| 8 | `theorem` | [committed_terminal](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/committed-terminal.md) | 98 | `result-track:8514631518924fb21c4247214d329240e94da4616270316baa67d362ade8619b` |
| 9 | `inductive` | [MoveKind](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/movekind.md) | 105 | `declaration-track:c34bacd4eb2774f3cb131259806726c96b36bd8b632f7ebd6b4f1d53490d90fc` |
| 10 | `def` | [RepositoryBoard.containsPiece](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/repositoryboard-containspiece.md) | 126 | `declaration-track:13ac23194f9a77d8aebf5fd790216f6eef8257fa14f80293f9477be57eecd30b` |
| 11 | `structure` | [NetworkSurgeryAdmissionContext](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/networksurgeryadmissioncontext.md) | 138 | `declaration-track:65ef2940da119e1560bad79ad06a82847bc67a43c7311d579f5631b27ba81db4` |
| 12 | `structure` | [PreparedNetworkSurgeryProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/preparednetworksurgeryproposal.md) | 148 | `declaration-track:416a4d146cbf296408dc21fc4ba788a5ba726bff7cb140d5ea4439ca54f06baa` |
| 13 | `def` | [PreparedNetworkSurgeryProposal.IsReplay](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/preparednetworksurgeryproposal-isreplay.md) | 178 | `declaration-track:48dc0b5ea7177810fa3600e2808f794e713af24af690506c93a1c1dc39506089` |
| 14 | `def` | [PreparedNetworkSurgeryProposal.HasEqualRevisionConflict](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/preparednetworksurgeryproposal-hasequalrevisionconflict.md) | 184 | `declaration-track:14ab917f59f3549c473345186bfd3d0cc058f1890f75ae5c2a8d82b2c96e7977` |
| 15 | `def` | [PreparedNetworkSurgeryProposal.PiecesDeclared](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/preparednetworksurgeryproposal-piecesdeclared.md) | 191 | `declaration-track:9d20826f7a0bc3b9a096d8300f4fbd31625e806474b6ffa1713fef56e5ea6682` |
| 16 | `def` | [PreparedNetworkSurgeryProposal.EdgesDeclared](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/preparednetworksurgeryproposal-edgesdeclared.md) | 196 | `declaration-track:1c83de3f07967a1000d8bd10457c4ad7abcc5d417b3a3378b1c287a0a529d44c` |
| 17 | `structure` | [PreparedNetworkSurgeryProposal.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/preparednetworksurgeryproposal-valid.md) | 203 | `declaration-track:49b98ccc7f2f577ea18f56151d812f5aa9462e0a8d2c93722cff43914b917706` |
| 18 | `inductive` | [NetworkSurgeryRejectionCode](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/networksurgeryrejectioncode.md) | 247 | `declaration-track:de655ba864fedffeace25d862599eea91f7ad7eabb5db6cb26c69392d4609a9e` |
| 19 | `def` | [firstProposalFailure](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure.md) | 270 | `declaration-track:db6e083497ee579b2f33945ce9394b750945dd070886f66948e12b2cc7f15ece` |
| 20 | `theorem` | [firstProposalFailure_of_internalContractInvalid](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-internalcontractinvalid.md) | 298 | `result-track:4dcaf5964268fcf13cf6ae567f736d73684aba075eeff40cc94c939f859629a8` |
| 21 | `theorem` | [firstProposalFailure_of_invalidContractHash](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-invalidcontracthash.md) | 307 | `result-track:a6ba8e568fdaed7d613f727ee42ed6bbe6e9a6bdfb9e445510cb3f1d937d295b` |
| 22 | `theorem` | [firstProposalFailure_of_invalidSession](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-invalidsession.md) | 317 | `result-track:6bda5bce341c85447f5c953b8ce7b49e1e8ed4b038fceddd8061ce3235f5b8ea` |
| 23 | `theorem` | [firstProposalFailure_of_equalRevisionConflict](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-equalrevisionconflict.md) | 329 | `result-track:ff36c7b336665406c93c0234e864407a2c9b36bb77ff1db5776a25207bf4a41c` |
| 24 | `theorem` | [firstProposalFailure_of_invalidSourceSnapshotHash](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-invalidsourcesnapshothash.md) | 345 | `result-track:b7c9f5e49cd7a62e63db61ef5086efd6340ddacd98d97235927ceddcc8486888` |
| 25 | `theorem` | [firstProposalFailure_of_unknownPiece](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-unknownpiece.md) | 356 | `result-track:f7df5948e80d614496f817a37b29794ce8935a458c89698efa2b2bb59dff4c04` |
| 26 | `theorem` | [firstProposalFailure_of_unknownEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-unknownedge.md) | 373 | `result-track:e065eee9281e822394758d0e9a1f4e7af5945e49044d5cb8b309a997419e25ca` |
| 27 | `theorem` | [firstProposalFailure_of_sourceRangeMismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-sourcerangemismatch.md) | 391 | `result-track:3dbccd35cb27f75777790907c47818e4e450b0f7235574f88d3bb7910214645e` |
| 28 | `theorem` | [firstProposalFailure_of_overlappingEdits](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-overlappingedits.md) | 410 | `result-track:6a71d1cdc93cd7ba714b500aa7bb92db0d5618390bddcdc96ecf5c49ebd21d16` |
| 29 | `theorem` | [firstProposalFailure_of_capacityExceeded](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-capacityexceeded.md) | 430 | `result-track:64d2df475cc3686f1413ffdf6f28ec7fac41b2909ae7faff182481810ac15dd0` |
| 30 | `theorem` | [firstProposalFailure_of_boundaryLedgerUnbalanced](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-boundaryledgerunbalanced.md) | 451 | `result-track:f194173df97964d8c84adfc74ff7f64fc010d607e196bae82b5b7a13cb762482` |
| 31 | `theorem` | [firstProposalFailure_of_identityChange](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-identitychange.md) | 473 | `result-track:6389ffe7a61605501b376b70a1390ee83e54f6f8d1a1ab1dcdc9d763b6fdf077` |
| 32 | `theorem` | [firstProposalFailure_of_classificationChange](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-classificationchange.md) | 498 | `result-track:7668f4b0b9dd37b12b7a9fef99499e24b8506327a50b2303cbd72b910c99ccaf` |
| 33 | `theorem` | [firstProposalFailure_of_languageValidationError](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-languagevalidationerror.md) | 526 | `result-track:fb877e43fcc68455cf315a32e0db9d3895e1fd34a1d400e6fdd5d87a0bb7b729` |
| 34 | `theorem` | [firstProposalFailure_of_deterministicResultMismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-deterministicresultmismatch.md) | 557 | `result-track:22a1be4d8460f6a871726fb2453f363802e4252c17aa9fff66e6604818ebd5e9` |
| 35 | `theorem` | [firstProposalFailure_of_bracketProjectionInvalid](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-bracketprojectioninvalid.md) | 588 | `result-track:f1d0afdcbbc33cbcb56139567c94b10df9749b72b655c808c80fe431d589cc05` |
| 36 | `theorem` | [firstProposalFailure_of_publicApiChange](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-publicapichange.md) | 612 | `result-track:31051a11c198807420ef4c49ddd0e5e116eb3ef6dce45da0db44398a19d696c7` |
| 37 | `theorem` | [firstProposalFailure_of_statementChange](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-statementchange.md) | 639 | `result-track:c26e549e3c3da34d022786f078a8e416dfdb5621104481ae759460a2cc8f24fa` |
| 38 | `theorem` | [firstProposalFailure_of_axiomGrowth](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/firstproposalfailure-of-axiomgrowth.md) | 665 | `result-track:fde4f19227a04930092c1c083fb120ab4636773910c81a6ae0ac8b0d5c6b3e25` |
| 39 | `structure` | [AdmittedMove](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/admittedmove.md) | 695 | `declaration-track:778b811d636bef55aaaf49f196a6ba3877382cc4e5ba571684c10e5247f153a6` |
| 40 | `inductive` | [NetworkSurgeryVerificationResult](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/networksurgeryverificationresult.md) | 700 | `declaration-track:5508e8d41ca95109254d20017dbb5b1596649ca84e05ba496a852bd20dc1d0b7` |
| 41 | `def` | [verifyNetworkSurgeryProposal](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/verifynetworksurgeryproposal.md) | 706 | `declaration-track:d04548bb14acafea83e15f1e8fe4d76afa5d43a36f8b05dc578c43d8f562dfe9` |
| 42 | `theorem` | [verifyNetworkSurgeryProposal_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/verifynetworksurgeryproposal-sound.md) | 719 | `result-track:d06f8ef16fff45594647eb259656c69fe19e070b9bfeb35582fd20470e690614` |
| 43 | `theorem` | [verifyNetworkSurgeryProposal_rejected_of_invalid](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/verifynetworksurgeryproposal-rejected-of-invalid.md) | 733 | `result-track:efeb5fa2525c85d825f781e7f1b8ecbce92610566c9b5e0ef66e305a599631ef` |
| 44 | `theorem` | [legalMove_preserves_sourceSnapshotIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/legalmove-preserves-sourcesnapshotidentity.md) | 745 | `result-track:12cc9f7eec066291aa762a4680192361ed39a039d4f5b84284c24813bd18b563` |
| 45 | `theorem` | [legalMove_preserves_declarationIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/legalmove-preserves-declarationidentity.md) | 751 | `result-track:222ec7764c89b573065a15162cd1fbd541f0c974f39c9d1e824be1e2a285ecda` |
| 46 | `theorem` | [legalTheoremMove_preserves_statementIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/MovePublic.lean/declarations/legaltheoremmove-preserves-statementidentity.md) | 757 | `result-track:8f639baed89d0832f6ebd1f3a436020f74ce1a54f789cca48994b746900b90a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=614445f6436dd442dae0e05cb1c4aeb299027b85897d0b5aa6706786144ca9fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Move/Varianta6f3f6465657e6bd0d8ef3e9ead51a23f5fc44d7711c2d341f112e945f517217.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
