# Verification target: Deriv Notation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47997c07a835dac88abf2ab348a48c82cf869a9a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47997c07a835dac88abf2ab348a48c82cf869a9a`.

Source path: `GRWTSK/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LineDeriv](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederiv.md) | 38 | `declaration-track:98c937afeb591fbd1dde7136d4761538f423f60d97431c779ad5a17b5155277c` |
| 2 | `def` | [iteratedLineDerivOp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop.md) | 51 | `declaration-track:abf6d8adffafe601f715993c21daf751bf8bcf77d30a34554156890596d2a023` |
| 3 | `theorem` | [iteratedLineDerivOp_fin_zero](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-fin-zero.md) | 57 | `result-track:89e6a0faf9a96fac3f88aeb70285c5e5ca0c181ceec0fa26383cfd54ea670ed7` |
| 4 | `theorem` | [iteratedLineDerivOp_one](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-one.md) | 61 | `result-track:3b521942f220de6f49bb90b5a063e6c3706e51a8b5471f9b38a4496746af3c9a` |
| 5 | `theorem` | [iteratedLineDerivOp_succ_left](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-succ-left.md) | 64 | `result-track:e90e73bbe92cc7f68e643cad9b54810762aa67e1186a47d27c90b748101d43ba` |
| 6 | `theorem` | [iteratedLineDerivOp_succ_right](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-succ-right.md) | 68 | `result-track:70e4dad96314a559bdd620847cf1ca2a255a526db05b6978b83c4553ceb40d18` |
| 7 | `theorem` | [iteratedLineDerivOp_const_eq_iter_lineDerivOp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-const-eq-iter-linederivop.md) | 86 | `result-track:70c0a77c1638fb5af12b147e053fd0e31bca086db6207ad4eb712864b2b278ed` |
| 8 | `class` | [LineDerivAdd](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivadd.md) | 104 | `declaration-track:981b7d66b0d195b4cf6fbed88f4fc6b18eb7aef03e5b24b9823f4af92b517ec1` |
| 9 | `class` | [LineDerivSMul](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivsmul.md) | 113 | `declaration-track:df68b019a80eb5035aa0625d657b55c6461dd85fb65a6932fbbb6e35992be89a` |
| 10 | `class` | [LineDerivLeftSMul](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivleftsmul.md) | 121 | `declaration-track:e89e5e4536a4fc054eb14cbf0c2ed8cc0cc0bd2a41b28ac2a58422f104ff1edb` |
| 11 | `class` | [ContinuousLineDeriv](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/continuouslinederiv.md) | 128 | `declaration-track:3392ae7c0ed399d3dc8be337600255cb6bc0d00ecee51c102074118893e0bc2e` |
| 12 | `theorem` | [lineDerivOp_zero](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivop-zero.md) | 147 | `result-track:e0c37eae91050ede3ec0707542c95ced3dd630d6739fe4ae5d37a180019bf7b4` |
| 13 | `theorem` | [lineDerivOp_neg](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivop-neg.md) | 151 | `result-track:6b871b3022dc4165dbf77f0d78afae462ed792f225912b708acbd90647409438` |
| 14 | `theorem` | [lineDerivOp_sum](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivop-sum.md) | 155 | `result-track:2ad8b4ce7d7d3ad5c0f5e21bcaef4cd652974295c33fb42c30a38c35eac445b2` |
| 15 | `theorem` | [lineDerivOp_left_zero](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivop-left-zero.md) | 160 | `result-track:867099a32bfc7e7d0051a7fe2f93b2abfb19d6b4d4eb655117d113db2cfe7b89` |
| 16 | `theorem` | [lineDerivOp_left_neg](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivop-left-neg.md) | 164 | `result-track:332bfe4dc90eaab84e470bf82cf09033f95db8baf68bd58e1c22364b028e5a82` |
| 17 | `theorem` | [lineDerivOp_left_sum](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivop-left-sum.md) | 168 | `result-track:3421a5e6a6fc359aa78936417d0c660e795a41498df341fca6e430c5c2535660` |
| 18 | `def` | [lineDerivOpCLM](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivopclm.md) | 182 | `declaration-track:8363d6f3c475d0bbf4be2f0d237117bbe1816363cd761e060683d7eb9f3734a0` |
| 19 | `theorem` | [lineDerivOpCLM_apply](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/linederivopclm-apply.md) | 188 | `result-track:5a584d248b3cfbcedad38fe1d0fa2ced708c749dda0f0a4d0de8639b45331c8b` |
| 20 | `theorem` | [iteratedLineDerivOp_add](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-add.md) | 202 | `result-track:3bfea262fde85e4aced9e982d8b2401838333deceb1972aa67da9b49de223d69` |
| 21 | `theorem` | [iteratedLineDerivOp_zero](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-zero.md) | 211 | `result-track:b31c11cb593d7149be7d5b8132d4f5eedd887154c607fe47c583049eaba77c52` |
| 22 | `theorem` | [iteratedLineDerivOp_neg](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-neg.md) | 215 | `result-track:dad77ab565cf524acf526d0a87729528d5a47c7d40c66dfbe5d888219eb36082` |
| 23 | `theorem` | [iteratedLineDerivOp_sum](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-sum.md) | 219 | `result-track:b29791a0da766b773da6176a35fbd45b71dd21ac01edc567715aa9b2462b65c3` |
| 24 | `theorem` | [iteratedLineDerivOp_smul](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivop-smul.md) | 225 | `result-track:61d55357aaf43b14d4f948a3b6f4b4cfa791a43d71e0d08714514951f47ab024` |
| 25 | `theorem` | [continuous_iteratedLineDerivOp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/continuous-iteratedlinederivop.md) | 236 | `result-track:5bb51ab0e9b60acd68f0411e7eafe64ed27f27be19abc65b1d68c8e7f5b92dd6` |
| 26 | `def` | [iteratedLineDerivOpCLM](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivopclm.md) | 249 | `declaration-track:5f55844b7a0f4e67feb7df0bc43aa1f70ad06419e234129a17df9ad38ed445ed` |
| 27 | `theorem` | [iteratedLineDerivOpCLM_apply](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/iteratedlinederivopclm-apply.md) | 255 | `result-track:e5a4f2ce164ca8271d496268480597068b9a7bda4f1246edfe15696bec306756` |
| 28 | `class` | [Laplacian](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/laplacian.md) | 267 | `declaration-track:ae5a09ba35898f5f02fb8790b6fcbe6698bf18713b47c8d54a89b5f1bdbb2bdb` |
| 29 | `def` | [bilinearLineDerivTwo](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/bilinearlinederivtwo.md) | 297 | `declaration-track:fb615dc7251a33b1019a6f37a9380e8157e982eeffb51b2ddcf06d457ccc9540` |
| 30 | `def` | [tensorLineDerivTwo](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/tensorlinederivtwo.md) | 306 | `declaration-track:054a305b2da502eddae3388fc589fb32cb5c40e2fede13af205ffaf2e8aefbc4` |
| 31 | `lemma` | [tensorLineDerivTwo_eq_lineDerivOp_lineDerivOp](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/tensorlinederivtwo-eq-linederivop-linederivop.md) | 309 | `result-track:82739cd984e9e13e4fa41fdfc8a0fb31eac9c742fb91ee2c8f26cb3098460bf9` |
| 32 | `theorem` | [tensorLineDerivTwo_canonicalCovariantTensor_eq_sum](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/tensorlinederivtwo-canonicalcovarianttensor-eq-sum.md) | 326 | `result-track:5f2c6ae7ed8a47adf18d3fb48e5e7feadb28ec307f0bde146727866e574d96f2` |
| 33 | `def` | [laplacianCLM](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/laplacianclm.md) | 345 | `declaration-track:37fbd14d4c6db4f7ba8a5711f4763494284d360787f83d09602c9741d243212f` |
| 34 | `theorem` | [laplacianCLM_eq_sum](../../../../../FunctionalAnalysis/DistributionsGeneralizedFunctionsDistributionSpaces/DerivNotationPublic.lean/declarations/laplacianclm-eq-sum.md) | 357 | `result-track:7fb15a4cf884208e1c09dea6d4f512474119b58999633b2fc89f18a907f53b38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9ef16927d5690fd1ea49e100e498d65c696a5d275c1d93a656897a31593435f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/DerivNotation/Variantecd26bafd60f128b0d9649bbfbbd94d183297468563c2e85c8398445f7af08e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
