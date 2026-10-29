# Verification target: Attr Namespaced Public Sym Int To Bit Vec Name

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c1c3dbe65ced0d48923d32784f4f45dc634c226",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant3090d35a5e2db9037c9b71a93ed22098bda4162934219b03c8a102f7c858f198.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c1c3dbe65ced0d48923d32784f4f45dc634c226`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant3090d35a5e2db9037c9b71a93ed22098bda4162934219b03c8a102f7c858f198.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant3090d35a5e2db9037c9b71a93ed22098bda4162934219b03c8a102f7c858f198.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Sym.Simp.Attr` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/builtin-initialize-source-edition-6.md) | 34 | `declaration-track:b34c6fa36eb3df4708e3d9cabfa25a1c40fb079748cc2c8a2efad563c6e239e7` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/builtin-initialize-source-edition-4.md) | 35 | `declaration-track:72d65e08132e57b7eb72a1e4aa1815de6e83dd405fce42de70a569144f55e23e` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/builtin-initialize-source-edition-2.md) | 51 | `declaration-track:3606eb75319178e2f751f4c8747aa49f90922c6c69a8d92c7c4174191eb37a60` |
| 4 | `def` | [symIntToBitVecName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/syminttobitvecname.md) | 54 | `declaration-track:a559aab10df7d842ba83da94519033a34fafce1bf2661ed00b0a04ab910674cd` |
| 5 | `def` | [metaIntToBitVecName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/metainttobitvecname.md) | 55 | `declaration-track:d571157d64e44b3f3359ad409b831d18d385757df537ca47abdd2dc95bb3d426` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/builtin-initialize.md) | 57 | `declaration-track:09161722c325850bc1ed97ed322bb58ea37b0caa64156ac193ee2195304d313c` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/builtin-initialize-source-edition-8.md) | 60 | `declaration-track:d51f12414f330ab74d7cba3c394138475a8e4ea16ffea2f202968c95f9e68e30` |
| 8 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/builtin-initialize-source-edition-5.md) | 63 | `declaration-track:b22c765ff507fc05f562059a5acc3906951d612f46f3f83e9c341907f152afa7` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/builtin-initialize-source-edition-9.md) | 76 | `declaration-track:ed2f604d2c1df38276d85ba0b2b99f463525ad13959a22dd720152fb03e6cc0a` |
| 10 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/builtin-initialize-source-edition-7.md) | 78 | `declaration-track:c45d185cb0b969a98ae9d58d4194ab88faef631c7bdae5381435db5ab87e0e72` |
| 11 | `def` | [addBuiltin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/addbuiltin.md) | 81 | `declaration-track:cbbf4087f8faeebfbd94e4c3d9634152f6a17707b9f7e0f09fe96548b1838f86` |
| 12 | `def` | [Attr Namespaced Public Sym Int To Bit Vec Name](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-symin.md) | 90 | `declaration-track:dfe889ecff41f3aa6626d97f7757adbdbbbab25c374d94d9cac0977102660ad7` |
| 13 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrNamespacedPublicSymIntToBitVecName.lean/declarations/builtin-initialize-source-edition-3.md) | 96 | `declaration-track:6529bf88b3622555ce3d8ef24efa16be78454f7f3cfb76b765570c1c8d757b62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97f4e38fb68385dcac08cb654ee665dfa7a34cc728899b0b47940592b13479e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant3090d35a5e2db9037c9b71a93ed22098bda4162934219b03c8a102f7c858f198.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant3090d35a5e2db9037c9b71a93ed22098bda4162934219b03c8a102f7c858f198.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
