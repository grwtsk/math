# Verification target: Attempt04 Square Time Density

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb7c6034d72b811524bdbd41450167b40484b038",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Varianta3e41ff8beda1751db016c2f488e96c0b8c3238a6174dc3ac101f783081dd7e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb7c6034d72b811524bdbd41450167b40484b038`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Varianta3e41ff8beda1751db016c2f488e96c0b8c3238a6174dc3ac101f783081dd7e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Varianta3e41ff8beda1751db016c2f488e96c0b8c3238a6174dc3ac101f783081dd7e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceProperPowerMertens` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.WeightedPrimeAbel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [squareTimeDensity](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squaretimedensity.md) | 17 | `declaration-track:c56974b05246fa566fce56468b0c941d301a2edc13046c138fb73da920cdc0b6` |
| 2 | `def` | [squareAnchoredPrimitive](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squareanchoredprimitive.md) | 20 | `declaration-track:92c6a6951c5df889bf888db15dba23e5fa26f4e04f477dbfdc9a7ae9764933fc` |
| 3 | `def` | [squarePrimitiveReadout](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squareprimitivereadout.md) | 23 | `declaration-track:f277bac259a02822b383073035d0d277534ce4f96200d7661510503cd24d1a79` |
| 4 | `def` | [squareZeroDrift](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squarezerodrift.md) | 27 | `declaration-track:d7089410dbe1360f7b6f48fc9b08a0f38a8cb3fd925d0b6d7d7a6c589ec2f609` |
| 5 | `theorem` | [theta_exp_eq_steps](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/theta-exp-eq-steps.md) | 30 | `result-track:c7b902f00dafc191cbaad1d0a3f58bd74f7919176546e95fd893f13a37c2fe7d` |
| 6 | `theorem` | [primitive_antiderivative](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/primitive-antiderivative.md) | 42 | `result-track:13ca89bfce47e6ab963a90f40b319b97459bffc3903206da83e26824031597f7` |
| 7 | `theorem` | [density_eq_steps](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/density-eq-steps.md) | 48 | `result-track:6ee332b3cf01109ddb9f3bd156b6a2bce36d6e21d9205c3e6ef5119e072e5b48` |
| 8 | `theorem` | [squareTimeDensity_intervalIntegrable](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squaretimedensity-intervalintegrable.md) | 57 | `result-track:e88196e83c864a532f0ef51e70691a1d86ff6cc2546934b7e6124f950a5cc8d2` |
| 9 | `theorem` | [square_prefix_integral_eq_readout](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/square-prefix-integral-eq-readout.md) | 71 | `result-track:cb6d961636ae2061773c450c3c5a74f6286fafa774b3bc05e885df82ebae45f5` |
| 10 | `theorem` | [squareAnchoredPrimitive_eq_readout](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squareanchoredprimitive-eq-readout.md) | 107 | `result-track:983c9faabde0c601d95ba1c53b7065e39c61213e49199c78ca408852ff6e928e` |
| 11 | `theorem` | [squareAnchoredPrimitive_at_lower](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squareanchoredprimitive-at-lower.md) | 120 | `result-track:2d99a5d9e11b104c8ea51afa40b91f79ebf256186065c5b5cb9a09abd3747adb` |
| 12 | `theorem` | [squarePrimitiveReadout_at_log_seven](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squareprimitivereadout-at-log-seven.md) | 125 | `result-track:b60371a73e21769deb762aa70c03039dcf47d91809a162708de08397ca732db8` |
| 13 | `theorem` | [squareZeroDrift_eq_actual_error](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squarezerodrift-eq-actual-error.md) | 145 | `result-track:1d92175ce03cd8863f3e8b13c77a88911554b3b5a6026c3505b3f2ceef32cf98` |
| 14 | `theorem` | [squareZeroDrift_uniform_bound](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squarezerodrift-uniform-bound.md) | 155 | `result-track:15aa3762a59480eb03a1e40a14ec730d02c433b42811b84e16d8722133c5b3bd` |
| 15 | `theorem` | [squareZeroDrift_eq_explicit_error](../../../../MeasureAndIntegration/Attempt04SquareTimeDensity.lean/declarations/squarezerodrift-eq-explicit-error.md) | 195 | `result-track:8aa2a862fafc4196d824b514d99b98f73bde2708eb7fa1b7eadb4fb826cdc3b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acac32ecc1c4cb2d172f572b5e476e31095bf9b8d225b78899cacb958c2ea207 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Varianta3e41ff8beda1751db016c2f488e96c0b8c3238a6174dc3ac101f783081dd7e1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt04/Varianta3e41ff8beda1751db016c2f488e96c0b8c3238a6174dc3ac101f783081dd7e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
