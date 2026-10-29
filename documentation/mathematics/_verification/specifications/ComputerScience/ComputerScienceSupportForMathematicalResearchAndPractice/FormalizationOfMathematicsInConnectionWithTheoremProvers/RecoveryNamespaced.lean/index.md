# Verification target: Recovery Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1c4660b7fea1e76d434ded2017168f985b4f7ac",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recovery/Variantb99598c4552c3cd9c0ef807a2796b24b0a317acd5f6a20e84f667b11e44080a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecoveryNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecoveryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1c4660b7fea1e76d434ded2017168f985b4f7ac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recovery/Variantb99598c4552c3cd9c0ef807a2796b24b0a317acd5f6a20e84f667b11e44080a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recovery/Variantb99598c4552c3cd9c0ef807a2796b24b0a317acd5f6a20e84f667b11e44080a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.TensorNetwork.Gauge` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.TensorNetwork.Rebirth` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SemanticRecoveryMode](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecoveryNamespaced.lean/declarations/semanticrecoverymode.md) | 25 | `declaration-track:232f768615bc83104870a83a2844c4f454dcaa738ab521572c7a77496e99d57b` |
| 2 | `structure` | [SemanticRecoveryCandidate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecoveryNamespaced.lean/declarations/semanticrecoverycandidate.md) | 32 | `declaration-track:14dbba30d8b18f9da8dcf358c8420b05dbbe4de9f9de80a58041661626061724` |
| 3 | `def` | [CertifiedSemanticTensorContinuity](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecoveryNamespaced.lean/declarations/certifiedsemantictensorcontinuity.md) | 60 | `declaration-track:9c11e861996dce37ecbfe808fe468aebfd10e58e780707337a7a8e027e92493e` |
| 4 | `theorem` | [SemanticRecoveryCandidate.certified](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecoveryNamespaced.lean/declarations/semanticrecoverycandidate-certified.md) | 75 | `result-track:f99f829a08d5b046b57caa9def6d7405470820332780df9bf3e7814b9d549032` |
| 5 | `theorem` | [semantic_recovery_preserves_receipt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecoveryNamespaced.lean/declarations/semantic-recovery-preserves-receipt.md) | 87 | `result-track:5d37bef5ad610547505bffe3201039e60df25f8e5fc76ac9314f448a1d7586a4` |
| 6 | `theorem` | [gauge_normalization_preserves_state](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/RecoveryNamespaced.lean/declarations/gauge-normalization-preserves-state.md) | 92 | `result-track:cbdc62048f7254af84e877030539e5a17ea3ce7bc24864f156d7c22a8aac6a98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dca2c03639ceabd0657095ca727aeb1a8f82434154a0ac7a804f93c847552aec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recovery/Variantb99598c4552c3cd9c0ef807a2796b24b0a317acd5f6a20e84f667b11e44080a8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Recovery/Variantb99598c4552c3cd9c0ef807a2796b24b0a317acd5f6a20e84f667b11e44080a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
