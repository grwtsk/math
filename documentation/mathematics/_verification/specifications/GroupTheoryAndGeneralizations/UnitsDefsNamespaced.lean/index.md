# Verification target: Units Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a3293ece653725da3ee1e7d0c0a49fc933d9808",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant9bb386cbb57fdf9bb073cb04558022bb7e2babfa44955f171bd4cc7db8c8e96c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a3293ece653725da3ee1e7d0c0a49fc933d9808`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant9bb386cbb57fdf9bb073cb04558022bb7e2babfa44955f171bd4cc7db8c8e96c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant9bb386cbb57fdf9bb073cb04558022bb7e2babfa44955f171bd4cc7db8c8e96c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Units](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/units.md) | 52 | `declaration-track:a67231868c848f0c84ff5319231e7e754851dd3a4ad31c0421f346f79ed90618` |
| 2 | `structure` | [AddUnits](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/addunits.md) | 73 | `declaration-track:a639830e87d01cb6dbd6d9bc6f536392bff203b82d4bea281b813b6a72771ce4` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 93 | `declaration-track:c04d0f25b14b5aad4daeaea43c53fbddce3f40a0ec889d5a23bfcfeda811c88b` |
| 4 | `instance` | [instInv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instinv.md) | 98 | `declaration-track:d030a05c19fef71473be47890a4db922e1fcd7f1c5eca060a4c8c9d76fb50492` |
| 5 | `def` | [Simps.val_inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/simps-val-inv.md) | 104 | `declaration-track:14b40d83de58453819949fbd0bb869191ddbcec35f39d97b62e34af29268b41d` |
| 6 | `theorem` | [val_mk](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-mk.md) | 112 | `result-track:27dc6fc725661fcf2a83142a347f7a86b12db0c0b861e98e5b5492fb19e0b507` |
| 7 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/ext.md) | 116 | `result-track:37a65ff95ead7727b9923e549c49fadc245d407d856018efe7531b4df1961afa` |
| 8 | `theorem` | [eq_iff](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/eq-iff.md) | 122 | `result-track:e2c834df8f412da317dac0a3896072407a146be4d129419077793325c4a01194` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 128 | `declaration-track:b8cb9be505f2385c37fa463eae96bae5f8808e5a2556060688d45b6294655763` |
| 10 | `theorem` | [mk_val](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mk-val.md) | 131 | `result-track:b221feb6afe17cbc4737c6382ce997d4c49d0d221c170d5cca06409430eae216` |
| 11 | `def` | [copy](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/copy.md) | 136 | `declaration-track:d321450609668dbdb04b58f526da12f28eae632414007f2fc7015e8a2c1e23ef` |
| 12 | `theorem` | [copy_eq](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/copy-eq.md) | 140 | `result-track:5a0699f9643fbc609ec0df33e3bf3aa54efbbd92c0675d55b65fdbab6e1ad191` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instance-source-edition-6.md) | 145 | `declaration-track:d34a8a13b8b0d4864e39e5e2b6b5c2e9ebb953edb4cdc91dae732af98b2e9954` |
| 14 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instance-source-edition-5.md) | 153 | `declaration-track:c085a80b0a87dde55b17aba2c1ce05ae87ec574ea159061246d4b345ec043128` |
| 15 | `instance` | [instMulOneClass](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instmuloneclass.md) | 158 | `declaration-track:92ab436d9eca40bb1a769d8a479df040d997c03dd1ee6d727be8187b6374c1b5` |
| 16 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instance.md) | 164 | `declaration-track:31f8664ca03350adf7d0d3cf161dc936f7aa0d41e43d5682f0ee3b8863b52c59` |
| 17 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instance-source-edition-7.md) | 170 | `declaration-track:dd80f95af9f64ba45456fa1450df4c84044086c8be05ab2a6981fbd2ad11f664` |
| 18 | `theorem` | [val_mul](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-mul.md) | 176 | `result-track:ee5e498f700e9849dbbb1461557df44285c14180f30be194a9a85cad36b1e777` |
| 19 | `theorem` | [val_one](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-one.md) | 180 | `result-track:67db1137e22ae3d940a5d19f390b599c2180e04746cd85e59b90a9b8aab6e820` |
| 20 | `theorem` | [val_eq_one](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-eq-one.md) | 184 | `result-track:72fbf3bafbe0ea90b9b4f923cb5ae4bab837cc1b10abcf0511fb937b59ed4cbb` |
| 21 | `theorem` | [inv_mk](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv-mk.md) | 187 | `result-track:58877e0f9c65244b4783f0a6541d71304d4b9f405598f830198970e9dc19dc17` |
| 22 | `theorem` | [inv_eq_val_inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv-eq-val-inv.md) | 191 | `result-track:ad43e9d3ceba989e484e846bc752f14e9a0be2e07d8e66ed4c0f84e0d0f97a45` |
| 23 | `theorem` | [inv_mul](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv-mul.md) | 195 | `result-track:550c6102f37ad03e7c79584cdb88435dfbf4344cee6da8965e9564e3c72024a0` |
| 24 | `theorem` | [mul_inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-inv.md) | 199 | `result-track:e594bafde0463bef82d9550a8a75f6995de01ed7a41eeecbdfeacd41776c9325` |
| 25 | `lemma` | [commute_coe_inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/commute-coe-inv.md) | 202 | `result-track:c571818a674d114605029c92a43bdda94746cda9f952898cd603dac4d07f1eca` |
| 26 | `lemma` | [commute_inv_coe](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/commute-inv-coe.md) | 205 | `result-track:2277b29918ce7e1d3be894347dc5d797b300459beabff7876076276237284ffd` |
| 27 | `theorem` | [inv_mul_of_eq](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv-mul-of-eq.md) | 208 | `result-track:b5e5e1886f37705a0c5dd5a2283fb1b5c7b71a48dea1fbc78eb1d209dfa7843c` |
| 28 | `theorem` | [mul_inv_of_eq](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-inv-of-eq.md) | 211 | `result-track:aa1d2c1fbbafb419ce9576ad01c84690a65a6d40332f48c254d7f737fd8f2d22` |
| 29 | `theorem` | [mul_inv_cancel_left](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-inv-cancel-left.md) | 214 | `result-track:3dc234f6e4659ba40a54f052e7d36f085eeb5bc0e877c4fba7aff29af9a983a7` |
| 30 | `theorem` | [inv_mul_cancel_left](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv-mul-cancel-left.md) | 218 | `result-track:20f8330cca1f613fd3efb59d60b33029e52802d51b8ad349d7590b8e3b712379` |
| 31 | `theorem` | [inv_mul_eq_iff_eq_mul](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv-mul-eq-iff-eq-mul.md) | 222 | `result-track:d525e9635fcc252ab6ccdb90165646b6cb85335837b57a5d2c3a64f0965fcf65` |
| 32 | `instance` | [instMonoid](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instmonoid.md) | 226 | `declaration-track:4052783019e4376c2b5764aebc5a49cbe38ab2b7865c18d81dab7775fdf24ce1` |
| 33 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 239 | `declaration-track:6336b2048aa7a9619b740a8c05eda8b45cf9c93c2b54b709ee1021db59b5275f` |
| 34 | `instance` | [instDivInvMonoid](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instdivinvmonoid.md) | 248 | `declaration-track:cc6cd5ed8219789465328c7ad63bd1fe2e4868d709a5e3ee825ff601cbd685f3` |
| 35 | `instance` | [instGroup](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instgroup.md) | 258 | `declaration-track:948f6bf52a45c9f3e2a6a4741284dc78174af47cf8d39feebb18df0346c0ddbf` |
| 36 | `instance` | [instCommGroupUnits](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instcommgroupunits.md) | 264 | `declaration-track:f61c94ffa237b8af63383e716e468c8910f59b5feb1e1e31754146fa82aef86b` |
| 37 | `lemma` | [val_pow_eq_pow_val](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-pow-eq-pow-val.md) | 268 | `result-track:345ddfb0e39962ca001eeca6c0561dbc1893d3651d3e4ebf6a48302b73ee76af` |
| 38 | `lemma` | [val_inv_eq_inv_val](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-inv-eq-inv-val.md) | 275 | `result-track:799d73fbe586dc1bbdf60d48c09e245de0b3792e6486e2393b4f58e14cd563c5` |
| 39 | `lemma` | [val_div_eq_div_val](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-div-eq-div-val.md) | 279 | `result-track:55c500bfd283efd6222984575310a3fb4aae264f065d93a183c2292f84cf7a39` |
| 40 | `def` | [Units.mkOfMulEqOne](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/units-mkofmuleqone.md) | 287 | `declaration-track:67bf9f6426d649d09341fbb9d393c07533ffbdf4c9fbb2b77fd4cd16ed1f261e` |
| 41 | `theorem` | [Units.val_mkOfMulEqOne](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/units-val-mkofmuleqone.md) | 291 | `result-track:3a3ea8efbe4701f41af855c127b47ef4ea4be0033466aee3e9caa7a2fb0ca1fa` |
| 42 | `def` | [divp](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/divp.md) | 302 | `declaration-track:6a62b5473f402a1fc73db71187580495ea5ae4cb4f83a717578855f5da05506c` |
| 43 | `theorem` | [divp_self](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/divp-self.md) | 309 | `result-track:e17ed535bc7aed6358f0f86c433f7336244c6b9e470fda88c9084f05e8525056` |
| 44 | `theorem` | [divp_one](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/divp-one.md) | 313 | `result-track:c8b6fb198eb29abe95fb5a876e88823c52265867436f30cade21d32fbc3f02a4` |
| 45 | `theorem` | [divp_assoc](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/divp-assoc-source-edition-2.md) | 316 | `result-track:8b21b132b624306e522afc4e78148f6f7898a68dd6cbb018a0a790b2ee6b2bd5` |
| 46 | `theorem` | [divp_assoc'](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/divp-assoc.md) | 321 | `result-track:06403262501def0cac8c1a78577ad007b536d757ed7237f77e6f3197cf7f48d6` |
| 47 | `theorem` | [divp_inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/divp-inv.md) | 325 | `result-track:69928ccbf612b397578f01e1be949ae92f737535ba9609d8bfda80f85239775e` |
| 48 | `theorem` | [divp_mul_cancel](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/divp-mul-cancel.md) | 329 | `result-track:feda7d34f8b92562cc635339ef56e2b74fe4f4c325b1babfe10cbd5dff1f38ac` |
| 49 | `theorem` | [mul_divp_cancel](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-divp-cancel.md) | 333 | `result-track:616c027d92ded83b5a2ef684779411436802ff5da301d99ff2c8ec6ab8d68c5f` |
| 50 | `theorem` | [divp_divp_eq_divp_mul](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/divp-divp-eq-divp-mul.md) | 337 | `result-track:fc65b0001e4ebc2de8aefe284bc89423bea35b4d9c41f86f10344db9249e64bd` |
| 51 | `theorem` | [one_divp](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/one-divp.md) | 341 | `result-track:8287cf2334e85af0a1c98f3664b60b2c90b475cabe8d4aee8c6178a70866a375` |
| 52 | `theorem` | [inv_eq_one_divp](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv-eq-one-divp.md) | 346 | `result-track:a619a57dda3453d0ce3e7b09c02051e6ebb3779bded894fc0d4f756df958d704` |
| 53 | `theorem` | [val_div_eq_divp](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-div-eq-divp.md) | 352 | `result-track:bd260e39407d2fa72a939b1d582cd55abcd99d0d17d821c66ee3bd7ba2ef90a4` |
| 54 | `def` | [IsUnit](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit.md) | 371 | `declaration-track:00a5c8443a08f24809de1abcdb5e8c8f39825061e3cc9d5d13c8edc0b587559b` |
| 55 | `lemma` | [isUnit_iff_exists](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-iff-exists.md) | 376 | `result-track:4343e3f61ff4918bb871404ea17240fc47643fddd94fe20b7c6d3aa1fc06cdf1` |
| 56 | `theorem` | [isUnit_iff_exists_and_exists](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-iff-exists-and-exists.md) | 383 | `result-track:42adefb9d481a88106affab1c818b54603e88c0c865cd00053d986fedad1bfe8` |
| 57 | `theorem` | [Units.isUnit](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/units-isunit.md) | 390 | `result-track:0dc050325968306bc41e623671ca8fa2b520bfc12216f7e44f820a4622b7a4d7` |
| 58 | `theorem` | [isUnit_one](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-one.md) | 394 | `result-track:a43cf9207753f2c2b5754b4748948e19e13a0cb9588530819b620a0a740968e3` |
| 59 | `theorem` | [isUnit_of_mul_eq_one](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-of-mul-eq-one.md) | 398 | `result-track:71c419d16cd90c05f1577767217cba5bdea4a0021dfe76ecee3e00a080f62cf2` |
| 60 | `theorem` | [isUnit_of_mul_eq_one_right](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-of-mul-eq-one-right.md) | 402 | `result-track:710fb2089983fa20adb26a57c10805e6dd030b1bbc844f14286691422f9017d6` |
| 61 | `lemma` | [IsUnit.exists_right_inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-exists-right-inv.md) | 410 | `result-track:80f19ef19a27cb945d2d240d86a901d2559a5d4fa26b69e404bf583d6759f383` |
| 62 | `lemma` | [IsUnit.exists_left_inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-exists-left-inv.md) | 415 | `result-track:dac3ba3610ad887285433d73c46a231128deddf15f06e984c797db8961f12893` |
| 63 | `lemma` | [IsUnit.mul](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-mul.md) | 419 | `result-track:500fc3df8a88f2c00ce1935927b1aa520a171e4f327082ac08780fbf3e60dd50` |
| 64 | `lemma` | [IsUnit.pow](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-pow.md) | 422 | `result-track:142b19d1280ecd0a5022c28f3c44fc95e6e4f97521f16c07d140c52b34a37db2` |
| 65 | `lemma` | [isUnit_iff_eq_one](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-iff-eq-one.md) | 426 | `result-track:303026aa99933100ace507430f2f5d8d47f30052b72ea2fd532f3c02f057586e` |
| 66 | `theorem` | [isUnit_iff_exists_inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-iff-exists-inv-source-edition-2.md) | 432 | `result-track:b5fad0df41efff853a1eea3c11cbfc5a2fa6a8af8be2931beed61cfdd2df461b` |
| 67 | `theorem` | [isUnit_iff_exists_inv'](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-iff-exists-inv.md) | 436 | `result-track:3b8fbaf2a7d0a14b69cfa7a3a164d0accc42620b37265fe6e22370dcc5561181` |
| 68 | `theorem` | [Units.isUnit_mul_units](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/units-isunit-mul-units.md) | 442 | `result-track:5c5d3913293cc46a38baac3b8d9e5e482e2ad3c377b51e2a6026555a3c46aeef` |
| 69 | `theorem` | [Units.isUnit_units_mul](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/units-isunit-units-mul.md) | 452 | `result-track:98f997b14fbbc6f88ec056352657a0cd4f1c6fee5f8a9ab6d23c27f4d887fc42` |
| 70 | `theorem` | [isUnit_of_mul_isUnit_left](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-of-mul-isunit-left.md) | 461 | `result-track:58ad1d86e87cc2fbbffa497bd6e7ac074cc90432757e6cc277cf81dd7490eaf1` |
| 71 | `theorem` | [isUnit_of_mul_isUnit_right](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/isunit-of-mul-isunit-right.md) | 466 | `result-track:3e5e90d0cd9e88fc99975a8bd2cf03d891667f6bbfb4355ba5fb9cd149fb59d2` |
| 72 | `theorem` | [mul_iff](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-iff.md) | 472 | `result-track:0094afc9c6bcd8b3a5b30377aad29ae1f72508c794d973d072d6d602d356fa36` |
| 73 | `def` | [unit](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/unit-source-edition-2.md) | 485 | `declaration-track:7ffd05c151a7b25374a3e81d167215b1a9cd00730cfd718dc9e39be717bbdca7` |
| 74 | `theorem` | [unit_of_val_units](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/unit-of-val-units.md) | 489 | `result-track:0486e6f58264e99651ee94c19914597ae8053396196588c2a7562698a5502cb5` |
| 75 | `theorem` | [unit_spec](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/unit-spec.md) | 493 | `result-track:c072cae22f071998eaddfed5933e4962252e0708ff205950d287ef5da181d173` |
| 76 | `theorem` | [unit_one](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/unit-one.md) | 497 | `result-track:1ad47af01800ac35684ab3322ea216667c8e5b4f809ab013c9a5838cf05edcf6` |
| 77 | `theorem` | [val_inv_mul](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-inv-mul.md) | 501 | `result-track:f9259b9c6bbf27089cca1f5161b72688b3463163902132d12645d9478f8875c5` |
| 78 | `theorem` | [mul_val_inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-val-inv.md) | 505 | `result-track:648e7d768be2dedaa596e21db059a17c97f5d35c2d2c791f30b6a40a82b0fe2f` |
| 79 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/instance-source-edition-8.md) | 510 | `declaration-track:fe56f967a59e53b9ef99af6c05f239efaa68d9b2d2ca247fb32e7137431c7d8a` |
| 80 | `theorem` | [inv_mul_cancel](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv-mul-cancel.md) | 519 | `result-track:539781cdd013869dfc03dda71717bdd2743a564992eb553730955ed9f4d05cb5` |
| 81 | `theorem` | [mul_inv_cancel](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-inv-cancel.md) | 524 | `result-track:a6b58dcba310b50426b416718b2905d1169aa89462baa67400d935c4f1505e7a` |
| 82 | `def` | [unit'](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/unit.md) | 536 | `declaration-track:7bc4622b890c3397204c163a76ac460f7a2d9276d9f901d189847e5a2280d4ea` |
| 83 | `lemma` | [val_inv_unit'](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/val-inv-unit.md) | 538 | `result-track:8c65453f4647ae5da4c8f9e7b929127c6875ad5713056bd85fa04688f8cdb37e` |
| 84 | `lemma` | [mul_inv_cancel_left](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-inv-cancel-left-source-edition-2.md) | 541 | `result-track:9ab3806a563eeaef688e2a96ce370e1e983a5eeb01ced747b373b8787b9e1adf` |
| 85 | `lemma` | [inv_mul_cancel_left](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv-mul-cancel-left-source-edition-2.md) | 545 | `result-track:95bba3e24e41e096b44c3232e158365d2863a88cee45f146e62413bfa26efb3e` |
| 86 | `lemma` | [div_self](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/div-self.md) | 549 | `result-track:76934e2922600f08191d09f881699d017ac17779366bb5d1f50a4950623575ca` |
| 87 | `lemma` | [inv](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/inv.md) | 552 | `result-track:9b25b26b72af2d8f6c450dade80302cd01d2c724111706ff103c287e61878074` |
| 88 | `lemma` | [div](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/div.md) | 557 | `result-track:f2f762eecb660fe06088087389e7208e58b317f98a10309722f230380ecb1d7b` |
| 89 | `lemma` | [div_mul_cancel_right](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/div-mul-cancel-right.md) | 561 | `result-track:1a8bf3cfc396362a8d321b117739de3bf6000419fadd37ec82fbd592920bc918` |
| 90 | `lemma` | [mul_div_mul_right](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-div-mul-right.md) | 565 | `result-track:6bda5f725d10b101827a83128c395cd97ef63d1c398eb7ed496681151b1531f3` |
| 91 | `lemma` | [div_mul_cancel_left](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/div-mul-cancel-left.md) | 574 | `result-track:08f0e1300b9665a3b6eb55c306d9ea8cc9822acba3a5ad46ffd57e2e2b256fa9` |
| 92 | `lemma` | [mul_div_mul_left](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/mul-div-mul-left.md) | 578 | `result-track:353bbaf1942eb9c49365739a9b5e02d73fda7154ef2bd2003ac5c7b865a325e4` |
| 93 | `lemma` | [divp_eq_div](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/divp-eq-div.md) | 585 | `result-track:2ea009b821aa97e81b3ef3e44de5a042c381cfaaaca6c58b6537ac5557a74468` |
| 94 | `lemma` | [Group.isUnit](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/group-isunit.md) | 589 | `result-track:0cf331be703c5f779c4bb30c1fc9d92d8a3750a066e18bffcb0ce127eba00fcc` |
| 95 | `def` | [invOfIsUnit](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/invofisunit.md) | 601 | `declaration-track:dc27b24f4e88c1a1b375c12856bef687a61250ee96f28eefdc09e8f515c82254` |
| 96 | `def` | [groupOfIsUnit](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/groupofisunit.md) | 605 | `declaration-track:a6c073338e3dec8295aedf4af7c227046b36eb9b7b84c6a22723ed052d6ca89f` |
| 97 | `def` | [commGroupOfIsUnit](../../../../GroupTheoryAndGeneralizations/UnitsDefsNamespaced.lean/declarations/commgroupofisunit.md) | 613 | `declaration-track:ff5b1582332872fb799700d821de3fe2ec7c267981b411f33d5de6f2bdf2573f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a9b845d15865db62e708392c9b337750953a0f97b7c05103a11381be68d9e2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant9bb386cbb57fdf9bb073cb04558022bb7e2babfa44955f171bd4cc7db8c8e96c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant9bb386cbb57fdf9bb073cb04558022bb7e2babfa44955f171bd4cc7db8c8e96c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
