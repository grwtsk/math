# Verification target: Volume Of Balls Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77c7d855709f769ed7cc2ec76a321485e4b794ee",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77c7d855709f769ed7cc2ec76a321485e4b794ee`.

Source path: `GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean.json)

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
| 1 | `theorem` | [MeasureTheory.measure_unitBall_eq_integral_div_gamma](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/measuretheory-measure-unitball-eq-integral-div-gamma.md) | 58 | `result-track:6f74e81899c06197cbfbde685432cf8643dd2781768c149c7e63ee551f0bc929` |
| 2 | `theorem` | [MeasureTheory.measure_lt_one_eq_integral_div_gamma](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/measuretheory-measure-lt-one-eq-integral-div-gamma.md) | 87 | `result-track:a214ea1911e08063607bf3d32529d9ed8b6f987932198ede1f07efd9a594488f` |
| 3 | `theorem` | [MeasureTheory.measure_le_eq_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/measuretheory-measure-le-eq-lt.md) | 121 | `result-track:04db0b4294929de19bac5ee9d4f181883c6820bb1a59725d1a6967ae8393b6ae` |
| 4 | `theorem` | [MeasureTheory.volume_sum_rpow_lt_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/measuretheory-volume-sum-rpow-lt-one.md) | 160 | `result-track:0b4edea83d3fb5889411cbaebea6505066ae6e68681a6f80bad2e890a35028bd` |
| 5 | `theorem` | [MeasureTheory.volume_sum_rpow_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/measuretheory-volume-sum-rpow-lt.md) | 192 | `result-track:5122b266dc30c92f50feb7e92728eda7cc5465a7ee3503f8774ba63b55ef8c99` |
| 6 | `theorem` | [MeasureTheory.volume_sum_rpow_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/measuretheory-volume-sum-rpow-le.md) | 212 | `result-track:524cc49f854ac3dedd8e3caf21041f19929cc22def69b9734ade884a8ca079c0` |
| 7 | `theorem` | [Complex.volume_sum_rpow_lt_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/complex-volume-sum-rpow-lt-one.md) | 233 | `result-track:2a76375566472377139c461ff0a38ffaa74a1879efbb625fd95688013ded704e` |
| 8 | `theorem` | [Complex.volume_sum_rpow_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/complex-volume-sum-rpow-lt.md) | 265 | `result-track:fb8211c69deccf6e4607c89a2100cc8c471a355aa08ab23d33cfddd30003ce3d` |
| 9 | `theorem` | [Complex.volume_sum_rpow_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/complex-volume-sum-rpow-le.md) | 287 | `result-track:472469f4b830ef9f3fe46b1e3ed42e947480e2cf3c3cd03eacb1ab8d49964aab` |
| 10 | `theorem` | [volume_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-ball-source-edition-2.md) | 315 | `result-track:9e752b0f36c9b3f2335f9c9828f14b339873049cefe2c939834b299d0f357478` |
| 11 | `theorem` | [volume_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-closedball-source-edition-2.md) | 332 | `result-track:c0a0a81616619f08041554def9a79d65e52465723a923401c1ab6570e2f44c78` |
| 12 | `theorem` | [volume_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-ball.md) | 351 | `result-track:61db8b0b4760e47c668ff8aa53a80bbae1ccbb85358b17d93d4d7ee4293fb2de` |
| 13 | `theorem` | [volume_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-closedball.md) | 362 | `result-track:088f357d17e34402a60b5ddc2d5987b0fd5bd607b83af908737cfacef4fc211d` |
| 14 | `lemma` | [volume_ball_of_dim_even](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-ball-of-dim-even.md) | 367 | `result-track:377069d8d19e23bd26c013cfc2132a6114fbb461adaf5a7988e65954098556ae` |
| 15 | `lemma` | [volume_closedBall_of_dim_even](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-closedball-of-dim-even.md) | 373 | `result-track:66db6fdb68d5dcb051dffd59ba97bcbd95f328401f58f20ca34a6abf06964470` |
| 16 | `lemma` | [volume_ball_of_dim_odd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-ball-of-dim-odd.md) | 379 | `result-track:7463f0c456611c31a92a5e3b93af7a9c12510604353dfa70391911a228523105` |
| 17 | `lemma` | [volume_closedBall_of_dim_odd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-closedball-of-dim-odd.md) | 389 | `result-track:fb2e64b496fa97fb0b60587eae575662aed40b3cb7831964c52abb54f70f3412` |
| 18 | `lemma` | [volume_ball_fin_two](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-ball-fin-two.md) | 402 | `result-track:6b848b9a106d47ee14b8b132f3f52e2f09a2137081b27999fab53a49002a301b` |
| 19 | `lemma` | [volume_closedBall_fin_two](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-closedball-fin-two.md) | 407 | `result-track:869aab024c2be1e2f53359d81699a0bd39174e8745bc247da23c7443d3514faf` |
| 20 | `lemma` | [volume_ball_fin_three](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-ball-fin-three.md) | 412 | `result-track:9483fcff905d70797dd142d3c62cbf004679969c4ae4dc98e69c31c9ab3852f2` |
| 21 | `lemma` | [volume_closedBall_fin_three](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/volume-closedball-fin-three.md) | 417 | `result-track:a9d654e79f55f66276daf9862d9fb1e86119f386612a814e4f084d2fc4d439ac` |
| 22 | `theorem` | [Complex.volume_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/complex-volume-ball.md) | 428 | `result-track:72e6f643a246b5865fe1ea7299a6769ee1ca956054a8f58420d38b9a74b974ac` |
| 23 | `theorem` | [Complex.volume_closedBall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VolumeOfBallsNamespacedPublic.lean/declarations/complex-volume-closedball.md) | 434 | `result-track:0bdbef8667dced7dd1f6b21dc7cc3ebd1b4c61789971e50d73c33b55676b439d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8952c70850c60d0bcabb8baef92e248dd1e69d19af26de75db54b028831bbaf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/VolumeOfBalls/Variantade94fb3d2d922da54b47fdc6ebe72d07c4917627480a2653aa76dbeeda6719f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
