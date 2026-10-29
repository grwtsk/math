# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SequentialPackingRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3caaddb9cd6a5aab90fb6aaa3b3f8ba23cdc611",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SequentialPackingRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3caaddb9cd6a5aab90fb6aaa3b3f8ba23cdc611`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SequentialPackingRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SequentialPackingRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SequentialThreePointVolumePacking`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SequentialThreePointVolumePacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ThreePointPackingState](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/threepointpackingstate.md) | 27 | `declaration-track:227ea89bf8f7b651d8110d7e3c13c30faf0da714c6c1d3e84f373d8abb1c2408` |
| 2 | `def` | [packing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/packing.md) | 41 | `declaration-track:ac3c1ca5e15bfebf11b20e832c4792b5e66f4a821d9fb73c559528d8e9a542c0` |
| 3 | `def` | [value](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/value.md) | 48 | `declaration-track:aa966fca97e9d83b9ca0ad4f329888925d6fbaa728ed55da6c62904eff3e43e8` |
| 4 | `theorem` | [value_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/value-nonnegative.md) | 51 | `result-track:61a3e791c9e38d7eeb933ff8d3b29c466116ce163a99688151385b180f47848c` |
| 5 | `def` | [advance](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/advance.md) | 57 | `declaration-track:a6bed7512b13e5b33294158c9aa50f86687ae9382c456acd5aa0d9ed189d8527` |
| 6 | `theorem` | [advance_first](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/advance-first.md) | 74 | `result-track:919a87790e0d58288be144558bba18173c522352eacf6599c2a87e8524208a37` |
| 7 | `theorem` | [advance_second](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/advance-second.md) | 81 | `result-track:9f17f66eaf993752da6eb642b42cf81220de326a9601ac62f396d0d6132c06ea` |
| 8 | `theorem` | [advance_third](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/advance-third.md) | 88 | `result-track:25885c9e9b01fd0c0e60605ed5612d383110856a0de254abe2ff2fbef7adc775` |
| 9 | `theorem` | [advance_firstSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/advance-firstsource.md) | 95 | `result-track:f17e06f63d6a2974723933114e6f8760397871afcc77241aaeccd372208a31e8` |
| 10 | `theorem` | [advance_secondSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/advance-secondsource.md) | 102 | `result-track:0e92f7039caca66dd6e12364eb08789f16fde2e1875b22b692c26e29b13ac170` |
| 11 | `theorem` | [advance_thirdSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/advance-thirdsource.md) | 109 | `result-track:0b3c87b69fe12d3f7804beb56c28529f08cbef478c5f5cb4b4319246c544f39d` |
| 12 | `theorem` | [advance_value_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/advance-value-nonnegative.md) | 116 | `result-track:a2b7013b8df42fb7b4c46ed8465e666294813f9a6d3de0f6ccafa5e28e81d126` |
| 13 | `def` | [stateAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/stateat.md) | 127 | `declaration-track:dcc3edf7518f056435f49af21ae12211ebc9e1dceb118184cc89d2e6615c314a` |
| 14 | `theorem` | [stateAt_value](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/stateat-value.md) | 140 | `result-track:1a63b75b43c9ae7508f8fd2e430b9f9cb5fb1480b46c9df275b6d2d12147332b` |
| 15 | `theorem` | [stateAt_succ_first](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/stateat-succ-first.md) | 147 | `result-track:1ba3d5f6b207a9541f9922b1843f11d619715ade02f65c806424b8ec90291d3d` |
| 16 | `theorem` | [stateAt_succ_second](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/stateat-succ-second.md) | 154 | `result-track:c587052e463f8bcf5927fa4fbfa8d2ba3f547499c7c3290e5a0297a4b8393bea` |
| 17 | `theorem` | [stateAt_succ_third](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/stateat-succ-third.md) | 160 | `result-track:29abda8990d6783cc5e836a5c78b6f60c06a69d7c3c28052700884643cbe44c4` |
| 18 | `theorem` | [stateAt_succ_thirdSource](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/stateat-succ-thirdsource.md) | 166 | `result-track:134b02d9a26d88fec1cc9f72cd471415f088e4a762271df00a11c04dadd27113` |
| 19 | `theorem` | [nonnegative_target_of_sequential_packing_limit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/nonnegative-target-of-sequential-packing-limit.md) | 176 | `result-track:78eaa3e2673fa9528f840479516e56cdf8ca91a688ff5229ad470b4f248da608` |
| 20 | `theorem` | [witnessTrace_nonnegative_of_sequential_packing_limit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SequentialPackingRecurrence.lean/declarations/witnesstrace-nonnegative-of-sequential-packing-limit.md) | 196 | `result-track:834d3c0b7d3d7528a3968c252abf784f14a7e6c265d132bb319e9bb1c7f6667b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d90f847498b5800ea716ceb7cb0a4ee0db0d496df17c18bf9c4bb6b246756346 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/SequentialPackingRecurrence.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/SequentialPackingRecurrence.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
