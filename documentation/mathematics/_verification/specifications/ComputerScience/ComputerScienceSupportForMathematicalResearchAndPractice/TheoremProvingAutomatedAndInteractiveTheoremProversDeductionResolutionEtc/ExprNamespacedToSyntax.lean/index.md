# Verification target: Expr Namespaced To Syntax

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12e1de1d4fa87e36a16f337a725561daf8d870e1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantdabec41e5d70f9b9c6055723b6aedfac39788e29fb6e5c6cdec2baaa61039dfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12e1de1d4fa87e36a16f337a725561daf8d870e1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantdabec41e5d70f9b9c6055723b6aedfac39788e29fb6e5c6cdec2baaa61039dfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantdabec41e5d70f9b9c6055723b6aedfac39788e29fb6e5c6cdec2baaa61039dfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Term` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toSyntax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/tosyntax.md) | 29 | `declaration-track:464de63a3c47717e00fb13449373e0b0bfabd57a9112ce81059ec479cfb6992f` |
| 2 | `def` | [forallArity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/forallarity.md) | 38 | `declaration-track:d395ad3f7410a172b15c93a8fb540a82caf76fe0b1d47a3aea4b4bb864994439` |
| 3 | `def` | [lambdaArity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/lambdaarity.md) | 46 | `declaration-track:becfe689f9c066ca9e5fde8cfe366184b260b7e4d73a703877db83ac1d0ff1ba` |
| 4 | `def` | [getAppFn'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/getappfn.md) | 52 | `declaration-track:3613d52d8b15a733201da71669e766fa08ad4965bfe7dc95c0ffff53c59fde48` |
| 5 | `def` | [getAppNumArgs'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/getappnumargs.md) | 58 | `declaration-track:84dc5e098626a30209be6f3fb18749669c88b66f7edee59a11b77e00ed3d57b5` |
| 6 | `def` | [withApp'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/withapp.md) | 69 | `declaration-track:64b3f3bfc127744c5118cf167f15d621015f31c335610cf315fbdcbdcbe8dd62` |
| 7 | `def` | [getAppArgs'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/getappargs.md) | 83 | `declaration-track:f52af29eb8b558819929fe10007af392b57bc9182abdf11d9d87a7123283f2ad` |
| 8 | `def` | [traverseApp'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/traverseapp.md) | 87 | `declaration-track:d1f0a35525829d96fc29d3e3490ba986ce6c1f990eeb5371ed60ddb71399a1f4` |
| 9 | `def` | [withAppRev'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/withapprev.md) | 93 | `declaration-track:c9b0b4ad343f0a0412a24605e53cc960a87a4140d5fd328792ef8e92d8e96b41` |
| 10 | `def` | [getAppRevArgs'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/getapprevargs.md) | 105 | `declaration-track:fade59e3c311ce6dc6789be4188cf1d968f38f14ade46d59e229064bfb3c213a` |
| 11 | `def` | [getRevArgD'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/getrevargd.md) | 109 | `declaration-track:6e8b9eff4e8e6e2563697cc737730123e4a8f8aed2154dd0359aee18126833b7` |
| 12 | `def` | [getRevArg!'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/getrevarg.md) | 117 | `declaration-track:bbcf95518619d82106f078dbfaf37a08b7a5516c13a93563eaf044d64143c48b` |
| 13 | `def` | [getArgD'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/getargd.md) | 125 | `declaration-track:ebccefb387029e11f125739c3fd4421fb651cb15470507b3b960eeda762f27d3` |
| 14 | `def` | [getArg!'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/getarg.md) | 130 | `declaration-track:b835950f7c765746b58f9f6d110af1ad9659d53f8460abcce493c23c91822b64` |
| 15 | `def` | [isAppOf'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/isappof.md) | 134 | `declaration-track:91949ccde094fd713670879b4abf6672ab43456d3229ded3df8b5084f59e90b1` |
| 16 | `def` | [constName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/constname.md) | 140 | `declaration-track:a251b02828190b2745044aeacf3eea898283dea58cad1675435125f321501dd1` |
| 17 | `def` | [getAppFnArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ExprNamespacedToSyntax.lean/declarations/getappfnargs.md) | 144 | `declaration-track:84d84eec9045606ca1c144ea691de75a41ab2fc132f7f1de9aa7d5de5b11baf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70e49c92998b1f59e1927b50ee63e417ab0b7adc84854f7909d4acdee4f9e697 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantdabec41e5d70f9b9c6055723b6aedfac39788e29fb6e5c6cdec2baaa61039dfc.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expr/Variantdabec41e5d70f9b9c6055723b6aedfac39788e29fb6e5c6cdec2baaa61039dfc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
