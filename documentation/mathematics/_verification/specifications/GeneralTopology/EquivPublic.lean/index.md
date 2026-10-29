# Verification target: Equiv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd6ae3f4c0392ae2c8cdbd5b3ed9f804c20a56ad",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EquivPublic.lean/index.md) · [Full source](../../../../GeneralTopology/EquivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd6ae3f4c0392ae2c8cdbd5b3ed9f804c20a56ad`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean.json)

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
| 1 | `structure` | [UniformEquiv](../../../../GeneralTopology/EquivPublic.lean/declarations/uniformequiv.md) | 37 | `declaration-track:7acbdd1646762cb496694bb72bb124fa8a208225b6b4272566143eba4468c572` |
| 2 | `theorem` | [toEquiv_injective](../../../../GeneralTopology/EquivPublic.lean/declarations/toequiv-injective.md) | 51 | `result-track:66c19f2e0b91f34c4dd37acc07ad53a95b2f49937b3893c45f6cf8e507e3d016` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/EquivPublic.lean/declarations/instance.md) | 55 | `declaration-track:231025c7a90a31ef6214f79b788abf37143d172b0a2f0db1aed6f1283af79d47` |
| 4 | `theorem` | [uniformEquiv_mk_coe](../../../../GeneralTopology/EquivPublic.lean/declarations/uniformequiv-mk-coe.md) | 63 | `result-track:6f3f8cfe73cd2c5150d7ba11c874adfb1d4310e6e95cbcf01c426f6bde965b94` |
| 5 | `def` | [symm](../../../../GeneralTopology/EquivPublic.lean/declarations/symm.md) | 67 | `declaration-track:73ce8d1b43f4f4cb9d94ab65ab6bfeabbd05e4e36f4b277954d5f35d1d073d87` |
| 6 | `def` | [Simps.apply](../../../../GeneralTopology/EquivPublic.lean/declarations/simps-apply.md) | 74 | `declaration-track:bee04c435a60cc852d484681a6f9970b8589c5c06ad9354ff467e3ea744a7121` |
| 7 | `def` | [Simps.symm_apply](../../../../GeneralTopology/EquivPublic.lean/declarations/simps-symm-apply.md) | 78 | `declaration-track:64a930ecd9eaadddccab2a77584eae5bcb9a005e1a6c05d8070be8168f2d061d` |
| 8 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/EquivPublic.lean/declarations/coe-toequiv.md) | 84 | `result-track:f3962c4e979f9bc72b09ca8d2c53587e65de36d125e0dfc3459f58d5b5f54f9c` |
| 9 | `theorem` | [coe_symm_toEquiv](../../../../GeneralTopology/EquivPublic.lean/declarations/coe-symm-toequiv.md) | 88 | `result-track:ec02e111b8dc6ddcf4dc5ea0f8ea722783900eb63fb8b72a379d23c18831b412` |
| 10 | `theorem` | [ext](../../../../GeneralTopology/EquivPublic.lean/declarations/ext.md) | 92 | `result-track:49773a00f4ccc50c6c9e0df5fe7a075c2191833527448e8b18bcca1c7aeca26b` |
| 11 | `def` | [refl](../../../../GeneralTopology/EquivPublic.lean/declarations/refl.md) | 97 | `declaration-track:deb972d951a773c0070835e8db4e9e5942fdb32de71aacc8d3bf323fef587880` |
| 12 | `def` | [trans](../../../../GeneralTopology/EquivPublic.lean/declarations/trans.md) | 103 | `declaration-track:fb008e35c55e87cdb2b50334d1d6826a24aef55d946de369ef0b252182c6ce69` |
| 13 | `theorem` | [trans_apply](../../../../GeneralTopology/EquivPublic.lean/declarations/trans-apply.md) | 109 | `result-track:ee20d337c1a048009a9bd0f1d5d66dc960d13fcb2d4a638d984d0b7fe23d834c` |
| 14 | `theorem` | [uniformEquiv_mk_coe_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/uniformequiv-mk-coe-symm.md) | 113 | `result-track:ce5e9e989b45e2bfc59f6a79c837db435d18370141f206be5bdf916b68f07a1c` |
| 15 | `theorem` | [refl_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/refl-symm.md) | 118 | `result-track:f28beee128e31847656e8da740db6e7c8835c353ef8cbb2f952fe28e01ea57fa` |
| 16 | `theorem` | [uniformContinuous](../../../../GeneralTopology/EquivPublic.lean/declarations/uniformcontinuous.md) | 121 | `result-track:b3435b28b24ce097a2c6323a92aa0367141f7e4a153de28f61d4b209efa627e1` |
| 17 | `theorem` | [continuous](../../../../GeneralTopology/EquivPublic.lean/declarations/continuous.md) | 125 | `result-track:eee9d19f718c053d4ade31959a801fee2771318714dc83c0b4a8588e551835d4` |
| 18 | `theorem` | [uniformContinuous_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/uniformcontinuous-symm.md) | 128 | `result-track:8f58ff6c5b462660280c76a524ac38678613b9ccae9a5737dbdeaded7aa027a7` |
| 19 | `theorem` | [continuous_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/continuous-symm.md) | 133 | `result-track:cb9551a67b377116216d850ea531cb9fbe286199635ec6a871741c60bffa91b0` |
| 20 | `def` | [toHomeomorph](../../../../GeneralTopology/EquivPublic.lean/declarations/tohomeomorph.md) | 137 | `declaration-track:df9f8017310d6c908c75f987d1157bbced46fafb5014a6a6ead609d476e5fcf5` |
| 21 | `lemma` | [toHomeomorph_apply](../../../../GeneralTopology/EquivPublic.lean/declarations/tohomeomorph-apply.md) | 142 | `result-track:beaf72d8bc4d77368d95781847d80d77feb82b428b295cecfae6961ba65ba20d` |
| 22 | `lemma` | [toHomeomorph_symm_apply](../../../../GeneralTopology/EquivPublic.lean/declarations/tohomeomorph-symm-apply.md) | 144 | `result-track:7239eddd345a4986052e504be5d4dc770f3fba85797e561d76d895d7475d994a` |
| 23 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/EquivPublic.lean/declarations/apply-symm-apply.md) | 147 | `result-track:6d5321fb80f8fd306034982fdb3f79357e456fc2a9e0f490e9522f593684e8e3` |
| 24 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/EquivPublic.lean/declarations/symm-apply-apply.md) | 151 | `result-track:919b638ff1e88055fa9741b6768741ffd77cadd8e2399d5099fd8645dfd165da` |
| 25 | `theorem` | [bijective](../../../../GeneralTopology/EquivPublic.lean/declarations/bijective.md) | 154 | `result-track:82bade0f5ca51c567623d374e7f71d05456432eaac256354cd9ac83c9512116e` |
| 26 | `theorem` | [injective](../../../../GeneralTopology/EquivPublic.lean/declarations/injective.md) | 157 | `result-track:e35c38400419207ed5eafe113c689e5522f73d5168b25d7ee8ae56be0f5298b9` |
| 27 | `theorem` | [surjective](../../../../GeneralTopology/EquivPublic.lean/declarations/surjective.md) | 160 | `result-track:e75a4fac7cfb2028fd2a9c66d3443c5b9466f1bc8653c9e5573cc85b51d93e09` |
| 28 | `def` | [changeInv](../../../../GeneralTopology/EquivPublic.lean/declarations/changeinv.md) | 164 | `declaration-track:9e7dc630d060414643931af12a522184f11e6ddec74552edb9aeee58546f3197` |
| 29 | `theorem` | [symm_comp_self](../../../../GeneralTopology/EquivPublic.lean/declarations/symm-comp-self.md) | 177 | `result-track:a16779789e117766c856c18942a9d74516a83ae66441d8cc82dbe2439812cc39` |
| 30 | `theorem` | [self_comp_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/self-comp-symm.md) | 181 | `result-track:ff8ff3d6cb6e894d594703d38e69368459dd719124418fafe0a194fa174f2e73` |
| 31 | `theorem` | [range_coe](../../../../GeneralTopology/EquivPublic.lean/declarations/range-coe.md) | 184 | `result-track:a6d9c42e9ecae150ed536f2429cca77f2df910c043f90c3da8e13b82c139e5d4` |
| 32 | `theorem` | [image_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/image-symm.md) | 186 | `result-track:b6478dfd22311fe42944f1a900046e4b902de03d6a5fc76cb9f2e708a5a2e360` |
| 33 | `theorem` | [preimage_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/preimage-symm.md) | 189 | `result-track:0511f44162e341f4dd0da22955003c79af2ce3eb1a8f105a46d8b68161715dd6` |
| 34 | `theorem` | [image_preimage](../../../../GeneralTopology/EquivPublic.lean/declarations/image-preimage.md) | 193 | `result-track:8709194cc8fc9386139a7f0e8bfb96b53b9f55e27cdca0363ae2454dc9be9f5b` |
| 35 | `theorem` | [preimage_image](../../../../GeneralTopology/EquivPublic.lean/declarations/preimage-image.md) | 197 | `result-track:38baae41adf78026231291deb32ff2820c3c6a23e572121e4095850e1b2bab18` |
| 36 | `theorem` | [isUniformInducing](../../../../GeneralTopology/EquivPublic.lean/declarations/isuniforminducing.md) | 200 | `result-track:3f0d9d5f6546741a88ef5da544d7d138c7ee151f2e488c02138a8e4cecb994d3` |
| 37 | `theorem` | [comap_eq](../../../../GeneralTopology/EquivPublic.lean/declarations/comap-eq.md) | 204 | `result-track:8cef1d6811cf7bc79e299886baff9233d97adef9c80ea65f5e46f2c4dd3276a0` |
| 38 | `lemma` | [isUniformEmbedding](../../../../GeneralTopology/EquivPublic.lean/declarations/isuniformembedding.md) | 207 | `result-track:b5dd6f52d537c84a98fdcd42259a1efd700bd4483d59d86ab65d0b0131d4461f` |
| 39 | `theorem` | [completeSpace_iff](../../../../GeneralTopology/EquivPublic.lean/declarations/completespace-iff.md) | 209 | `result-track:8924992baa18dbb29ba81e9a2647fe5a92aab63be8857f23433dc1aa72c08656` |
| 40 | `def` | [ofIsUniformEmbedding](../../../../GeneralTopology/EquivPublic.lean/declarations/ofisuniformembedding.md) | 213 | `declaration-track:04d326636103a746f41eb179802953632680c9a951410b16551f1430f1420cea` |
| 41 | `def` | [setCongr](../../../../GeneralTopology/EquivPublic.lean/declarations/setcongr.md) | 223 | `declaration-track:1a3a4560d2b47b78ca8a3ac02c5b355bafd29aeab027e5142c1202ead01d580f` |
| 42 | `def` | [prodCongr](../../../../GeneralTopology/EquivPublic.lean/declarations/prodcongr.md) | 229 | `declaration-track:112d3e42a5e8c01ffdeb17948ee9765e1cf057179a74b0e0f6ffc7585d96bb1a` |
| 43 | `theorem` | [prodCongr_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/prodcongr-symm.md) | 239 | `result-track:8ccb87c306f89defb9750bfcb50eef2704098241bcba8b4feab8416e79b059f8` |
| 44 | `theorem` | [coe_prodCongr](../../../../GeneralTopology/EquivPublic.lean/declarations/coe-prodcongr.md) | 244 | `result-track:a9b2d98f5de58ebaa94aa6866345e8f1c4bf56d97d4279a5ea5ec600f9a2da10` |
| 45 | `def` | [prodComm](../../../../GeneralTopology/EquivPublic.lean/declarations/prodcomm.md) | 252 | `declaration-track:86d0b8b6441a80682997a3eb50a8ede4323e334468186c78eb977ad528fde8da` |
| 46 | `theorem` | [prodComm_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/prodcomm-symm.md) | 258 | `result-track:b0bb758da57755138ad8e6000a8b70652c0160a6eb22440d1219e91799d7fc57` |
| 47 | `theorem` | [coe_prodComm](../../../../GeneralTopology/EquivPublic.lean/declarations/coe-prodcomm.md) | 262 | `result-track:20b3544d9287f4af41eb2f9155acbd845bf2a459b59972d05214f9d246404d6e` |
| 48 | `def` | [prodAssoc](../../../../GeneralTopology/EquivPublic.lean/declarations/prodassoc.md) | 266 | `declaration-track:24c291fdfaca33657198a89ee11c10252c6d944193c812ac82384c42e6b8c03e` |
| 49 | `def` | [prodPUnit](../../../../GeneralTopology/EquivPublic.lean/declarations/prodpunit.md) | 277 | `declaration-track:46a405ddbbe7c4617c2fef6da10dd70bcc8808f19e695528ede5345ccb861504` |
| 50 | `def` | [punitProd](../../../../GeneralTopology/EquivPublic.lean/declarations/punitprod.md) | 283 | `declaration-track:e356a306e5bd86b6044bac53df0fecbc93aa823517ba7371a393d7880e9ae28e` |
| 51 | `theorem` | [coe_punitProd](../../../../GeneralTopology/EquivPublic.lean/declarations/coe-punitprod.md) | 287 | `result-track:965dacf777909fa8077988a955a61f8c3c57523a598688d34e6053c3dc77ec87` |
| 52 | `def` | [piCongrLeft](../../../../GeneralTopology/EquivPublic.lean/declarations/picongrleft.md) | 293 | `declaration-track:7c66c02f6c3976b1374c5d3cd73100f22bbfdb90f7a0beba9e042e7c5b5a14a1` |
| 53 | `lemma` | [piCongrLeft_refl](../../../../GeneralTopology/EquivPublic.lean/declarations/picongrleft-refl.md) | 302 | `result-track:7a0d35386f1cd804bc31774af29905ef2aa274f1496d21efd4d4a159532eaf83` |
| 54 | `lemma` | [piCongrLeft_symm_apply](../../../../GeneralTopology/EquivPublic.lean/declarations/picongrleft-symm-apply.md) | 307 | `result-track:b7aa7bb9e0657238864ef86ef091bda1af76c5f6611a520268437be2f90bfe9e` |
| 55 | `lemma` | [piCongrLeft_apply_apply](../../../../GeneralTopology/EquivPublic.lean/declarations/picongrleft-apply-apply.md) | 312 | `result-track:b8cfcb2c7ed663d106fb77acd18a7ab86135be7b8b99e2d8df56ca158f869464` |
| 56 | `def` | [piCongrRight](../../../../GeneralTopology/EquivPublic.lean/declarations/picongrright.md) | 319 | `declaration-track:5def3a277b9aa0c34def1b83084fbaea09af9329298af2ea5cf97d7140386ce9` |
| 57 | `theorem` | [piCongrRight_symm](../../../../GeneralTopology/EquivPublic.lean/declarations/picongrright-symm.md) | 326 | `result-track:bfbb19af7fd7f006ac248758c2b4a98fa81d2a9f0bb9ac3d420f336ed23fd47b` |
| 58 | `theorem` | [piCongrRight_refl](../../../../GeneralTopology/EquivPublic.lean/declarations/picongrright-refl.md) | 332 | `result-track:7c247b149034cc96c39e2617d30b221990692a9bfe0b4729afa05c29ad7fe056` |
| 59 | `def` | [piCongr](../../../../GeneralTopology/EquivPublic.lean/declarations/picongr.md) | 340 | `declaration-track:f9a815969434c88cd5880bb877b2576ba0d85bd0f941699fec6e469af238fc36` |
| 60 | `def` | [ulift](../../../../GeneralTopology/EquivPublic.lean/declarations/ulift.md) | 346 | `declaration-track:13442b2e8cd4640f0ad7610526d9bc9904e23d40ab9f0da27ec05884e44c0aeb` |
| 61 | `def` | [_root_.MulOpposite.opUniformEquiv](../../../../GeneralTopology/EquivPublic.lean/declarations/root-mulopposite-opuniformequiv.md) | 358 | `declaration-track:cf5c0eaf36f5dabf003a8a7c518fa33c5ebc1dd6f784a8eabdeb7e2c1b520e50` |
| 62 | `theorem` | [_root_.completeSpace_mulOpposite_iff](../../../../GeneralTopology/EquivPublic.lean/declarations/root-completespace-mulopposite-iff.md) | 365 | `result-track:e51d2fe2d3b2a5d7f7ff74f35bd52a7f154313aaa93ef6acaf22d9f213437406` |
| 63 | `instance` | [_root_.CompleteSpace.mulOpposite](../../../../GeneralTopology/EquivPublic.lean/declarations/root-completespace-mulopposite.md) | 369 | `declaration-track:aeb39556e8b5e3c9cbf0a380a76077d823baf08915b6f6e5840163e32b0c24a6` |
| 64 | `def` | [funUnique](../../../../GeneralTopology/EquivPublic.lean/declarations/fununique.md) | 376 | `declaration-track:647160ecb141ae16b7ee5c29dbff3aa19856d06885a98fd326490050cd50834b` |
| 65 | `def` | [piFinTwo](../../../../GeneralTopology/EquivPublic.lean/declarations/pifintwo.md) | 383 | `declaration-track:1e44a9391f004f6ed803a8d3308ba1a05a9a849d02d4165cf520be5d9ce88905` |
| 66 | `def` | [finTwoArrow](../../../../GeneralTopology/EquivPublic.lean/declarations/fintwoarrow.md) | 391 | `declaration-track:fd65b3811b1f4a60bb29483551356d32ba1e62b2cf8b6f0274905dac43dd2305` |
| 67 | `def` | [image](../../../../GeneralTopology/EquivPublic.lean/declarations/image.md) | 396 | `declaration-track:cc2e8e60754150e0be85f1cf45a417b7066bd4d12271aed8fe709a93aea2f3cc` |
| 68 | `def` | [subtype](../../../../GeneralTopology/EquivPublic.lean/declarations/subtype.md) | 405 | `declaration-track:93d19c5727e0d4a3901bc66e82b8274882af72c8f8fa880b7b955f21a22f216b` |
| 69 | `def` | [Equiv.toUniformEquivOfIsUniformInducing](../../../../GeneralTopology/EquivPublic.lean/declarations/equiv-touniformequivofisuniforminducing.md) | 416 | `declaration-track:505d84f97426cff52758d0e9f9e10692caf922994599588934123ccd424693f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9654306fc7161a921e28a87a3c63a8c31414fbf8a128c36f9f9b433f082086a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
