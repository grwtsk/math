# Verification target: Norm Public Context

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49aafd0e2479937b27e3e66b03fb9833b4548d53",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49aafd0e2479937b27e3e66b03fb9833b4548d53`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Lean.HashSet` — import line 11; external provider; requires a separately pinned dependency.
- `Aesop.Forward.State.ApplyGoalDiff` — import line 13; external provider; requires a separately pinned dependency.
- `Aesop.RuleTac` — import line 14; external provider; requires a separately pinned dependency.
- `Aesop.Search.Expansion.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Aesop.Search.Expansion.Simp` — import line 16; external provider; requires a separately pinned dependency.
- `Aesop.Search.RuleSelection` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/context.md) | 27 | `declaration-track:d66d193c9d7d25b91481d7a0331035675126f7613e60910324e82ca6f1ee37e4` |
| 2 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/state.md) | 32 | `declaration-track:a6b498babef8234f8891328aee278994ef44528454e871e81c89ee3b9b52cc8a` |
| 3 | `abbrev` | [NormM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normm.md) | 39 | `declaration-track:a0e53dabf27f36e11c35f1236abb6f14c0046e62cae91ab8bf9e98a38a728131` |
| 4 | `def` | [getForwardState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/getforwardstate.md) | 41 | `declaration-track:6ac9819a80bd12e757dcdf186478d843f8f69460872c224cddb17a617225a9a0` |
| 5 | `def` | [getResetForwardState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/getresetforwardstate.md) | 44 | `declaration-track:812d214f70dbda3544c8371ea81162c0bcfc025e52a88d6c3c41c9e1d7c8f6b5` |
| 6 | `def` | [modifyForwardState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/modifyforwardstate.md) | 47 | `declaration-track:317dc4c3492341a1dd87618849ebfb8e5ecf083bfc4dd9651659e32e425ef372` |
| 7 | `def` | [updateForwardState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/updateforwardstate.md) | 56 | `declaration-track:50ebef3058629165ea7d73d3176908c69c2f46cb8812331421c5d2d19be3325d` |
| 8 | `def` | [eraseForwardRuleMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/eraseforwardrulematch.md) | 61 | `declaration-track:900ba5a76eb3b4ddc241e8492c0910c480c9cd5f56229c9932623b1501e6257d` |
| 9 | `def` | [applyDiffToForwardState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/applydifftoforwardstate.md) | 64 | `declaration-track:66cde2bee536e364549373d68169cd4009dc16e90402ce98d0e8ddb6b215a576` |
| 10 | `inductive` | [NormRuleResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normruleresult.md) | 69 | `declaration-track:f51977cd94452e6a48dc4ec1f0fd8a19bc38768d47851be5e7f1fb18da4f948b` |
| 11 | `def` | [newGoal?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/newgoal.md) | 75 | `declaration-track:40be5f09bf0cd75c9e458b117e7132fbbeb99d91e14f24b3b911a933d5424a7b` |
| 12 | `def` | [steps?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/steps.md) | 79 | `declaration-track:4289d95e88d81e75c73f6a268455e5ebf24ff049e3ed9f9e84d1850b5e94315a` |
| 13 | `def` | [optNormRuleResultEmoji](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/optnormruleresultemoji.md) | 84 | `declaration-track:8d2b0a753e0f1dfd36ee385a43a5ea807534c31b19d45fe6c976eaf89f9404be` |
| 14 | `def` | [withNormTraceNode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/withnormtracenode.md) | 90 | `declaration-track:f1e27b543231b3b8c7884b1c445def8b071065c8ae83377098fe87623e12b2bd` |
| 15 | `def` | [runNormRuleTac](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/runnormruletac.md) | 105 | `declaration-track:c89c7d12f018aad445b692f031e8414739df0030d9cca00e81fa74e804075931` |
| 16 | `def` | [runNormRule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/runnormrule.md) | 138 | `declaration-track:81afd41dccf1dea161b810d7d4a283cc0e6250bda528fefe83b5becc0cdebbc9` |
| 17 | `def` | [runFirstNormRule](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/runfirstnormrule.md) | 158 | `declaration-track:8006504fcbf02679cb3d8d8a2a5e5d4edc81741c666eb9953a68166c346cdbdb` |
| 18 | `def` | [mkNormSimpScriptStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/mknormsimpscriptstep.md) | 167 | `declaration-track:6706c8e02fe1cca653556a8aa7b3e5508df8321b9c48c3fe3d0a7c30f122a7c9` |
| 19 | `def` | [normSimpCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normsimpcore.md) | 190 | `declaration-track:804f89cfff13a210c409b053a0b63f0ae17a5d88dd62b6ae63f8d2aa5c82d541` |
| 20 | `def` | [checkSimp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/checksimp.md) | 249 | `declaration-track:edd771cf0074089d87b485154df29695b6f2331996fe4cf8cadaab98adf748d5` |
| 21 | `def` | [normSimp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normsimp.md) | 271 | `declaration-track:89920a3b37330f3b579d6cf27bba55d4a352576f096ea8211588ff1911bb4fd3` |
| 22 | `def` | [normUnfoldCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normunfoldcore.md) | 281 | `declaration-track:aec9f11f4883f5d789d3335f1f039f28bb2556901dc9a27fcf0636bc48a91322` |
| 23 | `def` | [normUnfold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normunfold.md) | 292 | `declaration-track:aa9a423d43097255e25deec822231e4605f2911a83215eafb776fab6d7568b0a` |
| 24 | `inductive` | [NormSeqResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normseqresult.md) | 301 | `declaration-track:68623e4429811a7f62380ac64c822cc104c45a88073ff83c7a5b831cb18e7630` |
| 25 | `def` | [NormRuleResult.toNormSeqResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normruleresult-tonormseqresult.md) | 307 | `declaration-track:08d10ba6fdfade2947f9ebbd0b68b59a4cc9aa0beee487192621aa7d50b5a577` |
| 26 | `def` | [optNormRuleResultToNormSeqResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/optnormruleresulttonormseqresult.md) | 312 | `declaration-track:f0fe32ab5061dc120d13b51fa0bdbc2be6cc5617728b704baa5e0d57d99df419` |
| 27 | `abbrev` | [NormStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normstep.md) | 317 | `declaration-track:6d32c9c34a52fe6b13a08a406a19bdd4184894164304ee6571e89a1bde49524c` |
| 28 | `def` | [runNormSteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/runnormsteps.md) | 321 | `declaration-track:348b6f9662171efffd12ad3338beee5df4ee7932e10a7f1d60f88a603e4cd195` |
| 29 | `def` | [runPreSimpRules](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/runpresimprules.md) | 364 | `declaration-track:01a2755d066967974b5029a1d1c2896508e7dab54e61c779eeb6d79b19b562ec` |
| 30 | `def` | [runPostSimpRules](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/runpostsimprules.md) | 369 | `declaration-track:0244a23a404afb4a7e532a5d3482bf87e663f8088ff89aa3f0b92e587f74fb13` |
| 31 | `def` | [unfold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/unfold.md) | 374 | `declaration-track:51a2916916ae9c6409a9ec8cca4cc603a09fd090b88cec709a0ab4a7be7feecc` |
| 32 | `def` | [simp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/simp.md) | 382 | `declaration-track:f5450d53ff866dfc2195e563d7699a5901cb11ca9f154fd500fdaf979a64fec6` |
| 33 | `def` | [normalizeGoalMVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normalizegoalmvar.md) | 392 | `declaration-track:b55bb000c248247f12d32dc0427ab3d363c225f38a8d6c4bd8d97a5f9f90c3b0` |
| 34 | `def` | [normalizeGoalIfNecessary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormPublicContext.lean/declarations/normalizegoalifnecessary.md) | 405 | `declaration-track:41c3cfde91666859f995bbf3f5282d74f91109577984da074f3c9e8e97d530d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb813f5c4a517d5ccd600dbbf27f6fec4c17bbd5b99be7d7f11632cdcf74a5bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
