# Verification target: Alternating Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a27cfc439d7cd3c3f4b15baf3373869bf960468c",
  "lexical_observation_count": 124,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf217f88f63ad8b916e2e0c7df16949e6b00e04b20a1e57e29927be5a1022683c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a27cfc439d7cd3c3f4b15baf3373869bf960468c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantf217f88f63ad8b916e2e0c7df16949e6b00e04b20a1e57e29927be5a1022683c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantf217f88f63ad8b916e2e0c7df16949e6b00e04b20a1e57e29927be5a1022683c.lean.json)

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
| 1 | `structure` | [AlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/alternatingmap.md) | 68 | `declaration-track:8dcd325c45d682954f92748c5c8f48673be7c587bd9a6cb7acc6e232dfd83ae7` |
| 2 | `instance` | [instFunLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instfunlike.md) | 95 | `declaration-track:f19baac8dd14a15cd1c087e4990562d1551a686fe9aa97160baf0cf69f9cc79f` |
| 3 | `theorem` | [toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/tofun-eq-coe.md) | 105 | `result-track:6d070e5e37a36e0e4a1306ccdc2b08169b5c1aea00952c796b5c396c7e9e39aa` |
| 4 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-mk.md) | 109 | `result-track:6f8ab58e5bb8afb7d4aa770cb467389171effa1aaa9c79de7807874932338f45` |
| 5 | `theorem` | [congr_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/congr-fun.md) | 113 | `result-track:cb699b5d73ed92c610393fc5e0c06b088e21eb8eadfd7e88dbadf8fd3d0794d4` |
| 6 | `theorem` | [congr_arg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/congr-arg.md) | 116 | `result-track:dbcdbfe9aad1e08e747c77f14c2724ecce7744d04f34816224bb3f1be51a3511` |
| 7 | `theorem` | [coe_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-injective.md) | 119 | `result-track:2e4073bd30ac5f9f1a06da63470a092236c71f9d94ef95980d7c2bbf9b2fbe62` |
| 8 | `theorem` | [coe_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-inj.md) | 123 | `result-track:9d57dd36b7385fefe6cb07fd0f65539f6d0e8e3cd8fbc093e39c20f4686d7f1e` |
| 9 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/ext.md) | 127 | `result-track:5f7e3bec8ce02ee0da21fa3c1ad828811807125efc5c263e05b71109c1f63824` |
| 10 | `instance` | [instCoe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instcoe.md) | 132 | `declaration-track:502ed0029267c3c75f9b0e8fe0cce341dea9fb9a53bd4cfe0a5c4a46ccdea64a` |
| 11 | `theorem` | [coe_multilinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-multilinearmap.md) | 136 | `result-track:387d85a3c83a039cf97161d621a6f39ed2353533622b42224101eef7bee43414` |
| 12 | `theorem` | [coe_multilinearMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-multilinearmap-injective.md) | 139 | `result-track:398f941bb36e38506be834ec82f2bc15a10411830c02b72096d1ae71da860b7b` |
| 13 | `theorem` | [coe_multilinearMap_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-multilinearmap-mk.md) | 143 | `result-track:8f10ba4b4022f29fedc782f411855c368815b56eb1dc8d5f73792cc9adcbd15b` |
| 14 | `theorem` | [map_update_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-update-add.md) | 158 | `result-track:bc897111fe5e9c6649d1e16bb1e8c41ff6567b6f178d9f72f367792f3d4d0fcc` |
| 15 | `theorem` | [map_update_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-update-sub.md) | 163 | `result-track:83b14f8a6063c12e13d792c9d67a4d47665e6fd8a2b86d20615b8781644c3c2d` |
| 16 | `theorem` | [map_update_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-update-neg.md) | 168 | `result-track:340fdb63ea13fdef9a6962cf8257e6d9c6c621eb95e27847a1956937dab72bc8` |
| 17 | `theorem` | [map_update_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-update-smul.md) | 173 | `result-track:6b108bcd8a4e7d13271e8da1ad10e1d119c799cb60ffc31eb78bb40f089ef46a` |
| 18 | `theorem` | [map_eq_zero_of_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-eq-zero-of-eq.md) | 178 | `result-track:9a56afa83f7a612a3f85c193ea71ff0d87df067223c7d80fbb9d4a25527f2c10` |
| 19 | `theorem` | [map_coord_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-coord-zero.md) | 181 | `result-track:5785ddb287c01cba0fe6ee8d552ca5e27a90e40587e25075d9988011088dd377` |
| 20 | `theorem` | [map_update_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-update-zero.md) | 185 | `result-track:df54672aa16a163774fb6d2e4c70ed079bc5906389f3ac75699f66084394b4d7` |
| 21 | `theorem` | [map_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-zero.md) | 189 | `result-track:6039b40d9b0b26ec120dfeea6d04a6b6b599db4738be0a074bab7e657a87b57c` |
| 22 | `theorem` | [map_eq_zero_of_not_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-eq-zero-of-not-injective.md) | 192 | `result-track:43a5599d5a8d751a8a33647b63cba23f6fb9b7b340ce6fe05c33d55a65ed3335` |
| 23 | `instance` | [instSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instsmul.md) | 210 | `declaration-track:153843cbfe4d6a8d4bad9f5940e0eec75187a1996029138eee6c72d22761457c` |
| 24 | `theorem` | [smul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/smul-apply.md) | 216 | `result-track:bd3fd97989e515291d8e9f01ec2fc7ccd1c4eaeee6216180fc346761a9c91e36` |
| 25 | `theorem` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-smul.md) | 220 | `result-track:10e6d24f3b48fdbdfcd1348eea56d3989dfb525fbcbf0e0121e8331bfa54ef9c` |
| 26 | `theorem` | [coeFn_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coefn-smul.md) | 223 | `result-track:5be03476dfd58ce428e3199fc44f580503fb58de58ef958f553505f5bdb63f2b` |
| 27 | `instance` | [instSMulCommClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instsmulcommclass.md) | 226 | `declaration-track:a68276bf623e92b98f33a4bbb5977249c7d7adb4226222c8051f877ac4c7857d` |
| 28 | `instance` | [instIsCentralScalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instiscentralscalar.md) | 230 | `declaration-track:aa474339a11eba6304466da02221358d2a756667aa5daafe97dbd09deb8c67ad` |
| 29 | `def` | [prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/prod.md) | 238 | `declaration-track:e220d571c0575cf987050552d37d3da2dcd4b96dbc1fd0719c0d3e7b80780875` |
| 30 | `theorem` | [coe_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-prod.md) | 244 | `result-track:521c9ac35c63e4c38b86a9ba56671595d47e89b2925ebe9840bbfe531d6b5694` |
| 31 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/pi.md) | 251 | `declaration-track:10c963de19f4c4fa3bde1f2075dcc8770c7a0691ffc928d969d0f8182f5a1dd8` |
| 32 | `theorem` | [coe_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-pi.md) | 257 | `result-track:222f1e6dba6b41d5d78f3c133bf0d3167afa63d6e8786f077620d9d21bacfb46` |
| 33 | `def` | [smulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/smulright.md) | 265 | `declaration-track:249331fcd183e0b384905873750aae36d5e7ffd75b4ed1ac13a9a73fc08d6b6e` |
| 34 | `theorem` | [coe_smulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-smulright.md) | 271 | `result-track:5b08f814e9196b9fc9d1ffa2515563e893a8312d0a0ace22603776079741acf4` |
| 35 | `instance` | [instAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instadd.md) | 276 | `declaration-track:f6a4069b900b703e44523256d7ad3c1139a82c83a45fe1853b5452ecc2b1ce09` |
| 36 | `theorem` | [add_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/add-apply.md) | 283 | `result-track:da95e51596e46bb1c386d292e6faa23e6ad32fb8569169b44a9e02a410f904f9` |
| 37 | `theorem` | [coe_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-add.md) | 287 | `result-track:5a5ce9445471d091534b1fd41807f4204e4788e965a5ff18258f45ae90b2685c` |
| 38 | `instance` | [instZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instzero.md) | 290 | `declaration-track:8744fecaec05e643580b47c8f173aaf6cb72249a87a2567bc759eaa4eda514f2` |
| 39 | `theorem` | [zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/zero-apply.md) | 295 | `result-track:b16d1844222f84d709fc68fef8ce35eb3e4a5e265cfb706a4243e0a76b893f52` |
| 40 | `theorem` | [coe_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-zero.md) | 299 | `result-track:72bf93398c6f85a94e69c772707eeba7f36fb0b6e9bde7262b78aa3ecf01c5a8` |
| 41 | `theorem` | [mk_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/mk-zero.md) | 303 | `result-track:15c4985d397ac59e3c8144cde8598152297463b4707b6965ebb2a54ca87d912a` |
| 42 | `instance` | [instInhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instinhabited.md) | 307 | `declaration-track:243af51017f9e13daced66cb653db6f1cfcfd01dba6341e30429de371b349987` |
| 43 | `instance` | [instAddCommMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instaddcommmonoid.md) | 310 | `declaration-track:52f75055b284c42e7f085c5a3b1ca3e1bb45ac3d7c5f9eab12423f76bc9bbdc7` |
| 44 | `instance` | [instNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instneg.md) | 313 | `declaration-track:8ec800bb8f314cc48542a7560cc9e0e30103c3ceb72f209a57ffa9aadfd8a327` |
| 45 | `theorem` | [neg_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/neg-apply.md) | 319 | `result-track:fa98d5c43c309fac3234d45b28556bcdeea046f94f995f56f0077a44c4dce5e8` |
| 46 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-neg.md) | 323 | `result-track:d19885911fc513cdcfb9623d4c88a0ee0e1f937176ceaf577a7c58c8a8e8534f` |
| 47 | `instance` | [instSub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instsub.md) | 326 | `declaration-track:39c59b6eb05098c4d1d65b2592226eb9344f8ac57a094ee128ab932dee06fa09` |
| 48 | `theorem` | [sub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/sub-apply.md) | 333 | `result-track:c05d4d6af2ee510e1b3d338ad978706a2f24174b1d6c8335cd0688b287e5676f` |
| 49 | `theorem` | [coe_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-sub.md) | 337 | `result-track:a8d02551800acdd56dcd168c46e74d91c17320d64520e688cc1a44bc4ca7c873` |
| 50 | `instance` | [instAddCommGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instaddcommgroup.md) | 340 | `declaration-track:8bd9857ae4d5008a7f9e44767815cb7d390531bfd8cb81c1d2a4eb67a29d1f42` |
| 51 | `instance` | [instDistribMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instdistribmulaction.md) | 348 | `declaration-track:b0b20219742e5ce90dc0cb206a960055def72075f796558ab7f2c368f5bf06cc` |
| 52 | `instance` | [instModule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instmodule.md) | 362 | `declaration-track:9d5f91bb2b96fd03727dd60d622773a558a8146474f8c287b8b7cb2f35968eac` |
| 53 | `instance` | [instIsTorsionFree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/instistorsionfree.md) | 366 | `declaration-track:097681219936539b0e8d8a35f1b55547ce79a3f8b4db4533ca1fffaf116f607b` |
| 54 | `def` | [toMultilinearMapLM](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/tomultilinearmaplm.md) | 371 | `declaration-track:471490101552853cf00622f8b01303e5ddf7dafa3c36a4d90d42f194c61ce461` |
| 55 | `def` | [ofSubsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/ofsubsingleton.md) | 385 | `declaration-track:7525ef83f52aa370b9c72f389e5b8d8d4de45c3e12357a1bdadd6792747d5f37` |
| 56 | `def` | [constOfIsEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/constofisempty.md) | 395 | `declaration-track:7c3aabc29be8e48a252cc68fc834a2b7811778c0ab087f801dbba0b41f81b5a7` |
| 57 | `def` | [codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/codrestrict.md) | 404 | `declaration-track:98db2d7ae5966cff9773456e3b14a99f5fa72b0c0d3a1f5da8c024c5221e5c66` |
| 58 | `def` | [compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/compalternatingmap-source-edition-2.md) | 422 | `declaration-track:d2dfef58ce8f755dc92b162ef6f034aa060c3e582cb4368a1a6d0f900ef19f9f` |
| 59 | `theorem` | [coe_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-compalternatingmap.md) | 427 | `result-track:080ade5fe453514c3cdba416e0cad6275a6b62c3743a594c981c571a48f5ffde` |
| 60 | `theorem` | [compAlternatingMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/compalternatingmap-apply.md) | 432 | `result-track:084ec5174c48fd0dee52c57dd67a380c33a56dc487335617cb82e1a01094077c` |
| 61 | `theorem` | [compAlternatingMap_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/compalternatingmap-zero.md) | 437 | `result-track:6cd40c39702e36022542b2e75b5c622bfe4a6fa09ba6bfe2c3dadb20ec2fccad` |
| 62 | `theorem` | [zero_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/zero-compalternatingmap.md) | 442 | `result-track:efd88d1423655aa37287f3f2b6325f85cd60146674519479608d3bd942e6cf64` |
| 63 | `theorem` | [compAlternatingMap_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/compalternatingmap-add.md) | 446 | `result-track:c68aaba368aecd699aa2ba164fd8d01f9d6656c7d4b43b4fef60cbb1209392ac` |
| 64 | `theorem` | [add_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/add-compalternatingmap.md) | 451 | `result-track:032ed1de914c47d391f3a9b0d3412b6497fe3dc874e2801a90b2fa0cf25cb23d` |
| 65 | `theorem` | [compAlternatingMap_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/compalternatingmap-smul.md) | 455 | `result-track:ce48bb3b29d9ec1862f50b2fac98c1de751d7c5813efcc943a338d38c17c7cf2` |
| 66 | `theorem` | [smul_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/smul-compalternatingmap.md) | 462 | `result-track:492bba79148b994a0a17179430e7f1fffbb7bb4613a4d163170ba1a42be877dd` |
| 67 | `def` | [compAlternatingMapₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/compalternatingmap.md) | 469 | `declaration-track:417e727d396a28585f754d0800cf8bac3a19c04627e000e14c7a32031f50c561` |
| 68 | `theorem` | [_root_.AlternatingMap.smulRight_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/root-alternatingmap-smulright-eq-comp.md) | 477 | `result-track:6d07cea697c940b6fb85adb6551331db84050df83dca1f57e57773a58a70f065` |
| 69 | `theorem` | [subtype_compAlternatingMap_codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/subtype-compalternatingmap-codrestrict.md) | 487 | `result-track:89b443cd45d422a429a03b6c2d3894342840a925eaa452aef299c763f76de11e` |
| 70 | `theorem` | [compAlternatingMap_codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/compalternatingmap-codrestrict.md) | 492 | `result-track:36bd2a6b6f5a5b3a1ec30756a2218dcf8b808f21cf5d56cdc3cc367522c1a341` |
| 71 | `def` | [compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/complinearmap.md) | 507 | `declaration-track:df8be59c19505796d3ba96bd4236df93eacfef691e01d71b9367aac1f9a9b044` |
| 72 | `theorem` | [coe_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-complinearmap.md) | 511 | `result-track:9e7612ba7d6f63e6dea355df980f1c0f9d46bb84d707d9c29fc0a9b711cb81f6` |
| 73 | `theorem` | [compLinearMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/complinearmap-apply.md) | 516 | `result-track:f8ce08aceae75ecabdaa06980b57c5bb0fe666265aa08fe53b3b229c051de3fd` |
| 74 | `theorem` | [compLinearMap_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/complinearmap-assoc.md) | 522 | `result-track:64d6d9ebd9f0ce33221283419ab49b723fd619fc20decf7c39fc2ff758fd7c39` |
| 75 | `theorem` | [zero_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/zero-complinearmap.md) | 527 | `result-track:2b1570cf68ba89df9415025747bb0ec7bc989f6b89863a4357a6ad300ef1fd00` |
| 76 | `theorem` | [add_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/add-complinearmap.md) | 532 | `result-track:d4c15097e65d21be818851509f8ff49c9c237ad3ded5567890be4b80345ac764` |
| 77 | `theorem` | [compLinearMap_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/complinearmap-zero.md) | 538 | `result-track:3f7e4910f3231dfc216982aaaee07927e76f3de4a481fc46d097ad003d39cc34` |
| 78 | `theorem` | [compLinearMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/complinearmap-id.md) | 545 | `result-track:d8296b8e119f42f01af3a178f8ee7b2946fca09d0ace69a09ce3a065e603c1bb` |
| 79 | `theorem` | [compLinearMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/complinearmap-injective.md) | 549 | `result-track:6b386ed6023a70db109e53b50c8fa39e51d6dc90bf9164df643a12fac1bb6228` |
| 80 | `theorem` | [compLinearMap_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/complinearmap-inj.md) | 554 | `result-track:73c5847699e3e8ae2e0bff34618b87e161aa3d13e12b40058001ce5021bbcd8b` |
| 81 | `theorem` | [ext_ring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/ext-ring.md) | 562 | `result-track:71e8b0947bc3a99c80db225074ce157c4ba8a4a87e1eba21925846fce462058d` |
| 82 | `instance` | [uniqueOfCommRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/uniqueofcommring.md) | 567 | `declaration-track:6335b973810508e6c0a3a1854e00c5fcbf45948a53ae20d34b22106f15dedfa2` |
| 83 | `def` | [domLCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domlcongr.md) | 582 | `declaration-track:7f5a7d9020d9fb60c4481bc2631874570edf055d36c43217e49a016f1fd851ab` |
| 84 | `theorem` | [domLCongr_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domlcongr-refl.md) | 591 | `result-track:533ef62ce58de9c8bd9721727ae8b14291b98e7e7f2c52a2e0fa6da4eef5ef2d` |
| 85 | `theorem` | [domLCongr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domlcongr-symm.md) | 595 | `result-track:da390588ad07ddadc9efaa9e44c3ffccba304f092500a6f68162c341d060770e` |
| 86 | `theorem` | [domLCongr_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domlcongr-trans.md) | 598 | `result-track:e6b550e5eebcbc1ce0db55e6106a9611b76497ac6870838812ab39186ceed465` |
| 87 | `theorem` | [compLinearEquiv_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/complinearequiv-eq-zero-iff.md) | 607 | `result-track:259d1f2a38589ec4abc483639c458c1ab6e86947b1ba6042ce7efa217d27fd64` |
| 88 | `theorem` | [map_update_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-update-sum.md) | 625 | `result-track:b424cbcd7284c200fe454536a22bec5854bcd3a80e132d9a79a3b46f5bf4d3b2` |
| 89 | `theorem` | [map_add_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-add-univ.md) | 629 | `result-track:6461f99142db60a4e627ff98baaf27db6142330904685b3765d1b32b07a133f5` |
| 90 | `theorem` | [map_smul_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-smul-univ.md) | 633 | `result-track:5a1eecafd51165b3dce18e28fd46ea3a117935e36b6e6cb8df89089748a8fe40` |
| 91 | `theorem` | [map_update_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-update-self.md) | 649 | `result-track:8c8fa1b78715a5b182fec3e772c760d31eb03feddf443cf2deca99e9e88753cd` |
| 92 | `theorem` | [map_update_update](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-update-update.md) | 653 | `result-track:63c57b395f08d62caaacce8e442e91497aac92dc432b13f3df96cdff96c97db1` |
| 93 | `theorem` | [map_swap_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-swap-add.md) | 658 | `result-track:157a683b820a22c04bf3630b6a791843d8c62e3ddf0a1623f910c04783a9f74a` |
| 94 | `theorem` | [map_add_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-add-swap.md) | 665 | `result-track:c50321e2b7b5535de35de822d2aa2c450baba8d0b5761d23f399a3db8f214b7b` |
| 95 | `theorem` | [map_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-swap.md) | 670 | `result-track:7628f47997ab6810d2a91ce9a833250c2904d5210e783c2fb17a5f4a9828b641` |
| 96 | `theorem` | [map_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-perm.md) | 673 | `result-track:36937b8a6dccb0de813a710c8a50e77d600111446aaec9230646738b9d29231b` |
| 97 | `theorem` | [map_congr_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-congr-perm.md) | 679 | `result-track:48d83f511706259396a7182ad87562eb955b9934f98aa2687e2786378ca02a23` |
| 98 | `def` | [domDomCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-source-edition-2.md) | 690 | `declaration-track:adc495cf8530d3c3dec343b9ff446a6bf14a6aaf00c42a500db304cce1688d38` |
| 99 | `theorem` | [domDomCongr_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-refl.md) | 698 | `result-track:012743dac282177088065c827ae9fa55e548030e2fd5048cddfd85406177c14e` |
| 100 | `theorem` | [domDomCongr_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-trans.md) | 700 | `result-track:576ceacb96259e66736b496ca6335e656db352d8049e053681ff45f3fd68f3f2` |
| 101 | `theorem` | [domDomCongr_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-zero.md) | 705 | `result-track:91819c9b12ba313ec9394d96d1c6dc464e6e19aae3b0ee3e69bb5873e7b8e27b` |
| 102 | `theorem` | [domDomCongr_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-add.md) | 709 | `result-track:dca667af3913a992783bfda0e2ad01dc600aba68c59abd383f51e6e1977fa167` |
| 103 | `theorem` | [domDomCongr_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-smul.md) | 714 | `result-track:a94c32a5730d5fdd12e5398373646a663e76cb536501ddad092160d8e22c557a` |
| 104 | `def` | [domDomCongrEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongrequiv.md) | 723 | `declaration-track:d146d89a36e5a7f5285b07ef6dd4f19183e00466c703d0a741223074ad9ca9e5` |
| 105 | `def` | [domDomCongrₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr.md) | 740 | `declaration-track:2181aef0ad9aa5b60a70981755df2a14081f90bca8b48a5af5724701999071a4` |
| 106 | `theorem` | [domDomCongrₗ_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-refl-source-edition-2.md) | 749 | `result-track:29e9377565ee9029d103f561eb3da8bc232ff128956c6d22bfcb82c2fd33bca8` |
| 107 | `theorem` | [domDomCongrₗ_toAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-toaddequiv.md) | 755 | `result-track:243ffdbd11acc50ec9f144142fd643b269177d9fc7f0de04687b8eafdd3b5382` |
| 108 | `theorem` | [domDomCongr_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-eq-iff.md) | 764 | `result-track:5a846f67aa047acd25fa8fc990e30cb8431fdc6b278b9bd0d247ff415238cea3` |
| 109 | `theorem` | [domDomCongr_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-eq-zero-iff.md) | 769 | `result-track:c709e441d0b54b159bbc9f36abf8efde8fb2b50c77a7c3dea15d17c02570d784` |
| 110 | `theorem` | [domDomCongr_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/domdomcongr-perm.md) | 773 | `result-track:0ef3ece74fb93a2d2599dc69986d28039e62794f06548a50db8c4bb460088e52` |
| 111 | `theorem` | [coe_domDomCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-domdomcongr.md) | 778 | `result-track:fa62ed769c4a82622caac9d7b21cca020ec9c2209b926ce83c596782cca26042` |
| 112 | `theorem` | [map_linearDependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-lineardependent.md) | 785 | `result-track:242c9f289c87c4aec1b4950483f5cfea020ae45717fb808f622c04e7b5016998` |
| 113 | `theorem` | [map_vecCons_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-veccons-add.md) | 805 | `result-track:1418e9015b2e0854bfbe4db45599563ebafed734ecf814f742d49ab1ebed8def` |
| 114 | `theorem` | [map_vecCons_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/map-veccons-smul.md) | 810 | `result-track:2524fa290a9bc08766f3e72d9e788f31bdbbfd5b770e70b8641eef61fec63aed` |
| 115 | `theorem` | [alternization_map_eq_zero_of_eq_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/alternization-map-eq-zero-of-eq-aux.md) | 824 | `result-track:6799df7091205373e21a2d3ea1d55cdba4f8d31603aea22d6a1b3c974dd9348b` |
| 116 | `def` | [alternatization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/alternatization.md) | 836 | `declaration-track:60c41fe5878a8524cc24aeaf37c6df1d4547e41336945416fd188026f81e9bd3` |
| 117 | `theorem` | [alternatization_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/alternatization-def.md) | 845 | `result-track:a85dd2448782f7aac839a56581a4232f933b95454746d6addd4415ce66179154` |
| 118 | `theorem` | [alternatization_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/alternatization-coe.md) | 849 | `result-track:e7246151d0be9abe7b3d52aad0e9f956c992dc9b7e6e729e8e3839b77ec63b99` |
| 119 | `theorem` | [alternatization_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/alternatization-apply.md) | 853 | `result-track:de59df17fc545208d97338a7835e7c34473113b509265b208a43cff77120e9c8` |
| 120 | `theorem` | [coe_alternatization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/coe-alternatization.md) | 863 | `result-track:442324bae6170f28a09ed7c1b019fa61fa8ae3cbc2b054997ba049ba2f829ce0` |
| 121 | `theorem` | [compMultilinearMap_alternatization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/compmultilinearmap-alternatization.md) | 878 | `result-track:20fb44538a53f9c65c8e1369c507f1315ef82876b76a09bede5fde74a9ab16db` |
| 122 | `theorem` | [Module.Basis.ext_alternating](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/module-basis-ext-alternating.md) | 897 | `result-track:4d057699effd0884a2fb998b43fbfbe6a7617c4062de848b41912cce484705ec` |
| 123 | `def` | [LinearEquiv.alternatingMapCongrRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/linearequiv-alternatingmapcongrright.md) | 918 | `declaration-track:5d56210be56e5d9eec3a8c62c454490a0914eaf0110adde188e69a86633b2e31` |
| 124 | `def` | [AlternatingMap.constLinearEquivOfIsEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasicPublic.lean/declarations/alternatingmap-constlinearequivofisempty.md) | 930 | `declaration-track:4b3999048797e60cff285c395be4ad616d682343795c5220570597ff4bf741e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61ff6612ecb33b845598c074eeec2519d4bfa9bfa21648e2b2b9f8653a04b288 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantf217f88f63ad8b916e2e0c7df16949e6b00e04b20a1e57e29927be5a1022683c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantf217f88f63ad8b916e2e0c7df16949e6b00e04b20a1e57e29927be5a1022683c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
