# Verification target: GRWTSK.Topology.GeneralTopology.TopologicalRefinement.Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ece33e776f9c0d0db9b99678314a6da885f890a0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ece33e776f9c0d0db9b99678314a6da885f890a0`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledSpherical.TopologicalEmbedding` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousRefinementSystem](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/continuousrefinementsystem--bc3e72fffd3795e3cb2aa862.md) | 20 | `declaration-track:bc3e72fffd3795e3cb2aa862f1f1f14c6e78e3532fd47153e0e8bea0d32005b7` |
| 2 | `structure` | [ContinuousGraphRealizationRefinement](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/continuousgraphrealizationrefinement--0787c462b4c22569666d19c3.md) | 50 | `declaration-track:0787c462b4c22569666d19c33c6acb3fa0425aa559f9eb8d8dec5cf7f0a053f0` |
| 3 | `structure` | [ContinuousAdmittedGraphRefinement](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/continuousadmittedgraphrefinement--0617f1589ce6d3bd52907252.md) | 89 | `declaration-track:0617f1589ce6d3bd52907252705903280bc04f15fe9aca0d23598d1d89848a1f` |
| 4 | `def` | [ContinuousAdmittedGraphRefinement.asGraphRealizationRefinement](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/continuousadmittedgraphrefinement-asgraphrealizationrefinement--2198ec64ea445e7a0afdba5d.md) | 135 | `declaration-track:2198ec64ea445e7a0afdba5df98f4d8e5c628dc439c3fe1e5b1676a0c4782812` |
| 5 | `def` | [ContinuousAdmittedGraphRefinement.asContinuousRefinementSystem](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/continuousadmittedgraphrefinement-ascontinuousrefinementsystem--828f0746626ece8aea469e6f.md) | 154 | `declaration-track:828f0746626ece8aea469e6f9070bf106a31ddc9fc251ae09c77a54956c6a8a3` |
| 6 | `def` | [ContinuousGraphRealizationRefinement.asContinuousRefinementSystem](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/continuousgraphrealizationrefinement-ascontinuousrefinementsystem--242af16614da93eeff429260.md) | 172 | `declaration-track:242af16614da93eeff429260304468126750329a7ec2a74ce3b8d437ab0a6f94` |
| 7 | `structure` | [ContinuousTargetRefinement](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/continuoustargetrefinement--7cc3adb691eb31f3b0868459.md) | 188 | `declaration-track:7cc3adb691eb31f3b08684592a08fae8049bdaa9a3f914e8128141dded33b459` |
| 8 | `structure` | [StrictEmbeddingRefinementCoherent](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/strictembeddingrefinementcoherent--e9eb933dd165dd2a02226e5c.md) | 209 | `declaration-track:e9eb933dd165dd2a02226e5c022117739e6427c3dcbc2bae5fa489f5b6490081` |
| 9 | `def` | [RefinementCompatible](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/refinementcompatible--40c07018b256996e1d7e0cf0.md) | 237 | `declaration-track:40c07018b256996e1d7e0cf098faa5531776d64dbfa830f5cdd2d5ef15599fee` |
| 10 | `def` | [refinementCompatibleSet](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/refinementcompatibleset--d830f4478b40b990e43ace01.md) | 245 | `declaration-track:d830f4478b40b990e43ace01bee4d6b8d8c922d68a88b1c53850201368a33fef` |
| 11 | `def` | [TopologicalCompatibleFamily](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/topologicalcompatiblefamily--7c7cf4e4e9219e9f1f6f4c00.md) | 252 | `declaration-track:7c7cf4e4e9219e9f1f6f4c00df3d6646de4bb84b2584762e8790e7f6e54dedb8` |
| 12 | `def` | [topologicalCompatibleFamilyTopology](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/topologicalcompatiblefamilytopology--cd4d2a00d7fe46d2518df267.md) | 261 | `declaration-track:cd4d2a00d7fe46d2518df267e7514d9d15000df6b7a5bb5abf3204194890b6fd` |
| 13 | `def` | [topologicalCompatibleFamilyProjection](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/topologicalcompatiblefamilyprojection--d7b40bf7b709cce11db418a7.md) | 268 | `declaration-track:d7b40bf7b709cce11db418a7df2779159a14bef1957dd490e6a98218de97a52d` |
| 14 | `theorem` | [continuous_topologicalCompatibleFamilyProjection](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/continuous-topologicalcompatiblefamilyprojection--ce8aa78b3efdef31402d5510.md) | 275 | `result-track:ce8aa78b3efdef31402d55107cb9fe04dbefa1e4feb11f4e6d38413de729cf77` |
| 15 | `theorem` | [topologicalCompatibleFamily_projection_commutes](../../../../../mathematics/Topology/GeneralTopology/TopologicalRefinement/Variant796cfbf241fe4e5b155cbef6dc64c39bbb5852fb410d50016e8d26850f42efa1.lean/declarations/topologicalcompatiblefamily-projection-commutes--3a8801cd6671ac38dc1749d1.md) | 285 | `result-track:3a8801cd6671ac38dc1749d180ed756ea0b26349a682c575e28c46253000908a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
