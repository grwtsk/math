# Verification target: GRWTSK.Topology.GeneralTopology.UnnormalizedDilationAttempt02.Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac5b659c1351c14ebe77a90b31d81dc137dbc016",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac5b659c1351c14ebe77a90b31d81dc137dbc016`.

Source path: `GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ClosedSubmodule` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unnormalizedFunc](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/unnormalizedfunc--4d7d74266b000074ec1000ea.md) | 21 | `declaration-track:4d7d74266b000074ec1000eaf5c76eba63865280b5a7611bf5454f5eb09739fd` |
| 2 | `theorem` | [unnormalizedFunc_memLp](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/unnormalizedfunc-memlp--6ff5691a8e07215c060771fe.md) | 23 | `result-track:6ff5691a8e07215c060771feb64977a5aee5e64f78b9d814b181e130b2035125` |
| 3 | `def` | [unnormalized](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/unnormalized--f070b94785111129d7a40d43.md) | 30 | `declaration-track:f070b94785111129d7a40d43fb79275fcd6a89811fe787e7f8704b2f1781bc02` |
| 4 | `theorem` | [unnormalized_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/unnormalized-ae--22cdd5514f031ce787d21744.md) | 33 | `result-track:22cdd5514f031ce787d21744bd9fc131f7c2e7a1ee8f96e7185cce95134f5865` |
| 5 | `theorem` | [dilate_eq_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/dilate-eq-sqrt-smul--373922ad3a65c9260f53ab83.md) | 37 | `result-track:373922ad3a65c9260f53ab83c8d7487b2dfe1c2defe3d9300c7ac02ebffbbde1` |
| 6 | `theorem` | [unnormalized_eq_inv_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/unnormalized-eq-inv-sqrt-smul--fe8f934799a6f29f04fb0db1.md) | 46 | `result-track:fe8f934799a6f29f04fb0db151fe0990bb6ea2ed0d0187e95dc9769e5011c13e` |
| 7 | `theorem` | [unnormalized_norm](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/unnormalized-norm--610f4d9a1f494d5c42cc8237.md) | 51 | `result-track:610f4d9a1f494d5c42cc8237c72e8d0aa294196fe095d5129a277dee694a25d1` |
| 8 | `theorem` | [span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/span-range-eq--ea74eef4057f3b493c489069.md) | 56 | `result-track:ea74eef4057f3b493c489069dd8a05f26bfa8a1196ab644c744a95bed89c6748` |
| 9 | `theorem` | [closure_span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/closure-span-range-eq--6bbda6c7bf05186a6a5b0cc0.md) | 71 | `result-track:6bbda6c7bf05186a6a5b0cc08f9798d242d53468f5cf83960a0b5356e7616e55` |
| 10 | `def` | [actualIntegerOrbit](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/actualintegerorbit--33b1b3cc51c40c7cf0e93d3c.md) | 76 | `declaration-track:33b1b3cc51c40c7cf0e93d3ccfecfa6e4dbe82bcba7df9b5f8e8d7087f73bd98` |
| 11 | `theorem` | [actualIntegerOrbit_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/actualintegerorbit-ae--0ac2ee2323d5af6397df150d.md) | 79 | `result-track:0ac2ee2323d5af6397df150dba4fa5e45c26d88874ef93a3957c13c989c1c140` |
| 12 | `theorem` | [actual_integer_span_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/actual-integer-span-eq--7075269c0704084dee8aedbf.md) | 88 | `result-track:7075269c0704084dee8aedbf37c4e55b8cdee624a4f4e9b65a78362d1cf4fa9e` |
| 13 | `theorem` | [actual_integer_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/actual-integer-closure-eq--0e914bbb8d621f955cb34bd6.md) | 94 | `result-track:0e914bbb8d621f955cb34bd637a27e2d2b14acf43591750e12e8e7d5991df3db` |
| 14 | `theorem` | [actual_continuous_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt02/Variant1c0d1bc034fad94dc6255ae9e9713fde5ad751e1ad446109f028654652e90de1.lean/declarations/actual-continuous-closure-eq--6ae2a62fd34a66a91733db59.md) | 99 | `result-track:6ae2a62fd34a66a91733db5939572d195a4e3c6d3511eb6e2281cee0cadf7e29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
