# Verification target: Density Namespaced Pdf Undef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a70af88a789107651762e23caa5959e45c8a057",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a70af88a789107651762e23caa5959e45c8a057`.

Source path: `GRWTSK/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Decomposition.RadonNikodym` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.OfBasis` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/haspdf-source-edition-2.md) | 75 | `declaration-track:9b4f240196b9ffcb98005f2aa6868a0c1a774a47df8a6bde79c59afbc29ef728` |
| 2 | `theorem` | [HasPDF.measurable](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/haspdf-measurable.md) | 82 | `result-track:d1b3a42ca844d200188d76d41b666218634297b12b9362cd8831c2d9050f246a` |
| 3 | `def` | [pdf](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/pdf.md) | 90 | `declaration-track:eef827334bf07fd9a14b6866aadb7dc9e09bc22409785a9cfc620d470ed95bf0` |
| 4 | `theorem` | [pdf_undef](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/pdf-undef.md) | 95 | `result-track:2e8857e973758e5cb11ae6eae3f9186f1c9808c1183cfa2075a4f5df4be46b4c` |
| 5 | `theorem` | [hasPDF_of_pdf_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/haspdf-of-pdf-ne-zero.md) | 99 | `result-track:0041eddf20c5ce237f8915c11f8f923bbffc38574df49d7475087efd92207f87` |
| 6 | `theorem` | [pdf_eq_zero_of_not_measurable](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/pdf-eq-zero-of-not-measurable.md) | 105 | `result-track:a141318216a35bc23558dc16d827f77d4ce3609c72bb30991d9cb6c76d917b4d` |
| 7 | `theorem` | [measurable_of_pdf_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/measurable-of-pdf-ne-zero.md) | 110 | `result-track:5db13844c3aad45c8a5a96f0494c9fb5535a074b6d11f189c5944431c93d20f8` |
| 8 | `theorem` | [measurable_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/measurable-pdf.md) | 117 | `result-track:7347eb7acbc30fe5fbd876143828fff4109945411d6c115bdfa307c0e9be51b4` |
| 9 | `theorem` | [map_eq_withDensity_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/map-eq-withdensity-pdf.md) | 124 | `result-track:7b76b86616fcd8d863f5e9f10f77e46581bad15e97d45ced50c8636a01085c5f` |
| 10 | `theorem` | [map_eq_set_lintegral_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/map-eq-set-lintegral-pdf.md) | 131 | `result-track:780d7891b45dd2f7603739a5d3d07af8d52305fd7ec5b2a21b9750db31a14bdf` |
| 11 | `theorem` | [lintegral_eq_measure_univ](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/lintegral-eq-measure-univ.md) | 141 | `result-track:1a4d657d351d7c8844256fd755b7dfe60bfd5e972ba4285cc9e848eb80e49521` |
| 12 | `theorem` | [ae_lt_top](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/ae-lt-top.md) | 147 | `result-track:441d74bc5aa15ccc73fd6f3103dc772c7b83973a3e6abe30c03e062f9533f357` |
| 13 | `theorem` | [ofReal_toReal_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/ofreal-toreal-ae-eq.md) | 157 | `result-track:8c19aff7f170a51ca2d1883517af5a2160a2ca47e7507abc0fafd53fc8d19c66` |
| 14 | `theorem` | [integrable_iff_integrable_mul_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/integrable-iff-integrable-mul-pdf.md) | 162 | `result-track:26040ad1f11bcc6af31449ed2caaa56f489e6437db60f8b281dfecc17a9d5e6a` |
| 15 | `theorem` | [integral_fun_mul_eq_integral](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/integral-fun-mul-eq-integral.md) | 174 | `result-track:815a80e65114ace5b76535b9dd9d6b33f67749f9693472f88cfbcd45ad77a699` |
| 16 | `theorem` | [map_absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/map-absolutelycontinuous.md) | 212 | `result-track:09731804e5f1bf59699c0285c111db0a206d3eafd0576878c16892d726723011` |
| 17 | `theorem` | [to_quasiMeasurePreserving](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/to-quasimeasurepreserving.md) | 217 | `result-track:d2851662dc1c4178bfb61549e6c0201a2f9ed323a9b10583da79c30782253c54` |
| 18 | `theorem` | [haveLebesgueDecomposition_of_hasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/havelebesguedecomposition-of-haspdf.md) | 222 | `result-track:8acc50b9492caced5c71a1b404048ae7c79a7b8649b28556d9f09938618478a6` |
| 19 | `theorem` | [hasPDF_iff](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/haspdf-iff.md) | 229 | `result-track:7094d89eb8e44a3ee863def89eee1606b5c80c898ed6bac7d565441339188540` |
| 20 | `theorem` | [hasPDF_iff_of_measurable](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/haspdf-iff-of-measurable.md) | 240 | `result-track:3b6f4f0d3bc1462b771aa3e7f9b757a8ce28f2922e26f5b957582562da90149f` |
| 21 | `theorem` | [quasiMeasurePreserving_hasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/quasimeasurepreserving-haspdf.md) | 255 | `result-track:8499dd2f00097b4eda664bad9db1ffcd85ea8aa82f5a5ecc7ebc35190c68df16` |
| 22 | `theorem` | [quasiMeasurePreserving_hasPDF'](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/quasimeasurepreserving-haspdf-source-edition-2.md) | 268 | `result-track:eb24ec2270af987c9829124b37a0754ad33106f25d94c2a776ba574e20d5edce` |
| 23 | `theorem` | [Density Namespaced Pdf Undef](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/haspdf-iff-of-measurable-source-line-281-occurrence-2.md) | 281 | `result-track:557fe7b20ffce8611cc63b0930bd1cf0a430ba845398660bd959abc42a6fd085` |
| 24 | `theorem` | [Density Namespaced Pdf Undef](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/haspdf-iff-source-line-287-occurrence-2.md) | 287 | `result-track:680a2d0903804517f881a8ee23661086d65c0cfe3f735b8e530104f2aace335b` |
| 25 | `theorem` | [integral_mul_eq_integral](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/integral-mul-eq-integral.md) | 296 | `result-track:19ce693a2dcc35bdd04671c77e64f9a21f83de044e18d4f7ccd2209092d4cfdd` |
| 26 | `theorem` | [hasFiniteIntegral_mul](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/hasfiniteintegral-mul.md) | 300 | `result-track:2fa896d7ace57e19632266bb630909a830517063ce3504d4d1c1294b429c9483` |
| 27 | `def` | [IsUniform](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/isuniform.md) | 321 | `declaration-track:8ad0e747cc9fa5636bd6d03608bcd5b2341f8fc8a34c2c8a5dcd4b36371d7c88` |
| 28 | `theorem` | [hasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/haspdf.md) | 328 | `result-track:1c0c8c7d5f610a6cb7a8ae9ffc18ad0d178305aba593927857ca656ef599e43a` |
| 29 | `theorem` | [pdf_toReal_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/pdf-toreal-ae-eq.md) | 344 | `result-track:d9c9dbf9244f0ceafd4c0ad524da28cbb294cc22b83de82b3750ad1915c24f08` |
| 30 | `theorem` | [measure_preimage](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/measure-preimage.md) | 351 | `result-track:9e56711f5fc85709e93d68110728ca6201b1ef1de5124367e7a423be9269ee65` |
| 31 | `theorem` | [isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/isprobabilitymeasure.md) | 362 | `result-track:b3e41637d3592de6903b09a148ae3e14f6f2211c5275cb4f1f69d08cd84601b5` |
| 32 | `theorem` | [mul_pdf_integrable](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/mul-pdf-integrable.md) | 373 | `result-track:7a38d6a392e7a8081798a79817c012e2bedd394d2232388391d2ffa9a9450d8d` |
| 33 | `theorem` | [integral_eq](../../../../ProbabilityTheoryAndStochasticProcesses/DensityNamespacedPdfUndef.lean/declarations/integral-eq.md) | 399 | `result-track:c2b7fe08e342031e48e536b43d06023445de67b2990e0d727bb240686ce5e1d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c421dd13cc200bf4a626a7ea87fd012d645fe4f9dfd932e72b43d096ce2467b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Density/Variant1ce375f366b9b3a921aa42352ed3b5f93fddd9e9c4379228c8e08685e0ecf20f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
