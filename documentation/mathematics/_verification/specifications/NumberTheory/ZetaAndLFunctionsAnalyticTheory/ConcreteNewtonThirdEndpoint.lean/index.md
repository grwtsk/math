# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdEndpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a3818f53b1c462159861a0589c9175bbbb6a76a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a3818f53b1c462159861a0589c9175bbbb6a76a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdSeed`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdSeed.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondEndpoint`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondEndpoint.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thirdTrace](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/thirdtrace.md) | 27 | `declaration-track:df67302f6fc2ba17795418ea6d5238d1c348ff8922f07627d27034eb89fc130f` |
| 2 | `def` | [thirdOutput](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/thirdoutput.md) | 39 | `declaration-track:6287ba715ad51fa523db095a988f30f282853376c0abd181bb9f512c6e013fb3` |
| 3 | `theorem` | [third_steps_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/third-steps-valid.md) | 44 | `result-track:e3a9afa3f380d2578a857d8eb05d674de131b079dd099818585d17b111d3173c` |
| 4 | `theorem` | [third_trace_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/third-trace-valid.md) | 50 | `result-track:3cdce364ef3d6ddd0552d53a7946efbdab2c4f4e0863afc24db5d3ad2c4105ca` |
| 5 | `theorem` | [third_output_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/third-output-identity.md) | 55 | `result-track:79a2d59aa833f43d8f0b5f41d61b05f67b77550717c3ba1b9f920647a5944eaf` |
| 6 | `theorem` | [third_endpoint_compute](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/third-endpoint-compute.md) | 60 | `result-track:75e1ad59c94323c998d89fbf58470c2751aec0e90989c9cb7aa1ce4f4aadf188` |
| 7 | `theorem` | [third_trace_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/third-trace-check.md) | 65 | `result-track:8856465bf67649d3a0e0c650cf75911f0e0f7e26ee14725904bfe28f64fffec1` |
| 8 | `theorem` | [third_power_enclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/third-power-enclosure.md) | 72 | `result-track:855cc3dbeb908dfcdf3b00a8cb2f71a069b6a692b226f01595b62d0bd04f29b7` |
| 9 | `def` | [firstThree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/firstthree.md) | 80 | `declaration-track:f56cf9895d78447a81b82f299b67f7d446cf12a6b09cbd554d6dd48f8a14f11d` |
| 10 | `theorem` | [third_prefix_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/third-prefix-check.md) | 83 | `result-track:ea7cd66afd292fd64e1133cee05fe3d072a93b4312b045c4e1776320b033d5ec` |
| 11 | `theorem` | [first_three_prefix_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/first-three-prefix-check.md) | 95 | `result-track:6c18765f827ca67357dc4f4dc227b8e575597e35669a6bf3e66581d3b552ee51` |
| 12 | `theorem` | [first_block_of_remainder](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonThirdEndpoint.lean/declarations/first-block-of-remainder.md) | 110 | `result-track:748c36e1f9ce0bb44de0453e69554fcaf18fcafc2c63ca58f93a22744b2105eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd533df914758eb2506714de9751f139d03c3a3a32399f1931622f01d8f68363 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
