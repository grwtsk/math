# Verification target: Termination Hint Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5448856c9a227fb37367aac1eedeafe220c11ef5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5448856c9a227fb37367aac1eedeafe220c11ef5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TerminationBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/terminationby.md) | 22 | `declaration-track:7a6b378ae629490842aac6bd59ee07afdcd7d4dd51b00a85a09787cf9cfc776d` |
| 2 | `structure` | [DecreasingBy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/decreasingby.md) | 37 | `declaration-track:3965453ae3350a6c026636a3672207259922e1f1a66d712a94a9a6ef6a28dd6c` |
| 3 | `inductive` | [PartialFixpointType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/partialfixpointtype.md) | 42 | `declaration-track:0fde6569aff78cb9bad0b2c3ca8a89d1a13d5008525f31303a6ff07454e2a51c` |
| 4 | `structure` | [PartialFixpoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/partialfixpoint.md) | 49 | `declaration-track:0481abe865fe4d7ca38fb0727e3b356881643ae36552ce4b598d94163ccc6739` |
| 5 | `structure` | [TerminationHints](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/terminationhints.md) | 60 | `declaration-track:4a37f06592bb241597224e2a6c454ae83a7103af942c5f9f2a50c0d304c83551` |
| 6 | `def` | [isInductiveFixpoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/isinductivefixpoint.md) | 78 | `declaration-track:34307ac937383923ab9b08191a969ab09b375c9882d0754dda15493f9e37570c` |
| 7 | `def` | [isCoinductiveFixpoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/iscoinductivefixpoint.md) | 82 | `declaration-track:f8a722348f2cb6e080ba6e4f867ebf75626c93e2cd43bf18b3edb61a7fd1ad59` |
| 8 | `def` | [isPartialFixpoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/ispartialfixpoint.md) | 86 | `declaration-track:799f59a234126e09426caace134ddd2f7f5f598fa7abd3616510d8368be91a6d` |
| 9 | `def` | [isLatticeTheoretic](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/islatticetheoretic.md) | 90 | `declaration-track:a4870e7b729e97e4582285147fa0670f09ffcc74a57cb24781abbb0fee5f0f19` |
| 10 | `def` | [TerminationHints.none](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/terminationhints-none.md) | 93 | `declaration-track:65643888830c0677d711bb77ac7b3839d97edbd57e7b1dcd2fbe8a7723067570` |
| 11 | `def` | [TerminationHints.ensureNone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/terminationhints-ensurenone.md) | 96 | `declaration-track:ef7dd087194c55000282959cd2baa3a46ad03ee23d35cdf3c2924f10e192b174` |
| 12 | `def` | [TerminationHints.isNotNone](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/terminationhints-isnotnone.md) | 114 | `declaration-track:318fa0775bce4ecd154ea6c525b8905ec2fa6b1f45afedd6077cbf6539403b6b` |
| 13 | `def` | [TerminationHints.rememberExtraParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/terminationhints-rememberextraparams.md) | 124 | `declaration-track:34373b6670853631401f273e911393fad2109da7675d216ea1dfdaddb601efc1` |
| 14 | `def` | [TerminationBy.checkVars](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/terminationby-checkvars.md) | 132 | `declaration-track:bc2ee3b473f29388f86f31805ef6a3d1185e54ed6e5a2e7a9dd3f5d50ab452c5` |
| 15 | `def` | [elabTerminationHints](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationHintPublic.lean/declarations/elabterminationhints.md) | 150 | `declaration-track:7076064084564f8dcda330672e9a55b6f39e2259f3ecb785ab2b083582ab51d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2562aa9e94847e45c27d916e8076be30b48da64ad5a5e6224a3ad2f6d0767060 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationHint/Variantf4e36f463051736c2653a9d4fbd788c166b99c0211ee73ac88813d56f7903aa6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
