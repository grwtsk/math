# Verification target: Selberg Source Transport Statements Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de20f8ead3a0ccddd1d9f995dbf387315aabd11d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de20f8ead3a0ccddd1d9f995dbf387315aabd11d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HigherPowerSource` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pmul_convolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/log-pmul-convolution.md) | 23 | `result-track:7682eada259114b585afe1b43a13a1e0a1c191ab7c285952ecdf24a3940ec2e3` |
| 2 | `theorem` | [log_pmul_zeta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/log-pmul-zeta.md) | 39 | `result-track:aa729402105acdd2b2bce996c0112d997f581fe800d19d3510fef6433f67a0b1` |
| 3 | `theorem` | [selberg_dirichlet_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selberg-dirichlet-identity.md) | 44 | `result-track:3bffcd07864dcee0d89bc6316afc993a348d1bc8e3a62fc00a93f0c0f40b8e33` |
| 4 | `def` | [selbergCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selbergcoefficient.md) | 66 | `declaration-track:b2f80bf5233e24995dc97da46dde18b6847be3c97b8d87b072f11c444a732d5b` |
| 5 | `theorem` | [selberg_coefficient_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selberg-coefficient-identity.md) | 71 | `result-track:727bb4fd6c7a152f472d52723d59f2ebf40a705b5c7479ad5cd9661a80f09149` |
| 6 | `theorem` | [selbergCoefficient_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selbergcoefficient-nonneg.md) | 83 | `result-track:682062a610b1793b7c5ed0cb627b1e21fd941e8c76a32de4165d76c9bc1ab413` |
| 7 | `theorem` | [selbergCoefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selbergcoefficient-zero.md) | 89 | `result-track:a3442a0d9cbd8ad693744510dda201ee43fe3949692b95f4553c0fbf182025e8` |
| 8 | `theorem` | [selbergCoefficient_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selbergcoefficient-one.md) | 93 | `result-track:c9584f4dd81a83ca6cc6502de38b91432ee91e475b1ea633acc6b35282814ff8` |
| 9 | `theorem` | [selberg_antidiagonal_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selberg-antidiagonal-identity.md) | 97 | `result-track:cbb59204d9e7ce68c0cfc805757943ad0e9ba73ca7e043733dae456502a399e7` |
| 10 | `theorem` | [closed_factor_cutoff_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/closed-factor-cutoff-eq.md) | 105 | `result-track:d00f239e8e6b2407b174c79d3f66cf6a2dff9b306ae3fc16b3ea3f8be8f406ce` |
| 11 | `def` | [selbergPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selbergprefix.md) | 120 | `declaration-track:38f556151c13c07883332ea076d9b93a8cf54e92aa7ddff4208aa0282705a210` |
| 12 | `theorem` | [selberg_prefix_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selberg-prefix-identity.md) | 125 | `result-track:dea9abd9142e1bdcda897ab58b0e379152a39274c2ce0ac93aaa8061d5fe1b4a` |
| 13 | `theorem` | [selbergPrefix_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selbergprefix-nonneg.md) | 146 | `result-track:fef2f966b9d21682def98b29b0cb99e672989a38d8eeb6f8f31fa624c70accb3` |
| 14 | `theorem` | [selbergPrefix_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selbergprefix-zero.md) | 151 | `result-track:fbdd2d667843a244531d834e689c05586525bc644b0210a4e24f1f7bbbcb5781` |
| 15 | `theorem` | [selbergPrefix_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selbergprefix-one.md) | 155 | `result-track:64f1f087b03b4087611ce22e880f3c75d9c3eb1bee6a597498ef5dad1bce6308` |
| 16 | `theorem` | [selberg_prefix_expanded](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selberg-prefix-expanded.md) | 159 | `result-track:fcf96113a05c98474cfce38d4a4284a73dc207ff47f70264048649416af6195f` |
| 17 | `def` | [selbergSourceWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/selbergsourceweight.md) | 181 | `declaration-track:5b32966745c987cc2ef1e26890c60c97c83f14ec3e31b49b9ad8a0e5e17f7cb7` |
| 18 | `def` | [mangoldtConvolutionContribution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/mangoldtconvolutioncontribution.md) | 186 | `declaration-track:12f011625e7d6fe5e1b4a729b71a8df6fec3a7edb967752439a65558d3fe4b86` |
| 19 | `theorem` | [weighted_selberg_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/weighted-selberg-identity.md) | 193 | `result-track:fff5cf21980f7ce35f215700d38a5eefd18c2a2c41271aafed274d9a25a0c53d` |
| 20 | `theorem` | [primePowerContribution_eq_selberg_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/primepowercontribution-eq-selberg-difference.md) | 206 | `result-track:0a2b97afbfed287c805c4ccaf19c5d5f4e1805a2818b563861e0c6f3ea3cbcef` |
| 21 | `theorem` | [sourceQuadraticValue_eq_selberg_difference](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/sourcequadraticvalue-eq-selberg-difference.md) | 222 | `result-track:97ade786434d5a052da0afdefc90b1bf3fdf7f735241d00672769b76acc4f5ce` |
| 22 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/example-source-edition-5.md) | 241 | `declaration-track:fe6da129672c9c520d170ecb29912a38eca5a67fd002eb48164cbd812a5d7f1b` |
| 23 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/example-source-edition-3.md) | 246 | `declaration-track:df3110a7b08d6b02fbe9dbb6115c6596b17bee76f7a174c77fde4a4c2a0cf081` |
| 24 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/example-source-edition-4.md) | 253 | `declaration-track:f4dab61e9ddd99cf5f91c5566fb2dd5740c72db33129f48888adc31e22a443ff` |
| 25 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/example.md) | 262 | `declaration-track:203220a2888e6f081bc81195044b440d8ee2784771b48094cf7c1cf18bf84a30` |
| 26 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergSourceTransportStatementsNamespaced.lean/declarations/example-source-edition-2.md) | 268 | `declaration-track:3aecee882b6828aac1b947755cc23d9d667c6f7938944c677d616355c7ef10c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5217098583490e98ff2779ae3d0b608c6938a2e3e5a14618877262209e5e8032 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceTransportStatements/Variantcc95d3ac141711a62544ba6ff1fd03e46d7056b25a2ad54aad74772e4b499d60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
