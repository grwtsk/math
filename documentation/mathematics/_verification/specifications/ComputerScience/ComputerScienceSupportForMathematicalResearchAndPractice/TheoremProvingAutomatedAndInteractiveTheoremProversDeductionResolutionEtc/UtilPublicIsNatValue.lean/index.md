# Verification target: Util Public Is Nat Value

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2aa2179ce1cd38b07fee355a94b01383486bd6dc",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantf9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2aa2179ce1cd38b07fee355a94b01383486bd6dc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantf9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantf9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.InferType` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.AlphaShareBuilder` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.LitValues` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [isNatValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isnatvalue.md) | 27 | `declaration-track:5f23ccd476481af35ba091b0733eae841a713c83ce5d467bf021036a16695308` |
| 2 | `abbrev` | [isStringValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isstringvalue.md) | 28 | `declaration-track:81bae513aa059a25601252070f9a92ee1d4a4c9cec1fb4432de0880c05d78e60` |
| 3 | `abbrev` | [isIntValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isintvalue.md) | 29 | `declaration-track:9d71114be53946d4fd03bf7d17e83ce18373f8aa51a0fd9e770a6c57e62546d8` |
| 4 | `abbrev` | [isBitVecValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isbitvecvalue.md) | 30 | `declaration-track:ecf456cc8149da505305ebe7618b10b1ae9e6203a6b794d528ee59fef93441b8` |
| 5 | `abbrev` | [isFinValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isfinvalue.md) | 31 | `declaration-track:d1e66f97e38d524321d54a7d12114f4f99cb82b486a4d3ba2408d9cf55da8412` |
| 6 | `abbrev` | [isCharValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/ischarvalue.md) | 32 | `declaration-track:8ee48d54137c686b54f7f1d0dc6fa050b248d7d526fc61bd0e80d5619a53250b` |
| 7 | `abbrev` | [isRatValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isratvalue.md) | 33 | `declaration-track:6632b8d1c5ac7ce4fa4595fcf6521c80e5592c0034a3b08fa75eee80ed57e6d7` |
| 8 | `abbrev` | [isUInt8Value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isuint8value.md) | 34 | `declaration-track:aba1a31bc517c8a9bdaa58c0f28ee44722e586c2d3a2434fd49f51d721002511` |
| 9 | `abbrev` | [isUInt16Value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isuint16value.md) | 35 | `declaration-track:1b40df865a90bbb15a5993bf102c5e842b43bfbfb723ffc79ea83e0105b02655` |
| 10 | `abbrev` | [isUInt32Value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isuint32value.md) | 36 | `declaration-track:64244280584d10636e99be154bc364a5d1c4e50978a57dfaf1245aaf7f4eed83` |
| 11 | `abbrev` | [isUInt64Value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isuint64value.md) | 37 | `declaration-track:1ba843630b21379a5a52276d786b245d9f5f301300e0c16870cb82361edef0ba` |
| 12 | `abbrev` | [isInt8Value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isint8value.md) | 38 | `declaration-track:df90b6cac060b27a0857dc25a3bc731868dacbdecf62e8f315f49e2d62658b1c` |
| 13 | `abbrev` | [isInt16Value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isint16value.md) | 39 | `declaration-track:cc7a20e437c849c457fd5c3d6310f413c1cf00e5d04e03041748e101aa822536` |
| 14 | `abbrev` | [isInt32Value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isint32value.md) | 40 | `declaration-track:9fcd403f9bdff2145c4069ed9f0e0ff966387d04f174339304e5f040227e49f9` |
| 15 | `abbrev` | [isInt64Value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isint64value.md) | 41 | `declaration-track:9502a2ecb4e76f482074ae392fd55bccbf47b15df90a769e2a4d38b599fef002` |
| 16 | `def` | [isVal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isval.md) | 43 | `declaration-track:33c112392012ec3695b7ae2efd6ccebff14bbb4180294752ea577e70af6f6b49` |
| 17 | `def` | [isBuiltinValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isbuiltinvalue.md) | 64 | `declaration-track:7532aea92d047421c409cc948a054fee754fbecd537324f4e452a173861c3542` |
| 18 | `def` | [guardSimproc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/guardsimproc.md) | 66 | `declaration-track:99c31dc1130078034342925aba91485e89da7e449c0033caafcb753abdc8b0c2` |
| 19 | `def` | [isAlwaysZero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isalwayszero.md) | 70 | `declaration-track:8e5a0bbf15be2bccbfe1963eb6880bcaf967b2b9c80e15d5b567145efb67d028` |
| 20 | `def` | [isProp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isprop.md) | 79 | `declaration-track:a2eab811cd381a2f06fa02b7429f93d20508d77ed5ea0fedebac7f8013e5dbd1` |
| 21 | `def` | [isProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isproof.md) | 91 | `declaration-track:3d7693e1e606ee73e6c455bb11c1a40959673e0fc8dc0863b1093a2341c88385` |
| 22 | `def` | [isProofTerm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/isproofterm.md) | 98 | `declaration-track:0a38de0c99cf9e0ac997d913283e57006bc697f0b17cfc7c239fc3b84c81db0a` |
| 23 | `def` | [getListLitElems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/getlistlitelems.md) | 102 | `declaration-track:0798b52fed1a216862417b9727506d47e2a5561fcedafc6862b7e474b4fe5665` |
| 24 | `def` | [markAsDoneIfFailed](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/UtilPublicIsNatValue.lean/declarations/markasdoneiffailed.md) | 108 | `declaration-track:107e9d5a5b00b0515e5b81910076b176ff7802bc00a84066d52c69e17105a226` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad0f364fa3a0357c41bd0eca37387e69dfb21cec46b9f48cb28498deb54208a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantf9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantf9d078aaefd15d35ac97f8d171bf5a6aea62f97e23fc6de92ca29a898828d46b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
