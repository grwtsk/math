# Verification target: Canvas Projection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78cf206dea53a6576d16e09c6bc55eb2dd00f94d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CanvasProjection/Variant3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78cf206dea53a6576d16e09c6bc55eb2dd00f94d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CanvasProjection/Variant3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CanvasProjection/Variant3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Presentation.SpectralFaceProjection` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CanvasResidueRole](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/declarations/canvasresiduerole.md) | 15 | `declaration-track:73a8e9d0806799fdf03a730d9c6124184e206aea96e9622c7c4fa2ba6029eef1` |
| 2 | `structure` | [CanvasCell](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/declarations/canvascell.md) | 24 | `declaration-track:30a6d6dd274b224dfd34e3c88bdcf236fa081b86eac47eb570c441661b276957` |
| 3 | `structure` | [CanvasCursor](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/declarations/canvascursor.md) | 34 | `declaration-track:aafbe939f0dcc737d420cc18654d158bf71527f365dd72ab92bb24ff794e17f7` |
| 4 | `structure` | [CanvasPatternFeature](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/declarations/canvaspatternfeature.md) | 42 | `declaration-track:58898104e18cf514b59b104ed280d4c2bb013ac92334c14284ef82c4e8a0a583` |
| 5 | `structure` | [CanvasTheoremCandidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/declarations/canvastheoremcandidate.md) | 51 | `declaration-track:91b1876b22dd6abead831b8e1285483be4120215a2ef83da581830b59b2dff20` |
| 6 | `structure` | [CanvasProjectionStream](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/declarations/canvasprojectionstream.md) | 61 | `declaration-track:ca48e56d7d99564f0c0c420dc3eb21c6c7df6281f6e1a197a68d2cdd73fc2aac` |
| 7 | `theorem` | [canvas_projection_stream_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/declarations/canvas-projection-stream-sound.md) | 81 | `result-track:03d86253bada169e503426cb13fe085866f9339b2fa0a7e533ddd3497349e52c` |
| 8 | `theorem` | [canvas_theorem_candidate_firewall](../../../../../ComputerScience/AlgorithmsInComputerScience/CanvasProjection.lean/declarations/canvas-theorem-candidate-firewall.md) | 95 | `result-track:d0ede07a21b86c0a42e6715b37fa5b89690d640578fe7d4e1b586e237f21a5af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=994d3d4d3cb8c2d5209e22ca2654cf5b8a6095d6928560bbc8c1b8ca871101d1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CanvasProjection/Variant3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CanvasProjection/Variant3d8c50acf82aaec2c80245d0c1e8b23358f4fc18770e3eb06ac1c65e21145140.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
