# Verification target: With Zero Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2e5538bb35e9819980fa062ff94149db8211ad8",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/WithZero/Variant3e6edd355ca1a53313158292e6f45cf7e8dc73d8d14ac7b9d694176ea6ca5724.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2e5538bb35e9819980fa062ff94149db8211ad8`.

Source path: `GRWTSK/Algebra/GroupTheory/WithZero/Variant3e6edd355ca1a53313158292e6f45cf7e8dc73d8d14ac7b9d694176ea6ca5724.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/WithZero/Variant3e6edd355ca1a53313158292e6f45cf7e8dc73d8d14ac7b9d694176ea6ca5724.lean.json)

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
| 1 | `instance` | [one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/one.md) | 59 | `declaration-track:4d39350ebe451ee3f0dd2c39c50a0d46d7d5d50b649d2bc502300cb1bfb208b2` |
| 2 | `lemma` | [coe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/coe-one.md) | 62 | `result-track:f174af70fe79e7767667263b311d65cd67804383b131777ee56fc8f665f9cc40` |
| 3 | `lemma` | [recZeroCoe_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/reczerocoe-one.md) | 65 | `result-track:ea72bff098edb64f80769c0726f9bdc2090b4c25cd6e75d70c903a1ab4ef0b04` |
| 4 | `instance` | [instMulZeroClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instmulzeroclass.md) | 74 | `declaration-track:141a1d3e3c1c82342860d01ebcb1113c0c0fc3071855899c3e303ade6fa8b089` |
| 5 | `lemma` | [coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/coe-mul.md) | 79 | `result-track:600b76b88daa59366858d13c98ab9c455a16eacad9ef24939671bf0d049db6ba` |
| 6 | `lemma` | [unzero_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/unzero-mul.md) | 81 | `result-track:e166ec71a579489797c621710fc16397e98bba2deb5da55afe907d85e8d79b8d` |
| 7 | `instance` | [instNoZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instnozerodivisors.md) | 85 | `declaration-track:5e299f24abc163f868b5eae8b90a62e75540c707f86a9be4a53afbe222095cf0` |
| 8 | `instance` | [instSemigroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instsemigroupwithzero.md) | 89 | `declaration-track:3bb92475e4973e0561d3495c0360db82332157b2e222dd660e4e959089d7d8b9` |
| 9 | `instance` | [instCommSemigroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instcommsemigroup.md) | 92 | `declaration-track:ea8e962602c67cbc2f96d4bf96ac32df74c10e72fe6d07e69f1b1fd856bdc0e4` |
| 10 | `instance` | [instMulZeroOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instmulzerooneclass.md) | 97 | `declaration-track:f314381f91998b5c741cb24546bfbc477e92453a7fae63c3395ec7da3123769d` |
| 11 | `def` | [coeMonoidHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/coemonoidhom.md) | 106 | `declaration-track:dc157e19185b4f1b12b2215f902118559792860d6c0d2106798055031fefb06b` |
| 12 | `theorem` | [monoidWithZeroHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/monoidwithzerohom-ext.md) | 116 | `result-track:fbaeaf7a5b5120585dad2ee6d4ac7175dc6b3bb1bb6aef73a7f1a797bfe9e630` |
| 13 | `def` | [lift'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/lift.md) | 125 | `declaration-track:1e9a14b6b1e330ba740f5b021143a1b99f1dd6b68563aed7b49a831eff7822b0` |
| 14 | `lemma` | [lift'_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/lift-zero.md) | 136 | `result-track:ba8ac32ce8b2e76a38c4f9fd6285d2e10fd8e7fe39d1e5a5f6f21944559238c7` |
| 15 | `lemma` | [lift'_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/lift-coe.md) | 138 | `result-track:bea6cb455a21d474ffb5f426e341107b83472c18867f118bbf887cb9c09ddba4` |
| 16 | `lemma` | [lift'_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/lift-unique.md) | 140 | `result-track:ff31121ac46a58a214d76c72c46e0087f53132385345c8f5c2ff0811dda7bf56` |
| 17 | `lemma` | [lift'_surjective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/lift-surjective.md) | 143 | `result-track:467f1cba08c5eabc12014fef3835fb2c8143e30fcccb95a84d4b6af28b3fa94c` |
| 18 | `def` | [map'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/map.md) | 155 | `declaration-track:f502542400dc1023669fdc557f724132daaf116ab8cc4c1aec45a194522c98bd` |
| 19 | `lemma` | [map'_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/map-zero.md) | 157 | `result-track:e79c4544ae21baca6d608a7eb5abdb9d3588547a01b9cd9a24405661048c5cc8` |
| 20 | `lemma` | [map'_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/map-coe.md) | 159 | `result-track:ef6363eeabfed4c015bc518023be85aeac1f46c2e6e6ccc22aa14132488e2d6f` |
| 21 | `lemma` | [map'_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/map-id.md) | 162 | `result-track:8cff7ca5f39a25580370d08e389d17ef398f91236dff7042642562825ae54acc` |
| 22 | `lemma` | [map'_map'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/map-map.md) | 165 | `result-track:25832fc5692e5340f729f8ef1013696755c685e911a43833e536a46de130d8f7` |
| 23 | `lemma` | [map'_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/map-comp.md) | 169 | `result-track:c1fa231378f7a1c18afbefc821f4f0652b06771445d6ab5bb7f4f8a472b698ad` |
| 24 | `lemma` | [map'_injective_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/map-injective-iff.md) | 172 | `result-track:08f5c4b6f8ae2e2e59a13ba6ad81a12b2aceecec8fcd57a0729816a7be20deae` |
| 25 | `lemma` | [map'_surjective_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/map-surjective-iff.md) | 177 | `result-track:03b902c40483ae1f677df6af72162226f9ef8b94d4aa983093c598bc193f9135` |
| 26 | `instance` | [pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/pow.md) | 195 | `declaration-track:af5bc13a4475eab2c1c5555e387845f63379b5e4020372a0bdb53ecb2934424e` |
| 27 | `lemma` | [coe_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/coe-pow.md) | 201 | `result-track:8e6986ccf0392aa67f372216eb94ba0692737e2830f8ac4712130c331c67d8e1` |
| 28 | `instance` | [instMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instmonoidwithzero.md) | 205 | `declaration-track:d92ebb73d9677b21c647be29ce6bdf019e3efa8e854cc17efb05c38d855c6202` |
| 29 | `instance` | [instCommMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instcommmonoidwithzero.md) | 214 | `declaration-track:35e94b5345428e4b638ccbf3429e02343aba6f4b2d7b41a7e1bd0b794ad507f7` |
| 30 | `instance` | [inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/inv.md) | 221 | `declaration-track:c096fa3f6da3bf6d09f7d1add2de8f8897b46067b30f02fdc77303f1e4546df9` |
| 31 | `lemma` | [coe_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/coe-inv.md) | 223 | `result-track:2538f8c1c23ab54595acca702455a1517184c2580df9384ff6b6a55f32469715` |
| 32 | `lemma` | [inv_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/inv-zero.md) | 225 | `result-track:3ea1da7b127934f3b42fab6906a089390daac2d9767baf6d09caf58a9582421e` |
| 33 | `instance` | [invOneClass](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/invoneclass.md) | 229 | `declaration-track:d6394c831bb49ab8d4e8a97283b9ebbfff4c50767a4baf34474706c134b51353` |
| 34 | `instance` | [div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/div.md) | 235 | `declaration-track:fa979b98c68748aa503549506783e03280169091bdfa9ad79f7bfbfbe8907dd1` |
| 35 | `lemma` | [coe_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/coe-div.md) | 237 | `result-track:5918af3a790a40e0fcbd53844a79d64a7069ef9f981783171a6ae3224ba46526` |
| 36 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 244 | `declaration-track:c29ca8cf2b6423f94deac5740cc4cb8dd07076ddccbdcc4681be3d375cb02e82` |
| 37 | `lemma` | [coe_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/coe-zpow.md) | 251 | `result-track:49cb8518268276a6ec6507e73405084c3c5b5e5ab8c629981992332314f5655b` |
| 38 | `instance` | [instDivInvMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instdivinvmonoid.md) | 255 | `declaration-track:42af5c8e1a2e827c2027e579666abb6520cc425312b55067a77e7346a627b60b` |
| 39 | `instance` | [instDivInvOneMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instdivinvonemonoid.md) | 271 | `declaration-track:6a099cfd8d2c51507a9877a333ea9b2bae8a8bbd4805435269e0e338d8a328f1` |
| 40 | `instance` | [instInvolutiveInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instinvolutiveinv.md) | 274 | `declaration-track:15df08391a5e441ac9058f1ed2907c9084620e8640f7bf478cdabb6dd0438f6a` |
| 41 | `instance` | [instDivisionMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instdivisionmonoid.md) | 277 | `declaration-track:c914cbb3dcbe8c6c3b8bab2a129c9ad97721079ac43ef08e4dcc68dac519a641` |
| 42 | `instance` | [instDivisionCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instdivisioncommmonoid.md) | 288 | `declaration-track:c453e9d5f279481eba718d8801f2788b02369d7123fc0ce148d93f1aa27b05b6` |
| 43 | `instance` | [instGroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instgroupwithzero.md) | 294 | `declaration-track:d8d1f0e4abc1fef8799bf67e05bf6427521133dff7d587aebd34383625baf28b` |
| 44 | `def` | [unitsWithZeroEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/unitswithzeroequiv.md) | 303 | `declaration-track:1218d7b9d3179f61ec4ce5df265b92692f372474cd80db35659ead09e336758e` |
| 45 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instance.md) | 309 | `declaration-track:2ca4b70157113ddc5e52206b2a1bb3b30a2e70c8146878fa9450a5cafffeaaad` |
| 46 | `theorem` | [coe_unitsWithZeroEquiv_eq_units_val](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/coe-unitswithzeroequiv-eq-units-val.md) | 312 | `result-track:5ba261721f8ca4cb27023bc49305105da6ff9cd686f2cb806fddfde0936fea4a` |
| 47 | `def` | [withZeroUnitsEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/withzerounitsequiv.md) | 318 | `declaration-track:c22ac63aa28549069f643fc0ac46954340229a17754c2445d28823d99032ac0d` |
| 48 | `lemma` | [withZeroUnitsEquiv_symm_apply_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/withzerounitsequiv-symm-apply-coe.md) | 327 | `result-track:5ff98a371cdc68a36c61e67e761509a7051b45186687ffebcb776fba6574f10f` |
| 49 | `def` | [With Zero Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/withzero.md) | 334 | `declaration-track:ef50a5146327abf025bde9f8aefd7024015d5fb8c58ec4870769454076e63883` |
| 50 | `abbrev` | [With Zero Namespaced Public](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/unzero.md) | 347 | `declaration-track:ee9c8669d61c2d7ff696285a48f5047e90733a7272e4dacc1e241f94aa516996` |
| 51 | `instance` | [instCommGroupWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instcommgroupwithzero.md) | 353 | `declaration-track:355b229c6045a10770482a99223e485b459e51503ea8dcb72fc960a2eccb27f5` |
| 52 | `instance` | [instAddMonoidWithOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instaddmonoidwithone.md) | 355 | `declaration-track:14482b4671429e0e3685a8869105c7a0e50349b65ae6a702a52ee1308f05750c` |
| 53 | `def` | [exp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp.md) | 372 | `declaration-track:0aad38f44b2c2608599c0e604af45e164414ab94ea9e7920b6e8af01b3a96078` |
| 54 | `lemma` | [exp_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-ne-zero.md) | 374 | `result-track:b4c0f5bb4ad8c340f407fa731b14872ea23108e5723bb3986cf0cb55f5b83768` |
| 55 | `lemma` | [exp_eq_coe_ofAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-eq-coe-ofadd.md) | 376 | `result-track:4b7ed2a9915c3645858b798dac6d20a14148fb53c893af5e7d725c2e3c87e943` |
| 56 | `lemma` | [exp_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-injective.md) | 378 | `result-track:6b72a686d97cad1e75f97d6836bf65b5bbc748c72aadac90a49b0f4272c7ad8b` |
| 57 | `lemma` | [exp_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-inj.md) | 381 | `result-track:514844b62b4da6762e5e32005434a79ca4ec2bb4520aaa5b07ce1b178da78d4f` |
| 58 | `def` | [expRecOn](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exprecon.md) | 388 | `declaration-track:fdede0522c3b46e0aa0a49457eef887fdf7c2f0af3c8c83bbd83d38200eb7a18` |
| 59 | `lemma` | [expRecOn_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exprecon-zero.md) | 391 | `result-track:00c631b86f331a879703067922426bacb75e311a9c18dda7eeeee6ae2abfe688` |
| 60 | `lemma` | [expRecOn_exp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exprecon-exp.md) | 394 | `result-track:bf6d3c526bd2fe0f65b3fc888f463d3790e24c33b12a11fc25904994e3e80319` |
| 61 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 398 | `declaration-track:c97fb3a95a3feb8e0e08a8c9856dfdf7d879b673dac86f0ca5a70ce560c82e67` |
| 62 | `def` | [log](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/log.md) | 403 | `declaration-track:551c88321e1a443d9d040e9ed4d7dda7dbdb4b1e633597e04b52365f8b55ed79` |
| 63 | `lemma` | [log_exp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/log-exp.md) | 405 | `result-track:cc2ae27fd745a36259546c8501bac8e6e139f71ab0b0c07b8cbc9496d78599c7` |
| 64 | `lemma` | [exp_log](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-log.md) | 406 | `result-track:517213ce18e3bee67fc437ca4dedbac82fcb5424bf989218ac1a858d9613bd49` |
| 65 | `lemma` | [log_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/log-zero.md) | 409 | `result-track:c045067dcc357e8710b7c4cc6dbf3551ca13aaf9ec6df058823d048059917c44` |
| 66 | `lemma` | [exp_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-zero.md) | 411 | `result-track:8ff2bfb2c3eddcd24a2d47713c844ac352aca9b89b9fcfa6a1bace7030d79d23` |
| 67 | `lemma` | [exp_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-eq-one.md) | 412 | `result-track:22b1bd3dccbb1bd4dba9f5fcedf6e1e36c2d4fb9faf5220944ebe71c4b3c29b9` |
| 68 | `lemma` | [log_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/log-one.md) | 415 | `result-track:731d8cd863cd3a7a555e1ad221e78417c67ec3db066da45d02d56d42bd973ac0` |
| 69 | `lemma` | [exp_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-add.md) | 417 | `result-track:49ba6ff7b1a277adb895b95bf0bdea76e1fcabe16676c8f53b854350c873a813` |
| 70 | `lemma` | [log_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/log-mul.md) | 420 | `result-track:bc44f42e39487b2b83d420e9c817175b0f538f315a259f8488b3d1c83ea59e63` |
| 71 | `lemma` | [exp_nsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-nsmul.md) | 423 | `result-track:7a905eca079a4db1d6f695f32b06543fda61f714fd259352b4a7fa253dc8463e` |
| 72 | `lemma` | [log_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/log-pow.md) | 426 | `result-track:acce135693fc084730422eea5dd1b05b1994eebe4b1b1441d8c5c12561e701ca` |
| 73 | `lemma` | [toAdd_unzero_eq_log](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/toadd-unzero-eq-log.md) | 431 | `result-track:96fd23fdf7a074a461b3bf7289fcbc364927c21c541e6cbf1f8f18891bc47d3d` |
| 74 | `def` | [expEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/expequiv.md) | 441 | `declaration-track:a742d8c4f9331c12e70ab459e3d35b86162d8886cc0378a2a0089b8d2432998d` |
| 75 | `def` | [logEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/logequiv.md) | 444 | `declaration-track:8c65f41b742fd6820e8febb604bf4e76f342b40612029c4562e7c2d7abe2747b` |
| 76 | `lemma` | [logEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/logequiv-symm.md) | 446 | `result-track:cc34236829ab652d2ef9740677f64f234e6b692bea5cb597761d606874dd2a7c` |
| 77 | `lemma` | [expEquiv_symm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/expequiv-symm.md) | 447 | `result-track:52b3962d45383243585c00afa1c061c7e0b6af9d4e2880a70a2ddb1993aca6db` |
| 78 | `lemma` | [coe_expEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/coe-expequiv-apply.md) | 449 | `result-track:e74a636f59d8db2dbd54d465a0bdd2bbab88ecc5aae9e21ff40cd7f2156e3551` |
| 79 | `lemma` | [logEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/logequiv-apply.md) | 451 | `result-track:0908ee4ccf26757844e414023ee9f2755a84743484f5c488300a403dabbfe896` |
| 80 | `lemma` | [logEquiv_unitsMk0](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/logequiv-unitsmk0.md) | 453 | `result-track:fec74ff45b1036c4e6369c02e69b04de8ed91cd7c2fda053f5dabf6bd55129c6` |
| 81 | `lemma` | [exp_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-sub.md) | 455 | `result-track:16368fcb72826771c9bcd102863c00079a6be2a7f483fa290e1dd4beb8d1895e` |
| 82 | `lemma` | [log_div](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/log-div.md) | 458 | `result-track:d622625b3d9b1d816312f4901cdb21dd6aa40676b6cbd6e159dd23610336a3f0` |
| 83 | `lemma` | [exp_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-neg.md) | 464 | `result-track:2eb0f57694fc28977feb9d5301c0409a24a49985bfc2f687e9f837bd66c2f84b` |
| 84 | `lemma` | [inv_exp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/inv-exp.md) | 466 | `result-track:9c0b37f925afefdb5fcd55e24ec0bce73ca61acccea1fdacaff379c68f171d4e` |
| 85 | `lemma` | [log_inv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/log-inv.md) | 469 | `result-track:91041760754083d4fb32f51e115f95a839fc1a5f53130b787e3120a2cf9cfee2` |
| 86 | `lemma` | [exp_zsmul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/exp-zsmul.md) | 473 | `result-track:7a87b02b5911b654adc48737bbb833fa0cd1c5bd9394bf568108aeba5b11c9c1` |
| 87 | `lemma` | [log_zpow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/log-zpow.md) | 476 | `result-track:ad6873631effe226358474ed9a9afe9cce7d8162ee31662012cbc487d5d8587f` |
| 88 | `lemma` | [map_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/map-eq-zero-iff.md) | 483 | `result-track:d285fe05087238ea6797b0f35a38447000051b9f219e7b65f537c3477ab97769` |
| 89 | `lemma` | [one_apply_val_unit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/one-apply-val-unit.md) | 493 | `result-track:65b1aa0641c509d24fea559eb7ee400898ea86f38a6f3f82f290f97784b96158` |
| 90 | `lemma` | [apply_one_apply_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/apply-one-apply-eq.md) | 500 | `result-track:492cddd3c3770d26046e2b35212a39356e503b2394adf1f8170bbfec7d72425a` |
| 91 | `lemma` | [comp_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/WithZeroNamespacedPublic.lean/declarations/comp-one.md) | 510 | `result-track:d75a0b0746d0fad07089eb3412b66a28aa3d9d718e8490cdc5b1e23f2194acb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5173378ce91b56db5090ce5ec79f3e2ec25c6098487cc1d9f354c3db08bab226 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/WithZero/Variant3e6edd355ca1a53313158292e6f45cf7e8dc73d8d14ac7b9d694176ea6ca5724.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/WithZero/Variant3e6edd355ca1a53313158292e6f45cf7e8dc73d8d14ac7b9d694176ea6ca5724.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
