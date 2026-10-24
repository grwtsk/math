# Verification target: GRWTSK.Topology.GeneralTopology.Torsor.Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bc59cc00ceb4c555ed8a84da9019d5204c7d272",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bc59cc00ceb4c555ed8a84da9019d5204c7d272`.

Source path: `GRWTSK/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsTopologicalAddTorsor](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/istopologicaladdtorsor--176c1eba689f3c9decfb5888.md) | 38 | `declaration-track:176c1eba689f3c9decfb5888a89dfe83c13d5814429f317debe6949eedac310d` |
| 2 | `class` | [IsTopologicalTorsor](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/istopologicaltorsor--b1a46dbc5e11c8eccb0c1a3e.md) | 44 | `declaration-track:b1a46dbc5e11c8eccb0c1a3e91af81bb89e2388b81f8f8395b557484b4c694c0` |
| 3 | `theorem` | [Filter.Tendsto.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/filter-tendsto-sdiv--ad34b642ab176278e454dc2a.md) | 59 | `result-track:ad34b642ab176278e454dc2a1e2705293446e3a111c375dcb8da8c2eb9d5969a` |
| 4 | `theorem` | [Continuous.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/continuous-sdiv--b9e3e22c0e9782d6038eb6d0.md) | 66 | `result-track:b9e3e22c0e9782d6038eb6d0eaef4b0a4f935952f042f0ed2b7e8f58c3d26bf9` |
| 5 | `theorem` | [ContinuousAt.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/continuousat-sdiv--67dadf9889b35b37c6f14dec.md) | 71 | `result-track:67dadf9889b35b37c6f14dec304962c09049d4666e6f16cec5cff12700bb2ef9` |
| 6 | `theorem` | [ContinuousWithinAt.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/continuouswithinat-sdiv--c1a30256f374f5ba3ba22a62.md) | 77 | `result-track:c1a30256f374f5ba3ba22a62f8fdad22bf85c3228bd5721252759ff460d6e787` |
| 7 | `theorem` | [ContinuousOn.sdiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/continuouson-sdiv--ccb892f4fbc01bb11fae4804.md) | 83 | `result-track:ccb892f4fbc01bb11fae48048525327978a576c56fd680c06696e651ae663f94` |
| 8 | `theorem` | [IsTopologicalTorsor.to_isTopologicalGroup](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/istopologicaltorsor-to-istopologicalgroup--bb802ab3a4eb272ab74300f8.md) | 93 | `result-track:bb802ab3a4eb272ab74300f88b3670c9de5012b17515e9a0d92d96db0019e10f` |
| 9 | `def` | [Homeomorph.smulConst](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/homeomorph-smulconst--5f4854ce4e8b6353a696d604.md) | 109 | `declaration-track:5f4854ce4e8b6353a696d6042d4653dc5479fb24c2dcc8fb1758a8bd8fb0ea08` |
| 10 | `def` | [Homeomorph.constSDiv](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/homeomorph-constsdiv--8ea976f4661806e8310eba3e.md) | 115 | `declaration-track:8ea976f4661806e8310eba3e8b2d6753a04c1960075fdc79195e464c278ed55d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/instance--1049a273ae42899af8cd73a1.md) | 122 | `declaration-track:1049a273ae42899af8cd73a1ebc95ff4a17e5c3d8c4ef1781c1706cad3e17586` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/instance--7fbdffc1de904cbcca888136.md) | 127 | `declaration-track:7fbdffc1de904cbcca88813640557274923facf457938ff71aa9f3b95d560e81` |
| 13 | `def` | [Homeomorph.pointReflection](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/homeomorph-pointreflection--1c1d4e0b9f292807654adf7e.md) | 133 | `declaration-track:1c1d4e0b9f292807654adf7e67e4de0d3ecbb24dab4680f8cebbe667042872bd` |
| 14 | `lemma` | [Homeomorph.coe_pointReflection](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/homeomorph-coe-pointreflection--7072caa9d14ce6ad0b3c3194.md) | 138 | `result-track:7072caa9d14ce6ad0b3c3194aaaa6f3928abbd7d772328609b1ecc3e1431326d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/instance--4ac6dad52253f912aa0586d6.md) | 149 | `declaration-track:4ac6dad52253f912aa0586d6ec02c191ea5211575885df595fc1cb7bae620874` |
| 16 | `instance` | [instIsTopologicalTorsorProd](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/instistopologicaltorsorprod--68e9c7608d458583880fb002.md) | 164 | `declaration-track:68e9c7608d458583880fb00255a5743254fb391a434b8ce1c20bc80a62926b8a` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Torsor/Variant2873d5fa9ceab1695a549d7087b8f7a30418aa2cd97ce209fa9a5566d0cdff61.lean/declarations/instance--33d8d4ecb241dd8c9e83de59.md) | 178 | `declaration-track:33d8d4ecb241dd8c9e83de598dbf49696d54d2f29c1873636831b4f83491ac27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
