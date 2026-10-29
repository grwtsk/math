# Verification target: Orthonormal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48279d93f303ec50f88d434946d25f0f905135de",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OrthonormalPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OrthonormalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48279d93f303ec50f88d434946d25f0f905135de`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean.json)

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
| 1 | `def` | [Orthonormal](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal.md) | 51 | `declaration-track:077ab81ee0fcdab4d8d51e54181d77dd9d9b1a366ec3185db0da964a1fdecc51` |
| 2 | `lemma` | [Orthonormal.of_isEmpty](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-of-isempty.md) | 57 | `result-track:a89a5b4851b136079208e5ae6709a33576bf1bfc0b21e9c52a6417b59d098d60` |
| 3 | `lemma` | [orthonormal_vecCons_iff](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-veccons-iff.md) | 61 | `result-track:d261a775c02716b2e521ff07810dd2ead63db777b664a63131596557e4c73dd0` |
| 4 | `lemma` | [Orthonormal.norm_eq_one](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-norm-eq-one.md) | 66 | `result-track:8391c7125e05879fbf7f743f34f9fadbf331edcead80fec97a5e66f81c7a48c8` |
| 5 | `lemma` | [Orthonormal.nnnorm_eq_one](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-nnnorm-eq-one.md) | 69 | `result-track:e099aeb958a6a69c1b62482b8a2ecc3ae0263a84f697dfae0ead3cdcfa546b46` |
| 6 | `lemma` | [Orthonormal.enorm_eq_one](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-enorm-eq-one.md) | 74 | `result-track:b580acf4d31c3a10837e7ba6bf30bb11f0a0d0eed150f1e8591fb067e1b06cf7` |
| 7 | `lemma` | [Orthonormal.inner_eq_zero](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-eq-zero.md) | 77 | `result-track:80e4ea2ba9229e100ee9fc776c5525023c020b90a14274135139fa355aef30bb` |
| 8 | `theorem` | [orthonormal_iff_ite](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-iff-ite.md) | 82 | `result-track:b44bb9449967c618a5fd3cefc306570dc62a9011108ccaa02a8a667482217c8f` |
| 9 | `theorem` | [orthonormal_subsingleton_iff](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-subsingleton-iff.md) | 101 | `result-track:b59560c96183063c1372fcba4e37709ee5ebade6fe3083fcb2a418ce12a0edd7` |
| 10 | `theorem` | [orthonormal_subtype_iff_ite](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-subtype-iff-ite.md) | 107 | `result-track:5bf87633136cabbaf839d876fc276ae774b13be635e5a207eb1dac474c068727` |
| 11 | `theorem` | [Orthonormal.inner_right_finsupp](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-right-finsupp.md) | 114 | `result-track:ebf5131553c50ea8bd2bdfba8c038469395232836310f11597d32a86f6ccf8fe` |
| 12 | `theorem` | [Orthonormal.inner_right_sum](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-right-sum.md) | 122 | `result-track:5a5aa9a57e72f2f1e1250115215c8e2c02335a24a29de382d1ae9104dc1e957b` |
| 13 | `theorem` | [Orthonormal.inner_right_fintype](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-right-fintype.md) | 129 | `result-track:d6f5e33d3dfb7d79a6841a8f08c45a597da37d403b54036b5acc2de4fb6fa4fb` |
| 14 | `theorem` | [Orthonormal.inner_left_finsupp](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-left-finsupp.md) | 135 | `result-track:538181b9bb3a5fa0715316b16130f769938cfc8da24947bb199320591ee2ea42` |
| 15 | `theorem` | [Orthonormal.inner_left_sum](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-left-sum.md) | 140 | `result-track:eb51790948117eae500d8a709c91422fd637a2a1e586cbf396546ef72a6cd78c` |
| 16 | `theorem` | [Orthonormal.inner_left_fintype](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-left-fintype.md) | 148 | `result-track:e09ddc9352e051060e7f5f2d4abe41f06f497fe63325fabd70cfb3c58951688e` |
| 17 | `theorem` | [Orthonormal.inner_finsupp_eq_sum_left](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-finsupp-eq-sum-left.md) | 154 | `result-track:865fb1c8053cd515100f2bfc32ec7f7b479471eeb0afe1bdae3541ec42c1cb10` |
| 18 | `theorem` | [Orthonormal.inner_finsupp_eq_sum_right](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-finsupp-eq-sum-right.md) | 160 | `result-track:0b49b91c5eb7e1ae1965ac0d6a77cfe3b8e505ab713b0fdc0f0bf14ffac2f6ee` |
| 19 | `theorem` | [Orthonormal.inner_sum](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-sum.md) | 167 | `result-track:f4bd3ec24f66cdb9fc3e610a70425a94597cfa84ae7e60057868042659f7e584` |
| 20 | `theorem` | [Orthonormal.inner_left_right_finset](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-left-right-finset.md) | 177 | `result-track:0350b64ae22b421c4deeb3da4ca20906ae641f37b603b86bddcbdb37ed6d121f` |
| 21 | `theorem` | [Orthonormal.linearIndependent](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-linearindependent.md) | 183 | `result-track:87ae1d8b56c681444e8d7b9d8e58ca4f6c13b3db19fdcdd71306e2b5db79e96f` |
| 22 | `theorem` | [Orthonormal.comp](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-comp.md) | 193 | `result-track:61912fd8508c31024d218d18e75c7f7734b785761e3a1ad4376a06caeb3697ac` |
| 23 | `theorem` | [orthonormal_subtype_range](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-subtype-range.md) | 203 | `result-track:0cf5e7b37220315d8964065ea074f39531089c17977fe87333dffd6a9e22fd4b` |
| 24 | `theorem` | [Orthonormal.toSubtypeRange](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-tosubtyperange.md) | 212 | `result-track:4502b3f288bf9fc2a1ab75432ac3b2ce129286c6ee4157c68e3f6d65e3ce7087` |
| 25 | `theorem` | [Orthonormal.inner_finsupp_eq_zero](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-finsupp-eq-zero.md) | 218 | `result-track:9395b34618200c5fa1e04afd6550ae8510eb2127a29c28e7c369a9d2e3017975` |
| 26 | `theorem` | [Orthonormal.orthonormal_of_forall_eq_or_eq_neg](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-orthonormal-of-forall-eq-or-eq-neg.md) | 226 | `result-track:ac2f6ce6f844cdba00d5b571cb951a2763f8ffcdd515c54fcc2e6cc4011997df` |
| 27 | `theorem` | [orthonormal_empty](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-empty.md) | 241 | `result-track:27a98aee379d103e60b61021421c567e34d6d9c439a3d46d07b43dc401409e01` |
| 28 | `theorem` | [orthonormal_iUnion_of_directed](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-iunion-of-directed.md) | 246 | `result-track:f6a887d6736d5cd12ead8ddc58274e24a9f36d90d2a0053c70fd94ea25fb17e4` |
| 29 | `theorem` | [orthonormal_sUnion_of_directed](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-sunion-of-directed.md) | 257 | `result-track:7b2a02e1ee272e415d507a1e6f86dab39bcc059e642190e37863404e76f3ac87` |
| 30 | `theorem` | [exists_maximal_orthonormal](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/exists-maximal-orthonormal.md) | 264 | `result-track:c649b305bc397e87ea27f00cfbc9538a8f8fdf3d6f1448d48290788c00949203` |
| 31 | `def` | [basisOfOrthonormalOfCardEqFinrank](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/basisoforthonormalofcardeqfinrank.md) | 277 | `declaration-track:bab9858601fcbb80fb99d05d3c96952a0e7765cba37b04379273577a196f9a74` |
| 32 | `theorem` | [coe_basisOfOrthonormalOfCardEqFinrank](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/coe-basisoforthonormalofcardeqfinrank.md) | 282 | `result-track:bd2dbcee0a49d1cedf894947942e02bdd677bae3ed8b5a1a1254b29d8a3f0612` |
| 33 | `theorem` | [Orthonormal.ne_zero](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-ne-zero.md) | 287 | `result-track:23b0dfcf6745c38d2ca37305f4ca2ff9f4b3b747a6172fdacf6964aa3e200b6d` |
| 34 | `theorem` | [LinearIsometry.orthonormal_comp_iff](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/linearisometry-orthonormal-comp-iff.md) | 310 | `result-track:a99988b084f9155c3812e7c1bae61d99fe66577b31b39522283624ce9fb3ded1` |
| 35 | `theorem` | [Orthonormal.comp_linearIsometry](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-comp-linearisometry.md) | 315 | `result-track:ea856294e08a2619e08663b3a6c385ba8131cf6c55067e0a4164f192ceddf290` |
| 36 | `theorem` | [Orthonormal.comp_linearIsometryEquiv](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-comp-linearisometryequiv.md) | 319 | `result-track:6102f9943f37f4b8264246005298dd2c689efba504664c7cb57a18dac9ad38af` |
| 37 | `theorem` | [Orthonormal.mapLinearIsometryEquiv](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-maplinearisometryequiv.md) | 325 | `result-track:f1ea8bf65a492a3f5897997ec9c09e4f5410c6f1dd0783850ab0942c96a3712e` |
| 38 | `def` | [LinearMap.isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/linearmap-isometryoforthonormal.md) | 330 | `declaration-track:b50e54ceaa88d3a49c5ce4da41dae5f8c940f3e9c092b597310eb3ae46376ff7` |
| 39 | `theorem` | [LinearMap.coe_isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/linearmap-coe-isometryoforthonormal.md) | 338 | `result-track:f7a6ae6adb09370e988cc8c929d815fd495f5c73362e0eefcb837953869f1990` |
| 40 | `theorem` | [LinearMap.isometryOfOrthonormal_toLinearMap](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/linearmap-isometryoforthonormal-tolinearmap.md) | 343 | `result-track:f407540dcf29ff201ec405d0df7539a5cf7dc24834e9d64274b9c580e4384d83` |
| 41 | `def` | [LinearEquiv.isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/linearequiv-isometryoforthonormal.md) | 350 | `declaration-track:97e2ae6f0b7354cdf3c52069120a81d71ef07696483eb637c037cc1ee7599ec3` |
| 42 | `theorem` | [LinearEquiv.coe_isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/linearequiv-coe-isometryoforthonormal.md) | 359 | `result-track:89b5c025cd86eff9a4ea18d9dc0832b6a42075f7d266b8888469cf11c1bebd36` |
| 43 | `theorem` | [LinearEquiv.isometryOfOrthonormal_toLinearEquiv](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/linearequiv-isometryoforthonormal-tolinearequiv.md) | 364 | `result-track:7a5dd1b3075f341d19303a093adf3390fc05be29fbbf634352977ef0660d7006` |
| 44 | `def` | [Orthonormal.equiv](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-equiv.md) | 370 | `declaration-track:957f4fd0d934d35e79842b3f539b75c3de0994307d2007a3d3274faaea7ed5b4` |
| 45 | `theorem` | [Orthonormal.equiv_toLinearEquiv](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-equiv-tolinearequiv.md) | 381 | `result-track:bf8422a9d18ad728d67d7c92ed9c4827bc9627709ecb3ae6a4cfd7139abe0678` |
| 46 | `theorem` | [Orthonormal.equiv_apply](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-equiv-apply.md) | 387 | `result-track:7da885a39eedf8d318fb2f69bfadd5689b027d061a5818ad4d7f45ec798ff1b5` |
| 47 | `theorem` | [Orthonormal.equiv_trans](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-equiv-trans.md) | 393 | `result-track:3492aa9da59d30c072a5d0d763dd073856eabe2f2496f0eb820dd3aa1ef4523b` |
| 48 | `theorem` | [Orthonormal.map_equiv](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-map-equiv.md) | 400 | `result-track:e3f6c49f6958cc7aaec14aaaffcb68eac2f1bebd91826c9032da1bb516dbe038` |
| 49 | `theorem` | [Orthonormal.equiv_refl](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-equiv-refl.md) | 412 | `result-track:aa4d3b63e20cc3c9d7e8f004319c627f586e198369ea9cbfc9fafd8fa09146a7` |
| 50 | `theorem` | [Orthonormal.equiv_symm](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-equiv-symm.md) | 418 | `result-track:24b94acbddb0317d7598288c19d188e4212f667a5e22aabd8307768dcbdbe070` |
| 51 | `theorem` | [Orthonormal.sum_inner_products_le](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-sum-inner-products-le.md) | 437 | `result-track:e4e9d377edc4a41a2356261e1fef0e269c0b6e3615f0302520678330dc0cf3d7` |
| 52 | `theorem` | [Orthonormal.tsum_inner_products_le](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-tsum-inner-products-le.md) | 456 | `result-track:556532feb324c43cb71cdfc7d5b6682b55072ca7a156be66b77ce45473e1b6fe` |
| 53 | `theorem` | [Orthonormal.inner_products_summable](../../../../FunctionalAnalysis/OrthonormalPublic.lean/declarations/orthonormal-inner-products-summable.md) | 462 | `result-track:8a16d5ea573f66e4f5a20d72688ba7329378596a4b4cd241f8568d1d7c217f8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae35959bf2199a1ab4e9c29f1f616d6ab0ec2af88d038d1b7d7a59b6eb005a30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Orthonormal/Variantede054b5921557e59b0a716b257a0538554947c316664d3b378d3383ccbfbd78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
