# Verification target: Ring Hom Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a85899d6573801a37704fcdeaedbd1ba4b9baa8c",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant4e105d8c48147a0e76bc0161f43c075522a6a033948691ec6a7e9631173466ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a85899d6573801a37704fcdeaedbd1ba4b9baa8c`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant4e105d8c48147a0e76bc0161f43c075522a6a033948691ec6a7e9631173466ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant4e105d8c48147a0e76bc0161f43c075522a6a033948691ec6a7e9631173466ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/nonunitalringhom.md) | 57 | `declaration-track:018e1550d5b4a9b8de2ac248c489d80b405da511cbdfa517d38b467b62b44b6e` |
| 2 | `class` | [NonUnitalRingHomClass](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/nonunitalringhomclass.md) | 75 | `declaration-track:ddf6e7630b402aaafbcc3a015c46241d01c877742a59c83d472b74331444deb5` |
| 3 | `def` | [NonUnitalRingHomClass.toNonUnitalRingHom](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/nonunitalringhomclass-tononunitalringhom.md) | 85 | `declaration-track:dd6beb858e1e7af24fdd5e1835b3a5895473205fa87b564cf6e9e48466613c6a` |
| 4 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instance-source-edition-2.md) | 90 | `declaration-track:3d2f030cf0d8798ea97c907e4fd3ee837cd1709a1b1ee38577b422bcc1e23ec0` |
| 5 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instance-source-edition-5.md) | 101 | `declaration-track:6b5733ceb3732d42dbe5dcea138de9b94fd677836a866bdf0c846743c2bbcb8c` |
| 6 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instance-source-edition-4.md) | 110 | `declaration-track:6085c6cee5e4504f0adcdf1c74bd046e5bdc2c2edd366a519b260e0a26dab465` |
| 7 | `theorem` | [coe_toMulHom](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-tomulhom.md) | 118 | `result-track:6b7273960275bf2446a92dd86dc1dc4c02cc4ece9073902e3036ad4c14dd36be` |
| 8 | `theorem` | [coe_mulHom_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-mulhom-mk.md) | 122 | `result-track:01af271d9bfe955edbde76cc21c3b9a9e2d56719e89633235e5facafb0dce26b` |
| 9 | `theorem` | [coe_toAddMonoidHom](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-toaddmonoidhom.md) | 126 | `result-track:c01ce971329dbc08e990c895f9202b420f531f9a75fc6af0d7ea860c3be5e628` |
| 10 | `theorem` | [coe_addMonoidHom_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-addmonoidhom-mk-source-edition-2.md) | 129 | `result-track:840a4e4a8b3ec458961c5b4abf430c1fd55dd9a284be76a1ef806aea412198f9` |
| 11 | `def` | [copy](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/copy.md) | 135 | `declaration-track:4d30dc1981f4c7e844f85394ec7ff69152c317b5401b4c807d8cb092c740c62f` |
| 12 | `theorem` | [coe_copy](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-copy-source-edition-2.md) | 139 | `result-track:171ea3de652b3ddb337e9e00fc76826a57652730fab0a7182c9f9cc0c75feb3e` |
| 13 | `theorem` | [copy_eq](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/copy-eq.md) | 142 | `result-track:02447a1c1682ff17d861ca0fcce3d60ef559226566f8321932b5351b65405587` |
| 14 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/ext.md) | 152 | `result-track:9c855c5029c21a36d876af847b51c2422fc59d92b551aafedf078a37a7ae9fa0` |
| 15 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/mk-coe.md) | 156 | `result-track:78a9c82352d9c3e46e020e3e8e2514969ff0d660e5a44454207faa4a03a666e6` |
| 16 | `theorem` | [coe_addMonoidHom_injective](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-addmonoidhom-injective.md) | 159 | `result-track:80391d0244c1e6b9223eda4884af6150513ad4b1ff7bd175ea44e676220ac598` |
| 17 | `theorem` | [coe_mulHom_injective](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-mulhom-injective.md) | 162 | `result-track:f6cf57feb81e1ec6993fcd735bc22e6808e30c472229f15c771e2a6d5b801742` |
| 18 | `def` | [id](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/id-source-edition-2.md) | 170 | `declaration-track:d0a6d01474e0f9126358ce5f7a53fa1eb0d97eb89fbbd1b53b817a94702878ae` |
| 19 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instance-source-edition-7.md) | 176 | `declaration-track:87590d6af9228797913a4f822822ec17d138fb5d2923d864364f0c57e52f6d61` |
| 20 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instance.md) | 180 | `declaration-track:023f2582e401b2980c44384a9164b43295fbd85078ddec1debbb9cef3106be2d` |
| 21 | `theorem` | [coe_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-zero.md) | 184 | `result-track:812910289b8e969f08b0e4f068c89237344930aa1e5e08d8cb29aba22f7440dd` |
| 22 | `theorem` | [zero_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/zero-apply.md) | 188 | `result-track:45534c855a9f6ed794ad2d7a0deead0d0c55e0d83750c6a4b27b7b8bab614967` |
| 23 | `theorem` | [id_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/id-apply.md) | 192 | `result-track:234b28593611b4d193a7a1c2fff5c92afb5f31f1fdbe37456366a61879dc6132` |
| 24 | `theorem` | [coe_addMonoidHom_id](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-addmonoidhom-id-source-edition-2.md) | 196 | `result-track:6664a820102b8ed06eb17429c23d6227f023c653d4b60f8a9b6c606b8ebacb4f` |
| 25 | `theorem` | [coe_mulHom_id](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-mulhom-id.md) | 200 | `result-track:c48a80d4c2593d0d884a44aebf9e703a45e0241121f72505000f1f63e74be90d` |
| 26 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/comp.md) | 206 | `declaration-track:2fc55ff44bdd073f97843b4fabe9671fa5a7be0315cb7857b7201dcfb47553ae` |
| 27 | `theorem` | [comp_assoc](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/comp-assoc-source-edition-2.md) | 210 | `result-track:47123fab73ab52343d1c57875e0a61a5ffe36251b53a11c86a7f5c3ac5e090f5` |
| 28 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-comp-source-edition-2.md) | 215 | `result-track:503ecc2451b27e82d90bb07184a52ffe9bf9e3a1821ea7cc7e4ea11574a8649d` |
| 29 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/comp-apply-source-edition-2.md) | 219 | `result-track:5777b7232591a9f9ece4059f016b268e75de4f310db233917673f633d2fdc6ab` |
| 30 | `theorem` | [coe_comp_addMonoidHom](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-comp-addmonoidhom.md) | 223 | `result-track:d969115f2a2b076d68462f07e9e927285d11733284b3226f0968799ef625ab20` |
| 31 | `theorem` | [coe_comp_mulHom](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-comp-mulhom.md) | 228 | `result-track:26f157a7cc6368c65e083f6ad4aff733b2aa6ef2aafc5d364014ac2e154fe2e2` |
| 32 | `theorem` | [comp_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/comp-zero.md) | 233 | `result-track:c272f42c16a50f21b60c16917d3c0ee47abbced408f2cef4fc9d3128c2f7752a` |
| 33 | `theorem` | [zero_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/zero-comp.md) | 238 | `result-track:3a59000e8dadab403f4a44d057dc058d379f4afe6f95c80a8fc15d233479693b` |
| 34 | `theorem` | [comp_id](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/comp-id-source-edition-2.md) | 243 | `result-track:f88391a34b791b33b4e4888e40ec39b2e233cbd81f7ee5dbf2dcd48c3a89eb60` |
| 35 | `theorem` | [id_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/id-comp-source-edition-2.md) | 247 | `result-track:b330e27ce531434d5c34b02b0a3223dc603d0ba0343573e21c7a81726eebca57` |
| 36 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instance-source-edition-9.md) | 250 | `declaration-track:c9cba7d34f4971539fcd67ad42a059e2b509dc8636ffabc1c9e39f72f5eea7de` |
| 37 | `theorem` | [one_def](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/one-def-source-edition-2.md) | 260 | `result-track:fa16be84dc8539b11b1365b1be117ca4c350d6ead0a26e182d571c9fd0709425` |
| 38 | `theorem` | [coe_one](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-one.md) | 264 | `result-track:1894af1f2028b6c0ab262c727b2279019928bd17e8bcbaaffc19b4722856556a` |
| 39 | `theorem` | [mul_def](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/mul-def.md) | 267 | `result-track:38f96ce05eedfa6c23cdd43d80d3fef793a9fdef2ac4ee3229e7a95a7c58c18d` |
| 40 | `theorem` | [coe_mul](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-mul.md) | 271 | `result-track:028d87d35833f9c00955d9441c00a60f8a2130614451743b9dd6b6c8964f2885` |
| 41 | `theorem` | [cancel_right](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/cancel-right-source-edition-2.md) | 275 | `result-track:ce7ee8c56c203f25084d5584be2f51e17367d925283af8cfe2e01f6c36aaf408` |
| 42 | `theorem` | [cancel_left](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/cancel-left-source-edition-2.md) | 280 | `result-track:ba826b22b1c1038e0e0b439ac5742345aa2b4959f021a208473285f2d83b6014` |
| 43 | `structure` | [RingHom](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/ringhom.md) | 290 | `declaration-track:07dc6ca98ae08a154eba7a0aaa7b1ce8a017d9258765f6b7327e8f1533f0d875` |
| 44 | `class` | [RingHomClass](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/ringhomclass.md) | 320 | `declaration-track:920668cf7103dbb4e9db3e94e978e97c10002c320d661a0745f47acef6f56626` |
| 45 | `def` | [RingHomClass.toRingHom](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/ringhomclass-toringhom.md) | 332 | `declaration-track:67ebb20497c11daca8599303cd1d762a795e014fe0b3c118a5ce4ab5a9c02c13` |
| 46 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instance-source-edition-8.md) | 336 | `declaration-track:bec68ab86b855d449ab1c90bb5eca7647411343b0a1cb637f07c5fe9c235ea62` |
| 47 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instance-source-edition-6.md) | 339 | `declaration-track:84d8e2d2cdb21d607ec2a9fe09f38493f48fa950405986b986a723efc9ad1da4` |
| 48 | `instance` | [instFunLike](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instfunlike.md) | 355 | `declaration-track:f4aa96f587fbedcbdae1c48cd24d55aca7274d78da077a22d05d3e2e0929c46d` |
| 49 | `instance` | [instRingHomClass](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instringhomclass.md) | 364 | `declaration-track:8268c75d49d5a57d3100c0a00d750cb37d10533a4779c67ab1ad57638c4fabca` |
| 50 | `theorem` | [toFun_eq_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/tofun-eq-coe.md) | 372 | `result-track:a8d84494affd26e85e80e4f5185e55999ff45038208ab1ebdf3e8687454e1070` |
| 51 | `theorem` | [coe_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-mk.md) | 376 | `result-track:81a6af331f01093f74c6ad43534344bf7b0d864dc943b8200cd46b6d7a4b3393` |
| 52 | `theorem` | [coe_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-coe.md) | 380 | `result-track:b4e749f7a2a5ccf2a5ccd09073f8d5e8b5dd097ec6b84c127b27337f160cf8c8` |
| 53 | `instance` | [coeToMonoidHom](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coetomonoidhom.md) | 386 | `declaration-track:3b79f2fca6db01e5230e752099b8977e2869955d264521e3518d16adc369d83c` |
| 54 | `theorem` | [toMonoidHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/tomonoidhom-eq-coe.md) | 390 | `result-track:74e2538ba118f3e5b075a9087f6aaef97362342d2b550cf4995d82c355257cce` |
| 55 | `theorem` | [toMonoidWithZeroHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/tomonoidwithzerohom-eq-coe.md) | 393 | `result-track:d49fe51745dacc7977269f197383feb9be2357c01b1f6043f8897d01e599b135` |
| 56 | `theorem` | [coe_monoidHom_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-monoidhom-mk.md) | 397 | `result-track:6b7e306ef95386baaec737869580fa4e7baaa1947502bbadeb0c993f37c12643` |
| 57 | `theorem` | [toAddMonoidHom_eq_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/toaddmonoidhom-eq-coe.md) | 401 | `result-track:8bf0c9129e2b1c317dd0347d9fa400676405782959152513e2723006c6f93650` |
| 58 | `theorem` | [coe_addMonoidHom_mk](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-addmonoidhom-mk.md) | 405 | `result-track:2457a8e07641cce6a50b7f216d2cb2cd6d3b72dd67eb7c661b836aa77dcce3fa` |
| 59 | `def` | [copy](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/copy-source-edition-2.md) | 411 | `declaration-track:dac71a2f65a16ccf0d1bb426538c47beb98ad6adff8ffcce07b5eca5d5923dff` |
| 60 | `theorem` | [coe_copy](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-copy.md) | 415 | `result-track:0c53c6e3136c69c14cf64457ed7032f57d87c756fdbb89f107579b27c46cfc4d` |
| 61 | `theorem` | [copy_eq](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/copy-eq-source-edition-2.md) | 418 | `result-track:ee0cc54c2f36b0f422baf7d273ac79286fd94f1762c3445d535b61b55274b3c6` |
| 62 | `theorem` | [congr_fun](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/congr-fun.md) | 427 | `result-track:ea599e509609261373150f3de6fabae96a9ba49ebe04d9b6c3b1693a262aeb9a` |
| 63 | `theorem` | [congr_arg](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/congr-arg.md) | 430 | `result-track:853e64fb60c2347b31160d3cd488de60fda28eb099d7afcb4b9441645fdc7a01` |
| 64 | `theorem` | [coe_inj](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-inj.md) | 433 | `result-track:8fe2687bff1119dc477f3756f0444d24f1637b77924fd7a59e915d8445d2587f` |
| 65 | `theorem` | [ext](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/ext-source-edition-2.md) | 437 | `result-track:e9fa78225f59d55f86337eb5b9612617e6320f9d28ed1d8ccb8abc0ce6a8516f` |
| 66 | `theorem` | [mk_coe](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/mk-coe-source-edition-2.md) | 441 | `result-track:a7adb955622292be640379143c33aeec372ac16cbe126bbe08c02d83862e9c0c` |
| 67 | `theorem` | [coe_addMonoidHom_injective](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-addmonoidhom-injective-source-edition-2.md) | 444 | `result-track:8fec5485788e7e1f3948d9075494f7f1675359a984898780d250463e58b061fb` |
| 68 | `theorem` | [coe_monoidHom_injective](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-monoidhom-injective.md) | 447 | `result-track:2a03c2e8dba3a8830d5b8c20b9ac2db8eefeac302498972ae070832692243211` |
| 69 | `theorem` | [map_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/map-zero.md) | 451 | `result-track:e247033f417131b3e1706618f31bd9e8f89de61db982d391c71a6a2db0c9461d` |
| 70 | `theorem` | [map_one](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/map-one.md) | 455 | `result-track:85a20ff42552238218adc696f17056b2f8198b2e00134b0b18e8992d16d991b2` |
| 71 | `theorem` | [map_add](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/map-add.md) | 459 | `result-track:98d99740fe4ff7357019244d77dcc9987867e1fd47107629c31997a65ef959ab` |
| 72 | `theorem` | [map_mul](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/map-mul.md) | 463 | `result-track:0878f603853bc6768f57efee09ae0a84cc6c8bceb7f0eb1564328a5a7c233b16` |
| 73 | `theorem` | [codomain_trivial_iff_map_one_eq_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/codomain-trivial-iff-map-one-eq-zero.md) | 467 | `result-track:f02ee719c7ff82d5f6033d697c2b23d48719b8c30ab4a42b419cbe4b4c077b8b` |
| 74 | `theorem` | [codomain_trivial_iff_range_trivial](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/codomain-trivial-iff-range-trivial.md) | 470 | `result-track:05ce307a6e61adc2cdf9cf43ba22e9f80d03471eefb4df8d9ef5dfb9c70f41c3` |
| 75 | `theorem` | [map_one_ne_zero](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/map-one-ne-zero.md) | 475 | `result-track:1ef3a470cb53f24c32817ac8ae42d34652367e841a4b63135d80817dbf32a627` |
| 76 | `theorem` | [domain_nontrivial](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/domain-nontrivial.md) | 480 | `result-track:c5ba2178398ba1d6a6894381c97a2174d8d2eab7af124286b271c1eadda723fd` |
| 77 | `theorem` | [codomain_trivial](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/codomain-trivial.md) | 483 | `result-track:3d4a8178825f02649e476bfbf9bd0bfeabb400ddf497257699317ab3f35e6c5f` |
| 78 | `theorem` | [map_neg](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/map-neg.md) | 490 | `result-track:fd084c3f1c5121f9a9cd93c42717182fdda9a31b095d4a7cbdd463b1008c051b` |
| 79 | `theorem` | [map_sub](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/map-sub.md) | 494 | `result-track:f968d8f473ff333e1d4e7ea492b289f84b28f1591977b0c32513a9040863e896` |
| 80 | `def` | [mk'](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/mk.md) | 499 | `declaration-track:09b39d208e5f4434381a65f445c84ba455bd2a097b2d5ce49bf034e3e4fc7fdb` |
| 81 | `def` | [id](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/id.md) | 506 | `declaration-track:0406f92dd56e1e38219b6a6b178262274fd89ae3a3c55ad9f5a4773812b8e791` |
| 82 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instance-source-edition-3.md) | 513 | `declaration-track:554cf6c9d940bdcc718e7df47aa4bdbf664030c23e795d9136241e49882a0b91` |
| 83 | `theorem` | [coe_id](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-id.md) | 517 | `result-track:963adf5cdd2521c2d1052ccb8019b13cf1412b3093717e7b99b413bb150ea7b3` |
| 84 | `theorem` | [id_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/id-apply-source-edition-2.md) | 520 | `result-track:bde073949264f2c75adaeb68e7ed98dbed6169e43362c9346a1cd56fe28b06ee` |
| 85 | `theorem` | [coe_addMonoidHom_id](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-addmonoidhom-id.md) | 524 | `result-track:5dde9ea788062195d387cc8e49f0a7d15c622999a72224db132b382314cc02aa` |
| 86 | `theorem` | [coe_monoidHom_id](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-monoidhom-id.md) | 528 | `result-track:7166d344af55819343fcfce8f5a280b1281b92a459eb86b621b43a3a2baca316` |
| 87 | `def` | [comp](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/comp-source-edition-2.md) | 534 | `declaration-track:e7336d7ffdaf90489ae18893b2283237a33a5444d517d028e571438994aee691` |
| 88 | `theorem` | [comp_assoc](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/comp-assoc.md) | 538 | `result-track:1b9ad477c4c8264ccfca187ca2265895d69942af0bad433a4b45b347ccf09e07` |
| 89 | `theorem` | [coe_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-comp.md) | 543 | `result-track:4448014df5dbaa366a179c208989922a4cd8f2a0385c29e5570cfb3131a3536c` |
| 90 | `theorem` | [comp_apply](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/comp-apply.md) | 546 | `result-track:0e282c3fc1cade78c93cf08b5b6087ae9cc70cadd0615f399505f1832430074e` |
| 91 | `theorem` | [comp_id](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/comp-id.md) | 551 | `result-track:de390a07193db63437ba2a4682d6dfba34b5bb70e90c82bd85f29c019a1b8a24` |
| 92 | `theorem` | [id_comp](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/id-comp.md) | 555 | `result-track:96848f1a4b6af993f209fa0b54d9763e28377016b3fe22961d3a76e2837bb7c0` |
| 93 | `instance` | [instOne](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instone.md) | 558 | `declaration-track:1459f2d4bb516b9aadd9249bf66c0ffa6674450955056d3fc3afa3aa893d52f6` |
| 94 | `instance` | [instMul](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instmul.md) | 559 | `declaration-track:9a870409e203a1055d71d740556c3dc8c59a33c408285e3874216b3763db4c66` |
| 95 | `lemma` | [one_def](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/one-def.md) | 561 | `result-track:bcba0d99fb108760c2481ab1d7604da2859c060c5b40599e7565d41da4ff6697` |
| 96 | `lemma` | [mul_def](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/mul-def-source-edition-2.md) | 563 | `result-track:80ba929a914f3afd1d4f1039544edda2d23c8d67d14c61e302644cb72cde3615` |
| 97 | `lemma` | [coe_one](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-one-source-edition-2.md) | 565 | `result-track:fe0103679725a5ecfc20f8a710638448a94dac19a045848fa6198609ab6579dc` |
| 98 | `lemma` | [coe_mul](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-mul-source-edition-2.md) | 567 | `result-track:05592d8ff9f42a89850d5c33f93be285c8e93741d86a4f0f443808665189790b` |
| 99 | `instance` | [instMonoid](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/instmonoid.md) | 569 | `declaration-track:37714d0e9d084b6f6dc91d1a0195d4c0dc641c4a11254a41d2789ebe93bbae8e` |
| 100 | `lemma` | [coe_pow](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-pow.md) | 576 | `result-track:ff7689018e266d19c8b78550893ceffb450d5223e7146196f3599508d1f3fb3b` |
| 101 | `theorem` | [cancel_right](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/cancel-right.md) | 579 | `result-track:a3132a23da4aef9911b29e9643e73ccf6b645ae0dfa4fda13477e26d38b31871` |
| 102 | `theorem` | [cancel_left](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/cancel-left.md) | 584 | `result-track:0aed8697875b8d22c4e56cfdd5e5894ffe7ae6c7011ed1356719a45fb9142c9f` |
| 103 | `lemma` | [RingHom.map_pow](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/ringhom-map-pow.md) | 593 | `result-track:80554d2a68b6bbf53d533ddaac5c5660b016d723c33fe0e8bc9ed9a690845b48` |
| 104 | `def` | [mkRingHomOfMulSelfOfTwoNeZero](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/mkringhomofmulselfoftwonezero.md) | 604 | `declaration-track:954d62145abb66784dbde98d8c4612c1b0c1f1a7e918dcb1b792e2cf9d116e01` |
| 105 | `theorem` | [coe_fn_mkRingHomOfMulSelfOfTwoNeZero](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-fn-mkringhomofmulselfoftwonezero.md) | 619 | `result-track:f8f2c4e71668786061857efb6a824f86d21cd9ed67bb31ff83a65926fc064286` |
| 106 | `theorem` | [coe_addMonoidHom_mkRingHomOfMulSelfOfTwoNeZero](../../../../AssociativeRingsAndAlgebras/RingHomDefs.lean/declarations/coe-addmonoidhom-mkringhomofmulselfoftwonezero.md) | 624 | `result-track:19c08e99488e60f359d1ffc9e7ba1e04e6e4ab4fa286600199330e3173646912` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf747a6b10ff849327e472d6eb18cc95b509af3a5718b63fc4d89654f5676e93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant4e105d8c48147a0e76bc0161f43c075522a6a033948691ec6a7e9631173466ca.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant4e105d8c48147a0e76bc0161f43c075522a6a033948691ec6a7e9631173466ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
