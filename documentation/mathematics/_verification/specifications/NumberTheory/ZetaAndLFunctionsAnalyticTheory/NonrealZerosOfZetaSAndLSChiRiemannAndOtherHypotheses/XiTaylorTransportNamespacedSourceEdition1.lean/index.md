# Verification target: Xi Taylor Transport Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d7cb90e39bee6ac95fe491d06c5d721344042bf",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant3d819730add23a85f80e0b17186018f016eb219c190af41365ae92933a0862ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d7cb90e39bee6ac95fe491d06c5d721344042bf`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant3d819730add23a85f80e0b17186018f016eb219c190af41365ae92933a0862ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant3d819730add23a85f80e0b17186018f016eb219c190af41365ae92933a0862ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.TaylorSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.OfScalars` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.ChangeOrigin` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [gammaReal_conjugation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/gammareal-conjugation.md) | 39 | `result-track:a609a24461c39dd75c1ce9970a6db06e6cbc3625f7f944ee50acd9986a3074cf` |
| 2 | `theorem` | [xi_product_on_right](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/xi-product-on-right.md) | 51 | `result-track:1ee28303624e05ead232201b9c91d1094db334b410137b185b0433be70b9310f` |
| 3 | `theorem` | [xi_conjugation](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/xi-conjugation.md) | 61 | `result-track:924e16caedc821c6762e187652edda21718d07dc27149a83f6d52b3c0bcf5500` |
| 4 | `theorem` | [iteratedDeriv_conjugate_function](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/iteratedderiv-conjugate-function.md) | 80 | `result-track:93c95a5e6dfac98b790aa10158b1f9401b51aacbb0ce9ab474e866ba038e72a4` |
| 5 | `theorem` | [xi_derivative_center_real](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/xi-derivative-center-real.md) | 88 | `result-track:875d4644a04bb45d5fa27263611a2cb247678265aba8137506c28f7c8da87b21` |
| 6 | `theorem` | [xi_odd_derivative_center](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/xi-odd-derivative-center.md) | 99 | `result-track:0edfadfa88ef546df3d4baa63bf1af0e9f6d843e1c466a7b0a367591b1529107` |
| 7 | `theorem` | [coefficient_as_complex](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/coefficient-as-complex.md) | 115 | `result-track:1877e20d904b906fe28f7f4ef3c2687ac3a1b05b37c38f34299573fc6da5f1d5` |
| 8 | `theorem` | [hasSum_full_centered_taylor](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/hassum-full-centered-taylor.md) | 125 | `result-track:14761d0bbb266274cb42b47d7b4ac6d16bf52f6a2d64041629427a1cb5c4ae38` |
| 9 | `theorem` | [even_index_injective](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/even-index-injective.md) | 136 | `result-track:b04ed89819c4a202b99cb494cae7716437e55151a33f4462d6609f828c1a3fc0` |
| 10 | `theorem` | [taylor_term_zero_off_even](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/taylor-term-zero-off-even.md) | 142 | `result-track:796a253c0974c8400046d4c9c0d87187a14b53ac5bd7c438bc69acf59be8e9b7` |
| 11 | `theorem` | [hasSum_centered_square](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/hassum-centered-square.md) | 152 | `result-track:cd8b9160de970090c7dbba24898e2acad09989657cd041a9f03344e0700a7a17` |
| 12 | `theorem` | [exists_complex_square](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/exists-complex-square.md) | 168 | `result-track:3799823447c7c824d12cd6a4c0e7d45cde71443109fd50c24c17526710893aa8` |
| 13 | `theorem` | [centeredSeries_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/centeredseries-summable.md) | 172 | `result-track:9ac0a24599cd70fb23ce99d0c827a9eb514a1db6da3a140aad43c5676d38d3b6` |
| 14 | `def` | [centeredPowerSeries](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/centeredpowerseries.md) | 178 | `declaration-track:c4f3bc07e445cc77156821bdb0753e0c477330d7657e8e6081aaca91f1b3f252` |
| 15 | `theorem` | [centeredPowerSeries_radius](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/centeredpowerseries-radius.md) | 182 | `result-track:080cb6a5207a94e64c4b0713aa626852b80209e294123b06e2485cd6855fa984` |
| 16 | `theorem` | [centeredPowerSeries_sum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/centeredpowerseries-sum.md) | 191 | `result-track:c2f836e38d50cb878d5ba531685f502e805bf3a7908ffb82cd2de8a56804b4ba` |
| 17 | `theorem` | [differentiable_centeredSeries](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/differentiable-centeredseries.md) | 199 | `result-track:2029174c2b2c34910f010314934bab147ed22f1507c78fb2a0d6ffdbf5ca93e2` |
| 18 | `theorem` | [centeredSeries_square](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/centeredseries-square.md) | 208 | `result-track:d4525c534bc5d0090b304e8927d5fd20b5047c6089515c3372bc9de740111d6d` |
| 19 | `theorem` | [taylorDescent](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/taylordescent.md) | 212 | `result-track:915e113d203a5bc34a46c5049471c9f49d93745e1b7531dfeb1475b373fc9e76` |
| 20 | `theorem` | [centeredSeries_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/XiTaylorTransportNamespacedSourceEdition1.lean/declarations/centeredseries-zero.md) | 216 | `result-track:1297ab7208723787802916c717a45d8958b9b7c7553b2b73e3dccf43432e2119` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a50fc0403b60291320727064b7ecad2fa09e4f354dd30d74679d52999af9209d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant3d819730add23a85f80e0b17186018f016eb219c190af41365ae92933a0862ca.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/02ab0cc1629ff97a668ab82068b56346ad6a0ba4fba9f12a09667d86e15d24afXiTaylorTranspor/Variant3d819730add23a85f80e0b17186018f016eb219c190af41365ae92933a0862ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
