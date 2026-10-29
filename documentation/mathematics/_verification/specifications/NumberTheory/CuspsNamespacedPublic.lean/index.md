# Verification target: Cusps Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5de653fffd1339d1e2644f04610ee86c9029b9c0",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Cusps/Variant5390e7f52e6398f372dd88498a10ceebfa41d2517eaf807459e91cdcd4832304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/CuspsNamespacedPublic.lean/index.md) · [Full source](../../../../NumberTheory/CuspsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5de653fffd1339d1e2644f04610ee86c9029b9c0`.

Source path: `GRWTSK/Algebra/GroupTheory/Cusps/Variant5390e7f52e6398f372dd88498a10ceebfa41d2517eaf807459e91cdcd4832304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Cusps/Variant5390e7f52e6398f372dd88498a10ceebfa41d2517eaf807459e91cdcd4832304.lean.json)

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
| 1 | `lemma` | [exists_mem_SL2](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/exists-mem-sl2.md) | 41 | `result-track:3cb3a8c97851f68df3b65bea60bc870d69add64067a388ab30252bf25ebbcc6b` |
| 2 | `lemma` | [isParabolic_iff_of_upperTriangular](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/isparabolic-iff-of-uppertriangular.md) | 57 | `result-track:a8e244c9f27577f5f408c0e652e182240653a445b710ca1567169948ed84d016` |
| 3 | `def` | [IsCusp](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp.md) | 66 | `declaration-track:86cdd91a01de11d9a8df9455e84bfd924f07ded2db46398809682a86a93b2147` |
| 4 | `lemma` | [IsCusp.smul](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp-smul.md) | 70 | `result-track:2fab1fc35ed9756b4ad834eda8633929d4ba0dc7bb456c7dd51bb892c7f88a0f` |
| 5 | `lemma` | [IsCusp.smul_of_mem](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp-smul-of-mem.md) | 77 | `result-track:eb78389db05df4bd690aa73bfbc062b8a6c053df1e032d9816a161b567bbd79f` |
| 6 | `lemma` | [isCusp_iff_of_relIndex_ne_zero](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp-iff-of-relindex-ne-zero.md) | 85 | `result-track:1716c3403a5c3a73dec01eb7d5a01540d519890ad0a9ce801397c767b6029779` |
| 7 | `lemma` | [Subgroup.Commensurable.isCusp_iff](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/subgroup-commensurable-iscusp-iff.md) | 94 | `result-track:c24610f8e51868bdfad77039444a90985d66c4b99262119d484f4e310c3d3ba6` |
| 8 | `lemma` | [IsCusp.mono](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp-mono.md) | 101 | `result-track:260947fe27c75bd8feda5b84db2bb755ece7aab1702b09f4453e2ade04d4086e` |
| 9 | `lemma` | [IsCusp.of_isFiniteRelIndex](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp-of-isfiniterelindex.md) | 105 | `result-track:62ed7ccf0a202cde12b8648cfb1d8ac94f608ca68e462897a8f42b3d5ab0fbaf` |
| 10 | `lemma` | [IsCusp.of_isFiniteRelIndex_conj](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp-of-isfiniterelindex-conj.md) | 114 | `result-track:cd8e47bc7aa8f8793998366f579a19737921f47dd8fc85b1bcfef6f08c30997e` |
| 11 | `lemma` | [isCusp_SL2Z_iff](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp-sl2z-iff.md) | 124 | `result-track:1501c0af841323c16ed5bf47a952115b34560430427d27429917a616c681e4d4` |
| 12 | `lemma` | [isCusp_SL2Z_iff'](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp-sl2z-iff-source-edition-2.md) | 140 | `result-track:7faca32af2898f0b1efea844a613f4502d1f86be438b5144b8b188eaf112c133` |
| 13 | `lemma` | [Subgroup.IsArithmetic.isCusp_iff_isCusp_SL2Z](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/subgroup-isarithmetic-iscusp-iff-iscusp-sl2z.md) | 154 | `result-track:7b930852df7fff43fdcf57200a89a21bc3f6f8f7d0dcebf521b7f0e76431fa66` |
| 14 | `def` | [cuspsSubMulAction](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/cuspssubmulaction.md) | 169 | `declaration-track:935bfb5981eaee52d39a3ae3073ad64c796f9cf1dc036721dcecf0af59f71f3a` |
| 15 | `abbrev` | [CuspOrbits](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/cusporbits.md) | 175 | `declaration-track:7562f6274f7d4604e0dbb8034a89611c612a15f85123ffb8631ffe1bda5ba8c5` |
| 16 | `def` | [cosetToCuspOrbit](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/cosettocusporbit.md) | 180 | `declaration-track:063d4e1d8abf78811a50a2c290bc9d1953c1e957de136c35c7a70430666780b1` |
| 17 | `lemma` | [cosetToCuspOrbit_apply_mk](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/cosettocusporbit-apply-mk.md) | 193 | `result-track:bbddc3789f19c208bd2ad01581171ab6a98e613c0bf642202f7a17a91857ee23` |
| 18 | `lemma` | [surjective_cosetToCuspOrbit](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/surjective-cosettocusporbit.md) | 200 | `result-track:f1fb9570d7bdbcc33d716ae5f88b9f15cdc04275b4e55eb566af2e0a12e55faf` |
| 19 | `instance` | [(anonymous)](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/instance.md) | 209 | `declaration-track:1992e81d935df4f01bc919369991a9f87186e1f22d82b82d731e8a021de1ef2e` |
| 20 | `def` | [strictPeriods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictperiods.md) | 232 | `declaration-track:71a8f0019b1f229e08535c49e53cf1a2cbb9f03ad14dd8aac3591109b281b885` |
| 21 | `lemma` | [mem_strictPeriods_iff](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/mem-strictperiods-iff.md) | 236 | `result-track:d50c97e22a01dcb5ace0b75ef079a75afcad047840fc0b26c4fe050716544e14` |
| 22 | `def` | [periods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/periods.md) | 242 | `declaration-track:cf935b188a4e37527e1cbf15355df875791aeaa3d4c4235d01a71cd3b6556a9f` |
| 23 | `lemma` | [strictPeriods_le_periods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictperiods-le-periods.md) | 245 | `result-track:94400d20e4d900d26d9d051f32299c291698e4d67ea288d7a27a95f1ae5e9e2b` |
| 24 | `def` | [IsRegularAtInfty](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/isregularatinfty.md) | 251 | `declaration-track:ae49b080466cd8a6d8646e044b289254e882df5b632b0251f16cf99f91231e40` |
| 25 | `lemma` | [IsRegularAtInfty.eq](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/isregularatinfty-eq.md) | 254 | `result-track:0cfe529e8d217fba2f51659c8d3062403ca1d4724b3a088657f2a2da115b1d5a` |
| 26 | `lemma` | [relIndex_strictPeriods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/relindex-strictperiods.md) | 256 | `result-track:ca0688c762e9df95d2eac08ccfe346548ded293efbab7aec2534e19b4e4ceb71` |
| 27 | `lemma` | [commensurable_strictPeriods_periods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/commensurable-strictperiods-periods.md) | 270 | `result-track:1efcf7908b568c56e3f0f6496f660bfa3bdb4f9f1217882c04fe9a498236e105` |
| 28 | `lemma` | [strictPeriods_eq_periods_of_neg_one_mem](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictperiods-eq-periods-of-neg-one-mem.md) | 279 | `result-track:b1d9701742119fa10274de56a0cc68d070bf5cd982a7cd4dc2fe1cd9990d3923` |
| 29 | `lemma` | [isRegularAtInfty_of_neg_one_mem](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/isregularatinfty-of-neg-one-mem.md) | 283 | `result-track:f18a878c1ddc2224e527f364825bfe6146618b72a3c4c332bf7418192a04e6a9` |
| 30 | `instance` | [instDiscreteTopStrictPeriods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/instdiscretetopstrictperiods.md) | 289 | `declaration-track:7ced90b0c699fae0e3e3e345f9494a8d05f13427ed6abd64b975f25778ecb2c5` |
| 31 | `instance` | [instDiscreteTopPeriods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/instdiscretetopperiods.md) | 299 | `declaration-track:3cd8f8c2a1b0407e83346d74aef36a588aebf1cc7145ef4af22ac674ee874d6e` |
| 32 | `lemma` | [strictPeriods_eq_zmultiples_one_of_T_mem](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictperiods-eq-zmultiples-one-of-t-mem.md) | 305 | `result-track:a16b0b82247cdbb6772f810bea2c88595406c0a04c7e4a2625788299ce3b21e4` |
| 33 | `lemma` | [strictPeriods_SL2Z](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictperiods-sl2z.md) | 316 | `result-track:fd489aa9f882ba61ebb196354fae8819ebad27d86f0d4f6b924220507adfb19f` |
| 34 | `def` | [strictWidthInfty](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty.md) | 326 | `declaration-track:b0a047162745405ac4ced977eaf66cce9db3016b232fb455aa319a4da7a8cb59` |
| 35 | `lemma` | [strictWidthInfty_nonneg](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty-nonneg.md) | 332 | `result-track:5b99c6e8b0598c5b6b3e3cd59b8043ea09f652e4dd69d811190b25f21d2df739` |
| 36 | `def` | [widthInfty](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/widthinfty.md) | 337 | `declaration-track:ee3a7d7e60691b6fe539452b40cee1718dc014a3361ef7d75ae50fe8aac0c0d2` |
| 37 | `lemma` | [widthInfty_nonneg](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/widthinfty-nonneg.md) | 339 | `result-track:108b21c1dd9d35cb58cb0ab40f4ec8b1feeb75b5eeca0bd5c7be7ae6a1b9d9cc` |
| 38 | `lemma` | [strictPeriods_eq_zmultiples_strictWidthInfty](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictperiods-eq-zmultiples-strictwidthinfty.md) | 342 | `result-track:e45cf2b158049b27038f45e3206afe490244e2c3e34d20b9f1f4ae2dd090239d` |
| 39 | `lemma` | [strictWidthInfty_eq_one_of_T_mem](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty-eq-one-of-t-mem.md) | 348 | `result-track:0643b69c02da69a6791ce6a14058c2a87ed7f99008e3cc32301309536c331334` |
| 40 | `lemma` | [strictWidthInfty_SL2Z](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty-sl2z.md) | 360 | `result-track:fdb05996e3f5ca4a71e78214f1a4b5858ba51d41684f941517f9970809c6c84e` |
| 41 | `lemma` | [strictWidthInfty_mem_strictPeriods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty-mem-strictperiods.md) | 363 | `result-track:2ab88d9ebad591f0e79423700e7d9f12fcbc31c1f12d8b95e3174952266595c7` |
| 42 | `lemma` | [periods_eq_zmultiples_widthInfty](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/periods-eq-zmultiples-widthinfty.md) | 369 | `result-track:21fa964b1db176178ce578950b17f6c08ee0d70080ed8b271485884986fc125b` |
| 43 | `lemma` | [widthInfty_mem_periods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/widthinfty-mem-periods.md) | 374 | `result-track:86a8d8128ab78a2b0b6504fbdfee0e0bb8f8e223d05fd0ae9ae6c46ecedb8559` |
| 44 | `lemma` | [two_mul_widthInfty_mem_strictPeriods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/two-mul-widthinfty-mem-strictperiods.md) | 377 | `result-track:a50409e74f407478bfcaa484462277dea92ce3d7d4ed39e9fa9394693605141c` |
| 45 | `lemma` | [strictWidthInfty_pos_iff](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty-pos-iff.md) | 384 | `result-track:647685017d78ea72031ebd270fc726a2c3be9be2826d8ac78563a30e85997b2f` |
| 46 | `lemma` | [strictWidthInfty_pos](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty-pos.md) | 407 | `result-track:8df31d0cf59298991b39c60f7f724961825b94fb44a55f951b4fd639c1a8c3ac` |
| 47 | `lemma` | [isCusp_of_mem_strictPeriods](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/iscusp-of-mem-strictperiods.md) | 413 | `result-track:c21436d39bd0c45aaca14983042cd761bfd4596f09ff0c35482662bcbea858d0` |
| 48 | `lemma` | [widthInfty_pos_iff](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/widthinfty-pos-iff.md) | 419 | `result-track:5f9d0085e02f573551eefba9687f122a31b5ba21a072782711f2e838bf60ecb7` |
| 49 | `lemma` | [isRegularAtInfty_iff](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/isregularatinfty-iff.md) | 425 | `result-track:7e42d5a8e7a8c90cfd41974206872f702a80808970db702537261c66f4064916` |
| 50 | `lemma` | [widthInfty_pos](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/widthinfty-pos.md) | 431 | `result-track:4a1dae55a0869d1dacfdbebd3cefbb128d53db26279dfc1838a8e4dfeba95bed` |
| 51 | `lemma` | [strictPeriods_Gamma0](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictperiods-gamma0.md) | 443 | `result-track:a18cd97ad2e60c9955cdffaa38de66a74182ab6f4de94d68914a5cf37401c869` |
| 52 | `lemma` | [strictPeriods_Gamma1](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictperiods-gamma1.md) | 448 | `result-track:7006d57f56d0810cec623d45dd2d895bd0d8226b8c1a93a5fc115eca945f7ac2` |
| 53 | `lemma` | [strictWidthInfty_Gamma0](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty-gamma0.md) | 453 | `result-track:6f419c498bba8f91271907865ebc829a65ab3012902336da591afc9d06006f16` |
| 54 | `lemma` | [strictWidthInfty_Gamma1](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty-gamma1.md) | 458 | `result-track:7851b055479e5fbc7d238a7f86a6d6f90f9fbae9683d2d444bbacf1156782f2b` |
| 55 | `lemma` | [strictPeriods_Gamma](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictperiods-gamma.md) | 462 | `result-track:20d8368ad80b961c982600ed5176deff8f03f3ffe4f6ea495a77801957650913` |
| 56 | `lemma` | [strictWidthInfty_Gamma](../../../../NumberTheory/CuspsNamespacedPublic.lean/declarations/strictwidthinfty-gamma.md) | 478 | `result-track:4261368c03e08c97f681a41fcbd8f89743c5f4fefd1b0fffa3c6dca7b5fab983` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=244e06cca61248beb747f07fde6e1a2f70ff1254c94044127546995ece3c2dde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Cusps/Variant5390e7f52e6398f372dd88498a10ceebfa41d2517eaf807459e91cdcd4832304.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Cusps/Variant5390e7f52e6398f372dd88498a10ceebfa41d2517eaf807459e91cdcd4832304.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
