# Verification target: Signed Dist Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0dbe733a59b643b86bf6c5189ffa0d1fd387a4f",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/index.md) · [Full source](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0dbe733a59b643b86bf6c5189ffa0d1fd387a4f`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean.json)

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
| 1 | `def` | [signedDist](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist.md) | 49 | `declaration-track:55dab4a2f736a5c53546e1b00af47be48a2abd2b7c3f7998bbfa842ef1eb3292` |
| 2 | `lemma` | [signedDist_apply](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-apply.md) | 64 | `result-track:3e7f7933a8af43854f5ec3a7bd89320cd8c05d08826aeff477e0c80ccdd18237` |
| 3 | `lemma` | [signedDist_apply_apply](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-apply-apply.md) | 68 | `result-track:24d830dc5d4a117b1b42a7c6f7d61c90a5632d6b5ea911ab991a997e29a3a18c` |
| 4 | `lemma` | [signedDist_apply_linear](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-apply-linear.md) | 71 | `result-track:bcc33dd69c2a2479fb80f958e8d882a067bd89967ae2fd0798a574094040597f` |
| 5 | `lemma` | [signedDist_apply_linear_apply](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-apply-linear-apply.md) | 75 | `result-track:5317e0746f4d7e77a556f89a8e0f515f6ea67e365e4d7bcae687f0892d1eba6d` |
| 6 | `lemma` | [signedDist_linear_apply](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-linear-apply.md) | 78 | `result-track:dcaca4ad9490f7fb0fc8d0284f682385608e7c7adfb51f433d580bcf059a3fc3` |
| 7 | `lemma` | [signedDist_linear_apply_apply](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-linear-apply-apply.md) | 81 | `result-track:eee5d004ea71e3aaeed6f68f5cac31fcf422efcdea99c474fa855af7fe9e13e1` |
| 8 | `lemma` | [signedDist_smul](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-smul.md) | 86 | `result-track:4706ecfa36910395cb95ea791d71fcb26dbc974ee6b46d59d9be4fc860a3ae93` |
| 9 | `lemma` | [signedDist_smul_of_pos](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-smul-of-pos.md) | 90 | `result-track:00ff506422e53a389c9bc3d1d24952d4b4cbae0e0582837eea0c76cf7ba2e920` |
| 10 | `lemma` | [signedDist_smul_of_neg](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-smul-of-neg.md) | 93 | `result-track:3b64afcc346d0094518fc83f98fd865800d3628c5b1e3c6674a3677756cd82ee` |
| 11 | `lemma` | [signedDist_zero](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-zero.md) | 96 | `result-track:72a864eade7fb2a53f52357567bda85525d9c1f50b57d4aec6de6885cd84ac42` |
| 12 | `lemma` | [signedDist_neg](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-neg.md) | 99 | `result-track:9187f174d641ef4dee42bc69a0cf3f4e4534e5e219d32c66fad147ef193594a2` |
| 13 | `lemma` | [signedDist_congr](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-congr.md) | 102 | `result-track:4933bf3fa0ccd4d45ce3bb2fc7adf464c72d5c6b10315f24c0929ed40a1d60ac` |
| 14 | `lemma` | [signedDist_self](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-self.md) | 109 | `result-track:2b66cea63955a93a0065f9e3a112f8ced0881398d8199d2571b45b372f52be0f` |
| 15 | `lemma` | [signedDist_anticomm](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-anticomm.md) | 112 | `result-track:651279213f8e837f84e570a0ee64a43bf82ef524b7a78916d4e3d2edead73bfd` |
| 16 | `lemma` | [signedDist_triangle](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-triangle.md) | 116 | `result-track:2f6e43a647f7604e269296a12f27fd5e82c5fdd71760109b1de11e7cc9e912ed` |
| 17 | `lemma` | [signedDist_triangle_left](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-triangle-left.md) | 121 | `result-track:21388c399b21f9704a8019e015213f2b178963a5591a0a9c902a7def2c91e8c8` |
| 18 | `lemma` | [signedDist_triangle_right](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-triangle-right.md) | 125 | `result-track:acf1f3afe5878789dbc7c86fd2a23ba6387b4b9246c2784451ce6753717bf652` |
| 19 | `lemma` | [signedDist_vadd_left](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-vadd-left.md) | 130 | `result-track:d66ea874ae349cf7148d560e5ac2aecec9c0de10625de619aad3952d1ee935e4` |
| 20 | `lemma` | [signedDist_vadd_right](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-vadd-right.md) | 133 | `result-track:94b064bbfe34c5a17fa259b169d0b57d9b807b115913f5ac6b281375799524e0` |
| 21 | `lemma` | [signedDist_vadd_left_swap](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-vadd-left-swap.md) | 137 | `result-track:ac69df534830493e308799d4ed17f4a690bcd86f6a4ca7d7d0149779417e528d` |
| 22 | `lemma` | [signedDist_vadd_right_swap](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-vadd-right-swap.md) | 140 | `result-track:d75bef42b3fa90a52202e590f05ba34b162c7e78ba47c6a8d2b0b2cbb537d401` |
| 23 | `lemma` | [signedDist_vadd_vadd](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-vadd-vadd.md) | 143 | `result-track:e0b87d3209e16755dde9021890ea0d855278f8ddd007267b30331b1cf193130a` |
| 24 | `lemma` | [signedDist_left_congr](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-left-congr.md) | 147 | `result-track:b057e82f7d0bbf2d3a9b166309a78924d8e68ff410bc298d24768ab5c1f3414e` |
| 25 | `lemma` | [signedDist_right_congr](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-right-congr.md) | 152 | `result-track:008a30d3d19579dd2f347772b428add26b5c46ec0988fee4947e5efdcbb4a9d9` |
| 26 | `lemma` | [signedDist_eq_zero_of_orthogonal](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-eq-zero-of-orthogonal.md) | 156 | `result-track:7d37f985f05d47e2429f6f524185e41d2dbaaebebf42f1f556a8c726fe067bce` |
| 27 | `lemma` | [abs_signedDist_le_dist](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/abs-signeddist-le-dist.md) | 161 | `result-track:5529e2438e06a1f9471b7821a114a6964d736390e936f2fd1f685f33b3ea1643` |
| 28 | `lemma` | [signedDist_le_dist](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-le-dist.md) | 168 | `result-track:898f3f0d3528727175a42bcd2f714520189642e93cff601324766d0c4ef448c8` |
| 29 | `lemma` | [abs_signedDist_eq_dist_iff_vsub_mem_span](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/abs-signeddist-eq-dist-iff-vsub-mem-span.md) | 171 | `result-track:9e605d6bc73309b9504fad252daf5dfc622ce4bfd1b26f80e87e898d9990ccb9` |
| 30 | `lemma` | [signedDist_eq_dist_iff_vsub_mem_span](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-eq-dist-iff-vsub-mem-span.md) | 183 | `result-track:aed3733eff14a6de04026fe05450dcb5eabcbced612be61abbc55beeb51c2d67` |
| 31 | `lemma` | [signedDist_vsub_self](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-vsub-self.md) | 200 | `result-track:8321c1b1737fcb33fdbea06f8df3b316ad46cdb751ccd0889e6e803ecbf78d6f` |
| 32 | `lemma` | [signedDist_vsub_self_rev](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-vsub-self-rev.md) | 204 | `result-track:b4703a39ab78fe8dea0633ddb584d46d3957fb4705f23331916620e7b3684256` |
| 33 | `lemma` | [signedDist_lineMap_lineMap](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-linemap-linemap.md) | 208 | `result-track:1d5a4479fd2c047206186a3d10bdfff61266535c17658127b27671640786e837` |
| 34 | `lemma` | [signedDist_lineMap_left](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-linemap-left.md) | 215 | `result-track:dbe8752fda8787a843e2685330af70b9ccf3004345e7f70b135b4c4ff086002c` |
| 35 | `lemma` | [signedDist_left_lineMap](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-left-linemap.md) | 219 | `result-track:cd200f32c2ef3eb1b347e49d5dae7e56a286c6ec2a79e6700e6f5fe487d600b3` |
| 36 | `lemma` | [signedDist_lineMap_right](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-linemap-right.md) | 223 | `result-track:c6424046e8809c8433587acfff9b38e15770a9240ffa09702c69b7698da0747e` |
| 37 | `lemma` | [signedDist_right_lineMap](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signeddist-right-linemap.md) | 227 | `result-track:46d3d7ba95d3072c8d9f3dd3a7ca31a91df28142f7571012545fda270564a6ae` |
| 38 | `def` | [signedInfDist](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-source-edition-2.md) | 241 | `declaration-track:dbc97920933df8cc9444c544bd6073de84c2403be3f5502e2babcd40e20d9e42` |
| 39 | `lemma` | [signedInfDist_def](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-def.md) | 244 | `result-track:feb7ffb23bb722886fc4ffe385820dda885da212509ea831d32c013e7f788a10` |
| 40 | `lemma` | [signedInfDist_eq_signedDist_of_mem](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-eq-signeddist-of-mem.md) | 249 | `result-track:62a6e003debbda3ea9608242008d6c19a37714b0c7a0f3980736875ff4454c32` |
| 41 | `lemma` | [signedInfDist_eq_signedDist_orthogonalProjection](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-eq-signeddist-orthogonalprojection.md) | 256 | `result-track:0b47455b5eda72bad12e7e0c8e89e485aada8e850c9efbaf77720efed1c0d000` |
| 42 | `lemma` | [signedInfDist_apply_self](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-apply-self-source-edition-2.md) | 260 | `result-track:f91c4ab7eb77385a5aebfa4946c1c5d0193b3824ecf6bc8fd8b3c26f28eaa3e8` |
| 43 | `lemma` | [signedInfDist_apply_of_mem](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-apply-of-mem.md) | 264 | `result-track:380d17f25980894cb51cc76e60d40f58f466f5a76e631277b9f64da2e4539c7e` |
| 44 | `lemma` | [signedInfDist_eq_const_of_mem](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-eq-const-of-mem.md) | 268 | `result-track:9e3fb45c7564c11f7e2513a740f5f8e436b907edb6121aafeb08f301a9617755` |
| 45 | `lemma` | [abs_signedInfDist_eq_dist_of_mem_affineSpan_insert](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/abs-signedinfdist-eq-dist-of-mem-affinespan-insert.md) | 274 | `result-track:30077f4e632606b2598a52903e506bb38aabf164195565c1335831cfdd75707a` |
| 46 | `lemma` | [signedInfDist_singleton](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-singleton.md) | 282 | `result-track:b15804baa9c9ce1b6407879caed7f807b405098e0a95a37482e2ca9958764353` |
| 47 | `def` | [signedInfDist](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist.md) | 299 | `declaration-track:0ac51a994d14fbc0c71bf100ee5c542015efe554ef0287d6d09eca16099e7388` |
| 48 | `lemma` | [signedInfDist_reindex](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-reindex.md) | 302 | `result-track:a5c8e7c70eb193a8fc53b9d3eabc8984259bc068865c5a2b8b0881f0ae0a5fe8` |
| 49 | `lemma` | [signedInfDist_apply_self](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-apply-self.md) | 307 | `result-track:bfaaac8306d9ff8b133081ac7336491874a938e913f044f569fa13e6fd21b9dd` |
| 50 | `lemma` | [signedInfDist_apply_of_ne](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-apply-of-ne.md) | 313 | `result-track:c2fb653389639b498c8d742c9dbd1c05fb899a2385ef2c24d818693b3f834e6f` |
| 51 | `lemma` | [signedInfDist_affineCombination](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/signedinfdist-affinecombination.md) | 317 | `result-track:d13e4bfb6355aad7c871645ebb57e1f474e74da911607c5307e6157293ec41ed` |
| 52 | `lemma` | [abs_signedInfDist_eq_dist_of_mem_affineSpan_range](../../../../../Geometry/RealAndComplexGeometry/SignedDistPublic.lean/declarations/abs-signedinfdist-eq-dist-of-mem-affinespan-range.md) | 333 | `result-track:264ad9fb616ef7eb3fe9a05e67c5d9b1d12ba1eecab9d6fa70d29a4aab9a62b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a636a400ccfbcc914b43d8ede12337063ffb801957cb05da138f824f3067d49e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/SignedDist/Varianta7c6d63629ab6829490c8059fa2d38517e226b3a07be0d7403ca3528e2a13ed7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
