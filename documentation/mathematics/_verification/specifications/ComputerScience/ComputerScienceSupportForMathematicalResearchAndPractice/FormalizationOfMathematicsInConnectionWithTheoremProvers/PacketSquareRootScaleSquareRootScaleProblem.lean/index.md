# Verification target: Packet Square Root Scale Square Root Scale Problem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ae0d8144ef472217c6cc5e0ff1631d070be1522",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variantd0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PacketSquareRootScaleSquareRootScaleProblem.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PacketSquareRootScaleSquareRootScaleProblem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ae0d8144ef472217c6cc5e0ff1631d070be1522`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variantd0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variantd0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.Trace.WeilCorrespondence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SquareRootScaleProblem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PacketSquareRootScaleSquareRootScaleProblem.lean/declarations/squarerootscaleproblem.md) | 15 | `declaration-track:71ec1c7fd7990f5fd4abc03f8b0bac5b244ffa823f8ff86da1dac604f4a208b8` |
| 2 | `structure` | [PacketSquareRootComponents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PacketSquareRootScaleSquareRootScaleProblem.lean/declarations/packetsquarerootcomponents.md) | 26 | `declaration-track:ba9dcfdb0e729e70548f4b850ef2eba3b99ed79e926a52be091b680991be68f8` |
| 3 | `def` | [SquareRootNormFinite](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PacketSquareRootScaleSquareRootScaleProblem.lean/declarations/squarerootnormfinite.md) | 71 | `declaration-track:6976876efdbdb87d980d1a7d92764c5c3665504a4d894674e41e794edd063828` |
| 4 | `constant` | [*](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PacketSquareRootScaleSquareRootScaleProblem.lean/declarations/anonymous.md) | 80 | `declaration-track:99f1456d4418178009fc220a7ea51a15e85dc9b2e423d3ad6c291ffbd35d3eeb` |
| 5 | `theorem` | [packet_to_discrepancy_squareRoot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/PacketSquareRootScaleSquareRootScaleProblem.lean/declarations/packet-to-discrepancy-squareroot.md) | 84 | `result-track:87e1764c8d01c8d8b9538d77b053e0baa877f43549d9d1191d24e12f3f44cc19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd496fb9c8fc44bfd6795f97d01cee53825f16e444a62cfae8b0f9708478a502 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variantd0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PacketSquareRootScale/Variantd0270b03a277f4ab552ed42adf69ea0dde0cf703882dfd5efd3143fde4907749.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
