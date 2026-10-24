# Verification target: GRWTSK.Topology.GeneralTopology.UrysohnsLemma.Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf71c2260dfe1b6d4ae51d3d1f7f9339e85a25f8",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf71c2260dfe1b6d4ae51d3d1f7f9339e85a25f8`.

Source path: `GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.AddTorsor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Ordered` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CU](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/cu--3e55d0ba3bcc162421ba9fcb.md) | 83 | `declaration-track:3e55d0ba3bcc162421ba9fcb00d0233219133c7d51c3684eca2faa11b6df7eee` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/instance--8b9fe9aa31d50c094d358214.md) | 90 | `declaration-track:8b9fe9aa31d50c094d35821464f7ffa396240df41e6ae559226526f890ce6791` |
| 3 | `def` | [left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/left--30075d12a68f913efae0c4d0.md) | 100 | `declaration-track:30075d12a68f913efae0c4d06d72ee1d46fdadae488a3f76da587127950fefb7` |
| 4 | `def` | [right](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/right--d284270ab20524bbbce39b21.md) | 111 | `declaration-track:d284270ab20524bbbce39b21c8f9e0f67d4781043c99dfc7b6d8ef1e37ee404c` |
| 5 | `theorem` | [left_U_subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/left-u-subset-right-c--e5a143a1b95d1ec3ded38de2.md) | 119 | `result-track:e5a143a1b95d1ec3ded38de2ff3e6cce0b733488eec6b7d5a4c7bc1edf9f5a05` |
| 6 | `theorem` | [left_U_subset](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/left-u-subset--760a0c8b11c4afdbe47849b9.md) | 123 | `result-track:760a0c8b11c4afdbe47849b9052128d26635c4a0001853c5230152c39701d3e2` |
| 7 | `theorem` | [subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/subset-right-c--42b7deb5037583314f1be433.md) | 127 | `result-track:42b7deb5037583314f1be433a4489c83ea05beb13b9b4d141f8b5c876345fcab` |
| 8 | `def` | [approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx--40179cd1a47d7ce56ed073c1.md) | 133 | `declaration-track:40179cd1a47d7ce56ed073c1c9c949e3246fed497cf011e8928adbb22d1f6d21` |
| 9 | `theorem` | [approx_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx-of-mem-c--0708c6e765160ab79aca5a75.md) | 138 | `result-track:0708c6e765160ab79aca5a759e3ee9a1a6ff5d9c1a77a2216db83060a83afc45` |
| 10 | `theorem` | [approx_of_nmem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx-of-nmem-u--e38ce2f4b59bb87897c12bac.md) | 146 | `result-track:e38ce2f4b59bb87897c12bacb68dc8f86665347e4dfa9acf22e30caaef3c8348` |
| 11 | `theorem` | [approx_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx-nonneg--88120b7fb943a001587fccdf.md) | 155 | `result-track:88120b7fb943a001587fccdfa6782acc8e752a766c544b267898d6cd5109fb58` |
| 12 | `theorem` | [approx_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx-le-one--0dc3f70a38947b066a7777c5.md) | 162 | `result-track:0dc3f70a38947b066a7777c5add581bff911f263bb1c969c3d6a63b3a6c365c1` |
| 13 | `theorem` | [bddAbove_range_approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/bddabove-range-approx--fd7daf8ccfa924e4f04b3133.md) | 171 | `result-track:fd7daf8ccfa924e4f04b313376d7ba8ecd43575e0a15a3f73b556ff2e0a0b970` |
| 14 | `theorem` | [approx_le_approx_of_U_sub_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx-le-approx-of-u-sub-c--f217dd4b281548c28515cdd5.md) | 175 | `result-track:f217dd4b281548c28515cdd5c2f486c3dc08218592ff0b144313c60fc47a3412` |
| 15 | `theorem` | [approx_mem_Icc_right_left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx-mem-icc-right-left--3112a9bd706d5be4e2aac80b.md) | 186 | `result-track:3112a9bd706d5be4e2aac80bdf119001a13a5f6e43b70383c8085fa03a378272` |
| 16 | `theorem` | [approx_le_succ](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx-le-succ--84c2363bf6d28453c1f1013b.md) | 197 | `result-track:84c2363bf6d28453c1f1013b95172b15282f0746e047529ecc049af557f40fa8` |
| 17 | `theorem` | [approx_mono](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx-mono--159390e6fff9f4875e196bd9.md) | 205 | `result-track:159390e6fff9f4875e196bd9a45beda4c79b1bd0bd863608374362d5e19b5244` |
| 18 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/lim--eccfec15b953d0cd7b0d1cd6.md) | 214 | `declaration-track:eccfec15b953d0cd7b0d1cd6b0b9852e725dc0b6a979893b7c0b629f8fc9ac13` |
| 19 | `theorem` | [tendsto_approx_atTop](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/tendsto-approx-attop--eae4e1e25e481a82116038b2.md) | 218 | `result-track:eae4e1e25e481a82116038b2634fa79d1832b602632de1f5e9b1130bfb733c71` |
| 20 | `theorem` | [lim_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/lim-of-mem-c--aafdf263cc397f053e2711d9.md) | 223 | `result-track:aafdf263cc397f053e2711d9426bc55ff7ca2548874721dc6ef42404248b232c` |
| 21 | `theorem` | [lim_of_nmem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/lim-of-nmem-u--9a8bba1faf2d6ef666ee23d7.md) | 227 | `result-track:9a8bba1faf2d6ef666ee23d7b931aadc2597a64abe63cc5d6a40dd3bf99658f2` |
| 22 | `theorem` | [lim_eq_midpoint](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/lim-eq-midpoint--970b5e410b10296a3e751f5a.md) | 231 | `result-track:970b5e410b10296a3e751f5a216ed6725af96352c6a5b96c3a957af423a9ddb2` |
| 23 | `theorem` | [approx_le_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/approx-le-lim--7caf0b3caa43cf60d02d4e56.md) | 238 | `result-track:7caf0b3caa43cf60d02d4e56d49adced4d2c8a9695ea3461724d445e078935de` |
| 24 | `theorem` | [lim_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/lim-nonneg--1611bafb21fa464119384a0d.md) | 242 | `result-track:1611bafb21fa464119384a0d9f09e9f33adcc7858e7debc01083bdcf650f33f2` |
| 25 | `theorem` | [lim_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/lim-le-one--58a7bbb6190e9e45d801c40c.md) | 246 | `result-track:58a7bbb6190e9e45d801c40c23f080e3520516d8be461111d5792b83cbd6ccbe` |
| 26 | `theorem` | [lim_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/lim-mem-icc--c49da84b061d0ed5225f9120.md) | 250 | `result-track:c49da84b061d0ed5225f9120ecf0e48d3c7b6bd8ff282b583b4238734723e133` |
| 27 | `theorem` | [continuous_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/continuous-lim--b181d564f663e78c4a0944ca.md) | 255 | `result-track:b181d564f663e78c4a0944ca580168af73d0e029f5566d722ed63d71f9bf12e9` |
| 28 | `theorem` | [exists_continuous_zero_one_of_closed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant9212d3eecd2ef418619ccf14e8df2246cb0449d751b022f032262f152ee6a0c1.lean/declarations/exists-continuous-zero-one-of-closed--500f952612c2216bae29df72.md) | 305 | `result-track:500f952612c2216bae29df72b095ee138473a5772eddb85b190adc4d0336e69f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
