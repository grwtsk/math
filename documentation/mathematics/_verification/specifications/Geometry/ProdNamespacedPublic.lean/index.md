# Verification target: Prod Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64c3940ff2f97583a8ca30202242d03282266dbd",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Prod/Variantb58ca8b8673ae907998ebe56e17eb92b786ca56a328ba076c2e2281b933015ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/ProdNamespacedPublic.lean/index.md) · [Full source](../../../../Geometry/ProdNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64c3940ff2f97583a8ca30202242d03282266dbd`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Prod/Variantb58ca8b8673ae907998ebe56e17eb92b786ca56a328ba076c2e2281b933015ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Prod/Variantb58ca8b8673ae907998ebe56e17eb92b786ca56a328ba076c2e2281b933015ac.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../Geometry/ProdNamespacedPublic.lean/declarations/instance.md) | 34 | `declaration-track:03b9624797dba0a8ece6366d9a833398681bfdb881ec2486a93c153074701964` |
| 2 | `lemma` | [fst_sConvexComb](../../../../Geometry/ProdNamespacedPublic.lean/declarations/fst-sconvexcomb.md) | 40 | `result-track:0e7ff5d531b8cd3dfb1fc643097713b3a3303ab084c25d190192f8b4a11dc055` |
| 3 | `lemma` | [snd_sConvexComb](../../../../Geometry/ProdNamespacedPublic.lean/declarations/snd-sconvexcomb.md) | 43 | `result-track:365c64cad18d4288cda2102ae091b7048ca60c90b5edc539fe60ba029500162d` |
| 4 | `lemma` | [isAffineMap_fst](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-fst-source-edition-2.md) | 46 | `result-track:808998c6a3d4b8fb4ee072d3638e80e970212b21795a40b58d71ed2531b85a23` |
| 5 | `lemma` | [isAffineMap_snd](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-snd-source-edition-2.md) | 49 | `result-track:f66227588613018fd88c24fe6492477a43506f3f9772cf966ceb528fb785451d` |
| 6 | `lemma` | [fst_iConvexComb](../../../../Geometry/ProdNamespacedPublic.lean/declarations/fst-iconvexcomb.md) | 52 | `result-track:3e7089ef90259d131be5ac5801fe6170da4f50cd3723600683cab34c37b60ce5` |
| 7 | `lemma` | [snd_iConvexComb](../../../../Geometry/ProdNamespacedPublic.lean/declarations/snd-iconvexcomb.md) | 57 | `result-track:d42ab106271106a0bc3419e9be711ec3a641146e87e7513fb98d19ecc8c17e2c` |
| 8 | `lemma` | [fst_convexCombPair](../../../../Geometry/ProdNamespacedPublic.lean/declarations/fst-convexcombpair.md) | 62 | `result-track:7db4d8a44764819f434784753917ffffd6c6e250e76566f86c08beac907c0f11` |
| 9 | `lemma` | [snd_convexCombPair](../../../../Geometry/ProdNamespacedPublic.lean/declarations/snd-convexcombpair.md) | 67 | `result-track:5d36b3340ea4c39ad7a78023b5a91b063979f001ba3327f0c947a30e47b2a8ad` |
| 10 | `instance` | [(anonymous)](../../../../Geometry/ProdNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 71 | `declaration-track:734f07fcb7bdb794bb1f5563e5b1e5737bb0691e1f402a42d6410d6980f13b94` |
| 11 | `instance` | [(anonymous)](../../../../Geometry/ProdNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 83 | `declaration-track:391b1521a1a445141dd993f59683ca4d98fa4b1124957bfb5d94bca72fd345bb` |
| 12 | `lemma` | [sConvexComb_apply](../../../../Geometry/ProdNamespacedPublic.lean/declarations/sconvexcomb-apply.md) | 89 | `result-track:1e9d742df070c1cf0992c9b596c6a2a11cb0a73071f669fef48bf8fe0ef8f787` |
| 13 | `lemma` | [isAffineMap_eval](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-eval-source-edition-3.md) | 93 | `result-track:c183c7138ea93a1ef21eb574b6106a7e3e81e964454b09d5309deeaea6839267` |
| 14 | `lemma` | [iConvexComb_apply](../../../../Geometry/ProdNamespacedPublic.lean/declarations/iconvexcomb-apply-source-edition-2.md) | 97 | `result-track:94b4126b9bcacc02dcca81bd5849aae7fcc2632fdd31280c1469a12573b6b050` |
| 15 | `lemma` | [convexCombPair_apply](../../../../Geometry/ProdNamespacedPublic.lean/declarations/convexcombpair-apply-source-edition-2.md) | 101 | `result-track:b90e1918e8c2107a37534dd937e95ba63fb159b2b2352673f957e61ba6528fd7` |
| 16 | `instance` | [(anonymous)](../../../../Geometry/ProdNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 105 | `declaration-track:8e0bad8815ad59e01991832052d1d722c39d1936331a48de4bccb0329dc64011` |
| 17 | `instance` | [(anonymous)](../../../../Geometry/ProdNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 114 | `declaration-track:2504b512c02cb1e2ba0a1ef438ac0ab4d211a70384ac343eec945eb87d6a47a3` |
| 18 | `lemma` | [sConvexComb_apply](../../../../Geometry/ProdNamespacedPublic.lean/declarations/sconvexcomb-apply-source-edition-2.md) | 125 | `result-track:2b3205401b481a107bf8a2bacf9f6f5f64956c01515583a085c4da9074f6742b` |
| 19 | `lemma` | [isAffineMap_eval](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-eval-source-edition-2.md) | 129 | `result-track:bcfe9f556f24dc1f4d3c83c8cf93bed6dc678c19a9a8b8b3da6f9fe829a961e6` |
| 20 | `lemma` | [iConvexComb_apply](../../../../Geometry/ProdNamespacedPublic.lean/declarations/iconvexcomb-apply.md) | 133 | `result-track:2af0bbc9e95b626569c977727e2282dd28371996618f912b8b95ebf015f8d81f` |
| 21 | `lemma` | [convexCombPair_apply](../../../../Geometry/ProdNamespacedPublic.lean/declarations/convexcombpair-apply.md) | 137 | `result-track:8234c7bacaf2e95e4f29007dc43f1cc3d05ab57e70e1d06479dd9a592ec1e882` |
| 22 | `instance` | [(anonymous)](../../../../Geometry/ProdNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 141 | `declaration-track:0758c9df6cebe1d10fb8ead0de40d2bfe9b9e1e350565ddd9a4720abe0ad38a9` |
| 23 | `lemma` | [IsAffineMap.prodMk](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-prodmk.md) | 153 | `result-track:6781e50d9b577f0c360d89af0fe32bd6a5b8b7395780b64b4ebef34af45b72a4` |
| 24 | `lemma` | [IsAffineMap.fst](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-fst.md) | 158 | `result-track:7e3290f0e7918dcb927cdd6ce1c3e649478279b2d737b8100683dbc17e902c88` |
| 25 | `lemma` | [IsAffineMap.snd](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-snd.md) | 162 | `result-track:398de1171c89aabffc851098a43fac6294ad1bcf1f0203ef5c7a619d4fe165ef` |
| 26 | `lemma` | [isAffineMap_prod_iff](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-prod-iff.md) | 165 | `result-track:34b00401943126d896bd71d2e08139d9f32a16b6cd7bd761c1b9aaeedb066d6f` |
| 27 | `lemma` | [isAffineMap_prodMk_iff](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-prodmk-iff.md) | 170 | `result-track:5d524f063d6fc52325a32ff0802e33adb52b7ee365d0e15f4a446340e5b3045e` |
| 28 | `lemma` | [IsAffineMap.pi](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-pi.md) | 179 | `result-track:05f36e5aa009e629d6493edd2fcd2c087ca5f9f8338779c8755d580cc95096c3` |
| 29 | `lemma` | [IsAffineMap.eval](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-eval.md) | 182 | `result-track:ac6b8408c2aadbab5662296e71974affaf2a1f52b8a274bed5023901c39c43b3` |
| 30 | `lemma` | [isAffineMap_pi_iff](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-pi-iff.md) | 185 | `result-track:0f6d178dba091c6e0fd39884c2f062677c4ab78b7cb3e7d0ecec883bfacb09dc` |
| 31 | `lemma` | [IsAffineMap.finsupp](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-finsupp.md) | 194 | `result-track:346f3123aa5a0c3667c1e8a3c98c41004dd979266b494f4296c77521b719be8f` |
| 32 | `lemma` | [IsAffineMap.finsuppEval](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-finsuppeval.md) | 197 | `result-track:e4ce353a568281a176c8a654a9e70cc3d9b3572db5b15cf40fce0a7d6ac0cc0f` |
| 33 | `lemma` | [isAffineMap_finsupp_iff](../../../../Geometry/ProdNamespacedPublic.lean/declarations/isaffinemap-finsupp-iff.md) | 200 | `result-track:dba13bc8096d218a21c59130e912836d6e6245a51dadee3e44013fb81c60c9a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a0c553549fe07385c6fc5e848db11e45af41817d5084c2d345366ded3b5bf79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ConvexGeometry/Prod/Variantb58ca8b8673ae907998ebe56e17eb92b786ca56a328ba076c2e2281b933015ac.lean","GRWTSK/_verification/specifications/Geometry/ConvexGeometry/Prod/Variantb58ca8b8673ae907998ebe56e17eb92b786ca56a328ba076c2e2281b933015ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
