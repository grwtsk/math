# Verification target: Topological Refinement Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "078381dae255ddfeac58e5df88f6224fff89ad1f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `078381dae255ddfeac58e5df88f6224fff89ad1f`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledSpherical.TopologicalEmbedding` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousRefinementSystem](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/continuousrefinementsystem.md) | 28 | `declaration-track:c3005ce8d8b0c7dc28de45c2722a181e1ed9a7475adf9a3ab356fa695b066566` |
| 2 | `structure` | [ContinuousGraphRealizationRefinement](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/continuousgraphrealizationrefinement.md) | 58 | `declaration-track:da1ada50c80fbe7ee7f9d7a4ee779bec42e76d4636c306328e49f2972372e368` |
| 3 | `structure` | [ContinuousAdmittedGraphRefinement](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/continuousadmittedgraphrefinement.md) | 97 | `declaration-track:5d553a1fde518e6908cd885d02052d93eeb06b87d90e3e6dde1941e897ba7b60` |
| 4 | `def` | [ContinuousAdmittedGraphRefinement.asGraphRealizationRefinement](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/continuousadmittedgraphrefinement-asgraphrealizationrefinement.md) | 143 | `declaration-track:3e78faa952b38cef2ffbb690f3b073827d0a97c9ba1f9e5bc86c700becb04012` |
| 5 | `def` | [ContinuousAdmittedGraphRefinement.asContinuousRefinementSystem](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/continuousadmittedgraphrefinement-ascontinuousrefinementsystem.md) | 162 | `declaration-track:08f41fc829f001cf82fe4ed2b39f88aecd7e536261090dba0f6f57db27117ad5` |
| 6 | `def` | [ContinuousGraphRealizationRefinement.asContinuousRefinementSystem](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/continuousgraphrealizationrefinement-ascontinuousrefinementsystem.md) | 180 | `declaration-track:f24b73f1e3b15013c6cb2aed91f4972aed2142e1273d1e8290997533015f89be` |
| 7 | `structure` | [ContinuousTargetRefinement](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/continuoustargetrefinement.md) | 196 | `declaration-track:dce5b1bc6dfffd3baa13d5769dc91ce67ceba0e8782b1a4b332096a08a15e2ef` |
| 8 | `structure` | [StrictEmbeddingRefinementCoherent](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/strictembeddingrefinementcoherent.md) | 217 | `declaration-track:add493b9d0f677bdf01b85974f634f37b9265b50a6dd157b9532636f49deed00` |
| 9 | `def` | [RefinementCompatible](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/refinementcompatible.md) | 245 | `declaration-track:ceaae2eaf3c2918768557ecdf1197e05ffa99b8e4b7c993f6f17cc29a0db3ff8` |
| 10 | `def` | [refinementCompatibleSet](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/refinementcompatibleset.md) | 253 | `declaration-track:7f3465bfa1fd46cd0569c1778ad0b34238a58894b1f32c8054d21e8f54c9082e` |
| 11 | `def` | [TopologicalCompatibleFamily](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/topologicalcompatiblefamily.md) | 260 | `declaration-track:c81a494d63b1e1c57661b17c55f85a0e5594a5070db5712e24424afedf170519` |
| 12 | `def` | [topologicalCompatibleFamilyTopology](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/topologicalcompatiblefamilytopology.md) | 269 | `declaration-track:b63276b763b9ec5fadd7066ce625998f685e613b993f7de54b07e79c7ab1d52b` |
| 13 | `def` | [topologicalCompatibleFamilyProjection](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/topologicalcompatiblefamilyprojection.md) | 276 | `declaration-track:175fe88cd77583c15d94e179ba5f6968693674efd81c4f0b32fd95cc7266076e` |
| 14 | `theorem` | [continuous_topologicalCompatibleFamilyProjection](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/continuous-topologicalcompatiblefamilyprojection.md) | 283 | `result-track:ac3c6cbb8ad0bf946046f94e843a4efc29183c75cb40366fe0b05012381160ad` |
| 15 | `theorem` | [topologicalCompatibleFamily_projection_commutes](../../../../GeneralTopology/TopologicalRefinementNamespaced.lean/declarations/topologicalcompatiblefamily-projection-commutes.md) | 293 | `result-track:89d7e91e9fbf980bb84277a3e5125085a10ab61b79779b0d59e9b2b1cbe76daa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a3aed03142743002dd31f31ded70d2e498719e977ebc514f6e92b1c675d41d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TopologicalRefinement/Variant16efe2a543cf033d299fbca8f44d57dcc401bda0a3f3a7f2b1f5fa214f805f0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
