# Verification target: Uniform Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c00a7b493ed3b7f41f76fc65900868f41fe4a7b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variantb94ecd2cd6428a830f5602d1ffc02b47f1ea25f8ec5b516cb9269eeb03f57450.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c00a7b493ed3b7f41f76fc65900868f41fe4a7b`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variantb94ecd2cd6428a830f5602d1ffc02b47f1ea25f8ec5b516cb9269eeb03f57450.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Uniform/Variantb94ecd2cd6428a830f5602d1ffc02b47f1ea25f8ec5b516cb9269eeb03f57450.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsUniform](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/isuniform.md) | 72 | `declaration-track:6ec13d869162999d69804097db6ea00093206a194879ffe59ca8c436aac17180` |
| 2 | `theorem` | [aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/aemeasurable.md) | 77 | `result-track:5fca024ec1e38d82ccee8c622984fc7e7fdf93b0fe9f7eadeaf1247cbf30bdbf` |
| 3 | `theorem` | [map_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/map-eq.md) | 80 | `result-track:5436b29657bd5106068126da14a92a404dca74c38637d1406a726d32bedf0201` |
| 4 | `theorem` | [absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/absolutelycontinuous.md) | 83 | `result-track:2afb1834ee4ac1af16626ec2350ff9015d77c1c123e63e0aab71d72088ea966b` |
| 5 | `theorem` | [measure_preimage](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/measure-preimage.md) | 86 | `result-track:414e52cbbccca5e6f62ebbf5d3959d16c15b6203d8f0f1981d3662879240db83` |
| 6 | `theorem` | [isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/isprobabilitymeasure.md) | 92 | `result-track:2949f45632fde8d08c670fa62b3b33823257dbd7645a12b743db8033310c6304` |
| 7 | `theorem` | [toMeasurable_iff](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/tomeasurable-iff.md) | 99 | `result-track:ebd75550ec8011ece4c1b66d2daaaedb814ad2c7061ee1a64d2492106b1bcd10` |
| 8 | `theorem` | [toMeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/tomeasurable.md) | 104 | `result-track:13ca123bb370a2daf70fca5fa3146644f8face56ccf120681fd5e35f45722b98` |
| 9 | `theorem` | [hasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/haspdf.md) | 108 | `result-track:1d405d78515b3d6b6ef4a1668f0a4b5d68d071a35a73ccac2541f2e825684de2` |
| 10 | `theorem` | [pdf_eq_zero_of_measure_eq_zero_or_top](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/pdf-eq-zero-of-measure-eq-zero-or-top.md) | 117 | `result-track:90e8dee5e3a2d59aeefcaa31fadc6237a5c4a09cf3d0866cc82ba2a9d1e5eb90` |
| 11 | `theorem` | [pdf_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/pdf-eq.md) | 126 | `result-track:7fd5bb94efa332421fbb864042098c61a97a76c0af7f33320d880b2cab99e134` |
| 12 | `theorem` | [pdf_toReal_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/pdf-toreal-ae-eq.md) | 141 | `result-track:59522198faf2dfef4116faa1f9124bd790ebd21f28b0cdb98f8d76f8c816c8d1` |
| 13 | `theorem` | [mul_pdf_integrable](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/mul-pdf-integrable.md) | 149 | `result-track:c69e5e1488e9df73c3880a6933268f668ca6808bd9d7e8e192db17c3f10ad5c2` |
| 14 | `theorem` | [integral_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/integral-eq.md) | 173 | `result-track:afb0afc1fdd6538959aaaf5919c1620434875c4a4ce3b495b8f300f3bff799bf` |
| 15 | `lemma` | [IsUniform.cond](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/isuniform-cond.md) | 184 | `result-track:9e84ba908fa05cce10c37033a171d25354af4e898b4458fa39194b6b400b87fc` |
| 16 | `def` | [uniformPDF](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/uniformpdf.md) | 190 | `declaration-track:f23902f96b87a3cb2f18df4e77675b05787788110f2c2456fe379b890ceb5a0f` |
| 17 | `lemma` | [uniformPDF_eq_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/uniformpdf-eq-pdf.md) | 194 | `result-track:4aedf8b9670bb66a512158eb368a85cf946562b6ec1392b03dd50de1e69fb5bf` |
| 18 | `lemma` | [uniformPDF_ite](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/uniformpdf-ite.md) | 200 | `result-track:6439ff7a93b9301aed738a461f4ebf334a7e42e4cd1a49c1800ae88279883e87` |
| 19 | `def` | [uniformOfFinset](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/uniformoffinset.md) | 217 | `declaration-track:28e8a3a5f4d5d386e4905090166a199c93f61355e03dbecba7a0d807fb247d1b` |
| 20 | `theorem` | [uniformOfFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/uniformoffinset-apply.md) | 231 | `result-track:b564fcbed63a5a827a9a131e149068844d18ab82f86ec5ef07897220db0e7b2a` |
| 21 | `theorem` | [uniformOfFinset_apply_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/uniformoffinset-apply-of-mem.md) | 235 | `result-track:618931288b19110be208c225492814ef3166ca5c6569b39077800207dd992eeb` |
| 22 | `theorem` | [uniformOfFinset_apply_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/uniformoffinset-apply-of-notmem.md) | 238 | `result-track:5f0cb9d64e7f97ac4b89816cc473b45c3b0478195f4b0df493f6af97a402cec1` |
| 23 | `theorem` | [support_uniformOfFinset](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/support-uniformoffinset.md) | 241 | `result-track:f2b5e7b86bab9bc5ea721f72b90bb46258e316a927118734e5a90d29a455ac21` |
| 24 | `theorem` | [mem_support_uniformOfFinset_iff](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/mem-support-uniformoffinset-iff.md) | 245 | `result-track:9464baffb7bf6c14fbfc8ac2a7e1108333ce8e3b325918749b7af439c8df3632` |
| 25 | `theorem` | [toOuterMeasure_uniformOfFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/tooutermeasure-uniformoffinset-apply.md) | 254 | `result-track:a73917b5486fc731c6c11ae38b00e0e1cbaf3ece3e396792bf89e263304b9dd0` |
| 26 | `theorem` | [toMeasure_uniformOfFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/tomeasure-uniformoffinset-apply.md) | 272 | `result-track:45df8bd52ceb6040b46c106ebd3e8100dd0edfac3caceefd688a51eb5a621df3` |
| 27 | `def` | [uniformOfFintype](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/uniformoffintype.md) | 283 | `declaration-track:52ec698685ec48085250684d2dc8003bbdcbd4bdf12ac5f72ed78b392cd0f23d` |
| 28 | `theorem` | [uniformOfFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/uniformoffintype-apply.md) | 289 | `result-track:e17390507e164a4a1a74a6f0d2a0b4cc15310de7d7d39c3129d16de374ff9cb1` |
| 29 | `theorem` | [support_uniformOfFintype](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/support-uniformoffintype.md) | 293 | `result-track:82ca8c17451f63a8f554de780fb91698d5a45a5caaf385bd00a9377a10f0f5e6` |
| 30 | `theorem` | [mem_support_uniformOfFintype](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/mem-support-uniformoffintype.md) | 297 | `result-track:ac2c4009f055013eb38ea54a27cd4b9a6ae0257567a70961ac48781ac7f3e4f8` |
| 31 | `theorem` | [toOuterMeasure_uniformOfFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/tooutermeasure-uniformoffintype-apply.md) | 303 | `result-track:d83f819be4146ebc724aad79a06568c68a9c9cd4cd698674153c123930d41a3c` |
| 32 | `theorem` | [toMeasure_uniformOfFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/tomeasure-uniformoffintype-apply.md) | 309 | `result-track:71d2ece3aeae9151a410ec84593fae429420d871bdc4e2a3a5243b9f8496054a` |
| 33 | `def` | [ofMultiset](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/ofmultiset.md) | 323 | `declaration-track:568c99320f7c0bb4cff2b106af1c24f2f62902d7ff868cd49ce249c22f4d6ada` |
| 34 | `theorem` | [ofMultiset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/ofmultiset-apply.md) | 344 | `result-track:e8328d8ef549d25c250d25248545b715b14617f3e822d69c9d6805dc485558ab` |
| 35 | `theorem` | [support_ofMultiset](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/support-ofmultiset.md) | 349 | `result-track:9b433e814deaf94f900da443d055762675f25247f02c3c3b6e863ad8f2f4db0d` |
| 36 | `theorem` | [mem_support_ofMultiset_iff](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/mem-support-ofmultiset-iff.md) | 353 | `result-track:25875f8aaf0c4cc393dfe8a31b1ddd9b7fb83935700ee4079c3294db9b3c6e7d` |
| 37 | `theorem` | [ofMultiset_apply_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/ofmultiset-apply-of-notmem.md) | 356 | `result-track:57fd9d714983e812c66efa92fd21d1e9dfc24143cc768da0737bb392bdbff71e` |
| 38 | `theorem` | [toOuterMeasure_ofMultiset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/tooutermeasure-ofmultiset-apply.md) | 366 | `result-track:52dc6fc7ba403c703a42f3e1cbf1f55730cb127682b12d14ad38bbf340adcf10` |
| 39 | `theorem` | [toMeasure_ofMultiset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformNamespacedPublic.lean/declarations/tomeasure-ofmultiset-apply.md) | 375 | `result-track:5aa07ce5b159ea2c14f4abe928e7a05f0834962c59c4c669a9b3a3509776e973` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6b7d2d2d8a854a7ccfc0d0b665249754cdb0d97e718e4fe6f664c73a4306d2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variantb94ecd2cd6428a830f5602d1ffc02b47f1ea25f8ec5b516cb9269eeb03f57450.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/Uniform/Variantb94ecd2cd6428a830f5602d1ffc02b47f1ea25f8ec5b516cb9269eeb03f57450.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
