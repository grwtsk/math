# Verification target: GRWTSK.Topology.GeneralTopology.Toeplitz.Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0de3b8eb83e5a6b6d7be3206e7abc96de43768ec",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0de3b8eb83e5a6b6d7be3206e7abc96de43768ec`.

Source path: `GRWTSK/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PFClosure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PFOrder](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pforder--1de4edd560e11d6e848ae2d2.md) | 27 | `declaration-track:1de4edd560e11d6e848ae2d2a8c6dbfdd8da91e0ad78fb44eb5c116040af9b45` |
| 2 | `def` | [NonnegativeThrough](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/nonnegativethrough--58323ac8b0711f67a63d35aa.md) | 31 | `declaration-track:58323ac8b0711f67a63d35aa1de7a8fbdceb8ae3b1077b08524945ad03d4efdc` |
| 3 | `theorem` | [PFOrder.mono](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pforder-mono--2bdae053cc2bfcc40c6b32db.md) | 36 | `result-track:2bdae053cc2bfcc40c6b32dbba04dfdef85ebe5583a0a48785f85d411e1c37c8` |
| 4 | `theorem` | [PFInfinity.pfOrder](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pfinfinity-pforder--69222750d7787d6391ab5064.md) | 40 | `result-track:69222750d7787d6391ab506406bc5415c1d1dfa3cf5cc5f394eebf4814a96e95` |
| 5 | `theorem` | [pfInfinity_iff_forall_order](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pfinfinity-iff-forall-order--d7926dd7f8e0a9f5eb396603.md) | 44 | `result-track:d7926dd7f8e0a9f5eb39660382ea4d3eaaa0ddd2d2206824cbcf964b1dd45f95` |
| 6 | `theorem` | [pfOrder_zero](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pforder-zero--c7631f9bf0e3f6cb324ca5bc.md) | 51 | `result-track:c7631f9bf0e3f6cb324ca5bc9ec6024aec6f5eb1ee2540b66874b2623fd874b3` |
| 7 | `theorem` | [pfOrder_iff_blocks](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pforder-iff-blocks--a154b1a902cd4b328589ce05.md) | 59 | `result-track:a154b1a902cd4b328589ce05518fc5dc35ed68ff48c005bf2ce43b9fa8294965` |
| 8 | `theorem` | [PFOrder.block_nonnegative](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pforder-block-nonnegative--59f4cba0eb010897010d368f.md) | 89 | `result-track:59f4cba0eb010897010d368f1903e833799c9c0b521ec689e636fdd90939ebc8` |
| 9 | `theorem` | [pfOrder_amplitude_iff](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pforder-amplitude-iff--5506c7dda43200d570b4131e.md) | 97 | `result-track:5506c7dda43200d570b4131e7a2727861e3ae2c3a4ab9366fc010277823c5d83` |
| 10 | `theorem` | [pfOrder_of_eventually_minor_nonnegative](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pforder-of-eventually-minor-nonnegative--7bc81233c0f3f7cabed7e15d.md) | 109 | `result-track:7bc81233c0f3f7cabed7e15d17d4d36de91f96b0175d74b6e107e6d6a1004e99` |
| 11 | `theorem` | [pfOrder_of_coefficientwise_limit](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant58757e1c453b88df1de60a6a7d85a23ac8330dd4c6f44f24bedaabe9b3b0cf9e.lean/declarations/pforder-of-coefficientwise-limit--c0a67cf29cb7c6bf65be7fb7.md) | 118 | `result-track:c0a67cf29cb7c6bf65be7fb72a43f14ea8a601709749ac4e2ffed5acbe8424b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
