# Verification target: Volume Of Balls Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a493c3415795ad564128f94e8f4f8f6686df773a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a493c3415795ad564128f94e8f4f8f6686df773a`.

Source path: `GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/VolumeOfBalls/Variant4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MeasureTheory.measure_unitBall_eq_integral_div_gamma](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/measuretheory-measure-unitball-eq-integral-div-gamma.md) | 50 | `result-track:4b9cc92fde27ef2b84ba2ce9e3fc6fc789748d5607f82c64742b0d22dae51931` |
| 2 | `theorem` | [MeasureTheory.measure_lt_one_eq_integral_div_gamma](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/measuretheory-measure-lt-one-eq-integral-div-gamma.md) | 79 | `result-track:db87b32955af565e5b1b9043720f18c4bfdab49b5147f999ab799701a0993a63` |
| 3 | `theorem` | [MeasureTheory.measure_le_eq_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/measuretheory-measure-le-eq-lt.md) | 113 | `result-track:53a554b3701ef2c7c0ff696a37680536ff14ee9019bd9178a8454a9f18517e0d` |
| 4 | `theorem` | [MeasureTheory.volume_sum_rpow_lt_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/measuretheory-volume-sum-rpow-lt-one.md) | 152 | `result-track:ef4a44eb4cd9961392ed2ab0428c64315dcadb6baf453ffcd35987a4e0267346` |
| 5 | `theorem` | [MeasureTheory.volume_sum_rpow_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/measuretheory-volume-sum-rpow-lt.md) | 184 | `result-track:5420c289e3f3a1764f971526e54fbc637cf83877a9f21b6ff3c89e61292e38af` |
| 6 | `theorem` | [MeasureTheory.volume_sum_rpow_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/measuretheory-volume-sum-rpow-le.md) | 204 | `result-track:2b0936534e652830ea7126ab170c9090ff53cbf69731b63ce88090eb4e210400` |
| 7 | `theorem` | [Complex.volume_sum_rpow_lt_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/complex-volume-sum-rpow-lt-one.md) | 225 | `result-track:1d35fdcb4161dd47177f7bf6af72fb747df01d177939bbb3bba763a856e00537` |
| 8 | `theorem` | [Complex.volume_sum_rpow_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/complex-volume-sum-rpow-lt.md) | 257 | `result-track:664c8169e72385a5e9fbe4e429c67b802ca4b30c57779ffd78caf761aee31e43` |
| 9 | `theorem` | [Complex.volume_sum_rpow_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/complex-volume-sum-rpow-le.md) | 279 | `result-track:ae0af702d2a4ac199bbe2233bf8e92fe77d94ce8f61746de75685c98029fc464` |
| 10 | `theorem` | [volume_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-ball.md) | 307 | `result-track:6cd3383670e0c9c589fd2d616bf872597c863a3fe45be38f70018ef4cead64ea` |
| 11 | `theorem` | [volume_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-closedball.md) | 324 | `result-track:6d2fc08713d74dc5385d3cbb774ee5a161e2624e0bea3803af71e045c22847e5` |
| 12 | `theorem` | [volume_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-ball-source-edition-2.md) | 343 | `result-track:c029a76c05449655d210ea8d728a815a3fef7ff98955c35d7e76735bfc95ce23` |
| 13 | `theorem` | [volume_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-closedball-source-edition-2.md) | 354 | `result-track:a6ff7cf2d8643229c54161ce62e444c2b90c4000e55a0c71bc5309deac648ea1` |
| 14 | `lemma` | [volume_ball_of_dim_even](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-ball-of-dim-even.md) | 359 | `result-track:6f8f702d590dff4c4a1f583491c9a68e915a4cbdbed26de16ed0c1c9f2f3ed1c` |
| 15 | `lemma` | [volume_closedBall_of_dim_even](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-closedball-of-dim-even.md) | 365 | `result-track:ae14f024846f85bd63fb794db50ea1f7db586b2be27759a6b69c87743e753115` |
| 16 | `lemma` | [volume_ball_of_dim_odd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-ball-of-dim-odd.md) | 371 | `result-track:25688775e4a03cadf5ca836c3e5abcb9462bf81818123c3768bb762e1260752a` |
| 17 | `lemma` | [volume_closedBall_of_dim_odd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-closedball-of-dim-odd.md) | 381 | `result-track:9c6d3e4d4fa683b90550775f5eb9ebc3655f8e06a6f85842aa8d751f12b9cac7` |
| 18 | `lemma` | [volume_ball_fin_two](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-ball-fin-two.md) | 394 | `result-track:1c48144eda9358735935cf82c2a8ec414159bd419566bf83091a2e2183065de5` |
| 19 | `lemma` | [volume_closedBall_fin_two](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-closedball-fin-two.md) | 399 | `result-track:cb7482be023861983bd54fc9ae158356f439e35711396125d14e140d01085571` |
| 20 | `lemma` | [volume_ball_fin_three](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-ball-fin-three.md) | 404 | `result-track:26a05af1ecd9699e52c91cce384c8de57698a1994a1ddf576072032f38300944` |
| 21 | `lemma` | [volume_closedBall_fin_three](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/volume-closedball-fin-three.md) | 409 | `result-track:3067426d6bb2b5ab7cf60ef87fa6cc35441d128b74cf31357637803ef10a5865` |
| 22 | `theorem` | [Complex.volume_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/complex-volume-ball.md) | 420 | `result-track:f0ec2abf3eca482a72fbe5c445bbd9dc52be00d769f88913fca375512a6d0d75` |
| 23 | `theorem` | [Complex.volume_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsPublic.lean/declarations/complex-volume-closedball.md) | 426 | `result-track:265077222170f968a960f9ae0ed87269ae7f9cdb744b60812051432c6fe9751b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=354a1e1710808eac2b8e83a9d5ad42be31416e555e9ecf846ca1ae67146c6b82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variant4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/VolumeOfBalls/Variant4ae9926cf06adaf017f6a651c9a3ba5f1361b67f65896252b7fd1f6d9a4a1c82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
