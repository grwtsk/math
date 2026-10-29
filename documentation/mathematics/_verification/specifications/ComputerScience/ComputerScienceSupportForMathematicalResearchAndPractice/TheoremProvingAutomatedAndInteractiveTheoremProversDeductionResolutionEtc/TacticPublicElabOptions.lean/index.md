# Verification target: Tactic Public Elab Options

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad3a89d217c9a02d71a08f2139c3d72e10b57f6b",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad3a89d217c9a02d71a08f2139c3d72e10b57f6b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Frontend.Extension` — import line 10; external provider; requires a separately pinned dependency.
- `Batteries.Linter.UnreachableTactic` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Eval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/syntax-source-edition-2.md) | 26 | `declaration-track:2988db63efb7ccd862bc57cac69c4e4dd0172929921be8765edf9b35a36dd773` |
| 2 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/syntax-source-edition-5.md) | 28 | `declaration-track:5bc3f918c0f73e548b407f6e0988cb9adf5e3244885510ab33ece3a0a067c698` |
| 3 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/syntax-source-edition-8.md) | 29 | `declaration-track:ff37adc4db08916345cbe061b8107aceeadc75f0f010f46212276770fa9bdfed` |
| 4 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/syntax.md) | 30 | `declaration-track:13e35217c3ca503131103fc10f2d6ea52611fd60f219b6c4860f2fcbc28acd4f` |
| 5 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/syntax-source-edition-3.md) | 31 | `declaration-track:501a37814cee0bc2f99a441092ba006acfe53a6796b20f226c88590dceb536d9` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/syntax-source-edition-4.md) | 32 | `declaration-track:51d06bf7e16fc5d0ada6b2e536741828d012c66384b5cb9996e92b04c722cf36` |
| 7 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/syntax-source-edition-7.md) | 61 | `declaration-track:d0191e6790bddebc0b8935c66c2a5d6433ed48c6f9a8d47a9f31ebc88fa7217a` |
| 8 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/syntax-source-edition-6.md) | 64 | `declaration-track:70661763e98474ce48c03d65c8bb69f9654d92ee435b5fc008b47ec443fc1717` |
| 9 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/initialize.md) | 66 | `declaration-track:631f63ae42cba46e1363579841f89024eb6278605e03346e13d158ad4b49051b` |
| 10 | `def` | [elabConfigUnsafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/elabconfigunsafe.md) | 73 | `declaration-track:e79cae37da33736933333124f49c67036ec1da81a3345f6aa497915029c3dacb` |
| 11 | `def` | [elabOptions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/elaboptions.md) | 81 | `declaration-track:e390f546c5dcb1fb81d624163c664203b9a4e4565bf2e36898b4f0ad05afdf03` |
| 12 | `def` | [elabSimpConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/elabsimpconfig.md) | 84 | `declaration-track:22afc32f66b4afffac63d77278b17f763dafa79be00ee2a0559ce831a877c6b5` |
| 13 | `def` | [elabSimpConfigCtx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/elabsimpconfigctx.md) | 87 | `declaration-track:1b69caf4df1d53877e7c51bb83dc22fa5db44656a8e943fc1f17f751b355c1f3` |
| 14 | `structure` | [TacticConfig](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/tacticconfig.md) | 90 | `declaration-track:bbc35618259d2e043ed83f0469a3fa8018b427fd0c530cdfb63572032404ce49` |
| 15 | `def` | [parse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/parse.md) | 100 | `declaration-track:e6b9be374bf2848fbec7c8d7fc632d733c71cdc162449d722b18a0a0240b260f` |
| 16 | `def` | [updateRuleSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/updateruleset.md) | 170 | `declaration-track:ed343fb2c6d504db26b33b6f4ca9f569a8864cb6106987e773bc1c80b26ed422` |
| 17 | `def` | [getRuleSet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticPublicElabOptions.lean/declarations/getruleset.md) | 188 | `declaration-track:9a905e1185b13b2b04bf8f78c9e435dcade3d145408a88e3764ea7d239dbcafb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f43bb566563bf7e891abf29316e7091292be6c1142e18c52e77d897c52ece51 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant4de8bd498bd6655cbfaa1f75b640c4ee3d9db42d9cada4dcff9a05912bbced0f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
