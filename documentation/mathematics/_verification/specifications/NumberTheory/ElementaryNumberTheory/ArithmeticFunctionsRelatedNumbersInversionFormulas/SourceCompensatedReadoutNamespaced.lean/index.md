# Verification target: Source Compensated Readout Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1cee82869ea56016b4c758675c952f44b784234",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1cee82869ea56016b4c758675c952f44b784234`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.CompensatedReadout` — import line 6; external provider; requires a separately pinned dependency.
- `SourceReflectionArithmetic` — import line 7; external provider; requires a separately pinned dependency.
- `SourceCutoffFlux` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arithmeticState](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/arithmeticstate.md) | 39 | `declaration-track:e2970d17c446ec6916525e271c6706bbef3b6aefb161514631da7c619e4b587f` |
| 2 | `def` | [arithmeticCompensation](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/arithmeticcompensation.md) | 43 | `declaration-track:3945ebf72e5c70aac2e69c5aa968bd5583773f24ed0d225e3e7f32b1676987d2` |
| 3 | `def` | [arithmeticReadout](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/arithmeticreadout.md) | 47 | `declaration-track:fc73da9e113d2f3c154a199697c3740d4eeadce72828975567347e49e4d9d992` |
| 4 | `theorem` | [arithmeticReadout_eq_joint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/arithmeticreadout-eq-joint.md) | 51 | `result-track:082e261ceab95bfcbf4f4e23b069b62f1cf78719845754ff32bb6fe85c04e745` |
| 5 | `def` | [mangoldtAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/mangoldtat.md) | 60 | `declaration-track:2c8484b97c5449e9038d510d2676f70adf337c27e5cf55be09a440de6f1d65cf` |
| 6 | `def` | [reflectedMobiusAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/reflectedmobiusat.md) | 65 | `declaration-track:1e0978453d7444609e51e57b72cd8db53c1414dbc9027e63d7b03f39f8ebe6a9` |
| 7 | `def` | [stateAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/stateat.md) | 70 | `declaration-track:6caf53b19726bd251c6b4445be519d79cba239da4348ecb3f63c32f3c04f2643` |
| 8 | `def` | [compensationAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/compensationat.md) | 74 | `declaration-track:3bb779b135a23cadecf44da0882e6135b168dc812faaab07ab2b78a8e567e434` |
| 9 | `def` | [readoutAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/readoutat.md) | 78 | `declaration-track:6da12f4b3069a9a46a2b785faf650bfe0ed59a0f8483adafdd078f295cdc392a` |
| 10 | `theorem` | [pairingAt_eq_rectangle](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/pairingat-eq-rectangle.md) | 82 | `result-track:3793a6c95d96941ba401097807e53aa3742db922489f313888f7dac0442b78e5` |
| 11 | `theorem` | [readoutAt_eq_jointAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/readoutat-eq-jointat.md) | 106 | `result-track:2b931b5d94cf0f20752c02a8e50d8b1a35ed546da948ab53c12a7b988e0ddb39` |
| 12 | `theorem` | [stateAt_actual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/stateat-actual.md) | 114 | `result-track:87791bf6139a7b6cb02fe9821e74aa95831194d500869d918d0a21436efac339` |
| 13 | `theorem` | [compensationAt_actual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/compensationat-actual.md) | 119 | `result-track:bea9b86957ea1e47e1904ecbbcaf8fddb6a62385ed2231da1a2278d9a1cda2af` |
| 14 | `theorem` | [readoutAt_actual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/readoutat-actual.md) | 126 | `result-track:f7e53981f64df7bd014f64c19fed508c0b2fcc018c869d8717e47e92addb71d6` |
| 15 | `def` | [cutoffJump](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/cutoffjump.md) | 133 | `declaration-track:d898186e7d37cd9f9ac89629564159a368342da0b898abef9678d2bddeea5a4f` |
| 16 | `theorem` | [cutoffJump_reconstruction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/cutoffjump-reconstruction.md) | 137 | `result-track:969d6f5ac27b05da6f54908aea6d9876f7148d8e9e21fc5e3f5c435823096705` |
| 17 | `theorem` | [readoutAt_adjacent_jump](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/readoutat-adjacent-jump.md) | 144 | `result-track:6342cb0ffd150d31e8196d8c9da2a45abfeda99e18c38476be7facfefcf60fa7` |
| 18 | `theorem` | [adjacent_jump_eq_sourceFlux](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/adjacent-jump-eq-sourceflux.md) | 159 | `result-track:2427c3e6be3c8733359b09329800ac1777bed8fb07fd87dd153411a40e6de5ae` |
| 19 | `theorem` | [readoutAt_upper_succ](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/readoutat-upper-succ.md) | 167 | `result-track:f8c2d52e5a5cd92cbb4d745aea0c22a6f5343d4ab4f089e7d8074c83c5965061` |
| 20 | `theorem` | [source_atom_norm_sq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/source-atom-norm-sq.md) | 174 | `result-track:472ebbbda3594edf846ae4ebccdd2473189d0a3aad292cab21c90ecb56d6c5f5` |
| 21 | `def` | [ArithmeticReadoutTailUpperBound](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/arithmeticreadouttailupperbound.md) | 180 | `declaration-track:03930639d20c8d5f0e62bfb1d5eda9eb712f1171530ac9c94d8cc09a6dfd691d` |
| 22 | `theorem` | [arithmeticReadout_tail_iff_joint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/arithmeticreadout-tail-iff-joint.md) | 185 | `result-track:d7d7bbc3d28b8f73e7533622e38d30a8da508569e5cfa6358dc3e0f92f4380fc` |
| 23 | `theorem` | [arithmeticReadout_tail_iff_residual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/arithmeticreadout-tail-iff-residual.md) | 200 | `result-track:0eef3e258277586025c77866594d59d9e01c35a42aacda2b73577e63a00fa5ce` |
| 24 | `theorem` | [estimate_of_arithmeticReadout_tail](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCompensatedReadoutNamespaced.lean/declarations/estimate-of-arithmeticreadout-tail.md) | 205 | `result-track:4eb06a78919d569b48d0898f07198fc5febe8154fc747a2b8de90cc85e323b65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a122de734b4c0f2f8fef3f7496fe04d6b25854a87ca1b27929d06a66ffae7b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/03SourceCompensatedReadout/Variantee2c73ad73dd14be7849d158fbd654509d41a21fe63b4d924ab14d3d923de110.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
