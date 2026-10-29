# Verification target: Weil Arithmetic Transport Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbab4d18376de9f146d4c015367b2b1518be8d8d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbab4d18376de9f146d4c015367b2b1518be8d8d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean.json)

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
| 1 | `def` | [realKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/realkernel.md) | 37 | `declaration-track:cf331f437d878834582bdadc5c96c5817f3d7dc0ffa4e0c4fdd454176d47de74` |
| 2 | `theorem` | [smoothKernel_eq_realKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/smoothkernel-eq-realkernel.md) | 40 | `result-track:a59d7f056bebfa6c5e3cfaa37f8d4a1344259363148798f343de154f83a4b6b9` |
| 3 | `theorem` | [realKernel_eq_convolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/realkernel-eq-convolution.md) | 43 | `result-track:b3e08f577f02007a236051f70840d80d76ba9bb3b199906c9f7aeb511a6ab29c` |
| 4 | `theorem` | [realKernel_even](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/realkernel-even.md) | 54 | `result-track:7b900a3324b97485216785b2cf84c53dd785cf4c5adf2e3beb68d041f21f88af` |
| 5 | `theorem` | [smoothKernel_even](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/smoothkernel-even.md) | 62 | `result-track:e687150b922085a35002768d9cf833eafd4573b6066e9ecc84240542d5452ee9` |
| 6 | `theorem` | [smoothed_support_open](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/smoothed-support-open.md) | 67 | `result-track:f8863490d47d756a5409be2b3ffb2b708bff1fa021ead25b5637f57320ee1b49` |
| 7 | `theorem` | [realKernel_support_open](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/realkernel-support-open.md) | 77 | `result-track:206cdc1ae4ab771d029870671505b56ae01ab1ce90501f5518aaf8570da84374` |
| 8 | `theorem` | [smoothKernel_support_open](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/smoothkernel-support-open.md) | 89 | `result-track:9ea614085679212c502a6581986fc58c6a23025072f17a08aea6858655937720` |
| 9 | `def` | [primeIndices](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/primeindices.md) | 98 | `declaration-track:fca3c6da09634ba1532a055afdb9038c7c1e8bb927528f38854ac33cd15be033` |
| 10 | `theorem` | [mem_primeIndices_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/mem-primeindices-iff.md) | 102 | `result-track:181e37fb99fcec2fe799698a978a42b1ed652c44787be0aec340abecc5febea8` |
| 11 | `def` | [primeSummand](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/primesummand.md) | 108 | `declaration-track:6e19a18ce60b437dd95dac7d9d0ffe5b4be85ae40b79916a60e2de156c0c6126` |
| 12 | `theorem` | [primeSummand_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/primesummand-zero.md) | 112 | `result-track:1420fab9aa7fa53fa36cfbf3db5705af00211501febeab34594040239bdeb37f` |
| 13 | `theorem` | [prime_sum_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/prime-sum-eq.md) | 134 | `result-track:fedc6e39f59c9a43a223d8d1816d8bc7aeb78786bd7f8aa16c0d9cac96d6b2a1` |
| 14 | `theorem` | [source_fourier_conj](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/source-fourier-conj.md) | 154 | `result-track:337a0ae3d8affdf023a49031459b488c3ec43001548234ec9be2f3357fb532ec` |
| 15 | `theorem` | [paperFT_kernel_real](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/paperft-kernel-real.md) | 169 | `result-track:21e0a4d0fa522e2a93deac2969bf7f4aa7796b9ecf446e3a1f51f75cdacb9a2c` |
| 16 | `theorem` | [smoothed_archimedean_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/smoothed-archimedean-integrable.md) | 179 | `result-track:770879aec45d9763504145686039265907172d1ae0f9a81b94072d1f81da7dc6` |
| 17 | `theorem` | [gamma_integrand_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/gamma-integrand-eq.md) | 212 | `result-track:6ea3198c30718b61d84e05cd0ee9b4d5aa277ba43abfef62b18e4e8741b98750` |
| 18 | `theorem` | [gamma_integrand_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/gamma-integrand-integrable.md) | 224 | `result-track:7f0369314d57f371a74f66c2d38b00008c1d9f82d361419b07d9e3925b79ab18` |
| 19 | `theorem` | [gamma_integral_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/gamma-integral-eq.md) | 232 | `result-track:49799b524d76ef9c4ea684514c04707dedc804ebb1edc37547893032744368f1` |
| 20 | `theorem` | [positive_real_moment_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/positive-real-moment-zero.md) | 242 | `result-track:2c695f02da310847dd0abdaed6bcfc30a25415ebabc3b09d2888a8358161bc3d` |
| 21 | `theorem` | [real_pole_contribution_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/real-pole-contribution-zero.md) | 259 | `result-track:98f28aabe9c8c4227e19748585e0e591781e5c83cd1b7ab4fbf2cb8e169eadf2` |
| 22 | `theorem` | [kernel_pole_values](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/kernel-pole-values.md) | 265 | `result-track:b027dbfa66db97e83f5ce74de83212ecf1cc66cd78270ae4f3f43deda9dedf44` |
| 23 | `theorem` | [literatureRHS_eq_arithmetic](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/literaturerhs-eq-arithmetic.md) | 285 | `result-track:8712d6c04ab036ef87dad2f3c9ad54a5a54491c5cb2fc52a5f11c90b89cea8e2` |
| 24 | `theorem` | [kernel_point_formula](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/kernel-point-formula.md) | 300 | `result-track:57e122c726f0ba4ef55584a6684bf07944088fa25ef213c4c347efc56d165b41` |
| 25 | `theorem` | [smooth_explicit_formula](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/WeilArithmeticTransportEdition1.lean/declarations/smooth-explicit-formula.md) | 308 | `result-track:0e249a9e1034d9fdaed02c2e838e9b94404e851bee83438844967f5c74befb98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b92e921e6583145dc787a09622a684a58e2e11831f69385e7448ccc2c6f82578 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/WeilArithmeticTransport/Variant71588d7efd5c285cf78e790f26d507eab6241eac097414725b9cc32b4972a493.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
