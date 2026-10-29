# Verification target: Ext Namespaced Public With Ext Hyps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9696f8a49876b9f79f9b348db541de0167786ccf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9696f8a49876b9f79f9b348db541de0167786ccf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Ext` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.RCases` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Command` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Linter.Init` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withExtHyps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/withexthyps.md) | 48 | `declaration-track:87eef7fcfe3316964a2725ab0d541fefe1624abf166ff3f3e709abe76e9246d4` |
| 2 | `def` | [mkExtType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/mkexttype.md) | 73 | `declaration-track:33825878c32569df0214e6ca97e8edff3828104cd1e160ae9763cbcd80f0c279` |
| 3 | `def` | [mkExtIffType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/mkextifftype.md) | 81 | `declaration-track:a34bdd5e083e7b933b96b4c9f092a9f89e6cc008d95c7c94681300c6bfbbb015` |
| 4 | `def` | [realizeExtTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/realizeexttheorem.md) | 112 | `declaration-track:851454ca28d6bd0a9a4ba1b38ae2f8fbd063eaa351def272d6fa853e17c8c60b` |
| 5 | `def` | [realizeExtIffTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/realizeextifftheorem.md) | 147 | `declaration-track:15d3b2eee6b89e9346458faf4d656e0bf89ccd4ec8183efe514e136fea9299e9` |
| 6 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/builtin-initialize.md) | 188 | `declaration-track:876a53ae24b92820d85ebc1e8bdbdcf48602685761b1c2e9e3d928a5ba4262cd` |
| 7 | `def` | [applyExtTheoremAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/applyexttheoremat.md) | 228 | `declaration-track:7d2dc792ea142f71dc1d3aeb24d8e3a4f398f884912cc81e3e6e7a6db76ffb6f` |
| 8 | `def` | [evalApplyExtTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/evalapplyexttheorem.md) | 253 | `declaration-track:626b93982daaf083e676ff53d7bf4e45f8f888a04d3bd9f260760acd129cca57` |
| 9 | `def` | [tryIntros](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/tryintros.md) | 260 | `declaration-track:4150f2f9ece7647362dd73fec03b6a0f2c0a1d6ebc94b8ab114e20878fcc0f16` |
| 10 | `def` | [withExt1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/withext1.md) | 276 | `declaration-track:a152ec10ad6fe771c3839440ea4952b0f87b1de852628caa09164843e21e6330` |
| 11 | `def` | [withExtN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/withextn.md) | 287 | `declaration-track:b4dcae50d9ce31b86a0d24db0bbe149054ab85b3f29c001d855a463755c6a6a6` |
| 12 | `def` | [extCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/extcore.md) | 307 | `declaration-track:73508b71e316b8ceb83369d6ecf194c687c0d7dec1baeed6b5436eb804ea99d1` |
| 13 | `def` | [evalExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExtNamespacedPublicWithExtHyps.lean/declarations/evalext.md) | 313 | `declaration-track:bd56b44f7c66b4d2d64d29854635d2b0cfe5e10d9a40e62499bb1e6b43a09fd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d092df69142fb43ffc962ddab5c2364eb28a421dee93af9228339ccd55faaaa7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ext/Variantc86bf1ea30059a803bd02e62320fe13af43b43d0c0540bb545b5460ad527948a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
