# Verification target: Linear PMap Namespaced DExt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "177776ef55055397436abf880aa7fbb25c2ebed3",
  "lexical_observation_count": 136,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `177776ef55055397436abf880aa7fbb25c2ebed3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/linearpmap.md) | 42 | `declaration-track:5ffb4361c2c71b1f9f5f6b21d819e396b4f13aee59a0309c4221b4ef92b69e26` |
| 2 | `def` | [toFun'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/tofun.md) | 57 | `declaration-track:e315b7030e45a7a99e790048fbb6438cb14e0d5c42671c98bdac8822e23f06ae` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instance.md) | 59 | `declaration-track:9f2560d6e8eb5852f656ca08af37c40173d5edd51bc6ba073ca617ab1463df45` |
| 4 | `theorem` | [toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/tofun-eq-coe.md) | 63 | `result-track:cd37db7868da5beb4de8957878f5e9ab2edf2f71d8f385a873367da469070c41` |
| 5 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/ext-source-edition-2.md) | 67 | `result-track:d39776e8e3cbbd65321d6669c09842dcecd530cd8d0471c9f28455780fb8bd6b` |
| 6 | `theorem` | [dExt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/dext.md) | 78 | `result-track:675b41f684372396aa8d4c4e6ec3a5dbb39c93fc76ddfe40baa1da3d60796f10` |
| 7 | `theorem` | [map_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/map-zero.md) | 83 | `result-track:856b75bdab322cb9a49400990dc3e7570aaa6538c4c620ee5ae7b50d5720ebc2` |
| 8 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/ext-iff.md) | 86 | `result-track:347069b4160de9ac786ceb64cf75ff97a594f82c7030b6919007050772a2a3da` |
| 9 | `theorem` | [dExt_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/dext-iff.md) | 92 | `result-track:24a00fee365893a1e82cba7be0ecb5b380d7e0d5dbc770552fcaa711d5607715` |
| 10 | `theorem` | [ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/ext.md) | 103 | `result-track:d2b3ae243e6f693b6bb524b03324658d10f7056c8fb8f9724cdf98dd4755c9c0` |
| 11 | `theorem` | [map_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/map-add.md) | 106 | `result-track:c61115a096de88022d5e44ecfde92a7fb12f21baaf772f03635bc3f9b58c4721` |
| 12 | `theorem` | [map_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/map-neg.md) | 109 | `result-track:41cbb75a9ee90efe5fe5912ff8fc35ba2967adee717cf9740e855ae88fa1f79a` |
| 13 | `theorem` | [map_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/map-sub.md) | 112 | `result-track:b666e84d101107251d431fbd287d732c9f88e77c066ccd6cb9a19f1bc6f06fcd` |
| 14 | `theorem` | [map_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/map-smul.md) | 115 | `result-track:b0c1eb8090ee61fee90caddd5bf28a48580a2e0aa30fb60115bc5bdd9164431b` |
| 15 | `theorem` | [mk_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mk-apply.md) | 119 | `result-track:d16d6d89ac906fa509f35dc17eb7fe97b162488470319457896042b6c2e19293` |
| 16 | `def` | [mkSpanSingleton'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mkspansingleton-source-edition-2.md) | 124 | `declaration-track:f7f187c9574953603d063348ea447fdbcf985286a185f31ff7c564714492799b` |
| 17 | `theorem` | [domain_mkSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/domain-mkspansingleton.md) | 144 | `result-track:05b1fff98d5f72ef97d05e3d0727d6f1ad55b451af99be922ceafcb49b7e25de` |
| 18 | `theorem` | [mkSpanSingleton'_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mkspansingleton-apply-source-edition-2.md) | 149 | `result-track:784a527128bd0c2ab0d4c21f22f71d400b8a7e3e41ad2938afaf4851831a0ec8` |
| 19 | `theorem` | [mkSpanSingleton'_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mkspansingleton-apply-self.md) | 158 | `result-track:8306df2252ef18b5029529aa17e1a65c24bc9dcecf9243c8feeb03febe43de6e` |
| 20 | `abbrev` | [mkSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mkspansingleton.md) | 168 | `declaration-track:e7d5abb6748fc50c56c609b1d9cc2572e9dc50bf73787076128a4d6c09f032cc` |
| 21 | `theorem` | [mkSpanSingleton_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mkspansingleton-apply.md) | 173 | `result-track:71fdec7661c1954fbd492fdbd4bcb2d6529c7aac878fd66b4f7347284591c768` |
| 22 | `def` | [fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/fst.md) | 180 | `declaration-track:09b08370a223480c0ac1214175517a748647a1613fcac0e73b77df9823a0df7b` |
| 23 | `theorem` | [fst_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/fst-apply.md) | 185 | `result-track:bad661634cfa76efdb331aec1ad865a6c82db9c19d89f7b2d4b4260fadba439e` |
| 24 | `def` | [snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/snd.md) | 190 | `declaration-track:137b1b1a84e4ef4a2da7894e4d950045d76f1109758d328e0e9864484fcf2a92` |
| 25 | `theorem` | [snd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/snd-apply.md) | 195 | `result-track:31d8a9959376e4c07e9c328388ab0462f5163fb9e0a6f002135563b2d0a35188` |
| 26 | `instance` | [le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/le.md) | 199 | `declaration-track:e5a7d58f79f46c7541fac1190fd7ea0a4f2c00d99e0d1a386c3a3fdc35bb3f99` |
| 27 | `theorem` | [apply_comp_inclusion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/apply-comp-inclusion.md) | 202 | `result-track:b9df972bb41785a6d4745207157f2849b9be9940a5bc45d57dae98e56e54e954` |
| 28 | `theorem` | [exists_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/exists-of-le.md) | 206 | `result-track:d43b16dc02fc496ed383938c2c620c684c38f43e27ce64dcc6bb894df50d8a1d` |
| 29 | `theorem` | [eq_of_le_of_domain_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/eq-of-le-of-domain-eq.md) | 210 | `result-track:454ecb32c58eea8c0fd1606c07ef12446a7a576b09bcf97d6f741ecc0e901088` |
| 30 | `def` | [eqLocus](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/eqlocus.md) | 216 | `declaration-track:1646eae73f7c76d3a3145fe2a55dc2fdf740f44ae00335da77a9e72d4b23436a` |
| 31 | `instance` | [bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/bot.md) | 227 | `declaration-track:8569c20c33795cb6b69dab1a90e265ad70ec54061e7409a7d773b4fde54a3a39` |
| 32 | `instance` | [inhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/inhabited.md) | 230 | `declaration-track:860d90bc048bfbf3ebaf6752534eb99422f20754816326be11e78e20a54c7c0c` |
| 33 | `instance` | [semilatticeInf](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/semilatticeinf.md) | 233 | `declaration-track:1d338808d35c40e87f5f920237c63c3edd1a8cc01663d2a72119ec3cbe0171c2` |
| 34 | `instance` | [orderBot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/orderbot.md) | 252 | `declaration-track:c99432fe2d5e0fd0eb91d3e1e2a5fb3d2b7d185c6868c4e6e183733e512fea55` |
| 35 | `theorem` | [le_of_eqLocus_ge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/le-of-eqlocus-ge.md) | 260 | `result-track:522c5f0350ce0dc2bd6aa220d264c1fb2effd8e7f21466b0b9a289473d5a8e5e` |
| 36 | `theorem` | [domain_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/domain-mono.md) | 264 | `result-track:38aa255e957a410a8fef4c39a363964e4fa60d7810c2751997c66e7b5e40356c` |
| 37 | `theorem` | [sup_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/sup-aux.md) | 267 | `result-track:e475412280907f537d52b860ae1a036ed6be6f871697b859284472031f4357e1` |
| 38 | `def` | [sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/sup.md) | 298 | `declaration-track:abb12862854f47367469ea22da674ccff68fdebb288f9991e48ca923e977e6e9` |
| 39 | `theorem` | [domain_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/domain-sup.md) | 303 | `result-track:ef0f4c8ad51a26624a26f755a2a869b4207da8b6be3ae906805b077250d29599` |
| 40 | `theorem` | [sup_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/sup-apply.md) | 308 | `result-track:4b0889835f621cb383ca6cacb078bd1b8f10e3f16a991f852397db681b705cde` |
| 41 | `theorem` | [left_le_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/left-le-sup.md) | 313 | `result-track:b9c7ad00d3f77bfa7d4b16c8fd382296da275c61ae0518c9559a645e3fd8207b` |
| 42 | `theorem` | [right_le_sup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/right-le-sup.md) | 320 | `result-track:0f6fa19e9fd7686d69fb8c2b01e79d30f697bbbec8e780a67b6544d888c48d3c` |
| 43 | `theorem` | [sup_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/sup-le.md) | 327 | `result-track:10a3e30c6751ce33d4623dfe71a67207cf92ba2c5782784bd37c1a89a97218f8` |
| 44 | `theorem` | [sup_h_of_disjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/sup-h-of-disjoint.md) | 335 | `result-track:1ee8648e12fb3f655e0a69d46ef09da0d4bd2076f8e58715e327995502e4b364` |
| 45 | `instance` | [instZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instzero.md) | 347 | `declaration-track:cc8bcd54c34cf2cb33b231964f0cc58f14ecc70661a7b192fcb0399fde625c61` |
| 46 | `theorem` | [zero_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/zero-domain.md) | 350 | `result-track:e87e986e6bfa2ca0513a50805e1c803c52235a97385293e39b1c916bf185af40` |
| 47 | `theorem` | [zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/zero-apply.md) | 353 | `result-track:665be2ebf12e1df9e7dc21cce77c9894859e6193270a90081976a2b839c2c63c` |
| 48 | `instance` | [instSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instsmul.md) | 362 | `declaration-track:9f84b48bb1bb9b0a6e96b6b27e4d2cd7670e33a737c5b07d809cd8d081ec4956` |
| 49 | `theorem` | [smul_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/smul-domain.md) | 368 | `result-track:951f93fdcb32b09a0a2163b0263db4bbe763f0241bdbfc13a472e7926b8f74ec` |
| 50 | `theorem` | [smul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/smul-apply.md) | 371 | `result-track:ab47b94d5b9fdb24d6157dd8015fd991eefd342d78ee40787873e953fd97fd9d` |
| 51 | `theorem` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/coe-smul.md) | 375 | `result-track:5436a16179c560efa8c13a7f71a3f1282da7610cc5c707ea27aad526f7c2a821` |
| 52 | `instance` | [instSMulCommClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instsmulcommclass.md) | 378 | `declaration-track:50c80b2286b1c94351b77dfa8d50236f8d6d6997bd8f6cca9fcfd2e21c4ad822` |
| 53 | `instance` | [instIsScalarTower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instisscalartower.md) | 381 | `declaration-track:6bb8b29342b6d00857833b1c2cad93e81afb62dc7bb21014b7cc338b86e5372a` |
| 54 | `instance` | [instMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instmulaction.md) | 384 | `declaration-track:b867214984638b5363ba4368a21d084419fd9f89c6b77cc17ee1967f149c082e` |
| 55 | `instance` | [instNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instneg.md) | 391 | `declaration-track:7c93be41057e2b6733c5f77a543ff729ed35dba28284f66f53b2c233da145374` |
| 56 | `theorem` | [neg_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/neg-domain.md) | 395 | `result-track:bf045b9b1831c08a20ad9f3f96db08acd9088834eea414bb672dbdc3712a90d6` |
| 57 | `theorem` | [neg_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/neg-apply.md) | 398 | `result-track:10745e3d79480e4799b370cd4386d11e9599f9a365252b71c984421afcd6b42a` |
| 58 | `instance` | [instInvolutiveNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instinvolutiveneg.md) | 401 | `declaration-track:2004679d2f1938397e4bb2abb11b17f11fa443ecfa9f287d46ff74b64929f827` |
| 59 | `instance` | [instAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instadd.md) | 409 | `declaration-track:ebce05348c1574b8ccb6f06f5cfa21107a65e8d056b46b8176bd0488aeac674f` |
| 60 | `theorem` | [add_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/add-domain.md) | 415 | `result-track:c249e63ba9beb90e818a76c6cb5293f2167c9140b14a85e3616614695cf0b887` |
| 61 | `theorem` | [add_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/add-apply.md) | 417 | `result-track:c5ccfab69f05af370b09f054a3a13b04c7faae00a7967708078bfb13c4d821e6` |
| 62 | `instance` | [instAddSemigroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instaddsemigroup.md) | 420 | `declaration-track:0a7e69bb7ac07ecea525f6fcedd2d7cff5f8a58046173a00bae96e2dceed9a79` |
| 63 | `instance` | [instAddZeroClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instaddzeroclass.md) | 426 | `declaration-track:33809f703b3c355c969efb9e8d11c507225a3e1d0de14403fcfd35bec72bba6e` |
| 64 | `instance` | [instAddMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instaddmonoid.md) | 436 | `declaration-track:2bae13293e7ec9a5d6c9c00b8af6aa64cc0351d0838332ae1405c5489ae7c2d3` |
| 65 | `instance` | [instAddCommMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instaddcommmonoid.md) | 443 | `declaration-track:233c13eb9a79294ffb51b46121864e9534776efaca423f68802d6cdd3ad53c0c` |
| 66 | `instance` | [instVAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instvadd.md) | 453 | `declaration-track:0651d5928188442c529b688380807a7c5b694743c5df40d4b1b57987fd0d21bb` |
| 67 | `theorem` | [vadd_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/vadd-domain.md) | 459 | `result-track:e58998664f58bafa851afeeaa8abc3e5cc598680990642b4e3a5270c1de1f657` |
| 68 | `theorem` | [vadd_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/vadd-apply.md) | 462 | `result-track:c4e855368a76a57dcfd0f27245874789ff3d0fada4e18d8e22d23d79fa72267c` |
| 69 | `theorem` | [coe_vadd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/coe-vadd.md) | 467 | `result-track:97ef0a6c096c36010c0ae074f0816ce4291e16a5189fe7e4e68adfc8ba0f1aa2` |
| 70 | `instance` | [instAddAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instaddaction.md) | 470 | `declaration-track:c733fe3034d98cc8a85fa894f71818494c380ae8c88354a120dabed313ba8f01` |
| 71 | `instance` | [instSub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instsub.md) | 479 | `declaration-track:dfc698443a7fe7e8f4b2b68811c6f8fe1cb0a4345f014a2648f08be70a546e7e` |
| 72 | `theorem` | [sub_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/sub-domain.md) | 485 | `result-track:11542d5a0748ccabc5bb3ddbb635c2f227fc290b713b76fa5c7fe839cda1f47e` |
| 73 | `theorem` | [sub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/sub-apply.md) | 487 | `result-track:91da6006a66276b30ff3cdc6840f694506545b535812f9b00504f065b3be0950` |
| 74 | `instance` | [instSubtractionCommMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/instsubtractioncommmonoid.md) | 490 | `declaration-track:f85b4c2810a9588988459e674b0199059f68013f2079945419abcf93d0f1d794` |
| 75 | `def` | [supSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/supspansingleton.md) | 521 | `declaration-track:280b19d7aa2f22e043f9e99d15e5fe7ce9d206d7eb893366e36ae198eb3d4ca0` |
| 76 | `theorem` | [domain_supSpanSingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/domain-supspansingleton.md) | 527 | `result-track:05687ce42d5342e5f624bc8531f97bac1fafa244734aeef818889111608b9a49` |
| 77 | `theorem` | [supSpanSingleton_apply_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/supspansingleton-apply-mk.md) | 532 | `result-track:60ed2cd06a2908fdaef8ef7ac6f104f724865c49f8a8bd3cbfc4a14caf81e95b` |
| 78 | `theorem` | [supSpanSingleton_apply_smul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/supspansingleton-apply-smul-self.md) | 543 | `result-track:6ada7fec3302e54baedfadb78d1294015df054241a79684c2c7185acef8f9102` |
| 79 | `theorem` | [supSpanSingleton_apply_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/supspansingleton-apply-self.md) | 549 | `result-track:674f1965ec04b63a28277ad0688f08e28bb9d5f3880fb3534325077c1b1a4e2a` |
| 80 | `theorem` | [supSpanSingleton_apply_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/supspansingleton-apply-of-mem.md) | 553 | `result-track:c20c93c42591451f8f0f05434aacd58c90b529c48a6fd81fa06f37035082d175` |
| 81 | `theorem` | [supSpanSingleton_apply_mk_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/supspansingleton-apply-mk-of-mem.md) | 558 | `result-track:d1be794d2d804c8e2ffbbd2ae12c07381e328b37f9bfd9c037f72c380e474279` |
| 82 | `theorem` | [sSup_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/ssup-aux.md) | 565 | `result-track:ea65dbdefaea5d18810c263d3946cdaab4265e2946c814ec5246642f56c1209d` |
| 83 | `def` | [sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/ssup.md) | 597 | `declaration-track:03fe92c758ad6858c04a8d5367d56dff93e5357a1e0cce481b138ad08adbaa7f` |
| 84 | `theorem` | [le_sSup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/le-ssup.md) | 600 | `result-track:a69eb3b8972f0dea16a45433c670391cdef97e7d3ddf01c515ef76f65b2af83d` |
| 85 | `theorem` | [sSup_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/ssup-le.md) | 604 | `result-track:32005c221b122e330c08150502604af135a0006c263b68ec4f407c1800780d9b` |
| 86 | `theorem` | [sSup_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/ssup-apply.md) | 612 | `result-track:186cbfd96aa79b28836c5d70c173363fd2ccabb0c125efe6e263aacfed71577b` |
| 87 | `def` | [toPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/topmap.md) | 624 | `declaration-track:95509ebbc5e5a48d11a589a5502e6f9d05b42b5b66282bf8c18a8abdabf41cf0` |
| 88 | `theorem` | [toPMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/topmap-apply.md) | 628 | `result-track:c67c5fc43e288f082e4effe251eba3615ef7bd9375760e72b0fdea260c0c7c8d` |
| 89 | `theorem` | [toPMap_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/topmap-domain.md) | 632 | `result-track:6698b2099ec25f999e32e44c30bfc132c73d94fdeeef91bafe7ce2e452cea096` |
| 90 | `def` | [compPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/comppmap.md) | 636 | `declaration-track:e6db32c273ab4274c28eaa4b1efc6c5883c4527071cfd8f30906b861c0f34d05` |
| 91 | `theorem` | [compPMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/comppmap-apply.md) | 641 | `result-track:7bbbd827dfaad09806203468690f1b3d8f128db1b2a0435431e08baa4e96d3de` |
| 92 | `def` | [codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/codrestrict.md) | 649 | `declaration-track:c1cca6224d4fbc3ca458c717f7acebf639c7d5664e08322dd4626c302f0e39b9` |
| 93 | `def` | [comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/comp.md) | 654 | `declaration-track:23dd561fc84e59168b61a655c7c285371fb2c335bb31e776d3fb48bb555d6bd0` |
| 94 | `def` | [coprod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/coprod.md) | 659 | `declaration-track:527f6e442e53e5e863a3a66e4e3b0210cd99e7671b9b7e17b0daf64ea183aef7` |
| 95 | `theorem` | [coprod_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/coprod-apply.md) | 672 | `result-track:2c26c3da18c5693eadd1aa800b924781a4e45beb275116ac0c86b4c78523bd3c` |
| 96 | `def` | [domRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/domrestrict.md) | 677 | `declaration-track:16eeab18d4e30d3b7dfb05268d0459aca5be58d670020a4b2564ff4a3d01d358` |
| 97 | `theorem` | [domRestrict_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/domrestrict-domain.md) | 681 | `result-track:d39171401aa2c139285ab8afd28ffcd3444fec9501b13e2736edd7aee2ee8b06` |
| 98 | `theorem` | [domRestrict_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/domrestrict-apply.md) | 685 | `result-track:1834a8784cee314bcd593e4015bd6539bd57bcd3218182ffd6cee437c13b825d` |
| 99 | `theorem` | [domRestrict_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/domrestrict-le.md) | 693 | `result-track:52a12ec1031f2c5e4e7817957404b8def9ce8613eda9bcea09c1edce689665eb` |
| 100 | `def` | [graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/graph.md) | 702 | `declaration-track:1c7ab630c6cfb7b06536e58083f699a8cf83116b8a96e054c996478dc549473a` |
| 101 | `theorem` | [mem_graph_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-graph-iff-source-edition-2.md) | 705 | `result-track:e2c2ae995f8cd7580fab83fd084e58a425e360b5495ac5ebb8dc5557506f18a7` |
| 102 | `theorem` | [mem_graph_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-graph-iff.md) | 709 | `result-track:382be0a8509bbc2417637725d53bb219b21bd64f60091a24b63f73b48c6b1601` |
| 103 | `theorem` | [mem_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-graph.md) | 715 | `result-track:2a16086851693a47422ae774b073d23f27db0124f64d5eaac922746a344babfe` |
| 104 | `theorem` | [graph_map_fst_eq_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/graph-map-fst-eq-domain.md) | 717 | `result-track:16f5606cb7a063a172cbf39039e838de53836646379ef57e58ab1b5fe2ebb6f4` |
| 105 | `theorem` | [graph_map_snd_eq_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/graph-map-snd-eq-range.md) | 728 | `result-track:8df2221b546304f56cccbb010588acd3989d56bc597575d773ed4be5a5c0ca41` |
| 106 | `theorem` | [smul_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/smul-graph.md) | 734 | `result-track:222cf398567316d4b29a1af8d3d052dccafdd50d30fb6ff57b99cb654de6e5c0` |
| 107 | `theorem` | [neg_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/neg-graph.md) | 758 | `result-track:4c43eb339d8c344db65def81b321ed467449a54958d273dd263fda8becde72f6` |
| 108 | `theorem` | [mem_graph_snd_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-graph-snd-inj-source-edition-2.md) | 781 | `result-track:a836eeb73a831fb7c12119eb73955744b0cb5f7cc6507d534510b15f46d49d43` |
| 109 | `theorem` | [mem_graph_snd_inj'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-graph-snd-inj.md) | 790 | `result-track:54400b298cb56b20a82cb608e143708a44ff5cd9f113b9167b4ea8eb4e0b7b0d` |
| 110 | `theorem` | [graph_fst_eq_zero_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/graph-fst-eq-zero-snd.md) | 797 | `result-track:f89a4b572820ea56f3f75acc55589ae3b618347b0a66cdeed6b86f127a7662b2` |
| 111 | `theorem` | [mem_domain_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-domain-iff.md) | 801 | `result-track:ad2fdc77daf0b7cc5ca5cab5f34c9e58e4241d03af0349000238a6be436960c3` |
| 112 | `theorem` | [mem_domain_of_mem_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-domain-of-mem-graph.md) | 812 | `result-track:5b16221f4401f3684108f123708ebcaffbb9986fec932ca5d828928b883ecaf3` |
| 113 | `theorem` | [image_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/image-iff.md) | 817 | `result-track:fb57066e595b3403ae3a0fb4cf4041ef7a07c1c29cbba44efc8a1f6218ff0937` |
| 114 | `theorem` | [mem_range_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-range-iff.md) | 827 | `result-track:e9ec7e3b60c88da16795b43d96ea11e05a70b7a08d8570b8b34b9606c09fd72f` |
| 115 | `theorem` | [mem_domain_iff_of_eq_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-domain-iff-of-eq-graph.md) | 842 | `result-track:16a676ff9a11e87e6eeeb474fc120511a5a5e08e21756a937494609332a10d20` |
| 116 | `theorem` | [le_of_le_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/le-of-le-graph.md) | 845 | `result-track:97e8177d881745ba561917d82c423b32cc6babace1e9fc06ebe0aad3d2fa6be8` |
| 117 | `theorem` | [le_graph_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/le-graph-of-le.md) | 860 | `result-track:b35020aa37ee043a57f6191ac863928239c31e8953b6067c396e0f4610f1deb8` |
| 118 | `theorem` | [le_graph_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/le-graph-iff.md) | 870 | `result-track:f0bb1b76b752a913bb0769587f718fc679934aaf34cd690c4ef581e14d407263` |
| 119 | `theorem` | [eq_of_eq_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/eq-of-eq-graph.md) | 873 | `result-track:3452564c891eb5614cd515124613b0f58a2fc345f43aece133eec2e3f5919da8` |
| 120 | `theorem` | [existsUnique_from_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/existsunique-from-graph.md) | 887 | `result-track:d0ec20f8be4d9a6a2e3a75cdf611853097cfdd933f2f401fc78c323b16755ce3` |
| 121 | `def` | [valFromGraph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/valfromgraph.md) | 900 | `declaration-track:042166c7fbc96beb3a755e110e4cfb06b3bb449238a2a543a2a94430f54fbbf4` |
| 122 | `theorem` | [valFromGraph_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/valfromgraph-mem.md) | 905 | `result-track:0ab6251e3a86030d2cbe33d7498322b7f5c9bfa4c385669229b66b33168c2a9e` |
| 123 | `def` | [toLinearPMapAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/tolinearpmapaux.md) | 913 | `declaration-track:dc18c03fb3605fac0137ef04b8a1b943ad7d66a5f979a83571b40a2daf58e774` |
| 124 | `def` | [toLinearPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/tolinearpmap.md) | 935 | `declaration-track:2b8a2cb2feedb1d7b580006983b3c7d81072d3cfb342848d3760aacabc9f5894` |
| 125 | `theorem` | [toLinearPMap_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/tolinearpmap-domain.md) | 940 | `result-track:4c7a8e11ee1b7f97ac6156d00e0f73f35926cf91d4877ae55998135339fe8013` |
| 126 | `theorem` | [toLinearPMap_apply_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/tolinearpmap-apply-aux.md) | 943 | `result-track:e2a9099bc826046e79a64b1b2483ce1a7578fa4e040cd57970280e6ca613c940` |
| 127 | `theorem` | [mem_graph_toLinearPMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-graph-tolinearpmap.md) | 953 | `result-track:2708b1f61aa34d54849648e12441ca002b82069f32e2e029365f741011f7218e` |
| 128 | `theorem` | [toLinearPMap_graph_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/tolinearpmap-graph-eq.md) | 960 | `result-track:8ece3360afdc0e0a281db0f51f258996858027e4ac4e8b830fa7bd0c66afcd5f` |
| 129 | `theorem` | [toLinearPMap_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/tolinearpmap-range.md) | 977 | `result-track:1f3f3ed1ead675af4676b0fb8aa123388ddfb9f613d5ff1b0b80f0e5afa2134b` |
| 130 | `def` | [inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/inverse.md) | 991 | `declaration-track:a19c19f6b9e58d7948f76ccd34a5d488ed73a5954402845adcc0b8b72f594a5f` |
| 131 | `theorem` | [inverse_domain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/inverse-domain.md) | 996 | `result-track:3d4244121a6537c9a5cb7d59c6999059703def9024d1f0c79fd1180145521e10` |
| 132 | `theorem` | [mem_inverse_graph_snd_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-inverse-graph-snd-eq-zero.md) | 1005 | `result-track:a4a7b64d77be4eb87548b47cf4149f7ca00c6d99479220fb3161a6fa9353c2b5` |
| 133 | `theorem` | [inverse_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/inverse-graph.md) | 1018 | `result-track:f0ccff1485fb9d65c47260f4a3d09d4322c3136f7ab87ff292efc4251ec4ee93` |
| 134 | `theorem` | [inverse_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/inverse-range.md) | 1021 | `result-track:2ff0a540f87c60dfc39317a1c7405b2452c37dfe0eacde467233d1fa71d5fba9` |
| 135 | `theorem` | [mem_inverse_graph](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/mem-inverse-graph.md) | 1026 | `result-track:e42d70166cd252173f0afc69881bec16e50ce3adbe5f4f42d3e372a9d3d65a52` |
| 136 | `theorem` | [inverse_apply_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearPMapNamespacedDExt.lean/declarations/inverse-apply-eq.md) | 1031 | `result-track:f29e04be3bc4e0a68b1c8053ab95178e267889407ccb32c2cfb8b6c1ed41b145` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7641c875ad89cb316241a9a70eaed16243b957b5d01b7196be34296ff5f3db8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
