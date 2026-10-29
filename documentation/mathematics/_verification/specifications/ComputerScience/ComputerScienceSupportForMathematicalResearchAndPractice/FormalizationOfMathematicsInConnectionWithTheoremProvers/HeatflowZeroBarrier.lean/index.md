# Verification target: Heatflow Zero Barrier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79d132bde10af973ac63230618a0cae0ebfd6482",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatflowZeroBarrier/Variant6b0a3224c31e3396a884eca728bd4c02acb751e7f93411c1559e08e1d3d947b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HeatflowZeroBarrier.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HeatflowZeroBarrier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79d132bde10af973ac63230618a0cae0ebfd6482`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatflowZeroBarrier/Variant6b0a3224c31e3396a884eca728bd4c02acb751e7f93411c1559e08e1d3d947b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatflowZeroBarrier/Variant6b0a3224c31e3396a884eca728bd4c02acb751e7f93411c1559e08e1d3d947b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.HeatflowPivot` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeatflowZeroFreeCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HeatflowZeroBarrier.lean/declarations/heatflowzerofreecertificate.md) | 19 | `declaration-track:e369666089030686453e23906fde2ac66490fd5b323bd6329ded84f6271ae0f2` |
| 2 | `structure` | [HeatflowBarrierCertificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HeatflowZeroBarrier.lean/declarations/heatflowbarriercertificate.md) | 27 | `declaration-track:166c005511c62fe3903a69cd94341c1bb1a1d489dccee766209e18c2ca265d44` |
| 3 | `theorem` | [heatflow_barrier_has_initial_certificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HeatflowZeroBarrier.lean/declarations/heatflow-barrier-has-initial-certificate.md) | 33 | `result-track:e5fbed0453ebf97cc58e26b070d80507c4fa8b33754eddbaf6063777b9361e36` |
| 4 | `theorem` | [heatflow_barrier_has_final_certificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HeatflowZeroBarrier.lean/declarations/heatflow-barrier-has-final-certificate.md) | 38 | `result-track:855e49a5861dfc1989690ab2c3821b430dc84f1ee22ba506ee1d24cb67889336` |
| 5 | `theorem` | [heatflow_barrier_has_intermediate_certificate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HeatflowZeroBarrier.lean/declarations/heatflow-barrier-has-intermediate-certificate.md) | 43 | `result-track:34a555e8bae4043c11fd7ce897fa1db0eceea5b62f6c0a1b8d72df269dda7f8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9e654c0c800c2ce85e2a83a79e95734a9d63413257a874e6861910cfab7923e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatflowZeroBarrier/Variant6b0a3224c31e3396a884eca728bd4c02acb751e7f93411c1559e08e1d3d947b8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HeatflowZeroBarrier/Variant6b0a3224c31e3396a884eca728bd4c02acb751e7f93411c1559e08e1d3d947b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
