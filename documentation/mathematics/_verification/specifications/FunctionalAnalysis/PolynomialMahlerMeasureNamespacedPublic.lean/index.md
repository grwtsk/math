# Verification target: Polynomial Mahler Measure Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf3d24a9c2c1c78fb8102b303c3c5f39dab3aacc",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf3d24a9c2c1c78fb8102b303c3c5f39dab3aacc`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean.json)

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
| 1 | `def` | [logMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure.md) | 62 | `declaration-track:2571f65f4f89b9c5ee822193466094e3b1375b3daf5e658297b711ab661bd7b3` |
| 2 | `theorem` | [logMahlerMeasure_def](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-def.md) | 64 | `result-track:5f18768cb3e6e4a81290dbd52897675dd8b1b58e329e212592a9a44855fd7758` |
| 3 | `theorem` | [logMahlerMeasure_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-zero.md) | 68 | `result-track:35be0e9d7c85f8a3d6b7dd2cf87da59a59036146a6a6fb7f9521a49e54ff167e` |
| 4 | `theorem` | [logMahlerMeasure_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-one.md) | 72 | `result-track:16212b5d01f5c0f0e96978cbe26d81df465de1b2d00b843facb1a89ef3fd3048` |
| 5 | `theorem` | [logMahlerMeasure_const](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-const.md) | 76 | `result-track:336bf11ee61baa26263e124af0bd1de290ec943c515886e7ecd9446312e0ffdc` |
| 6 | `theorem` | [logMahlerMeasure_X](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-x.md) | 80 | `result-track:56afdab18c9da5f0d6f79a3da464ac33424a771ca19fa8426f9ae02a0c9058d2` |
| 7 | `theorem` | [logMahlerMeasure_monomial](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-monomial.md) | 84 | `result-track:750d97e8f8702ee11ea0eb04d8f8ebcae6c3852c7897fdb502d3d650c1ec8502` |
| 8 | `def` | [mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure.md) | 89 | `declaration-track:e1615b8bec7b5cf355128b7693054857b255191cfa0d5c947bd2691e8ec53ab7` |
| 9 | `theorem` | [mahlerMeasure_def_of_ne_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-def-of-ne-zero.md) | 92 | `result-track:1660297e43bbebdccd36aa1cfa331e1a9ec9fc1e53988ed772ef21192ede3766` |
| 10 | `theorem` | [logMahlerMeasure_eq_log_MahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-eq-log-mahlermeasure.md) | 97 | `result-track:80bda3db4abbdc3f92dc4c66a0b2bbd20e3e7fea62d8a56468eec8c154080852` |
| 11 | `theorem` | [mahlerMeasure_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-zero.md) | 102 | `result-track:4ba110a9b52136b301301ded58751640b50e4448dec311b5d0f80ab30e81a800` |
| 12 | `theorem` | [mahlerMeasure_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-one.md) | 105 | `result-track:082adc097f361c5386c8ca9a4608f8951450dd8361309a0f5b1df130d4ad0674` |
| 13 | `theorem` | [mahlerMeasure_const](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-const.md) | 108 | `result-track:0e2a08bc53068103468663f848658050271e3913265d33588ba141658d45364d` |
| 14 | `theorem` | [mahlerMeasure_nonneg](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-nonneg.md) | 114 | `result-track:de9f6da258179944dd8a92d1d06b87fc23a8492c27fa6d324a06b77d6445c6fa` |
| 15 | `theorem` | [mahlerMeasure_pos_of_ne_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-pos-of-ne-zero.md) | 118 | `result-track:c415348f59d8247f4eefe1893a13e9775eec72230217c2641748d782de7de91c` |
| 16 | `theorem` | [mahlerMeasure_eq_zero_iff](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-eq-zero-iff.md) | 122 | `result-track:f94da6e2d116f42b1d4df1f3da118146b0737cbabc59ce8107d7bcac76a3e58d` |
| 17 | `lemma` | [intervalIntegrable_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/intervalintegrable-mahlermeasure.md) | 127 | `result-track:dced4e942036b56f57e51b2d5b105f92ea71dda92ba4ce84db2bace028fd3399` |
| 18 | `theorem` | [mahlerMeasure_mul](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-mul.md) | 134 | `result-track:aceb4daf6ef4a016e2d3da9afed270d631795173c3569cfae1e6724103b0000f` |
| 19 | `theorem` | [prod_mahlerMeasure_eq_mahlerMeasure_prod](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/prod-mahlermeasure-eq-mahlermeasure-prod.md) | 156 | `result-track:418056e408a2e0d02cc09cda7f5d50ab50249bdbac324534425f8cf8eb857465` |
| 20 | `theorem` | [logMahlerMeasure_mul_eq_add_logMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-mul-eq-add-logmahlermeasure.md) | 162 | `result-track:44e1fc7997a41552246c27a7f3514e780fb58421330c2c23de1a61616e226eb8` |
| 21 | `theorem` | [logMahlerMeasure_C_mul](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-c-mul.md) | 166 | `result-track:9e975a3937e079459aa394761c30e4be8aef5626ffde8631b48540f7efaa83be` |
| 22 | `theorem` | [logMahlerMeasure_X_sub_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-x-sub-c.md) | 173 | `result-track:4199fcc64bff6bbf4efb778edfde650fb08f23bb664913f514133c417d1bcf68` |
| 23 | `theorem` | [logMahlerMeasure_X_add_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-x-add-c.md) | 177 | `result-track:6f7877a7c2e2065b8c26ba447579ea1c0b0d050b90755a45978df72ef42539ac` |
| 24 | `theorem` | [logMahlerMeasure_C_mul_X_add_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-c-mul-x-add-c.md) | 180 | `result-track:e8727a59c10266fea1a9fe19719384caae8d31c025348be600ebc4580fcdf31a` |
| 25 | `theorem` | [logMahlerMeasure_of_degree_eq_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-of-degree-eq-one.md) | 185 | `result-track:b8781a53cd9fbf37e33e1c4f3ddaad56cce380e0ddca2d7be81cd0cb56267542` |
| 26 | `theorem` | [mahlerMeasure_X_sub_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-x-sub-c.md) | 192 | `result-track:e59bd4e45124215b1961eccd66ab149e9edf72fb78dcb6f38c5392e40d597184` |
| 27 | `theorem` | [mahlerMeasure_X_add_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-x-add-c.md) | 201 | `result-track:08845e9004931b03ffbb6b6765eb61078e0083929824c3380df8060e5aabfbb6` |
| 28 | `theorem` | [mahlerMeasure_C_mul_X_add_C](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-c-mul-x-add-c.md) | 205 | `result-track:5b67611e2f1bbaecc5c787e221871787449fbab6321d4799cc914767b0726c94` |
| 29 | `theorem` | [mahlerMeasure_of_degree_eq_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-of-degree-eq-one.md) | 212 | `result-track:a55d340da3114aa383cf98f44f0bb0f08f17dd6f41390ee30f7b66f1b0897ef8` |
| 30 | `theorem` | [logMahlerMeasure_eq_log_leadingCoeff_add_sum_log_roots](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/logmahlermeasure-eq-log-leadingcoeff-add-sum-log-roots.md) | 220 | `result-track:22cdf378bf26c06908c0c0659f545985b649e9b9b9c83092ce09c78de1b51226` |
| 31 | `theorem` | [mahlerMeasure_eq_leadingCoeff_mul_prod_roots](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-eq-leadingcoeff-mul-prod-roots.md) | 232 | `result-track:09255eda824ef936d5422c26639242fa70324910ea640b4e49e57bd9131c2fdb` |
| 32 | `lemma` | [one_le_prod_max_one_norm_roots](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/one-le-prod-max-one-norm-roots.md) | 247 | `result-track:9128ae18f17ebb9acbce5bbcf8cfaecbf8ba4d2f11361a564d0bf96231fe9d7a` |
| 33 | `lemma` | [leadingCoeff_le_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/leadingcoeff-le-mahlermeasure.md) | 250 | `result-track:197f50494947a8c297573cbec4e3b7fcdbdec26884426751ff82ed6ce6959d4d` |
| 34 | `lemma` | [prod_max_one_norm_roots_le_mahlerMeasure_of_one_le_leadingCoeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/prod-max-one-norm-roots-le-mahlermeasure-of-one-le-leadingcoeff.md) | 255 | `result-track:537b83c546dcb8b571befd07ce8a8edb94b9375248c4f057f84dd171031bd063` |
| 35 | `lemma` | [one_le_mahlerMeasure_of_one_le_norm_leadingCoeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/one-le-mahlermeasure-of-one-le-norm-leadingcoeff.md) | 264 | `result-track:d3b576a8eb23955348cfa742a089c5c97e693e39eb8882bee878b169e38fa85f` |
| 36 | `theorem` | [mahlerMeasure_le_sum_norm_coeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-le-sum-norm-coeff.md) | 271 | `result-track:366c567d90f78f8bf403518dd46c8bab6e3bd02ffe0587ae8c94cffd00264e04` |
| 37 | `theorem` | [mahlerMeasure_le_sqrt_sum_sq_norm_coeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-le-sqrt-sum-sq-norm-coeff.md) | 308 | `result-track:f62d7d350461d46cc36ff10c80ebbace62fcecce98db7e7e4b497feaa914a0b3` |
| 38 | `theorem` | [mahlerMeasure_le_sqrt_natDegree_add_one_mul_supNorm](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mahlermeasure-le-sqrt-natdegree-add-one-mul-supnorm.md) | 354 | `result-track:84b20f06d63b3f38b998dce44cd119700c2e753415bd188d62d3e715efb4f3e4` |
| 39 | `theorem` | [norm_coeff_le_choose_mul_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/norm-coeff-le-choose-mul-mahlermeasure.md) | 367 | `result-track:5c793fd9b671a9ff061c3f3455ee6c203efd90684fa3035bed2c3d6689b92523` |
| 40 | `theorem` | [supNorm_le_choose_natDegree_div_two_mul_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/supnorm-le-choose-natdegree-div-two-mul-mahlermeasure.md) | 415 | `result-track:6536a8e7ef23b7dee8caee1710493808dad73f433b8187c23d6453c5677e72da` |
| 41 | `theorem` | [norm_coeff_le_choose_mul_mahlerMeasure_of_one_le_mahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/norm-coeff-le-choose-mul-mahlermeasure-of-one-le-mahlermeasure.md) | 437 | `result-track:393bb2f1035af3f1ad648884e3e9ed4578912aff2fb3aef171330a44ef2d18c3` |
| 42 | `def` | [mapMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mapmahlermeasure.md) | 467 | `declaration-track:be24bb709f32b1d71d2ea4d348d862e71e79d76ff280e40c7ee60da242bcc4d7` |
| 43 | `lemma` | [mapMahlerMeasure_eq](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mapmahlermeasure-eq.md) | 469 | `result-track:eb6d7c987bd1c57762b2e3add66e2208c717727127be0304903bf208104f791e` |
| 44 | `lemma` | [mapMahlerMeasure_mul](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mapmahlermeasure-mul.md) | 471 | `result-track:f3c793328aa1811831bb467dcd3edc3afcd710eb0865a782dfddbeeacd938c26` |
| 45 | `lemma` | [mapMahlerMeasure_nonneg](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mapmahlermeasure-nonneg.md) | 475 | `result-track:71bcbc5fcfdec4aef8dd3571ef92bcfe2af92aec3355323823e2fc5f04bcfffa` |
| 46 | `lemma` | [mapMahlerMeasure_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mapmahlermeasure-zero.md) | 479 | `result-track:5899cd45f7ca99d34d847b02c17a42582bca907762297ca49062fe4f3e8fb937` |
| 47 | `lemma` | [mapMahlerMeasure_one](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mapmahlermeasure-one.md) | 483 | `result-track:13e58b7813ad08b9eb61dd2957f9ca1055ce6792e6a91f37757025b0a9c005a7` |
| 48 | `lemma` | [mapMahlerMeasure_const](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mapmahlermeasure-const.md) | 488 | `result-track:9bace95d0234f4527b66609e0e36968fca93a78a8c594b06bc334db5f4f1ba03` |
| 49 | `lemma` | [leadingCoeff_le_mapMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/leadingcoeff-le-mapmahlermeasure.md) | 491 | `result-track:3c0954a3e234bc896f8c073c4d7ed6099b642482b3a3ac838fb4cd37519d13d3` |
| 50 | `lemma` | [Monic.one_le_mapMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/monic-one-le-mapmahlermeasure.md) | 502 | `result-track:2ebf15229400854dbc36bf74c877aaf8b1a463bfa69356d19d3bcb1f9d20e854` |
| 51 | `theorem` | [mapMahlerMeasure_pos_of_ne_zero](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mapmahlermeasure-pos-of-ne-zero.md) | 507 | `result-track:7605c8b8f62874e4917e90599ebf9ca79d529d813299058e89c536d227853a47` |
| 52 | `theorem` | [mapMahlerMeasure_le_sum_norm_coeff](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/mapmahlermeasure-le-sum-norm-coeff.md) | 511 | `result-track:c9069f06bb08e747344b38889bbf2341472af64c4073b1fd6f8432ecb4d20df1` |
| 53 | `theorem` | [norm_coeff_le_choose_mul_mapMahlerMeasure](../../../../FunctionalAnalysis/PolynomialMahlerMeasureNamespacedPublic.lean/declarations/norm-coeff-le-choose-mul-mapmahlermeasure.md) | 518 | `result-track:5454a293655ce1afff2001821c8298584a6677025686c941f5a798f1c210442d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ccceb5acb4d56d5e78f7574b5db72f395a5077a363a4cd9a49aab9ff24ed7bdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/MahlerMeasure/Variant14df811d06ebc332279a3d9d074b79cb72fa95939c266156492beb5aa630fa3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
