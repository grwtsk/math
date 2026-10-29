# Verification target: GRWTSK.NumberTheory.Farey.FiniteHeatCompressionBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92fee09daeb035062dc277a935be0e59f5127db7",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/FiniteHeatCompressionBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/index.md) · [Full source](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92fee09daeb035062dc277a935be0e59f5127db7`.

Source path: `GRWTSK/NumberTheory/Farey/FiniteHeatCompressionBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/FiniteHeatCompressionBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic`](../../../../NumberTheory/HeatFlowCompressionSofic.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.Geometry.Hodge.FiniteHeatRecovery`](../../../../Geometry/FiniteHeatRecovery.lean/index.md) — import line 13; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.FiniteHeatNewmanNormalization`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FiniteHeatNewmanNormalization.lean/index.md) — import line 14; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExactProcessRecovery](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/exactprocessrecovery.md) | 51 | `declaration-track:79708748a00473f839464bc642aa593b19d2ef1517b9c26cde350592813961a8` |
| 2 | `theorem` | [injective_of_exactProcessRecovery](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/injective-of-exactprocessrecovery.md) | 56 | `result-track:bc3895079471a9f0f30a737e05a9c4698ecc48f689d82393f24be870aadfbe35` |
| 3 | `theorem` | [factorsThrough_of_exactProcessRecovery](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/factorsthrough-of-exactprocessrecovery.md) | 71 | `result-track:d6ce4afa6aa12c65ffe697ac5f85cc197c87dc679a53cf5456788c1225ef6500` |
| 4 | `def` | [AdmitsLosslessBinaryCode](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/admitslosslessbinarycode.md) | 85 | `declaration-track:3eabf1527a0904041c3181ae3469969d517bbe03a92e2dc970f1ff5fed1c58d1` |
| 5 | `theorem` | [huffmanLikeCover_iff_admitsLosslessBinaryCode](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/huffmanlikecover-iff-admitslosslessbinarycode.md) | 91 | `result-track:b100443bde7e36fff32ca2d1ec0af488f83934387aa282f38401450e036f0bcf` |
| 6 | `theorem` | [diagonalHeat_exactProcessRecovery](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/diagonalheat-exactprocessrecovery.md) | 105 | `result-track:95a4b793cb7db86d0a49b41e411009fa83e715cb4220806e53b79c177cf88a65` |
| 7 | `theorem` | [diagonalHeat_readout_bound](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/diagonalheat-readout-bound.md) | 114 | `result-track:e862fcecd50534caae1104d1ab3f3cb4950a2ebe4961b08260a6c0b21fb2c950` |
| 8 | `theorem` | [diagonalHeat_huffmanLikeCover_iff](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/diagonalheat-huffmanlikecover-iff.md) | 128 | `result-track:3b582cab2e424b9105fa39b855c3b4334787c00ef6ddb5622f984d94a8c4f24b` |
| 9 | `theorem` | [newmanFiniteCoefficients_exactProcessRecovery](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/newmanfinitecoefficients-exactprocessrecovery.md) | 140 | `result-track:6b5955a756195eafc712076f067bb49b77323087cbac2e6412b12ac199440ae6` |
| 10 | `theorem` | [newmanFiniteCoefficients_readout_bound](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/newmanfinitecoefficients-readout-bound.md) | 152 | `result-track:6d0e09b2bd7cb6e05280e4242dc97d12ad8dcff8704c3a81e805161082d88ae1` |
| 11 | `theorem` | [newmanFiniteCoefficients_huffmanLikeCover_iff](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/newmanfinitecoefficients-huffmanlikecover-iff.md) | 165 | `result-track:5fcfcc984eef63cd2bd21773d358b3b835d7d16d6a7f25efef0ba00685536a94` |
| 12 | `theorem` | [diagonalHeat_not_soficThrough_of_state_collision](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/diagonalheat-not-soficthrough-of-state-collision.md) | 175 | `result-track:256538f70aab2f7aac73e097aff0d3100ca8034b4146941fd8ad11e48f1a9a3b` |
| 13 | `theorem` | [newmanFiniteCoefficients_not_soficThrough_of_state_collision](../../../../NumberTheory/FiniteHeatCompressionBridge.lean/declarations/newmanfinitecoefficients-not-soficthrough-of-state-collision.md) | 190 | `result-track:45be6cf904297be0e155fdc62053dc3df7a49b50b3badd0f9eeb82568d0f96ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=628fc7bc84ac1b89a98dec56ec76d0b69a4ecbf450022bf4a6ddd54abf6926d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Farey/FiniteHeatCompressionBridge.lean","GRWTSK/_verification/specifications/NumberTheory/Farey/FiniteHeatCompressionBridge.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
