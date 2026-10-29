# Verification target: Uniform Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a0b2c81c73c3505deaed12d98cfbf89811d55b6",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a0b2c81c73c3505deaed12d98cfbf89811d55b6`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean.json)

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
| 1 | `def` | [IsUniform](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/isuniform.md) | 64 | `declaration-track:ffa433b3617b1725346c48b39d16e7a72fdc5a3d322cdd3a61456e906be4c09a` |
| 2 | `theorem` | [aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/aemeasurable.md) | 69 | `result-track:c040ebee1d12b80ffb7f3340a3c96651247978a701ae58add5ac3e7f22318c41` |
| 3 | `theorem` | [map_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/map-eq.md) | 72 | `result-track:50ba59cd3cfa826828939df0382d2799bd07b1077ce46fcbd01bef86358d28cd` |
| 4 | `theorem` | [absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/absolutelycontinuous.md) | 75 | `result-track:672fb1e79c0bb93369645c57b1e4cb51e74d903575a8b42b2f893f1b6883293a` |
| 5 | `theorem` | [measure_preimage](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/measure-preimage.md) | 78 | `result-track:f636851c041aad1de7e27113b5506c84f84917d6776cd9713a50a434c4262067` |
| 6 | `theorem` | [isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/isprobabilitymeasure.md) | 84 | `result-track:8405335ec7b8db705cdf7e787666791994b0ae62a8eadcff46af68c85d0fdd9b` |
| 7 | `theorem` | [toMeasurable_iff](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/tomeasurable-iff.md) | 91 | `result-track:b8866b33d8cd44d4777430266a397d0b9066bf82c35d200d2539db624ac9fd1f` |
| 8 | `theorem` | [toMeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/tomeasurable.md) | 96 | `result-track:1808e366d409b07d297195ee146be0dd614072c8a33281c34549210668d1a418` |
| 9 | `theorem` | [hasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/haspdf.md) | 100 | `result-track:2cdceda9bd465f68c11222dcda63ab267ed6efc85ecc94ca80d6f737eaa33e0b` |
| 10 | `theorem` | [pdf_eq_zero_of_measure_eq_zero_or_top](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/pdf-eq-zero-of-measure-eq-zero-or-top.md) | 109 | `result-track:bfec93561d6e2e3cf4cd003cf99a04fb78438e750166eef8d521634b0d466219` |
| 11 | `theorem` | [pdf_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/pdf-eq.md) | 118 | `result-track:438034ad855b02b52f9f4077d86439c765a1832cd3eb29f05ed8a7958d59e537` |
| 12 | `theorem` | [pdf_toReal_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/pdf-toreal-ae-eq.md) | 133 | `result-track:fb33dd78c23b7ba61d2a0cf3dbf8e5a0293c109aeb66b0fc6227e091b0940a47` |
| 13 | `theorem` | [mul_pdf_integrable](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/mul-pdf-integrable.md) | 141 | `result-track:d19291f2293f392fd49c1f79924b24752e732d2d45c6abb22d232f79b347e7d0` |
| 14 | `theorem` | [integral_eq](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/integral-eq.md) | 165 | `result-track:91003806686cd4f0c378332eb02b3ccdd6d77b4fbe130b86644f8cf9ac5aacfe` |
| 15 | `lemma` | [IsUniform.cond](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/isuniform-cond.md) | 176 | `result-track:017206fcfde3ec62dd96f2868ddaf4d4470736c0621f4582955666d5dbf1a4db` |
| 16 | `def` | [uniformPDF](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/uniformpdf.md) | 182 | `declaration-track:48ce2b69fc1d2fbb8fafac8efe805fc3e2632f7322005105eaa9cf95d3eff7ad` |
| 17 | `lemma` | [uniformPDF_eq_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/uniformpdf-eq-pdf.md) | 186 | `result-track:7b10bb3ceb65a86ec4924fbd6abf30bbf1931254f667a11e99592389d1583331` |
| 18 | `lemma` | [uniformPDF_ite](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/uniformpdf-ite.md) | 192 | `result-track:777252171e39bf4249ffca52395c5b2befdead7b24a17dbbe1ca6bd3ebb8068d` |
| 19 | `def` | [uniformOfFinset](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/uniformoffinset.md) | 209 | `declaration-track:74165bc41ae3189e874a1455524da5989834771109025aff15c93eb1d235f3de` |
| 20 | `theorem` | [uniformOfFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/uniformoffinset-apply.md) | 223 | `result-track:0cdbed43dca663caa64868e5a60876d33abd1fe65b5adbf64119652cb4d54fca` |
| 21 | `theorem` | [uniformOfFinset_apply_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/uniformoffinset-apply-of-mem.md) | 227 | `result-track:97ac5a531624bba0b5f2dace04bc4bb8a211614021685cbab860d56ff4742d2f` |
| 22 | `theorem` | [uniformOfFinset_apply_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/uniformoffinset-apply-of-notmem.md) | 230 | `result-track:601410832bc5f4494f10277990bc9330af51eb15d83553b3bf5a83b026f88556` |
| 23 | `theorem` | [support_uniformOfFinset](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/support-uniformoffinset.md) | 233 | `result-track:60574ea1d588505c5105a1616e0393f14db6aa51c5bfdfee28ee4d1a1edb1bac` |
| 24 | `theorem` | [mem_support_uniformOfFinset_iff](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/mem-support-uniformoffinset-iff.md) | 237 | `result-track:ed725e0aa126e86dd40aaaabaa223386ba5b4b197bc29039575447e5e849fe6a` |
| 25 | `theorem` | [toOuterMeasure_uniformOfFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/tooutermeasure-uniformoffinset-apply.md) | 246 | `result-track:d4538ec716d49e1bb88ef2799a5eabc3b1a0144f411ce01840d9041a16a8d56e` |
| 26 | `theorem` | [toMeasure_uniformOfFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/tomeasure-uniformoffinset-apply.md) | 264 | `result-track:e17e78f14434ffcabaac5d3fee88cb91b52a082c9678d7eb98895f0d6fb3eaec` |
| 27 | `def` | [uniformOfFintype](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/uniformoffintype.md) | 275 | `declaration-track:b926024021ba0f491c97309b10dc247769315a1aed0db4a9f031b8d79705994b` |
| 28 | `theorem` | [uniformOfFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/uniformoffintype-apply.md) | 281 | `result-track:412a87af6cb66d475c32e105ea05b0ff32e4c7e08687d9fd2275f99c83decb4f` |
| 29 | `theorem` | [support_uniformOfFintype](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/support-uniformoffintype.md) | 285 | `result-track:c8fa658528b9663ea51064a4f3541b630264c6c0b3f07f14d868418a97137ec2` |
| 30 | `theorem` | [mem_support_uniformOfFintype](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/mem-support-uniformoffintype.md) | 289 | `result-track:62d6b5b8c5ed815b1b2051288e82728a9bc8759d7c55968824c0707eab164a40` |
| 31 | `theorem` | [toOuterMeasure_uniformOfFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/tooutermeasure-uniformoffintype-apply.md) | 295 | `result-track:b56b22b3a33eb937f481fd6a0367d62f6ad2646d159beb17f407a12104617b74` |
| 32 | `theorem` | [toMeasure_uniformOfFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/tomeasure-uniformoffintype-apply.md) | 301 | `result-track:cd4a796057bef3952bb56180ba2b8aaa9905bea429cc5f9acf5a592d50ba6ccf` |
| 33 | `def` | [ofMultiset](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/ofmultiset.md) | 315 | `declaration-track:9323a6b479877a1c7ff0d51b3a6c09bbc0493e6bbff26ad74a46f6528f1e05e0` |
| 34 | `theorem` | [ofMultiset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/ofmultiset-apply.md) | 336 | `result-track:b63a34a2066fd50cc8174820a3f4a175bac88b94d6f32112317af3d7104a511c` |
| 35 | `theorem` | [support_ofMultiset](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/support-ofmultiset.md) | 341 | `result-track:5187b8e80276aae3aedca0fbcd9116c4b72d68dbf0b7926701e781a6d6d79a9d` |
| 36 | `theorem` | [mem_support_ofMultiset_iff](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/mem-support-ofmultiset-iff.md) | 345 | `result-track:bdaf27812d444b5c9d1c96689b56b56326881a97cf90ea9d53ef2181da676e36` |
| 37 | `theorem` | [ofMultiset_apply_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/ofmultiset-apply-of-notmem.md) | 348 | `result-track:7f9a7162fb7df5d04a8b30ee0d24ba8e9004cf23abbb1c0fce407d3a27d7d974` |
| 38 | `theorem` | [toOuterMeasure_ofMultiset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/tooutermeasure-ofmultiset-apply.md) | 358 | `result-track:44523a7ce643a57d6e3ff0ce6f4a365629cf6804a05d66d030d91abf91b7c409` |
| 39 | `theorem` | [toMeasure_ofMultiset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/UniformPublic.lean/declarations/tomeasure-ofmultiset-apply.md) | 367 | `result-track:d96c710a110b71007118c7598f53d31288e80f8b970579819d5b80885fc34ff8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1245ec530deb7e8a3f9b1a47d9a52d819450b9b6b1654cc97fa40f9aaafb9142 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/Uniform/Variant745c71d9a6a92b3174f92af3d546068516da7ecb622457cbd3c3b2f0bf8b1b91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
