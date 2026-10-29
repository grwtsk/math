# Verification target: Normalized Rate Gate Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fcbc2ff78884ebcda748b05ad299de02f5eeb2b1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant3cd3f02ee17622973fef6c799d07f8ff6228330c1de26570cdc574c0ab996eea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fcbc2ff78884ebcda748b05ad299de02f5eeb2b1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant3cd3f02ee17622973fef6c799d07f8ff6228330c1de26570cdc574c0ab996eea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant3cd3f02ee17622973fef6c799d07f8ff6228330c1de26570cdc574c0ab996eea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Exp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalization](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/normalization.md) | 33 | `declaration-track:3b08beda78c495bb28879cd6dca6d564a7826fc82f86bc4383432cf9103454b2` |
| 2 | `def` | [modelShell](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/modelshell.md) | 36 | `declaration-track:41a58055fc0f3969f82361a03080f8794e3c1f13555c036ca25de10f8489c3a0` |
| 3 | `def` | [modelComplement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/modelcomplement.md) | 39 | `declaration-track:934ec97810cc553b3044a5f02a4f01ecb381ebf646a9852ce6a5445e69f3d089` |
| 4 | `def` | [modelResidual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/modelresidual.md) | 42 | `declaration-track:bd9a0fad9fdee99d6dfbe2e0c2bdc0f53dd0194971c449b676b815718f425a4c` |
| 5 | `def` | [balancedComplement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/balancedcomplement.md) | 45 | `declaration-track:9a195f0bc122df2085b0109ac586341c8691e537cc08fa11f887003b861e2cc9` |
| 6 | `theorem` | [normalization_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/normalization-pos.md) | 47 | `result-track:302e2bdb27c505fe93a1210d793f6051a2ede91425870b5fbd6f5967e2c76ccb` |
| 7 | `theorem` | [normalized_cap_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/normalized-cap-iff.md) | 53 | `result-track:2e121c00da27e7adb51ef8736755b5abfdbb76fd91212ac96aa99347b0e1c715` |
| 8 | `theorem` | [modelResidual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/modelresidual-eq.md) | 60 | `result-track:6f0921dbae90f58aee4b64a44e509be5adcff9c72736cb1dc557f6c925304db8` |
| 9 | `theorem` | [normalized_modelResidual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/normalized-modelresidual-eq.md) | 67 | `result-track:9a3ed59e9b23615e6a8e6d8088c3af0bd1abee9706e8acbd1b2746e0f58651c0` |
| 10 | `theorem` | [balanced_residual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/balanced-residual-eq.md) | 74 | `result-track:a1f86eacd5757d1e8ed0b562c6f0c140c346464fa0c8ff023c07156dd43d3dd6` |
| 11 | `theorem` | [normalized_balanced_residual_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/normalized-balanced-residual-eq.md) | 79 | `result-track:8e6f7d8e731cbe01335fcddac4cef5263e86f9f6d802956ccb790ae5dbc6ddaa` |
| 12 | `theorem` | [normalization_exp_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/normalization-exp-eq.md) | 84 | `result-track:090171d43acb84a0c49766285c02b3d928bd4199e203348b1e104d8e3c99828a` |
| 13 | `theorem` | [normalized_modelResidual_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/normalized-modelresidual-tendsto-zero.md) | 90 | `result-track:a0191ce0c0bbf4025ec06d32c7f43d421b256cbb594513a97ab58ecc62b3fc6f` |
| 14 | `theorem` | [exp_div_tenth_power_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/exp-div-tenth-power-lower.md) | 100 | `result-track:a8a7119d3ce19f3634e1a87fd898b668e62dd17149a6942e46383eaa64acf969` |
| 15 | `theorem` | [modelResidual_exceeds_any_cap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/modelresidual-exceeds-any-cap.md) | 110 | `result-track:e7016ff9c1b3dcfe8b98fbfe2dc83128f71962b7a7006795c9f1b86c17057780` |
| 16 | `theorem` | [modelResidual_has_no_eventual_upper_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NormalizedRateGateAlternative.lean/declarations/modelresidual-has-no-eventual-upper-bound.md) | 127 | `result-track:4f2f9bfd7f2504efcb24a9cfb47bf845fda821e7525beb28debe052b210ae9af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a72a982f83d850e33fd3a7c8575adfb64a2328d503bb58f6c1f05f309129331 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant3cd3f02ee17622973fef6c799d07f8ff6228330c1de26570cdc574c0ab996eea.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5e67a357908ed26d10099d324670bf23a31cab6aa0420a1cbcc9419e20678572NormalizedRateGa/Variant3cd3f02ee17622973fef6c799d07f8ff6228330c1de26570cdc574c0ab996eea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
