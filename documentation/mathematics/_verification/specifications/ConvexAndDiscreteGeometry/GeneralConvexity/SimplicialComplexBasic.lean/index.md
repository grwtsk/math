# Verification target: Simplicial Complex Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d9f7a9bd54d29e23d8056cafd410091d2b53bf9",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Basic/Variant83d3c34bf775fe1f1ced101cf56daa02b0f5d7bc52a37f1429b4f094ec9a29f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/index.md) · [Full source](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d9f7a9bd54d29e23d8056cafd410091d2b53bf9`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Basic/Variant83d3c34bf775fe1f1ced101cf56daa02b0f5d7bc52a37f1429b4f094ec9a29f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Basic/Variant83d3c34bf775fe1f1ced101cf56daa02b0f5d7bc52a37f1429b4f094ec9a29f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Hull` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Independent` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SimplicialComplex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/simplicialcomplex.md) | 56 | `declaration-track:216625e105e00385ee584836e12efb22bbec8e1d486328f31143ffd642ae9d96` |
| 2 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/instance-source-edition-2.md) | 77 | `declaration-track:841d7ef6e5a57369a9acd92e678cd291a0ddf47c8f0cd3fa5004824ca6225dc4` |
| 3 | `def` | [space](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/space.md) | 81 | `declaration-track:d510554aa9317f01ca87dc9faadeb9f6a5c667c79789d1183edb765072fb68a9` |
| 4 | `theorem` | [mem_space_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/mem-space-iff.md) | 85 | `result-track:da6e33707f2b2ae7c6f5ec30ba6499177a1bc01d4e8eb23d102432fe4ce9b60d` |
| 5 | `theorem` | [convexHull_subset_space](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/convexhull-subset-space.md) | 89 | `result-track:36b5b9db25f1aff5c34ca9f33a3309a307d9a920caa449ac8357778513fbeb61` |
| 6 | `theorem` | [subset_space](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/subset-space.md) | 93 | `result-track:bdcd12b41ac558bb3039394225bacb8859853a649e213971c3d932ae284f6f38` |
| 7 | `theorem` | [convexHull_inter_convexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/convexhull-inter-convexhull.md) | 96 | `result-track:35a8dd68474229860bf8bf3e0e2821c838816b4cfbd1b921e532fc37b0d6f8cc` |
| 8 | `theorem` | [disjoint_or_exists_inter_eq_convexHull](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/disjoint-or-exists-inter-eq-convexhull.md) | 105 | `result-track:5be88b455e143e57f268b5231a8c9421cbd959a34a34d58229c6ff976056d1b5` |
| 9 | `def` | [ofErase](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/oferase.md) | 118 | `declaration-track:21f30f9b1be2e2cc6c4f6be0bbb76f62c5961ac95219fe266b85949e66b59646` |
| 10 | `def` | [ofSubcomplex](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/ofsubcomplex.md) | 131 | `declaration-track:c9d214dc0dc35251c52c0608b3df1c0019d27723aa67bad0c86a60acc1459b05` |
| 11 | `def` | [vertices](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/vertices.md) | 143 | `declaration-track:ad6b25c49cd04c8cd4c14218b6c99669995940efe510e526e6de821666230da3` |
| 12 | `theorem` | [mem_vertices](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/mem-vertices.md) | 146 | `result-track:98567fbf65954bbd6323e9e6dc46cd38f910767fb60c73a0d5c8b287cbf16db2` |
| 13 | `theorem` | [vertices_eq](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/vertices-eq.md) | 148 | `result-track:4945f58b852b2aad491ff377940170fda423387ceff62002c98c752b139f032e` |
| 14 | `theorem` | [vertices_subset_space](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/vertices-subset-space.md) | 154 | `result-track:25df53c9854c79db8c4bdf854fb2f035dc82f59cbecef861d4901f6ff852ab9d` |
| 15 | `theorem` | [vertex_mem_convexHull_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/vertex-mem-convexhull-iff.md) | 157 | `result-track:b1040b1282d82a89f4c59a2444e59d896e27046298d68ec63041e173fb45e4e8` |
| 16 | `theorem` | [face_subset_face_iff](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/face-subset-face-iff.md) | 167 | `result-track:efa764979ca2d54bfbbdb1784aaa1794b20b132e2ca2cca6c291dfce9d3b6bee` |
| 17 | `def` | [facets](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/facets.md) | 179 | `declaration-track:caba6cfd9e1d11e4019e696cfda8311dc7216affdaaebb9abb0b31d0dcf605e0` |
| 18 | `theorem` | [mem_facets](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/mem-facets.md) | 182 | `result-track:9a5237ea27968b80c24f483415ee21e25e9d2ceeb2e6076335db3eea720a10dc` |
| 19 | `theorem` | [facets_subset](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/facets-subset.md) | 185 | `result-track:afbfe8df1a60be9a085caf5688d580f19ff91ef4f20395e478dcaf8c4f9ae7f4` |
| 20 | `theorem` | [not_facet_iff_subface](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/not-facet-iff-subface.md) | 187 | `result-track:2602b5746617e75aa7ca3667d1774b4e13dcff280dc4c324e385ea29730a429d` |
| 21 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/instance-source-edition-3.md) | 208 | `declaration-track:8761b83412bcb26bc2fd1020ccfc938c9ae8f37b6e750a3dfffb590bf3c7bdc1` |
| 22 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/instance.md) | 216 | `declaration-track:20442c80639aa1a6af9c3ed09ea4531de6619b31a7f2336cc76ccce337c0aff6` |
| 23 | `instance` | [hasBot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/hasbot.md) | 223 | `declaration-track:19b1b57bca74eaead4dee2340eb5ea6eaa0c85456cc97c0dda89ccc03a669ee9` |
| 24 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/instance-source-edition-4.md) | 230 | `declaration-track:8ff1121eeb1c243aed6e280d7819f54d77d50623de86962f3ad386064db13bec` |
| 25 | `instance` | [(anonymous)](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/instance-source-edition-5.md) | 233 | `declaration-track:d057bdc54b7673cb61d172d3db202f9162f96f6118dba2596a02e2d4c79f70b4` |
| 26 | `theorem` | [faces_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/faces-bot.md) | 238 | `result-track:1de6cca78564b1e9ddd6d19b385c166882ebe3be33b573137b64f0d6adb764ef` |
| 27 | `theorem` | [space_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/space-bot.md) | 240 | `result-track:40d8a462dc9e10ca883a2eb5eced7e400ced1e30d7b3ac2bceb6532841aab43f` |
| 28 | `theorem` | [facets_bot](../../../../../ConvexAndDiscreteGeometry/GeneralConvexity/SimplicialComplexBasic.lean/declarations/facets-bot.md) | 243 | `result-track:ab3a30b3c1755d6f4c3726b58e564a6ee6fdd584bb2ca8ed7a0c142753556fe0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce74f48d885d884c4336911e04b54f1df7eca79a9368532135b442a3e3de1744 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Basic/Variant83d3c34bf775fe1f1ced101cf56daa02b0f5d7bc52a37f1429b4f094ec9a29f4.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/Basic/Variant83d3c34bf775fe1f1ced101cf56daa02b0f5d7bc52a37f1429b4f094ec9a29f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
