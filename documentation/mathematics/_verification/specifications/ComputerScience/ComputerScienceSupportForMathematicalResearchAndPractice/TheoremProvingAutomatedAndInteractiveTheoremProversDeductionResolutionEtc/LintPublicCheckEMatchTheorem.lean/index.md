# Verification target: Lint Public Check EMatch Theorem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "baaffbdb8c06bacbc85d4d76dccce77946002704",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variante5b76235b414728b494655bd85eee8279d912d3c5e3d8f36baa1f8f5947a7ebd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `baaffbdb8c06bacbc85d4d76dccce77946002704`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variante5b76235b414728b494655bd85eee8279d912d3c5e3d8f36baa1f8f5947a7ebd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variante5b76235b414728b494655bd85eee8279d912d3c5e3d8f36baa1f8f5947a7ebd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Lint` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Grind.Config` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.TryThis` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/builtin-initialize-source-edition-2.md) | 14 | `declaration-track:6a7c41434d5b183d414b50d5c819c2724a550e092fd0d006243bd22d87ad904b` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/builtin-initialize.md) | 20 | `declaration-track:38827320588065d153be851cda4725284c46d46075301647c830281c472aead9` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/builtin-initialize-source-edition-3.md) | 26 | `declaration-track:7df326525d6cb9f0f00fcc9aaae6ebc4368e2916cd7c681c526798bc16dc218b` |
| 4 | `def` | [checkEMatchTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/checkematchtheorem.md) | 34 | `declaration-track:35589d8134432f4a3e3fafcb3e34f4fdee5e1761f38102ce98317b1e3dd3d3de` |
| 5 | `def` | [elabGrindLintSkip](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/elabgrindlintskip.md) | 39 | `declaration-track:9fcfbef54b897723337323b727ae673fdb8ac4c723cda2412e257fefe883f58d` |
| 6 | `def` | [elabGrindLintMute](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/elabgrindlintmute.md) | 59 | `declaration-track:913ca136eaec8338a854ba47dda5cf851a12688af229366aa28302bacaa380bc` |
| 7 | `def` | [defaultConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/defaultconfig.md) | 72 | `declaration-track:c31f1dd727fb04893771daa2921b07c39fe79f83e7ed51a40acca54fc430b422` |
| 8 | `def` | [mkConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/mkconfig.md) | 83 | `declaration-track:0f2b0755349e410439e607f11508dcbd409754a34092125d99c6ed21fe4d4787` |
| 9 | `def` | [mkParams](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/mkparams.md) | 86 | `declaration-track:8942c783eff3516f8b16a81c511bfc3870ddec6939db681ea98fc301903d9ecc` |
| 10 | `def` | [sum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/sum.md) | 97 | `declaration-track:77c2a6f54d8248647000bb341a87e8011fc06c2a7a321de4b6e3bc7719d4ea5e` |
| 11 | `def` | [thmsToMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/thmstomessagedata.md) | 103 | `declaration-track:f0d22dd6eeb51a62385354f3f9902d12af0a7119fb84d8c3b6bdf831b6573d3a` |
| 12 | `def` | [analyzeEMatchTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/analyzeematchtheorem.md) | 118 | `declaration-track:97487a16e152d89cc9a94b527d2e9bd01cc885f318737a52f522f9a38109a428` |
| 13 | `def` | [elabGrindLintInspect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/elabgrindlintinspect.md) | 137 | `declaration-track:1971717387949d23cdc53af28621885f8b2424ec70943f35df3bc263ebcc641a` |
| 14 | `def` | [nameEndsWithSuffix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/nameendswithsuffix.md) | 154 | `declaration-track:91307563b693c175660cad8668f4196a49e1669bf702847cc2e66c07b56df441` |
| 15 | `def` | [getTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/gettheorems.md) | 159 | `declaration-track:d2e27f6c80f21c1f2c9dce9bbbc08a2738ceb69e55484cd02b60b9ea9854d2e0` |
| 16 | `def` | [elabGrindLintCheck](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LintPublicCheckEMatchTheorem.lean/declarations/elabgrindlintcheck.md) | 187 | `declaration-track:2005e433b1712b78232cad746932de5fbf7505d9ea26e2faa2ba8883a8758c2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe04d2c5a8e72662d1546e4325a6993e20ffb7cc5699f8fd29b6f514c9a3cbc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variante5b76235b414728b494655bd85eee8279d912d3c5e3d8f36baa1f8f5947a7ebd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lint/Variante5b76235b414728b494655bd85eee8279d912d3c5e3d8f36baa1f8f5947a7ebd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
