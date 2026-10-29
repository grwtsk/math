# Verification target: Polish Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13d22689357e296d272a36ec51174a0849e49fa9",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13d22689357e296d272a36ec51174a0849e49fa9`.

Source path: `GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Cardinality` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Perfect` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [analyticSet_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-empty.md) | 89 | `result-track:2b1062de47b499b29b4e8f378fb046464944a392cc3c8925e2d3b51b55bb1cbf` |
| 2 | `theorem` | [analyticSet_range_of_polishSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-range-of-polishspace.md) | 94 | `result-track:d68275a447877cf71e87aaa19eb130e0ee9dc3bc057d1cd1cef70d8d6a41f2e9` |
| 3 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-image.md) | 107 | `result-track:f3d62afed165aa2143b6fb39ddda99370bd7475e548316f430c8aeb0db09a2e6` |
| 4 | `theorem` | [analyticSet_iff_exists_polishSpace_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-iff-exists-polishspace-range.md) | 115 | `result-track:f5d440b5550825c2b8a6888d0a9e636d90a54d46ff05fa91782666aad810c54c` |
| 5 | `theorem` | [AnalyticSet.image_of_continuousOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-image-of-continuouson.md) | 134 | `result-track:7d8d4d4aebaca76c3a93b46221825e842d887312141954d5d2a8db3799a99955` |
| 6 | `theorem` | [AnalyticSet.image_of_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-image-of-continuous.md) | 146 | `result-track:f4c71efd74f93efa3f74be7cf34e6ed7830dcadaaea2e6532e036bf0a28715eb` |
| 7 | `theorem` | [AnalyticSet.iInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-iinter.md) | 152 | `result-track:565edfffe3578cf94032c9626452672d47987aad4c45c249a5763c53778f5d2b` |
| 8 | `theorem` | [AnalyticSet.iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-iunion.md) | 195 | `result-track:69169c05f8b1f5fc0b3975ee4725666dc9f99d84bcadb545c480cc00de730fc0` |
| 9 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset.md) | 217 | `result-track:3ae43437160e3ff6781b50dd757a455657336084aa54c13e7f2c338ce3853ca3` |
| 10 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/isclopenable.md) | 226 | `result-track:76d62c7acba04be1c959b8be03cb1df705f7773d765412ff0898d32e3f79cd44` |
| 11 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-source-line-235-occurrence-2.md) | 235 | `result-track:faf30e0e6486f3a1fcd6024c53a494e6c7d405ebad89c68c054356b93a6bb4f7` |
| 12 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/exists-continuous.md) | 250 | `result-track:9f5bdcb4c68d25d7036367cdc7efd399a2b39ffb828c41113a3d9ed62e12d658` |
| 13 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-image-source-line-272-occurrence-2.md) | 272 | `result-track:f947e8f496f4f8beabcb1d4cca74c46625b1c58155d3df7d2747d07b0be10111` |
| 14 | `def` | [MeasurablySeparable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurablyseparable.md) | 290 | `declaration-track:5e5e1fcdc0cf2f727dda6315f2e2888f10d65d9dd51728d0f0c66eac9b859a8b` |
| 15 | `theorem` | [MeasurablySeparable.iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurablyseparable-iunion.md) | 294 | `result-track:a4c9136321db157168d86ca8e236f083e2034f496fa503d775c39f0f786937eb` |
| 16 | `theorem` | [measurablySeparable_range_of_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurablyseparable-range-of-disjoint.md) | 312 | `result-track:ed27083a6dce6f4b0f8c214577834db9451e6efd5f9e5b4586781982daad93e4` |
| 17 | `theorem` | [AnalyticSet.measurablySeparable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-measurablyseparable.md) | 426 | `result-track:2d0d64c5c6077b551a158a366317273fed9e12bf001614a79389ec3b2f8269de` |
| 18 | `theorem` | [AnalyticSet.measurableSet_of_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/analyticset-measurableset-of-compl.md) | 439 | `result-track:69b743d82139fd88f4fbeda349471d7920f5d4099a7c4b8865a2a521d2ea6351` |
| 19 | `theorem` | [measurableSet_preimage_iff_of_surjective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableset-preimage-iff-of-surjective.md) | 462 | `result-track:13ec74c77161ef703fa8eab291d5ee76b616560d976384761ce95488c534d522` |
| 20 | `theorem` | [map_measurableSpace_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/map-measurablespace-eq.md) | 473 | `result-track:d6b4815d62f526a4d2ea69ea3f3e8d5ac3602ff4bbdd1c6aa22451a0d86628bc` |
| 21 | `theorem` | [map_measurableSpace_eq_borel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/map-measurablespace-eq-borel.md) | 478 | `result-track:d2dd09fa73dc8a8c0af601df02f7b2a03da239e1cbcc84ae5fa4945880ae77bf` |
| 22 | `theorem` | [borelSpace_codomain](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/borelspace-codomain.md) | 485 | `result-track:fa73b725d782713b7dc47b8ad3de1416c9f3285be72f26f197aed028d072fd5f` |
| 23 | `theorem` | [measurableSet_preimage_iff_preimage_val](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableset-preimage-iff-preimage-val.md) | 493 | `result-track:ddd91671b99063a0b21a8f9157b9c1a97a66aae96b14a69ade4911c36b4ea951` |
| 24 | `theorem` | [measurableSet_preimage_iff_inter_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableset-preimage-iff-inter-range.md) | 503 | `result-track:ed5d6f98a6d2676a51de9a8c4fa58d30fd51a534ad1fa3eef57009e5f451d81f` |
| 25 | `theorem` | [measurable_comp_iff_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurable-comp-iff-restrict.md) | 513 | `result-track:aa84c181bc551f0da628f43abb8ad745eef0e6650498d863a36d0e9a20ad5457` |
| 26 | `theorem` | [measurable_comp_iff_of_surjective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurable-comp-iff-of-surjective.md) | 521 | `result-track:48f1b6748ae7df040159fe811c05fb0364a5848823e89a379849f740db0f959d` |
| 27 | `theorem` | [Continuous.map_eq_borel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/continuous-map-eq-borel.md) | 528 | `result-track:b8ccf2d068cd3d82b3a622bacde0f5cda5a4ca3c04df154af1a26069de7e6def` |
| 28 | `theorem` | [Continuous.map_borel_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/continuous-map-borel-eq.md) | 536 | `result-track:5686beb5111185aca0f0d78c86d4bb796db3152e1099ebcb3030b2df7d83f501` |
| 29 | `instance` | [Quotient.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/quotient-borelspace.md) | 543 | `declaration-track:3c7bf8bf627c5e2fc49e5ce75e61911a45e1ef06a02e11e3250c0957a0b4db22` |
| 30 | `instance` | [QuotientGroup.borelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/quotientgroup-borelspace.md) | 550 | `declaration-track:338580330da55fb8fe4674c94a5280ba92b05e83463d7c7e18190714c85392ed` |
| 31 | `theorem` | [measurableSet_range_of_continuous_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableset-range-of-continuous-injective.md) | 569 | `result-track:fcd0852b2a2ca1c4df0a165a48c8a935d3a00aff2d89f83fd1c56792b339296a` |
| 32 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableset-image-of-continuouson-injon.md) | 719 | `result-track:8224196c651c2d516df096efa0184846bb575eb0ecfb54b9cf668b4f772e3d42` |
| 33 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/image-of-continuouson-injon.md) | 734 | `result-track:4ac7783e5b4234aaf7f42a902c56566f170e17299b4e37bf7052d5c2c8663c33` |
| 34 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/image-of-measurable-injon.md) | 747 | `result-track:5373006abe01a43fa14feaae40792e50eff14a70406e437e7ee89f39352c924e` |
| 35 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableembedding-source-line-766-occurrence-2.md) | 766 | `result-track:ff9715f2a89dcd84a8fff5bc64d9c6b34385cec5798426eda157975a141964c2` |
| 36 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableembedding.md) | 776 | `result-track:4e18cf1459e5acb9bf51161945806227dcc67d01a556470eb58e52e2950b5700` |
| 37 | `theorem` | [Polish Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableembedding-source-line-792-occurrence-2.md) | 792 | `result-track:786308298c3ce0d9b6892a457cfcefe5b177dc65a3c237a423bde39fa5a198a8` |
| 38 | `theorem` | [isClopenable_iff_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/isclopenable-iff-measurableset.md) | 800 | `result-track:a2748b4e111f8750dea6fed81d45cfe46df3972800792055fc3b46abe146b80f` |
| 39 | `theorem` | [measurableSet_exists_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableset-exists-tendsto.md) | 825 | `result-track:27ec3b706f6fd691ca88bb4bafc9d3168efebbe3a9e656d393e9f1b9594ca380` |
| 40 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/instance.md) | 857 | `declaration-track:3cfe7bc8b280773a805601c4d272ac5d944e0ea55f4844ce23e0b577706e3c74` |
| 41 | `theorem` | [secondCountable_of_polish](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/secondcountable-of-polish.md) | 871 | `result-track:843a0edc170c5b0c4d212236abfb95a005e33d9ad9445ca9b25d1c77ea3a466e` |
| 42 | `def` | [borelSchroederBernstein](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/borelschroederbernstein.md) | 884 | `declaration-track:0afe9dec8297a9f5e51390e8afcf0a98ad1e1ec4aabb94d31ae70e513fd78c6c` |
| 43 | `def` | [measurableEquivNatBoolOfNotCountable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableequivnatboolofnotcountable.md) | 890 | `declaration-track:35b6410263d774338040cce69601198532b50e1df75deaae55fab4d7c0c1e95d` |
| 44 | `def` | [measurableEquivOfNotCountable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableequivofnotcountable.md) | 900 | `declaration-track:057bf441f1412c1f8536e7970b923a90343714a9d0a96b9a2c3d48cf80ae5677` |
| 45 | `def` | [Equiv.measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/equiv-measurableequiv.md) | 906 | `declaration-track:45be15e6a2190efc62f7ebdb3986507ba70b146254d71b7d9f707f123159ec9a` |
| 46 | `instance` | [instPolishSpaceUniv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/instpolishspaceuniv.md) | 919 | `declaration-track:b2aeb6facad796ca357f8c71d4f6156bfe05ed44e3b40b50319df6db43bc6f99` |
| 47 | `theorem` | [exists_nat_measurableEquiv_range_coe_fin_of_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/exists-nat-measurableequiv-range-coe-fin-of-finite.md) | 926 | `result-track:63f2a1c3184096461978c6a1b0001c38ae2a4c70d7e43b146b4cfac0274c004d` |
| 48 | `theorem` | [measurableEquiv_range_coe_nat_of_infinite_of_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/measurableequiv-range-coe-nat-of-infinite-of-countable.md) | 933 | `result-track:0f72e16d107066fa5349675ccfb3162872b920ce0d871140bc407a7e9f61728c` |
| 49 | `theorem` | [exists_subset_real_measurableEquiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/exists-subset-real-measurableequiv.md) | 943 | `result-track:5d42a06f54ca491a643aa3eb85d3479ca979300e4a78ba978f72e11745e19d6f` |
| 50 | `theorem` | [exists_measurableEmbedding_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PolishNamespaced.lean/declarations/exists-measurableembedding-real.md) | 967 | `result-track:7fb8a3703dcdf958dccc4dad51b6f8709648fdbc1555cdd258a911f853c389d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdf1225b17938c4afa6c3ba18cff1bf39c2e642e933d0754721b99a56ac1439e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
