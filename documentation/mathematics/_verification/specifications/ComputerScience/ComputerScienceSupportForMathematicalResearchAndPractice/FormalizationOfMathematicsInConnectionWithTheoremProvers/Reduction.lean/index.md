# Verification target: Reduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ed7c88ddf7adc1d683aa6c7bbe557ce2fa21566",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Reduction.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Reduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ed7c88ddf7adc1d683aa6c7bbe557ce2fa21566`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.CosmeticSurgery.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CurrentReduction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Reduction.lean/declarations/currentreduction.md) | 34 | `declaration-track:49da6c21c6c939790eb95ffd3472837359cced1a97afc9ade670bb0390cc4da2` |
| 2 | `theorem` | [fillingsHomeomorphic_symm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Reduction.lean/declarations/fillingshomeomorphic-symm.md) | 68 | `result-track:df2fbb32cc6b95fc8f6b9c3b50bb695264f2e646f43496f634ac6946b57f2de0` |
| 3 | `theorem` | [knotCounterexample_iff_fixedKnotResidualCounterexample](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Reduction.lean/declarations/knotcounterexample-iff-fixedknotresidualcounterexample.md) | 87 | `result-track:5d3fad127ce83aa82bc3142c9e290e28118a92d1fba948b09ce2be3c5faa60af` |
| 4 | `theorem` | [conjectureFalse_iff_exists_residualCounterexample](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Reduction.lean/declarations/conjecturefalse-iff-exists-residualcounterexample.md) | 109 | `result-track:809a9476ea161aa1ceb0068e93820f70fc79358c8ce056af9cb120647e43b91d` |
| 5 | `theorem` | [residualProfile_of_knotCounterexample](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Reduction.lean/declarations/residualprofile-of-knotcounterexample.md) | 118 | `result-track:1989757757748ea920992c0f4bc1150528c8a2cf7b1260240f0f2cff9dd0d77b` |
| 6 | `theorem` | [oppositeCoefficients_of_purelyCosmeticPair](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Reduction.lean/declarations/oppositecoefficients-of-purelycosmeticpair.md) | 127 | `result-track:35d6d1f037d172ad85e0d0c7de302d5e2f688b6aefeded707c13998afb198aed` |
| 7 | `theorem` | [niWuCongruence_of_purelyCosmeticPair](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Reduction.lean/declarations/niwucongruence-of-purelycosmeticpair.md) | 136 | `result-track:31d8ad61198d8ec7ae025358fa18cd8d6ec82ddcbaf0f783b9867244bbbfbc32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d0f3ed270b8e948e882b7d5f57c83cfb178438f0ea3e234c32a2d010599abced -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reduction/Variantf11ac31c391a2d2a03d6364011b54f976b1d7dd0e23d487ae84b2d74ef98cd1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
