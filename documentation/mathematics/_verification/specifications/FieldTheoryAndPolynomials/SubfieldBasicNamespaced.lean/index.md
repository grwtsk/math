# Verification target: Subfield Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1fef81fbf216ab988e388275c4b971f2715f90f",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant36ea430ed80723fcf9f212ce289f98f7fddb85b4537479c448029fbc9cc3e825.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1fef81fbf216ab988e388275c4b971f2715f90f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant36ea430ed80723fcf9f212ce289f98f7fddb85b4537479c448029fbc9cc3e825.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant36ea430ed80723fcf9f212ce289f98f7fddb85b4537479c448029fbc9cc3e825.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Subfield.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subring.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [list_prod_mem](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/list-prod-mem.md) | 84 | `result-track:fa56ff43e353806253df166971ff3a22476ad12048f0403cdce3e35cbaa0a2a3` |
| 2 | `theorem` | [list_sum_mem](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/list-sum-mem.md) | 88 | `result-track:5afc2b457fcfb9cac89f1050707075a8c54dfc18fc3e751f6974e638be7442f3` |
| 3 | `theorem` | [multiset_sum_mem](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/multiset-sum-mem.md) | 92 | `result-track:5cbaa6a4c7cabce2d2b1f603d9d68f06280c6bd21a409eb370f221bf00231c91` |
| 4 | `theorem` | [sum_mem](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/sum-mem.md) | 96 | `result-track:416eaa94ce7f4a132039dc2896f1fc8f10b089fc1c3256f90a860e2b221cdfad` |
| 5 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-15.md) | 106 | `declaration-track:f55ad1307ab84d3d77a63d42cb74461adc38dbf262e584a2bafc23f858769e31` |
| 6 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 109 | `declaration-track:a5697710c9f4573295520519cffdcdae9c19b9974b350b58181ef44ee8d5b1ef` |
| 7 | `theorem` | [mem_top](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-top.md) | 113 | `result-track:adf45b3205b0bcc9b1e84f038bc80251e1fa4eb3cca4598c224c06f32bdc82df` |
| 8 | `theorem` | [coe_top](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-top.md) | 117 | `result-track:bcf9783c3013c1bf618e915440bdb9cf73041c2a345cd307c463741590be1b85` |
| 9 | `def` | [topEquiv](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/topequiv.md) | 121 | `declaration-track:ccd61682a76fa5531b5b30a5190108b8850361249293db6b2f52957811080a37` |
| 10 | `def` | [comap](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/comap.md) | 130 | `declaration-track:a289128736abbc5cde72b20ddf5ce859e035798a7e3cdd1349102836123a83d9` |
| 11 | `theorem` | [coe_comap](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-comap.md) | 138 | `result-track:9d4260e1513f4f1ac551aa18e2c787428ea45c72cdb6552c36ee54616297da8e` |
| 12 | `theorem` | [mem_comap](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-comap.md) | 142 | `result-track:aecc4eb910a3a25aaa08a8f6c2cac16cf4c6159d94f354c84297826540e971dd` |
| 13 | `theorem` | [comap_comap](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/comap-comap.md) | 145 | `result-track:4a60422d9dabe401ce9205ce01072cbe324432d979c96f5264003aa522b0415c` |
| 14 | `def` | [map](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map.md) | 153 | `declaration-track:bdabc45f8977fb1efe90eda70861bde5c75df0ffb7787a59cfa2e931c69086c3` |
| 15 | `theorem` | [coe_map](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-map.md) | 160 | `result-track:732dfdb1d8b933a85a111f1c0adede72ea71b259c4c55f16423cce76b32316ad` |
| 16 | `theorem` | [mem_map](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-map.md) | 164 | `result-track:8b02534e2e24cfcd75191ffc86618d022b86b6f920f450f0a32fb0e880e43935` |
| 17 | `theorem` | [map_map](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-map.md) | 168 | `result-track:c2a56012f7e26e23652c736999ca405b98bac646a864bd4a2108f9ff8d9d957d` |
| 18 | `theorem` | [map_le_iff_le_comap](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-le-iff-le-comap.md) | 171 | `result-track:2f55ebf7dbb66b5bd896f131b0d63b2d2ea0325b1fbedf38b319e867e7a0210d` |
| 19 | `theorem` | [gc_map_comap](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/gc-map-comap.md) | 175 | `result-track:e13dfd37d29aa05811928e4b892b007024c756bda83419df48fd3fb5d07b2bf0` |
| 20 | `def` | [fieldRange](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/fieldrange.md) | 188 | `declaration-track:13083269b1cfc524ee620c24b72a654c69454ad7ae292ff3da284731a31cd762` |
| 21 | `theorem` | [coe_fieldRange](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-fieldrange.md) | 192 | `result-track:30bedd02b862a00b6cba1ad16ac8f8d149f0c23551954055dfd53c841c33b2f8` |
| 22 | `theorem` | [mem_fieldRange](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-fieldrange.md) | 196 | `result-track:f13ea554f7fafcc2a82a67954e544ce6aea2b8a5ba920e1a0243468b3660c514` |
| 23 | `theorem` | [fieldRange_eq_map](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/fieldrange-eq-map.md) | 199 | `result-track:235759767f966cc6c736d99f7f0f7e15f46e6958901c7c9230bbda484403d122` |
| 24 | `theorem` | [map_fieldRange](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-fieldrange.md) | 203 | `result-track:cceeee43c440270b0b889fe74d188acc208147fd145c3c72f154c508dfea52da` |
| 25 | `theorem` | [mem_fieldRange_self](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-fieldrange-self.md) | 206 | `result-track:e7ca85e5b7424e64b94c606ea9ea2a86c4d45003aac7a3c9d60fff227e536cfb` |
| 26 | `theorem` | [fieldRange_eq_top_iff](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/fieldrange-eq-top-iff.md) | 209 | `result-track:174c92cee9595282d128c1f70d8f03ac66c3734de38a030c1f9d42e14601d620` |
| 27 | `instance` | [fintypeFieldRange](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/fintypefieldrange.md) | 216 | `declaration-track:89637d4fb78de3e663e5173af5e63818e4b79e8aab7409fc229d01e3c3dd06e0` |
| 28 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 227 | `declaration-track:8f3af5c70db11905d991b37d95f201b07a8f1feac55310aabd51b4d2cd8b48be` |
| 29 | `theorem` | [coe_inf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-inf.md) | 235 | `result-track:f252f85eaa9ae257e095fad652fceb4317dd3031ddd94f2255cea8c27f302c15` |
| 30 | `theorem` | [mem_inf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-inf.md) | 239 | `result-track:8f17c9aa3ce4d3198f97c73009fef83ccdefa5539ca08b0bdfd503f9f94a6135` |
| 31 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 242 | `declaration-track:1cc8988bb0fd8c9bffc332bf24fc2b20af22a3e540fc8a3bb38627b1b4d75cb7` |
| 32 | `theorem` | [coe_sInf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-sinf.md) | 252 | `result-track:0e1078a178c4a9cb9d2eaa9ac24f1f0faf44baccbc086bf99166042702f2f62e` |
| 33 | `theorem` | [mem_sInf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-sinf.md) | 261 | `result-track:ce803fdd8d55ea2849ea166d937562ee8ed33979d541d7221e02bea1237585f4` |
| 34 | `theorem` | [coe_iInf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-iinf.md) | 266 | `result-track:1a2192560695f33feb39a307545a594664c47a156300eff96c5c3d39ea8411c2` |
| 35 | `theorem` | [mem_iInf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-iinf.md) | 269 | `result-track:8ca5d015c933123d98d888434091b15615c2cc900b629e7087464db4467ccabb` |
| 36 | `theorem` | [sInf_toSubring](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/sinf-tosubring.md) | 273 | `result-track:2fccae3acb351a96cc48218104f1a2d1ebe8aa9c3074bb30a6356107c8efabab` |
| 37 | `theorem` | [isGLB_sInf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/isglb-sinf.md) | 278 | `result-track:1a8c0da55afc3624d095fc77aaf5f8bc0bed3b680851385414ad102c2615d91d` |
| 38 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 285 | `declaration-track:21ef1d8eab3b65f6c3957d857fe6ec272a3be46cff71fba8c08e4e29343750d9` |
| 39 | `def` | [closure](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure.md) | 297 | `declaration-track:3a8ee54e95e5df6ca7c2dc56de4c6588c73ba82cb06a74f2a94af26f25f5a262` |
| 40 | `theorem` | [mem_closure](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-closure.md) | 299 | `result-track:87ab575ad97882a4c9bd2b23d4330644189c9873510bd582959a9979f36ee87f` |
| 41 | `theorem` | [subset_closure](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/subset-closure.md) | 304 | `result-track:164b7b5f03299f0d4407dd8865033db812e71957dc1bef0c64d2abe1a6c60781` |
| 42 | `theorem` | [subring_closure_le](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/subring-closure-le.md) | 306 | `result-track:c08d2bd61df86ce9724bc446ac1e8d657ec725c47e30d9ce5a5591a79edf0605` |
| 43 | `theorem` | [notMem_of_notMem_closure](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/notmem-of-notmem-closure.md) | 309 | `result-track:48ee48e98778647e5e4aeaf618e4d8a7704a80d8bb91f02ce3a5f7fecb7a6d6a` |
| 44 | `theorem` | [closure_le](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-le.md) | 316 | `result-track:aaf58187a6c57c1f98b21394871509407e940ce2496daaca39e5ac2402c12a2a` |
| 45 | `theorem` | [closure_mono](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-mono.md) | 322 | `result-track:ed6c181f72307c45acb4a4fb24d6b31e753e7899646225bd867f312f1dd28197` |
| 46 | `theorem` | [closure_eq_of_le](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-eq-of-le.md) | 325 | `result-track:2a18e83f6a4a43f2be6b242add04831a149b0e1a074854607394f7e310343c3e` |
| 47 | `theorem` | [closure_induction](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-induction.md) | 333 | `result-track:9cbe506437955524765d76716df3e964b69f12b77bea016af56608cd870fbaff` |
| 48 | `def` | [gi](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/gi.md) | 352 | `declaration-track:172a0f0a7211dec93e9a595960a312e89c0e186d1597ad529ad76e6f905dcd31` |
| 49 | `theorem` | [closure_eq](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-eq.md) | 360 | `result-track:068e1205436ee7b13fe8400ca1ca7580728569a04a413870c367548231865609` |
| 50 | `theorem` | [closure_empty](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-empty.md) | 364 | `result-track:b96258be6f28115a6e3e91ec78af5a5a40df5d38b0847b13a45aeead2ef05f9d` |
| 51 | `theorem` | [closure_univ](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-univ.md) | 368 | `result-track:c5be74199e4f000c7d84e1fb43392956f10996f1e3a75d37ea40d21488e6a9ea` |
| 52 | `theorem` | [closure_union](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-union.md) | 371 | `result-track:0c7e790c229c65f51179cf263a808c4d97d07eea986f86f558c9c8d89f666039` |
| 53 | `theorem` | [closure_iUnion](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-iunion.md) | 374 | `result-track:36c49151947d50d09ac4215303a2434aad2fc5622262803e895606d3a42a5bce` |
| 54 | `theorem` | [closure_sUnion](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-sunion.md) | 377 | `result-track:c3f288247d3d709f12e139bca5213c2edbf20d9ee7464ccab7f2ac4c3a1ada9b` |
| 55 | `theorem` | [map_sup](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-sup.md) | 380 | `result-track:ebe1be030664d68f3874e9dac81d18a69db72e6f4ad8717eee5a01e9a968f0a3` |
| 56 | `theorem` | [map_iSup](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-isup.md) | 383 | `result-track:829c2a1efe98ea6f5eb5a79c0ac14bee4cbe675bac84d2c13ad93260db53ab7b` |
| 57 | `theorem` | [map_inf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-inf.md) | 387 | `result-track:1155a4b9a98cd8e22d35bace3bf7bf1b572982928160931a6a95079ce821f09b` |
| 58 | `theorem` | [map_iInf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-iinf.md) | 390 | `result-track:d66bd070ed50aad72be5c265f7654b8665a13777024e023c6bb13779a23465de` |
| 59 | `theorem` | [comap_inf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/comap-inf.md) | 395 | `result-track:01f8d47e0b7cc015336bd54af2c6de4e49e3a1ffb6aaff31b42f8eb96dd76a84` |
| 60 | `theorem` | [comap_iInf](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/comap-iinf.md) | 398 | `result-track:9386b9c07ae7cf22fb4ae3d35f879206c04ad293ac7444a42baab4b2edc4ea86` |
| 61 | `theorem` | [map_bot](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-bot.md) | 403 | `result-track:c4c416a93522dcb135cccfed9f91810ca64a9bca85ef7de731dcf71dfc5c107a` |
| 62 | `theorem` | [comap_top](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/comap-top.md) | 407 | `result-track:a7e366aebc38664aa40a55e6dd62b6f2c72799ab0276af20c850bbdf9ca15c53` |
| 63 | `theorem` | [mem_iSup_of_directed](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-isup-of-directed.md) | 413 | `result-track:4835bd094b4aeb739c6503ad08fe0695a591c9487c6991e949f02ce9e1deee8c` |
| 64 | `theorem` | [coe_iSup_of_directed](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-isup-of-directed.md) | 423 | `result-track:548a3528ae68c17736144ac47b28349aafc7a9ab69c8988db0c9724f45ee82f9` |
| 65 | `theorem` | [mem_sSup_of_directedOn](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-ssup-of-directedon.md) | 427 | `result-track:69e1fe4aa688642095ac26946af0350fbb692c6ce08ec124cde8cd7ba1385950` |
| 66 | `theorem` | [coe_sSup_of_directedOn](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-ssup-of-directedon.md) | 432 | `result-track:063410d862a0652a38fe9c4af69b5766651bc6ba5af0234f130bdfbce7024555` |
| 67 | `def` | [rangeRestrictField](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/rangerestrictfield.md) | 445 | `declaration-track:19c3dd8b439bb9239a9a5c97ab968e07e3be08a1491003b02d4916e9c730632a` |
| 68 | `theorem` | [coe_rangeRestrictField](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/coe-rangerestrictfield.md) | 449 | `result-track:0337c789a4ac0704f25e7708833b2328b9e71af2f65f74845599fe0c1fd2632c` |
| 69 | `theorem` | [rangeRestrictField_bijective](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/rangerestrictfield-bijective.md) | 452 | `result-track:c55d1224ed03e75241336560b9aef9f577b32722011163531054769aea66f7cc` |
| 70 | `def` | [eqLocusField](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/eqlocusfield.md) | 461 | `declaration-track:1e96d722be7fd5e27f988a6a8773519b76863d4e5d1973b1200194ea2918c579` |
| 71 | `theorem` | [eqOn_field_closure](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/eqon-field-closure.md) | 467 | `result-track:d97e4d71e6a77765c1e1deb5bb90f6f8e5845ce236a429cad9463f76bcb8479e` |
| 72 | `theorem` | [eq_of_eqOn_subfield_top](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/eq-of-eqon-subfield-top.md) | 471 | `result-track:77c60c185cfe24c2fd194700e483060f460f7f9ac524e85f6d9e3ad45460a365` |
| 73 | `theorem` | [eq_of_eqOn_of_field_closure_eq_top](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/eq-of-eqon-of-field-closure-eq-top.md) | 474 | `result-track:701141774b042ba3e5ff11e819d84aa18666e6cfefa8579f5400b17f8a142c8c` |
| 74 | `theorem` | [field_closure_preimage_le](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/field-closure-preimage-le.md) | 480 | `result-track:40a4055f8623d0d95f060aac6778718eb7b820bd06bd392b91faca57e5b0881a` |
| 75 | `theorem` | [map_field_closure](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-field-closure.md) | 486 | `result-track:43d75b1e94b74ae51f8dd66acca30b468d867bfa3f49a332f14c286bc3f84c67` |
| 76 | `def` | [inclusion](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/inclusion.md) | 497 | `declaration-track:e734833ecb973130e024e031b234dc515ddf2cbccf1e38d8c705fb8e581871ae` |
| 77 | `theorem` | [fieldRange_subtype](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/fieldrange-subtype.md) | 501 | `result-track:c85fb50373a427ffd387f908a604cb8618424a9ce4c16d680929c941477331a0` |
| 78 | `def` | [subfieldCongr](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/subfieldcongr.md) | 512 | `declaration-track:4bab0842367182e89005445a6e8c0a18ce21ce0866250310f2091be76b1fd1d4` |
| 79 | `theorem` | [closure_preimage_le](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/closure-preimage-le.md) | 523 | `result-track:39c38c52ac890829c37c46c41a7cff7173a64777610ae6ed4b98373cdd57e388` |
| 80 | `theorem` | [multiset_prod_mem](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/multiset-prod-mem.md) | 531 | `result-track:2ebb3df11c20a674b8cbcfbae861669021a77780d74c1a19e8d60a88acf96c05` |
| 81 | `theorem` | [prod_mem](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/prod-mem.md) | 535 | `result-track:7a5e1ea3b3360070575e62138dd18071781183ee06e58f03e564d956cfa09767` |
| 82 | `instance` | [toAlgebra](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/toalgebra.md) | 539 | `declaration-track:988bd0fc08269abbd854bececc849df64797b8934becb434adf7e2eadd7d14a7` |
| 83 | `def` | [commClosure](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/commclosure.md) | 543 | `declaration-track:8e2e8366b2522559dd9a822a57452db08f708126b43ca6bf8464c63fdf20852a` |
| 84 | `theorem` | [commClosure_eq_closure](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/commclosure-eq-closure.md) | 565 | `result-track:3505ef430baa90a303a3eabeb6255d98fd7222771efd32ae1eb5eb6229fd4242` |
| 85 | `theorem` | [mem_closure_iff](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/mem-closure-iff.md) | 570 | `result-track:9ac6ad000f3cd542ada8232073e216cee9557bb7551a7b29c168571e8c603402` |
| 86 | `theorem` | [map_comap_eq](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-comap-eq.md) | 580 | `result-track:30290e99c632eb8e94fb8bd28a901a5b6edb4537ef5ba0e9f1e223ae6608461a` |
| 87 | `theorem` | [map_comap_eq_self](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-comap-eq-self.md) | 583 | `result-track:4d8e750f35e69f9eca60c01f02cd25ac404491b6f213e331b269c85071400bb0` |
| 88 | `theorem` | [map_comap_eq_self_of_surjective](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/map-comap-eq-self-of-surjective.md) | 587 | `result-track:9a62fb8a73fa170a9006136c64f847bbb8ad3d7801fd44540c3bb42b47bd126a` |
| 89 | `theorem` | [comap_map](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/comap-map.md) | 591 | `result-track:940890cd41c1351acae01f34943231401ee224cb90e080e48b33fc3ab32d595e` |
| 90 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 608 | `declaration-track:1d3699bcb5f5eaf9b2d22e8c4a2e61a82f880bcd7f44ab9a10c9132330c948a3` |
| 91 | `theorem` | [smul_def](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/smul-def.md) | 611 | `result-track:6f598c5445108773a7491b1f366f4b86fc6d7f09e0651ecaf289c4d8491e958e` |
| 92 | `instance` | [smulCommClass_left](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/smulcommclass-left.md) | 614 | `declaration-track:e47827adee12ac3cd9b81728680916400d10d59e178466c990a2e423d455734a` |
| 93 | `instance` | [smulCommClass_right](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/smulcommclass-right.md) | 618 | `declaration-track:a8ac02392b7a526dfe76afd8103851789f179be3b47e566a27788b55c76a1a9d` |
| 94 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 623 | `declaration-track:a12d8271b82086df0b3f0966049a6725bada46aaef6f89c28fdf50c66d180447` |
| 95 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 627 | `declaration-track:ad185f9ace17fdcdfec93f4976f52f14e3c00c0bf58f57438ca7f07d607b52ab` |
| 96 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 631 | `declaration-track:4a7436d75f2271503bf4de674bef5e8ead48707c904c6e5c1b5a091beb942718` |
| 97 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-13.md) | 635 | `declaration-track:ce009920c1c69b87790b1820fc9501a7ca1c2d2e1681562c8b1d44052f68b7b7` |
| 98 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 639 | `declaration-track:5ba5d8bc3af1a92307bec766308fe40859d7e11db60c3750042f4699f3780597` |
| 99 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 643 | `declaration-track:bba089cc5f01b41cdee26bf7d6f98e3feb5db4e7df22cfa5c82b83a9cb6788c6` |
| 100 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 647 | `declaration-track:6d1af9c9911d561dcaddb8a13014bb303681dd759c0ec0f8fed7aca9f91f6ba4` |
| 101 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance-source-edition-14.md) | 651 | `declaration-track:ea925af4a809dfa0a1664c2f1ed760a57dbd5f2b76c13ba39cbe54bb319b30cc` |
| 102 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/SubfieldBasicNamespaced.lean/declarations/instance.md) | 655 | `declaration-track:0d5dd4c758f8ba9ee33659f476fbfed7bcb95f44566778b9a36fdf3df118c06c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b38fbd716c8d96e9310de06ce0ac76555e1019e983947fc328501dcb2009900 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant36ea430ed80723fcf9f212ce289f98f7fddb85b4537479c448029fbc9cc3e825.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant36ea430ed80723fcf9f212ce289f98f7fddb85b4537479c448029fbc9cc3e825.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
