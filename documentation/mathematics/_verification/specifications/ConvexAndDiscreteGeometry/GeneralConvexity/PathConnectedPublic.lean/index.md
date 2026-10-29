# Verification target: Path Connected Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5da8f29df4a031dca76a347554d87316f346a11",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PathConnected/Variante361be68d7c22691466bb61dbcbce809cd0fee45b4d0fb578c937ce6504bcadc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5da8f29df4a031dca76a347554d87316f346a11`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PathConnected/Variante361be68d7c22691466bb61dbcbce809cd0fee45b4d0fb578c937ce6504bcadc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PathConnected/Variante361be68d7c22691466bb61dbcbce809cd0fee45b4d0fb578c937ce6504bcadc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/segment.md) | 35 | `declaration-track:7f831791228d5eed20107d517cd007993095d5a1a03d26b87ca44df4466c53ef` |
| 2 | `theorem` | [range_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/range-segment.md) | 42 | `result-track:54390ba156f5d77179a4a62aa6a8de33614c8552f6df7cebfd236144405f502c` |
| 3 | `theorem` | [segment_same](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/segment-same.md) | 47 | `result-track:1e09f7ab8546da7dd6190c485280427575ca5fbe1062a1573888462f8d4f39bb` |
| 4 | `theorem` | [segment_symm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/segment-symm.md) | 50 | `result-track:ca965a1eef0ba45eea164caf8e11344c5b3e05c8f5d404eaf687b72601565d5a` |
| 5 | `theorem` | [segment_add_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/segment-add-segment.md) | 54 | `result-track:93e797e0b3acd3d5a3f6e7ad12a2b37284ba81f4e01ab9c8661c9f2c9386d671` |
| 6 | `theorem` | [cast_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/cast-segment.md) | 60 | `result-track:cea604cfd749f4440bc7a576a57c250e7712ea513e49bcccb7fcb6695a50022b` |
| 7 | `theorem` | [eqOn_extend_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/eqon-extend-segment.md) | 64 | `result-track:c4acae78760c3d73ebebe6eaefc5b7d623910bec46fa725f7a6c50b649997a4f` |
| 8 | `theorem` | [segment_injective_of_ne](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/segment-injective-of-ne.md) | 69 | `result-track:b10365a00d7aa0a744588ce98b60eb220d1a0bd845d6eb6c73e4bee9395f9054` |
| 9 | `theorem` | [JoinedIn.of_segment_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/joinedin-of-segment-subset.md) | 74 | `result-track:074f5d0d10c08032de1f0b0cadac27c087db65121cb1f1634ef916fea7f1b8aa` |
| 10 | `theorem` | [StarConvex.isPathConnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/starconvex-ispathconnected.md) | 78 | `result-track:7b47d687e19cac24a519bdef7b2643d9ca8a01a43910c16b3a4c819bf34fbe73` |
| 11 | `theorem` | [Convex.isPathConnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/convex-ispathconnected.md) | 83 | `result-track:a470db7a79d0e6b988cffa8fd6e79121bd5c2bb7a66488f0c549103681472b39` |
| 12 | `theorem` | [Convex.isConnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/convex-isconnected.md) | 88 | `result-track:cb9a903996c3718a1ed625f332ab2e9824004a9a75f203e81438488da2e29a11` |
| 13 | `theorem` | [Convex.isPreconnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/convex-ispreconnected.md) | 93 | `result-track:76dcad0aca9d30b7c4bd82f16d833217c2d254e0923ea170b0941b27f9276f5a` |
| 14 | `theorem` | [Submodule.isPathConnected](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/submodule-ispathconnected.md) | 98 | `result-track:36c395608bcd820c35edcf45cacfbdb5429f3cd90a343f12200e1138151e80df` |
| 15 | `theorem` | [IsTopologicalAddGroup.pathConnectedSpace](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/istopologicaladdgroup-pathconnectedspace.md) | 105 | `result-track:4585b77731929145920bcf078b1d31f1f1f1f796fe5461d02806cf04d88d26e6` |
| 16 | `theorem` | [isPathConnected_compl_of_isPathConnected_compl_zero](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/ispathconnected-compl-of-ispathconnected-compl-zero.md) | 110 | `result-track:aede5ae5af1e17b8f4fc7a6f0834428165a963e6c916552cbee3d9eefbd167b8` |
| 17 | `theorem` | [segment_image_Ico](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/segment-image-ico.md) | 123 | `result-track:83a75aadb9d482df2f5f058fcdb6676434697de10406cb474ad91267cc60f80a` |
| 18 | `theorem` | [segment_image_Ioc](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/PathConnectedPublic.lean/declarations/segment-image-ioc.md) | 130 | `result-track:098d3109c2f466fea88a8bc67907237c6f9d1227fa050a5be43231a28b7b5b81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d421b7c4bb62e1d4b4c90b46c694ea28002dc38782b92a27639cd5d7583c45c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PathConnected/Variante361be68d7c22691466bb61dbcbce809cd0fee45b4d0fb578c937ce6504bcadc.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/PathConnected/Variante361be68d7c22691466bb61dbcbce809cd0fee45b4d0fb578c937ce6504bcadc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
