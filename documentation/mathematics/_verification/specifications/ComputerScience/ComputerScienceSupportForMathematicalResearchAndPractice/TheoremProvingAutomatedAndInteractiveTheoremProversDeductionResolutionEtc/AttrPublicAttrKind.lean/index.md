# Verification target: Attr Public Attr Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "155abf05112b94af030269d996aab34099d11e59",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant7c22668fb98bd01d3bc33bee48e1b4369d331adc29813937be7ff71871201ae3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `155abf05112b94af030269d996aab34099d11e59`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant7c22668fb98bd01d3bc33bee48e1b4369d331adc29813937be7ff71871201ae3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant7c22668fb98bd01d3bc33bee48e1b4369d331adc29813937be7ff71871201ae3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.ExtraModUses` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/builtin-initialize-source-edition-3.md) | 16 | `declaration-track:30be49ef8b812391ce699dfd76ecc13f6294f3c3dc6d6de8bd627ca289508550` |
| 2 | `inductive` | [AttrKind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/attrkind.md) | 18 | `declaration-track:2a4ae44e1a327a6b64e13fefa470048a4f98e38ef020d12d0d981cfb75b01a59` |
| 3 | `def` | [getAttrKindCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/getattrkindcore.md) | 31 | `declaration-track:2ee4d6c6cd98233e3eb74eca33dd21074e2e9f7e1291edf3559989d636f02a9e` |
| 4 | `def` | [getAttrKindFromOpt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/getattrkindfromopt.md) | 68 | `declaration-track:76f4db33492cef160beaa078cba6b930e7f397ddd62d3d9c5ee0e3eca925ea5d` |
| 5 | `def` | [throwInvalidUsrModifier](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/throwinvalidusrmodifier.md) | 74 | `declaration-track:42a6bfd4f4f5c4aa080169f4766ecff1e2a4a92d2496b8f5ccc403e79be22824` |
| 6 | `def` | [Extension.addCasesAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-addcasesattr.md) | 77 | `declaration-track:eebcadd801e52d786a3eaebc7885794dc5d8ade5ed2209971a6f4bb6f7203616` |
| 7 | `def` | [Extension.addExtAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-addextattr.md) | 81 | `declaration-track:b2fa8ba2bb304d901506c002dce8ad4cf8ada74c0844c9b06c4ce77ea9526293` |
| 8 | `def` | [Extension.addFunCCAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-addfunccattr.md) | 85 | `declaration-track:8a004a1ab2d3700d0e551982e52d4e2e26beffc90755b3a45f4b267f299727d3` |
| 9 | `def` | [Extension.eraseExtAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-eraseextattr.md) | 88 | `declaration-track:8eba4d89386e434f5b74eabc4a0b970a902d50a4efdc39e4be7fafe2c6371c9b` |
| 10 | `def` | [Extension.eraseCasesAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-erasecasesattr.md) | 93 | `declaration-track:46fb6cac2aaeb57249796b72d13a60d319d8edc84c23a9c6374b24765715547b` |
| 11 | `def` | [Extension.eraseFunCCAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-erasefunccattr.md) | 99 | `declaration-track:e9abb6dbe1a150da117ee74b3ea101a6c54ec386515e913b810e8f3b150bc787` |
| 12 | `def` | [Extension.eraseEMatchAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-eraseematchattr.md) | 106 | `declaration-track:d16e32d46c4277fd869e745cdd0e4236b98ff8abc7a890e6eababace0f7311ed` |
| 13 | `def` | [Extension.eraseInjectiveAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-eraseinjectiveattr.md) | 111 | `declaration-track:2168c42d9ccd892f088846d8fcce30112d5a148b4a636c2592a7d9994db99450` |
| 14 | `def` | [Extension.isExtTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-isexttheorem.md) | 116 | `declaration-track:fb3677660c4b4bd8cc1d089fd783ad70ee9a9d02511265b3702a5a52cb097256` |
| 15 | `def` | [Extension.isInjectiveTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-isinjectivetheorem.md) | 119 | `declaration-track:46336168507b182219e8f890e8fd6da75435b3b0292e63446f2dc87d2e32e6cb` |
| 16 | `def` | [Extension.hasFunCCAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extension-hasfunccattr.md) | 122 | `declaration-track:495cdb9b827e0a54498304ad14a612f94bd37800a8aa9d6252a907eaaafa1d3a` |
| 17 | `def` | [mkGrindAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/mkgrindattr.md) | 131 | `declaration-track:d2266332bda4f090e50ab6261d779c2e0289f78eba89bd2405e945c84bb3f962` |
| 18 | `abbrev` | [ExtensionMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/extensionmap.md) | 230 | `declaration-track:a2865a43db2573b1ce1b26c2c4322f686283bb552284e1115b7f28149fb57e14` |
| 19 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/builtin-initialize-source-edition-2.md) | 232 | `declaration-track:1c6ea255618c8e23b2445468a3c31285aab160e39844f2a7ea4065fdb644a7d5` |
| 20 | `def` | [getExtension?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/getextension.md) | 234 | `declaration-track:6024f4cea9985877cc57453bf8effe580cfa887b8c6dac2dcc97171917659d40` |
| 21 | `def` | [registerAttr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/registerattr.md) | 240 | `declaration-track:a36cc8f5e0a2b6fc69ae5eed09c73d4d608981ff6d13cb16e63aa6b57f481b51` |
| 22 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/builtin-initialize-source-edition-4.md) | 249 | `declaration-track:bd211eb3b92153ea07da4757256a9c159f21949201bd51dd091315addd36ac7a` |
| 23 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/builtin-initialize.md) | 256 | `declaration-track:18eb9c4f6dde8c64b6433e8bea3d3c03fa1250e1baeaafdf875fa3b43af2aa1f` |
| 24 | `def` | [isGlobalSplit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttrPublicAttrKind.lean/declarations/isglobalsplit.md) | 259 | `declaration-track:b980ff597ee9025f0b9ffc7224e128ef39f439181018acd083d4670c9513c58d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c09bd3012617a190cd3ecd1d683f7da6a0dfcf8aa8b1c8c83d191b1fcd78b4a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant7c22668fb98bd01d3bc33bee48e1b4369d331adc29813937be7ff71871201ae3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant7c22668fb98bd01d3bc33bee48e1b4369d331adc29813937be7ff71871201ae3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
