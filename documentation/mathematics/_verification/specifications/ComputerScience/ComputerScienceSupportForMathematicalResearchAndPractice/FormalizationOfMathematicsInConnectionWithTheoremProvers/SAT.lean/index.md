# Verification target: SAT

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b79c5f0428f7982de298dc0919407646f23189e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SAT/Variant7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b79c5f0428f7982de298dc0919407646f23189e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SAT/Variant7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SAT/Variant7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Reduction.SAT` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [σ000](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/000.md) | 12 | `declaration-track:efe70ba1152b9d1202ea58fdbb42bc54fbfac5dff10f3fc84d623f4b1d29ec32` |
| 2 | `def` | [σ011](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/011.md) | 18 | `declaration-track:bdcf13aea0116abb57f549b7b02f7a3e0697d709751c73d7696b318f1230c481` |
| 3 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example-source-edition-10.md) | 24 | `declaration-track:e69f79fb141c673e8c785111ac78653379cfd11fd5c31fbdafa3b1821e5b8cf1` |
| 4 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example-source-edition-7.md) | 27 | `declaration-track:acb67f9dcfe99372c33e2eb518f5ba416fd73b8515cdcd8a2fcf99b4f0fc27a6` |
| 5 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example-source-edition-8.md) | 30 | `declaration-track:b0cc5a71234ddfe4914900ad97fee84ddef8e0645106091ae87bd4284edcef03` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example.md) | 34 | `declaration-track:03a14116a5d37ceaf38600cf0882908b84072720f86ab25335b6a05568a19659` |
| 7 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example-source-edition-9.md) | 39 | `declaration-track:c8928ff2dfb665869c76fc4885fff4d9ffdfda6e2d8e1f0e4b1167178deae347` |
| 8 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example-source-edition-6.md) | 44 | `declaration-track:997a0516b17b938341db2f13bcaa4c3929f5850edc566fba5e589a5e987ea1f6` |
| 9 | `def` | [bitNot1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/bitnot1.md) | 48 | `declaration-track:9d0a562df8fc5b0f12c57d05009eda3db917d00bd93ac0f0185a8733e8433ef1` |
| 10 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example-source-edition-4.md) | 51 | `declaration-track:3d02ffb2a82ffb86cd2be9a01064a0a22a7dcb4a63af3648965e6b846a309160` |
| 11 | `def` | [identity1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/identity1.md) | 56 | `declaration-track:816e8623b6fa4175e9e7b3705bbc412c01eba4cbdefe09e55d0511685a94f2a3` |
| 12 | `theorem` | [identity1_bijective](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/identity1-bijective.md) | 58 | `result-track:c758c17d86ad117728c8d32c6b4a60ef53813767aca100a08beaf33ad86a4528` |
| 13 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example-source-edition-5.md) | 65 | `declaration-track:67997b5954f47edc7c8bf2a3e1156f39760c6325885033008aad92826cba0086` |
| 14 | `def` | [identityCircuit1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/identitycircuit1.md) | 70 | `declaration-track:4a01ef422f72f67a52a01283deb69dbc0ab069ff06ab2a5e5c4d3929733bfdf6` |
| 15 | `theorem` | [identityCircuit1_implements](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/identitycircuit1-implements.md) | 74 | `result-track:799b67e27bd0ec0abd1f55a2cd7b99bef9dcd143c569587637dc5e595060594f` |
| 16 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example-source-edition-3.md) | 84 | `declaration-track:17a5299daebdd1fede021c096d21e21fd7d4e39129b7ab06c0decc150ae51898` |
| 17 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/SAT.lean/declarations/example-source-edition-2.md) | 90 | `declaration-track:14ea52f4a15024f32ed5c79d88373483b6ea55eea91402ce89725b7cccc4cfdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=012e6418ec6cfb75497952f945a5f19ee58ded499e6d6f2270b2ff721d84db55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SAT/Variant7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SAT/Variant7d8583096a2b196a5aad54e0e25b89a64434813e2c25d55cee0db5f3b70c0002.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
