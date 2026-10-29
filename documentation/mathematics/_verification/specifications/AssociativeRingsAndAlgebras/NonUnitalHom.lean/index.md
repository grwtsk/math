# Verification target: Non Unital Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41668896b20765608040f4446e2eac55f8568c20",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variant15fe70d64adda52b60da8d17f83d20547465811f39083f9580d34c425a75cbb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41668896b20765608040f4446e2eac55f8568c20`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variant15fe70d64adda52b60da8d17f83d20547465811f39083f9580d34c425a75cbb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NonUnitalHom/Variant15fe70d64adda52b60da8d17f83d20547465811f39083f9580d34c425a75cbb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonUnitalAlgHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/nonunitalalghom.md) | 53 | `declaration-track:648260b9ff93cc75914d551fa31fac08007a1b3a67541687e9211ce7bcfb7d04` |
| 2 | `class` | [NonUnitalAlgSemiHomClass](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/nonunitalalgsemihomclass.md) | 70 | `declaration-track:0091a8f52dc28db4840c723573ec8f1c509652b7a6ec45ed9833eedd930f2df5` |
| 3 | `abbrev` | [NonUnitalAlgHomClass](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/nonunitalalghomclass.md) | 80 | `declaration-track:e71690f726cddaaa88ebeab044a3cfcd15012db55eca7023e3fc5e9f1725ea50` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-6.md) | 88 | `declaration-track:4a071e156c3d82f472dd4b00b146e4c1e4e71fa62249be5e42197808952a72a6` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-3.md) | 100 | `declaration-track:1655ffa08bf371167f5271e3f6a5ee20ef008c2a1265123cb0f318f6bc133773` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance.md) | 107 | `declaration-track:098657c957d55aefd17fcf9c1fbc1bbd16436f679e75f41b8cea51cf918cb9bb` |
| 7 | `def` | [toNonUnitalAlgSemiHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/tononunitalalgsemihom.md) | 114 | `declaration-track:cd924366402153228d04d68a884ad0fd42f2cb0e7022583c8c48e16783c40012` |
| 8 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-4.md) | 122 | `declaration-track:1d25e0fa0a2bf49f81a1195836dd3ac8c589f46f36a23fbc6bf4139a174ef0cc` |
| 9 | `def` | [toNonUnitalAlgHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/tononunitalalghom.md) | 132 | `declaration-track:323d89c786490152524848d19b9b623f342a2421dfe6dd146da582ba4ac1fd4d` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-5.md) | 140 | `declaration-track:3f765b2615aed49987aa789ecb7fc0b7c82dc0bbecf26a6bf9a56b06fd55ae12` |
| 11 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-7.md) | 157 | `declaration-track:6b8395a941ff8149ffb346374b3a2bb16c205721fcb34c2a3298a030e257cd88` |
| 12 | `theorem` | [toFun_eq_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/tofun-eq-coe.md) | 162 | `result-track:e783268451c6742508d807abd114874d6d241f8003b233ee95dd93480b775783` |
| 13 | `def` | [Simps.apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/simps-apply.md) | 166 | `declaration-track:ec7ad5069776146756be1509fb38993749f08a4975fdd3cde3aed8658f187ede` |
| 14 | `theorem` | [coe_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-coe.md) | 173 | `result-track:578893f68100ac2e32aeefba71314bb9c679896677589d51d79bebd7dbf31b4e` |
| 15 | `theorem` | [coe_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-injective.md) | 178 | `result-track:35d60210d55cf7516e03c75ffd142ff43e9db335fcb3901bf0ed990e3d77a0f1` |
| 16 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-9.md) | 180 | `declaration-track:756dde8ecac56eb87cdcbd4f420b6212ce0bcf2e4c0237ef26de0d581b69dd57` |
| 17 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-2.md) | 184 | `declaration-track:0efe6297452e135263e94799dc6744f27bec668690cdf6ad6e8e0d128717631e` |
| 18 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/ext.md) | 191 | `result-track:76dc5fdf8ede924860441406f488bb37029e5dd75f5df31b31966be2c37f4ee7` |
| 19 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/congr-fun.md) | 194 | `result-track:4e42d91ad4387ad2d53892d46491d49a98b75c755ea66c4c04dd12ac5167ed24` |
| 20 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-mk.md) | 198 | `result-track:3c45420daa601c6791020e80dacb128250f04eeeb245f8a452aaebbd54b819b4` |
| 21 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/mk-coe.md) | 202 | `result-track:50cbbfd45e060bc6cbf880b375195d8e36b9fff4a071a1278d03aec2eeaac501` |
| 22 | `lemma` | [addHomMk_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/addhommk-coe.md) | 205 | `result-track:5cae1dab89d277ba3e54c437acdab6989b775c312f2ba750fd0d75569e90ac59` |
| 23 | `theorem` | [toDistribMulActionHom_eq_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/todistribmulactionhom-eq-coe.md) | 208 | `result-track:a9d708c7dc90ef380a6de43830be8b60a859b8820b1fa43eb10eed3c1cfcce3b` |
| 24 | `theorem` | [toMulHom_eq_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/tomulhom-eq-coe.md) | 212 | `result-track:e98e258a4dae3db791dd5b9b3d944da95dbc5e54e9acedd466d747431674f37f` |
| 25 | `theorem` | [coe_to_distribMulActionHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-to-distribmulactionhom.md) | 216 | `result-track:9b69767509ecbf858a27b42a73ef1230a4c700036c8cfa861bab27e724bb291a` |
| 26 | `theorem` | [coe_to_mulHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-to-mulhom.md) | 220 | `result-track:8cf033682292e370be49e4b158ede0dab12ab1633840990316b7580e77853974` |
| 27 | `theorem` | [to_distribMulActionHom_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/to-distribmulactionhom-injective.md) | 223 | `result-track:d816f0f479e92311651584ca7856278137c799e94ab237be7c56aa2aa327ac0a` |
| 28 | `theorem` | [to_mulHom_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/to-mulhom-injective.md) | 228 | `result-track:94a28588b8b268a84b19f1fcc0ba6240f6c0f9496bb33c794f96c9a917ac8916` |
| 29 | `theorem` | [coe_distribMulActionHom_mk](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-distribmulactionhom-mk.md) | 233 | `result-track:fcdcc986d8dbc4c052d3f304aeb98f1da421bba2e70b0e3489ad5c92b8bbe988` |
| 30 | `theorem` | [coe_mulHom_mk](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-mulhom-mk.md) | 238 | `result-track:842f18eff74d669c9a32e28c283627f3be23c722c1d040b820fde22d3e008918` |
| 31 | `theorem` | [map_smul](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/map-smul.md) | 243 | `result-track:2031376f464dda91e5a30af46b237dbb00a14ea36a24fa8f492eed126a028a80` |
| 32 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/map-add.md) | 246 | `result-track:a8ede5404411b4c1ab4c91e6cf5bde462cf77992144bc36c401c66a413dea52e` |
| 33 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/map-mul.md) | 249 | `result-track:6af9021510000643ab795752dc51a0d0c4e690358889693e9664c20cd4c02540` |
| 34 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/map-zero.md) | 252 | `result-track:7dcd1600672224ba08bf372ff86ba36959a28c8f457f71a7ca9640010bd4e092` |
| 35 | `def` | [id](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/id.md) | 256 | `declaration-track:9c64c3074f863a280d2b4d0208b721309d574a98cb7a73d9a853efb2e887fe05` |
| 36 | `theorem` | [coe_id](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-id.md) | 263 | `result-track:84872c2163356b04f7ef3b3a3dc9ca8972b93e67ac4e538292dbc33b5d1ec5c3` |
| 37 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-8.md) | 266 | `declaration-track:723346215773dbbd42ac52d245188f1fd9bb41094f570100a9a37d77846c5014` |
| 38 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-12.md) | 269 | `declaration-track:f67ab04124a2146f99026bfab7621c5f59e8d58b4c9b20f232e90d8f6f4f5669` |
| 39 | `theorem` | [coe_zero](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-zero.md) | 273 | `result-track:70d7028c82737d2b7de510f110cd78c45c8e39b4f3c4522b2ecc75c10d1ee8e2` |
| 40 | `theorem` | [coe_one](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-one.md) | 277 | `result-track:97533687e788a237aca9d7e6ad3d384ab988a43b72d93d57230eaab91aa7319e` |
| 41 | `theorem` | [zero_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/zero-apply.md) | 280 | `result-track:0994a15a487d02cfd901be8978c1e9d4194489e10502f5ad638b3671bfd92c9b` |
| 42 | `theorem` | [one_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/one-apply.md) | 283 | `result-track:84be858c0975744a6e0f06c18cc9b73dc4a1ba3be79891f24f104c09ec75ea7f` |
| 43 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-10.md) | 286 | `declaration-track:aa388a855a1ef83283aaf9d79a5c3d053aa3fbca987cabc763803c9b1b1e60f3` |
| 44 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/comp.md) | 293 | `declaration-track:a5189ec3d7aefd799b0334d132c13839e4a457ca73458b5794beecd336c47ecb` |
| 45 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-comp.md) | 298 | `result-track:59ebd8b4d979931fd73da2abbc2601a622c60776ae96185273d8496072b89362` |
| 46 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/comp-apply.md) | 301 | `result-track:db5d14b7e8c25e15dacf02c8ffdcb20324b7fcb02cc230d35b97b96083513087` |
| 47 | `def` | [inverse](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/inverse-source-edition-2.md) | 307 | `declaration-track:68e52dbccb73cd7292ad84c12cd18cdc3783ffa04820a4a0656106346cad7abc` |
| 48 | `theorem` | [coe_inverse](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-inverse.md) | 313 | `result-track:0e786932522414a714694a52e299e2ad82f40f5932c417012291482f7c149df5` |
| 49 | `def` | [inverse'](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/inverse.md) | 318 | `declaration-track:469e5c73a243da88c366fe03584981ea22da67712a036b12412b1c66018ba972` |
| 50 | `theorem` | [coe_inverse'](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-inverse-source-edition-2.md) | 331 | `result-track:10df1732579ea02511ac101fb7d0bfe86fb333d7594b02e3065885e43a593868` |
| 51 | `def` | [fst](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/fst.md) | 349 | `declaration-track:a8a56aff808558fa864c7ffc0281017c4b39a7640e5d423a4a8a570f701aed14` |
| 52 | `def` | [snd](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/snd.md) | 358 | `declaration-track:f718777ba0255b785b0495e532c5708183fa680ec01347b814936d3f354b13eb` |
| 53 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/prod.md) | 370 | `declaration-track:1ed7977fa7fa8a9d3e06418ccf3d4558876a57d72a52fc4a6df8f780dd6c4e54` |
| 54 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-prod.md) | 377 | `result-track:ca645f62da431305577041fd1e9426cf315f3c595c6609b4c41429553f1c7d12` |
| 55 | `theorem` | [fst_prod](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/fst-prod.md) | 381 | `result-track:a3dc2a2f5bfbd1a46bdfbb0147cc53c11ccba395b2e6e29fa9092a6408fffae9` |
| 56 | `theorem` | [snd_prod](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/snd-prod.md) | 385 | `result-track:f988fd8391646b0a18a6a8c40d2c054d0b3abff3bc97c63138065768bfb95df4` |
| 57 | `theorem` | [prod_fst_snd](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/prod-fst-snd.md) | 389 | `result-track:d3bd1982c9982ebb265b6bb2c01fc98a61242339a02dd3cec95c9af325091f1d` |
| 58 | `def` | [prodEquiv](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/prodequiv.md) | 395 | `declaration-track:bb08279e80c675c376736dfc2c5c00e04d67459f4bd83855a299f79fc041f1d3` |
| 59 | `def` | [inl](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/inl.md) | 404 | `declaration-track:0e606e08636ec9326d19ddd2e74c2f0e51ab944afec4a95be5f6f8efa63e30a5` |
| 60 | `def` | [inr](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/inr.md) | 408 | `declaration-track:691909a4eaf0c3fa35946deee0f82dc0c14175ebbc55f79116bc36d41b08f7a3` |
| 61 | `theorem` | [coe_inl](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-inl.md) | 414 | `result-track:0111b4b95ff441bbf94f611b0bddb700694b51edb2f90c40baf219cf1801f2f0` |
| 62 | `theorem` | [inl_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/inl-apply.md) | 417 | `result-track:ad652484f19936e13ed37f40437fa6546c40984dc364d93041f95236a38dc8a8` |
| 63 | `theorem` | [coe_inr](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-inr.md) | 421 | `result-track:75372c705bab91856cbd2beff007be9aecc400e65efb30196fcc0a12752eee0a` |
| 64 | `theorem` | [inr_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/inr-apply.md) | 424 | `result-track:4ad3deedaeb1561c49ed5e1f0c8d86d601555472f5ee8dc1623c8bbc44de1ef1` |
| 65 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/instance-source-edition-11.md) | 440 | `declaration-track:d0d55437e67402d87c22f15a4a352ccca7dfcfb7efda1121ce52a69f4ac23845` |
| 66 | `def` | [toNonUnitalAlgHom](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/tononunitalalghom-source-edition-2.md) | 445 | `declaration-track:e026d306b8db61dace5d78b89c9fc14bbf406aeccf4ad91566c88f62ea90aa9c` |
| 67 | `instance` | [NonUnitalAlgHom.hasCoe](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/nonunitalalghom-hascoe.md) | 448 | `declaration-track:945b80d783b8ae0e7c8ada2c03ab58c6b3a4b4969ddf4be4f38f7d8543647e68` |
| 68 | `theorem` | [toNonUnitalAlgHom_eq_coe](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/tononunitalalghom-eq-coe.md) | 452 | `result-track:fe085e51a64bdf2734c7b6447fcdde326e09be61a7ebba7536e78ef6d7241907` |
| 69 | `def` | [restrictScalars](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/restrictscalars.md) | 468 | `declaration-track:34a15520d2f4ad51e55dd4530187fbb1c481a711d1e33c824c815c06583ad8b6` |
| 70 | `lemma` | [restrictScalars_apply](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/restrictscalars-apply.md) | 473 | `result-track:cf22463382287bee6d877470ac9f853b533653d630ceb6737b75254dd69063c7` |
| 71 | `lemma` | [coe_restrictScalars](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-restrictscalars.md) | 475 | `result-track:554d41273ea5afe63e20165a545216cdbee573f0611da728e7f3a2b4a78dc0da` |
| 72 | `lemma` | [coe_restrictScalars'](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/coe-restrictscalars-source-edition-2.md) | 477 | `result-track:974fc41ecf32f892ef2f9816723e4ad359c051b712ed669e0bc51491bdb5b25f` |
| 73 | `theorem` | [restrictScalars_injective](../../../../AssociativeRingsAndAlgebras/NonUnitalHom.lean/declarations/restrictscalars-injective.md) | 479 | `result-track:722ea4fcf2279b533ea2ad07834d6ce9aceac1784bcab7cacc7ea43d8c9652c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=940049ec7444411886e07f7d531c94db6b3df6e314170b95925282b49a8b0df8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/NonUnitalHom/Variant15fe70d64adda52b60da8d17f83d20547465811f39083f9580d34c425a75cbb3.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/NonUnitalHom/Variant15fe70d64adda52b60da8d17f83d20547465811f39083f9580d34c425a75cbb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
