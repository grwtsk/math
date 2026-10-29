# Verification target: Comparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f20541d0cc1ddb6afe5668222d50f1f7b4232a19",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantaa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f20541d0cc1ddb6afe5668222d50f1f7b4232a19`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantaa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantaa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.PerfectComplex.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [QuasiIsoChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/declarations/quasiisochain.md) | 18 | `declaration-track:876d14926c0c6755254aad62ffba74366a6c43cc327c21c206459724e0d95d7a` |
| 2 | `def` | [composite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/declarations/composite.md) | 30 | `declaration-track:6338638f8e716d97ea78392d1221df3e59a8cf5fefd12c97cd5168b6adde1aa1` |
| 3 | `theorem` | [composite_nil](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/declarations/composite-nil.md) | 36 | `result-track:09de8031984b3082d1413b973ecca940410c5cef5c05845f965ee3b0f0a09962` |
| 4 | `theorem` | [composite_cons](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/declarations/composite-cons.md) | 41 | `result-track:d6e3afdd285f287a35c34fce348554cbf8ed2fa5290e0ad6743392ba93041c2b` |
| 5 | `def` | [append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/declarations/append.md) | 49 | `declaration-track:dc0e227b9e6a592137e6a1c223533cf850a00bff481b2e9c69704fc81467b3c6` |
| 6 | `theorem` | [nil_append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/declarations/nil-append.md) | 57 | `result-track:6dc75fbfd25694e03056dba3d9729ee626ae64d3296bfe1e98ffc422089e71fc` |
| 7 | `theorem` | [cons_append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/declarations/cons-append.md) | 62 | `result-track:edb52d5a96afe4bd575c858948aebba5f126a6c15f073c880e99e51fa93c7bd7` |
| 8 | `theorem` | [composite_append](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/Comparison.lean/declarations/composite-append.md) | 70 | `result-track:509cfc595dd8ad8d14b9fdc73f94052d9444c9339aebe2a9825e0a0b73e30477` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2144be4e0760927bce7c8e2b1c12ec6acc10b0bbe442b7881f62f6e3e981a4b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantaa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Comparison/Variantaa7271c7a594fdcd2133bd4aacc8e92b8f5926b402120b3d706b21fe3d0c7305.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
