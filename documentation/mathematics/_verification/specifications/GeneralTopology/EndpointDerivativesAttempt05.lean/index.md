# Verification target: Endpoint Derivatives Attempt05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bf6ae97cc6cb8344f925ead6f65fa8ca6d09934",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant268319f61e4639fd5d57c4308e1d497cd84b131d08a9d02d63d7553ae09b8f89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/index.md) · [Full source](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bf6ae97cc6cb8344f925ead6f65fa8ca6d09934`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant268319f61e4639fd5d57c4308e1d497cd84b131d08a9d02d63d7553ae09b8f89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant268319f61e4639fd5d57c4308e1d497cd84b131d08a9d02d63d7553ae09b8f89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `EndpointExpansion` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointFirstPolynomial](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpointfirstpolynomial.md) | 18 | `declaration-track:7b4ceaedc7c90b291f369fc834330830a458882eb5113e40751626ea4676afad` |
| 2 | `def` | [endpointSecondPolynomial](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpointsecondpolynomial.md) | 47 | `declaration-track:fd8e6e457e7a4a5cf332acbcf9be89870ea6727483bc07f02e3b2770f62385cc` |
| 3 | `def` | [endpointFullSlope](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpointfullslope.md) | 76 | `declaration-track:082cae6557d2e0c84a34e7962a6517a2d148bd41cb70ed52c3e4347d27f98d36` |
| 4 | `def` | [endpointFullCurvature](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpointfullcurvature.md) | 79 | `declaration-track:0fa3fababcdff5f8568fba585ecf5d5b98abb5284907efcf0d19ebb80756b0b2` |
| 5 | `theorem` | [endpointFullPolynomial_contDiff](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpointfullpolynomial-contdiff.md) | 82 | `result-track:dffe43ec383f7ab8e491a347e91fe17306803e2680329d33940f02164e58cdea` |
| 6 | `theorem` | [endpointFirstPolynomial_contDiff](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpointfirstpolynomial-contdiff.md) | 86 | `result-track:2b71a34cc1539515c84b52ae87617a2b6cb7e4f320f0c574d8af749dcfe69c09` |
| 7 | `theorem` | [endpoint_full_deriv](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-full-deriv.md) | 90 | `result-track:68cafd648a545abe6e4e2f0d4e125f0dedb1967869864a72539fbd7d5bf9aa42` |
| 8 | `theorem` | [endpoint_first_deriv](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-first-deriv.md) | 96 | `result-track:ef991b21b45f75f2c11465341e32c4b6d2207785c40d68840f784e890c0a9a78` |
| 9 | `theorem` | [endpoint_full_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-full-hasderivat.md) | 102 | `result-track:264a99659ab1e29f78b3ba2d3f96d3acc99b3e385127736c2d9604f2b63f9aff` |
| 10 | `theorem` | [endpoint_first_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-first-hasderivat.md) | 107 | `result-track:cb523b3cd910e925b626272927dea6231674709bdb44bd05fa95429ef987afe9` |
| 11 | `theorem` | [endpoint_slope_zero](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-slope-zero.md) | 112 | `result-track:64d2869abd05146a68d1e84dcf7792e984dbe9959ad5caec8289c364df44f207` |
| 12 | `theorem` | [endpoint_curvature_zero](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-curvature-zero.md) | 116 | `result-track:f9117a34976b00b2019a63452b6ddfabb1215055ffcb900248c7b28dfd9b066a` |
| 13 | `theorem` | [endpoint_slope_continuous](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-slope-continuous.md) | 122 | `result-track:1389cb463fb8ac3be8fef900f7eb3a2759db0033d5f2a443c72795adfb862c5f` |
| 14 | `theorem` | [endpoint_curvature_continuous](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-curvature-continuous.md) | 126 | `result-track:b75a74cac2c9904cf0cf229c07efb83301dd3f3179e34c911771542d302ceeae` |
| 15 | `theorem` | [endpoint_slope_uniform_remainder](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-slope-uniform-remainder.md) | 132 | `result-track:0d85e40e21cea7626294c6ec4091f9e4da94a3f1fe91c436453ee3bec8bd674d` |
| 16 | `theorem` | [endpoint_curvature_uniform_remainder](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/endpoint-curvature-uniform-remainder.md) | 145 | `result-track:8b901c2f9985b78c56c152f4ff398676a501a842204fe738658566a03ca43d66` |
| 17 | `theorem` | [actual_endpoint_model_eventuallyEq](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/actual-endpoint-model-eventuallyeq.md) | 160 | `result-track:605e66551146c8116795a9b770863a2fa2eec717ffa097f5647373b0fe25e8f4` |
| 18 | `theorem` | [actual_endpoint_first_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/actual-endpoint-first-hasderivat.md) | 176 | `result-track:e34f982ee0f63816693a490d512d612456beba1154380c36497990698d2ddc0b` |
| 19 | `theorem` | [actual_endpoint_second_hasDerivAt](../../../../GeneralTopology/EndpointDerivativesAttempt05.lean/declarations/actual-endpoint-second-hasderivat.md) | 191 | `result-track:618ffd5b9713e243b63e6095fae52913b22a8262736fcf7094f48d3586225250` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff4196c3c7a01365e58fe8133a272f58b28e4fca5d5fd0b749ba962b77bbf835 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant268319f61e4639fd5d57c4308e1d497cd84b131d08a9d02d63d7553ae09b8f89.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/EndpointDerivativesAttempt05/Variant268319f61e4639fd5d57c4308e1d497cd84b131d08a9d02d63d7553ae09b8f89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
