# Verification target: Source Logarithmic Tail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37b488abc557994755ad6487f27e1e41985cccb1",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/index.md) · [Full source](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37b488abc557994755ad6487f27e1e41985cccb1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogarithmicTail` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logarithmicConstant](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/logarithmicconstant.md) | 23 | `declaration-track:6e685a758e6720eb77d2d03c0243efeb53b6b94ab4d83e761fc9721d24367911` |
| 2 | `theorem` | [logarithmicConstant_pos](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/logarithmicconstant-pos.md) | 25 | `result-track:2eaf3bc4f1ba85b0507f04d473a19975289917e3daba0bcdc4764dcb7aa8e432` |
| 3 | `theorem` | [normalized_sixth_majorant](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/normalized-sixth-majorant.md) | 33 | `result-track:456eb9e6a1a396563672c720c38d484a49dcb572f371faa2f1f21fe84ac682db` |
| 4 | `theorem` | [actual_norm_square_tail_bound](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/actual-norm-square-tail-bound.md) | 54 | `result-track:b09c71466eb8a023d4864db93d00656ac08a12a7ad5e2ade88974daca4564676` |
| 5 | `theorem` | [actual_tail_error_bound](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/actual-tail-error-bound.md) | 74 | `result-track:85533887377306073f99d3e2da6740d064275f583f03c589c01d161bd22bd6f7` |
| 6 | `theorem` | [actual_im_square_tail_bound](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/actual-im-square-tail-bound.md) | 82 | `result-track:708a4d4a551bb184114636e1cc494816c849b123c65264aa4c02be34526bd00a` |
| 7 | `def` | [fifthHeight](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/fifthheight.md) | 100 | `declaration-track:c151cb838215e03ee3e614c3b9c98842d85ba3db674012b57736a0e01f0867a8` |
| 8 | `def` | [baseRadius](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/baseradius.md) | 102 | `declaration-track:2532a78343c742a9b200e0b2d0349cb3ad15e99bba18a6a595ee801cdfe0e63f` |
| 9 | `theorem` | [fifthHeight_admissible](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/fifthheight-admissible.md) | 104 | `result-track:28a13f57d8c1789b366404fdfc7b8574da86e058fe4a4c341cc8300cad17b18e` |
| 10 | `theorem` | [fifthHeight_budget](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/fifthheight-budget.md) | 114 | `result-track:dc33cf8a3a9606e83069647a1cf4e9e8ae4787589abe5376faa7f1531299e7d4` |
| 11 | `theorem` | [fifthHeight_error_bound](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/fifthheight-error-bound.md) | 128 | `result-track:a58ee3e09d8dc3f63ca4e74711cab6abece4074e283d5bebd0fbcd0e4eeeec12` |
| 12 | `theorem` | [fifthHeight_uniform](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/fifthheight-uniform.md) | 137 | `result-track:418b9a51d180f7c7441e7c34f837eb3f2cc89d018af3fc4f89d1f925dd472e85` |
| 13 | `theorem` | [fifthHeight_tendsto_zero](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/fifthheight-tendsto-zero.md) | 146 | `result-track:f64e35752fc134ea0c51daa914889fc56e47e549490f94feee15b80bac15e499` |
| 14 | `theorem` | [fifthHeight_sup_bound](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/fifthheight-sup-bound.md) | 154 | `result-track:bf782c62ae630465f20ab5c8f43fc4ea5bead748dd3fe08954c9fa16fefc415a` |
| 15 | `theorem` | [coordinate_squares_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/coordinate-squares-summable.md) | 164 | `result-track:9c99b2929228ff96e41fdf4a30c0f23fc0fae5077fb769ada604c187469d192d` |
| 16 | `theorem` | [signed_square_tsum](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/signed-square-tsum.md) | 175 | `result-track:2c1b3957a5bdf9e0f249c29206bcd28ec81bf13b64de342b907bcebf3acf8a88` |
| 17 | `def` | [realSquareMass](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/realsquaremass.md) | 186 | `declaration-track:1e525583ccb90849653bc6a24111cdbd4211b0c40e34fa22cd939cca104d86b0` |
| 18 | `def` | [imaginarySquareMass](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/imaginarysquaremass.md) | 190 | `declaration-track:89fbe08bcaf80826c176cc26d44fe9a31270ca12cc6ef8165710617c51f828c1` |
| 19 | `def` | [signedFull](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/signedfull.md) | 193 | `declaration-track:1b84ab9e41352f456029faef465c9ce417968e59744a5b4a46965c6fb597e3bc` |
| 20 | `def` | [signedHead](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/signedhead.md) | 196 | `declaration-track:9494b648369b69e5f733875c1cc04931f3805b0cd040220cdcacbd83dd6df3d7` |
| 21 | `theorem` | [coordinate_masses_summable](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/coordinate-masses-summable.md) | 200 | `result-track:62a7832c4181dfa9c05a1d69e125062f1f7dc1e73c09c73bd8be8ce277eca03b` |
| 22 | `theorem` | [signedFull_eq_negative_re](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/signedfull-eq-negative-re.md) | 205 | `result-track:8ca4daddeded5679313bc527d63a173c7dc858b6d20280e6ac7fc2e4cb78d6dd` |
| 23 | `theorem` | [signedHead_eq_negative_re](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/signedhead-eq-negative-re.md) | 212 | `result-track:2752421e5bed1f241d946786b23d5b5dda979028a7e98bd3a4514b972efcdead` |
| 24 | `theorem` | [signed_partition](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/signed-partition.md) | 218 | `result-track:ad48d095e2bf2aad31b3ea1bb00b648a305f293e384b75e3997d72eb6e01e4db` |
| 25 | `theorem` | [signed_truncation_error](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/signed-truncation-error.md) | 224 | `result-track:0252a650ac46c244fafdb46fdadf6db8787b6ce6abd9bc948890593225ceed1f` |
| 26 | `theorem` | [fifthHeight_signed_error](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/fifthheight-signed-error.md) | 230 | `result-track:529540293d9f384332ae506760d314a5b4b432b2422dcc63684a8a4fd81a8261` |
| 27 | `theorem` | [head_upper_transfers](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/head-upper-transfers.md) | 236 | `result-track:cc037c19d23758e5240189c14bb24dcfeff02b564568af67f3a21682b7a4df43` |
| 28 | `theorem` | [full_upper_transfers](../../../../../SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/SourceLogarithmicTail.lean/declarations/full-upper-transfers.md) | 247 | `result-track:15aae8a1a067605f338787b947616d68a9f78c1bc440255e5ae43cc8428f5607` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e1516d1b5d489f92007d3c2b160f9d3c1792b25299908aec02f32690446e86b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variant21567d53e75708402a42b260e5f2aaccaf2a2f7565c256b76d7fb75c421feed8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
