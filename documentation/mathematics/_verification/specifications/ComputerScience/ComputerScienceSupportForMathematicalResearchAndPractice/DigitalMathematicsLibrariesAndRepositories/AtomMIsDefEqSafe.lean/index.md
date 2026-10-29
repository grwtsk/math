# Verification target: Atom MIs Def Eq Safe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "511cb1a1b729b413ef6245cb3c95f8ceeca6bfa8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/AtomMIsDefEqSafe.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/AtomMIsDefEqSafe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `511cb1a1b729b413ef6245cb3c95f8ceeca6bfa8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Simp.Types` — import line 7; external provider; requires a separately pinned dependency.
- `Qq` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AtomM.Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/AtomMIsDefEqSafe.lean/declarations/atomm-context.md) | 26 | `declaration-track:ce34c245f3603f30e5596a1b7eeab809308d0a62d04435ac666095cbda8afe96` |
| 2 | `structure` | [AtomM.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/AtomMIsDefEqSafe.lean/declarations/atomm-state.md) | 35 | `declaration-track:7507a64d3e66b4f9a678930613e530a8561a19ad3a862e8cebff2057f47ea63b` |
| 3 | `abbrev` | [AtomM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/AtomMIsDefEqSafe.lean/declarations/atomm.md) | 40 | `declaration-track:02f3270381038a424dc31dd59f73b60c64df427021a1d3138795038a5382d44a` |
| 4 | `def` | [AtomM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/AtomMIsDefEqSafe.lean/declarations/atomm-run.md) | 43 | `declaration-track:b785bd3ab04c29a3dc61d365bb7868bf2603dde0a7b60a8c5f421bcc4ff5d64c` |
| 5 | `def` | [isDefEqSafe](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/AtomMIsDefEqSafe.lean/declarations/isdefeqsafe.md) | 53 | `declaration-track:1d961afdf5ef42997a3ad266924677d18bc7128d187ce4ac1013ee83c94d8271` |
| 6 | `def` | [AtomM.addAtom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/AtomMIsDefEqSafe.lean/declarations/atomm-addatom.md) | 63 | `declaration-track:954d2b5a57e6f76b2f1d60607068c31cff3487494639871704cd64f68fd34068` |
| 7 | `def` | [AtomM.addAtomQ](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/DigitalMathematicsLibrariesAndRepositories/AtomMIsDefEqSafe.lean/declarations/atomm-addatomq.md) | 80 | `declaration-track:2a0973de4886dec8ae211e462cd2ee8e142df76735bea2cbd7347839d863a1c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85ce04050ff3bc27b3c3c8f56a6bc3ad77277ee39811ee458a8ab23aad8d8aeb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AtomM/Variant53b64e024eb05f5a9b3b5d9fac96ba08043f4888cec3f94e34eb437a0a58e795.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
