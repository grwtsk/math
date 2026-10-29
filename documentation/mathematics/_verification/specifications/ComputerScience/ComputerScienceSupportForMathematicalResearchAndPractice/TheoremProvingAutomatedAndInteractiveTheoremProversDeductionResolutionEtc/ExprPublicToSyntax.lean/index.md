# Verification target: Expr Public To Syntax

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "554be997081805e4428e1598711e62c0894c75a9",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variante36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `554be997081805e4428e1598711e62c0894c75a9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variante36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variante36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec.lean.json)

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
| 1 | `def` | [toSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/tosyntax.md) | 26 | `declaration-track:bd86f750639d56e915594ef15a56c43881d95336bd5d3d639b49f99bc8e68ebc` |
| 2 | `def` | [withApp'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/withapp.md) | 34 | `declaration-track:ae57c5d9659903bbb8f13980595f4ad6c650102a734c08b9dce87a19da1bddd0` |
| 3 | `def` | [getAppArgs'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/getappargs.md) | 48 | `declaration-track:4ed50e11f7919bebd4bf25828985a88acb9e3a4174ed02eab9842a5d165aaa72` |
| 4 | `def` | [traverseApp'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/traverseapp.md) | 52 | `declaration-track:0c43acf7031408981a3e58d1d16022d43b682b8f51e1a2d91c58c3e48fb63a19` |
| 5 | `def` | [withAppRev'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/withapprev.md) | 58 | `declaration-track:fd65fd3b1482c81cd0f2de5bbb62de3ac82c16d4f124ecd7fb4eac501c9cd946` |
| 6 | `def` | [getAppRevArgs'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/getapprevargs.md) | 70 | `declaration-track:e20742399aca64b68a6a1d22efe54b2fee8dae9ca027c55b4ac693c51025181d` |
| 7 | `def` | [getRevArgD'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/getrevargd.md) | 74 | `declaration-track:9ba1614df75576893e894268f783cf9d1735053cffd2656e8677b1afa2113b32` |
| 8 | `def` | [getArgD'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/getargd.md) | 82 | `declaration-track:228ef36beb1b6071398c8ec79a6c3f1f9a611ed919dbe8a28d352b6b93a31fbf` |
| 9 | `def` | [isAppOf'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/isappof.md) | 86 | `declaration-track:67f44181387d506caa2947f4a460a72cc59df477e103c82043af05a8e328e6e1` |
| 10 | `def` | [natLit!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/natlit.md) | 92 | `declaration-track:0e5f29e26a4478e44aba089936936adff5617fae4cdabb55f5936a8f73f5152c` |
| 11 | `def` | [intLit!](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/intlit.md) | 98 | `declaration-track:870262db95ae7491b727592440387d997848b58e5634c22dc4db102b0cec6d9b` |
| 12 | `def` | [addLocalVarInfoForBinderIdent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprPublicToSyntax.lean/declarations/addlocalvarinfoforbinderident.md) | 109 | `declaration-track:6530fbb57269df35eb283b93246c8752001eb5841e1188603eba4dd8ba0212ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c686c876838f237343e20f79f2dde007c2688ced0ff848d2beebdaf5be9bb5bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variante36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variante36a0e6f2c0ff7f6e2055cc5a517f3332812abe17b7f2635c5a2bd435079efec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
