# Verification target: Convex Space Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "761a9d11eb9e1fd53fd84cf21997b48456a6a838",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant741b2ec578ae4275b60bad04e404a75e7064a8f6bcf9d287b03af2193cf76da2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `761a9d11eb9e1fd53fd84cf21997b48456a6a838`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant741b2ec578ae4275b60bad04e404a75e7064a8f6bcf9d287b03af2193cf76da2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant741b2ec578ae4275b60bad04e404a75e7064a8f6bcf9d287b03af2193cf76da2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [topologicalSpaceInduced](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/topologicalspaceinduced.md) | 42 | `declaration-track:4fcaa8fcf99291bb73088137e97c6d79758a4c5fdf471423a1cb556adf77ffbc` |
| 2 | `lemma` | [continuous_iff](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/continuous-iff-source-edition-2.md) | 49 | `result-track:64d2549642cecdef33e63a228d238ba424dec7d6416e35cbc71381de2366a725` |
| 3 | `lemma` | [continuous_weights_apply](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/continuous-weights-apply-source-edition-2.md) | 55 | `result-track:b08979c9a1f260d1dff8157e6b1b9d53d25c1b1bf1a79aefdc0774a473a78b9c` |
| 4 | `lemma` | [continuous_map_weights_apply](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/continuous-map-weights-apply.md) | 61 | `result-track:7164ebffaa58b89aa2df8881acb6eeb598a6c3fcb94703d8ab414f729cd93655` |
| 5 | `lemma` | [continuous_map](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/continuous-map-source-edition-2.md) | 78 | `result-track:2fd394fe87c7e3bd932673ecb10493eed6a57f5ae0573adce744cb54c7889e68` |
| 6 | `instance` | [topologicalSpace](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/topologicalspace.md) | 97 | `declaration-track:58fc6df2899cca26fefc33b4db96a8164103a605a1148105777ddf7dd6d3d0e5` |
| 7 | `lemma` | [topologicalSpace_eq](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/topologicalspace-eq.md) | 101 | `result-track:00f8ce9fc3a06d2519483ed806fe4b1ba10a9efd26f86813e18a2e8471abaa59` |
| 8 | `lemma` | [continuous_iff](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/continuous-iff.md) | 113 | `result-track:5a746e1e14133b74a0b86005feb978005cebea979429f5f7f702edce2d2c4c8c` |
| 9 | `lemma` | [continuous_map](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/continuous-map.md) | 126 | `result-track:2a21a017e57a6e8fbc086622226ce509f78799f1f09647b1e1bbc0d0451daec9` |
| 10 | `lemma` | [continuous_iff'](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/continuous-iff-source-edition-3.md) | 150 | `result-track:6c52889084eb65651c229edad81945883d91099d3d2b0717f42c1b6e7935507e` |
| 11 | `lemma` | [continuous_weights_apply](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/continuous-weights-apply.md) | 161 | `result-track:a98f57c1d7bf894fb5b57a26d40236e4a8caf21857dc914f467a445f0df79753` |
| 12 | `lemma` | [isEmbedding_toFun_comp_weights](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/isembedding-tofun-comp-weights.md) | 168 | `result-track:ee7dabb001656ab78663129b90bec2b03beece0d40a5d455f0555ecb4c1f8843` |
| 13 | `lemma` | [isClosedEmbedding_toFun_comp_weights](../../../../Geometry/ConvexSpaceTopologyNamespacedPublic.lean/declarations/isclosedembedding-tofun-comp-weights.md) | 173 | `result-track:0f96f7a94da9e8fd5ec18bcd279a2a082524c8cc426a2232a68ce6dc440fec8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=742be08c3770fd6c42ff66b2e428f800e705abc0e8f8ba161c5cd73882fb893d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variant741b2ec578ae4275b60bad04e404a75e7064a8f6bcf9d287b03af2193cf76da2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variant741b2ec578ae4275b60bad04e404a75e7064a8f6bcf9d287b03af2193cf76da2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
