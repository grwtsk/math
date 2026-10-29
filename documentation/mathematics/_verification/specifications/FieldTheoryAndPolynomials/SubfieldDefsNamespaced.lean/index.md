# Verification target: Subfield Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "434cedda2fdf92c7a9a34d63b8012475ed31e4a7",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant56d71b26cce51c9d825008e6748ebc3161a85095e237b647d7a4bbafbdb5d6e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `434cedda2fdf92c7a9a34d63b8012475ed31e4a7`.

Source path: `GRWTSK/Algebra/Defs/Variant56d71b26cce51c9d825008e6748ebc3161a85095e237b647d7a4bbafbdb5d6e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant56d71b26cce51c9d825008e6748ebc3161a85095e237b647d7a4bbafbdb5d6e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Unbundled.Rat` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SubfieldClass](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/subfieldclass.md) | 61 | `declaration-track:d9679d4d73284389ede613914e5a32a886194320912e340006f32493a8f84af2` |
| 2 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instance-source-edition-6.md) | 74 | `declaration-track:82eeeacfce329afeb090950e474f94aad7b5d3bad60d217ee693abaa8eb1f8d1` |
| 3 | `lemma` | [nnratCast_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/nnratcast-mem.md) | 80 | `result-track:7d6a26231af247f7152b44531de1d8c2b71145a034436917eb061d75aa1c614a` |
| 4 | `lemma` | [ratCast_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/ratcast-mem.md) | 84 | `result-track:ddff786864a50101c022c594c1638953a5ba958f60b0cfa04444d1baefc25287` |
| 5 | `instance` | [instNNRatCast](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instnnratcast.md) | 87 | `declaration-track:1c26bcdd6f2445f493f7129a2fced2164ef4356a603bf8798902f14b02476b1b` |
| 6 | `instance` | [instRatCast](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instratcast.md) | 88 | `declaration-track:09490fea76674d4f87bf272deff33ff3419ddafb77c01dd7e6bc36befb540f4a` |
| 7 | `lemma` | [coe_nnratCast](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-nnratcast.md) | 90 | `result-track:9462b00de6a613da51c28f14d634c5db2b62f3a9e23796ec078e460d85959577` |
| 8 | `lemma` | [coe_ratCast](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-ratcast.md) | 91 | `result-track:ce3a4710e41ecddf6fe49b2963106cb4a26c7be64ba07b329ee986b8c0efbf12` |
| 9 | `lemma` | [nnqsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/nnqsmul-mem.md) | 94 | `result-track:6154e245b63c9834cace14745710495c94e0ba7392f57d67ec880dd6dbda0267` |
| 10 | `lemma` | [qsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/qsmul-mem.md) | 98 | `result-track:99f0d316de0bdfcaab1f047e598c995e884146cf6a4d0d11b393aca30018f1fe` |
| 11 | `lemma` | [ofScientific_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/ofscientific-mem.md) | 102 | `result-track:72b3e46dce4ef5f27751cdf0266fac0138f2d6308b70822e89df7f06fbe65c00` |
| 12 | `instance` | [instSMulNNRat](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instsmulnnrat.md) | 106 | `declaration-track:51160ce37d590eb6b3e94faaab9193161c5970115784dcae9e78900298d59074` |
| 13 | `instance` | [instSMulRat](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instsmulrat.md) | 107 | `declaration-track:39dbc9d6483e5de4c9ac93fb1964e5882b9816e2902281525b8b51fbb8361065` |
| 14 | `lemma` | [coe_nnqsmul](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-nnqsmul.md) | 109 | `result-track:5075d8c8d0027a16731fac5a9aba7ea4a85b6cd5d691f2396d1a50433abc3b0c` |
| 15 | `lemma` | [coe_qsmul](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-qsmul.md) | 110 | `result-track:c4a6fed35391899380e507087cf7828634ea601b5a97bda953763cf0f99e84ad` |
| 16 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instance.md) | 115 | `declaration-track:1d3b8fa2fd90cbd44baab439186bb808021da5b516a8459a965c82cb08b3b904` |
| 17 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instance-source-edition-7.md) | 124 | `declaration-track:85467b4ae14bd293812e20953ff33363be8c3325d3632d0cfffc69bb94aeb67a` |
| 18 | `structure` | [Subfield](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/subfield.md) | 138 | `declaration-track:76a4e980f98b0daeea845ef51e4c94b808a2d902f9a3be67fe99c9280ba8145a` |
| 19 | `def` | [toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/toaddsubgroup.md) | 148 | `declaration-track:1b280121ce69c7d2b6820c95b8ea2c906b146dfeb29139c1521b2f77f4200cbc` |
| 20 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 156 | `declaration-track:2d7a7c8164723f3243754297b0eb52752d95b526c5378081e7026734654cfeb0` |
| 21 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instance-source-edition-5.md) | 160 | `declaration-track:7612ebb7359fcc9dd12d7b5a051e7bd50d24d3cbdb45cbe56361765ed2109e78` |
| 22 | `theorem` | [mem_carrier](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/mem-carrier.md) | 168 | `result-track:bb7bfd0b9b8e7358b7e10304db7ee2a8b6dfc4803c9f97dc8884cf843ce15bbb` |
| 23 | `theorem` | [mem_mk](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/mem-mk.md) | 173 | `result-track:463b86a6e346dcf85aa6a9886e9c604fcb636c613a3270cdfe3124540eeb9386` |
| 24 | `theorem` | [coe_set_mk](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-set-mk.md) | 177 | `result-track:d013e57fc061f8a8c1c26e1296eb5ae4f0b1e0def235a06ef0ade22746f14a0e` |
| 25 | `theorem` | [mk_le_mk](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/mk-le-mk.md) | 181 | `result-track:151bb770c931657fd1134247a972bfb322d7b0c00e794b6f909c74429801cfc2` |
| 26 | `theorem` | [ext](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/ext.md) | 187 | `result-track:a43f88054403c7b1f20a8f4ac971a86e2b7d6e98d67743ef89a69f58abb44c73` |
| 27 | `def` | [copy](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/copy.md) | 192 | `declaration-track:24a1efba93b981a0e375a811e056b901db3d9b8e0f653617ec9f1f05837b5f3a` |
| 28 | `theorem` | [coe_copy](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-copy.md) | 198 | `result-track:56aa6e105ea2fae45a0df9b033e9cd805262b0a0adb955e5125328b11d0bf06c` |
| 29 | `theorem` | [copy_eq](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/copy-eq.md) | 201 | `result-track:3d44e56eb7bd17173249e7103cf64f1910cb406b55e9489e0749d26cc899249b` |
| 30 | `theorem` | [coe_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-tosubring.md) | 205 | `result-track:ce9fbd9a0c6b0c24a53e4849e677196b5f921295667c88be4ecec2e9058da51c` |
| 31 | `theorem` | [mem_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/mem-tosubring.md) | 209 | `result-track:9080433f6584fd1906223f899861107a69359cd80abad98ed4477c981b0c2933` |
| 32 | `def` | [Subring.toSubfield](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/subring-tosubfield.md) | 215 | `declaration-track:445fe0ccb4012821db673554bdd9535d4e7b098a7bd49cd81fcabdcc3d157e54` |
| 33 | `theorem` | [one_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/one-mem.md) | 225 | `result-track:4bf893b96bddf17a26f63fe587163858896d911c8b40d39e05f1b63ccb09a5b3` |
| 34 | `theorem` | [zero_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/zero-mem.md) | 229 | `result-track:e36e54426c4bdeb0a7c2efce8807052bd7844ed97133e2b5bb455afe55b093be` |
| 35 | `theorem` | [mul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/mul-mem.md) | 233 | `result-track:de68c5469556ccaa875ce2fa430833f06774818b95a69c966c2fefb7af6e47c9` |
| 36 | `theorem` | [add_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/add-mem.md) | 237 | `result-track:77675e7df16a4b91e9de7258777da3bb868aafa0e11edf90de39967873dd3bca` |
| 37 | `theorem` | [neg_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/neg-mem.md) | 241 | `result-track:089ff68e4de5db159932ee55c63fe9709c76f69fbe9dcc533a585fbeff58932b` |
| 38 | `theorem` | [sub_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/sub-mem.md) | 245 | `result-track:2ba5d336c6cea65ddc13400b9f0bc51bf99a7d993ad43dfc2524a52892b8343b` |
| 39 | `theorem` | [inv_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/inv-mem.md) | 249 | `result-track:af81726f6d8e4d3f0f9efbd8fa7ad0e8c591e575949a4f307e9733a7f8605e99` |
| 40 | `theorem` | [div_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/div-mem.md) | 253 | `result-track:e1c497d75cd3425a04d5b7575a097f8e0e630d363de62bc955f8bb6c1a10885c` |
| 41 | `theorem` | [pow_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/pow-mem.md) | 256 | `result-track:831fd4ffe7170cc7df44d9c6099abb19469f654aa80319f4a765701328924b3c` |
| 42 | `theorem` | [zsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/zsmul-mem.md) | 259 | `result-track:f8c4cf4d1568d036d980c9fa15c391743de1c75b9f2e875ff75d241b7fac78a9` |
| 43 | `theorem` | [intCast_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/intcast-mem.md) | 262 | `result-track:adabaf351115d447b042977f2292e39bbbebd99949b6b58e4e3991cc82d81b4b` |
| 44 | `theorem` | [zpow_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/zpow-mem.md) | 264 | `result-track:a720b93c84190d88c0de5758ffeceafe3f58d057e50b55b4858f7ba2330e340f` |
| 45 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 269 | `declaration-track:5a7fb5f540e073334e34b1f740e6b41199b2f76b1f42f0a380323c1119a1827d` |
| 46 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instance-source-edition-9.md) | 272 | `declaration-track:c90c252dfd0b6e4fd4c9b6c6d3e43be325b9356f980cae0eedec7454ffa8757e` |
| 47 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instance-source-edition-8.md) | 275 | `declaration-track:a16985e6938b3a7d2146c4a2161239b27e568eb78fac579383fee81bb73511be` |
| 48 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 278 | `declaration-track:5fce396a7f8505bb2c8fe660a2566b3b125ae8dfa7675eee5c42571e4112fa2b` |
| 49 | `instance` | [toDivisionRing](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/todivisionring.md) | 282 | `declaration-track:13334e1357a43abc2857ae128f42ee1596fe9d29167752ab9b9d4403d9c6134c` |
| 50 | `instance` | [toField](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/tofield.md) | 289 | `declaration-track:7dfae547b4383bdc1df5eeac843b512166c9055250a090137402c187de536078` |
| 51 | `theorem` | [coe_add](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-add.md) | 296 | `result-track:4f83db245a1b574c5519157795346eb2183ea5150f8443301d68bde4e14e7c06` |
| 52 | `theorem` | [coe_sub](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-sub.md) | 300 | `result-track:9aefab5f8ba969b99e85cf03c3d8d79d91509d1953c89f8a14d18feac3d40031` |
| 53 | `theorem` | [coe_neg](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-neg.md) | 304 | `result-track:4b5a9cef2fe9185f891ba6e13360ca6a3d9d0f95a2542984ffff55070c6b986a` |
| 54 | `theorem` | [coe_mul](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-mul.md) | 308 | `result-track:1ee9a1fc55a747dfbcbf47299e268b0376c9ddba3e6152598b776a3775295486` |
| 55 | `theorem` | [coe_div](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-div.md) | 312 | `result-track:48a50097e743c7e78403ea74ef1c4d29894c335da932e46585c1d301f756e5dd` |
| 56 | `theorem` | [coe_inv](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-inv.md) | 316 | `result-track:16874ec175e704fd20d1c4b2d54a6ef2184d86ec9fcd958faca58f81fb792043` |
| 57 | `theorem` | [coe_zero](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-zero.md) | 320 | `result-track:008834250bfabd92f82c9b8cbd11a76fb95863341a0ff546ecc171adecfe8c2c` |
| 58 | `theorem` | [coe_one](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-one.md) | 324 | `result-track:400a8e06b5884e51c085fe8d7b91153f413ee2b01fff29a499cd1715a0295ea2` |
| 59 | `def` | [subtype](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/subtype.md) | 330 | `declaration-track:cab17fe3ab22c93e525794f9f11b29fe82c2a82eb0c6becce3938087340a850a` |
| 60 | `lemma` | [subtype_apply](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/subtype-apply.md) | 334 | `result-track:82fc761cd121e0916de323d2e05723e729059d62ae8e3281b94d360ada40d221` |
| 61 | `lemma` | [subtype_injective](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/subtype-injective.md) | 337 | `result-track:c6f4a6b455c020b586b19ea47f29a69c12f7f033901ea946c64c2cbaaca67b14` |
| 62 | `theorem` | [coe_subtype](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-subtype.md) | 342 | `result-track:e6da37cbaf5e698383c367d246d5780a440d12589b285a05548e3806ef8b5f92` |
| 63 | `theorem` | [toSubring_subtype_eq_subtype](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/tosubring-subtype-eq-subtype.md) | 346 | `result-track:8e5346b00af3ebc3fda8cfaea6cbf5a2dfb1a818a7e0a01e94c59b584af7e90f` |
| 64 | `theorem` | [mem_toSubmonoid](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/mem-tosubmonoid.md) | 353 | `result-track:75f0250224bb3eda63afa833b7a0cb98b87807c7bd20e16ae9aba568a2700529` |
| 65 | `theorem` | [coe_toSubmonoid](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-tosubmonoid.md) | 357 | `result-track:aaa647d3146c8537d706bf3718d4027f4a8699c1c20bccc68dde2b76c484b022` |
| 66 | `theorem` | [mem_toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/mem-toaddsubgroup.md) | 361 | `result-track:e3ad86d34260e767c8d1c7acf07087c7412bfc0613261e7d7b98804485009e54` |
| 67 | `theorem` | [coe_toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldDefsNamespaced.lean/declarations/coe-toaddsubgroup.md) | 365 | `result-track:426bfc10c7c94192fc6ba7c9bb8aaf71363505143c1f9f71570894dc461ca292` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c887f16b3ce4df999475c239eba5cded4f5b145f8a1bcfdc01bb5ed6f5d4e24b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variant56d71b26cce51c9d825008e6748ebc3161a85095e237b647d7a4bbafbdb5d6e9.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variant56d71b26cce51c9d825008e6748ebc3161a85095e237b647d7a4bbafbdb5d6e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
