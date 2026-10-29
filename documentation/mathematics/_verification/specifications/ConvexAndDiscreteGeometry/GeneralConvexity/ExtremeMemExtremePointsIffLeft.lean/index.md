# Verification target: Extreme Mem Extreme Points Iff Left

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1534f8048721e1dfbc097d7077ee4ed9fae6301",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1534f8048721e1dfbc097d7077ee4ed9fae6301`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsExtreme](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme.md) | 52 | `declaration-track:0e424c3d48cb451ab2f9cd0ac5f6201b7746f764cd1c86746ead2431457a5b49` |
| 2 | `def` | [Set.extremePoints](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/set-extremepoints.md) | 60 | `declaration-track:9a57ba3c6e653e2d7aa6e9fd9a99ba6bfac323d7b27fba53da67b5be268fc8f4` |
| 3 | `theorem` | [IsExtreme.refl](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-refl.md) | 64 | `result-track:85b2a7ed278d8c4e383a430237a214c1c90346e0150ad3aff61b8ea90c3e2198` |
| 4 | `theorem` | [IsExtreme.rfl](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-rfl.md) | 69 | `result-track:74055dc051446b055088da205665d895fb6d8aaeeb740716852f819aa5ea691a` |
| 5 | `theorem` | [IsExtreme.trans](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-trans.md) | 73 | `result-track:b6125073d9fb0c094f519dbd1d59cf8e6c64bea7cf7edc1e1982552fcdbc9683` |
| 6 | `theorem` | [IsExtreme.antisymm](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-antisymm.md) | 79 | `result-track:b6cac1eb629a85fe8fcec359ef5664d7b0ebe328decfa86de5f27e0702bdebfa` |
| 7 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/instance.md) | 82 | `declaration-track:2093d431c64e936021020f5827c873f92e807755c7623bf64cf07dea78360a38` |
| 8 | `theorem` | [IsExtreme.inter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-inter.md) | 87 | `result-track:c00a63520fbf9f5fb74c15a3861bf407ce5aa9f088629ec2e190a9d727e86b11` |
| 9 | `theorem` | [IsExtreme.mono](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-mono.md) | 95 | `result-track:0509b76e0e3ea16df0e4efbeb8b6c8e826b73ded0aaa57cdeb5b108184d36c2e` |
| 10 | `theorem` | [isExtreme_iInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-iinter.md) | 99 | `result-track:4a4277399bb093c3d9380d2ee7801afdc360590bef7674750de35f756db7378a` |
| 11 | `theorem` | [isExtreme_biInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-biinter.md) | 107 | `result-track:d5be78a07e8c1b0238fe7bb5d16b5f78c8e2d5c237497faddbb78ab1214fba3b` |
| 12 | `theorem` | [isExtreme_sInter](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-sinter.md) | 112 | `result-track:57064d5a2920afd4fb00654e2e7955152d6cf648882e574593ea423d6bc01e1c` |
| 13 | `theorem` | [mem_extremePoints](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/mem-extremepoints.md) | 115 | `result-track:cfc01f2a00380ddb720754ce5f5bbf331e10683f7c0d5c5b302ce5b52cce37f7` |
| 14 | `theorem` | [mem_extremePoints_iff_left](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/mem-extremepoints-iff-left.md) | 124 | `result-track:5db0d64b4d783f49e7fafa1f1da3df14265da9a3577fe33c5138c7925c527fdc` |
| 15 | `lemma` | [isExtreme_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-singleton.md) | 133 | `result-track:666258ab63ac22772e3430e602057d24b85c8a851c472fd8d2fc2cb3077b4501` |
| 16 | `theorem` | [extremePoints_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/extremepoints-subset.md) | 142 | `result-track:7afae0ecf9ae1d53c9897d2c23ca860ce626eeb76698e68d132d31eb683f5cb4` |
| 17 | `theorem` | [extremePoints_empty](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/extremepoints-empty.md) | 146 | `result-track:9e290b8243a076b145b14c7183f705043f7491170a12ba01a81c5749af233ab1` |
| 18 | `theorem` | [extremePoints_singleton](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/extremepoints-singleton.md) | 150 | `result-track:6939828901beb44507564ff2e5595ac2577bdb488d3a3b47ef0eeeea93c0eca7` |
| 19 | `theorem` | [inter_extremePoints_subset_extremePoints_of_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/inter-extremepoints-subset-extremepoints-of-subset.md) | 154 | `result-track:667bf3d8dd080bfa2281ab68ed31f314989ae9a57da1fd2f44a6c09181c0bd98` |
| 20 | `theorem` | [IsExtreme.extremePoints_subset_extremePoints](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-extremepoints-subset-extremepoints.md) | 158 | `result-track:6ee091345ecaaa9e8c052f5d129c49a2abb8b65a878972d89d31dbd5c2002e6f` |
| 21 | `theorem` | [IsExtreme.extremePoints_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-extremepoints-eq.md) | 162 | `result-track:5f6bfcbf84888b129db000898d63f8b91d4c5f930b0ece0f2845fe64ba96cfb4` |
| 22 | `theorem` | [IsExtreme.convex_diff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/isextreme-convex-diff.md) | 174 | `result-track:71b9fefa4b8a6c809f91da64d290fe00e50493fbc044e565ae4f74215fcda1ed` |
| 23 | `theorem` | [extremePoints_prod](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/extremepoints-prod.md) | 180 | `result-track:95a7de052db9db012ecf24787cec31e2812bd95e2ba0c202d22de2a451ab5a84` |
| 24 | `theorem` | [extremePoints_pi](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/extremepoints-pi.md) | 202 | `result-track:4b5a1c069b97a8648ca43975604b4ae8fcc432152f21cb2e5352e7270143babe` |
| 25 | `lemma` | [image_extremePoints](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/image-extremepoints.md) | 230 | `result-track:fb9140522d7e2a8c84b88be28e055dc3d60b06c12456fb53442997740a3cd264` |
| 26 | `theorem` | [mem_extremePoints_iff_forall_segment](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/mem-extremepoints-iff-forall-segment.md) | 248 | `result-track:056c64398453b92816f7830eb13083e184b6b6cfa63386d1cf333a50e9a560ab` |
| 27 | `theorem` | [Convex.mem_extremePoints_iff_convex_diff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/convex-mem-extremepoints-iff-convex-diff.md) | 259 | `result-track:c95fd65743859d5af20a76fd9658a7c6a1d60b04eba5ce25331381cc4f594e70` |
| 28 | `theorem` | [Convex.mem_extremePoints_iff_mem_diff_convexHull_diff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/convex-mem-extremepoints-iff-mem-diff-convexhull-diff.md) | 269 | `result-track:09dfc245381331a00e1f978a9ec643f19a3e75d38831e1793d52bf48c3b6ede8` |
| 29 | `theorem` | [extremePoints_convexHull_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/ExtremeMemExtremePointsIffLeft.lean/declarations/extremepoints-convexhull-subset.md) | 274 | `result-track:6db0b4b8cb75503597167eef4f356b6ae7b8a807107949fec77aac9dc1909eb9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c970e6b12d1b295eb75251c1b02a9ce7485045ed73281c43b23c6e8e4ac10fa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Extreme/Variant93b7b143c0fe03757d11fa4d309c5c650e6e12408302c72ec378095ed84927f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
