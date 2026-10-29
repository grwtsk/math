# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.Checks.PrimeExponentScaleControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a41d52193a3cd3a21d93dd6cf43640e6e3650d5a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/Checks/PrimeExponentScaleControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PrimeExponentScaleControls.lean/index.md) · [Full source](../../../../GeneralTopology/PrimeExponentScaleControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a41d52193a3cd3a21d93dd6cf43640e6e3650d5a`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/Checks/PrimeExponentScaleControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/Checks/PrimeExponentScaleControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScaleTopology`](../../../../GeneralTopology/PrimeExponentScaleTopology.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeFive](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/primefive.md) | 25 | `declaration-track:8b45b2b47e768338bf9816835861d1c7b4c0b5c2eb97b0ad7aca73d5b59f330a` |
| 2 | `def` | [twelveFifthsExponent](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/twelvefifthsexponent.md) | 29 | `declaration-track:2ab4e919c3d7b9a37a8af878e46cdf56002647e7753a76d66ab5e731dc666619` |
| 3 | `theorem` | [twelveFifthsExponent_two](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/twelvefifthsexponent-two.md) | 34 | `result-track:dc603baa9cab7073f0b379aba1199fcb488c9e09704d3d6050d467a4b3a3f9f8` |
| 4 | `theorem` | [twelveFifthsExponent_three](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/twelvefifthsexponent-three.md) | 38 | `result-track:aec20c3891e1d491a7697e30ede6947cb45b146628721b73fac33c6ee1216678` |
| 5 | `theorem` | [twelveFifthsExponent_five](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/twelvefifthsexponent-five.md) | 42 | `result-track:932e0103e54add58fcfa5709532576d00c4ea63b5c2d0b53e145257a742093c1` |
| 6 | `theorem` | [twelveFifths_rationalRealization](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/twelvefifths-rationalrealization.md) | 46 | `result-track:a34032f843fa215f23ac8ce3eae5abeafcecea1606e9f31304f07004fa1317cf` |
| 7 | `theorem` | [twelveFifths_projector_reconstruction](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/twelvefifths-projector-reconstruction.md) | 54 | `result-track:d022991d7b2482a2726cc5a03a2710e30bd14199f66d57362c1921e514ec17ae` |
| 8 | `theorem` | [two_after_three_projector_zero](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/two-after-three-projector-zero.md) | 61 | `result-track:6653a46217bb99c16dd00f585ccbc953c216ebd05cbee0bea679663a1d4ed415` |
| 9 | `theorem` | [nearOne_two_coordinate_four](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/nearone-two-coordinate-four.md) | 69 | `result-track:8f0a206b20ee9ab31e1992b824971772d84050b98e01b072504f492d1a5e9ed7` |
| 10 | `theorem` | [two_coordinate_not_continuous](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/two-coordinate-not-continuous.md) | 74 | `result-track:9c88465beeea8ba2d5ff04431efd302573238c85fe0f97719672653832c07b14` |
| 11 | `theorem` | [scalar_extension_kernel_control](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/scalar-extension-kernel-control.md) | 79 | `result-track:2a8ce51d37ad37647127a52fccf1e4071be4fcc8101d768c5de5ec23f0a13bde` |
| 12 | `def` | [varyingWitnessChannel](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/varyingwitnesschannel.md) | 86 | `declaration-track:16745f26efb0c8729fe7bdb7a4607244ded097e75725df183fd29351343f6791` |
| 13 | `theorem` | [varyingWitnessChannel_has_varying_size](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/varyingwitnesschannel-has-varying-size.md) | 95 | `result-track:f1b9324f5e814ac35800176f787701f9f881a5ad4938b47eb93305a16a38856c` |
| 14 | `theorem` | [triangle_phase_card](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/triangle-phase-card.md) | 103 | `result-track:6e7932a05fb233160412c318c91c5885fe7bcde3ee0b6ddbfad905a5c8aa7630` |
| 15 | `theorem` | [triangle_phase_not_equiv_fin_four](../../../../GeneralTopology/PrimeExponentScaleControls.lean/declarations/triangle-phase-not-equiv-fin-four.md) | 109 | `result-track:2d4f2035a50256c6ee4f5c4bc4776b2147bf79774f1bfd6896385fad0d75fb3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5bc5baa8929399069e2075c5f9de2d6b1cf70bf6a7e16fbcd2dc4d5d5e21381 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ArithmeticFunctions/Checks/PrimeExponentScaleControls.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimeExponentScaleControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
