# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierSobolevBarrier

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f4581fef29809b79b26aa1a0c916080d304d4fa",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f4581fef29809b79b26aa1a0c916080d304d4fa`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaFourierMaximalBarrier`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierMaximalBarrier.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyCoordinateCriterion`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicPrimeOnlyCoordinateCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeOnlySobolevShellWeight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/primeonlysobolevshellweight.md) | 55 | `declaration-track:f677ec7e46b9d00e1f76a94d054b4eda0a411be201887e4cd3b61981b94f75d3` |
| 2 | `def` | [greenPrimeOnlySobolevHead](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/greenprimeonlysobolevhead.md) | 60 | `declaration-track:62112b2324da3ede54b679a3fbf24ea8589e3fc3480c94169bf1aa0419274799` |
| 3 | `def` | [AllDyadicPrimeOnlySobolevBoundAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/alldyadicprimeonlysobolevboundat.md) | 68 | `declaration-track:ac5dabb03a454e2b8b9c659f96af601da4990797c9a30a7c20bf1ad830105550` |
| 4 | `def` | [SobolevSupremumThreshold](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/sobolevsupremumthreshold.md) | 80 | `declaration-track:5bc3c62d2a159adc9f47de56b41b7b14fc96421e7f0884edf106f59112b3cab1` |
| 5 | `def` | [jumpModelWeightedSquareExponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/jumpmodelweightedsquareexponent.md) | 85 | `declaration-track:0e59b84a83aabacb833efbedabc50a1a562ffdbc3b7e3d34d95858c4b867f358` |
| 6 | `theorem` | [jumpModelWeightedSquareSummableExponent_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/jumpmodelweightedsquaresummableexponent-iff.md) | 89 | `result-track:54aabd7499b47da5eda5e2cecbba56f4bcaa50afd4351aa5771049142c8879a8` |
| 7 | `theorem` | [no_sobolevExponent_aboveHalf_and_jumpModelBelowHalf](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/no-sobolevexponent-abovehalf-and-jumpmodelbelowhalf.md) | 98 | `result-track:dca598feba7a066d94d09c074fdc7b047b1c020268f7772d13e7c0fbc231f30e` |
| 8 | `def` | [PrimeSobolevMaximalReadoutAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/primesobolevmaximalreadoutat.md) | 112 | `declaration-track:54e32f9288eae0a04eddea3cc84ebe75d28b4cc08c2313846f9388703e6493ea` |
| 9 | `theorem` | [primeSobolevMaximalReadout_to_recurrence](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/primesobolevmaximalreadout-to-recurrence.md) | 118 | `result-track:c10ab014641d05a7ea06ee1683c72406b1f65baaf44b436f44148001ac5ee787` |
| 10 | `theorem` | [naiveSobolevJumpRoute_has_no_exponent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaFourierSobolevBarrier.lean/declarations/naivesobolevjumproute-has-no-exponent.md) | 129 | `result-track:58813ab53e024cd77a6bd387576649d23da4f5102979745eff8b1c1aee2651ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41c2f4fbfda1c183ba9f616d96453c9cda0ff5dbfa162c17cb79d5dd999c409d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticThetaFourierSobolevBarrier.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
