# Verification target: Rado Finite Pattern

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fd3f558a01d3693012aba2b73d8eb12d0e0dbad",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e/Variant2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fd3f558a01d3693012aba2b73d8eb12d0e0dbad`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e/Variant2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e/Variant2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.M506970656c696e652f43656e7465722f5261646f457874656e73696f6e2e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PatternConnect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/declarations/patternconnect.md) | 21 | `declaration-track:bcef872d2fcc015de0baa0ca5a15bae10a8a598a1c2bd52d970ffbd92bdc0b8a` |
| 2 | `def` | [PatternAvoid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/declarations/patternavoid.md) | 25 | `declaration-track:5de65cf7b46242d27f2be1612918c990830e71c8b0160f6b377b44d165114ec9` |
| 3 | `theorem` | [mem_patternConnect](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/declarations/mem-patternconnect.md) | 29 | `result-track:42096d98204c7e226323ebbbcda0a3120fca7416d953b60d03abcd04f21472f5` |
| 4 | `theorem` | [mem_patternAvoid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/declarations/mem-patternavoid.md) | 36 | `result-track:8877759849dee0092689aa53ae4c9a1948e84f27c1e49042691888eb1e7a746a` |
| 5 | `theorem` | [patternConnect_member_edge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/declarations/patternconnect-member-edge.md) | 43 | `result-track:bef5e12de07ed920662199f08e2b7e9a958b086808a97e8a18e1aba717d3c2ee` |
| 6 | `theorem` | [patternAvoid_member_not_edge](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/declarations/patternavoid-member-not-edge.md) | 51 | `result-track:579293fc99f761f745cd790eb2dc8e3ff8278d72c747c355a8310c682b0ef626` |
| 7 | `theorem` | [patternConnect_patternAvoid_disjoint](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/declarations/patternconnect-patternavoid-disjoint.md) | 59 | `result-track:9b9288f1c3a984cbe0e61e08b4e6c45ea900cb0bed8fc8feb41d9240b0d781e9` |
| 8 | `theorem` | [old_mem_connect_or_avoid](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/declarations/old-mem-connect-or-avoid.md) | 65 | `result-track:9f6a192b03677c94b4a3ba127b55841a2643956dfbe800b7a18ca8cb5f5c1393` |
| 9 | `theorem` | [bitRado_copy_finite_pattern_over_list](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RadoFinitePattern.lean/declarations/bitrado-copy-finite-pattern-over-list.md) | 73 | `result-track:551ab9196c545681cfcb79852eebb8bb7bd888293193266cab1aeab34acd2866` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b75299fe12c2f8b465c61d6989a6e74f732fe67009223b0a999061d8c86ba456 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e/Variant2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f43656e7465722f5261646f46696e6974655061747465726e2e6c65616e/Variant2475df948cbe1603060eff009acf1fd8fc0f26af591661b6367433425a031a5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
