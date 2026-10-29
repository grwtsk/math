# Verification target: Constructions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dc7e13c975ea4399781d9b1eb72c50572a31561",
  "lexical_observation_count": 148,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dc7e13c975ea4399781d9b1eb72c50572a31561`.

Source path: `GRWTSK/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Update` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Prod.TProd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.UnionLift` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Defs` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Instances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Disjointed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_to_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-to-countable.md) | 29 | `result-track:5b3b617051a8e2df0d062323731b24c137e25c22c4c1991f4e916f9c2a1c37d3` |
| 2 | `theorem` | [measurable_to_countable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-to-countable-source-edition-2.md) | 38 | `result-track:951095c7f6694e3780e9f1cc14b3cd9ebc6b0d5fad989691e70accdca8ff8fab` |
| 3 | `theorem` | [ENat.measurable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/enat-measurable-iff.md) | 42 | `result-track:7949a018dadd31dc9a273153117f70344f587262df804d889266896d5780a236` |
| 4 | `theorem` | [measurable_unit](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-unit.md) | 53 | `result-track:e1335c6a0a8fe58b093aa12d0b8166324bfdd97bb47fbab170872c038aa50e04` |
| 5 | `instance` | [_root_.ULift.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/root-ulift-instmeasurablespace.md) | 59 | `declaration-track:f0655d930f058b47c430b364a1d54f5be80825bdb4b5cce0f15c6c2d2a51d5f8` |
| 6 | `lemma` | [measurable_down](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-down.md) | 62 | `result-track:2f16f9404c0a1339ab871a313d86cdb767ae54d5fca760b10419625990379968` |
| 7 | `lemma` | [measurable_up](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-up.md) | 63 | `result-track:93fbeba5d7928c16a27c54993e73514c5e3917c97a096439f515d32c53f7f62d` |
| 8 | `lemma` | [measurableSet_preimage_down](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-preimage-down.md) | 65 | `result-track:ec52667f2d34d991a9fbefc2f9250d6c147b4f5ed07a96767895b7bc4b61aa8b` |
| 9 | `lemma` | [measurableSet_preimage_up](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-preimage-up.md) | 67 | `result-track:7ad933a045e97438c4e9827234521dd08d645a11a71e176f7eac6be59208718c` |
| 10 | `theorem` | [measurable_from_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-from-nat.md) | 77 | `result-track:865ebe7c8d7c0aa99eee2481bda7a4e33679703a89f9c77c73276ed761e3e6d9` |
| 11 | `theorem` | [measurable_to_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-to-nat.md) | 80 | `result-track:55e3c53a91776026295b5803eee79269a086a6f687dbd13f6456556627da5936` |
| 12 | `theorem` | [measurable_to_bool](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-to-bool.md) | 83 | `result-track:78aa73e9e28f84d86b8ba560e7a83ead9d99bd7ce59a3b4f24a7a65f45903636` |
| 13 | `theorem` | [measurable_to_prop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-to-prop.md) | 90 | `result-track:acbcacb85b13a40bbd0b584ac32c00020cd5e54592a0c735b3bff6022f27135b` |
| 14 | `theorem` | [measurable_findGreatest'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-findgreatest.md) | 97 | `result-track:05e61aad8f955d7c7878062d015179468529e34ec67b23ecfc0abd1f11e30fce` |
| 15 | `theorem` | [measurable_findGreatest](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-findgreatest-source-edition-2.md) | 102 | `result-track:23ed49c0cac27336ef341d57efeaf6d10a77a3599c9b37173a685b1ffef5c476` |
| 16 | `theorem` | [MeasurableSet.disjointed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-disjointed.md) | 110 | `result-track:fbd8916516edc6d4de9a74cee3f81571484cfe1d6c236500590490373719f5d8` |
| 17 | `theorem` | [measurable_find](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-find-source-edition-2.md) | 114 | `result-track:c3425a81abbf456a2246f1b670bd4c7a21f738b89a1359041b6b2a373861573c` |
| 18 | `instance` | [Quot.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/quot-instmeasurablespace.md) | 126 | `declaration-track:62d2622d20eca07f3650a2d2a2e6cc45a51cd2954a73e3ccd0967936db198056` |
| 19 | `instance` | [Quotient.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/quotient-instmeasurablespace.md) | 130 | `declaration-track:2c33935049abe070728978ed447d9df75799c1c7cf427987fc751d1f1842ac80` |
| 20 | `instance` | [QuotientGroup.measurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/quotientgroup-measurablespace.md) | 135 | `declaration-track:7a66456c1255dc3fa3b878327472fd9bbfbdad7288923ac0472ac6badbd9dea4` |
| 21 | `theorem` | [measurableSet_quotient](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-quotient.md) | 139 | `result-track:e5780f89917d5d9bee64bede3e9b53e0d1d4987e6cb2fc626579b0da5b23a692` |
| 22 | `theorem` | [measurable_from_quotient](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-from-quotient.md) | 143 | `result-track:289fd1eda107f213eecf9284cea74de0f7418c6af8956b2f556b931d130712ca` |
| 23 | `theorem` | [measurable_quotient_mk'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-quotient-mk.md) | 148 | `result-track:007c5322102323908ff998ccddb22c5f2855a4db1aa3504c5abbd660e83d99d9` |
| 24 | `theorem` | [measurable_quotient_mk''](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-quotient-mk-source-edition-2.md) | 152 | `result-track:86e229e38eea6257a6c894ae120f49b0f79e5ab69fe610e93a4b1172c07a7684` |
| 25 | `theorem` | [measurable_quot_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-quot-mk.md) | 156 | `result-track:d76fb778d3c831e69d700c9928a4dd5bbf26c52f84b205f1d6b1f4e99e6a3e96` |
| 26 | `theorem` | [QuotientGroup.measurable_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/quotientgroup-measurable-coe.md) | 159 | `result-track:08698475e3966513ec4002d2aafdc474c120c0703ff662fe1eaad07de58c9034` |
| 27 | `theorem` | [QuotientGroup.measurable_from_quotient](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/quotientgroup-measurable-from-quotient.md) | 164 | `result-track:91c2808255a1fa62e53fde02ad7e32154cb97a0024ab29a409da07c5d18af98d` |
| 28 | `instance` | [Quotient.instDiscreteMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/quotient-instdiscretemeasurablespace.md) | 168 | `declaration-track:8c83ae1125183c6965617a59bb93e3a25748d302ac5ee56b2646ed0b7b2386aa` |
| 29 | `instance` | [QuotientGroup.instDiscreteMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/quotientgroup-instdiscretemeasurablespace.md) | 173 | `declaration-track:9f7957ea2c6ce08bd994f7659329e846be03ad22b3d75038faa112895c859788` |
| 30 | `instance` | [Subtype.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/subtype-instmeasurablespace.md) | 181 | `declaration-track:b3a23e8d2ca4ccac29bfaa1007618f1e96b909a3f5d99126dfe42c2f709aa795` |
| 31 | `theorem` | [measurable_subtype_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-subtype-coe-source-edition-2.md) | 190 | `result-track:bea323322c421d680104804b4db467caefdf6d5a41b93fe382ff40fd138cd75c` |
| 32 | `instance` | [Subtype.instMeasurableSingletonClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/subtype-instmeasurablesingletonclass.md) | 193 | `declaration-track:348a98576a187e88e8ae279b8d2d333fcb6a6166b384b145a089e69ce8823d23` |
| 33 | `theorem` | [MeasurableSet.of_subtype_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-of-subtype-image.md) | 203 | `result-track:be7e46ccaf6647ab997ae6540b2413f82dcc7ab69b740bf3316436e884e33ca1` |
| 34 | `theorem` | [MeasurableSet.subtype_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-subtype-image.md) | 207 | `result-track:20f4ce03ead97e7d3adfdfa201ddde883f9427d1b796e211199aca90c6800008` |
| 35 | `theorem` | [Measurable.subtype_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-subtype-coe.md) | 214 | `result-track:2060f97a7113450e8322b2b0eb69f3b350c224ca52e7581a9362124c4d49c611` |
| 36 | `theorem` | [Measurable.subtype_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-subtype-mk.md) | 221 | `result-track:a6c59027a8b00ece03f896a1983fc181edab7db90e4f9371ec95dac42356b6cd` |
| 37 | `theorem` | [Measurable.rangeFactorization](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-rangefactorization.md) | 226 | `result-track:77f4f38c42ec6df247c05348c81e929754c6893a8799762dd8d43875b42ab731` |
| 38 | `theorem` | [Measurable.subtype_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-subtype-map.md) | 230 | `result-track:f8b3946ec579640938880ee2797ae50a182bbfd96880996b60cf2c2ad62a4a83` |
| 39 | `theorem` | [measurable_inclusion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-inclusion.md) | 234 | `result-track:7fbdb9e310f9dca6545dacc84769bee67bc6edf9d3f6dd74727d8239a1fd2b0d` |
| 40 | `theorem` | [MeasurableSet.image_inclusion'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-image-inclusion-source-edition-2.md) | 237 | `result-track:cd0a6bc7751703931cb0a6171ca2e3875f9450e9784f412385cfc97324d07139` |
| 41 | `theorem` | [MeasurableSet.image_inclusion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-image-inclusion.md) | 245 | `result-track:95d022cba7319465e1c152adb922fb2b9aeaeacc4aa130af7541befedc191824` |
| 42 | `theorem` | [MeasurableSet.of_union_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-of-union-cover.md) | 250 | `result-track:6a39d2d9c8156a09c938b73ce60f54921753456fdf2650bf85a9dc4842bf6751` |
| 43 | `theorem` | [measurable_of_measurable_union_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-of-measurable-union-cover.md) | 256 | `result-track:a78409e4e1418d3c1939a9a9b31bcc88d8f9dc91717968e79f5bef0443203533` |
| 44 | `theorem` | [measurable_of_restrict_of_restrict_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-of-restrict-of-restrict-compl.md) | 261 | `result-track:f8eb16a4bc0f911939fb86884c5b525206727509525d964bae5f994b9153cb6c` |
| 45 | `theorem` | [Measurable.dite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-dite.md) | 265 | `result-track:07621a5024c289345befd378bc51d81ee72c07405b2068b9d6ff57efbf3f0a6a` |
| 46 | `theorem` | [measurable_of_measurable_on_compl_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-of-measurable-on-compl-finite.md) | 270 | `result-track:72d5917f748daf397b0382704096c918058f8a71304e591b1f801ac6733138ad` |
| 47 | `theorem` | [measurable_of_measurable_on_compl_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-of-measurable-on-compl-singleton.md) | 275 | `result-track:e55c0336be5c1921ea9d9566a63e59e632db10036aededbd88ba010e67126248` |
| 48 | `def` | [measurableAtom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableatom.md) | 288 | `declaration-track:1cae4a573b6332e2340f5d0bb908e5ac2ca23315021f9d9a571d55b7b6125cf7` |
| 49 | `lemma` | [mem_measurableAtom_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/mem-measurableatom-self.md) | 291 | `result-track:e5f753362821cf165f6ceba3689076c05232c31030abcc6b6c5d21fb5d75cd3b` |
| 50 | `lemma` | [mem_of_mem_measurableAtom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/mem-of-mem-measurableatom.md) | 294 | `result-track:a14e4bd8081cb333e0350f95d5f76be844209a62c261a19ff07a44e8e9aec761` |
| 51 | `lemma` | [measurableAtom_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableatom-subset.md) | 299 | `result-track:a6b9f0b9257c71fb0c691ef5982e73cd8a8f982623e87675df332c2ab515f196` |
| 52 | `lemma` | [measurableAtom_of_measurableSingletonClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableatom-of-measurablesingletonclass.md) | 303 | `result-track:606074e0d72e28994a4a14ae1aa00c627dbb15dd2f3733dac1530a46bed7ca14` |
| 53 | `lemma` | [MeasurableSet.measurableAtom_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-measurableatom-of-countable.md) | 307 | `result-track:1aba3670461c27dda87adaeb1c75184d99057e58cd9965ad5811ebbba6aae5d9` |
| 54 | `def` | [MeasurableSpace.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurablespace-prod.md) | 330 | `declaration-track:fa0b83c61a0db829e5c69f2b902dfc71cef8f83f69d31ce56d1a73990cbab9cd` |
| 55 | `instance` | [Prod.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/prod-instmeasurablespace.md) | 334 | `declaration-track:1af9ab1c00f830f309800a555573fa4ab349fe1c2913f623221f2d3327eee572` |
| 56 | `theorem` | [measurable_fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-fst-source-edition-2.md) | 339 | `result-track:8dce5930a796acc5b81eef5d4736eca3025c4461c4922c2d801c4bc55386ebe9` |
| 57 | `theorem` | [measurable_snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-snd-source-edition-2.md) | 344 | `result-track:a17baba9b16677a692056905610ebf9b6f3527d3a7f7da69737ddc92ba30e83b` |
| 58 | `theorem` | [Measurable.fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-fst.md) | 351 | `result-track:815a5708dc4b2c2bbee2a016153cedfe9fa28f24b7bf56f151b17b09de2b9917` |
| 59 | `theorem` | [Measurable.snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-snd.md) | 355 | `result-track:79735c8c1b7bb65bc7f550c3ba4d8f1a5c153f2a62ce1b5f93e8cff068e153d5` |
| 60 | `theorem` | [Measurable.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-prod-source-edition-2.md) | 359 | `result-track:8d5e707d31670080a52418f32eaa9f8f65f9b53d9bd4098d8f040be9e72154bd` |
| 61 | `theorem` | [Measurable.prodMk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-prodmk.md) | 371 | `result-track:aca02571df0151170d159908a2365e3efa6f1d2e8a0aaaa25b718ac1bf1b542c` |
| 62 | `theorem` | [Measurable.prodMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-prodmap.md) | 379 | `result-track:a55d4d2ab3e83d3186e0b2a8378c369fe4254cac6ba34c7142196c7cad97299e` |
| 63 | `theorem` | [measurable_prodMk_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-prodmk-left.md) | 386 | `result-track:e6bc6e5bda259ee481e6c032fbd60c10a66d8414a84fa06ce668a007549718fe` |
| 64 | `theorem` | [measurable_prodMk_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-prodmk-right.md) | 392 | `result-track:ab27d39396956e79583e8d713587ef3e59e23b5a57d11a390f912bd8896a0fc9` |
| 65 | `theorem` | [Measurable.of_uncurry_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-of-uncurry-left.md) | 398 | `result-track:6b0de07c3775bfdb794ae24a2536e9c8d923811eb90429709402525eefa2d691` |
| 66 | `theorem` | [Measurable.of_uncurry_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-of-uncurry-right.md) | 402 | `result-track:dfeafd48fe21e5ba52f7d708ad00b171fe4a5e0139420cea7b5ecdc600fa3bde` |
| 67 | `theorem` | [measurable_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-prod.md) | 406 | `result-track:8445f1513e6cb290439c029a5d36e4a8d71df0bd1c1cec8857c9afa28b8aafb4` |
| 68 | `theorem` | [measurable_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-swap.md) | 411 | `result-track:f9f82284b4747012d6f3dbea38f9a1d7db57f82651b31f675d4f6ce90740f915` |
| 69 | `theorem` | [measurable_swap_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-swap-iff.md) | 414 | `result-track:c9bbee86343fcc86838517dcee8c73e639e4eb04aca58966b1718d949095fd7a` |
| 70 | `theorem` | [MeasurableSet.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-prod-source-edition-2.md) | 419 | `result-track:6c9d898189b31a1da6f7de53e8a3eb8c597af31bf6e8b14b88bda3e29f853c6a` |
| 71 | `theorem` | [measurableSet_prod_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-prod-of-nonempty.md) | 423 | `result-track:f56e6a6ad35d0de1a8cc57aa536f2579d14bc3dce3820f3ecd5f643c99a13afd` |
| 72 | `theorem` | [measurableSet_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-prod.md) | 431 | `result-track:3fc54134f226671b8a72097a84fce972e6b3f68c63cb8fea978ff2f625a12cc6` |
| 73 | `theorem` | [measurableSet_swap_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-swap-iff.md) | 437 | `result-track:ffeb21a76096542544aa7cf959fa15b132662a33ed9c9828095baa2579ce1460` |
| 74 | `instance` | [Prod.instMeasurableSingletonClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/prod-instmeasurablesingletonclass.md) | 441 | `declaration-track:e9a8b7fcdaa698e2660ed7ead12b868cd978737cbe50b764d6c67ab940e2b749` |
| 75 | `theorem` | [measurable_from_prod_countable'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-from-prod-countable.md) | 446 | `result-track:771f5dd581a130ea1bd2a714beb1d34073ed49f19c9f3939f38809d90e2d3019` |
| 76 | `theorem` | [measurable_from_prod_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-from-prod-countable-source-edition-2.md) | 459 | `result-track:b9a4cab8f8f2d26c25d507a69c88d5c736e63d85cfbed2bb71689b580ee41fb0` |
| 77 | `theorem` | [Measurable.find](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-find.md) | 466 | `result-track:a8d80b6b9c96a0e2aae6c0b36f065d05c9ab28221d29461b4742f209c3e8d07c` |
| 78 | `theorem` | [measurable_iUnionLift](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-iunionlift.md) | 475 | `result-track:7d19efed806daecfeea6b069e14423d41bc3d457540670de219fe4b771e6452d` |
| 79 | `theorem` | [measurable_liftCover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-liftcover.md) | 485 | `result-track:a0ba7942f4681cb9c9d85286ca0f67f0965f4213d1a861920638b60d79183ebe` |
| 80 | `theorem` | [exists_measurable_piecewise](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/exists-measurable-piecewise.md) | 498 | `result-track:defeba8c3514e478db968952f479e672d8c0c4b3a00cf552925047ea9d225c9d` |
| 81 | `instance` | [MeasurableSpace.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurablespace-pi.md) | 525 | `declaration-track:249ea28dc4a1f974ea245b73d62221c6619ec48fed547aaa406bf85589d1dade` |
| 82 | `theorem` | [measurable_pi_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-pi-iff.md) | 530 | `result-track:208fdaaabb698f361e3a679bd296df7aebad78ce3cf34a8647b5576c6a5bd1bc` |
| 83 | `theorem` | [measurable_pi_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-pi-apply.md) | 535 | `result-track:54721ae2bb168ef2270665f59d0eb9e738cb6353422613dab83ae5f2c3149286` |
| 84 | `theorem` | [Measurable.eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-eval.md) | 539 | `result-track:1f2b0ae770223e63d20ef37087c15e4779a0eff1111b5d85557a30fe327c11fd` |
| 85 | `theorem` | [measurable_pi_lambda](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-pi-lambda.md) | 544 | `result-track:e1f40b7163d8bc90991c46ae62f8e5557e397a8c5496687860c6b34c8cb08321` |
| 86 | `theorem` | [measurable_update'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-update.md) | 550 | `result-track:440b9c4479654aaafdd554158cb810a0b5d8e04fdfa7c31e49f04198099ee22f` |
| 87 | `theorem` | [measurable_uniqueElim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-uniqueelim.md) | 562 | `result-track:9cdf3b1ac305b9e7c66617a41c95d93c0ee131382fdfb5c01ebee366f0c238e5` |
| 88 | `theorem` | [measurable_updateFinset'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-updatefinset-source-edition-2.md) | 567 | `result-track:f0897d2c935e9db72cd361f4a41f728c7351766c0c6228634b2b9c08d33ebf53` |
| 89 | `theorem` | [measurable_updateFinset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-updatefinset.md) | 574 | `result-track:d2714da1317b8115c9af9db71e15abc79eb83175f355cec84434656eaddc619e` |
| 90 | `theorem` | [measurable_updateFinset_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-updatefinset-left.md) | 579 | `result-track:be6ad518fb58fcfb639e83de9523268eefd3366ae83b81cff35bfe24903506d3` |
| 91 | `theorem` | [measurable_update](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-update-source-edition-2.md) | 587 | `result-track:5e6d1155eeed588ddbb6d09c4794962bf764e7a4dfdb813bfaedf27731e0cb18` |
| 92 | `theorem` | [measurable_update_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-update-left.md) | 591 | `result-track:7c335b38eebed4e3dd3cc97e1dd262495fd08b98173a7825425461a8d5aa006f` |
| 93 | `theorem` | [Set.measurable_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/set-measurable-restrict-source-edition-2.md) | 596 | `result-track:dd36ba23e82235cb613c59c97a8d31006e2e739ef72896de3c9db80910a41b9c` |
| 94 | `theorem` | [Set.measurable_restrict₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/set-measurable-restrict.md) | 600 | `result-track:833b613242f64229b91924b701048229e5afca494bc9dff61840a44f316dc4cf` |
| 95 | `theorem` | [Finset.measurable_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/finset-measurable-restrict.md) | 605 | `result-track:a2886557471287758e3e61129d833e49a6d4379b6b11eb730e281edc0cb695c6` |
| 96 | `theorem` | [Finset.measurable_restrict₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/finset-measurable-restrict-source-edition-2.md) | 609 | `result-track:a6177cdec1f38219e154157f383cd0aa8ecc26dc0e7ad13c46e21fde8780bf16` |
| 97 | `theorem` | [Set.measurable_restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/set-measurable-restrict-apply.md) | 614 | `result-track:0289663ad9e49f730895f7028678e989731ef21358632d2de843b110858ed6de` |
| 98 | `theorem` | [Set.measurable_restrict₂_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/set-measurable-restrict-apply-source-edition-2.md) | 618 | `result-track:8e72bd5129c2010664eae96b325d7526ea27fdaff3ba9e59169e0241d406ad95` |
| 99 | `theorem` | [Finset.measurable_restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/finset-measurable-restrict-apply-source-edition-2.md) | 623 | `result-track:32ccde87f7d1652cf4c7abebe0a7acc3215bd72ef1b9eded053e1abf6ac8cbbf` |
| 100 | `theorem` | [Finset.measurable_restrict₂_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/finset-measurable-restrict-apply.md) | 627 | `result-track:1e40f1bca24ce9181cb56a8fec3d335bd3d9aab7b364252aa10e15ed604f7aed` |
| 101 | `theorem` | [measurable_eq_mp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-eq-mp.md) | 632 | `result-track:8c4bba9771d1be3ff5c57ee205108fdae2d6aa2ac4c9f835c1084d6dfc1d8610` |
| 102 | `theorem` | [Measurable.eq_mp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-eq-mp-source-edition-2.md) | 637 | `result-track:d42f5019cd95cfaf7ef3ea91298b10e8bace21062e6424ad120cddf2dba4f552` |
| 103 | `theorem` | [measurable_piCongrLeft](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-picongrleft.md) | 642 | `result-track:a14fe81aaed103d8770ac737787a62e7467ba2acc18ff52fc8e9cb45e35c4340` |
| 104 | `theorem` | [MeasurableSet.pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-pi-source-edition-2.md) | 651 | `result-track:fad29b2e4486f151ceaef4061f439d69c614159671e7acf09e28b2b3b2a14b9e` |
| 105 | `theorem` | [MeasurableSet.univ_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-univ-pi.md) | 656 | `result-track:c3193f819798f3ccd8ffd3116a6a6b5c0e15c3431544a8c2f08f7ae54f9b95d1` |
| 106 | `theorem` | [measurableSet_pi_of_nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-pi-of-nonempty.md) | 660 | `result-track:991a96519a8664adb4a145e8464fd09e9113d8fc636551aa0d968ac79c93ad0a` |
| 107 | `theorem` | [measurableSet_pi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-pi.md) | 669 | `result-track:cfd40f03952742d5312e88b9e4f7e795dd34b686f9260ddced79c76838cee51c` |
| 108 | `instance` | [Pi.instMeasurableSingletonClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/pi-instmeasurablesingletonclass.md) | 675 | `declaration-track:0e4cbd3505e3be85df23c2645babbbd8c2c39368ac6aba4fbf4689000cd5cf96` |
| 109 | `theorem` | [measurable_piEquivPiSubtypeProd_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-piequivpisubtypeprod-symm.md) | 682 | `result-track:c4e24448817addcd5b6a5f7ba5adf503826d5c81bc1ed3f12af4e280bbc2d873` |
| 110 | `theorem` | [measurable_piEquivPiSubtypeProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-piequivpisubtypeprod.md) | 696 | `result-track:480bc2b5bc8034ce5a870d69f8bc4e97a071526a409cbcd2d66130fa0843210a` |
| 111 | `instance` | [TProd.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/tprod-instmeasurablespace.md) | 703 | `declaration-track:d78cd53ebb4f6b1ed9fc3ca7f86a070ab72614847c582f92058053ffb2e88e17` |
| 112 | `theorem` | [measurable_tProd_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-tprod-mk.md) | 714 | `result-track:8c255610852781e7270d33ef98174ff01099d8f5aeb95ef7f3fe5d12142885ed` |
| 113 | `theorem` | [measurable_tProd_elim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-tprod-elim.md) | 719 | `result-track:0c18a32c0b52f960d9260b704a2addb0e7878704a89aa0a96a98b76a86a2be35` |
| 114 | `theorem` | [measurable_tProd_elim'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-tprod-elim-source-edition-2.md) | 729 | `result-track:20ee24acb6741de49433ff2acd2cdd0a06e22356e48745f06b8fb72ce367fff7` |
| 115 | `theorem` | [MeasurableSet.tProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-tprod.md) | 733 | `result-track:5375919ca79e9cb0394de68e5ef94c5aa8cb7c2c32df3bb96dab3dd7f1ec09e6` |
| 116 | `instance` | [Sum.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/sum-instmeasurablespace.md) | 741 | `declaration-track:14b5830a8b3fe618a5d4577a10ee8b07873d10243d15f2b7f923dc5d3776f114` |
| 117 | `theorem` | [measurable_inl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-inl.md) | 748 | `result-track:af52145a12d110f030c0d7d819ac247d6a7a2030c58697898e6432060c6c0aba` |
| 118 | `theorem` | [measurable_inr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-inr.md) | 752 | `result-track:573a22034f4d72595a4f00b1acde18233e4ead6b09e1f5711dab877b00c6523e` |
| 119 | `theorem` | [measurableSet_sum_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-sum-iff.md) | 757 | `result-track:56ad3071a1138f1f689cc69b8e124df3c338a8425d5cb51673807918a160c824` |
| 120 | `theorem` | [measurable_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-sum.md) | 761 | `result-track:a11ee7f297c81f0ab9d7cc8553c2c983ee042fa79ea5579ad4dc06ca29637b04` |
| 121 | `theorem` | [Measurable.sumElim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-sumelim.md) | 768 | `result-track:a0f78ca02cccc36b83bb2a225374ee67f48744db48531058ec7b876cae7c0351` |
| 122 | `theorem` | [Measurable.sumMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-summap.md) | 772 | `result-track:7e1e63b8ba89f399f8bd627963dc50593db060b5138f215b12c0773108059a6d` |
| 123 | `theorem` | [measurableSet_inl_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-inl-image.md) | 776 | `result-track:d3f34d8f62c279d02c1d0d8c61dfc651985dfb0162e70617f81dd46716c93f3b` |
| 124 | `theorem` | [measurableSet_inr_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-inr-image.md) | 782 | `result-track:200c6c12ebbea459c1282f8a491e4a53ef94dc0e157fd612b9286ceab475db31` |
| 125 | `theorem` | [measurableSet_range_inl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-range-inl.md) | 788 | `result-track:0a4456317bcdd39762a49a8fcb23443ab26a65d7fb62bc945d0521098902c619` |
| 126 | `theorem` | [measurableSet_range_inr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-range-inr.md) | 793 | `result-track:36eb502b089976b53883e4e50e09006a5185717fcb6ab41ee21c447158af42c9` |
| 127 | `instance` | [Sigma.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/sigma-instmeasurablespace.md) | 800 | `declaration-track:a4c3336587e41aee02820fcd825964f397c6289dd516b70551829a17935e2a76` |
| 128 | `theorem` | [measurableSet_setOf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-setof.md) | 807 | `result-track:c0e1ba92e7e14ca258a5b623c7956cc212a09bd48ca348dbfa6219cc609660df` |
| 129 | `theorem` | [measurable_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-mem.md) | 811 | `result-track:a849efb08fb2b3aa21ebb8979ece27f1d6d7e24c6f8199426423a11f9869deec` |
| 130 | `lemma` | [Measurable.not](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-not.md) | 817 | `result-track:0e343d6ccb14c816dc8567c36d275911f7d66a98bdebc8fe49fb3250af4ed76e` |
| 131 | `lemma` | [Measurable.and](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-and.md) | 820 | `result-track:baafcd96910ab65b949f5df8ff8eb3957922e9134ddd1d14c0094b4b592f82fd` |
| 132 | `lemma` | [Measurable.or](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-or.md) | 823 | `result-track:5f5ec7479b49fd5320760992a054e49bf086faf7b6b9cb580b9c8b8837243ae5` |
| 133 | `lemma` | [Measurable.imp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-imp.md) | 826 | `result-track:dc4df8eca01a1b964eec2850fd722c674d72de83c5abb3aaeb012d25aab1e9c1` |
| 134 | `lemma` | [Measurable.iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-iff.md) | 829 | `result-track:a5d9700ecf6a02e032f3f57e10c9e9cb3ad276e748ac95e2cf71910f9fdc5d82` |
| 135 | `lemma` | [Measurable.forall](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-forall.md) | 832 | `result-track:44846c273d2d037d1a17e8fe295b7cf03d39b642e31ec6d735335338bab1ee0a` |
| 136 | `lemma` | [Measurable.exists](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-exists.md) | 836 | `result-track:b029c8c616bfbc222a3472b967337f8ea3a04a6f993fba170382ce06763b5d23` |
| 137 | `instance` | [Set.instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/set-instmeasurablespace.md) | 847 | `declaration-track:6c313a3adb5a07c3791490d5e969d0d9699ea807e3a8afb96b0ed6bf0d96a82a` |
| 138 | `instance` | [Set.instMeasurableSingletonClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/set-instmeasurablesingletonclass.md) | 849 | `declaration-track:498f49f061cad03a1dbcaf5e39da7ddeff6a12d6d68b328350b7b6ec14d39b8a` |
| 139 | `lemma` | [measurable_set_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-set-iff.md) | 852 | `result-track:7484c1c0f350117e8c93b9fa47188cedd6167ee11b35b0e0ae5f7cccdf010713` |
| 140 | `lemma` | [measurable_set_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-set-mem.md) | 855 | `result-track:e83913e58f1657dc35646dcbac899a774d308ce04086206e167b28d0165df46d` |
| 141 | `lemma` | [measurable_set_notMem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-set-notmem.md) | 858 | `result-track:c75a60c6ce1156e218693febd8497b31a1df7ca4a2eb0c350ab1eaab4762d4ca` |
| 142 | `lemma` | [measurableSet_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-mem.md) | 864 | `result-track:17fade8aa0381936698441fea0f0f5aac96c75077867e39e8a2b1140b80813c0` |
| 143 | `lemma` | [measurableSet_notMem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-notmem.md) | 868 | `result-track:fcf24137b43acde1e754706026eb494f485544015f48335377e83c36b8d923e8` |
| 144 | `lemma` | [measurable_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurable-compl.md) | 873 | `result-track:aa1d93b8bd91730ad22220ee029732d2a699be12f39ab8d38a975f5601081aee` |
| 145 | `lemma` | [MeasurableSet.setOf_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-setof-finite.md) | 876 | `result-track:ac40027273ddc90f6b23c16f1a4032ba1b9ec60b2e62edcccafcc14948c0b202` |
| 146 | `lemma` | [MeasurableSet.setOf_infinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-setof-infinite.md) | 879 | `result-track:ed190fecc250f26e7efa8b37783c51b6727ec1506fb544341f7e6ac9ca684d27` |
| 147 | `lemma` | [MeasurableSet.sep_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-sep-finite.md) | 882 | `result-track:53b6488fd34b2013335e84625ead743c6b0b75ec0301243e8eeaac1fddeeacc2` |
| 148 | `lemma` | [MeasurableSet.sep_infinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Constructions.lean/declarations/measurableset-sep-infinite.md) | 886 | `result-track:3319a8740ccf9ab0dc5a5bd366ece43110f81ce1319072be5af0ba977a823802` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c4b6b6af717fa877d3a5b96f2decaed10a54222b28dab2406451a8f45133a01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Constructions/Variant68d888f9520832c6d337bdf0d6741e0f5e42aae153a9ca0efcdb8343197caba9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
