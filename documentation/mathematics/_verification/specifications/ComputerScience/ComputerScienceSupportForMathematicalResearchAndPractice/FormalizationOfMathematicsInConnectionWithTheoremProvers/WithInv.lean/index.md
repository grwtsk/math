# Verification target: With Inv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "061689e7b77ffdfc7df4d6e345946dffe49db0be",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Variantef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `061689e7b77ffdfc7df4d6e345946dffe49db0be`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Variantef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Variantef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.IntervalEval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkUpperBoundWithInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/checkupperboundwithinv.md) | 51 | `declaration-track:7d1b7d9929a19308ddeae9c74c5b273257da8fc013b2aaf7506823329e904136` |
| 2 | `def` | [checkLowerBoundWithInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/checklowerboundwithinv.md) | 59 | `declaration-track:ddaf7c38981328d49555e6ef976f6827ebb162e04abd70398a669ec8b42ccd52` |
| 3 | `def` | [checkStrictUpperBoundWithInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/checkstrictupperboundwithinv.md) | 66 | `declaration-track:5c47bafe20ee495caf50db5604c7bb2acd5896a31566717c80019e215b51493b` |
| 4 | `def` | [checkStrictLowerBoundWithInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/checkstrictlowerboundwithinv.md) | 73 | `declaration-track:8d63f6202ea266320d95cc32eef01fc53228cb55e868a1743ce00be16418c44c` |
| 5 | `theorem` | [verify_upper_bound_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/verify-upper-bound-withinv.md) | 81 | `result-track:c6ab02ce6490e6a337edb99388fc0a4f6590d16719e8bd88eef594a069e8adf2` |
| 6 | `theorem` | [verify_lower_bound_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/verify-lower-bound-withinv.md) | 93 | `result-track:c894f4025171e3fb58a586cac9a61aa55b51f0f3aba92830ba8293e6461f2fab` |
| 7 | `theorem` | [verify_strict_upper_bound_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/verify-strict-upper-bound-withinv.md) | 105 | `result-track:53cbb7572473dac56e1d9bb55899784da4c2cbacf5066bdf0893fae00cb11940` |
| 8 | `theorem` | [verify_strict_lower_bound_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/verify-strict-lower-bound-withinv.md) | 121 | `result-track:23506a5bb445fcc9d1ac12f8d12d91078369543bf9b487c2da940367c9dbedc3` |
| 9 | `theorem` | [verify_upper_bound_Icc_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/verify-upper-bound-icc-withinv.md) | 139 | `result-track:92144fea05616c21cd6ac24359edfc81fe68196caeffa2b345f48622fef19477` |
| 10 | `theorem` | [verify_lower_bound_Icc_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/verify-lower-bound-icc-withinv.md) | 149 | `result-track:2a9f1df8913ae201de70638a47a8f071739fda81405c65dd30ace16db53f1e9e` |
| 11 | `theorem` | [verify_strict_upper_bound_Icc_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/verify-strict-upper-bound-icc-withinv.md) | 159 | `result-track:1cf6673931942a6938e27a092e11e127d645fd2c6e2e518579998a545c57f8c8` |
| 12 | `theorem` | [verify_strict_lower_bound_Icc_withInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/WithInv.lean/declarations/verify-strict-lower-bound-icc-withinv.md) | 169 | `result-track:f09ce8d56265c30e0dec8397fe69e5f25aa48ddff55f835caf3dc266dca36907` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b4565bb4f12b204b11873c874b0b08594d375fb358e35bff7113cc69c143d94a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Variantef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WithInv/Variantef9f67458bddcbb152863acf280bf8ff188d7a6cbe191abc85064b3178b954ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
