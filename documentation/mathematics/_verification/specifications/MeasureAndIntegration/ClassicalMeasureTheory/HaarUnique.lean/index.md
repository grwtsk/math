# Verification target: Haar Unique

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d7e88c666147c86eb1b9d9168e7f4ddcbcd54c1`.

Source path: `GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.EverywherePos` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Urysohn` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Ordered` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsCompact.measure_eq_biInf_integral_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/iscompact-measure-eq-biinf-integral-hascompactsupport.md) | 74 | `result-track:4664f7f652ffb0cf273e5a2ba2d048e5d2f00a98201f48160b231b9f9e3046ed` |
| 2 | `lemma` | [continuous_integral_apply_inv_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/continuous-integral-apply-inv-mul.md) | 103 | `result-track:08b156c916de0db48771b2b87f8b545938c87cd8cc0bf4ec2ae6852121d02021` |
| 3 | `lemma` | [integral_isMulLeftInvariant_isMulRightInvariant_combo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/integral-ismulleftinvariant-ismulrightinvariant-combo.md) | 149 | `result-track:f8d3e62689d0397463cbcc316d4d0b55da1e78aeeffd1cc0ef99d0874cb94923` |
| 4 | `lemma` | [exists_integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/exists-integral-ismulleftinvariant-eq-smul-of-hascompactsupport.md) | 243 | `result-track:beca61fe92ec97d15cf1348e8138994e96a41bcae20e512a76f36c8869054f9e` |
| 5 | `def` | [haarScalarFactor](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/haarscalarfactor.md) | 294 | `declaration-track:65f3c029f30a729247db7a420fb419d21117094b4b1835ffef98442135b7e7d1` |
| 6 | `theorem` | [integral_isMulLeftInvariant_eq_smul_of_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/integral-ismulleftinvariant-eq-smul-of-hascompactsupport.md) | 309 | `result-track:de5c6796eaa2525c3f61d41b913b952f6bfb45ccd201fcbc3ae1837b58580023` |
| 7 | `lemma` | [haarScalarFactor_eq_integral_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/haarscalarfactor-eq-integral-div.md) | 321 | `result-track:66a8cd57d9de82d8ea9e8d6bc51d143ff7bb820807c84977c2a95d5a74f067b1` |
| 8 | `lemma` | [haarScalarFactor_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/haarscalarfactor-smul.md) | 330 | `result-track:af5b6fb494673c311eeb2292d544a9f33d2ac67ef33b3317619fe3e2d9d8a8c0` |
| 9 | `lemma` | [haarScalarFactor_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/haarscalarfactor-self.md) | 347 | `result-track:faec848259e4b2433a209a18ab2607872b2c57d7726644bdf18a8e2c2ed42bba` |
| 10 | `lemma` | [haarScalarFactor_eq_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/haarscalarfactor-eq-mul.md) | 362 | `result-track:a966b3241404aa684ac5f6fd88db7054d5b5da05fa8ba91435315e6e56c6b73a` |
| 11 | `lemma` | [haarScalarFactor_pos_of_isHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/haarscalarfactor-pos-of-ishaarmeasure.md) | 388 | `result-track:9fa2eba89c2b93d81c62ac78a51578f02deeb2f760562f6b8154c748d161b3fa` |
| 12 | `lemma` | [measure_preimage_isMulLeftInvariant_eq_smul_of_hasCompactSupport](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/measure-preimage-ismulleftinvariant-eq-smul-of-hascompactsupport.md) | 443 | `result-track:204b95cda80663474e28ebe8044f7e76e95cb96b31f0c1cb2c4ab2c10080a787` |
| 13 | `lemma` | [smul_measure_isMulInvariant_le_of_isCompact_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/smul-measure-ismulinvariant-le-of-iscompact-closure.md) | 520 | `result-track:0495cd8ab650c24629a201bef8f42e0dffb9ed1763c5c312334379571b5f9154` |
| 14 | `lemma` | [measure_isMulInvariant_eq_smul_of_isCompact_closure_of_innerRegularCompactLTTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/measure-ismulinvariant-eq-smul-of-iscompact-closure-of-innerregularcompa.md) | 551 | `result-track:a96d629488eaf6af9d4aeaa1cd066204f723c3bd8cbe894c879ac0a2e024f1c9` |
| 15 | `lemma` | [measure_isMulInvariant_eq_smul_of_isCompact_closure_of_measurableSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/measure-ismulinvariant-eq-smul-of-iscompact-closure-of-measurableset.md) | 592 | `result-track:43c20cfc1014a873a60ab76355ca13d99ed294e77abdf5bb5e60728bdfc22c46` |
| 16 | `constant` | [&#96;addHaarScalarFactor](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/addhaarscalarfactor.md) | 611 | `declaration-track:14d0c5b45523ca278e24ff651483c4c2f2b56fa7f1e19f2c10d0b4159dca91eb` |
| 17 | `theorem` | [measure_isMulInvariant_eq_smul_of_isCompact_closure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/measure-ismulinvariant-eq-smul-of-iscompact-closure.md) | 612 | `result-track:e8b89dca22cf429dc4f1f931932331da757aa80a9caef5911ea581939adbdfa6` |
| 18 | `lemma` | [isMulInvariant_eq_smul_of_compactSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/ismulinvariant-eq-smul-of-compactspace.md) | 640 | `result-track:9213bd8ffd7f00d6380bdeb130e4105b9b7013012eeee6d44e5fc07c2955fac8` |
| 19 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/instance-source-edition-4.md) | 647 | `declaration-track:b7420074fe3667d638dd810fc84789a4a4077e7837f99ea6a3c42fe86a7f3a48` |
| 20 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/instance-source-edition-3.md) | 654 | `declaration-track:9dd5fe0803edb8a515ff3add4a7d6d0ef0433194aae4f28f53afb3d7381b8d4d` |
| 21 | `lemma` | [isHaarMeasure_eq_of_isProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/ishaarmeasure-eq-of-isprobabilitymeasure.md) | 663 | `result-track:856c2663fb9c580e5fb51b1e08e649fcfa556e14dea613e8fe3af83eadba47a9` |
| 22 | `theorem` | [measure_isHaarMeasure_eq_smul_of_isEverywherePos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/measure-ishaarmeasure-eq-smul-of-iseverywherepos.md) | 685 | `result-track:59cefba803c425b41faedeb810292b9fcfb8efcbf69db53216ca37dabb37d932` |
| 23 | `theorem` | [measure_isHaarMeasure_eq_smul_of_isOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/measure-ishaarmeasure-eq-smul-of-isopen.md) | 792 | `result-track:5181ed84909b939d4bf8b9106276109c6abf2c9b937b8b6206d5f8ff93bf3d98` |
| 24 | `lemma` | [measure_isMulLeftInvariant_eq_smul_of_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/measure-ismulleftinvariant-eq-smul-of-ne-top.md) | 807 | `result-track:df5b9527cad3542a2736050e79d2f046371fffa0f25706fa03f0762b87d6631c` |
| 25 | `lemma` | [isMulLeftInvariant_eq_smul_of_innerRegular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/ismulleftinvariant-eq-smul-of-innerregular.md) | 846 | `result-track:4a37291cdc0ed79795975aa1ded89d77858d11d7e77dcc7c29482facb6fef4c0` |
| 26 | `lemma` | [isMulLeftInvariant_eq_smul_of_regular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/ismulleftinvariant-eq-smul-of-regular.md) | 860 | `result-track:907799aa3aaf280d7e1f592b38417678f0c0e5d37497ac30da8cceb8f6584e98` |
| 27 | `lemma` | [isMulLeftInvariant_eq_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/ismulleftinvariant-eq-smul.md) | 878 | `result-track:19e474a201de38721695f922701e353e6b639cf1f1cecf48fe94a4baf1fbd824` |
| 28 | `theorem` | [absolutelyContinuous_isHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/absolutelycontinuous-ishaarmeasure.md) | 890 | `result-track:7c9d90a78754beb9c86226a956688c602f90dcb3cdd189e0d8c518a2fe4bfba7` |
| 29 | `theorem` | [_root_.MonoidHom.measurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/root-monoidhom-measurepreserving.md) | 907 | `result-track:ae3d46a6f92e4b36d12a08622d1d8b457194d9cb7dca2f1b02138c4440f189de` |
| 30 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/instance.md) | 934 | `declaration-track:0ce23846461dd50736924e8dcdaafa84591a8fd69ed50d432b93e73ec5373046` |
| 31 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/instance-source-edition-2.md) | 959 | `declaration-track:97ceef6c56f1f7f7ab036c09d136d28947d338cd97e25d229c862653349cb418` |
| 32 | `theorem` | [measurePreserving_zpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/measurepreserving-zpow.md) | 983 | `result-track:a55dcbf79e984a4652b6895d5d9c61d7663667d5b1f209630c71a6eb3272a174` |
| 33 | `theorem` | [MeasurePreserving.zpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/measurepreserving-zpow-source-edition-2.md) | 989 | `result-track:ed846573eb7dc222ee2b2104f20b4cb6a0e3aac7100208c6d71509c29e298094` |
| 34 | `lemma` | [addHaarScalarFactor_domSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/addhaarscalarfactor-domsmul.md) | 1003 | `result-track:14cf6f273dedfd49a9f1a9d43827ce99f2f35398f34c109d08afcd79ce2ebb40` |
| 35 | `lemma` | [addHaarScalarFactor_smul_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/addhaarscalarfactor-smul-congr.md) | 1018 | `result-track:536d11c7c5abd058647bd1a76264206cbe32cd44f1547892dc935eb90571113f` |
| 36 | `lemma` | [addHaarScalarFactor_smul_congr'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/HaarUnique.lean/declarations/addhaarscalarfactor-smul-congr-source-edition-2.md) | 1024 | `result-track:c79199d6c73c6694343d2c6718475de0c6d1cc1c65aabe7070609375ca6ba2f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d239e44bd9c92c70784e5a8d3b7866300d42263206e42a678294711aa4ec5f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Unique/Variantb231b2195ea7aec4a573538d83c19243cebbb1a068b7bf5d4b221d17924e6099.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
