# Verification target: Affine Add Torsor Bases Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d36115b5f0eb58a062e6483ab0c7e794b469b95",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d36115b5f0eb58a062e6483ab0c7e794b469b95`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean.json)

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
| 1 | `theorem` | [isOpenMap_barycentric_coord](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/isopenmap-barycentric-coord.md) | 43 | `result-track:3572333c85a197e37c2734eadb0d597d3b121b0aafe0d0cbbebda40b03a7bafa` |
| 2 | `theorem` | [continuous_barycentric_coord](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/continuous-barycentric-coord.md) | 52 | `result-track:1fa6a3c6537f624c1f6795ae7c314ecdf7b09aa26b7c79f3ce275032ab0d1219` |
| 3 | `theorem` | [AffineBasis.interior_convexHull](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/affinebasis-interior-convexhull.md) | 65 | `result-track:a28ab1b912bc68f94891381999e38f5bb0de06b14c8d4923436171ab7cb27120` |
| 4 | `theorem` | [IsOpen.exists_between_affineIndependent_span_eq_top](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/isopen-exists-between-affineindependent-span-eq-top.md) | 90 | `result-track:d3caef318bb0611a0aad3ccc521b75537b10b96edd63856d5345a68bb5f2ba1c` |
| 5 | `theorem` | [IsOpen.exists_subset_affineIndependent_span_eq_top](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/isopen-exists-subset-affineindependent-span-eq-top.md) | 117 | `result-track:109bed2324a02d551ca1d0d6133085acf529070e6ef3be4dc501a38d72afbe4a` |
| 6 | `theorem` | [IsOpen.affineSpan_eq_top](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/isopen-affinespan-eq-top.md) | 125 | `result-track:6572d2ff499e7c6e468735630718de9d62df3b5a624a0553f976d2bc08d4722e` |
| 7 | `theorem` | [affineSpan_eq_top_of_nonempty_interior](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/affinespan-eq-top-of-nonempty-interior.md) | 130 | `result-track:c20ef95795c6f00057351158b194250696bff67eb2f8ce31e99d937db1f4b6ca` |
| 8 | `theorem` | [AffineBasis.centroid_mem_interior_convexHull](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/affinebasis-centroid-mem-interior-convexhull.md) | 135 | `result-track:851efcb99333496203a9fd00899046d76862b9a5d38b1512895e224659df179e` |
| 9 | `theorem` | [interior_convexHull_nonempty_iff_affineSpan_eq_top](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/interior-convexhull-nonempty-iff-affinespan-eq-top.md) | 141 | `result-track:6c5d7005128b3b30f2d40aefdc53c341a66fc98f6c54e29870331a0db86bee52` |
| 10 | `theorem` | [Convex.interior_nonempty_iff_affineSpan_eq_top](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AffineAddTorsorBasesNamespacedPublic.lean/declarations/convex-interior-nonempty-iff-affinespan-eq-top.md) | 151 | `result-track:84bf4ce579a2e9b5b8728d691b1d56fbd6ba6936fc0c41ef04292969c3e11704` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c2b89567099a3906b37c65785a1010531de47b4fe02d61a4bc3219a59dd9094 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/AddTorsorBases/Variantf805446fe20bb049ed78ce85c0d27c9fe294d9fad38bc099d81a440bd9ff025d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
