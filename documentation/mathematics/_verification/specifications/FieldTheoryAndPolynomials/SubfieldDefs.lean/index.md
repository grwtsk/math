# Verification target: Subfield Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50dcf074148e7ea4110eed4bd04cbfe1ce12d67c",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50dcf074148e7ea4110eed4bd04cbfe1ce12d67c`.

Source path: `GRWTSK/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Unbundled.Rat` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SubfieldClass](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/subfieldclass.md) | 53 | `declaration-track:921797493a024f84e8d71c8d4786d67965849334bde0e368a83539f360a86da0` |
| 2 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instance-source-edition-9.md) | 66 | `declaration-track:fda9ae60337735721bd8f4ec10c8b6f9486965d0b0407a3a57a16d04c51d9466` |
| 3 | `lemma` | [nnratCast_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/nnratcast-mem.md) | 72 | `result-track:d6ba11e8a773ace5d94899440b465f2b79ce4bc9b181bbf78f2d635bf3915be0` |
| 4 | `lemma` | [ratCast_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/ratcast-mem.md) | 76 | `result-track:976935c1dc61b78c993fa34a9cc5533c0725e071b745351148acaa95d8d64458` |
| 5 | `instance` | [instNNRatCast](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instnnratcast.md) | 79 | `declaration-track:1cd35af91406d617654d992046ae323be34e89caf9764c2a527c8568d6dc049c` |
| 6 | `instance` | [instRatCast](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instratcast.md) | 80 | `declaration-track:dc9704ff97dce834beff75630ee6a43f93e61fd81021c360e752e3a42be53795` |
| 7 | `lemma` | [coe_nnratCast](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-nnratcast.md) | 82 | `result-track:bc0e0959476b902ead55d280073682063fca267fcd0bb3a20f8586503990fa95` |
| 8 | `lemma` | [coe_ratCast](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-ratcast.md) | 83 | `result-track:80fe8c63041af1f77f5f5c291bd2927fd3dd6bc62af598818d7182dbbdc8712e` |
| 9 | `lemma` | [nnqsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/nnqsmul-mem.md) | 86 | `result-track:6c8d8b10f5ab80def4e15a9ab7c75c73ab9faabdfc3d481645663aa1746ced89` |
| 10 | `lemma` | [qsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/qsmul-mem.md) | 90 | `result-track:10409509986d0c3c5fe38988c16030db9597da98f8bfe6fa4bde662fd2d7f19d` |
| 11 | `lemma` | [ofScientific_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/ofscientific-mem.md) | 94 | `result-track:768ce437812fcea4fdd83ce1feb17f82c6d258e45cd5e0662a649356c09f65c2` |
| 12 | `instance` | [instSMulNNRat](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instsmulnnrat.md) | 98 | `declaration-track:38c0655682cf507b2543d983e313810af125a781a8294df5f16c8c018a4710b8` |
| 13 | `instance` | [instSMulRat](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instsmulrat.md) | 99 | `declaration-track:b27ff7041c93d03e96eb2794095e4e1d4cd8d38f2e9816cffb1be1e6075dff46` |
| 14 | `lemma` | [coe_nnqsmul](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-nnqsmul.md) | 101 | `result-track:e3cec384f85c071ff1e68b9fd075c9b9d5b423240cd7fefd7a58f897191a62ff` |
| 15 | `lemma` | [coe_qsmul](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-qsmul.md) | 102 | `result-track:511721d181dcf40115ad933b95cf0bb1693c1ca38594a47a0f6f289cb6c01fdd` |
| 16 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instance-source-edition-8.md) | 107 | `declaration-track:fb6f62808ab5dc58c20a729bfaf8fd357948cc7897f2c581961d92d15522597c` |
| 17 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instance-source-edition-2.md) | 116 | `declaration-track:106b6987e706bb262fe2577b28764b6fa16f34841e5e36a613988ab1d08597ff` |
| 18 | `structure` | [Subfield](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/subfield.md) | 130 | `declaration-track:6439bfe7fd9903d6cdc3bdd991cbf2911392ce0e2893c707d4911e7c4dcf35c3` |
| 19 | `def` | [toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/toaddsubgroup.md) | 140 | `declaration-track:434fbbabefb5d9cfa881ec38629cbf11d117a435425b19cc099eb3dc8bef79d3` |
| 20 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instance-source-edition-3.md) | 148 | `declaration-track:16b5b1902098562bfd3240ce0a19c7fba4d8b367dea2a337513cd23b7363b59a` |
| 21 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instance-source-edition-4.md) | 152 | `declaration-track:3c076d09551edc6d0e37cb60068f770eaf4ad122f25b23df5bf0464e31ec38bd` |
| 22 | `theorem` | [mem_carrier](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/mem-carrier.md) | 160 | `result-track:347ccc29522aec3e7e7352000f31630fed36c99a4f5ef59ae652d703bc352295` |
| 23 | `theorem` | [mem_mk](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/mem-mk.md) | 165 | `result-track:084f7f3672bc38689220508f9f9a351ff21eb754b70e20901fd50e711224c1a0` |
| 24 | `theorem` | [coe_set_mk](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-set-mk.md) | 169 | `result-track:bedc77564daaa7249833b6bc849a2c4afda87e55719db922d4d560279cd5e7e0` |
| 25 | `theorem` | [mk_le_mk](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/mk-le-mk.md) | 173 | `result-track:c5bc05a174ed0993aad0403d8084bfce60ca112df38443eb2c16adf068b99278` |
| 26 | `theorem` | [ext](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/ext.md) | 179 | `result-track:ede9848cef8eef3ed5628a58ec7451f27f34689bc2cb2cfd429e23ff0e0381f0` |
| 27 | `def` | [copy](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/copy.md) | 184 | `declaration-track:5fb1e96bd0c37c338cc165477e3cfb978f9d9b9d25c35c7da77f8f2ee9e7673e` |
| 28 | `theorem` | [coe_copy](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-copy.md) | 190 | `result-track:42c3aebf97bb8a1293696f4a83a97c54c2afcc0586c7739b444e0beea7269eaf` |
| 29 | `theorem` | [copy_eq](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/copy-eq.md) | 193 | `result-track:4005fd8313a5d3a0875435656ec107a890da316c79c65fdcaeb2f40b7a4ccacb` |
| 30 | `theorem` | [coe_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-tosubring.md) | 197 | `result-track:9513a92660aa6b47db058c914eb2c37a5ab7c8461ad7d2f3619c9b641404fb6f` |
| 31 | `theorem` | [mem_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/mem-tosubring.md) | 201 | `result-track:1e4dc97402977a69155f25e69bc713abdee51289b3ee3f568e9bcc21a1fd17e6` |
| 32 | `def` | [Subring.toSubfield](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/subring-tosubfield.md) | 207 | `declaration-track:af84ecf0a252262ac64753e01fc426622632513090fcaeed6f5f72a970d2ff23` |
| 33 | `theorem` | [one_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/one-mem.md) | 217 | `result-track:068d79dfe4d146ab257880a68689622ae6291e787cdbb0dc5f3d76e1cff83533` |
| 34 | `theorem` | [zero_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/zero-mem.md) | 221 | `result-track:cfe5c287072188e0fcaf3e0c61744bf09b7bac57bd9b616691884871f0aa987c` |
| 35 | `theorem` | [mul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/mul-mem.md) | 225 | `result-track:1bd6d2424207b500c1b7262bd2ebebc0a46af4ea6b89d1a8ecb2503464bc78f2` |
| 36 | `theorem` | [add_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/add-mem.md) | 229 | `result-track:37e8c27b4c16e501225bd62aa43724c6b99d6c86455d41f49b4125eb9ec3edf0` |
| 37 | `theorem` | [neg_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/neg-mem.md) | 233 | `result-track:9ed902a1f4f7d5d613419a7cb92c154cb591a91a051c08df130bd2b24acf18d1` |
| 38 | `theorem` | [sub_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/sub-mem.md) | 237 | `result-track:c0ca61b24e90c919ee0a89c967cfc72bb591386bd630c43532987e506c9dd456` |
| 39 | `theorem` | [inv_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/inv-mem.md) | 241 | `result-track:319b25ae43b3e759187fcd7e88bc772102876e521780e775fe75e2c56b3a7282` |
| 40 | `theorem` | [div_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/div-mem.md) | 245 | `result-track:09a7a38bb814b25f4062092e7e1b7f150f8adbfc19486edf60f9d5c36b7289e6` |
| 41 | `theorem` | [pow_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/pow-mem.md) | 248 | `result-track:454cf111e08d5a6c3bfa78db2dafa884122273a7bad83f9d6e6844565b9f5bfb` |
| 42 | `theorem` | [zsmul_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/zsmul-mem.md) | 251 | `result-track:c6589d6ad13e121012cee2cce305b06cb90e75bd08d26ce18c128629236acd6b` |
| 43 | `theorem` | [intCast_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/intcast-mem.md) | 254 | `result-track:3875123bbd4c6aff749a2a8b9c2fdf793b707092ae94c8e5dfd5999a3c88bef3` |
| 44 | `theorem` | [zpow_mem](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/zpow-mem.md) | 256 | `result-track:3991beded1256b2520546ce5eba36a272212cae7c6a50266358925e540bd07f6` |
| 45 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instance-source-edition-5.md) | 261 | `declaration-track:7dd479090cc89ed44fd1ea2c550c5c92694ce2ebd14af1e320b4d8101a3406d6` |
| 46 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instance-source-edition-7.md) | 264 | `declaration-track:a8db82ffaadc272d7d6948638f90fc68eacc3d3fe4572bd116512858154c701c` |
| 47 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instance.md) | 267 | `declaration-track:03d2fc80595e273af6e25cb44dc840d59139102fbd6792fda7b3c46f44ab7bd2` |
| 48 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/instance-source-edition-6.md) | 270 | `declaration-track:a74a8b17d9a68ce713a70a327a8689efe5fcec926b98883a6d6c7419e987eda5` |
| 49 | `instance` | [toDivisionRing](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/todivisionring.md) | 274 | `declaration-track:8c261cd5efe68219c45816e1d52eb1cb05cc79503ff78debbfb10721d7c82123` |
| 50 | `instance` | [toField](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/tofield.md) | 281 | `declaration-track:6c66a8403f24fbba3432d5115852514b508a28cdaaf9a6b380a4c2ffa269e0e3` |
| 51 | `theorem` | [coe_add](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-add.md) | 288 | `result-track:2a29ccec30efe1dc0e8160f0849147ddf77265edd2c720ef6960355299290710` |
| 52 | `theorem` | [coe_sub](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-sub.md) | 292 | `result-track:64794b8ad7ff69d43720d83e4d66c84c7e925b9496a586bfa48a8cfe138cfa7d` |
| 53 | `theorem` | [coe_neg](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-neg.md) | 296 | `result-track:83df186ac778c6e03ee647dc26a352ef3d000cdb332eb0657208303e9dc6a4f5` |
| 54 | `theorem` | [coe_mul](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-mul.md) | 300 | `result-track:3bd58b26e1dcbc9b03d5496d9a31913ecce1362852ce47cacc3e104cb3995802` |
| 55 | `theorem` | [coe_div](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-div.md) | 304 | `result-track:fb74686c88f69e54b9c12ddb33dc4645b08dc0c4c719111d9fa0df690666424d` |
| 56 | `theorem` | [coe_inv](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-inv.md) | 308 | `result-track:ccddf19bee0c32e5daf2b1871e74d4c6ed4ef23f666ec2ec04557a4ef3ea7212` |
| 57 | `theorem` | [coe_zero](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-zero.md) | 312 | `result-track:6f7489775dcba12d0e6413e54aab148b3755376249f0789a18352e81490b3e9d` |
| 58 | `theorem` | [coe_one](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-one.md) | 316 | `result-track:8845ca42e6e8cb326ee47cd63ef507fb6554476b8939edbaee78b12c6e21658e` |
| 59 | `def` | [subtype](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/subtype.md) | 322 | `declaration-track:96c25716d81383b7feef1a647aa67026d63d31304461c531f49adbc8deb881c8` |
| 60 | `lemma` | [subtype_apply](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/subtype-apply.md) | 326 | `result-track:d69f25665daaee879391fcbb9a1fc074e62518c9d47bd177ec17dc22683bf300` |
| 61 | `lemma` | [subtype_injective](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/subtype-injective.md) | 329 | `result-track:0295c2a5bd4a1d2077986af268aee375d04f5a65cb4ce43c14316e89531a0a40` |
| 62 | `theorem` | [coe_subtype](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-subtype.md) | 334 | `result-track:3b7e765e82e45c68b0f4b91037aa13d9b7f3abdf57b38deb6bece28ca554b33d` |
| 63 | `theorem` | [toSubring_subtype_eq_subtype](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/tosubring-subtype-eq-subtype.md) | 338 | `result-track:be64da2afbd70cf8ec7d0719ee9c5ed11193563d3ad5c98c4d25cdbf48e94135` |
| 64 | `theorem` | [mem_toSubmonoid](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/mem-tosubmonoid.md) | 345 | `result-track:b451fe12758feadff81e755312cf842e359db7b212103146c2865f93a1fb754f` |
| 65 | `theorem` | [coe_toSubmonoid](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-tosubmonoid.md) | 349 | `result-track:adfc0e27fabd45656b7894d12651b329d78388adb8e8a5d55694780ecb221c74` |
| 66 | `theorem` | [mem_toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/mem-toaddsubgroup.md) | 353 | `result-track:ef0d34de1171174594f825b4f56436da81eaf008b3d1ad49af1ae7e0323ba486` |
| 67 | `theorem` | [coe_toAddSubgroup](../../../../FieldTheoryAndPolynomials/SubfieldDefs.lean/declarations/coe-toaddsubgroup.md) | 357 | `result-track:4a4619943ac3143809d657823d90f5e8972a3b02c1e2cd73d3cae95440c227ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ea84f41947c420e828f3825dd9e45749dcd991d4c09968f0a03e27e7723ff9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variant50b608dac36637d4819cd0f6a312ef38d437a29345cb2b7e224a23963ef1b0c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
