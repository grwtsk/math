# Verification target: Comparison Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0446cd93ba29163cbe1d89dc51651671ed425ba1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantd13bc869d80f79992405d38e72c0685a8c357467ee7e5f309a72e4e3f513b06f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0446cd93ba29163cbe1d89dc51651671ed425ba1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantd13bc869d80f79992405d38e72c0685a8c357467ee7e5f309a72e4e3f513b06f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantd13bc869d80f79992405d38e72c0685a8c357467ee7e5f309a72e4e3f513b06f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.PerfectComplex.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [QuasiIsoChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/declarations/quasiisochain.md) | 26 | `declaration-track:0a80a4a51c607660fd2c1cdc43aa5884c372f9ead522a46b24a1be34ac727fa5` |
| 2 | `def` | [composite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/declarations/composite.md) | 38 | `declaration-track:57ac3d0d5ab9fe8e00f252dc077616fc2c1f280ab72c16aa41cfec3298750cda` |
| 3 | `theorem` | [composite_nil](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/declarations/composite-nil.md) | 44 | `result-track:5d97d9b525b87cd71c4ec4e210ed011ea943d552facc8241874328929afbfa09` |
| 4 | `theorem` | [composite_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/declarations/composite-cons.md) | 49 | `result-track:734becb2b196b827356321de731b9e5ae4aab14ab9a791c48459e303c5b41245` |
| 5 | `def` | [append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/declarations/append.md) | 57 | `declaration-track:a594322e9e5b8ec75284cf69ce2ff94262081da08e86d3d6960c4aca411da994` |
| 6 | `theorem` | [nil_append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/declarations/nil-append.md) | 65 | `result-track:e0f418197342a3221a958b6da78a5e33f38e39bbf6a027431d00357c198a28c0` |
| 7 | `theorem` | [cons_append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/declarations/cons-append.md) | 70 | `result-track:08835d6c4a489e82fa536062aabc530abc1540dd27cd05caa5e424497c90dc27` |
| 8 | `theorem` | [composite_append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ComparisonNamespaced.lean/declarations/composite-append.md) | 78 | `result-track:057e0e1510a193e3b491a86ded73d51c264afc22c82b8321065d863af1a475c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4245bd459ca6d00127969a683130a56fe69cffd95260f0247176cb8e87af5e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantd13bc869d80f79992405d38e72c0685a8c357467ee7e5f309a72e4e3f513b06f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantd13bc869d80f79992405d38e72c0685a8c357467ee7e5f309a72e4e3f513b06f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
