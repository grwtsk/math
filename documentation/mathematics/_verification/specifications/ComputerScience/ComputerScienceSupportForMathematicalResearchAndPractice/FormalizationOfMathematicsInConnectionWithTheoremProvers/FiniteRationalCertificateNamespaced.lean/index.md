# Verification target: Finite Rational Certificate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "824c74be8ac3180c08b5f0e08c87751937009846",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Variantb1d79551058c0a42fe1ddbd4dbf7eb8a4e81f3f0ba4966586cb74770dbac1661.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `824c74be8ac3180c08b5f0e08c87751937009846`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Variantb1d79551058c0a42fe1ddbd4dbf7eb8a4e81f3f0ba4966586cb74770dbac1661.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Variantb1d79551058c0a42fe1ddbd4dbf7eb8a4e81f3f0ba4966586cb74770dbac1661.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verifiedHeight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/verifiedheight.md) | 17 | `declaration-track:063e293b82c645a65372145698ffb6d0d915fb5149ba7e57e6e81ddb021827e6` |
| 2 | `def` | [limitingNormalization](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/limitingnormalization.md) | 18 | `declaration-track:27ec3839d5ebc066b70becc0e45b5ba63f949322ece6241645f60386a42e5b44` |
| 3 | `def` | [rationalTail](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/rationaltail.md) | 19 | `declaration-track:5ce7d7a8e1940542184aec5c9d839fe5b09cc52c45cf28c39dd47be560c12c2d` |
| 4 | `def` | [finiteBudget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/finitebudget.md) | 20 | `declaration-track:ed97dcf217ab5fbf345398c1bbeda60698cbf81d8037b93fe2c5c71901d31f8c` |
| 5 | `theorem` | [budget160_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/budget160-lt.md) | 23 | `result-track:8a5832e0f5391a62304a9e005f3e0bad50b07fcc4d8f3b22d9ff51bb0973bc0b` |
| 6 | `theorem` | [budget176_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/budget176-lt.md) | 26 | `result-track:f869136991910f4f6bc25189b18041db3775669052a81ce7e657e4adc4f68c75` |
| 7 | `theorem` | [fixed_prime_coarse_constant](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/fixed-prime-coarse-constant.md) | 29 | `result-track:76e81d3a1f252683cf555dceb0d7b43a3f8ec8b44664aa5aff81e26e6dfb9013` |
| 8 | `theorem` | [fixed_prime_coarse_lt_eleven](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/fixed-prime-coarse-lt-eleven.md) | 32 | `result-track:1b53da624daba886903df42aa8109a8ce0b7db94e652079cd72128c54cd12738` |
| 9 | `theorem` | [transfer160_value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/transfer160-value.md) | 35 | `result-track:f0c8b3be06781806d4bca2b9607652825bcda296d1ab91ffb54ed0f9842befea` |
| 10 | `theorem` | [transfer160_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/transfer160-gt.md) | 38 | `result-track:91c080d4386eb6ac43532c283c150617daa4b1854272fc7854f6b407eefdf004` |
| 11 | `theorem` | [transfer176_value](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/transfer176-value.md) | 40 | `result-track:27278de5909e3ce8420b410b7690a9eeccfc3cf89574e06c6bcf7068519557bb` |
| 12 | `theorem` | [transfer176_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/FiniteRationalCertificateNamespaced.lean/declarations/transfer176-gt.md) | 43 | `result-track:b37792157019303625f370c426c7dd92ca927cda4c2abac26d9d5a081821452c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be2c5dfc56b742b0c2158968c68774ddc66c95c9d0469d1761bf6be49d524392 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Variantb1d79551058c0a42fe1ddbd4dbf7eb8a4e81f3f0ba4966586cb74770dbac1661.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteRationalCertificate/Variantb1d79551058c0a42fe1ddbd4dbf7eb8a4e81f3f0ba4966586cb74770dbac1661.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
