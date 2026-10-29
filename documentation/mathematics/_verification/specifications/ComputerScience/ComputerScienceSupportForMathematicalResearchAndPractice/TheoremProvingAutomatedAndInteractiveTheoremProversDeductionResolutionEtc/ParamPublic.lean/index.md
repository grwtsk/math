# Verification target: Param Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4618670a37414c3eb7ee989af27ea86acd16030d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4618670a37414c3eb7ee989af27ea86acd16030d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.ForallProp` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Anchor` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Lean.Meta.Grind.Params.insertCasesTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-params-insertcasestypes.md) | 19 | `declaration-track:c41a6438b9279b33a5954b9299e2af3c877ff28d598437f7613151ca4083ef0d` |
| 2 | `def` | [_root_.Lean.Meta.Grind.Params.eraseCasesTypes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-params-erasecasestypes.md) | 22 | `declaration-track:f6e56bffc73b29b3e3032264b182a2890134de949d2523722ce49df01323e26a` |
| 3 | `def` | [_root_.Lean.Meta.Grind.Params.insertFunCC](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-params-insertfuncc.md) | 27 | `declaration-track:d041b72848853d78d1f27cb77f5f6e6946b37d50d3dfa19485c55dc946e5f323` |
| 4 | `def` | [_root_.Lean.Meta.Grind.Params.containsEMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-params-containsematch.md) | 30 | `declaration-track:51af708f385b9acfd39dc4f1c6999016b8b1810e734707c34522160c074bc99c` |
| 5 | `def` | [_root_.Lean.Meta.Grind.Params.isInjectiveTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-params-isinjectivetheorem.md) | 33 | `declaration-track:1b6b0a87b09660780b80a4fe7dbb5c461c6ca00213a97d1eab81fc46ea5437da` |
| 6 | `def` | [_root_.Lean.Meta.Grind.Params.eraseEMatchCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-params-eraseematchcore.md) | 36 | `declaration-track:49b77a8a11a35b06f22fbb7693f2872afc943d8d549ebeeb7907326c55af6527` |
| 7 | `def` | [_root_.Lean.Meta.Grind.Params.eraseEMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-params-eraseematch.md) | 39 | `declaration-track:c7bdb6d2ea3e72e6e699f77f27bc3457508a2c228a1a66aa2c77a581be712809` |
| 8 | `def` | [_root_.Lean.Meta.Grind.Params.eraseInj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-params-eraseinj.md) | 52 | `declaration-track:f6d2f60f43e50fefcd3838e28436e90808b57d43a03cf575246e8189ab889672` |
| 9 | `def` | [_root_.Lean.Meta.Grind.ExtensionStateArray.getKindsFor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-extensionstatearray-getkindsfor.md) | 55 | `declaration-track:d24cc5f059ed218a55b41803d533449e83a74d817a178e007e7f3faadc598064` |
| 10 | `def` | [_root_.Lean.Meta.Grind.ExtensionStateArray.find](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/root-lean-meta-grind-extensionstatearray-find.md) | 64 | `declaration-track:adbae6715515896c4a9032f511adc5cb0ce3ee747ce456292ddf025f0f5aacf3` |
| 11 | `def` | [warnRedundantEMatchArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/warnredundantematcharg.md) | 72 | `declaration-track:f6628aa0b57ac110471d40ab6c15cec4d7f36b1502fdf51a6bc97edd1531f2c3` |
| 12 | `def` | [parseModifier](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/parsemodifier.md) | 84 | `declaration-track:0091898d1c030ae248cbe68301f7f8a4693c85b504b5585b72232fb919f853ea` |
| 13 | `def` | [ensureNoMinIndexable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/ensurenominindexable.md) | 90 | `declaration-track:928b49f5c2ca4ef8a82d4b40f46bbd46f65a7d8dc1fdb292ab08d3922141e0be` |
| 14 | `def` | [addEMatchTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/addematchtheorem.md) | 94 | `declaration-track:f91d6e9cd80ac45b62234c4762ecbc5b99b5ab255d77dca7e21fac8c16d994b4` |
| 15 | `def` | [processAnchor](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/processanchor.md) | 132 | `declaration-track:1879cd57b75151a7cf0d10d632aab47f11bb1c09f15b75bf3850a14f61c764a0` |
| 16 | `def` | [checkNoRevert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/checknorevert.md) | 137 | `declaration-track:de9c19ba6ca6e4705a3da19fb758aa4c7ad4812fbd50a290dc85e764db343081` |
| 17 | `def` | [processTermParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/processtermparam.md) | 141 | `declaration-track:1e894b914a9251a76913256e867f79a87d762bf505b44eee28d85df1be9137b0` |
| 18 | `def` | [processParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/processparam.md) | 192 | `declaration-track:b5e2d3a040363247e012384b34878d16e6cc4056f9a3bf3598428fa873f7478e` |
| 19 | `def` | [elabGrindParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/elabgrindparams.md) | 274 | `declaration-track:8e89ec270498aa842dbde36f56a9e00bbee13e6ed1f771643b323f5ed1a96540` |
| 20 | `def` | [shouldKeep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/shouldkeep.md) | 326 | `declaration-track:3e54dd9f436a55fddd14874b5dc20061084d972cd8fc31240a8d67643b129c8c` |
| 21 | `def` | [filterThms](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/filterthms.md) | 335 | `declaration-track:b76861365c06060338db6d740a433936627c6dcb77be7146b86c2d545aec2c3c` |
| 22 | `def` | [withParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamPublic.lean/declarations/withparams.md) | 345 | `declaration-track:7f82575dedfc3cf7544fe25543bfa48e50cf6d0c35191b6a01a370e51dbac617` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3f16f50847cbde287b30fddd01231c8f50c1666e0933a85c352c29ae6ce6e49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Param/Variant689b429875b4b8cfd5a2221981f4781d241598cea33e1c6ff774a6247ff29c0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
