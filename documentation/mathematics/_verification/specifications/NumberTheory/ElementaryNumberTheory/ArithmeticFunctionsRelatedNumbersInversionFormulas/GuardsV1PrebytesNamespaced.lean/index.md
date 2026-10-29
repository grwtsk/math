# Verification target: Guards V1 Prebytes Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79f0be00b25a254819f0407e167a3b7a95f2249d",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variant263b6322ef6b7150a86cdfb76f2ca00838fb631bdbb2fa2e05bde67a1e29ba4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79f0be00b25a254819f0407e167a3b7a95f2249d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variant263b6322ef6b7150a86cdfb76f2ca00838fb631bdbb2fa2e05bde67a1e29ba4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variant263b6322ef6b7150a86cdfb76f2ca00838fb631bdbb2fa2e05bde67a1e29ba4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimePowerPartition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_eq_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/sourcecorrelation-eq-inner.md) | 34 | `result-track:d42eb52201f368244ed256d980f19d495d22f22a6296deca7be21be2e589aff0` |
| 2 | `def` | [correlationScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/correlationscalederivative.md) | 58 | `declaration-track:66e281e01e63c60b8a6ff0d55f82ddd936fc7cd812d3fc6bf7110c494d7c264d` |
| 3 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/sourcecorrelation-hasderivat-scale.md) | 63 | `result-track:90a8b6186592b16f7698715546907952a7052781ff5da8643a14e11234212f26` |
| 4 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/sourcecorrelation-contdiffat-scale.md) | 81 | `result-track:e77b727c11d6712e31de188bdae899b6e26c708066688bcc868367e758f20863` |
| 5 | `theorem` | [sourceCorrelation_contDiffOn_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/sourcecorrelation-contdiffon-scale.md) | 93 | `result-track:4ba7abbfc4e7d3a98f501da037fafe6835546adf4bb91a91716d237c532b1608` |
| 6 | `theorem` | [closedPrimeWeight_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimeweight-zero-above-cutoff.md) | 98 | `result-track:46147f9ae0922da44790493fe2fcad44b1344a414ac336663ee05311df5d2658` |
| 7 | `theorem` | [correlationScaleDerivative_zero_of_lt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/correlationscalederivative-zero-of-lt.md) | 112 | `result-track:8230e0fa24dc8c555b7a019e3b3544a364a5525f2cf0a789e91bf773cfdebddd` |
| 8 | `theorem` | [correlationScaleDerivative_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/correlationscalederivative-zero-above-cutoff.md) | 124 | `result-track:d6a66fbb046f9bcba1ed85c1f96e8ee3cb619a54847f2eb2b1c152f6e203d36e` |
| 9 | `def` | [closedPrimeMomentFixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemomentfixed.md) | 135 | `declaration-track:09d5ecde35d74fee7e1e00d46d3c5cc8710346d37d8945dbf5eba811c97d4c94` |
| 10 | `def` | [firstPrimeMomentFixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemomentfixed.md) | 139 | `declaration-track:7aa789f33569774fce0ab95fd4b71e61fc8774953080d9074ebe65b63586968d` |
| 11 | `theorem` | [closedPrimeMoment_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemoment-eq-fixed.md) | 143 | `result-track:665d181c2bcb477e95c2ef4fad9b9997685ebd7686cea35e6d45b6446b160b02` |
| 12 | `theorem` | [firstPrimeMoment_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemoment-eq-fixed.md) | 160 | `result-track:08f1ae8b414910680a16c59031a9b9078c978bb8d5ae617a0ea0dd3756d6ba6e` |
| 13 | `def` | [localUpperCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/localuppercutoff.md) | 179 | `declaration-track:9cfa64cf4821f7ef45080af5960f28a5d8b3ac906da8c49e806d1fa7b048fafd` |
| 14 | `theorem` | [closedPrimeMoment_eventually_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemoment-eventually-eq-fixed.md) | 182 | `result-track:222f62b4beeb9a353a631814eb6b8f6ad7f7a5cac18ba520d116c6df3645e49c` |
| 15 | `theorem` | [firstPrimeMoment_eventually_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemoment-eventually-eq-fixed.md) | 189 | `result-track:d9b07f0479c0f4354ec9a5a0cbe22adb32ca3fa60a816f4d231522d8e95f2050` |
| 16 | `def` | [closedPrimeWeightScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimeweightscalederivative.md) | 196 | `declaration-track:49425735a937b18bf7e2905be615a534a7c9b4eba9e2c3552d6926a73e249f6a` |
| 17 | `theorem` | [closedPrimeWeight_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimeweight-hasderivat.md) | 200 | `result-track:4be8d29e5ad12a6e5cf26099f199ce1cbe80d4d41f9d40cc6a5564b7b3242a38` |
| 18 | `theorem` | [closedPrimeWeight_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimeweight-contdiffat.md) | 207 | `result-track:a20d0d05ec15475b41359653116e0eba6a56c428bcca8a9045de145f28380563` |
| 19 | `theorem` | [closedPrimeWeightScaleDerivative_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimeweightscalederivative-zero-above-cutoff.md) | 215 | `result-track:f11a7378bb586c589b476f108ac51572dbd98d5e8f184160c9f7189abe789856` |
| 20 | `def` | [closedPrimeMomentScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemomentscalederivative.md) | 221 | `declaration-track:be09f8f41d0ce5fd556a139fdc53657d8e2065a4bf871d53ed52c29dd5179c81` |
| 21 | `def` | [firstPrimeMomentScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemomentscalederivative.md) | 225 | `declaration-track:70e622ebedb84a14d99a23af120a9b2bb5a7f3b32a163cd47a82da9acb5b347b` |
| 22 | `theorem` | [closedPrimeMomentScaleDerivative_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemomentscalederivative-eq-fixed.md) | 229 | `result-track:adfb02f8de1925fb8a643a866b68bb3e10fcfbbbfed2314a3db7434a85d67f43` |
| 23 | `theorem` | [firstPrimeMomentScaleDerivative_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemomentscalederivative-eq-fixed.md) | 245 | `result-track:2a50525d76e4eff83fec43f0ea7f2458f5ffbb14ec9380fa59fa505f2fc5926c` |
| 24 | `theorem` | [closedPrimeMomentFixed_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemomentfixed-hasderivat.md) | 266 | `result-track:3b689341f5e3cda9f888197b6d4e2230a6d12464215cc1a6e91462b2d08d4719` |
| 25 | `theorem` | [firstPrimeMomentFixed_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemomentfixed-hasderivat.md) | 273 | `result-track:b147ca4ef2c6b25a7e014c8f8de2ef940e0d1dbeedf4a465cb964f5330029bbd` |
| 26 | `theorem` | [closedPrimeMomentFixed_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemomentfixed-contdiffat.md) | 281 | `result-track:d2fd4e2a5b96cb57ad8259b37ca8b24e7cd9c2c48dfbce84146808538d337d35` |
| 27 | `theorem` | [firstPrimeMomentFixed_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemomentfixed-contdiffat.md) | 287 | `result-track:815c2c180e6261d59af910e9e41e1f9fd2202d4602b2fb0fd2132857872e855e` |
| 28 | `theorem` | [closedPrimeMoment_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemoment-hasderivat.md) | 293 | `result-track:36b6301e4b8d167acb1e7dfb36025b2c5f208059aaed37962d91b6dc724a1001` |
| 29 | `theorem` | [firstPrimeMoment_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemoment-hasderivat.md) | 302 | `result-track:e9f2bb01cf628219a6d497a11ae25e7737d83661398522a465ecc90a7eed73e8` |
| 30 | `theorem` | [closedPrimeMoment_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemoment-contdiffat.md) | 311 | `result-track:5183847301bc40830fa04542d950c5b53677912b152ed04179d15a68298f3019` |
| 31 | `theorem` | [firstPrimeMoment_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemoment-contdiffat.md) | 317 | `result-track:3050fbb7c4db70e1eeb8103e43bc6dc3088bdfccdd677d5559fd6b09ac1f5f60` |
| 32 | `theorem` | [closedPrimeMoment_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemoment-contdiffon.md) | 323 | `result-track:df0f8566fc4b9f0238052a9f22d3a700b39b25059aea853cbe2e09e0a0e6ab06` |
| 33 | `theorem` | [firstPrimeMoment_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemoment-contdiffon.md) | 327 | `result-track:6c482d76762b3df9c6f59ace273a28715245544cebf4405c7fe5fb3313cefc4a` |
| 34 | `theorem` | [mertensResidual_eventually_eq_closedPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/mertensresidual-eventually-eq-closedprimemoment.md) | 331 | `result-track:72f4ebba32ad38dc05d13a76cd37c6396c08fd9ffbdcc2bbf5d1b38afc6ec453` |
| 35 | `theorem` | [mertensResidual_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/mertensresidual-hasderivat.md) | 337 | `result-track:021059ad4f7499e9a64322caa5b4251279e4628296ab4ba7ea198a6bf7578f5f` |
| 36 | `theorem` | [mertensResidual_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/mertensresidual-contdiffat.md) | 343 | `result-track:fce908dafbab86a38edaddf8cb20cbd80dfcf1175ff6933ebbff903446be8668` |
| 37 | `theorem` | [mertensResidual_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/mertensresidual-contdiffon.md) | 349 | `result-track:371eb994ecd2e910f326e4eb376442c2279def38f1d34e803b1f1cea514ed22d` |
| 38 | `theorem` | [correlationScaleDerivative_zero_of_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/correlationscalederivative-zero-of-le.md) | 353 | `result-track:616a749f4fc5525316f64c967be7d3ef70034c43b3eb8aaf3ef7869d835b3888` |
| 39 | `theorem` | [closedPrimeWeight_zero_at_birth](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimeweight-zero-at-birth.md) | 367 | `result-track:9efb03c6c8c25647286917dc3a17f0e83815263db8741819025a21495ae3af0a` |
| 40 | `theorem` | [closedPrimeWeightScaleDerivative_zero_at_birth](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimeweightscalederivative-zero-at-birth.md) | 375 | `result-track:1f589a53f63fe1444be09c7044ed07e436866a2ed17db7da175230386421a244` |
| 41 | `theorem` | [closedPrimeMoment_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemoment-deriv.md) | 383 | `result-track:6aa36e56640a871346c50c3a2e3f0e2e5217b27e0ddc8060e212f0dcbc4fff89` |
| 42 | `theorem` | [firstPrimeMoment_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemoment-deriv.md) | 388 | `result-track:f368d8f0f9822571b32957968f49ffb3548d1159c464c6601ced0ae8efcf1ae4` |
| 43 | `theorem` | [closedPrimeMomentScaleDerivative_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/closedprimemomentscalederivative-continuouson.md) | 393 | `result-track:1725555f63b87204019e5e7d2e4fa80386ded954556430fffb67fd1c748f9fca` |
| 44 | `theorem` | [firstPrimeMomentScaleDerivative_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/firstprimemomentscalederivative-continuouson.md) | 400 | `result-track:c981e95e2b29b199d51cf24242bf23406c15d53273be410c3109c5e618c8a4cb` |
| 45 | `theorem` | [mertensResidual_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1PrebytesNamespaced.lean/declarations/mertensresidual-deriv.md) | 407 | `result-track:19ccff94ca2092a2ad8947ebf6936c2c466d14479023dea547e16d669da0b78f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b6c7883457239ea737d36de4da50d8d1014f8fdc7bd2b1d79edb610c22835de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variant263b6322ef6b7150a86cdfb76f2ca00838fb631bdbb2fa2e05bde67a1e29ba4d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variant263b6322ef6b7150a86cdfb76f2ca00838fb631bdbb2fa2e05bde67a1e29ba4d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
