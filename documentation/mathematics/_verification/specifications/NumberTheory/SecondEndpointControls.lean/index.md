# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.SecondEndpointControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89a561698eb98578445743d7d64623419e673e2a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/SecondEndpointControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SecondEndpointControls.lean/index.md) · [Full source](../../../../NumberTheory/SecondEndpointControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89a561698eb98578445743d7d64623419e673e2a`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/SecondEndpointControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/SecondEndpointControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonSecondEndpoint`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ConcreteNewtonSecondEndpoint.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonzero_log_data](../../../../NumberTheory/SecondEndpointControls.lean/declarations/nonzero-log-data.md) | 17 | `result-track:4f1e3ecfaa7344e3e54184a8d000b6eaa5446711b42bfbc71f9aa0f077ca022b` |
| 2 | `theorem` | [both_argument_components_negative](../../../../NumberTheory/SecondEndpointControls.lean/declarations/both-argument-components-negative.md) | 20 | `result-track:ed13ec0fe19428bcb11812bb5250f832f70d48326131c50991be3b274b1bbb35` |
| 3 | `theorem` | [initial_error_not_base_one](../../../../NumberTheory/SecondEndpointControls.lean/declarations/initial-error-not-base-one.md) | 24 | `result-track:588ea2c7130c68a79814e10461f905d664d30b7bd7cc1eb3d96c73ce6ce5ca42` |
| 4 | `theorem` | [initial_error_two_rejected](../../../../NumberTheory/SecondEndpointControls.lean/declarations/initial-error-two-rejected.md) | 28 | `result-track:94b1676811a0cb1a2c22d549ddd3792217f7706ac7bbc8f75d9a0625d5801426` |
| 5 | `theorem` | [intermediate_real_mutation_rejected](../../../../NumberTheory/SecondEndpointControls.lean/declarations/intermediate-real-mutation-rejected.md) | 37 | `result-track:5e2f76a542a79a5abf46184ed834940249d87e5c4930b68c4504f498c5c0b748` |
| 6 | `theorem` | [intermediate_imag_mutation_rejected](../../../../NumberTheory/SecondEndpointControls.lean/declarations/intermediate-imag-mutation-rejected.md) | 43 | `result-track:c05c3eb43c9578a0880b32d9961fd500592907c14ee5566de4c43cfdfcaeaa25` |
| 7 | `theorem` | [intermediate_error_mutation_rejected](../../../../NumberTheory/SecondEndpointControls.lean/declarations/intermediate-error-mutation-rejected.md) | 49 | `result-track:a696a5787512e01b705d28effc648331cceb238dd196270cd33bee6f0c340955` |
| 8 | `theorem` | [output_error_retained](../../../../NumberTheory/SecondEndpointControls.lean/declarations/output-error-retained.md) | 55 | `result-track:aa296a81b6b7c606a4152a593a7a790b86e7bdfdaae523771f8f4b5834e16ac2` |
| 9 | `theorem` | [base_one_cannot_replace_base_two](../../../../NumberTheory/SecondEndpointControls.lean/declarations/base-one-cannot-replace-base-two.md) | 59 | `result-track:b4774962f1b6821012ceda7b2714e60cb4f2fe47d6327709e949f9b965a1e711` |
| 10 | `theorem` | [smaller_output_error_rejected](../../../../NumberTheory/SecondEndpointControls.lean/declarations/smaller-output-error-rejected.md) | 65 | `result-track:b67ed89269550a0103f371f5299ac0110ba7e5139f3d24a82270b98fef79ad6e` |
| 11 | `theorem` | [third_endpoint_remains](../../../../NumberTheory/SecondEndpointControls.lean/declarations/third-endpoint-remains.md) | 80 | `result-track:176df973b0a0b34ae24b807757d19a8163345ad79628ea48c0a5f3454a316354` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=69b839878cb88d32dcf8c6618aebc58738c98f2cde913d0b672dbb836f30a6e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/SecondEndpointControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/SecondEndpointControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
