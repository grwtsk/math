# Verification target: Transformation Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7218c2b5e93836d0c9b248bf00f45ad11e496f3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7218c2b5e93836d0c9b248bf00f45ad11e496f3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Evidence` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizationLevel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MaterializationRule](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/materializationrule.md) | 18 | `declaration-track:7e393b9863ae00c34ce886cab529316e544144836552983dc71609c7e94abf61` |
| 2 | `inductive` | [TransformationPreservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/transformationpreservation.md) | 28 | `declaration-track:d7a95f53a72e0b48f5b07c9889094aadd528be12fbcbe9846af7f027776f2bb6` |
| 3 | `structure` | [ArtifactIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/artifactidentity.md) | 35 | `declaration-track:b1243369c596603438501472f8f4fefcdbb0edd7bc1399b9b7064b004ce521da` |
| 4 | `structure` | [TransformationContract](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/transformationcontract.md) | 40 | `declaration-track:e9598147ed2888aac46a8a57e3526861c2b7d8dfbd2da0d69a0820083d4b5dea` |
| 5 | `structure` | [TraceableTransformation](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/traceabletransformation.md) | 54 | `declaration-track:1af051a0be6f9dd486cdfebe890b010d61afe5d4373200d4c1cc42116a743d90` |
| 6 | `theorem` | [TraceableTransformation.lossy_has_recovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/traceabletransformation-lossy-has-recovery.md) | 60 | `result-track:47746ec1a05c89956c5a36b0c2be92c75a678d6d04ca083b991b71c092eaa1a2` |
| 7 | `structure` | [InjectiveTransformation](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/injectivetransformation.md) | 70 | `declaration-track:38aef7219abdc53b77e7df4cb99f06806f0e177c89676aa272612a56cc278caf` |
| 8 | `theorem` | [InjectiveTransformation.preserves_distinctions](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/injectivetransformation-preserves-distinctions.md) | 79 | `result-track:ba8bdbf009d2c767f9cc25c6624a2d2950cfdfbd575b23198d930d9518b25cb8` |
| 9 | `inductive` | [QuantizationTransition](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/quantizationtransition.md) | 86 | `declaration-track:3c99326b3311813a339e9c237ed9b51a31b04fb7285ad322e8202b4ff8e6e6ea` |
| 10 | `def` | [QuantizationTransition.IsLossy](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/quantizationtransition-islossy.md) | 97 | `declaration-track:e1c67794864a52344bae1de90133b4d81b4a6948d18e616a3ecfb808ccac3b70` |
| 11 | `structure` | [QuantizationTransitionContract](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/quantizationtransitioncontract.md) | 109 | `declaration-track:72c45e6ea22150e17a7cc2d733ae672f3cb61f5c4d55ffe8a13d12fb6aad9220` |
| 12 | `theorem` | [preserve_bits_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/preserve-bits-eq.md) | 136 | `result-track:fea1ed96a34ca3472a8798ed91d40fe3346982db9cb33c452ac0f1d05162729e` |
| 13 | `theorem` | [refine_bits_le](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/refine-bits-le.md) | 144 | `result-track:10600adbd2a83d602152ed3201e60898fb69c7b7f6ffcd8a0732710db94d1d4a` |
| 14 | `theorem` | [coarsen_bits_le](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/coarsen-bits-le.md) | 152 | `result-track:07faaed7fba7441123c679911044f909cb1bdbf5970b8c9c5dcab3de4e23aa07` |
| 15 | `theorem` | [lossy_has_recovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition1.lean/declarations/lossy-has-recovery.md) | 160 | `result-track:ddce90588c3af53cf6888cd0fb072237fe276d1fa87190d5878ea83130eeabcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=910e0b21aa4bd133ceef902b70dc45487a754c9e408783437e8afd6a3e92517a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant4ffacceb42d6a114d6927b5e022a7113233c3b1fc6fc27ac5dd7b42321a61df3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
