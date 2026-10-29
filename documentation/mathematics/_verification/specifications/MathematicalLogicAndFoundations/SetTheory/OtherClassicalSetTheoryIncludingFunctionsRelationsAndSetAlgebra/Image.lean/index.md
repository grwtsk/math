# Verification target: Image

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f41830e5648eedcafee9d87edcfd70b35199c849",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Image/Variantce01d003093013a607327ca64b74a008c466bf8d66e740cb9e6fcb0b5779a144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f41830e5648eedcafee9d87edcfd70b35199c849`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Image/Variantce01d003093013a607327ca64b74a008c466bf8d66e740cb9e6fcb0b5779a144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Image/Variantce01d003093013a607327ca64b74a008c466bf8d66e740cb9e6fcb0b5779a144.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Monotone.mapsTo_Icc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/monotone-mapsto-icc.md) | 21 | `result-track:ba2a5aa9dc2623dfa46555ad1c7cc19944b66ffebd69f53221cd2823d48eeb77` |
| 2 | `theorem` | [StrictMono.mapsTo_Ioo](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-mapsto-ioo.md) | 25 | `result-track:4c6c2ca0522d15d282b47bfec4ca0ada81b52de96e377ce17ff969cb374d9128` |
| 3 | `theorem` | [Monotone.mapsTo_Ici](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/monotone-mapsto-ici.md) | 29 | `result-track:b8927120a395a368c86153e7b2290952878eaae58fd7a9461525efcfa8c48805` |
| 4 | `theorem` | [Monotone.mapsTo_Iic](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/monotone-mapsto-iic.md) | 33 | `result-track:130ec96d2f6f81b9cbaab7f38bcd4a59228cf8f723eba9c21674193244b1c329` |
| 5 | `theorem` | [StrictMono.mapsTo_Ioi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-mapsto-ioi.md) | 37 | `result-track:ef76d5ea2b23d8675f0390c7bcb054d231e05e22264e076a36d66b42da5c2b2c` |
| 6 | `theorem` | [StrictMono.mapsTo_Iio](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-mapsto-iio.md) | 41 | `result-track:f9bc5d9b3e2b1e0c80c98aa443af2200a19bc67acaa9c42cfcccdf8a5fb28049` |
| 7 | `theorem` | [StrictMono.mapsTo_Ico](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-mapsto-ico.md) | 50 | `result-track:fa435d3161ff446a490de226feacfa74b7467dcdc46af009d92822fb4dee659f` |
| 8 | `theorem` | [StrictMono.mapsTo_Ioc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-mapsto-ioc.md) | 55 | `result-track:cdafac7e920f71cfafd3251fd9f58c8e949e48fb54c2f7bef090d314ab58d577` |
| 9 | `theorem` | [Monotone.image_Icc_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/monotone-image-icc-subset.md) | 64 | `result-track:1edb59456a1d3265fee189e4c0c14958f2b7996e8a5356303147c3cae8403869` |
| 10 | `theorem` | [StrictMono.image_Ioo_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-image-ioo-subset.md) | 68 | `result-track:c9e50270aa2cd2c997cfbff470814a8678d45c515b3bf1fee456d649b1bc5b57` |
| 11 | `theorem` | [Monotone.image_Ici_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/monotone-image-ici-subset.md) | 72 | `result-track:72727291ab2254ab0d01ca7b33bd3a57c93041465eef8b471b3dc792e3305582` |
| 12 | `theorem` | [Monotone.image_Iic_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/monotone-image-iic-subset.md) | 76 | `result-track:26883e3fc8629e592acd760003327bb656700219efc6ae46d081ea168962e9f1` |
| 13 | `theorem` | [StrictMono.image_Ioi_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-image-ioi-subset.md) | 80 | `result-track:22582e09074d1ebb5c795d4ee4d271a3035f4ef56f7fa86d49a97df212426374` |
| 14 | `theorem` | [StrictMono.image_Iio_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-image-iio-subset.md) | 84 | `result-track:d3ffeaae574ae5dfaf07c95263103200e29eeb3f5ac1d5d45e6af1d669373282` |
| 15 | `theorem` | [StrictMono.imageIco_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-imageico-subset.md) | 93 | `result-track:432c51f3ba79c19784648bda717ccac23edf15bab257eaf9ebdfe67f314a6fb6` |
| 16 | `theorem` | [StrictMono.imageIoc_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/strictmono-imageioc-subset.md) | 97 | `result-track:9c5ccdcae07820f8def57c539d3e4cde0008901f3f24c989b1661f50b5522e50` |
| 17 | `theorem` | [image_subtype_val_Icc_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/image-subtype-val-icc-subset.md) | 107 | `result-track:95ebe81b50deb00ea74ae9ed2cb222984013ffccfa4f4d6c77ec969d4c435d0d` |
| 18 | `theorem` | [image_subtype_val_Ico_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/image-subtype-val-ico-subset.md) | 111 | `result-track:214e3d6144cbd564c2ea8fd568adf63d2415f0f00b0304fe562495b1e33165d7` |
| 19 | `theorem` | [image_subtype_val_Ioc_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/image-subtype-val-ioc-subset.md) | 115 | `result-track:8a754ad96db2b53a6205f77c28f5c5d53c18635d6c22db88d9736742f7db9f4c` |
| 20 | `theorem` | [image_subtype_val_Ioo_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/image-subtype-val-ioo-subset.md) | 119 | `result-track:c0807e60b323f349f7cae6c27cd55376ba72bdc77b164552f603f9be8ee225bf` |
| 21 | `theorem` | [image_subtype_val_Iic_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/image-subtype-val-iic-subset.md) | 123 | `result-track:497556ed107816fe53d8b7e9efa18b481d6297c7697e3120e98c6c15e5f1b99a` |
| 22 | `theorem` | [image_subtype_val_Iio_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/image-subtype-val-iio-subset.md) | 127 | `result-track:294cfdc13f89bc820710ce619c8cd90ed08b0afb4d4459aedaf7bba08b272798` |
| 23 | `theorem` | [image_subtype_val_Ici_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/image-subtype-val-ici-subset.md) | 131 | `result-track:cfc949744e3a2b141cad03dcbc2dc028882570bcf76130eced2453994443a3da` |
| 24 | `theorem` | [image_subtype_val_Ioi_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/Image.lean/declarations/image-subtype-val-ioi-subset.md) | 135 | `result-track:7da629fd498177f97db9ace3483017869dd9ab3e1c165a975fc6b4ceb7fc39e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a60a16b9c86bef57843b2222616ca261238727c8a1af63cf911c04d1b13eeb75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Image/Variantce01d003093013a607327ca64b74a008c466bf8d66e740cb9e6fcb0b5779a144.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Image/Variantce01d003093013a607327ca64b74a008c466bf8d66e740cb9e6fcb0b5779a144.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
