# Verification target: Function Data Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08160f299eb5f6dfb40c3482c082cd69eaa6912e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08160f299eb5f6dfb40c3482c082cd69eaa6912e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Qq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FunProp.Mor` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FunctionData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata.md) | 31 | `declaration-track:224bbae0383ed6cee56003000ae9cbc9d06370281b090b96680e5f32b88d73dc` |
| 2 | `def` | [FunctionData.toExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-toexpr.md) | 46 | `declaration-track:e7d9bf227dea9f4d41d13a5270c74ecefa86d299d900ed69f7f8be32fbb30191` |
| 3 | `def` | [FunctionData.isIdentityFun](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-isidentityfun.md) | 52 | `declaration-track:6479903bcd809e3445ccb876bcdcb9594c5e8e8521ec0d1e0d93c8b63837aca2` |
| 4 | `def` | [FunctionData.isConstantFun](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-isconstantfun.md) | 56 | `declaration-track:f050bac848f7d5403b60a38126cb65b6490ab423556c6a6004936cd2fa171c26` |
| 5 | `def` | [FunctionData.domainType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-domaintype.md) | 60 | `declaration-track:6f2ad6976a343c4e34c01eb1aa0a3156f0a3eb015355a11c5bbea0f77836ecbf` |
| 6 | `def` | [FunctionData.getFnConstName?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-getfnconstname.md) | 67 | `declaration-track:834fc37906b6e43bc887b8b48d66ef8995fd76749920fbf2697bf4f4adda17fe` |
| 7 | `def` | [getFunctionData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/getfunctiondata-source-edition-2.md) | 79 | `declaration-track:d8c4622df9f73bbd496fb3cab10bdc3f24f75e716d257bbc02d8c2bedf924b26` |
| 8 | `inductive` | [MaybeFunctionData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/maybefunctiondata.md) | 112 | `declaration-track:fc5ec7b8893522aad0dd00d0828fc7023683d9a178692765df04835c4a21e5ff` |
| 9 | `def` | [MaybeFunctionData.get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/maybefunctiondata-get.md) | 121 | `declaration-track:ff9db2edcfe8af65163109d3c6343c8a36274f594812e1e5c6383179574fc8fa` |
| 10 | `def` | [getFunctionData?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/getfunctiondata.md) | 127 | `declaration-track:8c19d1849bde87d596e3a0bb49f90cb2bdc3ce1a109e52610d39e8a6ca6baf5a` |
| 11 | `def` | [FunctionData.unfoldHeadFVar?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-unfoldheadfvar.md) | 151 | `declaration-track:a7874e7f7aeb5944dd8b02fdf85b52cd5b93d2fb7cc60b7aad763f380e0a9a16` |
| 12 | `inductive` | [MorApplication](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/morapplication.md) | 159 | `declaration-track:63bad9c20fffb7fba15b13b620158b2a151435ed28c5dca888e379b61078fe7c` |
| 13 | `def` | [FunctionData.isMorApplication](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-ismorapplication.md) | 171 | `declaration-track:32871248c9dd16c021c01f53f9a5c86622f7b7b395de89e3fd8599bf2d1e0291` |
| 14 | `def` | [FunctionData.peeloffArgDecomposition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-peeloffargdecomposition.md) | 197 | `declaration-track:3bc3579b6d1bb96ac61d1e7d600a27d3284b72950bb3b21fe810b11212c31942` |
| 15 | `def` | [FunctionData.nontrivialDecomposition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-nontrivialdecomposition.md) | 221 | `declaration-track:aff35e52c851888eaec9f842d1bfe905315212224537e7c7b5cdabc39d4ceb28` |
| 16 | `def` | [FunctionData.decompositionOverArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FunctionDataNamespaced.lean/declarations/functiondata-decompositionoverargs.md) | 278 | `declaration-track:6beae6a4de0e816cc2022d140bebc618f470497aedf453bbec15e4225d62d443` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d7f0af76346de6901ef5de2a73e5003a6bf699e609069425967c57a731bf749 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunctionData/Variant464c54dbd7b327990ab5ae726bd3d866e020615912b83d07a4f7e66c526f71f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
