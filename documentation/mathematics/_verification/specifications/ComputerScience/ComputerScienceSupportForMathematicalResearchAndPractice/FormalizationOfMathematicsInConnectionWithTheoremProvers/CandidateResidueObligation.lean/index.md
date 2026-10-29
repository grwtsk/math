# Verification target: Candidate Residue Obligation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03374f466a966284a3e2eec0388c68d06001e431",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c656/Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CandidateResidueObligation.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CandidateResidueObligation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03374f466a966284a3e2eec0388c68d06001e431`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c656/Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c656/Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit0.Bit0.Bit0.Bit1.Bit1.M546172676574732f496d706f7274506c616e2e6c65616e` — import line 1; external provider; requires a separately pinned dependency.
- `Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CandidateResidueObligation](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CandidateResidueObligation.lean/declarations/candidateresidueobligation.md) | 11 | `declaration-track:361cca9371c2b62cbb437c7953cbec9a32ceb161c21b41a910c2736aa0e31753` |
| 2 | `theorem` | [candidateResidueObligation_retains_final_target](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CandidateResidueObligation.lean/declarations/candidateresidueobligation-retains-final-target.md) | 20 | `result-track:5a97c5c0ebcd799e4c93d8c2cd7775e10637f1b9704cfffa10bd29716a9d5e20` |
| 3 | `theorem` | [candidateResidueObligation_matches_residue_kind](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CandidateResidueObligation.lean/declarations/candidateresidueobligation-matches-residue-kind.md) | 27 | `result-track:a7ba416b99ce5fc81a218e7b4b874882b57766bc4198ae00aacc50b6480db657` |
| 4 | `theorem` | [candidateResidueObligation_matches_atom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CandidateResidueObligation.lean/declarations/candidateresidueobligation-matches-atom.md) | 34 | `result-track:ce4feca8968b38ee2b2b603b9825b5374e61ee417f4fa904f012c914b56520d1` |
| 5 | `theorem` | [candidateResidueObligation_matches_target](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CandidateResidueObligation.lean/declarations/candidateresidueobligation-matches-target.md) | 41 | `result-track:b2d5c6f5b1f236ca38bd9ade17c5186d3cf184ea74dc3a27752a0d29f78ca7a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09a06c15c237a834b3ccef8997ed345f795f48d6435e5c75d0b5348642f45f95 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c656/Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c656/Variantc05e906d264fe617ca4f7ecbb3fb8d73b8d222fac93114c93615c75ad16b0fb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
