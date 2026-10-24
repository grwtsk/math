# Verification target: GRWTSK.Topology.GeneralTopology.Toeplitz.Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "090c2e08a9f0a54fe16e0b9a7c9116710c16ecda",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `090c2e08a9f0a54fe16e0b9a7c9116710c16ecda`.

Source path: `GRWTSK/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PFClosure` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PFOrder](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pforder--09c49bfe2acf74dac0012259.md) | 19 | `declaration-track:09c49bfe2acf74dac00122591a0c982a962a0cc44727008c11d0f31818cfa775` |
| 2 | `def` | [NonnegativeThrough](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/nonnegativethrough--04b682982d3f990296e85291.md) | 23 | `declaration-track:04b682982d3f990296e85291cccbef2babcc9b074ac044469cb29b8038aa1153` |
| 3 | `theorem` | [PFOrder.mono](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pforder-mono--5dde753a6ea11a600f8646fd.md) | 28 | `result-track:5dde753a6ea11a600f8646fd51620232fda477826df700dd391580355385abb9` |
| 4 | `theorem` | [PFInfinity.pfOrder](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pfinfinity-pforder--dc5ca801617ebfbf3b5e3230.md) | 32 | `result-track:dc5ca801617ebfbf3b5e3230cac3b0573b092a9fd9f9d2926cd65c845a42a9d6` |
| 5 | `theorem` | [pfInfinity_iff_forall_order](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pfinfinity-iff-forall-order--9716977b2f8386f5c8a18d73.md) | 36 | `result-track:9716977b2f8386f5c8a18d73dfb39fa1ec2b1826f4e9bff8901ef126ddbc7304` |
| 6 | `theorem` | [pfOrder_zero](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pforder-zero--bfcb69faac1e2143958b66ba.md) | 43 | `result-track:bfcb69faac1e2143958b66ba04aa71bd74ed8e5b6283d37f16f2f0414db3b183` |
| 7 | `theorem` | [pfOrder_iff_blocks](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pforder-iff-blocks--26d29cd11070c55c7a7cd740.md) | 51 | `result-track:26d29cd11070c55c7a7cd740800f9399ab30998e3273ec406d9157281e52afc3` |
| 8 | `theorem` | [PFOrder.block_nonnegative](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pforder-block-nonnegative--db7af396bff9cf49a7b52093.md) | 81 | `result-track:db7af396bff9cf49a7b52093d8458afbd8e9db53e7bbd0712b6de9c2a265997b` |
| 9 | `theorem` | [pfOrder_amplitude_iff](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pforder-amplitude-iff--924087da5490413ea91ce4d1.md) | 89 | `result-track:924087da5490413ea91ce4d1f41d3143d3bc5830d577c0423230d1d7cd0431a1` |
| 10 | `theorem` | [pfOrder_of_eventually_minor_nonnegative](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pforder-of-eventually-minor-nonnegative--63cb5c69971c3392a1f88913.md) | 101 | `result-track:63cb5c69971c3392a1f8891374ed48f3205340a2e9e8f8b0b60641690653f153` |
| 11 | `theorem` | [pfOrder_of_coefficientwise_limit](../../../../../mathematics/Topology/GeneralTopology/Toeplitz/Variant11968667ff2fa43b7c8fa02d7175ac8015ab98e9b5df10fe3f4a5ad3d7d0d012.lean/declarations/pforder-of-coefficientwise-limit--02956559f4980efdebb43d8f.md) | 110 | `result-track:02956559f4980efdebb43d8fc99f2180257373e700b618749d78a19cc1ad279c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
