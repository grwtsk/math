# Verification target: Transformation Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62320e905fc5ba24e4dc10051fc91ee3505a360e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant845e2d3896c3cc93d93f3248b30e534d4ac4efb6ce0555b25d3f1cdfb75e34c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62320e905fc5ba24e4dc10051fc91ee3505a360e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant845e2d3896c3cc93d93f3248b30e534d4ac4efb6ce0555b25d3f1cdfb75e34c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant845e2d3896c3cc93d93f3248b30e534d4ac4efb6ce0555b25d3f1cdfb75e34c7.lean.json)

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
| 1 | `inductive` | [MaterializationRule](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/materializationrule.md) | 16 | `declaration-track:15f25ba97913602e891a2e7565cab71fa3d99ac078c3eca76a764af1b997ed69` |
| 2 | `inductive` | [TransformationPreservation](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/transformationpreservation.md) | 26 | `declaration-track:cb5e651df00842f6531d6a49ac97d42ff4cc03a92e273a7ae7fea782a704658d` |
| 3 | `structure` | [ArtifactIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/artifactidentity.md) | 33 | `declaration-track:4fd1404ad7175d784702bbbf2a0a0ee75e5d925e47cd908688b243460a95e9fd` |
| 4 | `structure` | [TransformationContract](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/transformationcontract.md) | 38 | `declaration-track:17ed1614c6c113271fc45cc7b06404bdddcea8f1c6d5b444c43c03dc7eecd974` |
| 5 | `structure` | [TraceableTransformation](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/traceabletransformation.md) | 52 | `declaration-track:8fcefe6e601b33ed858e9eaf990785200b5e442719cd12ffbb10b9b5104b2c9c` |
| 6 | `theorem` | [TraceableTransformation.lossy_has_recovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/traceabletransformation-lossy-has-recovery.md) | 58 | `result-track:5120531187cdb40e2e5ee5f5e324a7b0c2f630cd363435d32964aec84bcb8548` |
| 7 | `structure` | [InjectiveTransformation](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/injectivetransformation.md) | 68 | `declaration-track:5160e6c389ddac1d192d5a7168bbaf2c007ebb613d1f0ecbef62d18a4712ba68` |
| 8 | `theorem` | [InjectiveTransformation.preserves_distinctions](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/injectivetransformation-preserves-distinctions.md) | 77 | `result-track:ca36dfd0b20dcabf05f8330435e906b9137505d31adc0f71fef6523f2eee3156` |
| 9 | `inductive` | [QuantizationTransition](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/quantizationtransition.md) | 84 | `declaration-track:079fe6dd5de6c296000895f887c97da5adae2306de3d4fbfe4eb541c973e633e` |
| 10 | `def` | [QuantizationTransition.IsLossy](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/quantizationtransition-islossy.md) | 95 | `declaration-track:e89a232b5b6cb56e1ec3300f6616a73b881ca060df5d69dc9173db4f3baacd50` |
| 11 | `structure` | [QuantizationTransitionContract](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/quantizationtransitioncontract.md) | 107 | `declaration-track:19a6c71f329e4325b70155cd1a6ac5197df03c8da76d2ff8cc43f02734b52ba8` |
| 12 | `theorem` | [preserve_bits_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/preserve-bits-eq.md) | 134 | `result-track:5b879215e8a771de2e8969d61f4ba655251212d6955e081605b0a628c86a55a1` |
| 13 | `theorem` | [refine_bits_le](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/refine-bits-le.md) | 142 | `result-track:02963edd394ec265193d18d76b6be35d24f88c2132ecbc2a5d4c40d7370678f2` |
| 14 | `theorem` | [coarsen_bits_le](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/coarsen-bits-le.md) | 150 | `result-track:c2a2f709f80b9fa1ea09a0250026a430879aa5145192fff7b064add6c2066979` |
| 15 | `theorem` | [lossy_has_recovery](../../../../../ComputerScience/AlgorithmsInComputerScience/TransformationEdition2.lean/declarations/lossy-has-recovery.md) | 158 | `result-track:b0bb693160a8293b479660305a41aa1c8e074920c24750758465ea28b162f2fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00befdbbccd07cd0881108af11cc8afdc990d368fa6106716a13ab095ff92fc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant845e2d3896c3cc93d93f3248b30e534d4ac4efb6ce0555b25d3f1cdfb75e34c7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Transformation/Variant845e2d3896c3cc93d93f3248b30e534d4ac4efb6ce0555b25d3f1cdfb75e34c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
