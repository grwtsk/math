# Verification target: Ring Equiv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f74ee9abc3df6baae868f1e0a872d0fbc2e36e8",
  "lexical_observation_count": 156,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variantc61c648f31c3093c69a05d62ed08a65a19ea6a27d7c1a0029447d8677f4d2875.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f74ee9abc3df6baae868f1e0a872d0fbc2e36e8`.

Source path: `GRWTSK/Algebra/Equiv/Variantc61c648f31c3093c69a05d62ed08a65a19ea6a27d7c1a0029447d8677f4d2875.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variantc61c648f31c3093c69a05d62ed08a65a19ea6a27d7c1a0029447d8677f4d2875.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.DSimpPercent` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [NonUnitalRingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/nonunitalringhom-inverse.md) | 62 | `declaration-track:3639701715762d51f1aabfad1b599552b3f60db392524ff94c4399f5c53d120a` |
| 2 | `def` | [RingHom.inverse](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ringhom-inverse.md) | 69 | `declaration-track:155d6d63814fb6679eb6697a8fae42d6fd3c560d32a78398b0e467ed3ce4a566` |
| 3 | `structure` | [RingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ringequiv.md) | 78 | `declaration-track:21bce778a6a583bde4231ca802edc0c03c61181fadf57ca2bf08ce607e241b0d` |
| 4 | `class` | [RingEquivClass](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ringequivclass.md) | 94 | `declaration-track:f278292a98c7b44db61bf4d4cadfaea9cab4847483430f6ef2737ad45a78d6af` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 104 | `declaration-track:4a3bf65db93b3dd31ac4f4710f64bdf97e1af2cb25bc056681d8368b94251278` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 109 | `declaration-track:911b022d17fa6f9b11a6aede55564ce9c309c3324408265482b4cfb60ff4d688` |
| 7 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 116 | `declaration-track:8cc30efc005273f7abfa2ef3da92c31fcbe5f62778152a797837102733b68430` |
| 8 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringequiv.md) | 124 | `declaration-track:2b6a4aff81b310d5764788e0430e47cba8fed73e6ee171fd79ee001d730039fa` |
| 9 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 139 | `declaration-track:9442b5ad2f246a4f7ec3c4bc32d0c2167dcdfb9d0cf4d8c67f749dc7695355f5` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 150 | `declaration-track:caabacf25ae22c6372509218d08a4f57b1538a772daad4bd70aa177dbbae3d1e` |
| 11 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ext.md) | 156 | `result-track:cf4c44929ec3b788f5a72134c8f8f1a9b60c1d1e7ebcece30247489d858e7b1a` |
| 12 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/congr-arg.md) | 159 | `result-track:2e2c205c39a967c007d13f019a3e62442d861d650a355d450d0fbebc069ff6d9` |
| 13 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/congr-fun.md) | 162 | `result-track:25c56ec13fb071249469f4c160a129342a933d44fae0379dfceafcf7230bd1fd` |
| 14 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-mk.md) | 166 | `result-track:f4d3e64ae60147fba78348bb7a7175a7937b43a5b46ecc5af9555033a502f90e` |
| 15 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/mk-coe-source-edition-2.md) | 170 | `result-track:d92361b6b13740cc0c66ceefcb3ff543c5a00577c462684c7ec07d6f46607957` |
| 16 | `theorem` | [toEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toequiv-eq-coe.md) | 174 | `result-track:835227ce6c849dd924ea77cfca1059b27c1f27e153b688af9204fa63fa976014` |
| 17 | `theorem` | [coe_toEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-toequiv.md) | 178 | `result-track:89ce0b7a9b7d4da8442401e7071078fada5e946df3f159bf2342bed7a1c37a3f` |
| 18 | `theorem` | [toAddEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toaddequiv-eq-coe.md) | 182 | `result-track:71612433cec2ab7b98087512314d588a4343750fd73992e667bcfe3fa2eb5fc3` |
| 19 | `theorem` | [toMulEquiv_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tomulequiv-eq-coe.md) | 186 | `result-track:4056032e95be2971164e96595110c6b2beb8b0a9834c961178e2452aaf9facf2` |
| 20 | `theorem` | [coe_toMulEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-tomulequiv.md) | 190 | `result-track:9ddfe21d91253c14fa2293d05c0509abd579632816b530908f71941a1ab3ceb5` |
| 21 | `theorem` | [coe_toAddEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-toaddequiv.md) | 194 | `result-track:6ffebf10ca7c21dcd9a5c11ddcd07b500a53995f11c5960a44848d7b25dcb954` |
| 22 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-mul.md) | 202 | `result-track:b91bd212dd6d22a52b287e2bd0fed4c0f70a1f3824ec4d0aa3a676e216e9a35f` |
| 23 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-add.md) | 206 | `result-track:ad408d2c49dae14c03a070263d75b9c721e83b0b51f3a464f3db6359601a0eb4` |
| 24 | `theorem` | [bijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/bijective.md) | 213 | `result-track:0dd592cbff1e0ab7582a99602c9613be75d6a53bd0d4059d4c27031bdda8eccf` |
| 25 | `theorem` | [injective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/injective.md) | 216 | `result-track:d34c88cba2fc3e71d76950f527c1f51e2f30609242e1f8100a681768853fc219` |
| 26 | `theorem` | [surjective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/surjective.md) | 219 | `result-track:32ac1532dd6950184b62d300508fb837a767d94d812958ec9f8d988126ffc021` |
| 27 | `def` | [refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/refl.md) | 230 | `declaration-track:4ea3cca89d911688c8f47a3ea1ba968671c68e8350347c76230c3dbb2338bb51` |
| 28 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 233 | `declaration-track:d70fcfb295f2e522e209777291428d14901518b572b741de3be8d3f6341e0d3e` |
| 29 | `theorem` | [refl_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/refl-apply.md) | 237 | `result-track:f0be4ab4483335956899f0223799019a153c31dd39b1abe5f4da379482684d5f` |
| 30 | `theorem` | [coe_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-refl.md) | 241 | `result-track:cb40c9b900ca61e96107fcbf574e5e81ad59faf3939ea7ab29a82de6344fae05` |
| 31 | `theorem` | [coe_addEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-addequiv-refl.md) | 245 | `result-track:5079248bf2368b6f082401b21169d5f33c667a4ebf22238fbac5953b74ca88e1` |
| 32 | `theorem` | [coe_mulEquiv_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-mulequiv-refl.md) | 249 | `result-track:cdb29e8fcf12b43c0aeb91571819bdad7c2703320d2492dcaff347645876e866` |
| 33 | `def` | [symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm.md) | 260 | `declaration-track:9bfaaac4a664b5d01658c2319a11826cf79e58e21f1bd22fc46f114651db1a53` |
| 34 | `theorem` | [invFun_eq_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/invfun-eq-symm.md) | 264 | `result-track:5825e37ce16511856b23b4495ef59a3feaf67989db8b1863e2341731d98e8ce6` |
| 35 | `theorem` | [symm_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-symm.md) | 268 | `result-track:77e5d705827a2932e98084b3bb5b14aa0295f25c190c60df0a8ee9804e56331e` |
| 36 | `theorem` | [symm_bijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-bijective.md) | 270 | `result-track:190bcc6c4a1ba14062985a3ff825243d8e91237ebae722c82d208483aefe2740` |
| 37 | `theorem` | [mk_coe'](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/mk-coe.md) | 274 | `result-track:d83e41c014c2841074854e9625de17a7e6a901c07f7992484ce25a8707ca0e3c` |
| 38 | `theorem` | [symm_mk](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-mk.md) | 279 | `result-track:53e1b70eab8af2bf8347093dca00b5bdc3e379a353e5e6032aae2a085d8d8fa3` |
| 39 | `theorem` | [symm_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-refl.md) | 286 | `result-track:926fbe02deb8e2344d5616c6ca4f5755eff1f938914e4c9d084fbe21602d6a6e` |
| 40 | `theorem` | [coe_toEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-toequiv-symm.md) | 290 | `result-track:919459cee087ef2c10e70e58c72916f1b61030a0971fcbfee1e7b5f0e130d3b0` |
| 41 | `theorem` | [coe_toMulEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-tomulequiv-symm.md) | 294 | `result-track:b5cd278c66120821c62b47cf209907c7bbf53a2592a91b877234ffae6fbda2ce` |
| 42 | `theorem` | [coe_toAddEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-toaddequiv-symm.md) | 298 | `result-track:7ae4f0e2b4f7eebfa4d2c1acc8e9636586bd0a3c1fd92346b1d60f15cfa21de8` |
| 43 | `theorem` | [apply_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/apply-symm-apply.md) | 302 | `result-track:1fcfb0008925ed1234c83da7b5f3f1df6b90e25c6a1aab0ada30f8787c280668` |
| 44 | `theorem` | [symm_apply_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-apply-apply.md) | 306 | `result-track:b6295b95621a933cf85f7707a6ea30ca6a0c0ffd39d66ebb9b3f19612392db21` |
| 45 | `lemma` | [image_symm_eq_preimage](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/image-symm-eq-preimage.md) | 309 | `result-track:784afc9929262e62b2285292602a22a58648bc744a475206305c3e66768ed66b` |
| 46 | `lemma` | [image_eq_preimage_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/image-eq-preimage-symm.md) | 312 | `result-track:062e908505baee9e4f2d82cf25ccdd8f28f4a9b2d5c5e075f3eb4b68011512aa` |
| 47 | `lemma` | [coe_coe_toEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-coe-toequiv-symm.md) | 316 | `result-track:dfef9cc3a5c740b4398bd7b070f42c699cc81a9dd996e2b7bcd24136b3d8911e` |
| 48 | `lemma` | [coe_coe_toMulEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-coe-tomulequiv-symm.md) | 319 | `result-track:42312545f4ab9688ad0bd2cbb160eadfee8c64faa258d4fdfbfd8dd1b89640b7` |
| 49 | `lemma` | [coe_coe_toAddEquiv_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-coe-toaddequiv-symm.md) | 322 | `result-track:5f7db6b08cd0a57cdcb8d92e8abc4219c60b6bc1dce57cf63080eca05e8980a7` |
| 50 | `theorem` | [symm_apply_eq](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-apply-eq.md) | 324 | `result-track:2b2cdf937eaf715d2057a61ec4cfeee09ef9c4e5a40b943a79d2d4857b3c035e` |
| 51 | `theorem` | [eq_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/eq-symm-apply.md) | 327 | `result-track:138e750bbc066b1e19a87682ec251c6a56d8a862ee219981e5e44a53dbfd7743` |
| 52 | `def` | [Simps.symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/simps-symm-apply.md) | 335 | `declaration-track:8b77cfb840b1464ade7b4ea5f60c2a283f40b0ce76ce4c9b9c33c124ccf6d476` |
| 53 | `def` | [trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/trans.md) | 346 | `declaration-track:0ddf3f2c18c546f4412048f2f66b5ed8ec26df4223a25f40135d3fee0fb385eb` |
| 54 | `theorem` | [coe_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-trans.md) | 350 | `result-track:83749c2a2c96264e0127cc7746235072827ca8ba53325b1909a65a887fb3650d` |
| 55 | `theorem` | [trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/trans-apply.md) | 353 | `result-track:2418c8946b61e0d61a08b1d907b6f558e2802bdc03bc005defa71dbfc93af0c6` |
| 56 | `theorem` | [symm_trans_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-trans-apply.md) | 357 | `result-track:6b0e303882ef24133f6cc2430841b949d20109e79f61ab9359720f7b6912f75e` |
| 57 | `theorem` | [symm_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-trans.md) | 361 | `result-track:cce97562dc7b38e425a1d260943c09e0a2db1367e20db19d8e80b9e1e86021fe` |
| 58 | `theorem` | [coe_mulEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-mulequiv-trans.md) | 365 | `result-track:0b1414c1c285a065df96e6374e29cfcdc605544430265c63ede4856269997bfb` |
| 59 | `theorem` | [coe_addEquiv_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-addequiv-trans.md) | 370 | `result-track:26fc50b1309adb5eb5c30b57756824ad4e52f969bd783186fd289e1087322291` |
| 60 | `def` | [ofUnique](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ofunique.md) | 379 | `declaration-track:e70833660ce8c488859d21296dc0c200e0f36363a27c1b4aa4c482215e1a7a45` |
| 61 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/instance.md) | 382 | `declaration-track:1851093e6acdb7f34fbdeed8e93d0cd05574dd6c1d40b810e2bb38645ce5edec` |
| 62 | `def` | [op](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/op.md) | 397 | `declaration-track:e0a08d74984553448fb26de631e5ef8143c7211ae678ecf4926e8c0cb957d232` |
| 63 | `def` | [unop](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/unop.md) | 404 | `declaration-track:771805b0c801372977097186e38dd6ca19997b2adba560f9bf89f9f101d58563` |
| 64 | `def` | [opOp](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/opop.md) | 409 | `declaration-track:d037ea430921bb4b4778e5416856fd0c335b7b7653680c42e23c62614f38164a` |
| 65 | `def` | [toOpposite](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toopposite.md) | 418 | `declaration-track:10c801f733c16c15b35dd506c7ffcfc699136fdf5f7f59e252b82455c168ebcd` |
| 66 | `theorem` | [toOpposite_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toopposite-apply.md) | 424 | `result-track:53cdda62be8bec762b6927b0af0446c80ced87631aac04e2026ff22d2c54f39a` |
| 67 | `theorem` | [toOpposite_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toopposite-symm-apply.md) | 428 | `result-track:39bec6ee389059537a36d596614dc386843e93261b832ffeea3e068becffa7a3` |
| 68 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-zero.md) | 440 | `result-track:d3d24acb958c1ffa55c2c140bff94c4d81776e2c2692d3418edba9a0a71c7c9d` |
| 69 | `theorem` | [map_eq_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-eq-zero-iff.md) | 445 | `result-track:3543ede18ef93620735d9b8c23ed47605784eb3ae42972675b247b8bf3096a78` |
| 70 | `theorem` | [map_ne_zero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-ne-zero-iff.md) | 448 | `result-track:ab0c1ae8a01efd37e8a344c06e47e6f4843b1e6a34f58f18942c2a82a9da0947` |
| 71 | `def` | [ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ofbijective.md) | 454 | `declaration-track:ca29ce5413994fae36345860140f705a0d8cb09784cd63129051f5df8eb0bd3e` |
| 72 | `theorem` | [coe_ofBijective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-ofbijective.md) | 461 | `result-track:50c08b7f809bb77ff57f2ed1b9dee7625c0c69bc1a985950e1b98f1cf54797d2` |
| 73 | `theorem` | [ofBijective_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ofbijective-apply.md) | 465 | `result-track:9b7a5b9c895bb4deeb9b53fbcf33066c6d3c270be2c6dc700fd71f8aad5a7592` |
| 74 | `lemma` | [ofBijective_symm_comp](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ofbijective-symm-comp.md) | 470 | `result-track:f137c3ae2bc1d5ac0945888140b6d5677cdd67eaff31fed0d4b0cb869e2ff1e3` |
| 75 | `lemma` | [comp_ofBijective_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/comp-ofbijective-symm.md) | 476 | `result-track:192640e45bcbbccb1694b6dfc945b3b896701e85a6052cd63a62751b5cb018e6` |
| 76 | `def` | [piUnique](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/piunique.md) | 484 | `declaration-track:d833af60c7f0480cf71c3262e8e54fa8a328cb06494ff7fe0b3b8c89fe1ed62d` |
| 77 | `def` | [cast](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/cast.md) | 495 | `declaration-track:293c0418417b475c385508310256bfd26c0adbd675bca0911f790b4883bd0d52` |
| 78 | `def` | [piCongrRight](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/picongrright.md) | 508 | `declaration-track:a2f9fef9b87469ed127d7a3806dc350600c7d1a743a451c2a85be9697e1d9709` |
| 79 | `theorem` | [piCongrRight_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/picongrright-refl.md) | 516 | `result-track:fbe98b09bd37ad7ac674b56e96ce7ff7e5e02140fde60f75a46b18eab98f39f5` |
| 80 | `theorem` | [piCongrRight_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/picongrright-symm.md) | 521 | `result-track:8f66e6928b9987ba7185976d43999625c9e388d2e0c4e066f64f2788e64552a3` |
| 81 | `theorem` | [piCongrRight_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/picongrright-trans.md) | 527 | `result-track:bc35ff2ce1a2834be1ac361ebeff66382981cf0fe8d89618ba9be53bb90deabb` |
| 82 | `def` | [piCongrLeft'](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/picongrleft-source-edition-2.md) | 537 | `declaration-track:fc5c511cf11231eebe6f5284ee1a0e1cfee17a31ca75a299903251af9a423439` |
| 83 | `theorem` | [piCongrLeft'_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/picongrleft-symm.md) | 545 | `result-track:dc96b4b700849d2a70a5f2062470267704e452e223aa72df6eab17d495286829` |
| 84 | `def` | [piCongrLeft](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/picongrleft.md) | 556 | `declaration-track:09fe70826bb61182a3511252a6fbdbe388128290e24251a03cd772d6a5987f61` |
| 85 | `def` | [piEquivPiSubtypeProd](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/piequivpisubtypeprod.md) | 564 | `declaration-track:cb2ff0ff7d129254a93dc010c6696c340ad26c58e75c701a6d4b169b6de84854` |
| 86 | `def` | [piMulOpposite](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/pimulopposite.md) | 573 | `declaration-track:0f07704a24099fb12dfdeaf7c11bcc3aa90c703d326bfc5b10a86c10e7879f84` |
| 87 | `def` | [prodCongr](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/prodcongr.md) | 584 | `declaration-track:1176f31002fa9ac4e31cfbcf27f548ea5bd4f729d4cb7dcb0b5b16d9501e62c7` |
| 88 | `theorem` | [coe_prodCongr](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-prodcongr.md) | 597 | `result-track:c2b85f836a50e0f2dd073ed3f849d0bf4214430993c31520b4c695158c12ac69` |
| 89 | `def` | [piOptionEquivProd](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/pioptionequivprod.md) | 605 | `declaration-track:5ee7662a4d7f664afad570d4dfd2922e71b5a0fa8aab181b2cf747824d60570c` |
| 90 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-one.md) | 618 | `result-track:0648e1b68fddd54f2865268e933b176aad960426d3181e50a95222a10bfa3093` |
| 91 | `theorem` | [map_eq_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-eq-one-iff.md) | 623 | `result-track:c21a99c6755c42a7c399ab49960937bc03ad5c5d6c30719d3541a54414a4df20` |
| 92 | `theorem` | [map_ne_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-ne-one-iff.md) | 626 | `result-track:a738318dd3e67d3e1fe321341b6d7a6883b49d9171455de52c8657ae217f92df` |
| 93 | `theorem` | [coe_monoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-monoidhom-refl.md) | 629 | `result-track:866f44d3f1a3b512b81595cea5102e4f9312574883ad1f18f87362412be936fd` |
| 94 | `theorem` | [coe_addMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-addmonoidhom-refl.md) | 633 | `result-track:c4a952f9a1d3728ddb681c231390eff613355f6f738f29a479494a8198114ac6` |
| 95 | `theorem` | [coe_ringHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-ringhom-refl.md) | 641 | `result-track:c5795f7b4cf71115fe15bd67a2e1d3e716f3229cb4f93ec557ed3714359a2c7a` |
| 96 | `theorem` | [coe_monoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-monoidhom-trans.md) | 645 | `result-track:9b74be3b4979082fe2e7a4c2e9d53fe7f91ec2b711c8f0b3e75a8987d1b71c4e` |
| 97 | `theorem` | [coe_addMonoidHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-addmonoidhom-trans.md) | 650 | `result-track:adb4434ce1ac414adc9257695f2eb115694c887cee8f4b7f1c9bfa685f38f7c5` |
| 98 | `theorem` | [coe_ringHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-ringhom-trans.md) | 658 | `result-track:208113097b1b7e49bd3bb0476ee639fabcb6e3e370d8b1571faf74a04aa01297` |
| 99 | `theorem` | [comp_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/comp-symm.md) | 663 | `result-track:97e70a33664d9943034e21617b93fa805e29124e7e9f3e285b519f84c39e82fd` |
| 100 | `theorem` | [symm_comp](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-comp.md) | 667 | `result-track:f578718828a567ae8c399c401983d88285bddcf7a35bf350096951de31277519` |
| 101 | `theorem` | [map_neg](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-neg.md) | 676 | `result-track:44bbbb3510a62a27f46cceba4c42d46358617e0b054b8be0fe7d6fed72dad0ab` |
| 102 | `theorem` | [map_sub](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-sub.md) | 679 | `result-track:3b0bd16e5d8a1704526f229efedea96d9f108e6cba7c9a8c20eadbb53bc040bc` |
| 103 | `theorem` | [map_neg_one](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-neg-one.md) | 689 | `result-track:44971b4fb58169c2950898202a2fe4770e13b69f0f942ff8aa20a4fc265ae455` |
| 104 | `theorem` | [map_eq_neg_one_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-eq-neg-one-iff.md) | 692 | `result-track:87866d5a863f7df852e635955e74ec5cbe603215739d3d2dfb3ff1792a484339` |
| 105 | `def` | [toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tononunitalringhom.md) | 702 | `declaration-track:40a2016b1ad29f483b470e0fc7ea5cc1080c121c36ae604f45acdb15d3d295b9` |
| 106 | `theorem` | [toNonUnitalRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tononunitalringhom-injective.md) | 705 | `result-track:6a0f822983fbc9887bce626870e18544224391e8213f73ef33034701a9e2056d` |
| 107 | `theorem` | [toNonUnitalRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tononunitalringhom-eq-coe.md) | 709 | `result-track:4f8abbaa12e43a59b00d23cd465fe730f51f25f60f57f61067c571aa91fb83ad` |
| 108 | `theorem` | [coe_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-tononunitalringhom.md) | 713 | `result-track:47151e6cbf8bbc9d9f5de01343b23b3519f4c9468dfab999ab860d967ca4dcb3` |
| 109 | `theorem` | [coe_toNonUnitalRingHom'](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-tononunitalringhom-source-edition-2.md) | 717 | `result-track:aee3b4341921f0f34504561a2857a80461af26f2272d6bcc7c8f1a5b3f0672df` |
| 110 | `theorem` | [coe_nonUnitalRingHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-nonunitalringhom-inj-iff.md) | 720 | `result-track:0909c34b3303344731a49acd7ba6bd6234985521c2db402fca4400ff98f2c05c` |
| 111 | `theorem` | [toNonUnitalRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tononunitalringhom-refl.md) | 725 | `result-track:10f06f6baaf5831b40424958480a931c2ac9a1489e5298bf8726d48463a73125` |
| 112 | `theorem` | [toNonUnitalRingHom_apply_symm_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tononunitalringhom-apply-symm-tononunitalringhom-apply.md) | 730 | `result-track:3e2e8e945f0f6c0ec4ee0c2eca94e1722145e47edcbc403f433cbdb01ca345e4` |
| 113 | `theorem` | [symm_toNonUnitalRingHom_apply_toNonUnitalRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-tononunitalringhom-apply-tononunitalringhom-apply.md) | 735 | `result-track:577e5ac4318640b22939aedfafd6bd6cd359d6c1801e8f7d9d13f03bfce982c0` |
| 114 | `theorem` | [toNonUnitalRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tononunitalringhom-trans.md) | 740 | `result-track:df6cf648033c97a8a07f0cfb4e83d4ca046f55efaa6d0d225ae73482caf39d55` |
| 115 | `theorem` | [toNonUnitalRingHomm_comp_symm_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tononunitalringhomm-comp-symm-tononunitalringhom.md) | 745 | `result-track:3fa551f8ec34a1145daa13037254e414bf41e7835240437afbf528c25daa87f7` |
| 116 | `theorem` | [symm_toNonUnitalRingHom_comp_toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-tononunitalringhom-comp-tononunitalringhom.md) | 751 | `result-track:0d146a9d42a16c2185c6fd999704055e6e08932ff2b82eeef773e7f12f8c6e37` |
| 117 | `def` | [toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringhom.md) | 763 | `declaration-track:ead47f7c8cdfa9529dd5a44b239fc3eca5cf0ea27f8bfca4fd3d6f74bca568e9` |
| 118 | `theorem` | [toRingHom_injective](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringhom-injective.md) | 766 | `result-track:df50a8deafb641a08ab435f69e6ecd4d16ed1fbd9060b9d2eb1185639ac46480` |
| 119 | `theorem` | [toRingHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringhom-eq-coe.md) | 769 | `result-track:1e0513e14a8828406d3abf69c573f0ce5378f691a9facf73649b08e0d2014d98` |
| 120 | `theorem` | [coe_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-toringhom.md) | 773 | `result-track:0d5a5009a33dd3ff606936207ebc7a8dd3980977df6e2b00656c87b0c39094ab` |
| 121 | `theorem` | [coe_ringHom_inj_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-ringhom-inj-iff.md) | 776 | `result-track:8be7422c6f69b7a4ead6c2f74fd9661fd36fc44c64e3edbcb2fa4ed6d45e0b62` |
| 122 | `theorem` | [toNonUnitalRingHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tononunitalringhom-commutes.md) | 782 | `result-track:140feb8ba8982bc4290ecda02d6bccbfb860076f391f1899d4e0034ea6bd50de` |
| 123 | `abbrev` | [toMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tomonoidhom.md) | 787 | `declaration-track:74e74a4b9086cbeac39c7ecd7653e0103d2128ae30f7d4c19f55bcba66719b8c` |
| 124 | `abbrev` | [toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toaddmonoidhom.md) | 791 | `declaration-track:1e8dd1c7c353f6d6deabf34ee9d1d643f187592fd0c8dcd9d10a3335856305a7` |
| 125 | `theorem` | [toAddMonoidMom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toaddmonoidmom-commutes.md) | 795 | `result-track:37c20f3a1ab1fe6cde9a0aad35aba9d6b909a472aecd1279b5a89bfb10ed5bdc` |
| 126 | `theorem` | [toMonoidHom_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tomonoidhom-commutes.md) | 800 | `result-track:e3e7c89212f78db3cbd70e0b4b1a4034578e88fa3e0c61eedd3a1a57c1ea0ac7` |
| 127 | `theorem` | [toEquiv_commutes](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toequiv-commutes.md) | 805 | `result-track:763d51bde462fc786ca25c84c974c41b28d54e9ca7583b6dcae531f7357f6d37` |
| 128 | `theorem` | [toRingHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringhom-refl.md) | 809 | `result-track:823e055edbbe8f75b4aae21cd0322e19236e72909937d2f6a11697b84759d856` |
| 129 | `theorem` | [toMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/tomonoidhom-refl.md) | 813 | `result-track:1290e40c4602b246bbf0012836a1a42bd525a8f8fb90ef10a201a7931fe20ea2` |
| 130 | `theorem` | [toAddMonoidHom_refl](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toaddmonoidhom-refl.md) | 817 | `result-track:15804b2b5af019e4ea2a15a60f56737a794b471f1bd879d528273104d914a7fe` |
| 131 | `theorem` | [toRingHom_apply_symm_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringhom-apply-symm-toringhom-apply.md) | 820 | `result-track:8c7b9d823912a585e007b06544417247d41fdc21a26dec981a24829ecddccd8a` |
| 132 | `theorem` | [symm_toRingHom_apply_toRingHom_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-toringhom-apply-toringhom-apply.md) | 824 | `result-track:2f53a1ceb89a009e69645162af5bc28a4623a8fb1c142630d5ca95f7d511ecc3` |
| 133 | `theorem` | [toRingHom_trans](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringhom-trans.md) | 829 | `result-track:6048736c28adec7cf0225f180052d1c05ee7cc88db665faf9158077d21fcd489` |
| 134 | `theorem` | [toRingHom_comp_symm_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringhom-comp-symm-toringhom.md) | 833 | `result-track:5511f7349c8d4dc934321feb18bfd3e3d590e9468e4b6bbbec8f53c2f07eb450` |
| 135 | `theorem` | [symm_toRingHom_comp_toRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-toringhom-comp-toringhom.md) | 837 | `result-track:ec99aea100ae972fe2e660214b4cea506963cfc3ceff8862245a369dc699e3b0` |
| 136 | `theorem` | [map_pow](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/map-pow.md) | 847 | `result-track:7ccbfa4b1edddf95d92a7d76fb855132ac86cc43db8f17bcc622570ff2d61d13` |
| 137 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringequiv-source-edition-3.md) | 857 | `declaration-track:b52792f9ae4ec31b97918c766334e5d5d5b1e6cb785099fd19ce896a4b79e661` |
| 138 | `def` | [toRingEquiv](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/toringequiv-source-edition-2.md) | 867 | `declaration-track:61990d9e347e786b6eddc67ec144fde3a8cf346c95077fca0219fb17db723202` |
| 139 | `theorem` | [self_trans_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/self-trans-symm.md) | 879 | `result-track:87a669484f849f790e99f4d92168bc6ce8025ddd41414df1df52859707ffcfc0` |
| 140 | `theorem` | [symm_trans_self](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-trans-self.md) | 883 | `result-track:acc7d2e814492b8d3123874077865ab476c8ffa345aa6e7889f2a91cecc3aab9` |
| 141 | `def` | [ofNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ofnonunitalringhom.md) | 896 | `declaration-track:a6f933f5df72db84b120d902a89bb28bcd50245bc6492200477f55b961faa966` |
| 142 | `theorem` | [symm_ofNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/symm-ofnonunitalringhom.md) | 909 | `result-track:eb098b633366997a11675d4c843f3ec350966075947d5e134335eeafb67ec763` |
| 143 | `def` | [ofRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ofringhom.md) | 921 | `declaration-track:83508ee8e8897780524cbef4a47a950475136ef0cefa2604dd760dd3a5c966f6` |
| 144 | `theorem` | [coe_ringHom_ofRingHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/coe-ringhom-ofringhom.md) | 931 | `result-track:2d84c77ba222d9066a48c8b3fba6e5269d95ca818dda6cb32a45910360a78f14` |
| 145 | `theorem` | [ofRingHom_coe_ringHom](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ofringhom-coe-ringhom.md) | 935 | `result-track:6191a03c387f0bf97d66eea03f57be4fdd305dcddcdec1b9fa277ccc36914a94` |
| 146 | `theorem` | [ofRingHom_symm](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/ofringhom-symm.md) | 939 | `result-track:6e161d5eb1f2d66201b2059ce6c23ac99e5349aa685dce305c2b4ad1845115c4` |
| 147 | `def` | [sumArrowEquivProdArrow](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/sumarrowequivprodarrow.md) | 945 | `declaration-track:ad53c7f16cc8d2730c8e79896db7d581895208f81a559e8a9e6830a33e3e25e1` |
| 148 | `lemma` | [sumArrowEquivProdArrow_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/sumarrowequivprodarrow-apply.md) | 952 | `result-track:7e51266aae715d14e8f7dd332580e15c9b57f2bee8c65afdf6c594f0305842d6` |
| 149 | `lemma` | [sumArrowEquivProdArrow_symm_apply](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/sumarrowequivprodarrow-symm-apply.md) | 957 | `result-track:754858acfdc2f3506296f53a1241df14a7b93daeabf4dceb233b957d9f083aaa` |
| 150 | `theorem` | [noZeroDivisors](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/nozerodivisors.md) | 968 | `result-track:5315478569d443acb511788b7ebe718baf3acb1285f9148411dad3cf265895f6` |
| 151 | `theorem` | [isDomain](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/isdomain.md) | 973 | `result-track:25b24f107680a039831e11c66e33e158308a3f762d468341839424d1be11cb5d` |
| 152 | `theorem` | [isDomain_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/isdomain-iff.md) | 979 | `result-track:1b098e227cf4d04329454859f0a39328af99e2b8cf68041a588c54ca37526dd6` |
| 153 | `theorem` | [noZeroDivisors_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/nozerodivisors-iff.md) | 986 | `result-track:7f6a4c3db8e3666477005d5fba28899a14ab1d4549aa270ace253ad265fe1c04` |
| 154 | `theorem` | [isLeftCancelMulZero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/isleftcancelmulzero-iff.md) | 990 | `result-track:c8288adbe39e6aeee6040b4c380ee0830eb608592a16fcc93504dae0d9ccf90d` |
| 155 | `theorem` | [isRightCancelMulZero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/isrightcancelmulzero-iff.md) | 994 | `result-track:f91665d017ed12f26d8fd1e139116fc67ecf695fcfa2dc3a3854e34e6b8ce63f` |
| 156 | `theorem` | [isCancelMulZero_iff](../../../../AssociativeRingsAndAlgebras/RingEquivNamespacedPublic.lean/declarations/iscancelmulzero-iff.md) | 999 | `result-track:1d511033d4820ab8f5e31c05832cbbd5be1a09b7508dc650c666ca2aaf0e0cf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e80571528c807e66ad20c49ccd3e131ad77ccac06a7688771383df95eb76a2fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Equiv/Variantc61c648f31c3093c69a05d62ed08a65a19ea6a27d7c1a0029447d8677f4d2875.lean","GRWTSK/_verification/specifications/Algebra/Equiv/Variantc61c648f31c3093c69a05d62ed08a65a19ea6a27d7c1a0029447d8677f4d2875.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
