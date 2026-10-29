# Verification target: Intro Namespaced Public Intro Result

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1404303db3caa3372d545f0f09d038ec4bfa5c94",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant9f2ee48d9890a69d546019087522feb484161ea9883a737830bd38f405377eaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1404303db3caa3372d545f0f09d038ec4bfa5c94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant9f2ee48d9890a69d546019087522feb484161ea9883a737830bd38f405377eaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant9f2ee48d9890a69d546019087522feb484161ea9883a737830bd38f405377eaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Apply` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Util` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.CasesMatch` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Injection` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Core` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.MarkAccessible` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Grind.Util` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [IntroResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/introresult.md) | 28 | `declaration-track:04e3a37ad1a95feb5c0c4aff4b241cf9255e9e1c37cc55724b2b968d916eed0b` |
| 2 | `def` | [isAlreadyNorm?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/isalreadynorm.md) | 39 | `declaration-track:61329c6c57280fb08b32706762b59ee86fd0f944322140d6e6c26758c60da1ef` |
| 3 | `def` | [preprocessHypothesis](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/preprocesshypothesis.md) | 49 | `declaration-track:0ba438be784ccfd43accf906f757fec7cb881b8b1e41f1ba48e5e00f18c68b61` |
| 4 | `def` | [mkBaseName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/mkbasename.md) | 62 | `declaration-track:829f3a12a2791991abc3c0691767b812253bc95ee5950aeea869cf914d781341` |
| 5 | `def` | [mkCleanName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/mkcleanname.md) | 76 | `declaration-track:11874954ce972fc8c2892a908f17828897ba8edfaa995a8f389f7b4b46078e6f` |
| 6 | `def` | [intro1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/intro1.md) | 106 | `declaration-track:4a197ba0283f779451966b00446274084056e87512dadc64ec5cc7dc6988c2b4` |
| 7 | `def` | [introNext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/intronext.md) | 117 | `declaration-track:638df62743e27bd7cf19b21abb506fa2b7c4ae71a103e31c140c899d41f749b5` |
| 8 | `def` | [isEagerCasesCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/iseagercasescandidate.md) | 193 | `declaration-track:3b4595d38029c33ebbb0dd26aa6da8b080e453e5292ce2303cb978897ecc19df` |
| 9 | `def` | [isCheapInductive](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/ischeapinductive.md) | 198 | `declaration-track:88a0630ab0d39a59f290c9ceb7f7c2a6fbf7a80ac3e453c51fb5b796f8cd0a7f` |
| 10 | `def` | [applyInjection?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/applyinjection.md) | 203 | `declaration-track:f45c7efeec8f410a27532b6cd8599e84ff9b4b039b709778d1fc0bf67e8bbdd5` |
| 11 | `def` | [exfalsoIfNotProp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/exfalsoifnotprop.md) | 209 | `declaration-track:3f2decc722f2eba5d280dfcadf354725faed9249d7902f0870d7ec087fb47c64` |
| 12 | `def` | [Goal.lastDecl?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/goal-lastdecl.md) | 215 | `declaration-track:db6e76fff508af771de932825209558784f116c33ac5d9ae1c5615513fd50ce5` |
| 13 | `def` | [applyCases?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/applycases.md) | 220 | `declaration-track:741ab0362222a8425341a276e21c2e6a6a0ef29862f1dc9bc21a6ebaebb51dab` |
| 14 | `def` | [intro](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/intro.md) | 244 | `declaration-track:d581a26bfc76f1cfa119fe3e9594019bb6bb1b266c0a48c53afd2ca592da622c` |
| 15 | `def` | [hugeNumber](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/hugenumber.md) | 272 | `declaration-track:2dfdd555b49521c2909556cb0ec9fb8361c5355ba2d7f08a5edbf758a3a37908` |
| 16 | `def` | [intros](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/intros.md) | 274 | `declaration-track:66de8aa0b9c8fc88185ea7454c8f05220e08b3841dc4e038af0ab2d785f32c9e` |
| 17 | `def` | [assertAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/assertat.md) | 278 | `declaration-track:12a4433769d4405b4c9a5bc3fccfc759ed62b682dc130b1cfcdce828c95491df` |
| 18 | `def` | [assertNext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/assertnext.md) | 294 | `declaration-track:a585d99a7281a13c7f6ea377d4bd3862d5cd2c7d853057132a3f2f0c90d08d96` |
| 19 | `def` | [assertAll](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/assertall.md) | 307 | `declaration-track:0a022cc6c30288d44ff69ed1d7bf858cacbc55159d4228c64cf340e0f56d4b07` |
| 20 | `def` | [Solvers.mkAction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/IntroNamespacedPublicIntroResult.lean/declarations/solvers-mkaction.md) | 321 | `declaration-track:eadb38d4a41b7456376aadda4854f9523a5b17113e5e11f0e555b03261a131c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a890334869ae7c92b26ee142c83f46b4b0647ec66e11bb1216a1f1be023aef9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant9f2ee48d9890a69d546019087522feb484161ea9883a737830bd38f405377eaf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variant9f2ee48d9890a69d546019087522feb484161ea9883a737830bd38f405377eaf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
