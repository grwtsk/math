# Verification target: Strict Convex Between Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a40cf4fa42c1040072c868ca09521201609465bd",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a40cf4fa42c1040072c868ca09521201609465bd`.

Source path: `GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean.json)

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
| 1 | `theorem` | [Sbtw.dist_lt_max_dist](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/sbtw-dist-lt-max-dist.md) | 31 | `result-track:964e2c1406e21f36220037a62b33e4df2d142bc2cb4e02afc0fffa7d70a50946` |
| 2 | `theorem` | [Wbtw.dist_le_max_dist](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/wbtw-dist-le-max-dist.md) | 47 | `result-track:2972ea1a70c9d125eaa376f12f6686a339ca3872a6f483795cdde985898539d3` |
| 3 | `theorem` | [Collinear.wbtw_of_dist_eq_of_dist_le](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/collinear-wbtw-of-dist-eq-of-dist-le.md) | 56 | `result-track:0a1e72d540262ba14f5f9c0e196b0d673a9de6a130866b1a18590037f6986207` |
| 4 | `theorem` | [Collinear.sbtw_of_dist_eq_of_dist_lt](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/collinear-sbtw-of-dist-eq-of-dist-lt.md) | 76 | `result-track:c6aaf6e6964f9a05083d78093d2001b44e9f97e91aa2adef8212a8f23cc4fe02` |
| 5 | `lemma` | [dist_add_dist_eq_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/dist-add-dist-eq-iff.md) | 92 | `result-track:3b8e4652defc4f2a3385dbb7e9cf1c035fa2c8d3783451e32825168973ed20f8` |
| 6 | `theorem` | [dist_lt_dist_add_dist_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/dist-lt-dist-add-dist-iff.md) | 103 | `result-track:16a8a19a2793bf7524cc17dfe6868c47143852580ac83cf86a607074f0e9fa00` |
| 7 | `lemma` | [eq_lineMap_of_dist_eq_mul_of_dist_eq_mul](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/eq-linemap-of-dist-eq-mul-of-dist-eq-mul.md) | 113 | `result-track:d1bc8d24b89c11cce938875db193bd0ee74d5bcbb91c73ad802d021c8c248417` |
| 8 | `lemma` | [eq_midpoint_of_dist_eq_half](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/eq-midpoint-of-dist-eq-half.md) | 130 | `result-track:eeb018bffdce59c1a7d4e9a10e13fd6c03494de2af709d44e272447e0cc6aea2` |
| 9 | `def` | [affineIsometryOfStrictConvexSpace](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/affineisometryofstrictconvexspace.md) | 141 | `declaration-track:80aca6b3e38beb92a80c1057efc649d71f8f71c46ab0ac9e112735281c285172` |
| 10 | `lemma` | [coe_affineIsometryOfStrictConvexSpace](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/coe-affineisometryofstrictconvexspace.md) | 152 | `result-track:6ade4b7afd718e1f73ab4222fdb5cc8cc9a0a42bc057b7255b7e5525201b961d` |
| 11 | `lemma` | [affineIsometryOfStrictConvexSpace_apply](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/StrictConvexBetweenPublic.lean/declarations/affineisometryofstrictconvexspace-apply.md) | 155 | `result-track:f1ec23e7254921db484b0775698909c74ac2c16c5733a36788f3cbfd2c44b1be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02f2f1f6226fb52809dc00384670a0b2e7fa527c4987ca11fe225150ebdbf64f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/StrictConvexBetween/Varianteffdb897300cc2169ba9d32674ec022fd70dabf3c6858fa21fa17542f781222c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
