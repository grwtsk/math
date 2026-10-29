# Verification target: Interior Boundary Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e44227a5404371d3fbe4b9cdd473abc69f26c393",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e44227a5404371d3fbe4b9cdd473abc69f26c393`.

Source path: `GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.LocalExtr.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.LocallyConvex.Separation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteriorPoint](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isinteriorpoint.md) | 95 | `declaration-track:759037a2d4469039b40f0aa9cdbcb61a650659fb3cd7f056fb0da2a626fa1069` |
| 2 | `def` | [IsBoundaryPoint](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isboundarypoint.md) | 100 | `declaration-track:5e27f2251080dc90437785a4f724307be47ec608a8680fd98fb7172f65294f3a` |
| 3 | `def` | [interior](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/interior.md) | 104 | `declaration-track:336cfdcc21e1187cb27ddb09594b48592a44ce2bb10dfe812f215f67b4d2520a` |
| 4 | `lemma` | [isInteriorPoint_iff](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isinteriorpoint-iff.md) | 106 | `result-track:f8f82f79626c7d840a6ace51dd0b26fed5f643938a72e38bb3aec44d9e577ee9` |
| 5 | `def` | [boundary](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundary.md) | 113 | `declaration-track:6f4f53d1d09b602645843cdcf0a0d6cc0c029cbd2eafa30b1d737a3d97efd1e1` |
| 6 | `lemma` | [isBoundaryPoint_iff](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isboundarypoint-iff.md) | 115 | `result-track:e6000e49a7ec4e73b7d23565476d424d147880ede909a95277736cd51eae7182` |
| 7 | `lemma` | [isInteriorPoint_or_isBoundaryPoint](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isinteriorpoint-or-isboundarypoint.md) | 119 | `result-track:7b5d4aa5878d6606a9fd7219274700bfc7bc7cb8d5a21c6c47103d62e292ff63` |
| 8 | `lemma` | [interior_union_boundary_eq_univ](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/interior-union-boundary-eq-univ.md) | 125 | `result-track:47fbe363c74dfb5dce51ddbdfbe4f39e59691ac2bff6752460d06c0174d4d4b3` |
| 9 | `lemma` | [disjoint_interior_boundary](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/disjoint-interior-boundary.md) | 129 | `result-track:cb9818d35928fb58cdfe17afd5aa2d0deac5636071341de1660d6cbc6cbfc34c` |
| 10 | `lemma` | [isInteriorPoint_iff_not_isBoundaryPoint](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isinteriorpoint-iff-not-isboundarypoint.md) | 137 | `result-track:63c69193404b4fe3c8a5a22a063bf8badb4ec4de372564c25377ca7ba657be23` |
| 11 | `lemma` | [isBoundaryPoint_iff_not_isInteriorPoint](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isboundarypoint-iff-not-isinteriorpoint.md) | 146 | `result-track:893b4dd2adc269d3dbc8c02da3c1feda7dfcb3d7d3e88f4babbb581471c03d93` |
| 12 | `lemma` | [compl_interior](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/compl-interior.md) | 151 | `result-track:6c6d9aad0b8e41bbb3a072b28b6a1b5bc66ed74b1ce4b162ccb19fbd7aee506b` |
| 13 | `lemma` | [compl_boundary](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/compl-boundary.md) | 156 | `result-track:8535c57bcebb4311ea6a381883469944ec6c188578fa9a1e1c0966bbf7993e8c` |
| 14 | `lemma` | [_root_.range_mem_nhds_isInteriorPoint](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/root-range-mem-nhds-isinteriorpoint.md) | 159 | `result-track:7a5fdef9fccd09157bce441ce58169c7912cfac5f141175f441b2a5cb44ae467` |
| 15 | `class` | [_root_.BoundarylessManifold](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/root-boundarylessmanifold.md) | 166 | `declaration-track:9945be52976bb64367e30820179a5a1ffe974ae72b10d544b09898abd1262191` |
| 16 | `instance` | [(anonymous)](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/instance.md) | 176 | `declaration-track:bb2ed175bfb9bfa1533b84a7dced9bff28dd7bd745e488dec12a65864d84f425` |
| 17 | `instance` | [BoundarylessManifold.of_empty](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundarylessmanifold-of-empty.md) | 186 | `declaration-track:0af668800e4c73b0a432dcc1866ecfae620b64495fbfc3c578c7f8e23d89fa2d` |
| 18 | `lemma` | [_root_.BoundarylessManifold.isInteriorPoint](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/root-boundarylessmanifold-isinteriorpoint.md) | 189 | `result-track:933849e389965a241c5cf6be2186281f5bee2f100aec69645ddfa2f7cc747f70` |
| 19 | `lemma` | [interior_eq_univ](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/interior-eq-univ.md) | 193 | `result-track:78b29abc05da605a2a5c209b1e0b61e9f706d1782bb3b4aa7a43dabe52ad7398` |
| 20 | `lemma` | [Boundaryless.boundary_eq_empty](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundaryless-boundary-eq-empty.md) | 197 | `result-track:fcff3f0067144b770f0438014a03e238348133546a2804ecc2718db302d86c3d` |
| 21 | `instance` | [(anonymous)](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/instance-source-edition-2.md) | 200 | `declaration-track:d2612c27bc8dab6d316dfc7fc6f6677f3feace18ad220224a683abe11271f594` |
| 22 | `lemma` | [Boundaryless.iff_boundary_eq_empty](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundaryless-iff-boundary-eq-empty.md) | 204 | `result-track:ee14f58eac0301151659096d84f25a264fb41d9d398649ba851b9229196f5742` |
| 23 | `lemma` | [Boundaryless.of_boundary_eq_empty](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundaryless-of-boundary-eq-empty.md) | 213 | `result-track:0094e03befbf7daf0781ec33185e136d7c8a6903bc218191109ea9cf1e143fae` |
| 24 | `lemma` | [_root_.DifferentiableAt.mem_interior_convex_of_surjective_fderiv](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/root-differentiableat-mem-interior-convex-of-surjective-fderiv.md) | 223 | `result-track:c24fbdf36bf76b6bf8f720a4d9a317cad9658d728612c89b7815cb556a27c38c` |
| 25 | `lemma` | [mem_interior_range_of_mem_interior_range_of_mem_atlas](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/mem-interior-range-of-mem-interior-range-of-mem-atlas.md) | 256 | `result-track:d883561f85cb6b71b6cd03b9efafaa5acdb7d986f7236e01a9147606557fd2c4` |
| 26 | `lemma` | [mem_interior_range_iff_of_mem_atlas](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/mem-interior-range-iff-of-mem-atlas.md) | 293 | `result-track:78267f613f65676eead764bcc2ff1907f4cf1d11f2c64be0de16922dac07c851` |
| 27 | `lemma` | [isInteriorPoint_iff_of_mem_atlas](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isinteriorpoint-iff-of-mem-atlas.md) | 302 | `result-track:a6a63d9081ada3e41f34a00e7471f3d85ab579573c13f271d550d08961c65345` |
| 28 | `lemma` | [isBoundaryPoint_iff_of_mem_atlas](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isboundarypoint-iff-of-mem-atlas.md) | 312 | `result-track:78608698659f667f5b97e7e2ca9b02ff96d59312f2894113cc9933daa98a777a` |
| 29 | `lemma` | [isOpen_interior](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isopen-interior.md) | 322 | `result-track:adc0deaf253ba7f9e276aeecf51bc0e280378a4958ee3900cd1ce206f1597dbe` |
| 30 | `lemma` | [isClosed_boundary](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isclosed-boundary.md) | 331 | `result-track:c06f93c5e19223a065b787891b97970bc47bfb1439a496c850debc10b7ad6594` |
| 31 | `lemma` | [MDifferentiableAt.isInteriorPoint_of_surjective_mfderiv](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/mdifferentiableat-isinteriorpoint-of-surjective-mfderiv.md) | 352 | `result-track:5c4bd85efa9446f87f2e44e154d3e56f23639bb3c46c5e9e549f55cb21eef33a` |
| 32 | `lemma` | [IsLocalDiffeomorphAt.isInteriorPoint_iff](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/islocaldiffeomorphat-isinteriorpoint-iff.md) | 384 | `result-track:4c2592c903a9872e43680b53ecb84aee8e06a6ef1c61b73a77ae0add6679557d` |
| 33 | `lemma` | [IsLocalDiffeomorphAt.isBoundaryPoint_iff](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/islocaldiffeomorphat-isboundarypoint-iff.md) | 393 | `result-track:1c6d94b363087c45fbb9fa7c7b4ac6b3e8f0221fd5cdcc59696400973f238ddc` |
| 34 | `lemma` | [IsLocalDiffeomorphOn.preimage_interior_inter](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/islocaldiffeomorphon-preimage-interior-inter.md) | 398 | `result-track:6ea4c7806f12ea285068a197278c73653377bc09058525a4cf3afca65856badc` |
| 35 | `lemma` | [IsLocalDiffeomorphOn.preimage_boundary_inter](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/islocaldiffeomorphon-preimage-boundary-inter.md) | 403 | `result-track:53edf866c1f320fe438b256b79123d848773d0f176526e5b717b2e50c735e6b7` |
| 36 | `lemma` | [IsLocalDiffeomorph.preimage_interior](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/islocaldiffeomorph-preimage-interior.md) | 408 | `result-track:2c3e53c251f479bd2bc856efb16b1ddd0b4c862b343e3287585fa3f09888c6dd` |
| 37 | `lemma` | [IsLocalDiffeomorph.preimage_boundary](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/islocaldiffeomorph-preimage-boundary.md) | 412 | `result-track:da6968e0a4f51afd851d686f235703bcd2b0e71d88b894f27b01912c58b4790c` |
| 38 | `lemma` | [IsLocalDiffeomorph.boundarylessManifold](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/islocaldiffeomorph-boundarylessmanifold.md) | 416 | `result-track:da6d9835a6f2bd0296b582a74e6c1fd35abe7d3607e7d59e4adfc6c4419e310d` |
| 39 | `lemma` | [Diffeomorph.preimage_interior](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/diffeomorph-preimage-interior.md) | 421 | `result-track:add7549fc39505b992218c34c0a0fab3670e670ff45e30b03107e7df23b9a3b2` |
| 40 | `lemma` | [Diffeomorph.preimage_boundary](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/diffeomorph-preimage-boundary.md) | 425 | `result-track:9c5c02b47f319a2e23c6828210d0fbae281071ca66aa5ab5c602e2474362521a` |
| 41 | `lemma` | [Diffeomorph.image_interior](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/diffeomorph-image-interior.md) | 429 | `result-track:ce7a2df21b6edbdbf9da3c1d597849e4a31b906dd36ede64a7f84241fb7b4e89` |
| 42 | `lemma` | [Diffeomorph.image_boundary](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/diffeomorph-image-boundary.md) | 433 | `result-track:37e59f836ea7ea378bd345557651201c6ac60f0d02000f9f3ebdd2aca610f5dc` |
| 43 | `lemma` | [Diffeomorph.boundarylessManifold](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/diffeomorph-boundarylessmanifold.md) | 437 | `result-track:a16cfc3adc4e15e39d3dbd25e9aa1619f83ee76360f685319cf917fb078d5600` |
| 44 | `lemma` | [Diffeomorph.boundarylessManifold_iff](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/diffeomorph-boundarylessmanifold-iff.md) | 441 | `result-track:f6f368f2e30a768e3e1dd5c5a31ba433bd6467b7c71c3321c1774069bdb8627b` |
| 45 | `lemma` | [isInteriorPoint_iff_isInteriorPoint_val](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isinteriorpoint-iff-isinteriorpoint-val.md) | 455 | `result-track:4ae7a4889a10f479ee03bb4c814dc8d3cc4f1fc6c586fbc6999ea2636a367351` |
| 46 | `lemma` | [isBoundaryPoint_iff_isBoundaryPoint_val](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isboundarypoint-iff-isboundarypoint-val.md) | 462 | `result-track:2e9ac3a839d88caa61849db6613ed3dd457074d4916ecdec5d1be5a2b726e3ae` |
| 47 | `lemma` | [interior_open](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/interior-open.md) | 468 | `result-track:1291e9203fe8a429e885c4230d5ce0b8ace30c0f2788e7a77286df49caf81e62` |
| 48 | `lemma` | [boundary_open](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundary-open.md) | 472 | `result-track:0c82bd3fcfd61d4ea0b302698b88c3e23eff25fba3f3d666b31680fb04b7cbb4` |
| 49 | `instance` | [BoundarylessManifold.open](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundarylessmanifold-open.md) | 476 | `declaration-track:fff0d3941aa4b7a8493252c32dcc3f76629bda02d6c5e5423c718296269d6761` |
| 50 | `lemma` | [interior_prod](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/interior-prod.md) | 492 | `result-track:cebd4e7aad1d4523e45759e2b9c9590ab6b95fd09e54269b305ef226069963c2` |
| 51 | `lemma` | [boundary_prod](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundary-prod.md) | 508 | `result-track:ea28f8ac14376e640b20cc7192e1ac34fec4b800028963dde7b8909137f09117` |
| 52 | `lemma` | [boundary_of_boundaryless_left](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundary-of-boundaryless-left.md) | 518 | `result-track:72344e6ce87beac2f1f7938f2b99e316c4062bf11e26d9d1451596bffa96508b` |
| 53 | `lemma` | [boundary_of_boundaryless_right](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundary-of-boundaryless-right.md) | 525 | `result-track:d4662515a9f900de77ddb538d21a8d52ba25de331a8c8489e127b713dbdab7fa` |
| 54 | `instance` | [BoundarylessManifold.prod](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundarylessmanifold-prod.md) | 532 | `declaration-track:c5a400b327a745830f44e7fd7eada7d62653e724853e567bd66145b3b1bbc931` |
| 55 | `lemma` | [interiorPoint_inl](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/interiorpoint-inl.md) | 549 | `result-track:3c44a8f4ed6bc386c936e1f049b002848590196f2835101cbcb460e9ceb0c1ad` |
| 56 | `lemma` | [boundaryPoint_inl](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundarypoint-inl.md) | 556 | `result-track:3bf721917eec3be84cd62f44c43149a3021f3e7584831fa4ddaab7fa605f1eb2` |
| 57 | `lemma` | [interiorPoint_inr](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/interiorpoint-inr.md) | 563 | `result-track:9b11cfeb7cb83961a23482f654f5a9f1e5b337c4a16635aa0ec600179f0bd70f` |
| 58 | `lemma` | [boundaryPoint_inr](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundarypoint-inr.md) | 570 | `result-track:48e617d787d8ebdb3477d62aef5333da1b363de92d7cfb74832fd84e97e247fc` |
| 59 | `lemma` | [isInteriorPoint_disjointUnion_left](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isinteriorpoint-disjointunion-left.md) | 579 | `result-track:6f3d4f7872049d829b4eb691c3b73ad1d5ea6aea448675916787116ec841c600` |
| 60 | `lemma` | [isInteriorPoint_disjointUnion_right](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/isinteriorpoint-disjointunion-right.md) | 583 | `result-track:4e16a02ff3d35bab9cebdf6544239782bcb1be2a314bc45b54025b4fe907ef5d` |
| 61 | `lemma` | [interior_disjointUnion](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/interior-disjointunion.md) | 587 | `result-track:9fdf033367a7f347f84d88918396f9a3c15c55411a1280d41b854835a886c76a` |
| 62 | `lemma` | [boundary_disjointUnion](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundary-disjointunion.md) | 594 | `result-track:267151a271e3af47920be60f22ae9a952385898eab033cd7c9567c199a93c468` |
| 63 | `instance` | [boundaryless_disjointUnion](../../../../DifferentialGeometry/InteriorBoundaryPublic.lean/declarations/boundaryless-disjointunion.md) | 600 | `declaration-track:f94e7bd1b16e1c58abc81ad538bb41919f59f1d1844b5ddd3c434844ceb33afe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b1c300671d0183c8bc7e540efc32a62009b76abda28771f3cd86bbb4ab909c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean","GRWTSK/_verification/specifications/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
