# Verification target: Calculus V1 Prebytes Source Correlation Eq Inner

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57d7087509d9790d2133ed882984e99fab88ffa1",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57d7087509d9790d2133ed882984e99fab88ffa1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_eq_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/sourcecorrelation-eq-inner.md) | 26 | `result-track:4a92b591bfe44f76a12f463db58d38c3df67c14d002e6c4baf52f278fa2c492e` |
| 2 | `def` | [correlationScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/correlationscalederivative.md) | 50 | `declaration-track:c533a63311d288d208fe5a2ee17ad13e463f7dddadb3badf023d8e226ffe7465` |
| 3 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/sourcecorrelation-hasderivat-scale.md) | 55 | `result-track:9267147f9b4d32c35e17ee9b35e79e2239754a31ae2ddcd26474306591a2ff93` |
| 4 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/sourcecorrelation-contdiffat-scale.md) | 73 | `result-track:da6835565a543ba880ffbfd3b68d39dfe0f7d5beee96e37a5fb2d2a44e0bdc9a` |
| 5 | `theorem` | [sourceCorrelation_contDiffOn_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/sourcecorrelation-contdiffon-scale.md) | 85 | `result-track:b8baece20b9917ff4119ed806366aca1b4e1fcdebac17ebdaabf9f17b46e9bf3` |
| 6 | `theorem` | [closedPrimeWeight_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimeweight-zero-above-cutoff.md) | 90 | `result-track:f5d7a0851f59cbefbf6ca6f61a332a9bf1e444ebbbb1d0199dae6fea88d8219d` |
| 7 | `theorem` | [correlationScaleDerivative_zero_of_lt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/correlationscalederivative-zero-of-lt.md) | 104 | `result-track:dcc73f6b8883162a46ad48363c22ce7f81fc90e39489d0e7fc03add6dc86f525` |
| 8 | `theorem` | [correlationScaleDerivative_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/correlationscalederivative-zero-above-cutoff.md) | 116 | `result-track:29ba92cc43338c81541c51ab08fdf256d8e15e9508b75d414e9830a7ade46e68` |
| 9 | `def` | [closedPrimeMomentFixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemomentfixed.md) | 127 | `declaration-track:3a7620ede92b28c6eeec474703a08321851ac28656b2e2110c2d685e975829e6` |
| 10 | `def` | [firstPrimeMomentFixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemomentfixed.md) | 131 | `declaration-track:49864e90287c1ef278422d9de66ccb1d63eb13f4a37b0f6035eb8dc612e24551` |
| 11 | `theorem` | [closedPrimeMoment_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemoment-eq-fixed.md) | 135 | `result-track:6581c6251a488dcfb6af146bd3538739c27af0bb08a0e11909aa5e2a2f97c3a9` |
| 12 | `theorem` | [firstPrimeMoment_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemoment-eq-fixed.md) | 152 | `result-track:1fd4d9758901dfd9c24829381aa502f4d70270e02c8e3a20f32df9c7a1e5acd2` |
| 13 | `def` | [localUpperCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/localuppercutoff.md) | 171 | `declaration-track:4b3ab1e8a4c69e7fa79de55836d6f6cee4dbb12ec8ff91066eaa75434338b595` |
| 14 | `theorem` | [closedPrimeMoment_eventually_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemoment-eventually-eq-fixed.md) | 174 | `result-track:fe8db5aab8406a6618b2b6701c7e21c245ddf0e0401968c32315645e87467e7d` |
| 15 | `theorem` | [firstPrimeMoment_eventually_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemoment-eventually-eq-fixed.md) | 181 | `result-track:69205510e595a6f07ed1932d00bcae4aee0a593ed6920e2b42125ee735ce3d0a` |
| 16 | `def` | [closedPrimeWeightScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimeweightscalederivative.md) | 188 | `declaration-track:1c54a0ad6c3feb75d8a71c354c31081bd1befa2a082607d1f60264f0eb0b84a6` |
| 17 | `theorem` | [closedPrimeWeight_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimeweight-hasderivat.md) | 192 | `result-track:e6e08691d98a20c51620a5ad9f299766dce558e4b37214a18b107198babc3f22` |
| 18 | `theorem` | [closedPrimeWeight_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimeweight-contdiffat.md) | 199 | `result-track:ab0c5feb2096a10ea38a5e7755f904a8980ff2c1aa65a4bde633aff1c76e8960` |
| 19 | `theorem` | [closedPrimeWeightScaleDerivative_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimeweightscalederivative-zero-above-cutoff.md) | 206 | `result-track:21da3bca648117d9ac6283d4b71eca075268042bf7db72c32f98a8e4d0aa48d2` |
| 20 | `def` | [closedPrimeMomentScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemomentscalederivative.md) | 212 | `declaration-track:8213bb178930a755283c7b213cef3e970b5106e820b2b96c6ec8308fe92f1aef` |
| 21 | `def` | [firstPrimeMomentScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemomentscalederivative.md) | 216 | `declaration-track:ea81ffb46d00bb479ec52e07e731550c20226230e403f24f725b93e3c243e5e8` |
| 22 | `theorem` | [closedPrimeMomentScaleDerivative_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemomentscalederivative-eq-fixed.md) | 220 | `result-track:d627eeb9b788c2b1e18d84ed36ebe59888f0678fef8cc09d592611dc787a7ce8` |
| 23 | `theorem` | [firstPrimeMomentScaleDerivative_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemomentscalederivative-eq-fixed.md) | 236 | `result-track:7443021cc58bb69dadaaf7a6b22faf0c1027d7d1789d3df620e05fc5b0b03c6a` |
| 24 | `theorem` | [closedPrimeMomentFixed_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemomentfixed-hasderivat.md) | 257 | `result-track:7166c9c9d4431233bc959689d4296c7e37efb5585fc47c9e02e7fdea32a5e892` |
| 25 | `theorem` | [firstPrimeMomentFixed_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemomentfixed-hasderivat.md) | 264 | `result-track:44e86ccce19276fe5d4fee3420b1a2a814cef65d6cdbaf3946793fd20fe52ff7` |
| 26 | `theorem` | [closedPrimeMomentFixed_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemomentfixed-contdiffat.md) | 272 | `result-track:623ea52aa1d45c960b6f5c45eabc144dbd44045a6c732cdacc627884d18f33cd` |
| 27 | `theorem` | [firstPrimeMomentFixed_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemomentfixed-contdiffat.md) | 278 | `result-track:24c65657309a6b532dcdf04cce747913f7d2237d9075e4cb18bac04d7d0c844b` |
| 28 | `theorem` | [closedPrimeMoment_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemoment-hasderivat.md) | 284 | `result-track:95274c2db23ebc49b076fde402488a8181fcb5b9a207f2edaee8a5587122a0a4` |
| 29 | `theorem` | [firstPrimeMoment_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemoment-hasderivat.md) | 293 | `result-track:c9730d2739c43f1d441c03159c19709956104495b7185b8f371ac79bd44df2a1` |
| 30 | `theorem` | [closedPrimeMoment_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemoment-contdiffat.md) | 302 | `result-track:549bd434a5c9a78051a5868f2415aac5c05ca5d51bf5e100d116dfe25a6e3d6d` |
| 31 | `theorem` | [firstPrimeMoment_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemoment-contdiffat.md) | 308 | `result-track:d90c31e0f0e79178c5c8347522372acb965eca44251ccd11dd434d2d4795dd84` |
| 32 | `theorem` | [closedPrimeMoment_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/closedprimemoment-contdiffon.md) | 314 | `result-track:c6ec990883f7999cf2dd6b877c20dd268474fe77a23806c89abe7c432f202278` |
| 33 | `theorem` | [firstPrimeMoment_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/firstprimemoment-contdiffon.md) | 318 | `result-track:9899ba4da89b5ab1b96fcc5139c7ab11135533e71c1992ad10d99bb184189cd5` |
| 34 | `theorem` | [mertensResidual_eventually_eq_closedPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/mertensresidual-eventually-eq-closedprimemoment.md) | 322 | `result-track:9be0beeb158f69dec6f4a565a434c1580e62c48a2be2b4e7211b440047703526` |
| 35 | `theorem` | [mertensResidual_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/mertensresidual-hasderivat.md) | 328 | `result-track:40f68e2820b7cc691aa557c60856ebe2ad908b1da9f94104d9135be7cec9f2d3` |
| 36 | `theorem` | [mertensResidual_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/mertensresidual-contdiffat.md) | 334 | `result-track:535cbdf60e37e5f0435ba352c2bfc151624cf2dae1b5e6e3a9732efbdf89475b` |
| 37 | `theorem` | [mertensResidual_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/CalculusV1PrebytesSourceCorrelationEqInner.lean/declarations/mertensresidual-contdiffon.md) | 340 | `result-track:f89606f209a44156d2fa1f2f6afe74cd56f4b88505aae16e3f9860ce5607918f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb9e9e760f01d0b6501c7c19b6c84c27c449e19f8f452d288c537b517c621d15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant2698ccdf88c182684457cea249f90471d48c8ed94450fb233f8a41aa531cb987.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
