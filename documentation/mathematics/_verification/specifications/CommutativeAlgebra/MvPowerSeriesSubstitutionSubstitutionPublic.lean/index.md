# Verification target: Mv Power Series Substitution Substitution Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fe7b2c38a8895ae64b404efa4996b2d8659d60c",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fe7b2c38a8895ae64b404efa4996b2d8659d60c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean.json)

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
| 1 | `structure` | [HasSubst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst.md) | 78 | `declaration-track:3988c4ccafe19c4efb768de5b26acace3990a01de14210706307a303e622df1a` |
| 2 | `lemma` | [coeff_zero_iff](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-zero-iff.md) | 84 | `result-track:79cf7ca7885da4f5f7211a369d44e175e65256547c37f2c34d36412cc078dd3c` |
| 3 | `lemma` | [hasSubst_iff_hasEval_of_discreteTopology](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-iff-haseval-of-discretetopology.md) | 91 | `result-track:5bbb7871dbc30f295abc61292deaa4e659a254e1eb55e0872cdab2b667708421` |
| 4 | `theorem` | [HasSubst.hasEval](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-haseval.md) | 96 | `result-track:6b55d7a39266c23962f73188cc713d2d185c0b67655fe1f687ce786caaf9008d` |
| 5 | `theorem` | [HasSubst.zero](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-zero.md) | 100 | `result-track:cfa537896d43550a3d63c9f239283f628d65398979c0cd68596a83274f72d0d4` |
| 6 | `theorem` | [HasSubst.add](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-add.md) | 104 | `result-track:3de6b6dc53c11f4cdd83063dc2b0bab0a4f86997c68592e0804339f3ac65a553` |
| 7 | `theorem` | [HasSubst.mul_left](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-mul-left.md) | 110 | `result-track:32238f68944bd4b93bbcc190fd5d2bea9950f728f5ba52d6fb69d7019520c41b` |
| 8 | `theorem` | [HasSubst.mul_right](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-mul-right.md) | 117 | `result-track:cc8de9ecdb2bba33a863cf635297e98e365004fbeb65d14b7b5197c2e57e789d` |
| 9 | `theorem` | [HasSubst.smul](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-smul.md) | 122 | `result-track:4f4890a54b8a37f2ede49c9437e31c2b5612200e88a6015d09c80cac5c2457c1` |
| 10 | `theorem` | [HasSubst.X](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-x.md) | 125 | `result-track:23fd3745eecd4d0c84a4e25abdf5cd3acbd52caa8b7243be3b7618c85152569a` |
| 11 | `theorem` | [HasSubst.map](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-map.md) | 130 | `result-track:3e8bb5cca85acb79952de4d41cc05a0c688d256eb0e5fc55ec6fee1462ab1f34` |
| 12 | `theorem` | [HasSubst.smul_X](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-smul-x.md) | 135 | `result-track:8bfdc7cdb7c25eef1d7ebd3a9aba4cd11cae30c3b9f55809f99aae2b46cdc96f` |
| 13 | `def` | [hasSubstIdeal](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubstideal.md) | 141 | `declaration-track:3a4117a4e79af183d8a7ed9f531c2c33a5d39583d4373d7506c54c06a25efaf1` |
| 14 | `theorem` | [hasSubst_of_constantCoeff_nilpotent](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-of-constantcoeff-nilpotent.md) | 148 | `result-track:ea52e8696e97b3ce958f81b136bd2fbcd64a7eb2b6c9a4211707b767491fc351` |
| 15 | `theorem` | [hasSubst_of_constantCoeff_zero](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-of-constantcoeff-zero.md) | 155 | `result-track:2d701886cb4af5bdd15e33aab6535c97be67c4622a1f35cc97b310c77600151c` |
| 16 | `lemma` | [HasSubst.X_X](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-x-x.md) | 160 | `result-track:cbce43e9ed2079fb04a25a36ab4a9503b0e30b0725ba70e88eb2c0ea2d9c6176` |
| 17 | `lemma` | [HasSubst.X_zero](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-x-zero.md) | 163 | `result-track:fa37c6b153fe636fcf34d6cfb4cbe7ff128b0ddddbfc678ad6fe889041c074ac` |
| 18 | `lemma` | [HasSubst.zero_X](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-zero-x.md) | 166 | `result-track:6ced585a08df4a56d40398acb747611a6652b8ccf0c80f841878b17ae05def54` |
| 19 | `lemma` | [HasSubst.pow](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-pow.md) | 169 | `result-track:f8d4a6b691445930d06defa2eb07536044da704b451e187f32458b7af363d877` |
| 20 | `theorem` | [HasSubst.X_pow](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-x-pow.md) | 173 | `result-track:69e948b3d8a816b8e146c0249b645a0f29500dc8dfb020361bd5f151e4c1a034` |
| 21 | `lemma` | [HasSubst.truncTotal](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-trunctotal.md) | 177 | `result-track:4e0ddb512a04ec60fec5cfbc3779f78c69613d39e08ce7a97987bca8a6bb0216` |
| 22 | `def` | [subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst.md) | 190 | `declaration-track:37750fd1fbf26fb70646e739816a5a093c78c9a7c96e0c508d975f6692179362` |
| 23 | `theorem` | [subst_eq_eval₂](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-eq-eval.md) | 196 | `result-track:dda10c5180aff24ae407092f7133a9e902a5a96173dbbfc78429822fe7fdf768` |
| 24 | `theorem` | [subst_coe](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-coe.md) | 201 | `result-track:9ca1db759efef920abac9ad87d657286a8f5f4d588312fb370d09e15aab2cad8` |
| 25 | `def` | [substAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom.md) | 210 | `declaration-track:ddef403e4cf517d4d14692c3dc5d978dcd19e15f99673ce63e5f989f9ae1a546` |
| 26 | `theorem` | [substAlgHom_eq_aeval](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-eq-aeval.md) | 220 | `result-track:2c731003c2d8678545b59cf52eace96ab24abfce9b16ef7dba494943de5da799` |
| 27 | `theorem` | [coe_substAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coe-substalghom.md) | 229 | `result-track:a244ca93d43a42c8b35a593e3cffced5605b2fe5855c475325be9bb5a7bb0478` |
| 28 | `theorem` | [subst_self](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-self.md) | 235 | `result-track:56fbe5a2ea431ee20916e6230ace0bc5397618c93ba2ece33c9077cb48bdebe6` |
| 29 | `theorem` | [substAlgHom_apply](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-apply.md) | 245 | `result-track:2f550e9a056e67baa10f08115aa590731f6c5526363b3aa8f6143686bb33081b` |
| 30 | `theorem` | [subst_add](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-add.md) | 249 | `result-track:14c711b4ec2a0fcd2e3fe8a3a2ddbdca44685fe6964f0cb0fdaa90ee1b6a0d26` |
| 31 | `theorem` | [subst_sub](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-sub.md) | 253 | `result-track:172b642aad9f3b040f8566c107018945fb578b98f3effb9c5afb20baa5be71e8` |
| 32 | `theorem` | [subst_mul](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-mul.md) | 257 | `result-track:c9a5d53d5566ef0c52296d4cd87c8c17c57220f88999bce71e375ce232844fc2` |
| 33 | `theorem` | [subst_pow](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-pow.md) | 261 | `result-track:6cb5fe925ab42cdad7c76e86de3c64f43c5cf4d377914cae4380310eb6694bb3` |
| 34 | `theorem` | [subst_smul](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-smul.md) | 265 | `result-track:7a96fa08136df5af3278e24ae71786d01b5c4be1a0c26bd56375ba26df6e40d7` |
| 35 | `theorem` | [substAlgHom_coe](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-coe.md) | 269 | `result-track:fc07213b864bed2661d7f8c65fea45be361e779cab34365e53dff56109495b31` |
| 36 | `theorem` | [substAlgHom_X](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-x.md) | 273 | `result-track:b2a2aac37b673e592f375594da558846f4ed4d2841275106f2c94b63806c86f2` |
| 37 | `theorem` | [substAlgHom_monomial](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-monomial.md) | 277 | `result-track:b2c3b819bca674d6fabc7fc2a7c61d041de152d6fe0510b6dd95b0dea6d260cc` |
| 38 | `theorem` | [subst_C](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-c.md) | 283 | `result-track:3874aa7389bf759d7d4b518aa618bdca435680c47674a90aa403e38cae44eb73` |
| 39 | `theorem` | [subst_X](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-x.md) | 288 | `result-track:3a2c509370e440adb8239874d8ed1b4a4271aedd427e88cea32bde01f58c45f2` |
| 40 | `theorem` | [subst_monomial](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-monomial.md) | 292 | `result-track:3c5838ce82f07539bdc8a687ea06f735bddf6c794ddd459c789b562c17a1742a` |
| 41 | `theorem` | [continuous_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/continuous-subst.md) | 297 | `result-track:56004da2f17d6a32712afa27e3c9c26baded941435e3244d4abdf9868374eaba` |
| 42 | `theorem` | [coeff_subst_finite](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst-finite.md) | 303 | `result-track:b73081f6f2a0126a5fc2d5e9dd12c97f1343b5a99717a1097e80f23266fe3061` |
| 43 | `theorem` | [coeff_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-subst.md) | 310 | `result-track:c74417e3632cd9ccb71e81f2db4f7727941f2432eb992de519e69bd004b05c75` |
| 44 | `theorem` | [constantCoeff_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/constantcoeff-subst.md) | 319 | `result-track:79ab16a6382891389c70b6fd1eb0a7f42eee7fc9b216927db7f2b4a47d4c786a` |
| 45 | `theorem` | [constantCoeff_subst_eq_zero](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/constantcoeff-subst-eq-zero.md) | 324 | `result-track:f1ef90cce759e195068a81b6670b767ae189450d1f24c19ee1f842c7c0505daa` |
| 46 | `theorem` | [map_algebraMap_eq_subst_X](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/map-algebramap-eq-subst-x.md) | 339 | `result-track:53917cc98d0545c5c2f2dd66319eaacdfed275cfb566c04b10a2667721066d13` |
| 47 | `theorem` | [map_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/map-subst.md) | 349 | `result-track:4f078068480a2cadc8d00a0aab79c6e2b94ea463fc5ff0bcf7ef826801cbd23a` |
| 48 | `lemma` | [subst_zero_eq_C_constantCoeff](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-zero-eq-c-constantcoeff.md) | 360 | `result-track:3cb94fdcea87952f9b1558fb27dddefd11afd271de24ba7059adefca0de7faeb` |
| 49 | `lemma` | [subst_zero_of_constantCoeff_zero](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-zero-of-constantcoeff-zero.md) | 373 | `result-track:6898226db0301ed29a68e6c1f72a5d0ae61054b5660def9bbd434e29fa58a1a2` |
| 50 | `lemma` | [HasSubst.cons_subst_zero_left](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-cons-subst-zero-left.md) | 377 | `result-track:c5f2c7fb8b44d0375701b08f1039eaa5a3f2036f97526a2341278982462ad89e` |
| 51 | `lemma` | [HasSubst.cons_subst_zero_right](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-cons-subst-zero-right.md) | 382 | `result-track:cae76283eec77d4713b84f18630c2db30aed697a95914361090e200181f68570` |
| 52 | `theorem` | [comp_substAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/comp-substalghom.md) | 393 | `result-track:7c6cbc41723b3799c36646d81714d24a44d7115b32490f3e665c4bc420596636` |
| 53 | `theorem` | [comp_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/comp-subst.md) | 401 | `result-track:ca4e421098e55b9c31e4f1da1073e62d18d62fc51c6a553717d2ebead35a4057` |
| 54 | `theorem` | [comp_subst_apply](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/comp-subst-apply.md) | 406 | `result-track:c78ffd1fb80e410e5079836221c986184ca4a19cca3e2b5a9ed29475e056f566` |
| 55 | `theorem` | [eval₂_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/eval-subst.md) | 414 | `result-track:998938482d545daba823dad9a8ee423390908aee68f3cb166c500d593de3e3fa` |
| 56 | `lemma` | [IsNilpotent_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/isnilpotent-subst.md) | 429 | `result-track:b29eea525d0fd0d33d12fe02aea4123e12bd744c2a62a09d06698dd43c825b8b` |
| 57 | `theorem` | [IsNilpotent_substAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/isnilpotent-substalghom.md) | 445 | `result-track:dbcf23db2c44fda985d4c99a4d88123d0ce2c207a339b5e1b25a35b9fe620634` |
| 58 | `theorem` | [HasSubst.comp](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/hassubst-comp.md) | 450 | `result-track:70373647c4348ae52137d412a67420135584f6b57dd8cbcbce9fb792cfba6c32` |
| 59 | `theorem` | [substAlgHom_comp_substAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-comp-substalghom.md) | 460 | `result-track:a0b5569ebcb14f3471d46e39d9391affb75e9076626d1c61899e4b217a85062a` |
| 60 | `theorem` | [substAlgHom_comp_substAlgHom_apply](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/substalghom-comp-substalghom-apply.md) | 468 | `result-track:efdaf9d24d9d13eca12c5af7b3e854a598ce5fff1e0d5da02c4cad5ceb47d273` |
| 61 | `theorem` | [subst_comp_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-comp-subst.md) | 473 | `result-track:4c815ebc32e839bd77304d0caeb496bf9c5953140c70f2decaac6e9758b8024b` |
| 62 | `theorem` | [subst_comp_subst_apply](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-comp-subst-apply.md) | 477 | `result-track:9e813250c9a1f32784944c2d21a840bd3b535f5ec087958373dd8a47c4a9c9e2` |
| 63 | `theorem` | [le_weightedOrder_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/le-weightedorder-subst.md) | 485 | `result-track:93035a9c7342c45b318a53b745415d0005f3a7e3d375355b5a5e56829fb83531` |
| 64 | `theorem` | [le_weightedOrder_subst_of_forall_ne_zero](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/le-weightedorder-subst-of-forall-ne-zero.md) | 499 | `result-track:62735ab9611d206c6d7a79c96e34f7c2df1032b32cca5809d79957a495c1bc5e` |
| 65 | `theorem` | [le_order_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/le-order-subst.md) | 508 | `result-track:f60594cb311593bc196bc1400c95df90113bb64dfb0bb874b0273451b639c2e4` |
| 66 | `theorem` | [truncTotal_subst_eq_truncTotal_subst_truncTotal_of_le](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/trunctotal-subst-eq-trunctotal-subst-trunctotal-of-le.md) | 528 | `result-track:8d6a6a0456dde22dbac8a888345cbdada19eca84b7be3005fd99699b6ac8918f` |
| 67 | `theorem` | [truncTotal_subst_eq_truncTotal_subst_sum](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/trunctotal-subst-eq-trunctotal-subst-sum.md) | 547 | `result-track:ae3e7d2122a843b2031de16dc9e48854a6ff99e2987a18f5753f17b36a8b7454` |
| 68 | `theorem` | [truncTotal_subst_eq_truncTotal_sum_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/trunctotal-subst-eq-trunctotal-sum-subst.md) | 579 | `result-track:c9156b54c0f4ee7059bdd9a5496323a2efa1caf61af78a87187cbbe1c1c2bc28` |
| 69 | `theorem` | [truncTotal_subst_eq_truncTotal_truncTotal_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/trunctotal-subst-eq-trunctotal-trunctotal-subst.md) | 586 | `result-track:37d2743fc5c9b839b64ce99f8049615f0d61c41032e15c45a34057d6818f1412` |
| 70 | `theorem` | [truncTotal_subst_eq_truncTotal_sum_subst_truncTotal_of_le](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/trunctotal-subst-eq-trunctotal-sum-subst-trunctotal-of-le.md) | 592 | `result-track:d185985b3620d5cf77123d6ab0bfd738713feb29af0a38173041cab8061ef3a6` |
| 71 | `theorem` | [truncTotal_subst_of_le](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/trunctotal-subst-of-le.md) | 601 | `result-track:78ddd4a74ce9559d0d4069d7e0b31cf4b498fdec91eb0de62ad67cd31fac2895` |
| 72 | `theorem` | [truncTotal_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/trunctotal-subst.md) | 610 | `result-track:048f0cdc29fff34493c25612bab410de514ed45253db661d87c4db7677b7d28c` |
| 73 | `theorem` | [truncTotal_subst_eq_truncTotal_sum_subst_truncTotal](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/trunctotal-subst-eq-trunctotal-sum-subst-trunctotal.md) | 615 | `result-track:ce1252f7a69d025088a638666ad940e1721ac5a7d11da1ce6a095185d7d0d525` |
| 74 | `def` | [rescale](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale.md) | 634 | `declaration-track:b94b14f493718691561130ea03fab057cf30d748b65d77a944970e838fc2c709` |
| 75 | `theorem` | [coeff_rescale](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/coeff-rescale.md) | 674 | `result-track:70a614e563c3648706b1402c8fe7cf158d1014fee0cc77cac858382d6a7a803f` |
| 76 | `theorem` | [rescale_zero](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale-zero.md) | 680 | `result-track:8cbd5fb2aaf481ca9babaca7a6c59992ed5b2fb8f07337e301d93fc8d94713bf` |
| 77 | `theorem` | [rescale_zero_apply](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale-zero-apply.md) | 696 | `result-track:cc8910b502cc763128ac7db585790ed1ecbb75743f79a62be6a0d521199fcb3f` |
| 78 | `theorem` | [rescale_one](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale-one.md) | 700 | `result-track:7ae8922b97b280a063342a2ec3784b9b5e5b844fb0b109912f9391b64cc75625` |
| 79 | `theorem` | [rescale_rescale](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale-rescale.md) | 704 | `result-track:ab58fa8df43ce1228afb2307946d4fe2491ba47d36c6bc1d550d5fd9a6dd9de6` |
| 80 | `theorem` | [rescale_mul](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale-mul.md) | 709 | `result-track:2ebb82b48db22e431fad192406c56028648b23a020143b0bfaa0a8d15fbeb09b` |
| 81 | `lemma` | [rescale_homogeneous_eq_smul](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale-homogeneous-eq-smul.md) | 715 | `result-track:38d8f222dd933f693a5798cc281e5093ad38c93f4b2c9418027d157be895c60e` |
| 82 | `def` | [rescaleMonoidHom](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescalemonoidhom.md) | 727 | `declaration-track:eaf81e0a708275c00b31b2f912ddb9a30de436603329df9c2a9170c1e26618f2` |
| 83 | `theorem` | [rescale_eq_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescale-eq-subst.md) | 737 | `result-track:0744591d5a3ce89b0f24b54794f830e69064d5cea146517ae1ffe262f9f1f80e` |
| 84 | `def` | [rescaleAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescalealghom.md) | 754 | `declaration-track:b4c727ee26eb7ffedf9ed3a3939a57342d49a82b2ab4969245844f60f0056e9b` |
| 85 | `theorem` | [rescaleAlgHom_apply](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescalealghom-apply.md) | 758 | `result-track:5e33c3246acbc536018200290a4fdec4b19017d06906e60c9bec0871c8fa944a` |
| 86 | `theorem` | [rescaleAlgHom_mul](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescalealghom-mul.md) | 762 | `result-track:2a048c791fc519c00ea261693ecd0ded7f178fa13ef78ffdc96093121c04f8a5` |
| 87 | `theorem` | [rescaleAlgHom_one](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/rescalealghom-one.md) | 767 | `result-track:cf29ab71bb7d87a93f85b4f550c6d48047101c3bad44607f10628d94a420076b` |
| 88 | `lemma` | [subst_tsum](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/subst-tsum.md) | 781 | `result-track:736dbe87d3acdf50a66d9bc04f95a16452969930bac64d177c31fa5b884687b2` |
| 89 | `lemma` | [summable_subst](../../../../CommutativeAlgebra/MvPowerSeriesSubstitutionSubstitutionPublic.lean/declarations/summable-subst.md) | 785 | `result-track:c3c9cefde3dafd688d79aea3c91cc5ae4e829e4dae5271110a641bbf07756ac7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83bc79927808974a4a00f3787e0c7bbd0a9321f73970491dc922adb8c60d1d2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Substitution/Variant16e3c65d32f8de67f49b6b79a867de911d518934e292f278b2ed198e760034ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
