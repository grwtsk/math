# Verification target: Notation Class Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d326fad8cb73813585b8a2f84aedca1749e3d92",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant8f8fb1509ecdd3b5a14e6a442ee04f0f09ae0b9c95c054ac11c8b069223c5bd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d326fad8cb73813585b8a2f84aedca1749e3d92`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant8f8fb1509ecdd3b5a14e6a442ee04f0f09ae0b9c95c054ac11c8b069223c5bd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant8f8fb1509ecdd3b5a14e6a442ee04f0f09ae0b9c95c054ac11c8b069223c5bd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.NameMapAttribute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Exception` — import line 9; external provider; requires a separately pinned dependency.
- `Qq.MetaM` — import line 10; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/syntax.md) | 37 | `declaration-track:b9e885c3aa2cd5cf2af20de42644d9f90438fbffa29c5149f99344f15e1ac1ec` |
| 2 | `def` | [findArgType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/findargtype.md) | 46 | `declaration-track:6f4c510ff04b722e1d067d1a22bacfd79014f7602c8a67f5b9419c3a0eba3cfe` |
| 3 | `def` | [defaultfindArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/defaultfindargs.md) | 49 | `declaration-track:c34dcb0c95163f1b17e043b2894c84ac726369869fe52ef209fe5dedaaa0f032` |
| 4 | `def` | [copyFirst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/copyfirst.md) | 61 | `declaration-track:8a05712485e7b5b0d8d516afbc047cdf15684745d54a95b7ca3ff1721472ecc1` |
| 5 | `def` | [copySecond](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/copysecond.md) | 64 | `declaration-track:e443db2e2d1ad4f85705d87b46a44c1f38fa55e39260d3a3d23b686546d38a88` |
| 6 | `def` | [nsmulArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/nsmulargs.md) | 67 | `declaration-track:6ce36ffd14493e3fc98140c2b2473ef3bbef4583daf0134668790bed78053b0e` |
| 7 | `def` | [zsmulArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/zsmulargs.md) | 71 | `declaration-track:2e97706a635156b91a76a135a2f3238bfebfe3aeaab164202803d34f1e3fd3d9` |
| 8 | `def` | [findZeroArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/findzeroargs.md) | 75 | `declaration-track:3d4d3b732ca4b9399fac1737d70e4fefc3ef38df8d89d15d27f1c71abae59b8f` |
| 9 | `def` | [findOneArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/findoneargs.md) | 79 | `declaration-track:ebd57af41514c0224fc4778447056a88a009b546f33f530dfc1a34e4539a0417` |
| 10 | `def` | [findCoercionArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/findcoercionargs.md) | 83 | `declaration-track:fff84f02ca4d4c11e1ceada808fa14082ed44942e0a6d94b39c3f8eb8561cc20` |
| 11 | `structure` | [AutomaticProjectionData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/automaticprojectiondata.md) | 92 | `declaration-track:a534cc3f7a92404af4ccf6b52b385570e20c2621379313da2e59d10427f1daed` |
| 12 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NotationClassEdition2.lean/declarations/initialize.md) | 105 | `declaration-track:bbeeefc3d6649a6c4758fb9d9d08743389e323656dfd8972a2512b0a75bcde17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c10212b55f09e3511121c47aaaccc5be74262b56eb9eb1ed21b7ee4e2823eddb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant8f8fb1509ecdd3b5a14e6a442ee04f0f09ae0b9c95c054ac11c8b069223c5bd5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NotationClass/Variant8f8fb1509ecdd3b5a14e6a442ee04f0f09ae0b9c95c054ac11c8b069223c5bd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
