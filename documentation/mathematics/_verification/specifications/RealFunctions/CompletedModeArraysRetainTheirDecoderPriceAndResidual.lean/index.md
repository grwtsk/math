# Verification target: Completed Mode Arrays Retain Their Decoder Price And Residual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce9edc7077f0237b5987f808ff120ec6af461d0e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/index.md) · [Full source](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce9edc7077f0237b5987f808ff120ec6af461d0e`.

Source path: `GRWTSK/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [decoderPrice](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/declarations/decoderprice.md) | 21 | `declaration-track:aedf7b0f5ac1bc1243bbca7ac64892b6414d96c78dd074269d664d4a80586efa` |
| 2 | `theorem` | [price_nonnegative](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/declarations/price-nonnegative.md) | 23 | `result-track:4da954cabcba664393610d7e23d6a8d9459adb6abd6b7eb182fac721a317edfb` |
| 3 | `theorem` | [completed_norm_bound](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/declarations/completed-norm-bound.md) | 26 | `result-track:cae385c63c671ba791dbc99e42ae9cf04e1bd49cc921e1bf02090dd7f3ef0fc4` |
| 4 | `theorem` | [inverse_price_bound](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/declarations/inverse-price-bound.md) | 39 | `result-track:bdf74ae19dbb10a674643c770e2df869ef7ec727efc207fcaa7d1fecaba6c15e` |
| 5 | `theorem` | [residual_norm_bound](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/declarations/residual-norm-bound.md) | 46 | `result-track:a55969253db862042384700812d1ca79964fdcf67abe14f34d9279ab0489fab4` |
| 6 | `theorem` | [residual_positive_part](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/declarations/residual-positive-part.md) | 54 | `result-track:f7a4ba7a825ee24b8db0637b62dd7ccaac59b5e542c5ff0bb12a898729a629ad` |
| 7 | `theorem` | [cardinality_price](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/declarations/cardinality-price.md) | 61 | `result-track:982a6d052bf7d370c157c18ca382d2f4af52fd0fbbbea22e7ee8c5b46cef8db2` |
| 8 | `theorem` | [scalar_decoder_preserves_polarity](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/declarations/scalar-decoder-preserves-polarity.md) | 68 | `result-track:15f725219f343740611fe706d02574bcd75cf9c407f9a01dca495560cca4ac26` |
| 9 | `theorem` | [signed_decoder_can_reverse_polarity](../../../../RealFunctions/CompletedModeArraysRetainTheirDecoderPriceAndResidual.lean/declarations/signed-decoder-can-reverse-polarity.md) | 74 | `result-track:caf74867f223766e35ead8402978c527dbf6eb6886ce91bdad6f911fc912ff5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce0f0afce5e4181f8dea6c9cf201abf79477b92e6de18ae9c7b12f2fd1cbb9f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean","GRWTSK/_verification/specifications/Analysis/BranchCompleteArrayDecoder/Variant310455c32c9955c6887a52835f0aeb9076f9bbadd8490947c7886c4a89a28ac0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
