# Verification target: Moments Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfba042214f23c4bd8832590455bad1f95489b70",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfba042214f23c4bd8832590455bad1f95489b70`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Variance` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moment](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/moment.md) | 59 | `declaration-track:8d22dca77cc6bcc7cbfd99de9d46f7aa28e037d2d8034a598eaff53bd568a3b3` |
| 2 | `def` | [centralMoment](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/centralmoment.md) | 64 | `declaration-track:bd5987b328c4337380d7f222089f824a70f154e063d41354e71fe25e27c0fac0` |
| 3 | `theorem` | [moment_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/moment-zero.md) | 70 | `result-track:d11b6ce0b3c19046f6ba723485e8104fabba9641ef93a837bc3f2d401244f024` |
| 4 | `theorem` | [centralMoment_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/centralmoment-zero.md) | 76 | `result-track:a4cb64adbea9ce911c82204efb212a638b68810b1b033d35d4067db2d385a44b` |
| 5 | `theorem` | [centralMoment_one'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/centralmoment-one-source-edition-2.md) | 81 | `result-track:2abeef208e3492a7749c1b5e6240c1c5b569c25726bdd9e7f9e66a9fa738c88a` |
| 6 | `theorem` | [centralMoment_one](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/centralmoment-one.md) | 89 | `result-track:2883f9b4609d0ad0a94fde55c8c2352ba96925045311ab7bbd04d9887142e490` |
| 7 | `theorem` | [centralMoment_two_eq_variance](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/centralmoment-two-eq-variance.md) | 102 | `result-track:0f59bb6a3b1a1e31e1fd4389680d4e03edebca398ba0b02e12ceaa1a180e93f5` |
| 8 | `def` | [mgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf.md) | 111 | `declaration-track:8aa884c97a41e76fd4cc576877e24128a494b59e2c0d25b07f30e19ce07d06f7` |
| 9 | `def` | [cgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/cgf.md) | 116 | `declaration-track:a0119bb97822e8a87f2fc0a70314e00aaa11f77e5d93fa05d822fda7fc9dbf3e` |
| 10 | `theorem` | [mgf_zero_fun](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-zero-fun.md) | 121 | `result-track:a845179df9a48535ae75d4b40f3d655c32d3f590af1cdd501fed8eb0e13e5126` |
| 11 | `theorem` | [cgf_zero_fun](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/cgf-zero-fun.md) | 126 | `result-track:e1ed1b6c8274eb5e7f629fbb1f99947a15ce7eded08780fb8e72c3b523f9dbda` |
| 12 | `theorem` | [mgf_zero_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-zero-measure.md) | 130 | `result-track:1ba0ca2feb7cd5cac6acbe814dfb3d6a5930ffdc9cf08f2d5e1e33a0ea461b60` |
| 13 | `theorem` | [cgf_zero_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/cgf-zero-measure.md) | 134 | `result-track:94301441b538d624b4372c0332ac01f5855bcbef1caa87d61e4710f38855ee6d` |
| 14 | `theorem` | [mgf_const'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-const.md) | 139 | `result-track:6cb9739ea0c1a49eddf3b182209e2281399277b1722cc879ae4959ed5abe323c` |
| 15 | `theorem` | [mgf_const](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-const-source-edition-2.md) | 144 | `result-track:aea011880d55d7ebb104372b5192dbe5378b09fd4960a38ebb61b5858e069594` |
| 16 | `theorem` | [cgf_const'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/cgf-const-source-edition-2.md) | 149 | `result-track:e50a726235c16b855c6f954baa9be196c663f518055ec8c95406baf5fd116ea4` |
| 17 | `theorem` | [cgf_const](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/cgf-const.md) | 159 | `result-track:8c08a6c3840590c2af2d62a15c197be2a9d7a28fc9c079a79c037a0101d0977b` |
| 18 | `theorem` | [mgf_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-zero.md) | 164 | `result-track:23004304bd71d18f1aa17742bc70886d777f5a35f7b672d58237d1d8a714af5c` |
| 19 | `theorem` | [mgf_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-zero-source-edition-2.md) | 169 | `result-track:e4ee0939975ac35851d61a3c74b2c997252e2b832ac57091d362f3f9f4823846` |
| 20 | `theorem` | [cgf_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/cgf-zero.md) | 174 | `result-track:194bc2717bf7884582d1e0c0024a3fa4102588e155561c8b8e35f794258a5045` |
| 21 | `theorem` | [cgf_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/cgf-zero-source-edition-2.md) | 178 | `result-track:7b02cc79e4d2b724804b24b9a380ae61dadc7bfd210fdde4b120f389e95e7c27` |
| 22 | `theorem` | [mgf_undef](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-undef.md) | 182 | `result-track:667c281587ff5b8b73f3d270538450b961298e6b19c6434ba5a8703ecf198c34` |
| 23 | `theorem` | [cgf_undef](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/cgf-undef.md) | 186 | `result-track:a4d91a1a0866deeced63715fd3acfe2b01c780d84abc63ecf396475a8ee9a89f` |
| 24 | `theorem` | [mgf_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-nonneg.md) | 190 | `result-track:ce8269526350b6752a894fa085e1692255957e1236f9e8fc53f7a7e643bdf838` |
| 25 | `theorem` | [mgf_pos'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-pos.md) | 197 | `result-track:9ccccf974841a1ecb71b1d7b8486726164a58f9b93ddc4c9cde32c053f928808` |
| 26 | `theorem` | [mgf_pos](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-pos-source-edition-2.md) | 216 | `result-track:ef9a8e0ac70a71b1d2479fe6da5775389fdbeaf1254f882656e7aaa2d91d2f61` |
| 27 | `theorem` | [mgf_neg](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/mgf-neg.md) | 221 | `result-track:41c528dba22a995f3d23ca86ca1a8b59c3468cf1376b3e718cbd93f8fb410c3c` |
| 28 | `theorem` | [cgf_neg](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/cgf-neg.md) | 224 | `result-track:6c3688876d6afde5c83f0d1acaefc833d012a329eccc9ebcd591df6b9d949a9e` |
| 29 | `theorem` | [IndepFun.exp_mul](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/indepfun-exp-mul.md) | 228 | `result-track:ea36bf81cae3a0ab5b6f2efdad183ef12cefeb374d3919f54aee45d9e6679656` |
| 30 | `theorem` | [IndepFun.mgf_add](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/indepfun-mgf-add-source-edition-2.md) | 235 | `result-track:b6a754d4805040e27bf18f46529be7dd989c4f4ae4bef9d7fa8ba1e9afcd946b` |
| 31 | `theorem` | [IndepFun.mgf_add'](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/indepfun-mgf-add.md) | 243 | `result-track:11e55c93467bedccb690a6c8863b095a0af2ddeb02e39e08c678db1f741df229` |
| 32 | `theorem` | [IndepFun.cgf_add](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/indepfun-cgf-add.md) | 253 | `result-track:26dc345346e63a6527bae1722f90dda274402e389ea8089cc9194529a74fa8ed` |
| 33 | `theorem` | [aestronglyMeasurable_exp_mul_add](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/aestronglymeasurable-exp-mul-add.md) | 263 | `result-track:08ec4331af873776da8dbdeda81766a3b8bda0d4a651c8179320ed978c166cff` |
| 34 | `theorem` | [aestronglyMeasurable_exp_mul_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/aestronglymeasurable-exp-mul-sum.md) | 271 | `result-track:80e6efae247b4861b6c6c2ac0c12699f9b1206cf63121ff9d1ca8d39908d6271` |
| 35 | `theorem` | [IndepFun.integrable_exp_mul_add](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/indepfun-integrable-exp-mul-add.md) | 285 | `result-track:a6a095912b6fb6c395b782b5349012b04baee8b591e9b80a8ebe933b0b9535e3` |
| 36 | `theorem` | [iIndepFun.integrable_exp_mul_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/iindepfun-integrable-exp-mul-sum.md) | 293 | `result-track:ddba4e105d5d498454d8f7356f2e0edbbc2f0da08fd833dca29890f0ba0e4053` |
| 37 | `theorem` | [iIndepFun.mgf_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/iindepfun-mgf-sum.md) | 310 | `result-track:926d4c612dcbd4b5ae9eb2feece9f335eae9ac79a917eb077913e6d426c8a0e7` |
| 38 | `theorem` | [iIndepFun.cgf_sum](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/iindepfun-cgf-sum.md) | 325 | `result-track:b4ccdc2e82f72803c0146c67d0aaf4f0a7df862f8edd6fc4abc63c8eaaf4ff20` |
| 39 | `theorem` | [measure_ge_le_exp_mul_mgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/measure-ge-le-exp-mul-mgf.md) | 337 | `result-track:7a9b747f8f13c8cd3165e02acaa6edf9374cd260c4a2b5595d0b14d8ee213913` |
| 40 | `theorem` | [measure_le_le_exp_mul_mgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/measure-le-le-exp-mul-mgf.md) | 360 | `result-track:afc32fb3eb76429938fd845ec04cad1804fe4e7bad34a3ea96ef57be64e27a8d` |
| 41 | `theorem` | [measure_ge_le_exp_cgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/measure-ge-le-exp-cgf.md) | 372 | `result-track:c780b9770051ae8e05e9b9973299cfbe9e8326f4ab46f984ca57be89fbd12ff9` |
| 42 | `theorem` | [measure_le_le_exp_cgf](../../../../ProbabilityTheoryAndStochasticProcesses/MomentsNamespaced.lean/declarations/measure-le-le-exp-cgf.md) | 381 | `result-track:9ce5828a1cd5a3b1e4d48b9fc129c4e84c68d054a4f0c52b58d0fe7646f1e3d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=190c3bf66966493f4d2fa52786d2881a92f848a1e172c0dcd689473b6fe079f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/Variant94d5538fc39806b03ba1964a460634273ba6751ed469b1343cb46d6b6e7539b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
