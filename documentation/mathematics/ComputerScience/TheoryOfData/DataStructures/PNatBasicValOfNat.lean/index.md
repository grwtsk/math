# PNat Basic Val Of Nat

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**71 observed declarations and anonymous commands**, 56 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf61c87ad8cfb093aabb6d99b9ac36fd8436656248ff99551dd75423f4b313ce5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4515b6b7fc5b186cfac1c3b2d10617be80c3d494`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/PNatBasicValOfNat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instCommMonoid](declarations/instcommmonoid.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instIsOrderedCancelMonoid](declarations/instisorderedcancelmonoid.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instCancelCommMonoid](declarations/instcancelcommmonoid.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instWellFoundedLT](declarations/instwellfoundedlt.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [one_add_natPred](declarations/one-add-natpred.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [natPred_add_one](declarations/natpred-add-one.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [natPred_strictMono](declarations/natpred-strictmono.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [natPred_monotone](declarations/natpred-monotone.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [natPred_injective](declarations/natpred-injective.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [natPred_lt_natPred](declarations/natpred-lt-natpred.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [natPred_le_natPred](declarations/natpred-le-natpred.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [natPred_inj](declarations/natpred-inj.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [val_ofNat](declarations/val-ofnat.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [mk_ofNat](declarations/mk-ofnat.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [succPNat_strictMono](declarations/succpnat-strictmono.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [succPNat_mono](declarations/succpnat-mono.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [succPNat_lt_succPNat](declarations/succpnat-lt-succpnat.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [succPNat_le_succPNat](declarations/succpnat-le-succpnat.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [succPNat_injective](declarations/succpnat-injective.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [succPNat_inj](declarations/succpnat-inj.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [coe_inj](declarations/coe-inj.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [add_coe](declarations/add-coe.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [coeAddHom](declarations/coeaddhom.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [addLeftMono](declarations/addleftmono.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [addLeftStrictMono](declarations/addleftstrictmono.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [addLeftReflectLE](declarations/addleftreflectle.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [addLeftReflectLT](declarations/addleftreflectlt.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [_root_.OrderIso.pnatIsoNat](declarations/root-orderiso-pnatisonat.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [_root_.OrderIso.pnatIsoNat_symm_apply](declarations/root-orderiso-pnatisonat-symm-apply.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [lt_add_one_iff](declarations/lt-add-one-iff.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [add_one_le_iff](declarations/add-one-le-iff.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instOrderBot](declarations/instorderbot.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [bot_eq_one](declarations/bot-eq-one.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [caseStrongInductionOn](declarations/casestronginductionon.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [recOn](declarations/recon.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [recOn_one](declarations/recon-one.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [recOn_succ](declarations/recon-succ.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ofNat_le_ofNat](declarations/ofnat-le-ofnat.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ofNat_lt_ofNat](declarations/ofnat-lt-ofnat.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [ofNat_inj](declarations/ofnat-inj.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [mul_coe](declarations/mul-coe.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [coeMonoidHom](declarations/coemonoidhom.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [coe_coeMonoidHom](declarations/coe-coemonoidhom.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [le_one_iff](declarations/le-one-iff.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [lt_add_left](declarations/lt-add-left.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [lt_add_right](declarations/lt-add-right.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [pow_coe](declarations/pow-coe.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [one_lt_of_lt](declarations/one-lt-of-lt.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [add_one](declarations/add-one.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [lt_succ_self](declarations/lt-succ-self.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [instSub](declarations/instsub.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [sub_coe](declarations/sub-coe.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [sub_le](declarations/sub-le.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [le_sub_one_of_lt](declarations/le-sub-one-of-lt.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [add_sub_of_lt](declarations/add-sub-of-lt.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [sub_add_of_lt](declarations/sub-add-of-lt.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [add_sub](declarations/add-sub.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [exists_eq_succ_of_ne_one](declarations/exists-eq-succ-of-ne-one.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [modDivAux_spec](declarations/moddivaux-spec.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [mod_add_div](declarations/mod-add-div.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [div_add_mod](declarations/div-add-mod.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [mod_add_div'](declarations/mod-add-div-source-edition-2.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [div_add_mod'](declarations/div-add-mod-source-edition-2.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [mod_le](declarations/mod-le.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [dvd_iff](declarations/dvd-iff-source-edition-2.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [dvd_iff'](declarations/dvd-iff.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [le_of_dvd](declarations/le-of-dvd.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [mul_div_exact](declarations/mul-div-exact.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [dvd_antisymm](declarations/dvd-antisymm.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [dvd_one_iff](declarations/dvd-one-iff.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `theorem` | [pos_of_div_pos](declarations/pos-of-div-pos.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4dce9588a8c622bb76039de4a3058fcaf82c073d9ac25d02c8569139582c079e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf61c87ad8cfb093aabb6d99b9ac36fd8436656248ff99551dd75423f4b313ce5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
