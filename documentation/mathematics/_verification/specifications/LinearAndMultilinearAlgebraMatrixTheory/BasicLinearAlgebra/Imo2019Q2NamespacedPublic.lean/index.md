# Verification target: Imo2019 Q2 Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1edca6d2bfbfc9ce732ad85a40085e94421487c9",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1edca6d2bfbfc9ce732ad85a40085e94421487c9`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean.json)

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
| 1 | `structure` | [Imo2019q2Cfg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/imo2019q2cfg.md) | 87 | `declaration-track:57ded91189ab9d52a4c077973ef786d008a50dc27cdcc122e771b85d97340839` |
| 2 | `def` | [symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/symm-source-edition-2.md) | 114 | `declaration-track:c6251d168d3b5b5310229e4c5a82c863f429c3d056c2763938a4aa31c97575b4` |
| 3 | `theorem` | [A_ne_B](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-ne-b-source-edition-3.md) | 144 | `result-track:d0450c168f435b9f4caf308b5007f75cf15936e2c9717c0670c424a71c8b70d6` |
| 4 | `theorem` | [A_ne_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-ne-c-source-edition-3.md) | 147 | `result-track:f3d5df65fdedd77cf988e0990c74f6fa149736e1fbd45befd990456ade7da74c` |
| 5 | `theorem` | [B_ne_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/b-ne-c.md) | 150 | `result-track:2ba455121f6032a2aac2202d7aa19c17b4da38b60453ef6753ee3653e2c4c065` |
| 6 | `theorem` | [not_collinear_ABC](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/not-collinear-abc.md) | 153 | `result-track:2e3fb41cb98942273f5e7eeb4c5923ffe62bf9c54d16fefd4f1205af0fa3598e` |
| 7 | `def` | [triangleABC](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/triangleabc.md) | 157 | `declaration-track:d68b9d4b92bb9f618eb3c2808b91fad6d53a78909e9db46475541bbe1fef7a8b` |
| 8 | `theorem` | [A_mem_circumsphere](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-mem-circumsphere-source-edition-2.md) | 160 | `result-track:fbe2eeb3b291f0da8628ce361c1f1113f18dd9ed070896c4bd6786dc32442e74` |
| 9 | `theorem` | [B_mem_circumsphere](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/b-mem-circumsphere-source-edition-2.md) | 163 | `result-track:8d40efb105b0d480ffe70e61204c289e6ef39c3dd8cf7a224f38bb290255f720` |
| 10 | `theorem` | [C_mem_circumsphere](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/c-mem-circumsphere.md) | 166 | `result-track:2dd0db728ecd9442c1cc72a53af99670d3a76c4136a5f36b8ba4b4457d538f3e` |
| 11 | `theorem` | [symm_triangleABC](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/symm-triangleabc.md) | 169 | `result-track:d0da37545f4efc484a0e73f1a9896841dcde035c61c04f341086a597d3dbb617` |
| 12 | `theorem` | [symm_triangleABC_circumsphere](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/symm-triangleabc-circumsphere.md) | 172 | `result-track:602bcfb01c5702999e757a90a8e6517b3d13695231304c2871d17eae0f7cc9fb` |
| 13 | `def` | [A₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a.md) | 177 | `declaration-track:06b70e2324bcc8fc2b314efe1066dc2800f4fe3e0b15acc81fd68875acea334c` |
| 14 | `def` | [B₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/b.md) | 181 | `declaration-track:907745ab257ce1d71da84ec82623412fead59dbcb001080cb275ae5c99aa3d90` |
| 15 | `theorem` | [A₂_mem_circumsphere](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-mem-circumsphere.md) | 184 | `result-track:defca98be091d599e16fc93570cf1a375b08d45f0530a56558bf9e6a9ccda6df` |
| 16 | `theorem` | [B₂_mem_circumsphere](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/b-mem-circumsphere.md) | 187 | `result-track:7c0436fce1119f7248558d9ef64b81a1c7bc6ccb18dd470995ae096a0a2a0b90` |
| 17 | `theorem` | [symm_A₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/symm-a.md) | 190 | `result-track:c2ed6d2812c727522381ce5c70676a974f713793d2247d3012d8c50a0d9ab520` |
| 18 | `theorem` | [QP_parallel_BA](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/qp-parallel-ba.md) | 192 | `result-track:858919e9a6fb7431979adc19223132f369a74850bde3f1c9971edf7f75e70fd1` |
| 19 | `theorem` | [A_ne_A₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-ne-a-source-edition-2.md) | 195 | `result-track:af9d8d99cdf89d6224cbc6fcd5103a99dacfd095cc2cfbf0741ac3a0f4ca7097` |
| 20 | `theorem` | [collinear_PAA₁A₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/collinear-paa-a.md) | 201 | `result-track:515cb6fdc955a588cb2038f739a41260d7cde2a2a036e37e5b3d640d9960e7fb` |
| 21 | `theorem` | [A₁_ne_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-ne-c.md) | 208 | `result-track:136e134ad065354cad35606cd53141a9ca654a8d6ff793b0782ba6c86adb3163` |
| 22 | `theorem` | [B₁_ne_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/b-ne-c-source-edition-2.md) | 216 | `result-track:5fcfac7b4463000f11b351e6ee484a70d0906804ea83bab059f1eade572ea7c6` |
| 23 | `theorem` | [Q_notMem_CB](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/q-notmem-cb.md) | 219 | `result-track:cc0ce598ed751e3c303f8d4100cd44a85b5a0c278ef74768c465eacf01ff8526` |
| 24 | `theorem` | [Q_ne_B](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/q-ne-b.md) | 236 | `result-track:aa1f1f8795f91aeb6c443291f840367d981b523025d3216203bd1855c66270f6` |
| 25 | `theorem` | [sOppSide_CB_Q_Q₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/soppside-cb-q-q.md) | 242 | `result-track:b00ca78bb811fdc86a6086f5b7c12718c2de168b1d12abbccfd3f56440b75413` |
| 26 | `theorem` | [oangle_CQ₁Q_sign_eq_oangle_CBA_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/oangle-cq-q-sign-eq-oangle-cba-sign.md) | 252 | `result-track:878ca4aea13d464437a1bccd76c29a1084f388f2f3c0b0bd5b3219b4c250175f` |
| 27 | `theorem` | [oangle_CQ₁Q_eq_oangle_CBA](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/oangle-cq-q-eq-oangle-cba.md) | 262 | `result-track:a484fb8a1196581919c95051931e6bfabea22e1d651148e6d53cd414f381bc35` |
| 28 | `theorem` | [A₁_ne_B](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-ne-b-source-edition-2.md) | 277 | `result-track:5c22b1ef45850c919f50748d0a96b8a5572334e1487834ae4a1d30cf010c0fe5` |
| 29 | `theorem` | [sbtw_B_A₁_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/sbtw-b-a-c.md) | 310 | `result-track:50ba0962c5e5e45c500b59f6295e3dc4e1fd96d90da95eefd863da9ac2ce2785` |
| 30 | `theorem` | [sbtw_A_B₁_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/sbtw-a-b-c.md) | 313 | `result-track:629805ffdef4dabb5864b58f65e1eac516d258a9ea371b80dc017f13790a09a5` |
| 31 | `theorem` | [sbtw_A_A₁_A₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/sbtw-a-a-a.md) | 316 | `result-track:5a108872bad5661efad67f3aaf2e45b3369b3a03be25402167a687f4b0254e40` |
| 32 | `theorem` | [sbtw_B_B₁_B₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/sbtw-b-b-b.md) | 322 | `result-track:5aa5d5413bdf47fe9ac0ff6769080d21338583d95fbbba88f4ccac9d249c86b6` |
| 33 | `theorem` | [A₂_ne_A](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-ne-a.md) | 325 | `result-track:34afcf414a58e65be8e3e1719f6c7647cfddc54ce63f0295cf2c6404082f5da4` |
| 34 | `theorem` | [A₂_ne_P](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-ne-p.md) | 328 | `result-track:fd5aa811fe0c48d8ac5ef87ca4a0f7d58ba6de1d69d1abe2fa84346b81257d22` |
| 35 | `theorem` | [A₂_ne_B](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-ne-b.md) | 331 | `result-track:51df023ace530098005ddda6fa2316765fd17f0995d140e8e8d646d9aa0c3d52` |
| 36 | `theorem` | [A₂_ne_C](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/a-ne-c-source-edition-2.md) | 343 | `result-track:b725b7fa04577a223cf193c991a12ff4ebe00a46ee10f83f3313ce902b64c730` |
| 37 | `theorem` | [B₂_ne_B](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/b-ne-b.md) | 356 | `result-track:262f0e30eb153b1780be97f4bd6a3010922e3527f2628975b7de9d70fa76959d` |
| 38 | `theorem` | [B₂_ne_Q](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/b-ne-q.md) | 358 | `result-track:10ded8615edc43774a791467656329d8b2dd3284c92c3d3c76763495d05335ec` |
| 39 | `theorem` | [B₂_ne_A₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/b-ne-a.md) | 360 | `result-track:0cccffbffbed66e66029956aa2bc57838ff4c23430a37f5ff594e8585f5270e9` |
| 40 | `theorem` | [wbtw_B_Q_B₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/wbtw-b-q-b.md) | 371 | `result-track:13f43be35ccf2fbc1f9864135002330eb17974b9dce597a50a87daac89600fb9` |
| 41 | `theorem` | [two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_BAA₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/two-zsmul-oangle-qpa-eq-two-zsmul-oangle-baa.md) | 381 | `result-track:4344369dd5acd4395e542d5ef1e8d5c205637578b02fde582a87829d79ff12e4` |
| 42 | `theorem` | [not_collinear_QPA₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/not-collinear-qpa.md) | 397 | `result-track:9d7a496792df45534d2c7cc72f87e92f93a85757d1fdecb51b414bd7e7a6a65d` |
| 43 | `theorem` | [Q₁_ne_A₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/q-ne-a.md) | 406 | `result-track:4df5a41cca8c66d4bb4b4aae16186e743cc8fcda9c8e539b4c6128c6e5b46c8b` |
| 44 | `theorem` | [affineIndependent_QPA₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/affineindependent-qpa.md) | 419 | `result-track:c9ed3177511de5164939a241e5da3eb58d356452deb766bb771c2f3243f96a15` |
| 45 | `theorem` | [affineIndependent_PQB₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/affineindependent-pqb.md) | 422 | `result-track:a02b6c4a80533dd5957433ac8ec099281cf8011d4876275ea00c98d799b26023` |
| 46 | `def` | [triangleQPA₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/triangleqpa.md) | 426 | `declaration-track:6d6cb280da0cfb603d37be4b12ed19f730c8dd3dfe554843cf5b6462c35fc134` |
| 47 | `def` | [trianglePQB₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/trianglepqb.md) | 430 | `declaration-track:4f39412e13401698ee6d1861b61c83512d2f1817b6429e00c2711f1d0a1a3d18` |
| 48 | `theorem` | [symm_triangleQPA₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/symm-triangleqpa.md) | 433 | `result-track:b86a204647eab926236f21a817d59d428f3031acf27578ae03e7035ef5620c1c` |
| 49 | `def` | [ω](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/anonymous.md) | 438 | `declaration-track:acb1e110d677930fbeed307134c85e5e8e45be5de70ffd701dad0aa6911845a6` |
| 50 | `theorem` | [P_mem_ω](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/p-mem-source-edition-2.md) | 441 | `result-track:c35343c57892d58197f04636191ad096fcfe2127bd16b8e89e85e75ac3121a35` |
| 51 | `theorem` | [Q_mem_ω](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/q-mem-source-edition-2.md) | 444 | `result-track:5acbadfd051bb495db753529c5fe954087d300a99ce35685435e97c996d88394` |
| 52 | `theorem` | [two_zsmul_oangle_QPA₂_eq_two_zsmul_oangle_QB₂A₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/two-zsmul-oangle-qpa-eq-two-zsmul-oangle-qb-a.md) | 454 | `result-track:7b02d04b2fa3ff6abcfdd4a9df9b9cf5197137fdba98bec45b1209d5e9af1da0` |
| 53 | `theorem` | [cospherical_QPB₂A₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/cospherical-qpb-a.md) | 471 | `result-track:ef24bbc517ff2e8405e8996c8b57407ff35eb766af3c228cadf10dbce8e9ef1f` |
| 54 | `theorem` | [symm_ω_eq_trianglePQB₂_circumsphere](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/symm-eq-trianglepqb-circumsphere.md) | 475 | `result-track:538634415807dcb48b771034d5f9bb958a75c645013c9f323721e65421288902` |
| 55 | `theorem` | [symm_ω](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/symm.md) | 478 | `result-track:253a0528f468a678458642590f3d2fae4b9a90b119dd5996534d12d97f855646` |
| 56 | `theorem` | [two_zsmul_oangle_CA₂A₁_eq_two_zsmul_oangle_CBA](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/two-zsmul-oangle-ca-a-eq-two-zsmul-oangle-cba.md) | 498 | `result-track:a963421de6645a6dcbccf64522c6be8dc82b9ccccd9adf03c56f19ddc438dc58` |
| 57 | `theorem` | [two_zsmul_oangle_CA₂A₁_eq_two_zsmul_oangle_CQ₁A₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/two-zsmul-oangle-ca-a-eq-two-zsmul-oangle-cq-a.md) | 508 | `result-track:6af803a103b5607d337eb3e44ceea1c4d0a227a6985e4532c39ba11853c137e7` |
| 58 | `theorem` | [not_collinear_CA₂A₁](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/not-collinear-ca-a.md) | 521 | `result-track:8e3a8ad099332f0ecb207888884d8f65914a53d791ab37e5e380161c2a0cad00` |
| 59 | `theorem` | [cospherical_A₁Q₁CA₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/cospherical-a-q-ca.md) | 526 | `result-track:bb63410d3708846e7415862ca95ed8e05743097a380957dab8e7595672d07f4f` |
| 60 | `theorem` | [two_zsmul_oangle_QQ₁A₂_eq_two_zsmul_oangle_QPA₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/two-zsmul-oangle-qq-a-eq-two-zsmul-oangle-qpa.md) | 539 | `result-track:3fb79f8af774e7fa81c7006b460c106bf763f3183bbb2d880861759023b14522` |
| 61 | `theorem` | [Q₁_mem_ω](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/q-mem.md) | 559 | `result-track:25eb09d0871b0ec7992fdce0421866f1e562aea7c642cfcae4c1c99a2191a52b` |
| 62 | `theorem` | [P₁_mem_ω](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/p-mem.md) | 563 | `result-track:016bd99b1c7e0fbc015ce1bca3974afc205a8bb4d9185c7e6a74937760f8fecb` |
| 63 | `theorem` | [result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/result.md) | 565 | `result-track:91b6f62907d3b2863dde6aef624720b6985bde49bf19b26a34d64439fc2938b2` |
| 64 | `theorem` | [imo2019_q2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2019Q2NamespacedPublic.lean/declarations/imo2019-q2.md) | 582 | `result-track:7d30b41871cd02d0e53bd496feaff4e1b94de272743c56043f7db1de090500fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b427b81a7baef34cdc6ae8c2810cdb7388688bcb01fb3f1c4b5c908bcc1e38a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Imo2019Q2/Variant721187a64724efa48f42816a8da1565f99b3dda4fd7a73ca05f7af6eba96aeb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
