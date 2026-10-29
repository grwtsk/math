# Verification target: Laplacian Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cb7e7ba0e5566e47a0a3aa04feaf3135c1437ef",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cb7e7ba0e5566e47a0a3aa04feaf3135c1437ef`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean.json)

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
| 1 | `def` | [bilinearIteratedFDerivWithinTwo](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/bilineariteratedfderivwithintwo.md) | 61 | `declaration-track:9921800b59f6d53305e93e09b83714a26d15ee3d84a8454b319ccc78518ddb3b` |
| 2 | `def` | [bilinearIteratedFDerivTwo](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/bilineariteratedfderivtwo.md) | 69 | `declaration-track:d6f009f58a7e4438c9dbcddee331003cb0def6c4ebb29f27c84a18a19ab42792` |
| 3 | `lemma` | [bilinearIteratedFDerivWithinTwo_eq_iteratedFDeriv](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/bilineariteratedfderivwithintwo-eq-iteratedfderiv.md) | 75 | `result-track:b7de34a87bc2ee11fbd9a9e956b9dcd47a1f017e4b91fbcb4adba8a137e40dd2` |
| 4 | `lemma` | [bilinearIteratedFDerivTwo_eq_iteratedFDeriv](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/bilineariteratedfderivtwo-eq-iteratedfderiv.md) | 83 | `result-track:e37102204c7df442732c53e13ae157ee8141d8b7e5a53cc5829e917e8a3afa77` |
| 5 | `def` | [tensorIteratedFDerivWithinTwo](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/tensoriteratedfderivwithintwo.md) | 92 | `declaration-track:b5869bcdf7d2725d56b92e2afe420579f04ad04d956726fbc54fddda31387b19` |
| 6 | `def` | [tensorIteratedFDerivTwo](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/tensoriteratedfderivtwo.md) | 100 | `declaration-track:1c8adc8e031a44546534b88105848552497969280d81aa788a51dcf9b169b36d` |
| 7 | `lemma` | [tensorIteratedFDerivWithinTwo_eq_iteratedFDerivWithin](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/tensoriteratedfderivwithintwo-eq-iteratedfderivwithin.md) | 106 | `result-track:2d952f6431e4710a3cf18ea254c47491ac79b43ecc672991119877df778fab4d` |
| 8 | `lemma` | [tensorIteratedFDerivTwo_eq_iteratedFDeriv](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/tensoriteratedfderivtwo-eq-iteratedfderiv.md) | 116 | `result-track:8327927f62f1ebb2eeabcc603ed240785254369b422a7e590605316ae540e5ac` |
| 9 | `def` | [laplacianWithin](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin.md) | 141 | `declaration-track:9ebd33f05e7d8bc00699cb83a1e0116920e2268e176e5a6ae48ef57221bb2057` |
| 10 | `instance` | [instLaplacian](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/instlaplacian.md) | 148 | `declaration-track:047fa422da0143f2d6e90cb600c27c9a63104783cafc6da3f00525cb10be2d6a` |
| 11 | `theorem` | [laplacianWithin_univ](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-univ.md) | 157 | `result-track:85bac2c6005f78fe43df34cc377b3008efe30657fed34096846ba5f0d4dd6976` |
| 12 | `theorem` | [laplacianWithin_eq_iteratedFDerivWithin_orthonormalBasis](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-eq-iteratedfderivwithin-orthonormalbasis.md) | 171 | `result-track:2755e43455ffa0f8309a2511ffbf2acf8afb1755dc7039b00e15333c0a1d0659` |
| 13 | `theorem` | [laplacian_eq_iteratedFDeriv_orthonormalBasis](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-eq-iteratedfderiv-orthonormalbasis.md) | 181 | `result-track:37dcd7830b67b6f8deaa02ed8471e29fb85a6b66ebb7a30b7050443ad5cc17cc` |
| 14 | `theorem` | [laplacianWithin_eq_iteratedFDerivWithin_stdOrthonormalBasis](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-eq-iteratedfderivwithin-stdorthonormalbasis.md) | 192 | `result-track:3803073398bdc1858c75bd796d70dde7934a0a1a763b551868d61b86de630ecf` |
| 15 | `theorem` | [laplacian_eq_iteratedFDeriv_stdOrthonormalBasis](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-eq-iteratedfderiv-stdorthonormalbasis.md) | 203 | `result-track:d4588270baadbf22dfd5408956a84c586ea77f2ed03938d95fa0331ab551a65a` |
| 16 | `theorem` | [laplacianWithin_eq_iteratedDerivWithin_real](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-eq-iteratedderivwithin-real.md) | 209 | `result-track:0fa834cbbf3398196a41ab3ce0028d388a816d26f77b4c716490b1abeccb0d30` |
| 17 | `theorem` | [laplacian_eq_iteratedDeriv_real](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-eq-iteratedderiv-real.md) | 221 | `result-track:f2a4dcce3b791dea8cfa8071bfc7bc6a6098d209ca722645a33b3aed1142987e` |
| 18 | `theorem` | [laplacianWithin_eq_iteratedFDerivWithin_complexPlane](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-eq-iteratedfderivwithin-complexplane.md) | 230 | `result-track:763520a9754a6a9515803eefbd28e203901d6a466b4f287ebe9910f4ca9b4587` |
| 19 | `theorem` | [laplacian_eq_iteratedFDeriv_complexPlane](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-eq-iteratedfderiv-complexplane.md) | 241 | `result-track:ba342e890795ed5daaaf27586e379a1f215542f09b12d970487e552d85083220` |
| 20 | `theorem` | [laplacian_const](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-const.md) | 249 | `result-track:bf36c631e2cf612e8d003ab3ca88f3e2c82d874e50cfe82781a34decbe233ca5` |
| 21 | `theorem` | [laplacianWithin_congr_nhdsWithin](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-congr-nhdswithin.md) | 261 | `result-track:61688af89c286e84d625a2c0cda2f6478dd095733c735fba5768114f67b8459c` |
| 22 | `theorem` | [laplacian_congr_nhds](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-congr-nhds.md) | 270 | `result-track:80ef44d347d0bb61d7cc60a4b348588279c3c7e8af16bcb9ba3269ed81ecddb0` |
| 23 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-11.md) | 280 | `result-track:ba87dec16cc1cab1a00249892dbd9deac941748b23ef4757363a00ff80542be4` |
| 24 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-4.md) | 287 | `result-track:3dc0590fe1a0a5dbe2b878f0874914764162ee15c0b6722366c64ee7daace2a5` |
| 25 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-2.md) | 293 | `result-track:17c8de07d6b6bf606e151a9b1b3011090bcd9868c7757ce40c263b6e673ae3b2` |
| 26 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-12.md) | 303 | `result-track:d82db369b1fc17c11f6943c49f634976745c34fa41f89b125a00188313762733` |
| 27 | `theorem` | [laplacianWithin_neg](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-neg.md) | 309 | `result-track:a575318fcdb9648bf12954a6f1be51e4b712ebc02a944f3e7280259a37e4cf37` |
| 28 | `theorem` | [laplacian_neg](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-neg.md) | 316 | `result-track:75438efc63c74b4bf7b662cb28be1eb80c4e5229523c2c81a104b5ab5242ba51` |
| 29 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-9.md) | 322 | `result-track:7d4dd8bb398780d1f387e4b07d3458b0f2b35b903160a236d8d709733e444154` |
| 30 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-6.md) | 329 | `result-track:5102900fd8ec5d4ecff6a6fd308aec9ceb75e189e52f34755f3acd790879b0fd` |
| 31 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-3.md) | 335 | `result-track:32f6aa63f30181c9408c718193283cd7ba246555cf5a02088fd6cf9e26bbc3ad` |
| 32 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-10.md) | 345 | `result-track:9c8fa247ec2d6f32eba0814f6db0ebabe6c38f25666e240f4d80314402e27243` |
| 33 | `theorem` | [laplacianWithin_smul](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-smul.md) | 351 | `result-track:a910cb320c2863f71a0f107d0e518694bfad8efcdd91d0004ca568b48146b8cf` |
| 34 | `theorem` | [laplacian_smul](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-smul.md) | 359 | `result-track:a2877cdb3d216a39989d6a567092058d6993ab7540fa0a300f37cda6da23fb90` |
| 35 | `theorem` | [laplacianWithin_smul_nhds](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-smul-nhds.md) | 364 | `result-track:19ab04a5b945c0fd129f12f41385122b6ac78084d4a9b6b4e80b810afdaac69c` |
| 36 | `theorem` | [laplacian_smul_nhds](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-smul-nhds.md) | 371 | `result-track:c056da4338f458450a6038a7e0ccaa5470d246dc0929951fd2b505fe91ca5f5c` |
| 37 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-7.md) | 384 | `result-track:58d2a145942768d78c36245794a5c0c274389f2e1ef437dbaa701372e57ae72a` |
| 38 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo.md) | 391 | `result-track:10abe46525f26c41490b5a5fb917dcc1386acec47b6899741435879e9122c36d` |
| 39 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-8.md) | 396 | `result-track:5d8d81b50df1a567382a5f5fd5cb038e1c66f896446b1c01d51eebdc6d28b197` |
| 40 | `theorem` | [Laplacian Namespaced Public](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/root-grwtsk-analysis-functionalanalysis-bilineariteratedfderivwithintwo-source-edition-5.md) | 403 | `result-track:4e30e8f58c125d100b94bd9bae239cbcc6a405f91c8b5d151e2ee8c0efc4a645` |
| 41 | `theorem` | [laplacianWithin_CLE_comp_left](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacianwithin-cle-comp-left.md) | 409 | `result-track:f2ab560ec7fea95ae4330fe14c36fe5963a363a8208c47c0375f1aad99a01bbc` |
| 42 | `theorem` | [laplacian_CLE_comp_left](../../../../FunctionalAnalysis/LaplacianNamespacedPublic.lean/declarations/laplacian-cle-comp-left.md) | 415 | `result-track:989c25a260f1dd2680ce373e4b3160c2e554ceca8abd52eb6aef8bf06511e54d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a9880aa763d855935044cd6443d8358cb97025a5b0b05ea08588ba905133367 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Laplacian/Variant51de4bb5968b4bf78496fd67abb95c5849166b211c9c57d85eb0a831522b6597.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
