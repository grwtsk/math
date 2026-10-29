# Verification target: Group End Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3d1b12fa35712ad7dd91cc1b167096e985e60da",
  "lexical_observation_count": 136,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3d1b12fa35712ad7dd91cc1b167096e985e60da`.

Source path: `GRWTSK/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean.json)

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
| 1 | `def` | [Function.End](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/function-end.md) | 48 | `declaration-track:28628a1bcb29259e4d4f88a02deb609a8cb0ffdabefddf7b25fed0676f4ff161` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/instance-source-edition-4.md) | 50 | `declaration-track:8153d44d1e2c9fd3c3b534d1f4867afdec6ce90a6bb6e5c8f85d2b356b226fb1` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/instance-source-edition-3.md) | 59 | `declaration-track:6501ecb34f0ace3134cd80e5a596b4d7440006de449faf3c0f774681bb1e3a35` |
| 4 | `instance` | [instOne](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/instone.md) | 67 | `declaration-track:13acc94c48138892cbde097c6eef500600f4835a683023bd4055b9f4c7f08743` |
| 5 | `instance` | [instMul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/instmul.md) | 68 | `declaration-track:f99f8b6841e5937b1ce596feacb710f5860e8bd0f24a22e264e55c5164b4cd06` |
| 6 | `instance` | [instInv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/instinv.md) | 69 | `declaration-track:09d7199158ffa60d106278eec0adf8975e3aaf93e5bb0d6c4a58dce139227086` |
| 7 | `instance` | [instPowNat](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/instpownat.md) | 70 | `declaration-track:6e3f76548fdf0bde5979599488b9f567507faa5c8f9f0dadba0a35cd9d6c467c` |
| 8 | `instance` | [permGroup](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/permgroup.md) | 73 | `declaration-track:de458d4a38b0b2ebf670dcb04c4ec4556fb5158f180f35d393bc263344bbafa2` |
| 9 | `theorem` | [default_eq](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/default-eq.md) | 84 | `result-track:32cb2f56a954a74b5128ead8ec6e61e3b3f17a277535171d8f4bb9197bf62209` |
| 10 | `def` | [equivUnitsEnd](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/equivunitsend.md) | 90 | `declaration-track:d30fe7c89cc2747fadb073f7f0994464d29775fa62cf2c94fe09e4429fd5e814` |
| 11 | `def` | [_root_.MonoidHom.toHomPerm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/root-monoidhom-tohomperm.md) | 99 | `declaration-track:a2b2ddd09ae66605f95d242476b67a6eb6381d6d6f08bd04e91fbc5e85ac1595` |
| 12 | `theorem` | [mul_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-apply.md) | 102 | `result-track:2ca5d5148174ce5b776ef3586037c2a8c0d0b02963bb44d5fae3d82a6a167e5b` |
| 13 | `theorem` | [one_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/one-apply.md) | 105 | `result-track:64b5cd8ad58a4d329107672413c941046de74f1cab55b21894e8f868b51f9b8c` |
| 14 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/one-def.md) | 109 | `result-track:0a084726bacff678c2adfb15dc6e59eb07393bfa15d9fd8f025af4bb065e2892` |
| 15 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-def-source-edition-2.md) | 113 | `result-track:f36b6dce7eb322b2073f0f0403b6dd1dfde2e177c27d745625fc05dae09752e0` |
| 16 | `theorem` | [inv_def](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-def.md) | 117 | `result-track:a49075f6ef2a68495c39148fdae7b5a552ab18555e1d5fc3f9ca31a366e0dd51` |
| 17 | `lemma` | [coe_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/coe-inv-source-edition-2.md) | 120 | `result-track:cb04fc06da0fc9fc23758a9d1764f1dd8931ff6dc92d9a65623515d2b8a695d6` |
| 18 | `lemma` | [coe_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/coe-one.md) | 122 | `result-track:0dcf7a2b0b474196e19b38c37f108de05b0860ee0f966e9a982c6667f39735c0` |
| 19 | `lemma` | [coe_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/coe-mul.md) | 124 | `result-track:2444ad7b8d9de38bf9df6de30cfbacae646dc86de05212891ccc9adebc1d357f` |
| 20 | `lemma` | [coe_pow](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/coe-pow.md) | 126 | `result-track:6741bba1a4d454853fd99ec9967ddd09959ff0c35a2b6e6a67c3e5764d56ea2f` |
| 21 | `lemma` | [iterate_eq_pow](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/iterate-eq-pow.md) | 129 | `result-track:0591f4fdb126c69c86d5e0d5d66ff48d92868879fee0d32eae440d10cf9785e1` |
| 22 | `theorem` | [eq_inv_iff_eq](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/eq-inv-iff-eq.md) | 131 | `result-track:89e634ebb3c3252ad511c46f1c5e6758b18035d6ec305383e7f4385292d99620` |
| 23 | `theorem` | [inv_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-eq-iff-eq.md) | 134 | `result-track:ac42ff5abada1c3f6efde273ab25cbd34e820603fd06fe7d383acb83c9daa800` |
| 24 | `theorem` | [zpow_apply_comm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/zpow-apply-comm.md) | 137 | `result-track:69635b598e1f7ba43ae956f5f827b7d5b8a046c0e4f5a03139c2f256511caa18` |
| 25 | `theorem` | [trans_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/trans-one.md) | 147 | `result-track:22454912eee16aca3b24d17a267a4ef44ff7aaf983fa3e70d2f949e657751673` |
| 26 | `theorem` | [mul_refl](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-refl.md) | 151 | `result-track:3b0e5e52571a07a94df148d8436b65bd2a3bfb157fb09f6670a6fae501a1c19a` |
| 27 | `theorem` | [one_symm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/one-symm.md) | 155 | `result-track:860f1a23ba00e38dc7e0243828c7f349a87524a34a90b22762243446812c98bb` |
| 28 | `theorem` | [refl_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/refl-inv.md) | 159 | `result-track:4dc15aa0c9a007b15ae0c6dd87d48eb3d2af671edbd4b41643fe6596117e9efe` |
| 29 | `theorem` | [one_trans](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/one-trans.md) | 163 | `result-track:53a50a7984a9c38f9adbd3f1952dce7b15d1526a59389fdf9b547a003b4d3c11` |
| 30 | `theorem` | [refl_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/refl-mul.md) | 167 | `result-track:eed138eb4480ca9d738ad025db10f29cfa0d2fb4c246f495687e7e0b8cccd52e` |
| 31 | `theorem` | [inv_trans_self](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-trans-self.md) | 171 | `result-track:48b97766bc15366ab4b00066e29f55f87d6e132663d213780bcca1333c62b12f` |
| 32 | `theorem` | [mul_symm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-symm.md) | 175 | `result-track:65944c06a77a4739c17320fb830ca2d12270e3e052fc0d61257aae9d9c8e460f` |
| 33 | `theorem` | [self_trans_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/self-trans-inv.md) | 179 | `result-track:b13ababb8b29eedaed847abfeeb0fa0d46fb8b437123fdab35db46275a5b30af` |
| 34 | `theorem` | [symm_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/symm-mul.md) | 183 | `result-track:4d2f87a92c4c01a2d3d172ed95abacc69fc45586ece90857ed0f3d402e86dd85` |
| 35 | `theorem` | [sumCongr_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sumcongr-mul.md) | 190 | `result-track:97d27e0201c43ee2d919ea85c72c186fd911ab22252447626f6a9460fca1d307` |
| 36 | `theorem` | [sumCongr_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sumcongr-inv.md) | 195 | `result-track:6c6cdd5d9bdd0d550a20b1ea62bad638be5bb2e20398daec66edc0eb6268cb53` |
| 37 | `theorem` | [sumCongr_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sumcongr-one.md) | 200 | `result-track:d910206cdb36a75d0674249cb79b8b818fb5873c2c8c81fcb8c4790d5697698a` |
| 38 | `def` | [sumCongrHom](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sumcongrhom.md) | 208 | `declaration-track:f6de012693f49d6062cd3db32a59783caecac333f75a7d594c0b25a43bc81eb6` |
| 39 | `theorem` | [sumCongrHom_injective](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sumcongrhom-injective.md) | 213 | `result-track:b2c2b86e88533c5d80d54f2399346313bd99808f0027f0fb6e3737c5be674d92` |
| 40 | `theorem` | [sumCongr_swap_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sumcongr-swap-one.md) | 221 | `result-track:fadeead2517ccd7a8030512281027d4036909862f49f61e76a6e8f019f1c57b5` |
| 41 | `theorem` | [sumCongr_one_swap](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sumcongr-one-swap.md) | 226 | `result-track:67cc0c98501fd016b4a440d6d1cdaa1cdb0115a8ee65601867df6365d797949b` |
| 42 | `theorem` | [sigmaCongrRight_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sigmacongrright-mul.md) | 234 | `result-track:6645fb93e3c6f9da2ba1799fad0f49062d20c5235e0b46272f8de0d053daee72` |
| 43 | `theorem` | [sigmaCongrRight_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sigmacongrright-inv.md) | 239 | `result-track:8c0fba35a357a0ac359523cb4d16cf3bf4142c9cdaef912cefdeb818df12388c` |
| 44 | `theorem` | [sigmaCongrRight_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sigmacongrright-one.md) | 244 | `result-track:cdee5484767d625ae7ccf19461c7e25c8346bc2570b1f1e0346b39b1773d9ad5` |
| 45 | `def` | [sigmaCongrRightHom](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sigmacongrrighthom.md) | 253 | `declaration-track:de6573b91ddfe67cf29892bc2c4a32dfaa1a2554d145b168f06d8f3c095b1aaa` |
| 46 | `theorem` | [sigmaCongrRightHom_injective](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/sigmacongrrighthom-injective.md) | 258 | `result-track:c02639aa74b1b6ca91e97f08f2f21a71a7f8d414f17c16146efa4de3f1e3c29b` |
| 47 | `def` | [subtypeCongrHom](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypecongrhom.md) | 266 | `declaration-track:7508caa6cd9e75f7c311a90e175b02affebccf1a54babe42ef52fba98fc6f193` |
| 48 | `theorem` | [subtypeCongrHom_injective](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypecongrhom-injective.md) | 272 | `result-track:8aceabe9999a0ce0ad362a5a76f14982403087760a20193d758ae7e0018607ce` |
| 49 | `theorem` | [_root_.Equiv.permCongr_eq_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/root-equiv-permcongr-eq-mul.md) | 281 | `result-track:2267a40c790ac18d4fca4042255bf399b2926716a92f574c4ac4a2c9176fcc4b` |
| 50 | `lemma` | [_root_.Equiv.permCongr_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/root-equiv-permcongr-mul.md) | 285 | `result-track:a76e59d91de82f7b665c16a4168330811aba95ce9c3f776b310971ce41474915` |
| 51 | `def` | [_root_.Equiv.permCongrHom](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/root-equiv-permcongrhom.md) | 289 | `declaration-track:163f19a644015eb75fae08b06b74c5b03040a31ddc3af119362000705815b224` |
| 52 | `theorem` | [_root_.Equiv.permCongrHom_symm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/root-equiv-permcongrhom-symm.md) | 297 | `result-track:cec4bb4fb41e40025d84c0e9438d9dfee6874aa6a2233391fa0a93ea692a3840` |
| 53 | `theorem` | [_root_.Equiv.permCongrHom_trans](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/root-equiv-permcongrhom-trans.md) | 302 | `result-track:3eb7dc270cf4adbe44159e0ad15c1a22f778dce55f2997ccf53dc5608ba9043a` |
| 54 | `lemma` | [_root_.Equiv.permCongrHom_coe_equiv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/root-equiv-permcongrhom-coe-equiv.md) | 307 | `result-track:2346f8baf856c245ea66a426a494428e59f080bd8e161db2304c13e6a6d7f84a` |
| 55 | `lemma` | [_root_.Equiv.permCongrHom_coe](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/root-equiv-permcongrhom-coe.md) | 312 | `result-track:83d9993e9d43af3562b9d433f26da154141086f148fbbf911cae81ca32eb7b45` |
| 56 | `theorem` | [extendDomain_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/extenddomain-one.md) | 323 | `result-track:4cf02a3c36f874b05bfc0c2f2eddadfad5dbdfb245665292a1d8feab9114a57c` |
| 57 | `theorem` | [extendDomain_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/extenddomain-inv.md) | 327 | `result-track:114f4fcda1aa5c115e582330a8ca3b4f31af2ee3bdad399a88821144e681a114` |
| 58 | `theorem` | [extendDomain_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/extenddomain-mul.md) | 331 | `result-track:e0931c70826707784cc0c43e472ce816c94a8a3aef8c6fd688366716ec584a7c` |
| 59 | `def` | [extendDomainHom](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/extenddomainhom.md) | 337 | `declaration-track:0ab54c1f7a7dc09836b0e77142a0788ee1ad6cda04d95cf8edd4b78f4ffd56ae` |
| 60 | `theorem` | [extendDomainHom_injective](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/extenddomainhom-injective.md) | 342 | `result-track:a20fef9608d242a502250e4ced2ec808ae28a51ecabc6c6ff19ba78e38591efe` |
| 61 | `theorem` | [extendDomain_eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/extenddomain-eq-one-iff.md) | 348 | `result-track:7f94d6afec2194dca78fc85eb61ced0e747b53a60a00625226f516ad4f6da72e` |
| 62 | `lemma` | [extendDomain_pow](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/extenddomain-pow.md) | 352 | `result-track:8893e341a531ad3f5aa5e44a87f7057d0545a2b8b9f1bc2ce0faded8d47cd860` |
| 63 | `lemma` | [extendDomain_zpow](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/extenddomain-zpow.md) | 356 | `result-track:379089c8aaaaddd7d55b6c7ba39ef314da70b47aaf3e696f17494edcd204bdbd` |
| 64 | `def` | [subtypePerm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeperm.md) | 367 | `declaration-track:b119789930524dcc49b45ed5efb7d7e82e9e377e9c33ef92e119710c36234062` |
| 65 | `theorem` | [subtypePerm_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeperm-apply.md) | 374 | `result-track:7049eafd2f82edaac3d229c2bdac738ee66f9900612bb25ef2affca367ed49fa` |
| 66 | `theorem` | [subtypePerm_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeperm-one.md) | 379 | `result-track:9d250f733afd5871123df3961c8ce8ce4cb864edd02a1fbe7136ba5f1ea2b3e4` |
| 67 | `theorem` | [subtypePerm_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeperm-mul.md) | 383 | `result-track:4ba2ef264a08a55e20816fc8f74b068ac526093b72c5bfc910bd467faff74600` |
| 68 | `theorem` | [inv_aux](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-aux.md) | 389 | `result-track:e0e8c8f8aecdff6d99345ba9f9a0ebccbaa4990e1621f0e1fb957e5c315b4077` |
| 69 | `theorem` | [subtypePerm_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeperm-inv.md) | 395 | `result-track:5c3ba91dc09706177d8eae53e5c4a85f6a8df3a449a13677cc696dc2443bb798` |
| 70 | `theorem` | [inv_subtypePerm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-subtypeperm.md) | 403 | `result-track:845adde81bfa3781463c1a74e4d29eaa7214a85dce2b73901e2fb8835670fc70` |
| 71 | `theorem` | [pow_aux](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/pow-aux.md) | 408 | `result-track:fbbac55438c2b1d0006c07387da5f38525035acbbc1f69c831d98f654aa2ea5d` |
| 72 | `theorem` | [subtypePerm_pow](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeperm-pow.md) | 416 | `result-track:12f87b9341bb4f8a0908a5f6e61157c8b2ddd5f416d13ae6bb00a9e955af8c28` |
| 73 | `theorem` | [zpow_aux](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/zpow-aux.md) | 423 | `result-track:378139fa29a759544fccd9ec337bee62da4b12d71d3bfd869595a310765141c3` |
| 74 | `theorem` | [subtypePerm_zpow](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeperm-zpow.md) | 432 | `result-track:43b60e9aa7091fac2900f2a4a7b5bd89bb402645b1939dee1aa971f3a4b4ae49` |
| 75 | `def` | [ofSubtype](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/ofsubtype.md) | 442 | `declaration-track:6c68d7faa7ce72636902d7e81866decc1986f58e87388800758ca727adb3933d` |
| 76 | `theorem` | [ofSubtype_subtypePerm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/ofsubtype-subtypeperm.md) | 447 | `result-track:5cf2fee872740c0ea55f7d7dbfbafcc2389a66c633291d882e049ae2240a68da` |
| 77 | `theorem` | [ofSubtype_apply_of_mem](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/ofsubtype-apply-of-mem.md) | 456 | `result-track:73f531005b24fa298e3c72016bd711cb774513c5fe8227a3bb01081d9973958a` |
| 78 | `theorem` | [ofSubtype_apply_coe](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/ofsubtype-apply-coe.md) | 460 | `result-track:25a3d9ef61042560a1ec771344ab903738c6186131623c4fcac02ad1b0924358` |
| 79 | `theorem` | [ofSubtype_apply_of_not_mem](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/ofsubtype-apply-of-not-mem.md) | 463 | `result-track:8d7ea7be2a89c2b758fba46feffcc08f8324b607dc67e0ca3c1dcd911b0b2bfa` |
| 80 | `theorem` | [ofSubtype_apply_mem_iff_mem](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/ofsubtype-apply-mem-iff-mem.md) | 466 | `result-track:5941e566be0059239d51422b6a360939b9271ca04f7e7fd16efd1a13903a1264` |
| 81 | `theorem` | [ofSubtype_injective](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/ofsubtype-injective.md) | 473 | `result-track:ef3e9c0bf0afbe9da4458ee5b1fcd080ccc4fa5d3a29e9d88377ca3d9dc2eb7e` |
| 82 | `theorem` | [subtypePerm_ofSubtype](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeperm-ofsubtype.md) | 481 | `result-track:77fd5579d5d6e10dd97f911e24d679b28a4c619b2af54bdc7382c249d0a7eb3b` |
| 83 | `theorem` | [ofSubtype_subtypePerm_of_mem](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/ofsubtype-subtypeperm-of-mem.md) | 485 | `result-track:7081c8ce0f8e2b12df4766ca713ae0cd4d8b2b8f398728fbe488927f9c372e80` |
| 84 | `theorem` | [ofSubtype_subtypePerm_of_not_mem](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/ofsubtype-subtypeperm-of-not-mem.md) | 490 | `result-track:fc497f97329075fcd455407a8640f808f42a83274101f10e50998443933d9b8c` |
| 85 | `def` | [subtypeEquivSubtypePerm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeequivsubtypeperm.md) | 498 | `declaration-track:d3a3d05ab91083ea61b45647f6509a96a6fa4de2b637d624d16b302c000632f4` |
| 86 | `theorem` | [subtypeEquivSubtypePerm_apply_of_mem](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeequivsubtypeperm-apply-of-mem.md) | 509 | `result-track:0c8f2a2c421e6ee140994f621142a8538c5fb46e0ee570e3942c6021759c2d73` |
| 87 | `theorem` | [subtypeEquivSubtypePerm_apply_of_not_mem](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/subtypeequivsubtypeperm-apply-of-not-mem.md) | 513 | `result-track:2cf714c58a263dd455282dd2e9ffbb0b42651d8f7f5961486f53c870415a93ad` |
| 88 | `theorem` | [swap_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/swap-inv.md) | 526 | `result-track:714a20d9991a3c0d40dfe1f1c78546d2993aedaf2b7af5777b73c7a0e64d729a` |
| 89 | `theorem` | [swap_mul_self](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/swap-mul-self.md) | 530 | `result-track:a726e838811e40339d975979909187caf9ead915dae126aae7f0bee5c37cada5` |
| 90 | `theorem` | [swap_mul_eq_mul_swap](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/swap-mul-eq-mul-swap.md) | 533 | `result-track:ad9542e142cb3ab04ec5f41cae95d6b53b89f4c0e1d44e2da8a426b21179d375` |
| 91 | `theorem` | [mul_swap_eq_swap_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-swap-eq-swap-mul.md) | 537 | `result-track:cd3e61db9befa81c8d2a01efd778852c25261276a2e20a9440916394c2243885` |
| 92 | `theorem` | [swap_apply_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/swap-apply-apply.md) | 540 | `result-track:f36d2ba07ed86ae8f5e2f90c1ca765f3cf620092a30373956dc6295ad5080318` |
| 93 | `theorem` | [swap_mul_self_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/swap-mul-self-mul.md) | 548 | `result-track:ebbbe4827bc29254414f8bcbb4f2f6e30b7c6ceef73c4c1ed2ba1ad21638e904` |
| 94 | `theorem` | [mul_swap_mul_self](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-swap-mul-self.md) | 556 | `result-track:d54fc6560d22d1dd4a5d750d1fc599d50d7af51e80e793adbf5d27c2ba636d00` |
| 95 | `theorem` | [swap_mul_involutive](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/swap-mul-involutive.md) | 561 | `result-track:4a5b483ef961e588e21c7305a1b3dda71acf2adfbac2007ec35d8c26226f8896` |
| 96 | `theorem` | [mul_swap_involutive](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-swap-involutive.md) | 566 | `result-track:dd2f8af54a31f2650125e1891f9715cc1e90bc261be066c852a4c9d393292864` |
| 97 | `theorem` | [swap_eq_one_iff](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/swap-eq-one-iff.md) | 570 | `result-track:38f1cb2ac0edc3f363004e6fccf6fd9deafce1659a0c752a657174c4d18072ea` |
| 98 | `theorem` | [swap_mul_eq_iff](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/swap-mul-eq-iff.md) | 573 | `result-track:29d24192b4d8114d6542e2a7392422bb5dd13b40664296fa6e65175cad14998b` |
| 99 | `theorem` | [mul_swap_eq_iff](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-swap-eq-iff.md) | 576 | `result-track:d37fe5dec70be3231319fb902515cbd5e25d1f2a5b6a774415edf076a8ffd618` |
| 100 | `theorem` | [swap_mul_swap_mul_swap](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/swap-mul-swap-mul-swap.md) | 579 | `result-track:e4b92090aa8a1b7f6c53985dca5de6f1a3351cec9010e308ff785159644cd71d` |
| 101 | `lemma` | [mulLeft_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mulleft-one.md) | 590 | `result-track:09a8caa1deb3e8bfd37df9b00a2736999506392c17b97f0ed5ff60b5a34ad865` |
| 102 | `lemma` | [mulRight_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mulright-one.md) | 593 | `result-track:df3411532a203ecde685d7bf41a92e5ac53dde98f40e793a06aa2fc7e0a077ff` |
| 103 | `lemma` | [mulLeft_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mulleft-mul.md) | 596 | `result-track:75907cdfcb8a75d14676558b11d9c1365aecc53da5063301e2b2cda27fcfb37f` |
| 104 | `lemma` | [mulRight_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mulright-mul.md) | 600 | `result-track:c60dbb89ed752f1c1bba62dd63e110e9fd6bc69ff63e8d15d1c418fc3bc7bf30` |
| 105 | `lemma` | [inv_mulLeft](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-mulleft.md) | 604 | `result-track:a8d80eef7c3d99230fa34197011d3117afca4d05f5c41568ae398d31e62a2472` |
| 106 | `lemma` | [inv_mulRight](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-mulright.md) | 607 | `result-track:f3639defc37ec24aec2cdbef9e33f00aac3832c53a2afe24d5d7621baf53bba7` |
| 107 | `lemma` | [pow_mulLeft](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/pow-mulleft.md) | 610 | `result-track:a7a61838f651b6b7fc9cc8f0af15fff74bc13991a3dde200fb3cce2720d69b9c` |
| 108 | `lemma` | [pow_mulRight](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/pow-mulright.md) | 614 | `result-track:5f6bddb1ba957aca3dca97f0b936ac6f82d44489a7eefa0ac4855988765145ce` |
| 109 | `lemma` | [zpow_mulLeft](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/zpow-mulleft.md) | 618 | `result-track:381f505afd536c2a893fc920891e3155547e38e527b35045538e846f0a7dad69` |
| 110 | `lemma` | [zpow_mulRight](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/zpow-mulright.md) | 623 | `result-track:51a791de90509734649bbdaed9d3291755e307d153203b38f9b2e0de70878360` |
| 111 | `abbrev` | [MulAut](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mulaut.md) | 632 | `declaration-track:ed00a023ba4b57e408fd2d43d0b90cb1ca489d31c5aeab92e3e1c08f49bb9984` |
| 112 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/instance.md) | 649 | `declaration-track:0dc8bd30ad9e9dc7e6b82e9bcb3178a937eb563c1666bc55a3a16309278579ae` |
| 113 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/instance-source-edition-2.md) | 659 | `declaration-track:2ae1dd95bdaab91a9376a52215acab3d49c63acbf8877339db1a8b20cab3efaa` |
| 114 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/coe-mul-source-edition-2.md) | 663 | `result-track:fb326e6b94567f9fa224ad05ef88d843ba41e02e68bd659fcdaf3ccd547ad8c5` |
| 115 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/coe-one-source-edition-2.md) | 667 | `result-track:44d0453ee5bd81d2fdf0471d3211a246601a19e01b290c4760b632338d1bde59` |
| 116 | `theorem` | [coe_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/coe-inv.md) | 671 | `result-track:9bc40506df81a78d5f04b4a89d4552bb7a16ec29954468267aecc18b1b6e915b` |
| 117 | `theorem` | [mul_def](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-def.md) | 674 | `result-track:9de68d6838d81f336a3ffdaa1b7d557fde9b2d957e690b1141687fd9e9b7dd39` |
| 118 | `theorem` | [one_def](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/one-def-source-edition-2.md) | 678 | `result-track:632b112c19becd259ac483abf8eb9efc23352121f5831ccfcf7e914244564015` |
| 119 | `theorem` | [inv_def](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-def-source-edition-2.md) | 682 | `result-track:ec1ce63d052161a9c7ce0d058f5ad52d8f1286da7f8f0e5f21fdf090a1a61d8f` |
| 120 | `theorem` | [inv_symm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-symm.md) | 686 | `result-track:b4a71d3e0c249a83a0004691bfad3f24748796b9312547fb31cc8a096067237d` |
| 121 | `theorem` | [symm_inv](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/symm-inv.md) | 689 | `result-track:d7156e62031197919d202d90ffe7619d11db2bd3715450665ccdf4bf6fa5a684` |
| 122 | `theorem` | [inv_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-apply.md) | 692 | `result-track:9bfd6a7e73585ec22076a76b000f1b02e91b38ebaefe26e905fc371e9f903b65` |
| 123 | `theorem` | [mul_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mul-apply-source-edition-2.md) | 696 | `result-track:6dab71c8aa8207a977fd84c68c63175ff0d3eeb7ca7ce699d10e13ba12a3dc00` |
| 124 | `theorem` | [one_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/one-apply-source-edition-2.md) | 700 | `result-track:82b34422fd9a8490944b75dcc35202daf890a94d323b8cd456621e39aa427a59` |
| 125 | `theorem` | [apply_inv_self](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/apply-inv-self.md) | 704 | `result-track:eb36e9b4dbfd33a2c1a39f79086e92c70bd4f5ad86487ee266e74be6a6db8729` |
| 126 | `theorem` | [inv_apply_self](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/inv-apply-self.md) | 708 | `result-track:f6da051b7f1e335f0e3b3298f9f2edf1a29f0667616a54bfdd34afdd4db08330` |
| 127 | `def` | [toPerm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/toperm.md) | 712 | `declaration-track:72074132cb5d8986667aaee2595503a7ab9a41590539892f727e68f6ff8d744c` |
| 128 | `def` | [conj](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/conj.md) | 723 | `declaration-track:dd51a09c55505aa53baa65b4f3a421e747c65bda636fc4c1e9309f0a761dba24` |
| 129 | `theorem` | [conj_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/conj-apply.md) | 734 | `result-track:633218e79ce1808f8ca5b75b52ed7cd3a879c1da3f22d6ab762ae721a36c22bf` |
| 130 | `theorem` | [conj_symm_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/conj-symm-apply.md) | 738 | `result-track:6e46f42c72469c2cdfa4cc52787c7a0224b0a9cfab688d27308d11723338c842` |
| 131 | `theorem` | [conj_inv_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/conj-inv-apply.md) | 742 | `result-track:7b1436ce2719823685ef92c4a49e7ecf0bfc55dbb0c1081c3fc4cdb6cdf110cd` |
| 132 | `def` | [congr](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/congr.md) | 747 | `declaration-track:1cfef231676227ae7badda68753a6688bc291577d6108a86091df4973ed89f75` |
| 133 | `def` | [toPerm](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/toperm-source-edition-2.md) | 776 | `declaration-track:768d234595dc15565974f22d9b7f3104dd457f100a627757a17b087a470d3b1e` |
| 134 | `theorem` | [neg_conj_apply](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/neg-conj-apply.md) | 787 | `result-track:3f373ad3fda8e2519366914f43d10f8df1231cf5f81a18aa72080441d3b0f832` |
| 135 | `def` | [MulAutMultiplicative](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/mulautmultiplicative.md) | 796 | `declaration-track:872566fb6efd14548143f27324d6ba1e54b33a4fb8551da101ed52233cdd0850` |
| 136 | `def` | [AddAutAdditive](../../../../GroupTheoryAndGeneralizations/GroupEndPublic.lean/declarations/addautadditive.md) | 801 | `declaration-track:b70b56101d132c7192985fc6e121ce72c401a2236f6a7db6bff4c20142ce9cd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aaf2c867c7651b1f0cad57eee515c8f5fc4eef0767e32925cfec7509c47f14dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean","GRWTSK/_verification/specifications/Algebra/End/Variant4540822a4384157e931d0bba440c4323dff66d55131bea1f2a9f3d160dadb28b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
