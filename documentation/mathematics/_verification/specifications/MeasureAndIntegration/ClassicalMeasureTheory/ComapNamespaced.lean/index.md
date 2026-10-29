# Verification target: Comap Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "776bd7f9124999044cbc7f8a5a0d4c880be3ff49",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `776bd7f9124999044cbc7f8a5a0d4c880be3ff49`.

Source path: `GRWTSK/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.QuasiMeasurePreserving` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comapₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap.md) | 47 | `declaration-track:85c275d601d1cd6e4670c201058103b4eb4cea34dfdc42f14ac936a66458418c` |
| 2 | `theorem` | [comapₗ_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-apply-source-edition-3.md) | 55 | `result-track:897f45c1216e9f2a63646e268cbe458e4da1d5aba9839a418c4a7c9ef9872871` |
| 3 | `def` | [comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-source-edition-2.md) | 66 | `declaration-track:b3d4e45a03b8d34bfa4c653bb03b6167af3fe0421792ffd3fad04372555e5356` |
| 4 | `theorem` | [comap_apply₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-apply-source-edition-2.md) | 76 | `result-track:456a1437e5a2832c04281bc64bd0e46e6f9083a825f9cb524fa83de2544c7d61` |
| 5 | `lemma` | [comap_undef](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-undef.md) | 82 | `result-track:f47887f4bee3eaffd2e4cd9373fe2b6bbe59ae6616dee30af7058885b24111f8` |
| 6 | `theorem` | [le_comap_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/le-comap-apply.md) | 86 | `result-track:c79f7c9278f4a9df1de1feac824b5f2c8948d34c84ef74e4084ae1729dcb5427` |
| 7 | `theorem` | [comap_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-apply.md) | 92 | `result-track:3528b0fa38d1b37262cb431e9de2d32894f35551ad251fc794975b8dd7dd4e4d` |
| 8 | `theorem` | [comapₗ_eq_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-eq-comap.md) | 97 | `result-track:30fce1576aadd0fe435f4722d929f27c361770386687e61c531a4ed631424f7a` |
| 9 | `theorem` | [measure_image_eq_zero_of_comap_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/measure-image-eq-zero-of-comap-eq-zero.md) | 102 | `result-track:6f61ec0d5031553e2305712548eef5a4480370663b08e7bc92adf0dfc1c0129f` |
| 10 | `theorem` | [ae_eq_image_of_ae_eq_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/ae-eq-image-of-ae-eq-comap.md) | 107 | `result-track:02b70d3d2e95d1da352fd1e98307a6d62eafcc5be1486f03b621a002263bd71b` |
| 11 | `theorem` | [NullMeasurableSet.image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/nullmeasurableset-image.md) | 124 | `result-track:eab94e3653789202e776c5b4525fb08104c686e3833c47e7052b53b664e4adb6` |
| 12 | `theorem` | [comap_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-preimage.md) | 135 | `result-track:5e21cee76deaffcf0d3178b2e75ec7339e23b6927214796173669bf9aef9b881` |
| 13 | `lemma` | [comap_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-zero.md) | 140 | `result-track:8c93e943cf4a188b935e3aa0c770c8568ea6a84f1c4b41ff034d74c016c03812` |
| 14 | `lemma` | [comap_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-id.md) | 146 | `result-track:da46418cd69b8d4301ca712d3eaf1d74549777b7f004c56e3b467e2642833479` |
| 15 | `lemma` | [comap_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-comap.md) | 152 | `result-track:61b2ba6d7c3c072dcd282af4e5f87b9c438c203c5a20a2bfda8d833341ed5e49` |
| 16 | `lemma` | [comap_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-smul.md) | 161 | `result-track:c305b590ac6c135906707bad1485373c09630daae9c14404288f3862b7e62cb1` |
| 17 | `lemma` | [MeasurableEmbedding.comap_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/measurableembedding-comap-add.md) | 182 | `result-track:b5f249631081a35f3ef86f120768e64c9bc933988a0dd9a482febcb957bd37df` |
| 18 | `lemma` | [comap_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/comap-symm.md) | 190 | `result-track:f8379d686d0868ed5429f0193e381d6a9dd5c8914636e5c40e88a3d5204bd25d` |
| 19 | `lemma` | [map_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/map-symm.md) | 195 | `result-track:0c1ec876fe1a271c253e1e7190011533cd9e3bd7ff7f0cf351e751beb82b00d4` |
| 20 | `lemma` | [MeasureTheory.Measure.comap_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ComapNamespaced.lean/declarations/measuretheory-measure-comap-swap.md) | 200 | `result-track:51783dc3196238427d09517585f38e68e4e192e31d456887f787f104c57c4b3e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eade3c6981fc2c0f8cab2752754aad2c0182930a837ea56f767a919fefec820b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Comap/Variantd23d470c59bb5e718c6022f229932678bc04868d5ae8f04448b06afd23aabc29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
