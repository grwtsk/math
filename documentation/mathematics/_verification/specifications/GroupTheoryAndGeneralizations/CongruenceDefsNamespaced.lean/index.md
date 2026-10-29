# Verification target: Congruence Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a479ddfb5ef61861dfc3b8a388f0033678b4c26",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Varianta97b2cd33250a03282aa989a61e8cf6c2abfd7bc6e8667d0204981a4145ef64f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a479ddfb5ef61861dfc3b8a388f0033678b4c26`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Varianta97b2cd33250a03282aa989a61e8cf6c2abfd7bc6e8667d0204981a4145ef64f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Varianta97b2cd33250a03282aa989a61e8cf6c2abfd7bc6e8667d0204981a4145ef64f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.InjSurj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddCon](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/addcon.md) | 65 | `declaration-track:f6d63b277a7cddb8da6a718e5153504a11e142ac1e2450eebed12e6b457241f3` |
| 2 | `structure` | [Con](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/con.md) | 72 | `declaration-track:d71a73d78b62c830967736de0c508192145ca5fcb7f15dd5b4cdf9d4f4cfb923` |
| 3 | `inductive` | [AddConGen.Rel](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/addcongen-rel.md) | 86 | `declaration-track:fcb24b017d4d0b07bf6ece6fb32a518a93ec8b5569fdbfc1cb562363748d3b4a` |
| 4 | `inductive` | [ConGen.Rel](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/congen-rel.md) | 96 | `declaration-track:4a52bdbcc69dc122aadef8a93a0775c1bd71f47a4f974486c372178206964d58` |
| 5 | `def` | [conGen](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/congen.md) | 107 | `declaration-track:ad5dac7efdbd8884cb864a32a334a92281d8d72814b8933888515b9a9dcf343b` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instance-source-edition-9.md) | 117 | `declaration-track:e3de176bde7fb79e4999669fd73f63e41cb01812420c8778ab6f21198f052573` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instance.md) | 122 | `declaration-track:4b074e7709194c854eb913950c806ffeb55cec2a2219707e431345ac0f021e8e` |
| 8 | `theorem` | [rel_eq_coe](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/rel-eq-coe.md) | 131 | `result-track:2aff05dd16db09fe5044f4252ea119a99a553e871b1f95a49aba9fa6202c7d27` |
| 9 | `theorem` | [refl](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/refl.md) | 136 | `result-track:c3eca7029ba48bfa99f23687b68f5e389ae61155b190f6c665acf5ec1d5e3e6f` |
| 10 | `theorem` | [symm](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/symm.md) | 141 | `result-track:a3841aa33d0d452b903057275e618d1d7297317cd79e3d63c6377cb782e6c8ba` |
| 11 | `theorem` | [trans](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/trans.md) | 145 | `result-track:f2e7208ed0765449d1eaa54ed334a72807533362b2805ea79448bd761e9509d0` |
| 12 | `theorem` | [mul](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/mul.md) | 149 | `result-track:2b209926d2453048126a25759c764b0cc844063ebbc299d9c2f91954d66fe335` |
| 13 | `theorem` | [rel_mk](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/rel-mk.md) | 152 | `result-track:e3a7d0d7d35dad1aa57e26a11bc23cf5efa38a66a839fd1ab1755187a1edb0a5` |
| 14 | `instance` | [instMembershipProd](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instmembershipprod.md) | 160 | `declaration-track:e70b0deb092343bff65eb2fcb16e094e5bd6de039d28ef9ca4b3aac906dc3419` |
| 15 | `theorem` | [ext'](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/ext-source-edition-2.md) | 168 | `result-track:4f99660346a62c5e1f4796822b277764b3caa49b1ae52619e0b669c15a08d1d7` |
| 16 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/ext.md) | 172 | `result-track:07595add872bb8f2a25ea5e426372fae16601479d04a72de17cbd7c044e92a8f` |
| 17 | `theorem` | [toSetoid_inj](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/tosetoid-inj.md) | 178 | `result-track:bd0b31aec84d2aca405056d456043f24024d9c4e1550c8ea4abd9b1f1662ebe1` |
| 18 | `theorem` | [coe_inj](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/coe-inj.md) | 184 | `result-track:a9e97657d7f56637d799588868b2ad1214bcb26021517f16901ca601c79e698f` |
| 19 | `def` | [Quotient](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/quotient.md) | 192 | `declaration-track:b638efa912a7d4a89117a0ba73271f7e649f41ad9757d7acab6e3b39d7346313` |
| 20 | `def` | [toQuotient](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/toquotient.md) | 199 | `declaration-track:36483b2531ce53b46c1a51e38533e7ddbd5f523edd029603848e07506f55f468` |
| 21 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instance-source-edition-5.md) | 210 | `declaration-track:901ee78d5514bbb01e5288c14613824e68235e9bacfb1ac3024fcd632b53b5f0` |
| 22 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 216 | `declaration-track:588b2af46a58caf88e1094043918ccee55bd20c12d2d16b99ac28ed30c8a9f06` |
| 23 | `theorem` | [quot_mk_eq_coe](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/quot-mk-eq-coe.md) | 220 | `result-track:e8cd1290eb21da7c747ae3e8f6af80f1cd08fb841b383effad55de3bfa4f8718` |
| 24 | `def` | [liftOn](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/lifton.md) | 228 | `declaration-track:46e97d7f27813c58c1d513b6aab284920011df3df09e88734cc3bd54d6d4f3cc` |
| 25 | `def` | [liftOn₂](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/lifton-source-edition-2.md) | 237 | `declaration-track:6ead357fecc549719b70e3027affa080b9a5e4746f73e4907deb25908314b920` |
| 26 | `def` | [hrecOn₂](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/hrecon.md) | 243 | `declaration-track:f9e70bcd660a6242d9bd3fafb4f52370ac83f374e9188e4c3d79ceb9c4d97aae` |
| 27 | `theorem` | [hrec_on₂_coe](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/hrec-on-coe.md) | 249 | `result-track:ddc67e03ecfe58ce5a1a6e03d145f3e5e121042342b8a6d5468037533fab2729` |
| 28 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/induction-on-source-edition-2.md) | 261 | `result-track:962ca59c58d109ec649afd2db016d8735036c229193ac93d31a52cc6e4ec1d1e` |
| 29 | `theorem` | [induction_on₂](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/induction-on.md) | 267 | `result-track:0f323ffd1f5d3f066ef6fd682f3572cbafff49087a53a81c776db33c1ca85553` |
| 30 | `theorem` | [eq](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/eq.md) | 277 | `result-track:bf7aa11b0472d74c2c3a23ad37a06cd04cdbd1c89e97e11e0cfe62501f21f22b` |
| 31 | `instance` | [hasMul](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/hasmul.md) | 284 | `declaration-track:4f381a1bad4ae51bc0b6c7e7ec3e58a999a909b25e9c6f0b61858534540008c3` |
| 32 | `theorem` | [coe_mul](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/coe-mul.md) | 293 | `result-track:596647a158f17dd363444b95afc7378b5644a098bd0533a9f7dc5fd2981e1d24` |
| 33 | `theorem` | [liftOn_coe](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/lifton-coe.md) | 300 | `result-track:717ffb7371e03c2e56df9c94b7c137217ca77e4c2fa86b5ceace644cea9d2bf7` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 309 | `declaration-track:8857e66630747eef0aab1db77d917571e584b646d87640038d60f3a752520bea` |
| 35 | `theorem` | [le_def](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/le-def.md) | 314 | `result-track:384981c45e5e0ccebad288ee88b578fccc74c2ed8754098981cb1fbd1cd81fca` |
| 36 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instance-source-edition-8.md) | 320 | `declaration-track:c75c3324d1db0845934d9a832960fa955f82177f40e5fe144b989bd0a97b1e3a` |
| 37 | `theorem` | [sInf_toSetoid](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/sinf-tosetoid.md) | 331 | `result-track:93af6904d6d9da91515a724503104d2ee18fc83b5dc1e174af08a7a158f1fecd` |
| 38 | `theorem` | [coe_sInf](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/coe-sinf.md) | 340 | `result-track:47d72fd6899bcbe781a10ac314abea6e2d2ce43fa30196a328bbcd0f797f9e20` |
| 39 | `theorem` | [coe_iInf](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/coe-iinf.md) | 347 | `result-track:b826e5f77a4603a1e185fc7052d1c4276919b6c29c61627ea8aeb2acedb4b3f6` |
| 40 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instance-source-edition-7.md) | 351 | `declaration-track:bd948669b2432126ecb66f6f9abe95d92d8da9adf85380824653d2fa1965107a` |
| 41 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instance-source-edition-6.md) | 359 | `declaration-track:b463b256ed983e69f450577f3f48562ee4a9c5aa57d785664a996adafed4a3e8` |
| 42 | `theorem` | [coe_inf](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/coe-inf.md) | 378 | `result-track:c2ae85d6a1994de179f76a5b1c8e4f794f1ee47c2f67a90e70814ffcbed176c9` |
| 43 | `theorem` | [inf_iff_and](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/inf-iff-and.md) | 383 | `result-track:9110d99c3fb0d58a5135df8738872c44d72485b3b9d522bfa0eb20cfc554afea` |
| 44 | `theorem` | [conGen_eq](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/congen-eq.md) | 391 | `result-track:a65a344f4d5c9dc9092ab1455a6018cf03c7d63298e1431ec8eb6add657043f7` |
| 45 | `theorem` | [conGen_le](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/congen-le.md) | 407 | `result-track:694d1a43b2be05836a493678d0bad5d18c1e799272ec25f78831282e70f09039` |
| 46 | `theorem` | [conGen_mono](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/congen-mono.md) | 415 | `result-track:3a58c335e99ee25bd7bc322ab0a4006e147222e163c6d1f4188117cbe51800b8` |
| 47 | `theorem` | [conGen_of_con](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/congen-of-con.md) | 421 | `result-track:d0093fc376331cd95d28bce6284a2166295c2715cddf1ce686e189026ad188df` |
| 48 | `theorem` | [conGen_idem](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/congen-idem.md) | 428 | `result-track:e0ef506ba6be44cc2c5ef0f8a0885cf927ec8d88fe3437376d790ff1cd68f20b` |
| 49 | `theorem` | [sup_eq_conGen](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/sup-eq-congen.md) | 435 | `result-track:017177f6c7de55c5033ef4c085d1921a157ccdbea677db244eea400d38b8831a` |
| 50 | `theorem` | [sup_def](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/sup-def.md) | 444 | `result-track:9aa1cc4701aad572b6ba3cc6ce841d0b4491781d07c3d752e7cbd837c3362be3` |
| 51 | `theorem` | [sSup_eq_conGen](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/ssup-eq-congen.md) | 452 | `result-track:5317500d91e95abfafef93a8f69e1fbc09877338e395ad763feb8e0358fc258e` |
| 52 | `theorem` | [sSup_def](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/ssup-def.md) | 464 | `result-track:27a8115ec7f651153cf818eeed9db90730c92761126d742a24ab3506d34e5930` |
| 53 | `def` | [gi](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/gi.md) | 476 | `declaration-track:762e5a092389512990ef346704cf0b7ccf7b083a2bf821a7e3dddfc723a4f522` |
| 54 | `def` | [comap](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/comap.md) | 491 | `declaration-track:87034f8b790f3754582f32480819e5e139681b55851ecab13dfd54179fe45cb1` |
| 55 | `theorem` | [comap_rel](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/comap-rel.md) | 496 | `result-track:054884818e6bb40ab631400babea1af530a31a0be967f62350aa329c66740661` |
| 56 | `instance` | [mulOneClass](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/muloneclass.md) | 515 | `declaration-track:9e7209e72936cb0eb7fb2e739447451692be66c0eeaefa59ba444f2049a64c3e` |
| 57 | `theorem` | [coe_one](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/coe-one.md) | 526 | `result-track:f95e4cd48b97c7b1cda7eb1fd2aecd2ea044407f465d05058b4ab1d1eb8a3f22` |
| 58 | `instance` | [Quotient.inhabited](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/quotient-inhabited.md) | 532 | `declaration-track:e05da6f0a549c2c98c51fca13658c45f8a5237e535df591b8cd70e7eead063be` |
| 59 | `theorem` | [pow](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/pow.md) | 541 | `result-track:63c62895bdca76035db1339898c7be9e6797dac94edbd96a3421869c66a39203` |
| 60 | `instance` | [one](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/one.md) | 547 | `declaration-track:4b7a1e5868ea3ff0003aaa503042662ff5282356fd891bebe5d9f0f5a746d31b` |
| 61 | `instance` | [Congruence Defs Namespaced](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/nsmul.md) | 555 | `declaration-track:8f0ac120ed58db0408fa1fdd1d6709308c3a8c1cdb190d02c866072be6cc131e` |
| 62 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 560 | `declaration-track:839dbc3e50fdc311c8d5b7c2c86c2f7a9554a99622ed4673b436a3c5d4fc59cd` |
| 63 | `instance` | [semigroup](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/semigroup.md) | 566 | `declaration-track:ab722d8eebb5868c0911b34f674f1d779412b635fba94c6d5aa3dd47c672696b` |
| 64 | `instance` | [commSemigroup](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/commsemigroup.md) | 572 | `declaration-track:05e9eacfafc489f1f53e4ad00b6072f779270a0f6830cdfe6bd2fc9d8f4f3a68` |
| 65 | `instance` | [monoid](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/monoid.md) | 578 | `declaration-track:5bc8bacf3be894ae567c498e6e2b190c39de7804e1895f2f584c1e3691a7ff08` |
| 66 | `instance` | [commMonoid](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/commmonoid.md) | 584 | `declaration-track:08c333568e16a5f7b0192edbc6a3de12161ed779dcb573aeb54fb0f3f648ac75` |
| 67 | `theorem` | [map_of_mul_left_rel_one](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/map-of-mul-left-rel-one.md) | 599 | `result-track:206b8e8b2c77f9993c85bac5eb56a565a32afa62ef19047d22e1a6a2066d1b61` |
| 68 | `theorem` | [inv](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/inv.md) | 618 | `result-track:d275cc3bcb23d0189621bc16fec2a528417a79cc67bb7d5c9922a5d1af688cdd` |
| 69 | `theorem` | [div](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/div.md) | 623 | `result-track:efb5aab94c8f5e10f07ab148c586dee12d4f96f8ba3d3d015fb5ab059b75ebdf` |
| 70 | `theorem` | [zpow](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/zpow.md) | 628 | `result-track:7d1d9ae1e2562480d98bc52aade9167ca56a33e84e9b7380a7c005ab5bb889ef` |
| 71 | `instance` | [hasInv](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/hasinv.md) | 636 | `declaration-track:67344bd35134fcc541e1992ea4afecf652a0321b187c15afdc408f4a39062ecd` |
| 72 | `instance` | [hasDiv](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/hasdiv.md) | 643 | `declaration-track:ecd24266d0ea8b688c78b3cf2e4a1da3b05cacda4dc38d0623e40fa77e7811b8` |
| 73 | `instance` | [Congruence Defs Namespaced](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/zsmul.md) | 648 | `declaration-track:f0789a6f46db178fb2ad4ba5415e935d083c29d75fca40e3e311e6954f21a2d8` |
| 74 | `instance` | [zpowinst](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/zpowinst.md) | 655 | `declaration-track:2284641cd709e657ed911dad1468527e180dde0fe3a9ea3893784763c3c9a51c` |
| 75 | `instance` | [group](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/group.md) | 661 | `declaration-track:b2a0eeae6ef17ccd78df045788e03e764edca125f9330aefe31997e80829c631` |
| 76 | `instance` | [commGroup](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/commgroup.md) | 668 | `declaration-track:36a514593bc589d670eba75f7c68becb6b08a99ec9088ced1b599d4bce371dde` |
| 77 | `def` | [liftOnUnits](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/liftonunits.md) | 683 | `declaration-track:ce290aa917f0842595b079d4a4ac19a506f124fc3722e4053ae3ea8d9cec0f07` |
| 78 | `theorem` | [liftOnUnits_mk](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/liftonunits-mk.md) | 707 | `result-track:3b5bd51b98fd5e273f69f9b6c0b6bfe2565d0676ba118591d7cd7ec12a9e3d56` |
| 79 | `theorem` | [induction_on_units](../../../../GroupTheoryAndGeneralizations/CongruenceDefsNamespaced.lean/declarations/induction-on-units.md) | 714 | `result-track:70e58b8cb89689227aa3b9c9a935b0cf4f5f1d5d080abd8363ed9059f245205e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a17cdc7412b7ab175a07bd68aff672b316f17f5003502e97dfca25fc27552eda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Varianta97b2cd33250a03282aa989a61e8cf6c2abfd7bc6e8667d0204981a4145ef64f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Varianta97b2cd33250a03282aa989a61e8cf6c2abfd7bc6e8667d0204981a4145ef64f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
