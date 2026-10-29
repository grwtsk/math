# Verification target: Submonoid Units Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b55f529a5bda194cb47c6adb8a3d92f8a3fc938e",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant41b94fa77741197c760a669a101fe3622eef59827791292e1c1fac61d02ea8fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b55f529a5bda194cb47c6adb8a3d92f8a3fc938e`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant41b94fa77741197c760a669a101fe3622eef59827791292e1c1fac61d02ea8fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant41b94fa77741197c760a669a101fe3622eef59827791292e1c1fac61d02ea8fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.Operations` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submonoid.units](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/submonoid-units.md) | 53 | `declaration-track:5e5242aa6bf1c1fe641bfa9de5f2c8c0605f429d2a22b25fe0f1ad8bd32ed823` |
| 2 | `def` | [Subgroup.ofUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/subgroup-ofunits.md) | 59 | `declaration-track:0f83bc9cce4c3b5cfe0249362e6368707255d1846a548814fe6456a4530cbadf` |
| 3 | `lemma` | [Submonoid.units_mono](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/submonoid-units-mono.md) | 62 | `result-track:505c032e41f573747c46e6a433812707e279d211612252d543f4748f1d5f8ac5` |
| 4 | `lemma` | [Submonoid.ofUnits_units_le](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/submonoid-ofunits-units-le.md) | 66 | `result-track:2fd39f3ebf0aebe8657f19f7200671fb3ce937da57c8fb4769b2c67ab37e232c` |
| 5 | `lemma` | [Subgroup.ofUnits_mono](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/subgroup-ofunits-mono.md) | 70 | `result-track:fb34b20b08709a13786850da6cf8457633674d9fb5ea04fb625959201ac866cb` |
| 6 | `lemma` | [Subgroup.units_ofUnits_eq](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/subgroup-units-ofunits-eq.md) | 74 | `result-track:600531243b58178fd8f7c614d25129f472433f05d6356a7c04c3d670dea0d383` |
| 7 | `def` | [ofUnits_units_gci](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-units-gci.md) | 83 | `declaration-track:9cb42cf725fe901081434003f12c0b3d823d26c47c6db520491aba36532a49d8` |
| 8 | `lemma` | [ofUnits_units_gc](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-units-gc.md) | 88 | `result-track:eb92b616be680b51ebab3c35c15914335186e3a5461296cf4bb7b493e150790d` |
| 9 | `lemma` | [ofUnits_le_iff_le_units](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-le-iff-le-units.md) | 92 | `result-track:c7cb4dad6e7018fe27cb7cb428ff9d6657825fa4e565773ab9b753a1d5ff5144` |
| 10 | `lemma` | [mem_units_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-units-iff.md) | 100 | `result-track:5d8b8951496b27b27407369119a91f2a39d37dbcb0fc64d345b807e3a415b295` |
| 11 | `lemma` | [mem_units_of_val_mem_inv_val_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-units-of-val-mem-inv-val-mem.md) | 104 | `result-track:1a395808d3a9c1541a502ebf7c00bf6c0431a13416e2a2d9d84123bf396093e8` |
| 12 | `lemma` | [val_mem_of_mem_units](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/val-mem-of-mem-units.md) | 108 | `result-track:65b28136973aa5d8b3f2af865aca95500810208df409e87fbc02a5571c3656d6` |
| 13 | `lemma` | [inv_val_mem_of_mem_units](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/inv-val-mem-of-mem-units.md) | 111 | `result-track:6e752db72b7f0a21811220d1afcc800c3332aa3e3532575af0258fc5827e6e1b` |
| 14 | `lemma` | [coe_inv_val_mul_coe_val](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/coe-inv-val-mul-coe-val.md) | 115 | `result-track:1e430ca51ea03952fc5c2545e4ca96f8d2dfeaeb63e78479525a6532b73e7b4a` |
| 15 | `lemma` | [coe_val_mul_coe_inv_val](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/coe-val-mul-coe-inv-val.md) | 119 | `result-track:c5cd5a14929dea6151913dafbab0179ccb4601a5439ec36b7577d163b3f3d1cf` |
| 16 | `lemma` | [mk_inv_mul_mk_eq_one](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mk-inv-mul-mk-eq-one.md) | 123 | `result-track:985eff5bf5001ee9a8200f152265934ca943127865f93e351e2c295c7d34e34a` |
| 17 | `lemma` | [mk_mul_mk_inv_eq_one](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mk-mul-mk-inv-eq-one.md) | 127 | `result-track:0ebdf1b4e543cb53e857f2bdbdc949203c4a6135a2d66e874fe0227ba40b5c8c` |
| 18 | `lemma` | [mul_mem_units](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mul-mem-units.md) | 131 | `result-track:62c86b26bf69c1c7b28405d0df840f29f4f4939c26bf9569caf74d6a8604072e` |
| 19 | `lemma` | [inv_mem_units](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/inv-mem-units.md) | 135 | `result-track:334edcd1bddb4ae6343fa8401b5a98970b275e15c64b724e84fb3b1a94c786fb` |
| 20 | `lemma` | [inv_mem_units_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/inv-mem-units-iff.md) | 138 | `result-track:8614ba28f5b2a9846cd38702e650c11d0bb5f38f9151d659b2a2fdc587f97e52` |
| 21 | `def` | [unitsEquivUnitsType](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/unitsequivunitstype.md) | 143 | `declaration-track:2cd6cbadb943341611680267314e444dbcbcd0b0dc6c6e9d1840fd8968108445` |
| 22 | `lemma` | [units_top](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/units-top.md) | 151 | `result-track:2425ad2a771f73dada123f9679857e54515caa7e226ff2895d74b3e40c3f86cf` |
| 23 | `lemma` | [units_inf](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/units-inf.md) | 154 | `result-track:78f2b6373d631051d9ac65d32ec3902c0e2e7593c75c007c5430b2c127d97881` |
| 24 | `lemma` | [units_sInf](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/units-sinf.md) | 158 | `result-track:922775a990da5a205ed5c48e5618cbf8f415bd08eedacc9786dded249808e887` |
| 25 | `lemma` | [units_iInf](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/units-iinf.md) | 162 | `result-track:7b30759926e2bfe66341e4f32a43b0c62e589a24763e1c3ca106b043eda42db5` |
| 26 | `lemma` | [units_iInf₂](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/units-iinf-source-edition-2.md) | 166 | `result-track:8850cddf0c909b13a3761ef99d86b73f0518eec76e1fa2c37ea30e658184b3a5` |
| 27 | `lemma` | [units_bot](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/units-bot.md) | 171 | `result-track:341eb681e10c10016265d64dd00bce3fc4a507adf53729be1ef97c7147e22167` |
| 28 | `lemma` | [units_surjective](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/units-surjective.md) | 174 | `result-track:856802356276c7477088e1167415519516b2c442c451a4e38ed0345d3a3bf7c1` |
| 29 | `lemma` | [units_left_inverse](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/units-left-inverse.md) | 178 | `result-track:dc4cf83d9e2ea481d71ae114561859c84261c47c9e2e1f4df0cbd9f16c4d0b3a` |
| 30 | `def` | [unitsEquivIsUnitSubmonoid](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/unitsequivisunitsubmonoid.md) | 186 | `declaration-track:766ad01745d581e25422d4921f82e0d049572a8cc16c8e7a7c36489021a83c5f` |
| 31 | `lemma` | [mem_ofUnits_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-ofunits-iff.md) | 196 | `result-track:e9c31fc54c95bb81cefce09135e0a5b69f87bedf0775d864e496b129c3e797dc` |
| 32 | `lemma` | [mem_ofUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-ofunits.md) | 199 | `result-track:2ad01752be9c3601cd01d18af0141991285a568ae4bdc24c207868b2fb8024b1` |
| 33 | `lemma` | [exists_mem_ofUnits_val_eq](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/exists-mem-ofunits-val-eq.md) | 203 | `result-track:909ba99c894ab3251d234b53feddd3cced695c03df6ab59814b278c3e7141822` |
| 34 | `lemma` | [mem_of_mem_val_ofUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-of-mem-val-ofunits.md) | 207 | `result-track:a3ccf807d1a354ee25b85a0c5dcbc06e628b6de21a9471c7d516c0ae6102b1eb` |
| 35 | `lemma` | [isUnit_of_mem_ofUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/isunit-of-mem-ofunits.md) | 212 | `result-track:3d5a33d769bdb89722e883d01622853cdc732f1852efa46f877f4033ca43acee` |
| 36 | `def` | [unit_of_mem_ofUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/unit-of-mem-ofunits.md) | 221 | `declaration-track:6cb1350b0fa2e04cb3ea8c7e811bce1afe0e398abe8fe8ca8cce75a3d84e5b21` |
| 37 | `lemma` | [unit_of_mem_ofUnits_spec_eq_of_val_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/unit-of-mem-ofunits-spec-eq-of-val-mem.md) | 225 | `result-track:05d9e6d1d2d1b5e60f95f3cabef576c9a2cd6a505784356c40bf1ca1ec6ae0ed` |
| 38 | `lemma` | [unit_of_mem_ofUnits_spec_val_eq_of_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/unit-of-mem-ofunits-spec-val-eq-of-mem.md) | 229 | `result-track:0153c87b13f56a2cd900ae1857eaa7bd9fcc0c6425a8decc179d5c306e6fa4fe` |
| 39 | `lemma` | [unit_of_mem_ofUnits_spec_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/unit-of-mem-ofunits-spec-mem.md) | 233 | `result-track:dd5fc3a95c56af93ce044962abb10800c1783684e7152031c4671aa5981b4998` |
| 40 | `lemma` | [unit_eq_unit_of_mem_ofUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/unit-eq-unit-of-mem-ofunits.md) | 237 | `result-track:49fca7e7208dd1ad72b759e2425046f75dcb1d7696ebfcb60117010fe23c9b66` |
| 41 | `lemma` | [unit_mem_of_mem_ofUnits](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/unit-mem-of-mem-ofunits.md) | 241 | `result-track:2dc40f1393078ecf8eab9c380a1aa8a3bb3329052e78c259a3680cc81a406e6d` |
| 42 | `lemma` | [mem_ofUnits_of_isUnit_of_unit_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-ofunits-of-isunit-of-unit-mem.md) | 246 | `result-track:5f890ec9cbb374c90da2ad6cb05c37fdda3ebce298cb2eca41526edf73f77e73` |
| 43 | `lemma` | [mem_ofUnits_iff_exists_isUnit](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-ofunits-iff-exists-isunit.md) | 250 | `result-track:3ef39ef736176561c231afe93657644c20e95f007c7291b27593aff31f9265bd` |
| 44 | `def` | [ofUnitsEquivType](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunitsequivtype.md) | 259 | `declaration-track:0c9a829e4fa4ba987008d4b657ac015f8f4b4f42cc9e460cb68938f4ab27a3b8` |
| 45 | `lemma` | [ofUnits_bot](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-bot.md) | 267 | `result-track:543ba8731f70b5ea0b6844d136ed8bbe973707b2041e6d0e51bcd6b5146dc23e` |
| 46 | `lemma` | [ofUnits_inf](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-inf.md) | 270 | `result-track:14e6afa1815fd7d9817388c99c899353c3ede11bcb7c7147ca2d6a643e82986d` |
| 47 | `lemma` | [ofUnits_sSup](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-ssup.md) | 274 | `result-track:a7f83f63130bac7671fdec760a5a70a527d6fb88c316afff17281e6a77e38f0b` |
| 48 | `lemma` | [ofUnits_iSup](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-isup.md) | 278 | `result-track:70ef51534e120a9edf31855f3cd3155c703fe74ef4df35a5bbdff13c19db293d` |
| 49 | `lemma` | [ofUnits_iSup₂](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-isup-source-edition-2.md) | 282 | `result-track:960d69e31eb7364ca13fe68482d368e73ffd524abe72433ac223fecba4e98f46` |
| 50 | `lemma` | [ofUnits_injective](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-injective.md) | 287 | `result-track:802d95e41a991ce32d72f26a33c2cbe497545391a92707aea12e231cc37617dc` |
| 51 | `lemma` | [ofUnits_sup_units](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-sup-units.md) | 291 | `result-track:8a0943c477179f4f965826efa91a4840ecdb8e4774c3ec0f831a3f975efc3a75` |
| 52 | `lemma` | [ofUnits_inf_units](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-inf-units.md) | 295 | `result-track:c31208c7222550b3f7bce2312515171f206c6f8efa354c2f1ed0b270d23609fe` |
| 53 | `lemma` | [ofUnits_right_inverse](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-right-inverse.md) | 299 | `result-track:0e944ccfd37e88cab342095ec1ac826f2643c7d80b80c8771137c24fe605df4e` |
| 54 | `lemma` | [ofUnits_strictMono](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-strictmono.md) | 304 | `result-track:f5b3186832ae0305a364e86946a2c68ea68f6efb90edb93f89caf7e47ae5f767` |
| 55 | `lemma` | [ofUnits_le_ofUnits_iff](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunits-le-ofunits-iff.md) | 306 | `result-track:d7a19037a74ba745133a71f79e5320d93fe231569f9ef2d3fb03965a2758a83d` |
| 56 | `def` | [ofUnitsTopEquiv](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/ofunitstopequiv.md) | 313 | `declaration-track:e26101708199e2b5bdaf0c5f644642967e3541e42490116343614646d486320d` |
| 57 | `lemma` | [mem_units_iff_val_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-units-iff-val-mem.md) | 319 | `result-track:c41461f6f34b72ac37dec35e3b3c55c811b092d0817574ec9e1b2e5eb84b0465` |
| 58 | `lemma` | [mem_ofUnits_iff_toUnits_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-ofunits-iff-tounits-mem.md) | 323 | `result-track:d80adf29775caa889e2846131bc2c6dfc4762d72e788631c7c5974ef237065ce` |
| 59 | `lemma` | [mem_iff_toUnits_mem_units](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/mem-iff-tounits-mem-units.md) | 327 | `result-track:bf8f5b26fc1826a0716e30fa353d2cc543d4de8a00a4fdf2b3730eb06b6b2290` |
| 60 | `lemma` | [val_mem_ofUnits_iff_mem](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/val-mem-ofunits-iff-mem.md) | 331 | `result-track:f4214d8e6d3a8a5ff0fb152d6c84181cc8a6785173e8e21ca1e96eba35f2cb89` |
| 61 | `def` | [unitsEquivSelf](../../../../GroupTheoryAndGeneralizations/SubmonoidUnitsNamespaced.lean/declarations/unitsequivself.md) | 337 | `declaration-track:1321d2058f9f96cc2ed1969eadba3f86913d970a6141b64b16692e172c6c636d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e58c56cdc8a54516ab09eb6b2b3c0488e0a83e2e55e16b558b9532b24062a9b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variant41b94fa77741197c760a669a101fe3622eef59827791292e1c1fac61d02ea8fa.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variant41b94fa77741197c760a669a101fe3622eef59827791292e1c1fac61d02ea8fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
