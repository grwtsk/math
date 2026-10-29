# Verification target: Divisor Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "824ea46504d35fd685ad0d1248465079629a4041",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Divisor/Variantfc6bcb4c06ea519e9107e9d6e9c6d30ef4d854c2974883e01e1138e099c7769c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `824ea46504d35fd685ad0d1248465079629a4041`.

Source path: `GRWTSK/Topology/GeneralTopology/Divisor/Variantfc6bcb4c06ea519e9107e9d6e9c6d30ef4d854c2974883e01e1138e099c7769c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Divisor/Variantfc6bcb4c06ea519e9107e9d6e9c6d30ef4d854c2974883e01e1138e099c7769c.lean.json)

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
| 1 | `def` | [divisor](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor.md) | 49 | `declaration-track:3edda558793893674cf41182582763c34eee25f2e0b1859d5a7471a33ea2318e` |
| 2 | `theorem` | [divisor_def](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-def.md) | 69 | `result-track:4d9ed928e8f503419e4fe1ce14409d41112296e83f8c33b621a0333c22a61c52` |
| 3 | `lemma` | [divisor_apply](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-apply.md) | 78 | `result-track:d6057274d6c1d22b30b020fd1567260d3e5c091d14a4f578fcab1cb836ad892b` |
| 4 | `theorem` | [divisor_eq_zero_of_not_meromorphicOn](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-eq-zero-of-not-meromorphicon.md) | 82 | `result-track:cf8775a03f35450dd272226fbb3496c8506dec5f195030ac5a18c668b2127aff` |
| 5 | `lemma` | [AnalyticOnNhd.divisor_apply](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/analyticonnhd-divisor-apply.md) | 87 | `result-track:a3cf3d68dd8eea730fcaa47417e6d12badb443493ca7689c2aba11b73c87c188` |
| 6 | `lemma` | [Divisor Namespaced Public](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-sphere-support-finite.md) | 99 | `result-track:fa6e26725d6aeeed75d1d1f776929dde5f70ab1375c7f8ad8787c9a20f5fe7b4` |
| 7 | `lemma` | [divisor_support_finite_of_subset](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-support-finite-of-subset.md) | 107 | `result-track:1fb5d0209f5839d3ff76652eae36368df0375956112107faccb6ddd6355f8375` |
| 8 | `lemma` | [divisor_ball_support_finite](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-ball-support-finite.md) | 120 | `result-track:d90918545366e2cc66feabd158aab80c4c6415f32d8b7d91c9b6721ce2190b4d` |
| 9 | `theorem` | [divisor_congr_codiscreteWithin_of_eqOn_compl](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-congr-codiscretewithin-of-eqon-compl.md) | 133 | `result-track:49bb2fbdc8573bd4433e15a209ff43df85acb2115a686cb9a4a083918245e16e` |
| 10 | `theorem` | [divisor_of_eventuallyEq_codiscreteWithin_preperfect](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-of-eventuallyeq-codiscretewithin-preperfect.md) | 151 | `result-track:37efe4a2905027fa5ea4c77ba9dcf6af988d47eb9fe74c58686b12d08777ffef` |
| 11 | `theorem` | [divisor_congr_codiscreteWithin](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-congr-codiscretewithin.md) | 168 | `result-track:d0061aa1af0fc885707abb04244788e86ede4d4fc730dcfe04bfa3b4c700ba5d` |
| 12 | `theorem` | [AnalyticOnNhd.divisor_nonneg](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/analyticonnhd-divisor-nonneg.md) | 193 | `result-track:6b60dbde11cac723800e5024f83e808fbd1f32774c831515d454909eedfaca23` |
| 13 | `theorem` | [divisor_const](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-const.md) | 204 | `result-track:cd6b520157b086cf9c57cd9ca6b3f20f3cb6f26c2f2dd15cd2431fe3ff79793b` |
| 14 | `theorem` | [divisor_intCast](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-intcast.md) | 218 | `result-track:0eed7eef886137715901e4fe16af2deb1fce6a1e329e256e2a35d4d7cacddc54` |
| 15 | `theorem` | [divisor_natCast](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-natcast.md) | 225 | `result-track:dfedb4a2c64b8a2a2b3e7fcc5c9b52754b548dfd69d1052d2ad11414ee299f1a` |
| 16 | `theorem` | [divisor_ofNat](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-ofnat.md) | 231 | `result-track:e67b86215fddf1d99b0ea39a709b036fd646a96c35d699a11a51caf3507b8942` |
| 17 | `theorem` | [min_divisor_le_divisor_add](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/min-divisor-le-divisor-add.md) | 244 | `result-track:37113f317496b3fce412f4cc991e118e85e7229f3ffa6717d4664c0d08e66aca` |
| 18 | `theorem` | [negPart_divisor_add_le_max](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/negpart-divisor-add-le-max.md) | 262 | `result-track:7491cd02523b3cca5b0a93432d0b2979ec61bf7a6160899ecf40d767411f8689` |
| 19 | `theorem` | [negPart_divisor_add_le_add](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/negpart-divisor-add-le-add.md) | 278 | `result-track:3654340f86d838b1e80410a7b90e8ea5ee51e84cab30ccbaa3c4baa84ae22a27` |
| 20 | `theorem` | [divisor_smul](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-smul.md) | 296 | `result-track:64396631571955cc1b5034fa4032b323ed5c8d14552df2c8deb0ddb336104b48` |
| 21 | `theorem` | [divisor_fun_smul](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-fun-smul.md) | 312 | `result-track:015cd0d7ee8ffe46d41b12685cd7a7c1c21afc7b8da230966f518510e4b3e136` |
| 22 | `theorem` | [divisor_const_smul](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-const-smul.md) | 320 | `result-track:686ac77f940193840aa2685e16f37030ced7b4e5c45c8052396f01161697ca64` |
| 23 | `theorem` | [divisor_mul](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-mul.md) | 338 | `result-track:07e0ad78e1553da35b5cc82668f90084d4d1940367f32d78803e332c5c95ac23` |
| 24 | `theorem` | [divisor_fun_mul](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-fun-mul.md) | 347 | `result-track:35b1df3d6ac5d9a4e8998ee4b1545631bfa4ab49ab68adfd26994bfaa839cbd0` |
| 25 | `theorem` | [divisor_prod](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-prod.md) | 357 | `result-track:4530aa4392b91c447ef9998487debc767d30d5615ef59a8705398f6ea51514fb` |
| 26 | `theorem` | [divisor_fun_prod](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-fun-prod.md) | 379 | `result-track:5591678e18db7dfe491c7ac1c2253c1ceb0d175278a686d2ec50ac5065741d9a` |
| 27 | `theorem` | [divisor_inv](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-inv.md) | 388 | `result-track:a0fe1b474fe0dc94606cc923d41bc6c2f7a7775b5f8becca2faa2b8a6dff6c24` |
| 28 | `theorem` | [divisor_fun_inv](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-fun-inv.md) | 397 | `result-track:5a5d9c14636c6c05e10f5ae9e5ecc599a269f030ce8edd40fea5b597d06b9fa7` |
| 29 | `theorem` | [divisor_pow](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-pow.md) | 402 | `result-track:80e80bc66a65c6be268f9562821e02c2611052fa8896e942d451ab219e0539c3` |
| 30 | `theorem` | [divisor_fun_pow](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-fun-pow.md) | 414 | `result-track:ee9175d91aaa913ce1c9491aa85a1e42778beffead58d3021bd8f1f6be587a67` |
| 31 | `theorem` | [divisor_zpow](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-zpow.md) | 420 | `result-track:9f605426e7e34aa785c7c6db6e06a9f6124778fef6a4a8e6ec1efdf4a5e267e9` |
| 32 | `theorem` | [divisor_fun_zpow](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-fun-zpow.md) | 432 | `result-track:6837701614be5317db68b0b71837cb89e81c517236b30b81ce4d607a267ca829` |
| 33 | `theorem` | [divisor_restrict](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-restrict.md) | 439 | `result-track:c595d1429b402aae87eeb8ff8cc4b9c67b1e9af9cb17811a8e88e47acf3c415d` |
| 34 | `theorem` | [negPart_divisor_add_of_analyticNhdOn_right](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/negpart-divisor-add-of-analyticnhdon-right.md) | 448 | `result-track:27f85cf3bb117c5117fb86fe8d95afd8064c5663801a6215afd635fed7cd29d0` |
| 35 | `theorem` | [negPart_divisor_add_of_analyticNhdOn_left](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/negpart-divisor-add-of-analyticnhdon-left.md) | 470 | `result-track:8b82a5d7385c4122f6f06fef3a90a8b0e2c801f96c1c64f8913df1bcc91928d2` |
| 36 | `lemma` | [divisor_sub_const_of_ne](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-sub-const-of-ne.md) | 478 | `result-track:b19b1541b9f70419b0db76779fddc40a3ae212643ca20c2b80306213944d7bbf` |
| 37 | `lemma` | [divisor_sub_const_self](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-sub-const-self.md) | 489 | `result-track:09a22d44b6fbdb69c724f51e48a309e64fde8c2ca8006a39ed08d9e377c60af3` |
| 38 | `theorem` | [divisor_comp_add_const_eq_divisor](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-comp-add-const-eq-divisor.md) | 498 | `result-track:78f13ec5c34865cbb28d7fc89c3598031c3417d88ffc2801fb4ba297d406b7d9` |
| 39 | `theorem` | [divisor_comp_sub_const_eq_divisor](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-comp-sub-const-eq-divisor.md) | 514 | `result-track:a733fb2f0b116decac07013ebfa503097b6e57d3f45c236ee8fadbb72549c4b2` |
| 40 | `theorem` | [divisor_ball_comp_sub_const_eq_divisor_ball](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-ball-comp-sub-const-eq-divisor-ball.md) | 521 | `result-track:4197a6dbf8b8ee2ab3c9791a206125a3c94fafe8942f7d3c75d3456c2532e4cb` |
| 41 | `theorem` | [divisor_closedBall_comp_sub_const_eq_divisor_closedBall](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-closedball-comp-sub-const-eq-divisor-closedball.md) | 527 | `result-track:a52974a12152607d90a1a379546559cf25d8f346c6b4b41824989268d44159ff` |
| 42 | `theorem` | [divisor_sphere_comp_sub_const_eq_divisor_sphere](../../../../FunctionalAnalysis/DivisorNamespacedPublic.lean/declarations/divisor-sphere-comp-sub-const-eq-divisor-sphere.md) | 533 | `result-track:657d6d4d9e51aa403716445932317a8ba234adb4edfdecb2c1af197ff75bb7fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=776717d01fb6358d59f3321c22c8436d97b3243a8536b1271e300c10dab94000 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Divisor/Variantfc6bcb4c06ea519e9107e9d6e9c6d30ef4d854c2974883e01e1138e099c7769c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Divisor/Variantfc6bcb4c06ea519e9107e9d6e9c6d30ef4d854c2974883e01e1138e099c7769c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
