# Verification target: Compact Space Std Simplex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c11a4236306a1c479876b4c8a21904b63b06b4c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variantd08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/CompactSpaceStdSimplexPublic.lean/index.md) · [Full source](../../../../Geometry/CompactSpaceStdSimplexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c11a4236306a1c479876b4c8a21904b63b06b4c`.

Source path: `GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variantd08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/CompactSpaceStdSimplex/Variantd08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean.json)

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
| 1 | `lemma` | [range_toFun_comp_weights_subset_closedBall](../../../../Geometry/CompactSpaceStdSimplexPublic.lean/declarations/range-tofun-comp-weights-subset-closedball.md) | 25 | `result-track:e47cf93e3776dca8b5e60af44ade0c0913e8f5694b068b3732daadb0bfbceb79` |
| 2 | `lemma` | [isBounded_range_toFun_comp_weights](../../../../Geometry/CompactSpaceStdSimplexPublic.lean/declarations/isbounded-range-tofun-comp-weights.md) | 30 | `result-track:32cc69b23e699ebf682044d81d3de1e2ea4057e85c66eb29f94927eb52c9c3a3` |
| 3 | `lemma` | [diam_range_toFun_comp_weights_subset_closedBall](../../../../Geometry/CompactSpaceStdSimplexPublic.lean/declarations/diam-range-tofun-comp-weights-subset-closedball.md) | 36 | `result-track:33d111142a3c2c8d40cb8df00f5dbe44e0bb9ae01b0a2e65f8638e2eb5017ea8` |
| 4 | `lemma` | [diam_range_toFun_comp_weights_subset_closedBall_eq_zero](../../../../Geometry/CompactSpaceStdSimplexPublic.lean/declarations/diam-range-tofun-comp-weights-subset-closedball-eq-zero.md) | 45 | `result-track:e3619db59dd68e16e7da945481a1466fba217aeca55b9a3601d437c8c2f43d01` |
| 5 | `lemma` | [diam_range_toFun_comp_weights_subset_closedBall_eq_one](../../../../Geometry/CompactSpaceStdSimplexPublic.lean/declarations/diam-range-tofun-comp-weights-subset-closedball-eq-one.md) | 54 | `result-track:76d1c5f66d09edcc2ac5246ba6974bed024a48af1a0897a039bc56bb9e96c767` |
| 6 | `instance` | [compactSpace](../../../../Geometry/CompactSpaceStdSimplexPublic.lean/declarations/compactspace.md) | 68 | `declaration-track:e4b7dfd2423b20bfba041540d50bbd15c4927b50fa18b96c94b98e541c70ecca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3f4744a4382666219c05eb96eaa9a6aa6237fd066e31f6f39c6c31577207d66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/CompactSpaceStdSimplex/Variantd08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/CompactSpaceStdSimplex/Variantd08795de8787d3cc96642b90f8a5d7fca0fc8b5fa56c68558b6e81037762e042.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
