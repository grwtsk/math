# Verification target: Weil Arithmetic Transport Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "460ca494088df4b27c60cc992e636e2ab4e0c6d8",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `460ca494088df4b27c60cc992e636e2ab4e0c6d8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/realkernel.md) | 38 | `declaration-track:7566e5ecbaed5a26ea031ecf8d8b152ab12bbad372de69566dd351709c86cb2e` |
| 2 | `theorem` | [smoothKernel_eq_realKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/smoothkernel-eq-realkernel.md) | 41 | `result-track:67ef8785c8197810ee2513f892f415e17f53faf6fa0ac49231cf79f5dff00a26` |
| 3 | `theorem` | [realKernel_eq_convolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/realkernel-eq-convolution.md) | 44 | `result-track:2c7fd3d1882fd79de9f46ea408455f4e24f592fae13befc58fe77b128e029076` |
| 4 | `theorem` | [realKernel_even](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/realkernel-even.md) | 56 | `result-track:dcd71e224b3d5e9fc6df4c8ecf46abce11f5e3f07cc195affe368e911ffe3fbf` |
| 5 | `theorem` | [smoothKernel_even](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/smoothkernel-even.md) | 64 | `result-track:b960c8dd9945c1bb88004d20bca5c4fc87e3de6e9132a3fb9f54b90ebb8d4e9d` |
| 6 | `theorem` | [smoothed_support_open](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/smoothed-support-open.md) | 69 | `result-track:d3770cae5324b791ef46f1ee154094a4d7d489dce154c9e0226739c387f054d7` |
| 7 | `theorem` | [realKernel_support_open](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/realkernel-support-open.md) | 79 | `result-track:1ecdccb7d1f0571446fbfa3e33aba60545eca00adbf32e39c510043a39100a16` |
| 8 | `theorem` | [smoothKernel_support_open](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/smoothkernel-support-open.md) | 91 | `result-track:f1ec39225a5ce91fe7295d301bbc9617beb18534e82bab41c1f85498a74be37b` |
| 9 | `def` | [primeIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/primeindices.md) | 100 | `declaration-track:e9c6bd4367cfdbdba37e1ace00b0af9d3bf14807fc7b0d95ca2fd886e6d045fa` |
| 10 | `theorem` | [mem_primeIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/mem-primeindices-iff.md) | 104 | `result-track:6154ec61d7ffb3e1f4205393a4b26dfcdb04946fd704fafc981e58a0e025eb29` |
| 11 | `def` | [primeSummand](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/primesummand.md) | 110 | `declaration-track:d04955e9efa248c28dfe85632d22e1b3c9cec6dca4728c6a771b8f5c86a82a27` |
| 12 | `theorem` | [primeSummand_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/primesummand-zero.md) | 114 | `result-track:5e81084605b1bfe40b7581142523e66a5680739b90b1ec3e296ea7000557763f` |
| 13 | `theorem` | [prime_sum_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/prime-sum-eq.md) | 136 | `result-track:fc5715cf60d1a7075753934ab8556e0f9a50bae5959dbc3d94360247e208728e` |
| 14 | `theorem` | [source_fourier_conj](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/source-fourier-conj.md) | 156 | `result-track:0ee60995e5d9abd6ac85dd612b1424e66110ed2ae77815f910524d86d4109719` |
| 15 | `theorem` | [paperFT_kernel_real](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/paperft-kernel-real.md) | 171 | `result-track:6ae50a64713427d4a3fc56113d8f5df4d746fc659fe6750411c132b3c3bcc6f7` |
| 16 | `theorem` | [smoothed_archimedean_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/smoothed-archimedean-integrable.md) | 181 | `result-track:20ca98ebf942669a00de71e3563a37c5d75c7f272ddc5fbcc6a9eb8bf036a2da` |
| 17 | `theorem` | [gamma_integrand_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/gamma-integrand-eq.md) | 214 | `result-track:1533e3424a3f50a4e5ad00eb7be6c717266837fd67c48b2714fb90b14620843a` |
| 18 | `theorem` | [gamma_integrand_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/gamma-integrand-integrable.md) | 226 | `result-track:1fea69f134b5318b67b9a6becbe0747e9fe4c1b30134f90478c6fff3c1f77220` |
| 19 | `theorem` | [gamma_integral_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/gamma-integral-eq.md) | 234 | `result-track:9ed23acc06861e8d3f2e22f0bfe9520ad2cbd3dcc10bb034bedeef566c65c923` |
| 20 | `theorem` | [positive_real_moment_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/positive-real-moment-zero.md) | 244 | `result-track:699f8ce961c78bc1ad1f9ad7b074aacbcf88d457d5c03bd09bea0a15f943eaf0` |
| 21 | `theorem` | [real_pole_contribution_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/real-pole-contribution-zero.md) | 261 | `result-track:bad686742496a3ac49f502e8182600f91aa9af5d842be7ff3f363f1421eff1cb` |
| 22 | `theorem` | [kernel_pole_values](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/kernel-pole-values.md) | 267 | `result-track:837321e339bf9e7df436c7bea21bf73879c46faa81f4f30e46232ba45077bd7f` |
| 23 | `theorem` | [literatureRHS_eq_arithmetic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/literaturerhs-eq-arithmetic.md) | 287 | `result-track:9a55fafa695076fb840d89e1693940f2244a1ec19f98dc45913394f24d208b07` |
| 24 | `theorem` | [kernel_point_formula](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/kernel-point-formula.md) | 302 | `result-track:f443d0beb696495df8cf719a85af854771776c8f864b68808b7be370f639de8f` |
| 25 | `theorem` | [smooth_explicit_formula](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition2.lean/declarations/smooth-explicit-formula.md) | 310 | `result-track:b7c95db42bab688b4ccc657c490f11518173bf243d3c16e141481ea946e1019c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18812c07094e568fa722ecb274de136d617fef9082aa3da6dfdf4a9d158724db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variantb2a6d3e8d991a97b85aac68db79a027469f6c582e006c0cfa6fe3cfa7e5ab18b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
