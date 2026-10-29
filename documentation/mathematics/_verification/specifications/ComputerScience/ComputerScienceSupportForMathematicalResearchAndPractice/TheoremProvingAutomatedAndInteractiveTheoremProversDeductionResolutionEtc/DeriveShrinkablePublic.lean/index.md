# Verification target: Derive Shrinkable Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "324a8ef9f79136c8d56d6d96a3170ba570dc9038",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `324a8ef9f79136c8d56d6d96a3170ba570dc9038`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 9; external provider; requires a separately pinned dependency.
- `Plausible.Shrinkable` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/initialize-source-edition-2.md) | 44 | `declaration-track:afc81b2d309e82b59a593d1a87076d401c1f689af334dbd20b3cee3608a30eb3` |
| 2 | `def` | [getCtorArgsNamesAndTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/getctorargsnamesandtypes.md) | 54 | `declaration-track:f99234b8e3caaba091bb7552a5ebca352e8fedca6fea25ed8c15e9658d3f2a85` |
| 3 | `def` | [mkShrinkableHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/mkshrinkableheader.md) | 70 | `declaration-track:66c111149e1ffb8ef4e9923cf998fbc2fa2d72f231e8f1e8ce04136e9045895a` |
| 4 | `def` | [mkCtorShrinkExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/mkctorshrinkexpr.md) | 84 | `declaration-track:042b042d40ea028f95bc504a3c6bf982d2d849f5afad019845326a085a6ae2a9` |
| 5 | `def` | [mkAuxFunction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/mkauxfunction.md) | 123 | `declaration-track:0792bf7a32e5e3eb5c05cdd8fff76a1c91d690be39bb5e2668e80bded04ab2fa` |
| 6 | `def` | [mkMutualBlock](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/mkmutualblock.md) | 163 | `declaration-track:ed44e7fa450ba6833dbe9de00d1c90d33e919a03525c51e76b02010f7f9d3fbf` |
| 7 | `def` | [mkShrinkableInstanceCmds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/mkshrinkableinstancecmds.md) | 171 | `declaration-track:bec4d6440c1faa878defb6a20e42afa47cd1f2d67e83a7221454f128bdb914c7` |
| 8 | `def` | [mkShrinkableInstanceCmd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/mkshrinkableinstancecmd.md) | 188 | `declaration-track:3c76b7d4c19f72f1a37891a0e6507d826f13e71a6e2da98097845986178e2682` |
| 9 | `def` | [mkShrinkableInstanceHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/mkshrinkableinstancehandler.md) | 195 | `declaration-track:1ffd8076abdf31fcc4dfbd00d1ca93963c34e3970fe38fe87e3fa5fb5e490693` |
| 10 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeriveShrinkablePublic.lean/declarations/initialize.md) | 207 | `declaration-track:9393412c7db0ebdff2b8046841166bf4d26e25c16324e454411eef6c47ab4e09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99e2c601de4be6e8fe92a65aaa93e3591119884d78c894aaf1a1ad4586e3be01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveShrinkable/Variantefcf29f8893aa63ee38889fedb87634e072a08fc0ca7144a3405306093d6d400.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
