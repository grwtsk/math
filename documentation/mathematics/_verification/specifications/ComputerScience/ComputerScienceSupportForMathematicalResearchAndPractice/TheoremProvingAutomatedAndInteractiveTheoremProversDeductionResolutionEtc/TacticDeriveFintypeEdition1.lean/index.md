# Verification target: Tactic Derive Fintype Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23411c79b1d7581adb0bf11672155f065a0ab69a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDeriveFintypeEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDeriveFintypeEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23411c79b1d7581adb0bf11672155f065a0ab69a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ProxyType` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sum` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDeriveFintypeEdition1.lean/declarations/macro.md) | 85 | `declaration-track:b73bb6193c295170973f2d1b5ad85ba2a6b7790c63f081ba22cb14f3f50855d2` |
| 2 | `def` | [mkFintype](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDeriveFintypeEdition1.lean/declarations/mkfintype.md) | 91 | `declaration-track:94d66a0d55d66f8b578b6653c6e831fec436d805ca67a2755ca87d50592e226a` |
| 3 | `instance` | [$header.binders](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDeriveFintypeEdition1.lean/declarations/header-binders.md) | 97 | `declaration-track:ac8191996e1b653e18a0aa6a7c7f1084b6652c0f4bf8a2aba859b43fcf0bd04f` |
| 4 | `def` | [mkFintypeEnum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDeriveFintypeEdition1.lean/declarations/mkfintypeenum.md) | 113 | `declaration-track:831f18d201b34b6963fc8682ac88fa020315c6246652935d69561d82ab5a77e4` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDeriveFintypeEdition1.lean/declarations/instance.md) | 169 | `declaration-track:72851624bc3f9048bbd8fa3810665c768ee06cbcc4d509f7e8206602047057b0` |
| 6 | `def` | [mkFintypeInstanceHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDeriveFintypeEdition1.lean/declarations/mkfintypeinstancehandler.md) | 178 | `declaration-track:a158dba08d5353bc5f305d3b7a06e874b2d13a66e02fc1ccf102df2a11298cef` |
| 7 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticDeriveFintypeEdition1.lean/declarations/initialize.md) | 188 | `declaration-track:8131dc2ea82e0dd15b7a1ff795831b2fdebda165265d1932afddbc6f4785cfc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08e41b5453e32beb76a780c870a9a782583fad4de0448a87076c9d79941ab9ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DeriveFintype/Variant4cabd57fc390f6bd50d60821fe54f36bc16edfafcaefdb991c3bed2d12cc759f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
