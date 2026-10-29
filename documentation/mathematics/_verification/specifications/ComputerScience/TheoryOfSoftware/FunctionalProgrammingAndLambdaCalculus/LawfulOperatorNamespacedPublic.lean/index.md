# Verification target: Lawful Operator Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e17a0afcc1427b2664fa295b2090452a3b3e74f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant85fc3277ed0e1b0383a382ff890c6bf782f3e6b69d328c62d4a201fc51658c07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e17a0afcc1427b2664fa295b2090452a3b3e74f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant85fc3277ed0e1b0383a382ff890c6bf782f3e6b69d328c62d4a201fc51658c07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant85fc3277ed0e1b0383a382ff890c6bf782f3e6b69d328c62d4a201fc51658c07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPrefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/isprefix.md) | 35 | `declaration-track:bd05c7492d9c616e78c6b9a4388af1d73dce7f4fc2e6f7cda8c1c2638fc210b7` |
| 2 | `theorem` | [IsPrefix.rfl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/isprefix-rfl.md) | 46 | `result-track:6be86c16919f4b4ab10e3ae5019ce757b2d8ac3337a034ccc311e36a284558ff` |
| 3 | `theorem` | [IsPrefix_push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/isprefix-push.md) | 52 | `result-track:0a3b0916cf06754c3907f53f58301226f1fe6c839a3d6894f5052fa395732d49` |
| 4 | `theorem` | [denote.go_eq_of_isPrefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/denote-go-eq-of-isprefix.md) | 62 | `result-track:45857f0a8ea9b5499c950a94832ca08623324762dafdd5c74408910af4220101` |
| 5 | `theorem` | [denote.eq_of_isPrefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/denote-eq-of-isprefix.md) | 95 | `result-track:7175ba3cb6b0290440691d38aa3ad570de4890d9107f502d891d70908fa88cb6` |
| 6 | `abbrev` | [ExtendingEntrypoint](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/extendingentrypoint.md) | 106 | `declaration-track:e9ef34b8c5d02d1421628860112ab519d02c5259b659345e40cead336fd4c295` |
| 7 | `abbrev` | [ExtendingRefVecEntry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/extendingrefvecentry.md) | 109 | `declaration-track:162b3149480279007c20dcade763f209e5f3e9ce3186558571975078cee93779` |
| 8 | `class` | [LawfulOperator](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/lawfuloperator.md) | 119 | `declaration-track:0fbc9679b79ace1db2071c2159b3c1ee78808074d80e5ed31290ef95cfb035ae` |
| 9 | `theorem` | [isPrefix_aig](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/isprefix-aig.md) | 130 | `result-track:e3d99423b25d6803ca5cfecbb7c1603d0457d4eff44ec094c2b6d5a480cddbcf` |
| 10 | `theorem` | [lt_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/lt-size.md) | 137 | `result-track:c85d5d7dfca3d7bba9011415e8fd543db87a8524b080ce45910a28282fec2155` |
| 11 | `theorem` | [lt_size_of_lt_aig_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/lt-size-of-lt-aig-size.md) | 144 | `result-track:b1c0ff078f29f25739fb77141e5ecc9156b6732b882fce1a1488030248735514` |
| 12 | `theorem` | [le_size_of_le_aig_size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/le-size-of-le-aig-size.md) | 150 | `result-track:2f0ae66246f2749abbd28e17f080c538e5ffc7d366daaf7ca30741014c49f190` |
| 13 | `theorem` | [denote_input_entry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/denote-input-entry.md) | 157 | `result-track:4c6d8fe084f11f66baab528c49fe7c266d5971326e2dfe5b0fe91adbab593b0b` |
| 14 | `theorem` | [denote_cast_entry](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/denote-cast-entry.md) | 165 | `result-track:1b1c1fe5f0a531ab1bdf91b7cd03f9689dd1f44d5244e9dd3600828e04af510a` |
| 15 | `theorem` | [denote_mem_prefix](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LawfulOperatorNamespacedPublic.lean/declarations/denote-mem-prefix.md) | 171 | `result-track:e9383183ba409a6dc144feac3af8981924bd970af6d1f17c1896c784407bfcf0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0425aef6894036750f5915ff2d68ec70ba125ca8e19f67cb1e8df3957ea69325 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant85fc3277ed0e1b0383a382ff890c6bf782f3e6b69d328c62d4a201fc51658c07.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LawfulOperator/Variant85fc3277ed0e1b0383a382ff890c6bf782f3e6b69d328c62d4a201fc51658c07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
