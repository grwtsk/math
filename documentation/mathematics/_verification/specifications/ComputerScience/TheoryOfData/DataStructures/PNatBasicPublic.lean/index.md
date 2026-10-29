# Verification target: PNat Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e58070cd94fa38f8a31d9f950bcddd080a98c5c",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36805381af1b36b36546a4134d8b08fd7c6977216ed6ff5e5d19ade7747577af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e58070cd94fa38f8a31d9f950bcddd080a98c5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36805381af1b36b36546a4134d8b08fd7c6977216ed6ff5e5d19ade7747577af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36805381af1b36b36546a4134d8b08fd7c6977216ed6ff5e5d19ade7747577af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCancelCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/instcancelcommmonoid.md) | 30 | `declaration-track:c2dbf6221c21b01dcc51ec6d8772d4aa7de8dcbb46d5a0cdd60af876277fc478` |
| 2 | `theorem` | [one_add_natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/one-add-natpred.md) | 33 | `result-track:7605659e6730819cd4390e6cf192eb34079db883fa3c38fc0ab64b7e1ca02a21` |
| 3 | `theorem` | [natPred_add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/natpred-add-one.md) | 37 | `result-track:2f857aab064f1aa96e262e4d45b286564b1188a3ba466e0dfde2b3614b142b0c` |
| 4 | `theorem` | [natPred_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/natpred-strictmono.md) | 41 | `result-track:1687db71754f410fef03b3fac8ff063c9eca0beca60b6bc1523f0f0572e810a6` |
| 5 | `theorem` | [natPred_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/natpred-monotone.md) | 44 | `result-track:593c3443ec0f97343930357e5a2aac51bf2a8b5c6267d50264049217a407e41c` |
| 6 | `theorem` | [natPred_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/natpred-injective.md) | 47 | `result-track:83750d835eb6fb12bfcf7346ed5b6e3b6b331c764887aa0072e30f71373929e4` |
| 7 | `theorem` | [natPred_lt_natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/natpred-lt-natpred.md) | 51 | `result-track:dcbd57be0926ce827316a4ff551d9057ac5e600c5c9a4e83c0c887a1cf133d98` |
| 8 | `theorem` | [natPred_le_natPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/natpred-le-natpred.md) | 55 | `result-track:b638c60173b75dfaf5dccabef8de567b14edf4c414a878c8f6f6f02cad9fa188` |
| 9 | `theorem` | [natPred_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/natpred-inj.md) | 59 | `result-track:2d7a3a6154f606734163373134237d7918a69a6bd73e4e1faacdf6fb827de995` |
| 10 | `lemma` | [val_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/val-ofnat.md) | 63 | `result-track:a8822d3ce6eb0112604f0d672e58170327054baeefe4e9fa26b9fc1d959c67c7` |
| 11 | `lemma` | [mk_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/mk-ofnat.md) | 68 | `result-track:736c39122823ab25e30ead8fbd7917fd1acd0de6116af76f4d1469ad952f640e` |
| 12 | `theorem` | [succPNat_strictMono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/succpnat-strictmono.md) | 77 | `result-track:c9d03f2f908703772d1439fa827d0c67206ce38d5258d6331fd4cfebc9befff3` |
| 13 | `theorem` | [succPNat_mono](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/succpnat-mono.md) | 80 | `result-track:081e647b16d11c52653bf7480b1493b368defdb47f9de2b66cfd21d98e13f058` |
| 14 | `theorem` | [succPNat_lt_succPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/succpnat-lt-succpnat.md) | 84 | `result-track:ca72c294a3da872387b5398a7bf746520d88e31724222bc8327355045c1b67b2` |
| 15 | `theorem` | [succPNat_le_succPNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/succpnat-le-succpnat.md) | 88 | `result-track:283b28126f8aded5c1098529d4d801302ae7fefa6e3bf35b01dbaaa565ddc71b` |
| 16 | `theorem` | [succPNat_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/succpnat-injective.md) | 91 | `result-track:6b9484e04e795ccba6d6d0b378f0c36548420ac1a0cc67d9ee09fe77a760afad` |
| 17 | `theorem` | [succPNat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/succpnat-inj.md) | 95 | `result-track:af22eb54c032befca0f6b6d8221a2d84f308797a08386cad7fc0df31f9732549` |
| 18 | `theorem` | [coe_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/coe-inj.md) | 110 | `result-track:b8256ad9e6a8c030f452bb42f61e45b62c43a1dcd3954b82ca173f83f5ad4ba4` |
| 19 | `theorem` | [add_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/add-coe.md) | 114 | `result-track:683e5b9813a5c928f09ee175e40451534642ede1bed8f91464ffd8fb05b257f4` |
| 20 | `def` | [coeAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/coeaddhom.md) | 119 | `declaration-track:b160eaaf2bd551259da4bc3a38326f30423b9a2015ae0f11bac0f7b92708845b` |
| 21 | `def` | [_root_.OrderIso.pnatIsoNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/root-orderiso-pnatisonat.md) | 125 | `declaration-track:8a2711f7e504b63c327cecf8f7570e7da4cc7b719917cfec68d3cb1cf0bf31a5` |
| 22 | `theorem` | [_root_.OrderIso.pnatIsoNat_symm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/root-orderiso-pnatisonat-symm-apply.md) | 130 | `result-track:0d16cf17639ce54074e0c108374b04eaaed1f062b2b891c898a8bba13f51d844` |
| 23 | `theorem` | [lt_add_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/lt-add-one-iff.md) | 133 | `result-track:9e063e32913b655fa25962dce331c3f8fc38028cd6fd447a801a312463f271a2` |
| 24 | `theorem` | [add_one_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/add-one-le-iff.md) | 135 | `result-track:32f73948044712da1415120b5acf19af89fdf2dc76bb25cf5042e42b439431b8` |
| 25 | `instance` | [instOrderBot](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/instorderbot.md) | 137 | `declaration-track:f49f6f0625963ca15d7cc3a0b834faf257f2fb7cf6629e85ad98f8d714d9d91b` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/instance.md) | 141 | `declaration-track:e98b35c694df53f90abddcc24a4b7b038731efdcd4f8fcc7ffcd28dc0842125e` |
| 27 | `theorem` | [bot_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/bot-eq-one.md) | 145 | `result-track:b3d729c4f727f061265c44a59cbb56f08c31641b4d2efd77df8cc98d8ea62c6a` |
| 28 | `def` | [caseStrongInductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/casestronginductionon.md) | 149 | `declaration-track:0fced82dadd3a12c33e373a1bc702a5b326e73dd720445fa1c65e2b12f715764` |
| 29 | `def` | [recOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/recon.md) | 162 | `declaration-track:a7105c8a6d2770e51654c8286bc4abe736c775d6969d30426372461b92253b14` |
| 30 | `theorem` | [recOn_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/recon-one.md) | 172 | `result-track:6065839cb233022d7a5635f78b71d1052e7a3e0ed6efaa49a12a082d19b807e9` |
| 31 | `theorem` | [recOn_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/recon-succ.md) | 176 | `result-track:eac2165b4d4792a8b82fff59eb9650577bf3819d653b072286f37ac0601e4f10` |
| 32 | `theorem` | [ofNat_le_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/ofnat-le-ofnat.md) | 182 | `result-track:8d6ebd4e1781a8c8fbdeecf507316372d6ff436337a96daf49766d9d9697b2b6` |
| 33 | `theorem` | [ofNat_lt_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/ofnat-lt-ofnat.md) | 187 | `result-track:e2c6728e805fe92211baf2f43aab6e804496105ff34c2878dd3c53c4a9882d41` |
| 34 | `theorem` | [ofNat_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/ofnat-inj.md) | 192 | `result-track:c09aa65a6717169cb08e887f84d3970c560c1e3839e254f198b150c30c3b757e` |
| 35 | `theorem` | [mul_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/mul-coe.md) | 197 | `result-track:b661f15736601bc1e90401f63b8544c63fbc16e045775e4fcb98361fe963ddf4` |
| 36 | `def` | [coeMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/coemonoidhom.md) | 201 | `declaration-track:f9390c20dfc61d5778e738e5da9db9abe3e93279a4b534a8f020df05f0138339` |
| 37 | `theorem` | [coe_coeMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/coe-coemonoidhom.md) | 207 | `result-track:fba304595ca50454bc9086552ac01116609fdf8f8e49bd076e1f18827c7091b8` |
| 38 | `theorem` | [le_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/le-one-iff.md) | 211 | `result-track:ec48d6cf1227da78ac875f59e22dd3d4047412f2acdcf443587fe81e9b46e8e4` |
| 39 | `theorem` | [lt_add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/lt-add-left.md) | 214 | `result-track:ba9d8273e2aab979222660754e91281c9dce394e874bd1f4f2241562f1b3efe5` |
| 40 | `theorem` | [lt_add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/lt-add-right.md) | 217 | `result-track:2acd129de49cd7d6763a0cbf7bffb8b6920350fd5195c050ee7822181335da34` |
| 41 | `theorem` | [pow_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/pow-coe.md) | 221 | `result-track:5f6ecfa2eddb242f45db4b2a8ab9d813ffb6b20a6afd0d74764ea7e3a2d6fb65` |
| 42 | `theorem` | [one_lt_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/one-lt-of-lt.md) | 225 | `result-track:cb921685c5576879ed2a72ec09cf5bce5581bd8aae609e1297251f60e74f449d` |
| 43 | `theorem` | [add_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/add-one.md) | 227 | `result-track:66cd6a4e3d88cd9f18f834f15a49f91160eb730cfa34cf6dd8c3d79a54bc0987` |
| 44 | `theorem` | [lt_succ_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/lt-succ-self.md) | 229 | `result-track:695f7eb46cf8e1f04f51c95fae6bb390143afbd747b9a6e905a1ed2cb6739379` |
| 45 | `instance` | [instSub](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/instsub.md) | 234 | `declaration-track:c896162ce90d67b2610d2fcca78e8e6f4b22d695ec10755f44829e3f794fd3ae` |
| 46 | `theorem` | [sub_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/sub-coe.md) | 237 | `result-track:c895ae50ee7edf958f63113f6e677a3c5a46e9aeeeda173efed049e8279f100b` |
| 47 | `theorem` | [sub_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/sub-le.md) | 244 | `result-track:4f7060e1a5f53ba786acb26fb4b2cfe787f27ad8dec808993a68aaaf090218c1` |
| 48 | `theorem` | [le_sub_one_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/le-sub-one-of-lt.md) | 250 | `result-track:36d232d86aeecd9a1d4223d13439103abc0f681b4e99929a23faa82e06ce0a54` |
| 49 | `theorem` | [add_sub_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/add-sub-of-lt.md) | 256 | `result-track:43a3f4c2098bd8c901645afb3751510a7abf2fc77f7d3c776443105040992c2d` |
| 50 | `theorem` | [sub_add_of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/sub-add-of-lt.md) | 262 | `result-track:de0451bc57730aadb10a39c50977f6dce7ba43577ce0b12a01ea26883d81608b` |
| 51 | `theorem` | [add_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/add-sub.md) | 266 | `result-track:9dea10c7f0be3bd3377e49e7e6bf816874ef183e35d3117ba0e9205d6d959329` |
| 52 | `theorem` | [exists_eq_succ_of_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/exists-eq-succ-of-ne-one.md) | 270 | `result-track:9d33a9ad376b32a3ba219f76e6bce52aae27b6fe1fb55e08420a8578754758b9` |
| 53 | `theorem` | [modDivAux_spec](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/moddivaux-spec.md) | 275 | `result-track:e9202e40265fcddea30cf3a47cf50f04ed2f620670d00495f6bd0421cc0c5565` |
| 54 | `theorem` | [mod_add_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/mod-add-div-source-edition-2.md) | 284 | `result-track:a26c88673d03504fec9351182e871503998fd32a26f9e8237227f4d12dd06e9d` |
| 55 | `theorem` | [div_add_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/div-add-mod.md) | 293 | `result-track:0e2b5deb59ee3fb35da8b651a816bbd6d7d67e8ff4e3cc090d8c3ce0b0278cf3` |
| 56 | `theorem` | [mod_add_div'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/mod-add-div.md) | 296 | `result-track:7b4a2cefd71b7b49f0723668223da5675f82c56ae1e6126521fea1f1e49e92aa` |
| 57 | `theorem` | [div_add_mod'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/div-add-mod-source-edition-2.md) | 300 | `result-track:650c6538493c39d410dbf4ae0c139a6d2e037f6fb3f06697757b1f2e3ca0f0cf` |
| 58 | `theorem` | [mod_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/mod-le.md) | 304 | `result-track:0b727d168b37b6c492f6e932691c8dd08a4c759cfcaeec64c41cb4fee40dcd0d` |
| 59 | `theorem` | [dvd_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/dvd-iff.md) | 315 | `result-track:1af031885a8efbd5b9b10d3ed251bfd5f8446fdfd8e7cc0bdb8b2bf85ca82a51` |
| 60 | `theorem` | [dvd_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/dvd-iff-source-edition-2.md) | 326 | `result-track:2bfd9ce9831e9e208276ac35c9ee0dda06069a9c4d5e2b55a861462668205b88` |
| 61 | `theorem` | [le_of_dvd](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/le-of-dvd.md) | 339 | `result-track:dbe710b213b9b1f14b9496bd1013f50a1b7f60d6dc685558b50b1056ccda0b67` |
| 62 | `theorem` | [mul_div_exact](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/mul-div-exact.md) | 345 | `result-track:847ef87e37412e3388800cff2728f55837c0cc5f9f3e20577b38621ebb84458d` |
| 63 | `theorem` | [dvd_antisymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/dvd-antisymm.md) | 350 | `result-track:031af278aa30168c9c4c6e862ac7d4cb1673ee9e6abce8f2eb47b17df16f5882` |
| 64 | `theorem` | [dvd_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/dvd-one-iff.md) | 353 | `result-track:ccafd2737a1b0ad0a3358f01dc71ceb8118675a93401e5674b6832b3d9da37ef` |
| 65 | `theorem` | [pos_of_div_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/PNatBasicPublic.lean/declarations/pos-of-div-pos.md) | 356 | `result-track:99e1fe19f06bcb53c8f14f44b0616897675cb0a87dc1faf1a6065c5980592249` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56b504ab0eabd7e64a4be09422ed3a6d7a0aff01075bab6cb6a3487291d40c91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36805381af1b36b36546a4134d8b08fd7c6977216ed6ff5e5d19ade7747577af.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant36805381af1b36b36546a4134d8b08fd7c6977216ed6ff5e5d19ade7747577af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
