# Verification target: Algebraic Geometry Structure Sheaf To Open Germ Apply

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb",
  "lexical_observation_count": 98,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ba95e0ca6739fb5e4e9b6f561c9da81ef9e5fcb`.

Source path: `GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Instances` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.AtPrime` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Spectrum.Prime.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimeSpectrum.Top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/primespectrum-top.md) | 67 | `declaration-track:126ad99f71348605d53f781254a0361f42af20fd4df827b6096d385217000323` |
| 2 | `def` | [Localizations](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/localizations.md) | 74 | `declaration-track:1501862eb70021a6fb0ff649fc0011a1770504eb2f9664869b55617e12a68bd4` |
| 3 | `instance` | [commRingLocalizations](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/commringlocalizations.md) | 77 | `declaration-track:5b4028af420d9759789ee3a95a6a8b8bbe563f4c47ff59499f2c747f757289c5` |
| 4 | `instance` | [localRingLocalizations](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/localringlocalizations.md) | 80 | `declaration-track:2f28d21e268ed5b2da51d4a2c61ff1da2dd00ec93b850b928375f4a2d0b778bb` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/instance-source-edition-4.md) | 83 | `declaration-track:9cde3a04c660ad00ae305d9bae66e8cf45c01eca51e38b562e5b5d89174f8b88` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/instance-source-edition-5.md) | 86 | `declaration-track:bd392902c58273e8a06438ec85f72ae2c65558ed440a9c3fee951241ccd446e7` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/instance-source-edition-3.md) | 89 | `declaration-track:75ce628769c78f83e3e0d289c1581f8835686f6afb8885ad1a87e2e4d6b18ee7` |
| 8 | `def` | [IsFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/isfraction.md) | 98 | `declaration-track:b5ae7635ba500ea40d63f3a08670c09b166187fdd723b1ee64f45d997aa40496` |
| 9 | `theorem` | [IsFraction.eq_mk'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/isfraction-eq-mk.md) | 101 | `result-track:a77cee147f26a522ec762db7924b01c3e0b3b2c1c3c12da7e4318d25093b47d3` |
| 10 | `def` | [isFractionPrelocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/isfractionprelocal.md) | 118 | `declaration-track:f76ae0e4978ad497fa4e411b01e09484ae9bc78703faa9a5cd623acb818f2328` |
| 11 | `def` | [isLocallyFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/islocallyfraction.md) | 140 | `declaration-track:658f26c6ba06b0a87519ed9e862a8c3773f690a3f8da113d79b95de178584933` |
| 12 | `theorem` | [isLocallyFraction_pred](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/islocallyfraction-pred.md) | 144 | `result-track:9dc0992c6ffaf7e9564d980b4706b0c62dfc303680d8c10856fdb195a8839db3` |
| 13 | `def` | [sectionsSubring](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/sectionssubring.md) | 154 | `declaration-track:d16664d4397b5d1d086b202c652b9a72288384a9f9094e8e226560e37b545a40` |
| 14 | `def` | [structureSheafInType](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/structuresheafintype.md) | 212 | `declaration-track:8b3c789a92f874e7aec4d86ca50c33055fc890ed0ecb3d2dbe5a3b99308b5935` |
| 15 | `instance` | [commRingStructureSheafInTypeObj](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/commringstructuresheafintypeobj.md) | 215 | `declaration-track:73a95cd38df652ec59e3cd451ed93e2c82c71f2a088ce4dc05fdb6179a0a364d` |
| 16 | `def` | [structurePresheafInCommRing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/structurepresheafincommring.md) | 225 | `declaration-track:068a824155fcb49354e86fa62a0c4ab77ac98e683116b607d243ba7bd1bdd9be` |
| 17 | `def` | [structurePresheafCompForget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/structurepresheafcompforget.md) | 237 | `declaration-track:d429872f3683df5cf2054e2a531c81bc767d614791a78ce66cf7ece13b16b15f` |
| 18 | `def` | [Spec.structureSheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/spec-structuresheaf.md) | 247 | `declaration-track:6d88c840ca787205585fdd49bd2f0d2505f0e170ae7b49f6a4bec1e139f86e58` |
| 19 | `theorem` | [res_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/res-apply.md) | 259 | `result-track:26472aa8f52a709ac9636016a6751230442868126eadd47486f4f9eba6714991` |
| 20 | `def` | [const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const.md) | 290 | `declaration-track:aedfeb0056aafe156774b8f8dca0a253c75da70f1ee368be499921bea8667ee1` |
| 21 | `theorem` | [const_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-apply-source-edition-2.md) | 297 | `result-track:fc27fd3f2785567f3fab8bdf277cc8b8e60c4995fced222b69fdce69742fa88a` |
| 22 | `theorem` | [const_apply'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-apply.md) | 303 | `result-track:80b18c1cb8c8375183e10d3ced5cc5f05c7afd094ab2a71da5a88e8d4938be42` |
| 23 | `theorem` | [exists_const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/exists-const.md) | 309 | `result-track:faca2b00e5f891b94edf6fb01aef598dfce073772dd5b150da9e0a1e16765394` |
| 24 | `theorem` | [res_const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/res-const-source-edition-2.md) | 318 | `result-track:838adb4ddbe36d1b9ae092e0d02651494306aff5610840aa31990aaf1f726fad` |
| 25 | `theorem` | [res_const'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/res-const.md) | 322 | `result-track:4ddef599b9b785af486398c22158ce5763d5e8cdd7a470e48167fdbf4330729f` |
| 26 | `theorem` | [const_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-zero.md) | 327 | `result-track:c49ce006d6ceafd48395efde7838081715f20bf885608af1ca403729f475caf0` |
| 27 | `theorem` | [const_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-self.md) | 332 | `result-track:9a58a775398e7c88f8779cb4a0e62f63d2b5b123423e5d9d83265ffca3dfe126` |
| 28 | `theorem` | [const_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-one.md) | 335 | `result-track:3d0c2302d54ad3dc2bcff5211b72012aaa53b97443442f7d9800823e136c7d0d` |
| 29 | `theorem` | [const_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-add.md) | 338 | `result-track:66141fd546f17afd98d02e2ca7ccfaa6f7b7e276ed091b989bb585a7535f98e1` |
| 30 | `theorem` | [const_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-mul.md) | 345 | `result-track:ed68a026cf11d06295eb33c8a53d97c175af3533fa328887dcb755a48c5f94c9` |
| 31 | `theorem` | [const_ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-ext.md) | 352 | `result-track:93be369baa7f3719ec748a2fccf7370842590e6e88c8ccf873e5ecee1449c712` |
| 32 | `theorem` | [const_congr](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-congr.md) | 358 | `result-track:eb3a71adc982700961b5b2e1dce2bd59ec49e432debfe17ac1f4a97e566b4754` |
| 33 | `theorem` | [const_mul_rev](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-mul-rev.md) | 361 | `result-track:3d26c430bbedf2aef82487f7c40dc17a5d6e4ef723e6bb8a734ada82edd5412a` |
| 34 | `theorem` | [const_mul_cancel](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-mul-cancel-source-edition-2.md) | 364 | `result-track:72f44beee3414c9bb244d89d159939fe390730fd3d608271ec097e1dce6a6b52` |
| 35 | `theorem` | [const_mul_cancel'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/const-mul-cancel.md) | 368 | `result-track:15a47bcb04bd6b4c6456985b23e73de180e32451e77fec792d29769b9736607f` |
| 36 | `def` | [toOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/toopen.md) | 374 | `declaration-track:32635b9129d32100f3120bbd370181957b864a962d6c261644b3856c7e7c676f` |
| 37 | `theorem` | [toOpen_res](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/toopen-res.md) | 386 | `result-track:0ae3e96fbf8498b2c718390c5d411cc63b7e818419be14c7f739f5f478d8381d` |
| 38 | `theorem` | [toOpen_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/toopen-apply.md) | 391 | `result-track:7602a947de92c99b84b1988ee968e24218700d0055479e8a9ceb6cbc646dc12b` |
| 39 | `theorem` | [toOpen_eq_const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/toopen-eq-const.md) | 395 | `result-track:3958df77ad974b74612439d6afb5a6510b7bf85791eaa52896d50659b0a523db` |
| 40 | `def` | [toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/tostalk.md) | 401 | `declaration-track:8accfc89a19571aa2187a4397a5cb48321ef05dccf7bd4b8ef0292d34cc4d5e0` |
| 41 | `theorem` | [toOpen_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/toopen-germ.md) | 405 | `result-track:f62c796e6a838651e15225d5f51f4e963a339955fd73d6a511466b0fee7f560d` |
| 42 | `theorem` | [germ_toOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/germ-toopen.md) | 410 | `result-track:482b4920ca3a72676995e1644e04237341bd83ed2b0879025081270c41ba4c18` |
| 43 | `theorem` | [toOpen_Γgerm_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/toopen-germ-apply.md) | 415 | `result-track:0f985cc494aa4087794a156331ce9978598164db7b78d9212fe9b8b55165dc91` |
| 44 | `theorem` | [isUnit_to_basicOpen_self](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/isunit-to-basicopen-self.md) | 419 | `result-track:9a0847140a11bab28776a1db347a980531e823f878cdda16c08acad27dc52cec` |
| 45 | `theorem` | [isUnit_toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/isunit-tostalk.md) | 423 | `result-track:2152d7fe5dc0b089d2ca4cc4d9d3df88b41ec5ad899644d18802fd48a95a9a8b` |
| 46 | `def` | [localizationToStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/localizationtostalk.md) | 430 | `declaration-track:2522936a1e9da09d7e7ef2e6049c4be5bee77a0e30778cf068e5e84433c6858c` |
| 47 | `theorem` | [localizationToStalk_of](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/localizationtostalk-of.md) | 436 | `result-track:4ee3f9f4815038a21fefc7b24e5654368e051285a3a0dc504a2bd25cd9d1061a` |
| 48 | `theorem` | [localizationToStalk_mk'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/localizationtostalk-mk.md) | 441 | `result-track:fb9c1d109bfc0fc39c5eb3e5f1a892ea5928cc148b308ecee6b72c6696c5be3d` |
| 49 | `def` | [openToLocalization](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/opentolocalization.md) | 453 | `declaration-track:b1202d307087ec313637870526bd26e047e4ba93344c7a53dfd0b86b9a039e10` |
| 50 | `theorem` | [coe_openToLocalization](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/coe-opentolocalization.md) | 463 | `result-track:a25ea9fdc2319c496ca3f73c7640c82cd615a8ace2e9836abfaa0f5808b9041f` |
| 51 | `theorem` | [openToLocalization_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/opentolocalization-apply.md) | 470 | `result-track:5cd25228afd0bb1c2096e3e73fe50320059fd98e48cd56fa3dbc1bcbb55fcbee` |
| 52 | `def` | [stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/stalktofiberringhom.md) | 478 | `declaration-track:70702605e975eddb246dca09ab4a61ade32cc2f542e7b7fc8641e9bb66b161ab` |
| 53 | `theorem` | [germ_comp_stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/germ-comp-stalktofiberringhom.md) | 486 | `result-track:454d7be69f5e000582b807f4cd18581a01ea4e02a006d321552df26fe10bd4e5` |
| 54 | `theorem` | [stalkToFiberRingHom_germ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/stalktofiberringhom-germ.md) | 493 | `result-track:0f8356136167807dbd8cf8b5ec435f6b69d66784bfed65262e19c485a1181674` |
| 55 | `theorem` | [toStalk_comp_stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/tostalk-comp-stalktofiberringhom.md) | 499 | `result-track:d7809ed3d53a6f34b11e32c83af21007446b7c77b72a7c03d0fe3bd4e8aa26e7` |
| 56 | `theorem` | [stalkToFiberRingHom_toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/stalktofiberringhom-tostalk.md) | 504 | `result-track:88c12812bfff58e573660f9e74a4edd486405667bfe533b9f32b59dc39c21f7f` |
| 57 | `def` | [stalkIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/stalkiso.md) | 511 | `declaration-track:9f40547551215e7b7ff485dd4bcacec5821ea55e7a9999f3450fcd94945fc1f3` |
| 58 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/instance-source-edition-6.md) | 538 | `declaration-track:ca88c9e0ba9b80256499656753fc7e6ae8881736a66015c625e2da5f6770de74` |
| 59 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/instance-source-edition-7.md) | 541 | `declaration-track:e5c5da1c0486e0a8bd6d6b4dc9a762fb2df8ee38c4fe0b431f1426fa4aece8e6` |
| 60 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/instance.md) | 544 | `declaration-track:2431a59f224702fc1592255263174de3dc2a2c184ba70dd2d2b1b36733bb1555` |
| 61 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/instance-source-edition-2.md) | 547 | `declaration-track:57a09824ea7c64a058b9430856b08e8c907fba6fb4598d191ca2c92684cd79c7` |
| 62 | `theorem` | [stalkToFiberRingHom_localizationToStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/stalktofiberringhom-localizationtostalk.md) | 551 | `result-track:ff5f88ec6c8b325dcb4a0d5bff776c15d69c703cde09314f4e96bcb38342f687` |
| 63 | `theorem` | [localizationToStalk_stalkToFiberRingHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/localizationtostalk-stalktofiberringhom.md) | 556 | `result-track:2e15b7ff3b4fe140d195edb2bff06bdd8588d46e1d01bb0b90885502e1e1cb02` |
| 64 | `def` | [toBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/tobasicopen.md) | 562 | `declaration-track:127e6bc948e7e2df65dc073dfbd78dafca0b790a4fc8c2e26f05c16880fff1d4` |
| 65 | `theorem` | [toBasicOpen_mk'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/tobasicopen-mk.md) | 567 | `result-track:b6503ef8b711a96ac97cb7b65428919dce28256286713c66bb5646c4b90c6d85` |
| 66 | `theorem` | [localization_toBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/localization-tobasicopen.md) | 574 | `result-track:be8b1be23090c3aa3c7bf8694fa3d4d6349f0ca22f6f96dd91d2f723f8a14889` |
| 67 | `theorem` | [toBasicOpen_to_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/tobasicopen-to-map.md) | 581 | `result-track:5c16cdcb7a06bbc4816628ef9ad2a0caa452ba75ef44980c301acf8a4f455477` |
| 68 | `theorem` | [toBasicOpen_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/tobasicopen-injective.md) | 587 | `result-track:351d742af0a1cef0750ad67212ac98d1efc8596f86558d88624d19fb256d621b` |
| 69 | `theorem` | [locally_const_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/locally-const-basicopen.md) | 620 | `result-track:f90c50c0f32fe402738b799b23cbccb5e49045927e5033010298877efd36d20f` |
| 70 | `theorem` | [normalize_finite_fraction_representation](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/normalize-finite-fraction-representation.md) | 660 | `result-track:cb462a86f71c2a0edced03f9e3c5c6a1e84bcd232c809be8d41f9fd367a539d9` |
| 71 | `theorem` | [toBasicOpen_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/tobasicopen-surjective.md) | 748 | `result-track:918e88985ce25fbb3b5c959c9811d65cac69a7f70ee5bf6705be9dec3c772cf4` |
| 72 | `instance` | [isIso_toBasicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/isiso-tobasicopen.md) | 829 | `declaration-track:fba4b3b4287dcf1e85df2d806e5676419c5997d37e6f8572810d18b81cae96e0` |
| 73 | `def` | [basicOpenIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/basicopeniso.md) | 837 | `declaration-track:7c886df196f8806937ac13f9a6057232effdc51db70ab289f337312196c0f1a3` |
| 74 | `instance` | [stalkAlgebra](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/stalkalgebra.md) | 842 | `declaration-track:d6709b34e0db23815e898719bca6d21c23d1ad124396e3fda80b3acc8737abe2` |
| 75 | `theorem` | [stalkAlgebra_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/stalkalgebra-map.md) | 846 | `result-track:838cbcf39452e570f01bc6cccdf4d5906cd67ff0e1aee7141c2e18ddb1018efa` |
| 76 | `instance` | [IsLocalization.to_stalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/islocalization-to-stalk.md) | 851 | `declaration-track:51e50a0da7658f2b27a3313e86d0dc1832eb4b15903f4d6c58cf6605fbce1d28` |
| 77 | `instance` | [openAlgebra](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/openalgebra.md) | 864 | `declaration-track:d23fa72623833c3414a0bae3a083aa7eba6c52f91ae94d630fa851420806ddd0` |
| 78 | `theorem` | [openAlgebra_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/openalgebra-map.md) | 868 | `result-track:7b68209c93977a7dcb190747b92e0639f68c7fda92ddea0345b7c57aa8172187` |
| 79 | `instance` | [IsLocalization.to_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/islocalization-to-basicopen.md) | 873 | `declaration-track:478d57b08eae046e2549d9574dd5278ccdd80895bdcb3714d844f668d622773e` |
| 80 | `instance` | [to_basicOpen_epi](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/to-basicopen-epi.md) | 883 | `declaration-track:cec4296b2396521cef1590db098cd4bc61317ba0771cf252bf9042abfdfe2910` |
| 81 | `theorem` | [to_global_factors](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/to-global-factors.md) | 888 | `result-track:e4bd5c3f7835d33e5bcf513edd6d7797ead48dc18dc2309f66a0768ce0cfe152` |
| 82 | `instance` | [isIso_to_global](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/isiso-to-global.md) | 899 | `declaration-track:c47ba99d323941ed8222c3979b2489b5ef836993115a9b768f9a3964a30f7759` |
| 83 | `def` | [globalSectionsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/globalsectionsiso.md) | 908 | `declaration-track:1bba9de2419a9b75f0c4bab6298ac10279b07b0476d82290f16b121a24a8f340` |
| 84 | `theorem` | [globalSectionsIso_hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/globalsectionsiso-hom.md) | 912 | `result-track:9abc4709138454b93af4d47e202c7d036e6eb5c365e2ce9114c41efe28933648` |
| 85 | `theorem` | [toStalk_stalkSpecializes](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/tostalk-stalkspecializes.md) | 916 | `result-track:6bdf7c28594bb24f5baf59c7ffda489e7af05cfe09a9cb8752ddc2b544e6f87e` |
| 86 | `theorem` | [localizationToStalk_stalkSpecializes](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/localizationtostalk-stalkspecializes.md) | 921 | `result-track:d0dfaf76e5307e2df08db88dd21f4511dbbc40384118811193142200ed320da5` |
| 87 | `theorem` | [stalkSpecializes_stalk_to_fiber](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/stalkspecializes-stalk-to-fiber.md) | 934 | `result-track:579bfefb16484fc9521756398132d1634ff48adc487fe8113b3c80d9ccef1ce8` |
| 88 | `def` | [comapFun](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comapfun.md) | 958 | `declaration-track:905265d1d553cd903883cafaf12b05fa5816b3c2d1f97a85c4228b8e1ff66dd7` |
| 89 | `theorem` | [comapFunIsLocallyFraction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comapfunislocallyfraction.md) | 964 | `result-track:d451e75ef6df66f03e9101ec2e746899bc0d05f2cf1f31463327512d2adf13eb` |
| 90 | `def` | [comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comap.md) | 990 | `declaration-track:cfadb0589c8b62fba2ecd02f89e502205f075cc22cde45d7bff5799fc77bb3d7` |
| 91 | `theorem` | [comap_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comap-apply.md) | 1020 | `result-track:4e8162f7b82ff9cb5be5b185f5a995e839c325ab105f960c3210515486c681d4` |
| 92 | `theorem` | [comap_const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comap-const.md) | 1028 | `result-track:01bb2039e1e4f0ab5ba7cb9edb14879f12d5deb7f33bf4f5fb884b217635ea5c` |
| 93 | `theorem` | [comap_id_eq_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comap-id-eq-map.md) | 1043 | `result-track:ff1eeec74ffe9a88eff7efcf6f166eb549455069087e032323082e7b02b7c7be` |
| 94 | `theorem` | [comap_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comap-id-source-edition-2.md) | 1066 | `result-track:fbe21058baebeb50eb6c6d1b1b295dad6bcb2791f591fac70489d54484e35d10` |
| 95 | `theorem` | [comap_id'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comap-id.md) | 1072 | `result-track:581f18b6b015537460d45c830fa56af68c00512927484f62cd9714194f9797e4` |
| 96 | `theorem` | [comap_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comap-comp.md) | 1076 | `result-track:adce7d44deb8964e8b979b63a1a8a1745a9a33fef8a0ed6637bdf590f3cc4518` |
| 97 | `theorem` | [toOpen_comp_comap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/toopen-comp-comap.md) | 1088 | `result-track:629b0388a67c1144096c66aeb40358e6119027d30b34f8209c961187885ff2f1` |
| 98 | `lemma` | [comap_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryStructureSheafToOpenGermApply.lean/declarations/comap-basicopen.md) | 1095 | `result-track:d899960c772d32ab0f285669fb061508bde98d6eb5d357e70e944c0419685d39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a72ed8766c98c0de557236bb953b065a840dc7cf7eb44e3ac8983bbf1edac68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean","GRWTSK/_verification/specifications/Algebra/StructureSheaf/Variant7f97b3e8c8c2ec8a97116c19ec2d7dbbd78cef0ed832a6d98f19e1295d0a0db5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
