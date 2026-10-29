# Verification target: Add Decl Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "512ba0ff2cdf52843b9f5425ec636e94d15ab92b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `512ba0ff2cdf52843b9f5425ec636e94d15ab92b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Linter.Init` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Compiler.MetaAttr` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Util.RecDepth` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Kernel.Environment.addDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/kernel-environment-adddecl.md) | 23 | `declaration-track:48d390d645449047246c930a99136069bb3983330f7965a0485064b182c56da7` |
| 2 | `def` | [Environment.addDeclAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/environment-adddeclaux.md) | 30 | `declaration-track:4dce546d0c90fbe54d7ef9468dba708e904b5078a6f6a466cccbad328b575da7` |
| 3 | `def` | [snapshotEnvLinterOptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/snapshotenvlinteroptions.md) | 39 | `declaration-track:187e60c9280af1c11a17e85a8e64606b48d513f42f370e79e7014daa09e76b03` |
| 4 | `def` | [isNamespaceName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/isnamespacename.md) | 49 | `declaration-track:965da526596cc0e4d494c9dfaa60055e3bc0f3c5da64a3f0b3a17a1df88adfb1` |
| 5 | `def` | [registerNamePrefixes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/registernameprefixes.md) | 54 | `declaration-track:4ac5bb31cba616faca4727fdb2d9baa3016463248d2eec5f4a5773ff2171dfb9` |
| 6 | `def` | [warnIfUsesSorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/warnifusessorry.md) | 80 | `declaration-track:38e0083cb33c24bd3adf1538333abdd569b97e9224b62f2c32f75faf1b777ce5` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/builtin-initialize.md) | 98 | `declaration-track:f2d76ab82d62e48a95be0ed0273f72fa8fbc57a7df4d9ce8ab889ba98f3915ea` |
| 8 | `def` | [addDeclCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/adddeclcore.md) | 101 | `declaration-track:e2e20d0702c63c5bf7b974a703f7d4ea4beb204b16cc273ffea5b7c8bf004c54` |
| 9 | `def` | [addDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/adddecl.md) | 229 | `declaration-track:5aa4db9800a1b3bb2d2dcd5e1eb5205124fef73453c7cbd508c12030475a6407` |
| 10 | `def` | [addAndCompile](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AddDeclPublic.lean/declarations/addandcompile.md) | 233 | `declaration-track:b2a3ae55cc835c709d23604b969834f5806b4ce7f2afc21e97948c4384ee7625` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4df2b8973758996cf2d3af9cb6e26b87236f1d342dd7a1cdeb2dd1707ef91b70 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AddDecl/Variant7e6e74107d8f0116dff7cde2de3e60ed556bbab3ca56309311ea90dfc931bd40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
