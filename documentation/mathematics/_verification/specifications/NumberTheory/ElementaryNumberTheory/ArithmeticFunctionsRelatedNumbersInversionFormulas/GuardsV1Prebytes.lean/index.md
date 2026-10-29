# Verification target: Guards V1 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c43ebc6d49ce2c5d87d38bfedab0493fe9ad89fe",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c43ebc6d49ce2c5d87d38bfedab0493fe9ad89fe`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean.json)

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
| 1 | `theorem` | [sourceCorrelation_eq_inner](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/sourcecorrelation-eq-inner.md) | 26 | `result-track:18c6931f0c6ac3d46db6c9f2662d920fcda981fe467d6b5dac18827606a6deaf` |
| 2 | `def` | [correlationScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/correlationscalederivative.md) | 50 | `declaration-track:2969891c9659256b26ef2f225d744cfd4e25822cf93dff27f83c0de126633525` |
| 3 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/sourcecorrelation-hasderivat-scale.md) | 55 | `result-track:66ffab0592386a332adbdb6c02b73cd02c6708582f9d73c3160d0da40813d976` |
| 4 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/sourcecorrelation-contdiffat-scale.md) | 73 | `result-track:10b2ab0a8d5cfe513caa9c904315d04f89e4b338dd93dc5a581ce9eaf7bee018` |
| 5 | `theorem` | [sourceCorrelation_contDiffOn_scale](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/sourcecorrelation-contdiffon-scale.md) | 85 | `result-track:95be1f7f262e10b5c34ac571335b37e90946dac0a40c515af4d3a4bf5f0acc26` |
| 6 | `theorem` | [closedPrimeWeight_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimeweight-zero-above-cutoff.md) | 90 | `result-track:b9edee036b3a8674481154903566f850838067a7f50931d856b0e4920bb7c049` |
| 7 | `theorem` | [correlationScaleDerivative_zero_of_lt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/correlationscalederivative-zero-of-lt.md) | 104 | `result-track:a7f743c909b4ed822ef462249ef821d08f4202c693f02b95da4b26344f173313` |
| 8 | `theorem` | [correlationScaleDerivative_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/correlationscalederivative-zero-above-cutoff.md) | 116 | `result-track:cfa0a0c715b609989bdbdfd60c1fce7a52be1562237bb50bff4655d48833ed24` |
| 9 | `def` | [closedPrimeMomentFixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemomentfixed.md) | 127 | `declaration-track:f5b6a47375330638da5d2e1dd192c0a08342ba0a9bb62d8b76675a8d7ca2a922` |
| 10 | `def` | [firstPrimeMomentFixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemomentfixed.md) | 131 | `declaration-track:1ac5bd751d61bb3a22d6d9e36e43f5f88c707dc17834e786fe7d6e19cc1d43da` |
| 11 | `theorem` | [closedPrimeMoment_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemoment-eq-fixed.md) | 135 | `result-track:20660eefd4ac4878ff0e37f281ffaa24a4d39e5ade6b3803246130a4e013b04e` |
| 12 | `theorem` | [firstPrimeMoment_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemoment-eq-fixed.md) | 152 | `result-track:d88be393490cfbe949bc919fb5d1a46aee96a4ed51c71729dc80b73c00e55a0a` |
| 13 | `def` | [localUpperCutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/localuppercutoff.md) | 171 | `declaration-track:e633b5571a67708ade144c77e9d84034ce67d9fdb5862f09be7b8d06012a8918` |
| 14 | `theorem` | [closedPrimeMoment_eventually_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemoment-eventually-eq-fixed.md) | 174 | `result-track:f7a31316b441fe7fb8d57a7580bd2c5e2198f997a60788f8db4245a9462b6f4f` |
| 15 | `theorem` | [firstPrimeMoment_eventually_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemoment-eventually-eq-fixed.md) | 181 | `result-track:e5d39febab789ce4e11897365325b750ad3a59dc5f71fa7531297e6c188f9011` |
| 16 | `def` | [closedPrimeWeightScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimeweightscalederivative.md) | 188 | `declaration-track:575f0663d7b5867b3d745113eb5a09ffa83f73286a98c7a1ab69ae6530c003ce` |
| 17 | `theorem` | [closedPrimeWeight_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimeweight-hasderivat.md) | 192 | `result-track:954b127b305557d27e18a63f47264794f15b6a9724d7f07beff089d3a9e047ff` |
| 18 | `theorem` | [closedPrimeWeight_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimeweight-contdiffat.md) | 199 | `result-track:03f69dd48c302ddcbd68cb4702c766aeeac3bb475f7d53f59a1e6b2a8aacc952` |
| 19 | `theorem` | [closedPrimeWeightScaleDerivative_zero_above_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimeweightscalederivative-zero-above-cutoff.md) | 207 | `result-track:f57273b9d6840be53fbdb0bf18b6d78f7925be2085da94b8707e05d4a8a52d54` |
| 20 | `def` | [closedPrimeMomentScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemomentscalederivative.md) | 213 | `declaration-track:8e8aa6b539ea1b94f1b6b9fc3564f09af71953e0cc1d1213d1657c261630f61c` |
| 21 | `def` | [firstPrimeMomentScaleDerivative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemomentscalederivative.md) | 217 | `declaration-track:9e9c0552cd8e17b53eef1855ed24faaedbdcb093246c389d62611e65b1576e35` |
| 22 | `theorem` | [closedPrimeMomentScaleDerivative_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemomentscalederivative-eq-fixed.md) | 221 | `result-track:9ede89ec69446d08f5ae3415d01bed97d61c35bfaa46d57fec500014fce63126` |
| 23 | `theorem` | [firstPrimeMomentScaleDerivative_eq_fixed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemomentscalederivative-eq-fixed.md) | 237 | `result-track:07047ea0cd1b316e0080b42bf39ae83f71f437157c6a1bce289d849ac7756044` |
| 24 | `theorem` | [closedPrimeMomentFixed_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemomentfixed-hasderivat.md) | 258 | `result-track:0232bde98186b769ff5f32b2134a5b5042b893848218b7f54b0ec7b81004834a` |
| 25 | `theorem` | [firstPrimeMomentFixed_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemomentfixed-hasderivat.md) | 265 | `result-track:bd342960eb9fa428fa06ae245dab95f704a7fb4e2f0dd3c7134744edfaa826b7` |
| 26 | `theorem` | [closedPrimeMomentFixed_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemomentfixed-contdiffat.md) | 273 | `result-track:279b87bd98c8be811388c32fc7e7c7447cc8473a9ba3956ca6f9cd8d2230c970` |
| 27 | `theorem` | [firstPrimeMomentFixed_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemomentfixed-contdiffat.md) | 279 | `result-track:99caa82b54ff9eb006f77e0510cd1f95543a2b1556c100a4a45ef25bd7f6adaf` |
| 28 | `theorem` | [closedPrimeMoment_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemoment-hasderivat.md) | 285 | `result-track:32edf3348c2732c5fc4fdeffd5495ebabcbc5d32c513d32dd78c571874bfd0ea` |
| 29 | `theorem` | [firstPrimeMoment_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemoment-hasderivat.md) | 294 | `result-track:9bb6564ec6a31ea616ac43515f09a65735ae700f4abb909ab8051a39c60ff748` |
| 30 | `theorem` | [closedPrimeMoment_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemoment-contdiffat.md) | 303 | `result-track:1080fd133daa15d0462b30bee22cf47af61bea5d378a8a641007da3f78958071` |
| 31 | `theorem` | [firstPrimeMoment_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemoment-contdiffat.md) | 309 | `result-track:a39ca73fe08d9a36e6032db94ce8d847d8303b110aecc1758ed8b47906b1ebf4` |
| 32 | `theorem` | [closedPrimeMoment_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemoment-contdiffon.md) | 315 | `result-track:35ed26aaf7a01ce703e79681f30d66844610da39dbf010c4d9f342858c0c3772` |
| 33 | `theorem` | [firstPrimeMoment_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemoment-contdiffon.md) | 319 | `result-track:bb8e0fde71622e289286f17e53a3bda9d64ca6bfd82eff30ace4892695127d3f` |
| 34 | `theorem` | [mertensResidual_eventually_eq_closedPrimeMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/mertensresidual-eventually-eq-closedprimemoment.md) | 323 | `result-track:45151fe67bcff095628835758dcf86f63500adaa98f989e4b0fb785d234c7586` |
| 35 | `theorem` | [mertensResidual_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/mertensresidual-hasderivat.md) | 329 | `result-track:e3cc8803e4b3bb3236a15eadfd7f61e0c1be5de9cd2bdfebd693c07d1f636d7a` |
| 36 | `theorem` | [mertensResidual_contDiffAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/mertensresidual-contdiffat.md) | 335 | `result-track:2a32e9ce14e4e8905571ec4cbf159b0bfc37cf5b76dc25c140d4af04dc21c1f2` |
| 37 | `theorem` | [mertensResidual_contDiffOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/mertensresidual-contdiffon.md) | 341 | `result-track:137190bfd57948f81c0dd89d4573a21f5a3dd07bec777b647f89f68ae106009d` |
| 38 | `theorem` | [correlationScaleDerivative_zero_of_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/correlationscalederivative-zero-of-le.md) | 345 | `result-track:94690e5b6290d5549b8c144d731b685206028fb4095ce5f1c94aa880bf74c284` |
| 39 | `theorem` | [closedPrimeWeight_zero_at_birth](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimeweight-zero-at-birth.md) | 359 | `result-track:dbdf1da6ecb84ae619e03d4d0264d64d8ae7b1c3551479ccd5198bdc0400aa9c` |
| 40 | `theorem` | [closedPrimeWeightScaleDerivative_zero_at_birth](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimeweightscalederivative-zero-at-birth.md) | 367 | `result-track:eadeec583d46ee2d6f1a83ecd430230e97eb8fb2318c24086226ead6fba7844e` |
| 41 | `theorem` | [closedPrimeMoment_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemoment-deriv.md) | 375 | `result-track:021f3510bd8e52cb17f5232d291c86914ace6f484f743062bfdbc3521930a658` |
| 42 | `theorem` | [firstPrimeMoment_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemoment-deriv.md) | 380 | `result-track:5d4e02bc6e37923956dba5c92d42b609f9133059f4808322af728a7d9cda794a` |
| 43 | `theorem` | [closedPrimeMomentScaleDerivative_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/closedprimemomentscalederivative-continuouson.md) | 385 | `result-track:25177af5c9275f58865dc5a6992d2c942e68463fc90ecd44c899b099fb4303e1` |
| 44 | `theorem` | [firstPrimeMomentScaleDerivative_continuousOn](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/firstprimemomentscalederivative-continuouson.md) | 392 | `result-track:473f2ec36c51d78c574464e3437b29d3608192c0f6696d585c99523bc2d77fdb` |
| 45 | `theorem` | [mertensResidual_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/GuardsV1Prebytes.lean/declarations/mertensresidual-deriv.md) | 399 | `result-track:0d6cacc28a9729e39d12f06f05b7d63ac72d9185fe945d6678a1b46a26073840` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=691974a3654174e4103f1f88b01bf77a72c178c3c32aa71ad61a3b209bf7b39a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/GuardsV1Prebytes/Variantfb39083149496385de55b3d4e0d2e02c0eb09135b5ac9fe273a8d5a2e5736c32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
