# Verification target: Source Actual Odd Negative Edge Native01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "beaa838b58457e54c484f3cad3d930bcdab834f3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `beaa838b58457e54c484f3cad3d930bcdab834f3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEvenProductSector` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualNegativeEdgeMangoldt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [even_primePow](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/even-primepow.md) | 33 | `result-track:a8bc491be7771380d66c3c83981fdafa37655efe323ce9a412cab36eb866d0e0` |
| 2 | `theorem` | [sum_geometric_Icc_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/sum-geometric-icc-one.md) | 42 | `result-track:4cd764a2688c8d07759210864de729c8de3c1b37f586c4471a39a2b67221012e` |
| 3 | `theorem` | [actualEvenProduct_subset_abs_sum_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualevenproduct-subset-abs-sum-le.md) | 76 | `result-track:96f081b626242800a3b6d8cfb3c296255caa13f74afa81980c11fef7a402de9a` |
| 4 | `def` | [actualOddNegativeEdgeBlock](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualoddnegativeedgeblock.md) | 132 | `declaration-track:d914afc4b43c28b516a1c9a0d7227a759321e7e7b00d300e0c239a232f352f1b` |
| 5 | `def` | [actualEvenNegativeEdgeBlock](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualevennegativeedgeblock.md) | 137 | `declaration-track:04f8295df7207455ed24bc7f72c15dbe972555e5fb4624b998f036dfbe79b239` |
| 6 | `def` | [actualOddNegativeEdgeComplement](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualoddnegativeedgecomplement.md) | 142 | `declaration-track:c0fad4b4e5b7535977e9c84fe15f458608ffdf617d7a99a1aacc28a4336197ff` |
| 7 | `theorem` | [actualNegativeEdgeMangoldtBlock_eq_even_add_odd](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualnegativeedgemangoldtblock-eq-even-add-odd.md) | 148 | `result-track:84e64ef5a820602d98c5fe6104407763d2c63da6370d65e0df6e9e796e2aa526` |
| 8 | `theorem` | [actualOddNegativeEdgeBlock_eq_full_mobius_sum](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualoddnegativeedgeblock-eq-full-mobius-sum.md) | 156 | `result-track:42d88c93a5b99b08b373983909f3b4df5066532d404c0a00f00fafc3f2732f48` |
| 9 | `theorem` | [edgeWindow_subset](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/edgewindow-subset.md) | 168 | `result-track:0ed8fb79e40062152a0e8ef00cfbca14391d1e0588ead6d23ea34645d2a98f0d` |
| 10 | `theorem` | [actualEvenNegativeEdgeBlock_abs_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualevennegativeedgeblock-abs-le.md) | 179 | `result-track:e3867650637cfd92d01f13608a8f9e78d9d3f1aa301aca9048b4b91b7496a77b` |
| 11 | `theorem` | [actualOddProductMoment_eq_edge_add_complement](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualoddproductmoment-eq-edge-add-complement.md) | 189 | `result-track:7579b2f90ce193aa36b4e423adca3ab1ef3a42f480d575dc4899cc792aa2db61` |
| 12 | `theorem` | [actualResidual_eq_even_add_oddEdge_add_complement](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualresidual-eq-even-add-oddedge-add-complement.md) | 203 | `result-track:1ffe02d0af03e1198d45c9d130328c8ff4216481a23d8a6036ccc9352d8a82cc` |
| 13 | `theorem` | [actualOddNegativeEdgeBlock_eventually_negative](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualoddnegativeedgeblock-eventually-negative.md) | 212 | `result-track:aa8781b73e5cab04dc61ba31de77f53717b5e04dcaa36db4b574d6444211641c` |
| 14 | `theorem` | [actualOddNegativeEdgeBlock_tendsto_atBot](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualoddnegativeedgeblock-tendsto-atbot.md) | 236 | `result-track:8fa92b2e790d393c0df61549757002a1c1f21dfd576b592032ddfd417c0b1bbf` |
| 15 | `theorem` | [actualOddNegativeEdgeComplement_eventually_above_oddMoment](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualOddNegativeEdgeNative01.lean/declarations/actualoddnegativeedgecomplement-eventually-above-oddmoment.md) | 251 | `result-track:16db10aa42770a3148fbb92d57a6abd8307841faa59c9934a7bbd1ef06f0f472` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98d0dc7a20c5174c7286cbf62d1a5b98f3b142e08313e1cf3dfcc725627a0def -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative01/Variant4f203faf31dab7957781aad871237f87ded3d73d0341d449508d2bbc1a66f752.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
