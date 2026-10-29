# Verification target: Mv Power Series Equiv Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac6c911d76d886934f8428c5a503f9d5b20dd41d",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Equiv/Variant115891fc2a2c494525d59da0b3350f771ca31056343315bd497036adde2ce3ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac6c911d76d886934f8428c5a503f9d5b20dd41d`.

Source path: `GRWTSK/Algebra/Equiv/Variant115891fc2a2c494525d59da0b3350f771ca31056343315bd497036adde2ce3ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Equiv/Variant115891fc2a2c494525d59da0b3350f771ca31056343315bd497036adde2ce3ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.PowerSeries.Ideal` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isEmptyEquiv](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/isemptyequiv.md) | 63 | `declaration-track:fbd60f2c2224ad9c30c4deb5ea549e986cd83d8e7b138974223f9332092bffb8` |
| 2 | `def` | [optionFunLeft](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/optionfunleft.md) | 75 | `declaration-track:7a85d0bd720dbe3dcb7971ba4c1495e1543c5707cc1dbccd2c3bb36ba2352291` |
| 3 | `lemma` | [coeff_coeff_optionFunLeft](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/coeff-coeff-optionfunleft.md) | 79 | `result-track:99ae5ec011d53d798d68ce8d922469f25fc816092b7426054f58bee712249411` |
| 4 | `theorem` | [optionFunLeft_monomial](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/optionfunleft-monomial.md) | 84 | `result-track:56eb88e9fe533cf444056c5ff02fbdab561cbdf36de0887cfb77ac79ae6ca58c` |
| 5 | `lemma` | [optionFunLeft_mul](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/optionfunleft-mul.md) | 99 | `result-track:f4dfc0990fddd80c2d2ac1499161a28f01b819557c660e4be6b815ac08883638` |
| 6 | `def` | [optionInvFunLeft](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/optioninvfunleft.md) | 118 | `declaration-track:3f17acee11ba3cd30b16ddb1ce0fb2327b4708aa01ced918b3eae73088a46ae5` |
| 7 | `lemma` | [coeff_optionInvFunLeft](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/coeff-optioninvfunleft.md) | 121 | `result-track:44669f990e2ee31859a784936d23622dbb00db03b12bd992de742ac4c2a09bb2` |
| 8 | `def` | [optionEquivLeft](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/optionequivleft.md) | 128 | `declaration-track:032741d8bbefe882227ecb2d9ce441ec77211da4326adf7236016a787dfbe7ef` |
| 9 | `lemma` | [coeff_coeff_optionEquivLeft](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/coeff-coeff-optionequivleft.md) | 139 | `result-track:e7832c129faa850fe73ae69a72bc73f8cd3a79c762bdd40315f5244725e7d08d` |
| 10 | `theorem` | [optionEquivLeft_monomial](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/optionequivleft-monomial.md) | 143 | `result-track:238ddffba33d49da1414e0d682c0e2187035a779235dcfbdf346c07286346e06` |
| 11 | `lemma` | [optionEquivLeft_X_some](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/optionequivleft-x-some.md) | 148 | `result-track:2a23a9a7c23ebf07b4983eb8d9ec3644538c2e36e2e60ab60ead44e73a2f1cee` |
| 12 | `lemma` | [optionEquivLeft_X_none](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/optionequivleft-x-none.md) | 157 | `result-track:8cfb0769998c2d495b2c2a7e70d3c5509ff8255a8a88bded659d3e6a141f7c14` |
| 13 | `lemma` | [optionEquivLeft_C](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/optionequivleft-c.md) | 162 | `result-track:db835d72e5846bbf2a1498c93a67695b7b2ecb99f8703df0b1407039b3ae5838` |
| 14 | `lemma` | [embDomain_finSuccEquiv_cons](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/embdomain-finsuccequiv-cons.md) | 171 | `result-track:1242f3ea8637a80d9956f07dc68c1cb8272c4beff8bdf2337664f0da9cae5393` |
| 15 | `def` | [finSuccEquiv](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/finsuccequiv.md) | 178 | `declaration-track:293e4f2bb01fdbbbc78728c25ff9e0dcad3f701a4e6c4d90251439e047cd4642` |
| 16 | `theorem` | [coeff_coeff_finSuccEquiv](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/coeff-coeff-finsuccequiv.md) | 181 | `result-track:8bc7f1372a5e7e31da75313039392549323d88e5f982835e0399c591b3da7796` |
| 17 | `theorem` | [finSuccEquiv_X_zero](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/finsuccequiv-x-zero.md) | 189 | `result-track:1b25e9dd134caff602a19cd375c5869655c31d14231267bead2b53bab08333f5` |
| 18 | `theorem` | [finSuccEquiv_X_succ](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/finsuccequiv-x-succ.md) | 199 | `result-track:0c394e23b9039b67ca94d8689537d81a36500794e7d1ca634842cdf7d37e8a05` |
| 19 | `theorem` | [finSuccEquiv_C](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/finsuccequiv-c.md) | 209 | `result-track:49130d205423f2a4a9307c9c67d91f75c0883dd62bc8090871d429d86329e121` |
| 20 | `theorem` | [finSuccEquiv_comp_C](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/finsuccequiv-comp-c.md) | 219 | `result-track:9ce5f9a7757b46c4fbaa1e1021280d914564b395dc1535221c1b7a3a8b86f549` |
| 21 | `lemma` | [isNoetherianRing_fin](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/isnoetherianring-fin.md) | 225 | `result-track:97a30d2a127d7b78f6abdcb497a1cfeaa4ade79e67183fcda8f9bc3ad8fa8f73` |
| 22 | `instance` | [isNoetherianRing](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/isnoetherianring.md) | 233 | `declaration-track:048ed8dd202d1da3e9e69f40c4343eaea183ad7e6acf10bd68a3ab0e9e04db7f` |
| 23 | `lemma` | [truncTotal_sub_truncTotal_mem_pow_idealOfVars](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/trunctotal-sub-trunctotal-mem-pow-idealofvars.md) | 249 | `result-track:45d48ab8f1744698ca2b800495dd89329d5775372fb419568a54a9d6ae859c79` |
| 24 | `lemma` | [truncTotal_mul_sub_mul_truncTotal_mem_pow_idealOfVars](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/trunctotal-mul-sub-mul-trunctotal-mem-pow-idealofvars.md) | 256 | `result-track:743672d87fae85c0ad04a5b686c8fea8aee03e8b6ecde2f8c1a80bb6a81ca26f` |
| 25 | `def` | [truncTotalAlgHom](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/trunctotalalghom.md) | 267 | `declaration-track:c30cca7e0b8c69d9cbbd7cc249392fc1a201faa2c340919c92430128cf0e9847` |
| 26 | `def` | [toAdicCompletion](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/toadiccompletion.md) | 292 | `declaration-track:05cf98a72ed59738aa016394a473e3612d60950c57a28ab2a4f0b91f3beabffa` |
| 27 | `lemma` | [toAdicCompletion_apply_eq_mk_truncTotal](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/toadiccompletion-apply-eq-mk-trunctotal.md) | 300 | `result-track:361a5d9fa74240b52400db6f4c32e5b3ba0829ecfc1a10110f8065f1b9033dd2` |
| 28 | `theorem` | [coeff_toAdicCompletion_val_apply_out](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/coeff-toadiccompletion-val-apply-out.md) | 303 | `result-track:ca9f55aadd729cc63bc283cd51130d3cc4cd059ab152a08bef06b3d43493a510` |
| 29 | `theorem` | [toAdicCompletion_coe](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/toadiccompletion-coe.md) | 314 | `result-track:237e51d0754bc82c4349283c37865e508c9491e34bbeb0e09d88698e8385a370` |
| 30 | `def` | [toAdicCompletionInv](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/toadiccompletioninv.md) | 323 | `declaration-track:ddb1dabc054fe57301b8ef4e08b4ce6313508716956727589a7faddca40d222d` |
| 31 | `lemma` | [coeff_toAdicCompletionInv](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/coeff-toadiccompletioninv.md) | 328 | `result-track:01715c50fbbeafe21d74307879308a665d3bcb2eed68b1806f0183ba2c5dfa00` |
| 32 | `theorem` | [mk_truncTotal_toAdicCompletionInv](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/mk-trunctotal-toadiccompletioninv.md) | 332 | `result-track:8ed66da30d44774f60c48c2e23ee50e5941d1a4c2dd9d8a8f5f20d80b9f540e1` |
| 33 | `def` | [toAdicCompletionAlgEquiv](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/toadiccompletionalgequiv.md) | 352 | `declaration-track:d9c519da6b6ac0fd843cbde772288246614069c42f0b4fefe8875d758d8c33ef` |
| 34 | `lemma` | [toAdicCompletionAlgEquiv_apply](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/toadiccompletionalgequiv-apply.md) | 362 | `result-track:d66e51326754d614aa54f71a5178ae2c4957608cd4b5ae7af519b70375da0868` |
| 35 | `lemma` | [toAdicCompletionAlgEquiv_symm_apply](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/toadiccompletionalgequiv-symm-apply.md) | 366 | `result-track:4b6e9b3d02f3a89e190b08d7acd618440793bd38d93bc7f62486b0e1e052847c` |
| 36 | `def` | [toMvPowerSeries](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/tomvpowerseries.md) | 385 | `declaration-track:544df6fd941ed80726e0820383bb9211e6f689a2487c2566901900b45c24222a` |
| 37 | `theorem` | [toMvPowerSeries_apply](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/tomvpowerseries-apply.md) | 388 | `result-track:9df665b83a1d37373209acd61cc20d5756426ea9e83a1ff8e9d5039fc99b7b60` |
| 38 | `theorem` | [toMvPowerSeries_C](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/tomvpowerseries-c.md) | 391 | `result-track:89314556c6b01a7ab71bfc3021366281cdc091761970d9396891f9f297286371` |
| 39 | `theorem` | [toMvPowerSeries_X](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/tomvpowerseries-x.md) | 395 | `result-track:785df21d209b4e60ec56ed6e3391d86a23539c985be4569a6b54ce10a8e5a29d` |
| 40 | `theorem` | [toMvPowerSeries_injective](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/tomvpowerseries-injective.md) | 398 | `result-track:1142b21077eaf237f1be9c66e306f5e99fbc907c88583dff5f2ec0613a1ba023` |
| 41 | `theorem` | [toMvPowerSeries_inj](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/tomvpowerseries-inj.md) | 401 | `result-track:946938d3a54bbe804b9f770de8c62c3ac441532c71c95816ab02c00d239064d9` |
| 42 | `theorem` | [toMvPowerSeries_eq_subst](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/tomvpowerseries-eq-subst.md) | 409 | `result-track:bd7da2388a284bd2a19aa0246f03cadf7b44e2c63d2c24b898ae9f11b167dbf4` |
| 43 | `theorem` | [subst_toMvPowerSeries](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/subst-tomvpowerseries.md) | 412 | `result-track:1ea36eb4ee59db35dd37be93346cc9b8f4ff548c34d4c313b6d29f8a2a109d70` |
| 44 | `lemma` | [toMvPowerSeries_coeff_eq_zero](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/tomvpowerseries-coeff-eq-zero.md) | 417 | `result-track:c97ba1c09483c57c467fc43482c32b9c4ff6c00d9d36bcca0ec35bf066cafe21` |
| 45 | `theorem` | [Mv Power Series Equiv Namespaced Public](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/tomvpowerseries-source-line-427-occurrence-2.md) | 427 | `result-track:b02603b85bf583819e98c50e0b782f7325465774c1ffba2c928f4aa9d873cc0a` |
| 46 | `lemma` | [MvPowerSeries.rename_comp_toMvPowerSeries](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/mvpowerseries-rename-comp-tomvpowerseries.md) | 441 | `result-track:3a8aca976fddd837f58baffa12d8efa8a34c226f98bc43975fc89a2ce78291a7` |
| 47 | `lemma` | [MvPowerSeries.rename_toMvPowerSeries](../../../../CommutativeAlgebra/MvPowerSeriesEquivNamespacedPublic.lean/declarations/mvpowerseries-rename-tomvpowerseries.md) | 448 | `result-track:d9cd30ffc139e3fa8ae90376a4dfeba29ae3019b33609de209881b44e57db7f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bf747e35547d5e0e6e365f2d47d259a7a781278c49d1b0388adec4ebd68e7f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Equiv/Variant115891fc2a2c494525d59da0b3350f771ca31056343315bd497036adde2ce3ce.lean","GRWTSK/_verification/specifications/Algebra/Equiv/Variant115891fc2a2c494525d59da0b3350f771ca31056343315bd497036adde2ce3ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
