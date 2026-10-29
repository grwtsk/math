# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOneBoundaryEstimates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63d37837b2c3798ea6a2a570d778d830d8d696bf",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63d37837b2c3798ea6a2a570d778d830d8d696bf`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.RiemannLebesgueLemma` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Fourier` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.PrimesInAP` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wienerPinnedQOneAux](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedqoneaux.md) | 63 | `declaration-track:6d3ef3beccab90a8f4c0ea8d01214f6c2b57f90073dd08392eb0a7e4421798e3` |
| 2 | `def` | [wienerPinnedLambdaComplex](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedlambdacomplex.md) | 70 | `declaration-track:f9674956691f246fea7129802cfde23ac7e4c9d98e3b62231614e367ea7bb20f` |
| 3 | `theorem` | [wienerPinnedQOne_residueClass_eq_lambda](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedqone-residueclass-eq-lambda.md) | 76 | `result-track:d3175cb6a78368503735b9f3e8b8bce40ad034f8e68e098beca0e5702f5be468` |
| 4 | `theorem` | [wienerPinnedQOne_residueLSeries_eq_lambda](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedqone-residuelseries-eq-lambda.md) | 85 | `result-track:4f66001fcd701fac77100c2bc63e8eb753543b336b0e868fa7742e794893b237` |
| 5 | `theorem` | [wienerPinnedLambdaComplex_summable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedlambdacomplex-summable.md) | 99 | `result-track:4a046d0ea435f37cbec58f3576f9a686cfbd5e91d7078c2708e50e27c566358d` |
| 6 | `theorem` | [wienerPinnedQOneAux_poleIdentity](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedqoneaux-poleidentity.md) | 108 | `result-track:da91a3c40b4256186c66b17f8d785be743dac0b57cc88c16cd44b1250e22e809` |
| 7 | `theorem` | [wienerPinnedQOneAux_continuousOn](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedqoneaux-continuouson.md) | 128 | `result-track:6dbe3bdd431a6a0242c27bae673572bb4341c2350f87fa23c4ffb060222b824b` |
| 8 | `theorem` | [wienerPinnedQOneAux_continuous_boundary](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedqoneaux-continuous-boundary.md) | 136 | `result-track:0917c2c565f61f03f9cb6ac047a893391dbc147a520de53c8f72ba8a4f75f824` |
| 9 | `theorem` | [wienerPinnedQOne_boundary_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedqone-boundary-integrable.md) | 145 | `result-track:69fcf9b49e1165e256fd8706754ef5f363380b3ef9dc6889f383c5e60d7f4508` |
| 10 | `theorem` | [wiener_real_cpow_oscillation_tends_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wiener-real-cpow-oscillation-tends-zero.md) | 162 | `result-track:4394e8e454d3bd29a18dac9c67002e442fd0de350cfd064868a9a55929d7b66d` |
| 11 | `theorem` | [wienerPinnedQOne_boundary_oscillation_vanishes](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedqone-boundary-oscillation-vanishes.md) | 213 | `result-track:6895f8afbbb6358e096e991069788fbf9f787e0a6eb9887499508bd82fe9f1b1` |
| 12 | `theorem` | [wienerSchwartzFourier_decay](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerschwartzfourier-decay.md) | 234 | `result-track:6ac5be62573f9996d55ec91a0eaed7d0a6d0eb85da507a280a9fe574f91f7d12` |
| 13 | `theorem` | [wienerSchwartzFourier_decay_two_pi](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerschwartzfourier-decay-two-pi.md) | 260 | `result-track:b7a3efd8b0d59d8d768f7d281bc9025ad22cd93834884aeb77de25995120b8be` |
| 14 | `theorem` | [wienerSchwartzFourier_scaled_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerschwartzfourier-scaled-integrable.md) | 273 | `result-track:cf1dfd3047df1c731a0b3e242ae8aaa7213e9034aa214879f984f4c8ae8770eb` |
| 15 | `theorem` | [wienerPinnedQOne_boundary_integral_from_right](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/WienerIkeharaQOneBoundaryEstimates.lean/declarations/wienerpinnedqone-boundary-integral-from-right.md) | 294 | `result-track:2f68a8b42dfb0f8f3ecdf62f07935029ed2508df7b8e62c1bf731abb5d207db3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b483e4abb9ee197d15612df3eda7eb3bf1a00fb0a8e4b4e484ed99031f9c268 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
