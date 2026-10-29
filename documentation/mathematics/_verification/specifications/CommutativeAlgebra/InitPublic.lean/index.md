# Verification target: Init Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2bf2f741f7fb940393f9648a2583df3098081a3",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/InitPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/InitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2bf2f741f7fb940393f9648a2583df3098081a3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean.json)

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
| 1 | `inductive` | [Rel](../../../../CommutativeAlgebra/InitPublic.lean/declarations/rel.md) | 80 | `declaration-track:3265f72d763977644da6b3bdb4b78f9359837d3f3f9449a5cec3adc9d12ee7ce` |
| 2 | `def` | [RelI](../../../../CommutativeAlgebra/InitPublic.lean/declarations/reli.md) | 89 | `declaration-track:2d9ae2dc29d44f964a7bed42a96fcc69cbc428d70e2043ba5aede57dee30c9eb` |
| 3 | `def` | [ringCon](../../../../CommutativeAlgebra/InitPublic.lean/declarations/ringcon.md) | 92 | `declaration-track:41dbc3b2df3782988d5f876fd6bf208198b30c9f333da8ecd2c142774a7168c2` |
| 4 | `abbrev` | [DividedPowerAlgebra](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dividedpoweralgebra.md) | 100 | `declaration-track:2b4256bfcbfddd715ec0403d79dae4ca2e79c16bf82590f34730b751c7959ddb` |
| 5 | `lemma` | [mkAlgHom_surjective](../../../../CommutativeAlgebra/InitPublic.lean/declarations/mkalghom-surjective.md) | 108 | `result-track:d4202e391e6fdf0f7cac50ae73ab05ce9e4c91bc2c6113f93b8bbd09d5132f2c` |
| 6 | `lemma` | [coe_C](../../../../CommutativeAlgebra/InitPublic.lean/declarations/coe-c.md) | 112 | `result-track:6f037c9d24eeb3a6e7dce7598ab68ccc7c920df49b40dab11a691bfe794cc760` |
| 7 | `lemma` | [mkAlgHom_C](../../../../CommutativeAlgebra/InitPublic.lean/declarations/mkalghom-c.md) | 117 | `result-track:b9dd8485ecadd934a5d58b78ce41c5d0da7104277e4e77a176f61c63b824effc` |
| 8 | `lemma` | [mkRingHom_C](../../../../CommutativeAlgebra/InitPublic.lean/declarations/mkringhom-c.md) | 122 | `result-track:01f15c2e32701868c1681364715089296bb55c9337129b59fe9d96e84291d950` |
| 9 | `def` | [dp](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp.md) | 128 | `declaration-track:814936a926dca0237671aceddc6dc9f58869f4443764275d3aec9f0605cbf9df` |
| 10 | `theorem` | [dp_def](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-def.md) | 130 | `result-track:143f2381fe1eaedeb99fbfc1d7f95768abd160d17c0924677d0ace8d9a7b7d63` |
| 11 | `theorem` | [induction_on'](../../../../CommutativeAlgebra/InitPublic.lean/declarations/induction-on.md) | 133 | `result-track:99cc17a00d2d90a53ffc5c32d13a3148fcd5e5b465858e962840d0ce2c678f34` |
| 12 | `theorem` | [induction_on](../../../../CommutativeAlgebra/InitPublic.lean/declarations/induction-on-source-edition-2.md) | 148 | `result-track:a6398a2342b4c1f53226fea3b8fdb5d9fd6feaddbebdd27e7ab5f89a503953bd` |
| 13 | `theorem` | [dp_zero](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-zero.md) | 153 | `result-track:794faa3e71d951e3d957fb5e76150eb8c30d339ad2dbc20184bbfac63be857fa` |
| 14 | `theorem` | [dp_smul](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-smul.md) | 157 | `result-track:ac3be847994d84bba0d947ffdc518fb5dbdeb7ef10fe2bf84c429ebf6e61df99` |
| 15 | `theorem` | [dp_null](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-null.md) | 161 | `result-track:b7cfcfd9d27102dffa35b63948a022ac705d5cd29a03b3d0f268912c14717c09` |
| 16 | `theorem` | [dp_null_of_ne_zero](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-null-of-ne-zero.md) | 169 | `result-track:c53e0411e9030c5595226292fe99cb227ae11476d0021b6165922ee50022f70c` |
| 17 | `theorem` | [dp_mul](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-mul-source-edition-2.md) | 172 | `result-track:75ec7214d0367c351d829e5925833b11ba7f1b9a25a96eaa46fab982e1e19314` |
| 18 | `theorem` | [dp_add](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-add-source-edition-2.md) | 177 | `result-track:ee4d20f1d1d969d6a66f8fe1d71cc2aa271002d5cc87c1a99b0dbee00e0a5586` |
| 19 | `theorem` | [dp_sum](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-sum.md) | 182 | `result-track:a715ce45f4dff885588874e7637c271ec0a0861c66060c6c2b9c5c329a9b2718` |
| 20 | `theorem` | [dp_sum_smul](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-sum-smul.md) | 188 | `result-track:cfcc7bde0015a886950bebeed919ed295a28dccd9cea6c73537544bd081cf09b` |
| 21 | `lemma` | [prod_dp](../../../../CommutativeAlgebra/InitPublic.lean/declarations/prod-dp.md) | 196 | `result-track:a4a61b011af6c2c7c4108c440d3f1139d68cea793747d6b5f9cbded50cab6669` |
| 22 | `theorem` | [natFactorial_mul_dp_eq](../../../../CommutativeAlgebra/InitPublic.lean/declarations/natfactorial-mul-dp-eq.md) | 210 | `result-track:776e99514d0fcf20fc91670d372aea7d9b683253b11765c0dd764fd6f6c84d06` |
| 23 | `def` | [embed](../../../../CommutativeAlgebra/InitPublic.lean/declarations/embed.md) | 220 | `declaration-track:8aa36a2a913f2ca0cfc1f808e18edb290736cc80210a20a3b6b1289bac9024cc` |
| 24 | `theorem` | [embed_def](../../../../CommutativeAlgebra/InitPublic.lean/declarations/embed-def.md) | 225 | `result-track:a1c642408b268827f47a9e9ba7751dc12d49672a478acb75fc22380b85f3afcd` |
| 25 | `theorem` | [algHom_ext_iff](../../../../CommutativeAlgebra/InitPublic.lean/declarations/alghom-ext-iff.md) | 227 | `result-track:df0aa769bccab0ceb0509ae0912e5ebde304073ab654dede03baf00c7d9e31b4` |
| 26 | `theorem` | [algHom_ext](../../../../CommutativeAlgebra/InitPublic.lean/declarations/alghom-ext.md) | 236 | `result-track:7d51ac13442774aa88b6c84f2afa136878d9a0b467c001c18104409c233d63c6` |
| 27 | `theorem` | [submodule_span_prod_dp_eq_top](../../../../CommutativeAlgebra/InitPublic.lean/declarations/submodule-span-prod-dp-eq-top.md) | 252 | `result-track:1a0c6dfc15c20bcc173f110e4fa19257fc68d46ff29ef7ca30b65458eff1905c` |
| 28 | `lemma` | [pow_dp](../../../../CommutativeAlgebra/InitPublic.lean/declarations/pow-dp.md) | 292 | `result-track:634c45a54702536bf396899186c4cb77d5de3eed8fe93db5a1427764f8e37913` |
| 29 | `theorem` | [lift'_imp](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-imp.md) | 305 | `result-track:ba27788078946171fe54bc23a8a4398a60eb8a3b2d600ba4a64ac663ec5b8828` |
| 30 | `def` | [lift'](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift.md) | 317 | `declaration-track:d35c76f72b78e875c068994756e555b8d498976d664c7ed2015ff63e69adafd4` |
| 31 | `theorem` | [lift'_apply](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-apply-source-edition-2.md) | 327 | `result-track:38bd3e21abec2122d08326bc2d6011f608a24529c11c3106fb3787fe2b6fbf7e` |
| 32 | `theorem` | [lift'_apply_dp](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-apply-dp.md) | 336 | `result-track:cd2b9fc11e9fbd9e78d784fc27473e6caf4c5a5c715ac5e76db7ceb7dd17a27b` |
| 33 | `def` | [lift](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-source-edition-2.md) | 347 | `declaration-track:d3bde61c81937c00b23c698ba5294b65c312a446991602600adfd9e64e5415bf` |
| 34 | `theorem` | [lift_apply](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-apply.md) | 360 | `result-track:0bf4498080ad6369fffae609fd9de747abd59d560b8ea3d63db458fca923b370` |
| 35 | `theorem` | [lift_apply_dp](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-apply-dp-source-edition-2.md) | 365 | `result-track:d94909fde82715bacfe53067b4f6c79429d609a9683fb5fb92c1130b571f8c1c` |
| 36 | `theorem` | [lift_unique](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-unique.md) | 368 | `result-track:535d8043b520d9b6cd2e1121b7a17f1eef55cddd015bd9e21f11fac469ff93cc` |
| 37 | `theorem` | [lift_embed_apply](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-embed-apply.md) | 373 | `result-track:f4f346a23571fdaa375fde267d623aad3d3d46c3435d83468ce3070a7f93bd6e` |
| 38 | `theorem` | [embed_comp_lift](../../../../CommutativeAlgebra/InitPublic.lean/declarations/embed-comp-lift.md) | 377 | `result-track:d33a2ff4b5050865a009fbe7896882c492a1158df18e52c42023389171236a6f` |
| 39 | `lemma` | [dp_zero](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-zero-source-edition-2.md) | 392 | `result-track:9685701d5d6403376394eb5e009c64045ece9b970ba01a7ca3a0e800b59ce867` |
| 40 | `lemma` | [dp_mul](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-mul.md) | 394 | `result-track:62d48ac3882fa5148a1c7fb3828963908aa906b98cd074299c74964d2180cced` |
| 41 | `lemma` | [dp_add](../../../../CommutativeAlgebra/InitPublic.lean/declarations/dp-add.md) | 398 | `result-track:6fc5974d6c3f68287e7b51d4c01ac30f34389ad7ef49876a5a08001afb41e8ed` |
| 42 | `lemma` | [LinearMap.dp_smul](../../../../CommutativeAlgebra/InitPublic.lean/declarations/linearmap-dp-smul.md) | 410 | `result-track:3aaa68903959a115380a028ba7dca88568f2884bbde8d8fa79f65fab464878c8` |
| 43 | `def` | [map](../../../../CommutativeAlgebra/InitPublic.lean/declarations/map.md) | 419 | `declaration-track:99927cce69521e55cbaa736597a0ff969e4f56789d5296eb1218b8d17a23e552` |
| 44 | `theorem` | [map_apply](../../../../CommutativeAlgebra/InitPublic.lean/declarations/map-apply.md) | 427 | `result-track:9a6b2f56489f70cea25cf762e2f274989e1e3d592cfdce6cfa604f60f3be8a2e` |
| 45 | `theorem` | [map_apply_dp](../../../../CommutativeAlgebra/InitPublic.lean/declarations/map-apply-dp.md) | 432 | `result-track:4c0ae08ae725134ef745440e0cdc821ee558f5bfba7f54643b9da10f440743f3` |
| 46 | `theorem` | [map_embed_apply](../../../../CommutativeAlgebra/InitPublic.lean/declarations/map-embed-apply.md) | 436 | `result-track:63acb51e75ea4170b513a02c058801d723b44ff79850c83b9d678b4e723d9ed6` |
| 47 | `theorem` | [lift_comp_embed](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-comp-embed.md) | 439 | `result-track:4fbbcde285562bc8b347f50905d3794080b0d683fc01b90b0a910e9c5c8b83f5` |
| 48 | `theorem` | [lift_surjective](../../../../CommutativeAlgebra/InitPublic.lean/declarations/lift-surjective.md) | 443 | `result-track:6ef6ebebbd8d12a3d5be4af7d1762a0653499052913274985cb24d2b67a072f7` |
| 49 | `lemma` | [map_comp](../../../../CommutativeAlgebra/InitPublic.lean/declarations/map-comp.md) | 469 | `result-track:0bde57b542e2601e92d4367010b12aa627d4d5e741eb14e6cf08e0aca0dd5b8e` |
| 50 | `lemma` | [map_id](../../../../CommutativeAlgebra/InitPublic.lean/declarations/map-id.md) | 475 | `result-track:c782764db7f7526414260d4fe5eae7ff1544b7e2639266321b5a084fd8d701d5` |
| 51 | `def` | [mapEquiv](../../../../CommutativeAlgebra/InitPublic.lean/declarations/mapequiv.md) | 485 | `declaration-track:bd4d6dfbb93bdf01ad45b495d3b1a013e018656f3a11c6b93356d3f86eb83bf3` |
| 52 | `theorem` | [mapEquiv_symm](../../../../CommutativeAlgebra/InitPublic.lean/declarations/mapequiv-symm.md) | 490 | `result-track:cd40b28e7187d90bd871b6969c5a1a3baddf9c6a959bb594e219644e31937691` |
| 53 | `theorem` | [LinearEquiv.coe_lift](../../../../CommutativeAlgebra/InitPublic.lean/declarations/linearequiv-coe-lift.md) | 492 | `result-track:122720dda16255dac7ebc06a10b598da3f8ffb9d2ff057915ad05d73a74c88e5` |
| 54 | `theorem` | [LinearEquiv.coe_lift_symm](../../../../CommutativeAlgebra/InitPublic.lean/declarations/linearequiv-coe-lift-symm.md) | 494 | `result-track:0fa5e80c4be33a499df50cbbc4898c615e902c69d7d9b8fe9faa85250f39b739` |
| 55 | `theorem` | [mapEquiv_refl](../../../../CommutativeAlgebra/InitPublic.lean/declarations/mapequiv-refl.md) | 497 | `result-track:4206a80dbfdd16170d2f8d004fea0835fde2cf020dc60db2f972c311e604134b` |
| 56 | `theorem` | [mapEquiv_trans](../../../../CommutativeAlgebra/InitPublic.lean/declarations/mapequiv-trans.md) | 500 | `result-track:41311f3a903de22b53853924a6fecfa2880230f95e342a6a2565788b5378bb1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=460ba9c73d9bd84ab48cf278bc362bac6b6e5096c79dd4c4fd5387a49f5efd3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Init/Variant3bfa852e2ac7e05cf1bbbd49e07854032bfca5b4ceb1e3f8d07da0954e35c289.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
