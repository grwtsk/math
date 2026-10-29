# Verification target: Attr Public Tactic Code Action

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "886fe20ef9cc7e7ee8a5f9084b5d436adb1c8f48",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaa178b9fd3fd65bb716bf10781a070239b9f2ff7dc2d58037a92a2f7afd93fbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `886fe20ef9cc7e7ee8a5f9084b5d436adb1c8f48`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaa178b9fd3fd65bb716bf10781a070239b9f2ff7dc2d58037a92a2f7afd93fbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaa178b9fd3fd65bb716bf10781a070239b9f2ff7dc2d58037a92a2f7afd93fbc.lean.json)

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
| 1 | `abbrev` | [TacticCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/tacticcodeaction.md) | 27 | `declaration-track:a5c85ce2ae1191ac3873f686fe1e19159e6f294ba68dc0ed5f5f63fd5ea21457` |
| 2 | `abbrev` | [TacticSeqCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/tacticseqcodeaction.md) | 33 | `declaration-track:aac83437a21b80f6ac5e9857911db3fad658bdce5aaa441e4707789ada672c13` |
| 3 | `def` | [mkTacticCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/mktacticcodeaction.md) | 39 | `declaration-track:9f526dd9ea17d5af0fef12f24fabc456d37084555f1e309d65cc88a2ce8c4edd` |
| 4 | `def` | [mkTacticSeqCodeAction](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/mktacticseqcodeaction.md) | 44 | `declaration-track:17e55a96ff10e0c35ee6936f2656fef89eed97bed19e7748b0ffe09a71d4d97c` |
| 5 | `structure` | [TacticCodeActionEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/tacticcodeactionentry.md) | 49 | `declaration-track:a7ac8141d3a34fedd0fa9f0fdd75e121233175e43cb83bfb146dfacb52a87ec4` |
| 6 | `structure` | [TacticCodeActions](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/tacticcodeactions.md) | 57 | `declaration-track:a13d22ad6d6d7736e7f899b6d259f484cb36e27818f8ae1db7727d17e6e0277c` |
| 7 | `def` | [TacticCodeActions.insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/tacticcodeactions-insert.md) | 65 | `declaration-track:50a8de05a32ef5c2e7efdfeba87081fcad5f28a043ec37702d31e9e28a256d30` |
| 8 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/initialize.md) | 74 | `declaration-track:40fe89779381ecf0c778e4c089fee7c750ea13111dff8f22d0db23f4c495df01` |
| 9 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/initialize-source-edition-3.md) | 86 | `declaration-track:f420424a213d1c1dc2b6ad163a649fc7bb71bf5a858685249db43e364f5c761c` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/syntax.md) | 113 | `declaration-track:683e6dd84f3800b330b10ad41f04e4c42e8600e48dba9cc0fe53cf865d50bf76` |
| 11 | `initialize` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/AttrPublicTacticCodeAction.lean/declarations/initialize-source-edition-2.md) | 115 | `declaration-track:efa1956c8a95f63104200918dc6e296ce3c7ada202c097cf2f6e05749ea95ae7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c332b792a372916f46f4924b905dee4fb8b0c89287d6b11c93d839f367806ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaa178b9fd3fd65bb716bf10781a070239b9f2ff7dc2d58037a92a2f7afd93fbc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaa178b9fd3fd65bb716bf10781a070239b9f2ff7dc2d58037a92a2f7afd93fbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
