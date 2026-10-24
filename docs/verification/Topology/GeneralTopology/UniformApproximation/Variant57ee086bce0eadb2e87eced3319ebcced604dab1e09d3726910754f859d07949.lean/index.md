# Verification target: GRWTSK.Topology.GeneralTopology.UniformApproximation.Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffe4857f13944738ecb809c042bb2cb6b3f49cb9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffe4857f13944738ecb809c042bb2cb6b3f49cb9`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.LocallyUniformConvergence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuousWithinAt_of_locally_uniform_approx_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/continuouswithinat-of-locally-uniform-approx-of-continuouswithinat--3968432b1fd1a6934dfe1c90.md) | 46 | `result-track:3968432b1fd1a6934dfe1c9031b53fa287aef29aaf5393e7b07fdf57ff760902` |
| 2 | `theorem` | [continuousAt_of_locally_uniform_approx_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/continuousat-of-locally-uniform-approx-of-continuousat--2531575f46af53cb77fa0a1a.md) | 64 | `result-track:2531575f46af53cb77fa0a1a32106820fa31c5fc8eefc9e9aa992864079182eb` |
| 3 | `theorem` | [continuousOn_of_locally_uniform_approx_of_continuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/continuouson-of-locally-uniform-approx-of-continuouswithinat--43d367fbc7ee069adb78e69f.md) | 73 | `result-track:43d367fbc7ee069adb78e69f53b1abe4ac34ed45a448230998d91e9a65292e3f` |
| 4 | `theorem` | [continuousOn_of_uniform_approx_of_continuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/continuouson-of-uniform-approx-of-continuouson--b542ff4a6bd8c8101f0c975f.md) | 81 | `result-track:b542ff4a6bd8c8101f0c975f3e296ce0058889e5fd72a8cff0e2c99a214f0cb4` |
| 5 | `theorem` | [continuous_of_locally_uniform_approx_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/continuous-of-locally-uniform-approx-of-continuousat--e071db054921c265d1a84c1f.md) | 87 | `result-track:e071db054921c265d1a84c1ff77601b496cba17a94dc199533d45b5f82749dc1` |
| 6 | `theorem` | [continuous_of_uniform_approx_of_continuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/continuous-of-uniform-approx-of-continuous--96a794b5489df06f6e740312.md) | 94 | `result-track:96a794b5489df06f6e740312ca423136c502a8accada14d4ccd8539d2950b4f5` |
| 7 | `theorem` | [TendstoLocallyUniformlyOn.continuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendstolocallyuniformlyon-continuouson--1bff782b52966c4fcf6ad943.md) | 110 | `result-track:1bff782b52966c4fcf6ad9434e8c0e09b34ada8d57a8677c46a2f35915b19653` |
| 8 | `theorem` | [TendstoUniformlyOn.continuousOn](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendstouniformlyon-continuouson--910954241b782112d7d51e7a.md) | 119 | `result-track:910954241b782112d7d51e7aa2f840f6eb89d0ac38a66b8be7be72ccd736e8ab` |
| 9 | `theorem` | [TendstoLocallyUniformly.continuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendstolocallyuniformly-continuous--1a0a752e510164ddb6c2a163.md) | 124 | `result-track:1a0a752e510164ddb6c2a163cd667fd96472cac5c0c486d4e163d87aa7681029` |
| 10 | `theorem` | [TendstoUniformly.continuous](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendstouniformly-continuous--4a2a46bd88a375b0d68b8277.md) | 130 | `result-track:4a2a46bd88a375b0d68b8277ac09b1115a4f9d3b710f5225c2dfb406ae666b4f` |
| 11 | `theorem` | [tendsto_comp_of_locally_uniform_limit_within](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendsto-comp-of-locally-uniform-limit-within--7797fa65dbc11e4cac1d543a.md) | 146 | `result-track:7797fa65dbc11e4cac1d543a697c1863685cf80dca4f72dcf6c43d37a244db85` |
| 12 | `theorem` | [tendsto_comp_of_locally_uniform_limit](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendsto-comp-of-locally-uniform-limit--1e0c99a48750231ece23ff7f.md) | 159 | `result-track:1e0c99a48750231ece23ff7fc32a422ac7c236d49faca4873967b745c8f6dc81` |
| 13 | `theorem` | [TendstoLocallyUniformlyOn.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendstolocallyuniformlyon-tendsto-comp--b60df8636c97faf6e5d44869.md) | 168 | `result-track:b60df8636c97faf6e5d44869037efed7d1847bdeaa919d97cc62b94cf34467cd` |
| 14 | `theorem` | [TendstoUniformlyOn.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendstouniformlyon-tendsto-comp--d87233e52c60dc8811a66458.md) | 175 | `result-track:d87233e52c60dc8811a6645857f64c7d3d726795812be2a6516c2ba6674b5e51` |
| 15 | `theorem` | [TendstoLocallyUniformly.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendstolocallyuniformly-tendsto-comp--bbe55c6c45911a81a006225e.md) | 181 | `result-track:bbe55c6c45911a81a006225ecbfbb69cdc6fa0a8b5649b0ac4a7d564e26c4bec` |
| 16 | `theorem` | [TendstoUniformly.tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/UniformApproximation/Variant57ee086bce0eadb2e87eced3319ebcced604dab1e09d3726910754f859d07949.lean/declarations/tendstouniformly-tendsto-comp--7242857e0929d71da4ed2f6d.md) | 186 | `result-track:7242857e0929d71da4ed2f6d4c8d92adb8aa53157e8dfdc307e0bbc388e9dca4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
