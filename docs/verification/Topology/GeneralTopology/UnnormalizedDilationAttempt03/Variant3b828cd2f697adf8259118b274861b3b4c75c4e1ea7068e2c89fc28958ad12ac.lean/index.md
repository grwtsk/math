# Verification target: GRWTSK.Topology.GeneralTopology.UnnormalizedDilationAttempt03.Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e413926285646651a15a4be4c6be333e54ca86bc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e413926285646651a15a4be4c6be333e54ca86bc`.

Source path: `GRWTSK/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualComplexDilation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ClosedSubmodule` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unnormalizedFunc](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/unnormalizedfunc--e866075aaae928d8bf5409e0.md) | 13 | `declaration-track:e866075aaae928d8bf5409e08e45932340dcc1208f8617501cb8e523898c17bf` |
| 2 | `theorem` | [unnormalizedFunc_memLp](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/unnormalizedfunc-memlp--f87d936940651fea70db5152.md) | 15 | `result-track:f87d936940651fea70db5152a9ee1a7c69e3d2feeca221fda13bcf39cdccde97` |
| 3 | `def` | [unnormalized](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/unnormalized--c5ef2ca08bd034138e2227a5.md) | 22 | `declaration-track:c5ef2ca08bd034138e2227a57b0325c178b9b9e4dc221514dd23018b3bcab16a` |
| 4 | `theorem` | [unnormalized_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/unnormalized-ae--e938d32aba1533149a54e690.md) | 25 | `result-track:e938d32aba1533149a54e6904695feaf632b7546d841c55561a3581e0ce0f491` |
| 5 | `theorem` | [dilate_eq_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/dilate-eq-sqrt-smul--17ad375f29b07b949f4fb19c.md) | 29 | `result-track:17ad375f29b07b949f4fb19cb85a1935d05b45a2296b97ee71c551d260b1f483` |
| 6 | `theorem` | [unnormalized_eq_inv_sqrt_smul](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/unnormalized-eq-inv-sqrt-smul--65365428ea916a2d1525c590.md) | 38 | `result-track:65365428ea916a2d1525c590f9a3ea396e7410aa9fab23acbcfd6fc003981150` |
| 7 | `theorem` | [unnormalized_norm](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/unnormalized-norm--56fb068ed7d20853c89a753f.md) | 43 | `result-track:56fb068ed7d20853c89a753f7ab07c3d41ee8f398aa12723537d53000f250431` |
| 8 | `theorem` | [span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/span-range-eq--50b56c45e137a837deed5860.md) | 48 | `result-track:50b56c45e137a837deed5860694dadf9227ab85bf009c59fe7f1703fffe5bae3` |
| 9 | `theorem` | [closure_span_range_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/closure-span-range-eq--7ab3a26c22069f3ea69f6b75.md) | 63 | `result-track:7ab3a26c22069f3ea69f6b755c4bebcccf8d1686e9882910d44f46273a625081` |
| 10 | `def` | [actualIntegerOrbit](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/actualintegerorbit--c379bb80058fc39f56cfa11a.md) | 68 | `declaration-track:c379bb80058fc39f56cfa11a5b66a957a91a3b77c707477ec6e26262d7bf6fff` |
| 11 | `theorem` | [actualIntegerOrbit_ae](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/actualintegerorbit-ae--b95a6f1d8a914841848526fd.md) | 71 | `result-track:b95a6f1d8a914841848526fd56d736e7ccddf4d9d49c93f8b92ba69c7a0caa36` |
| 12 | `theorem` | [actual_integer_span_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/actual-integer-span-eq--74a19491c00d30207a08e9af.md) | 80 | `result-track:74a19491c00d30207a08e9af8e119c9ca63e6368760d0d12d9edf541d97c6427` |
| 13 | `theorem` | [actual_integer_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/actual-integer-closure-eq--9d9195f59548f8479b68d9b7.md) | 86 | `result-track:9d9195f59548f8479b68d9b762e838263df80a592f0d1110dd8effc001cc7b4a` |
| 14 | `theorem` | [actual_continuous_closure_eq](../../../../../mathematics/Topology/GeneralTopology/UnnormalizedDilationAttempt03/Variant3b828cd2f697adf8259118b274861b3b4c75c4e1ea7068e2c89fc28958ad12ac.lean/declarations/actual-continuous-closure-eq--554213a8aef4331ff099660e.md) | 91 | `result-track:554213a8aef4331ff099660e898d5f76afdcb32687e588ed382d3fb02da41476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
