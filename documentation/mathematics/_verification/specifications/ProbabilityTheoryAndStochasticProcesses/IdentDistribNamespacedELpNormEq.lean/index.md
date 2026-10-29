# Verification target: Ident Distrib Namespaced ELp Norm Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f41181451b5ee29856accadce842ab60e1cf0f37",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f41181451b5ee29856accadce842ab60e1cf0f37`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Moments.Variance` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.UniformIntegrable` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IdentDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/identdistrib.md) | 74 | `declaration-track:cc4f696848511280696ceb7f8b623e76e72cc9c1bf3cb1c19aa064fe0bfd37b4` |
| 2 | `theorem` | [refl](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/refl.md) | 87 | `result-track:45c05ff0294f73ffd253eea465e98f1174e9b44d6086aadf2b483d5331f1b612` |
| 3 | `theorem` | [symm](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/symm.md) | 92 | `result-track:1120a3f25d2be2dec1652a4e12c1df17132a7fcaac1910b61c877921e74b65da` |
| 4 | `theorem` | [trans](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/trans.md) | 97 | `result-track:cf9b1c09d60270642e9ce8d1d393b19f2d92b5775d69e3aa9df74d231ed5d943` |
| 5 | `theorem` | [comp_of_aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/comp-of-aemeasurable.md) | 103 | `result-track:d46fdd11e79889223a004ad4392497263a13e1142060ffd2c8c1a915432288a1` |
| 6 | `theorem` | [comp](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/comp.md) | 112 | `result-track:cd6c99fd23d4b69d92a9e55f624e173fc8e3a9655f845299f0d5e0e163dbd0fa` |
| 7 | `theorem` | [of_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/of-ae-eq.md) | 116 | `result-track:7691c664ccd3b91d32f0a46a02e95b146d3ddf8f953a91dffa32d95f2cc1aa2c` |
| 8 | `lemma` | [Ident Distrib Namespaced ELp Norm Eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations.md) | 122 | `result-track:19032d76c4e959a947bf51625d4e1843f4db1ab7a12406338fc17c250e3c6345` |
| 9 | `lemma` | [Ident Distrib Namespaced ELp Norm Eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations-source-edition-2.md) | 126 | `result-track:1ec186f8e2ca7b3a1d729a3c52019f700fa6afc108623ef0e3105145649fb603` |
| 10 | `theorem` | [measure_mem_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/measure-mem-eq.md) | 131 | `result-track:a6576b76ae1fdcbb154b73be8d8bc54fbec4ff32bcdc208f35a2c129d801a162` |
| 11 | `theorem` | [ae_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/ae-snd.md) | 138 | `result-track:d418e84f1778a042cd0deeebce21fb56f724ff42e8ece242f016266eff3aa35c` |
| 12 | `theorem` | [ae_mem_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/ae-mem-snd.md) | 144 | `result-track:a7d497f5ba5ef606b31d725706dc4199bacc196eec07987af8bd65a2b6e3f146` |
| 13 | `theorem` | [aestronglyMeasurable_fst](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/aestronglymeasurable-fst.md) | 151 | `result-track:7c4fab8aabde25269af07b8804fed1f32176160fd055b3d6784af78f0c51018d` |
| 14 | `theorem` | [aestronglyMeasurable_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/aestronglymeasurable-snd.md) | 157 | `result-track:969df82da6d039d26e8073a2a8fc5a83423a3785295687cac6917a1406d179d2` |
| 15 | `theorem` | [aestronglyMeasurable_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/aestronglymeasurable-iff.md) | 165 | `result-track:0114eed1e2b1bf4b89e3ace83fd417767b2d8ed0bb4c88dde8bbd1c28b683cb4` |
| 16 | `theorem` | [essSup_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/esssup-eq.md) | 169 | `result-track:87295c06b9193491caa3d9fc49983faaf3bc2ba93c943ebb270fe2dae795a099` |
| 17 | `theorem` | [lintegral_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/lintegral-eq.md) | 175 | `result-track:ee2bf5720952670f98a97e6f658bcd3912c6843dd98930712125b8ff9aad43c5` |
| 18 | `theorem` | [integral_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/integral-eq.md) | 181 | `result-track:7c9ed4a317fae7ea1b31edccbff74fec180534dbac29886aa6e31a2f90ee4d2c` |
| 19 | `theorem` | [eLpNorm_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/elpnorm-eq.md) | 199 | `result-track:f9d461864dc53c36ffe310c9894a9a9f0609f540b4c9be81ce095557f8b20f02` |
| 20 | `theorem` | [memLp_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/memlp-snd.md) | 214 | `result-track:e29c9d7a5db6369609c2765ae7508cd570eacc5686332c55e968fe6a02ad4af9` |
| 21 | `theorem` | [memLp_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/memlp-iff.md) | 223 | `result-track:485f67d09d87622fc5f49f34e4ec04ace9fd472ecb2d60993b38daad1e77d018` |
| 22 | `theorem` | [integrable_snd](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/integrable-snd.md) | 230 | `result-track:bbd5856aba4fcd5033c51272486f4b5a20603df9b50921bc8e91207fd1cac63f` |
| 23 | `theorem` | [integrable_iff](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/integrable-iff.md) | 235 | `result-track:ed414f32e7f9e18fb43a1110232b4639ceb90906664754b28b63939bb6430bf6` |
| 24 | `theorem` | [norm](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/norm.md) | 239 | `result-track:2fe0da75c3b93b3dab8ceadcf56bc5406fe4b639cc59c4e6b5128b4327298759` |
| 25 | `theorem` | [nnnorm](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/nnnorm.md) | 243 | `result-track:c869276f71b6c63ef405751c14077e1496a49590b4e865234ef27214389d8b30` |
| 26 | `theorem` | [pow](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/pow.md) | 248 | `result-track:5c4c9575b7762a34de46b92111da066028fe939cd6c065f87662920e7ba2b2d0` |
| 27 | `theorem` | [sq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/sq.md) | 252 | `result-track:3cafad4affe12925272be85197c2d74c12e8225c57f7c0602de2f8c819bda895` |
| 28 | `theorem` | [coe_nnreal_ennreal](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/coe-nnreal-ennreal.md) | 256 | `result-track:e36aac6a8e8e220987c765195f13a5696daaa9400c9ea0cfb66cae4a59939b31` |
| 29 | `theorem` | [mul_const](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/mul-const.md) | 261 | `result-track:68ac8b1b08d1cc6d4a31d9ed3e7813a0e35c30ade424cbea92462c8c79794f76` |
| 30 | `theorem` | [const_mul](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/const-mul.md) | 266 | `result-track:83a12c7081777f520f491997b6e49820ba4dad1833cc0540eb46516caa583e60` |
| 31 | `theorem` | [div_const](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/div-const.md) | 271 | `result-track:e6b2776edf96de253645102666d645c0e79fef0dc57a8477c39d956830988d02` |
| 32 | `theorem` | [const_div](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/const-div.md) | 276 | `result-track:5be22e2bb7a2e81cb2e22b046ccf226884749d7d9b9f4046622910c01b7c4696` |
| 33 | `lemma` | [inv](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/inv.md) | 281 | `result-track:ae5c850e0b404db4db58057893a8626973b58f4feb759ea02a9a30229d1057ae` |
| 34 | `theorem` | [evariance_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/evariance-eq.md) | 284 | `result-track:23478061330631aa1bae9e2ff35d5cce248ee41dbdbf4a7342a10b788b528a48` |
| 35 | `theorem` | [variance_eq](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/variance-eq.md) | 290 | `result-track:67331757477929d7a00beff3de522f6e094be80ab66dc02eb3f3c3231e8d469d` |
| 36 | `theorem` | [MemLp.uniformIntegrable_of_identDistrib_aux](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/memlp-uniformintegrable-of-identdistrib-aux.md) | 304 | `result-track:85d70df68fb6793129e27432cec7c3c04155e754fbd3bd4cbda0612c731ed5c1` |
| 37 | `theorem` | [MemLp.uniformIntegrable_of_identDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/memlp-uniformintegrable-of-identdistrib.md) | 332 | `result-track:bde9545a76952704ddd4274a08825419a2d148a7a6362dfcf3f9d6070caee992` |
| 38 | `lemma` | [indepFun_of_identDistrib_pair](../../../../ProbabilityTheoryAndStochasticProcesses/IdentDistribNamespacedELpNormEq.lean/declarations/indepfun-of-identdistrib-pair.md) | 353 | `result-track:333727c089c29798e039b2ddf3bb0091587b89dedabf41bd44efb3a0d0a59da5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fe2f280b9ecbe3eccce00fab3efacfff71bd66f95df7b2bbe3095551f18b9cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/IdentDistrib/Variantc39c0f39ac053c60388289e1bc91792ab7d0dc1ba14b05597e9148ee9c3852f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
