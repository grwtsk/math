# Verification target: Distributions Uniform Uniform

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2de3fe9d08303e7ba0685b3cc8db805a51070a4",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant6676dfd5a3b5b92a0cef3d63226b936cc3ee4d049badabc3970aa28a741a9f24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2de3fe9d08303e7ba0685b3cc8db805a51070a4`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant6676dfd5a3b5b92a0cef3d63226b936cc3ee4d049badabc3970aa28a741a9f24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/Uniform/Variant6676dfd5a3b5b92a0cef3d63226b936cc3ee4d049badabc3970aa28a741a9f24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Notation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Density` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ConditionalProbability` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsUniform](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/isuniform.md) | 60 | `declaration-track:41c948bd47ddb42f5b6cdb249348d63798d07970e365aed78ff9677b8c09e666` |
| 2 | `theorem` | [aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/aemeasurable.md) | 65 | `result-track:d0909ab041e0726ffbc0a82a40ebeeb376c5037e92ccf0fc42c81358ee02ade7` |
| 3 | `theorem` | [absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/absolutelycontinuous.md) | 76 | `result-track:991fb94eaaae019e8fcb13af9b5a1bfbc55b5fbce6731de470a608ef4a60dd35` |
| 4 | `theorem` | [measure_preimage](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/measure-preimage.md) | 79 | `result-track:9958790419d98819a4b500438fe2c2df3cc448db5c5373794798dbd469ffc7b8` |
| 5 | `theorem` | [isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/isprobabilitymeasure.md) | 85 | `result-track:b1b6bce0ee75b6498a46acff7db74dc934eb4b075f18007c1c4eaa78ea4baa64` |
| 6 | `theorem` | [toMeasurable_iff](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/tomeasurable-iff.md) | 92 | `result-track:f597a3738df02c8eff6596a89a0209e045130e988caec3391306b8fe0e43a8f0` |
| 7 | `theorem` | [toMeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/tomeasurable.md) | 97 | `result-track:c7c9743efc3b6b523a3e823e84480a62f19360e6a0c0b993e2a7fd6058f72aef` |
| 8 | `theorem` | [hasPDF](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/haspdf.md) | 102 | `result-track:18b1b8d44a858ed93acf4a384a809d681bb25678fdd7db26d7543368038349b0` |
| 9 | `theorem` | [pdf_eq_zero_of_measure_eq_zero_or_top](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/pdf-eq-zero-of-measure-eq-zero-or-top.md) | 110 | `result-track:861a25510b8fa0f5663d97425919e7e3045529061e25cca3fe63e9c96b277369` |
| 10 | `theorem` | [pdf_eq](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/pdf-eq.md) | 119 | `result-track:b834ef209a9f70e9b2f4d5c943eff044a61cb71d407493d08360b2770cac4ceb` |
| 11 | `theorem` | [pdf_toReal_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/pdf-toreal-ae-eq.md) | 134 | `result-track:ded0bb3f4f1d24c7783356704e9292c36b55f5b9d24c7fccd1840f26cbb28327` |
| 12 | `theorem` | [mul_pdf_integrable](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/mul-pdf-integrable.md) | 142 | `result-track:d7d27db2600baa470643790ce7a7eb35eecb81ed7749155eeac16e5096e9e151` |
| 13 | `theorem` | [integral_eq](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/integral-eq.md) | 166 | `result-track:69f3c6ccc0e102167a7e1050cf43332beebee2a3c5521d2cf6ced0593252dc86` |
| 14 | `lemma` | [IsUniform.cond](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/isuniform-cond.md) | 180 | `result-track:25c28d0928a5ca7a3cf7b4e4d5889440606a5d5c050596af912f2f2d36315f16` |
| 15 | `def` | [uniformPDF](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/uniformpdf.md) | 187 | `declaration-track:7e5acbb322ae0ec2de671acd2fc6c749290cde383270e8c52f1a1c32e87454ac` |
| 16 | `lemma` | [uniformPDF_eq_pdf](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/uniformpdf-eq-pdf.md) | 191 | `result-track:c6db4fe2c1d97f1a10bd498d057f35669b8f1e3364b82aad4ebd452b4ba7da56` |
| 17 | `lemma` | [uniformPDF_ite](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/uniformpdf-ite.md) | 198 | `result-track:79728f2606e5e8e93ee2ee941684a0d93792e32e389d3c021009e659c3aa03ba` |
| 18 | `def` | [uniformOfFinset](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/uniformoffinset.md) | 217 | `declaration-track:96e13ad34a4150e96ed019238adad3784eed8273c739d53cb0f7cd95f68b8a02` |
| 19 | `theorem` | [uniformOfFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/uniformoffinset-apply.md) | 231 | `result-track:2a8fc3b7e446fb4ce2ed74176fdd42ff10e75ba1c1cc8938fe47d236b01abff8` |
| 20 | `theorem` | [uniformOfFinset_apply_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/uniformoffinset-apply-of-mem.md) | 235 | `result-track:01b216b7ba7eb05a7c3375b58b78608c05f5a6f7b962ca6067f26d89b72431c2` |
| 21 | `theorem` | [uniformOfFinset_apply_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/uniformoffinset-apply-of-notmem.md) | 238 | `result-track:8181d464ed35ba8a4dadc47082e01f14401f769fd63d4fa5f6ec4751fddf4b90` |
| 22 | `theorem` | [support_uniformOfFinset](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/support-uniformoffinset.md) | 244 | `result-track:6a99096c85e59fb46870eaa94fbfba73290205c8091195c2dd70e077d30fa402` |
| 23 | `theorem` | [mem_support_uniformOfFinset_iff](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/mem-support-uniformoffinset-iff.md) | 250 | `result-track:0607ae5a86b997ffe2992e52926dd18a19c7d4670f9a0cfe980bc406c0a9c728` |
| 24 | `theorem` | [toOuterMeasure_uniformOfFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/tooutermeasure-uniformoffinset-apply.md) | 259 | `result-track:8222a66f99a7a2b7ba40e9a008653e8945a21d6d60caa979f3098df77f2b4562` |
| 25 | `theorem` | [toMeasure_uniformOfFinset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/tomeasure-uniformoffinset-apply.md) | 277 | `result-track:ac7c5030dcebfa68f6f3f0732309bf59ffb356530a83e10193271b5c08e762e0` |
| 26 | `def` | [uniformOfFintype](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/uniformoffintype.md) | 288 | `declaration-track:437be11a2ac19f18cc520c3ed3dafeacc8ac165f6bc4ef4795b798244b9cb965` |
| 27 | `theorem` | [uniformOfFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/uniformoffintype-apply.md) | 294 | `result-track:d8bb2dd2a2aebc3097bfcdf4230c5d6c5e66d257e5b1a0d965f31e4ded90079e` |
| 28 | `theorem` | [support_uniformOfFintype](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/support-uniformoffintype.md) | 298 | `result-track:dd3bddb303b277226133f0520dee0c30e8fba7aed0cc792f37047fa774c3f164` |
| 29 | `theorem` | [mem_support_uniformOfFintype](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/mem-support-uniformoffintype.md) | 302 | `result-track:ae8f8c1b335fef93e01a3e3c46837ff666ee2daab0c69d1e20c112c85949e9ef` |
| 30 | `theorem` | [toOuterMeasure_uniformOfFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/tooutermeasure-uniformoffintype-apply.md) | 308 | `result-track:fed4dd2e5802aee4dbf6018a3ff3fb76432ce033cc84eec77376183a37c1300e` |
| 31 | `theorem` | [toMeasure_uniformOfFintype_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/tomeasure-uniformoffintype-apply.md) | 314 | `result-track:422eb20c1ca321eec7f87a878f2e174560493abeb45ec407531f97e9d788f862` |
| 32 | `def` | [ofMultiset](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/ofmultiset.md) | 328 | `declaration-track:e2ce8e861252735e03313df60925b027adddc1c703e0b833e10459049cadbe5b` |
| 33 | `theorem` | [ofMultiset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/ofmultiset-apply.md) | 349 | `result-track:e2198f4e2f014784b3027ca1067fdd60e16f8bc54b8da2a3e0d23c3ef8c2bb2a` |
| 34 | `theorem` | [support_ofMultiset](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/support-ofmultiset.md) | 354 | `result-track:e110b97871c3039bdfdb472068423c0fa8783c0e2a1aaaddb76497522a5d9266` |
| 35 | `theorem` | [mem_support_ofMultiset_iff](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/mem-support-ofmultiset-iff.md) | 358 | `result-track:7664a4ead2ddd989ec187515569bd76e2a906c0e338f2b7fce49d2590785e771` |
| 36 | `theorem` | [ofMultiset_apply_of_notMem](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/ofmultiset-apply-of-notmem.md) | 361 | `result-track:a4dd470d5fca7ff4dfc27aeaea0c06b5a1e689b6c8a1f84ba70071682db1fafb` |
| 37 | `theorem` | [toOuterMeasure_ofMultiset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/tooutermeasure-ofmultiset-apply.md) | 374 | `result-track:b1dbbbd9e5f2fb3617443c098b37f021086cfda43482d16107064d6e799df937` |
| 38 | `theorem` | [toMeasure_ofMultiset_apply](../../../../ProbabilityTheoryAndStochasticProcesses/DistributionsUniformUniform.lean/declarations/tomeasure-ofmultiset-apply.md) | 383 | `result-track:c2f7410554fc22640bf67dd941cb6f7d2b43ca375fb837d69795e188ed049cd1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51f33d5ceefefef15f3e4c6b23e279883b73a043c641f8f590a42717cfabd2d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/Uniform/Variant6676dfd5a3b5b92a0cef3d63226b936cc3ee4d049badabc3970aa28a741a9f24.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/Uniform/Variant6676dfd5a3b5b92a0cef3d63226b936cc3ee4d049badabc3970aa28a741a9f24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
