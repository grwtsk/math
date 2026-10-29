# Verification target: Selberg Convolution Statements

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "301135869107a1d163ab2392974cf0f49ae4ef3e",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `301135869107a1d163ab2392974cf0f49ae4ef3e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteDirichletTransport` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [log_pmul_convolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/log-pmul-convolution.md) | 14 | `result-track:1c70799a8b778fb83e42d667f712bf0139d4f6e969601693e4e5101d85a09310` |
| 2 | `theorem` | [log_pmul_zeta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/log-pmul-zeta.md) | 30 | `result-track:43edfe213df432cbfbdc605baf74576304ec52d474c0bde9a44e8f737ab83010` |
| 3 | `theorem` | [selberg_dirichlet_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selberg-dirichlet-identity.md) | 35 | `result-track:294c133d73920a6027922f956449850471fe48634d0e7c6ff86770778a9a730d` |
| 4 | `def` | [selbergCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selbergcoefficient.md) | 57 | `declaration-track:442f2142fb8b70c907c29a17ab8777ccf86bb851f6974feabb9716b3dce8df62` |
| 5 | `theorem` | [selberg_coefficient_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selberg-coefficient-identity.md) | 62 | `result-track:288ce41d71c9c2b6bbd2d68692f7fed0b219355e449bee5944a3a32881904a91` |
| 6 | `theorem` | [selbergCoefficient_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selbergcoefficient-nonneg.md) | 74 | `result-track:567e681ed72293ba7c0000d6cc703d6e21ff8c9772c09436fef5e27d0e6a9992` |
| 7 | `theorem` | [selbergCoefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selbergcoefficient-zero.md) | 80 | `result-track:d7980ceb3bfb9dc05480617f2876590f9157fafde3d4a7a843e8fa7cce4da81d` |
| 8 | `theorem` | [selbergCoefficient_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selbergcoefficient-one.md) | 84 | `result-track:fddb3d313b9d49e27e9c5ad39136e2f7ac34f03ec2115367670fe4055cba63f3` |
| 9 | `theorem` | [selberg_antidiagonal_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selberg-antidiagonal-identity.md) | 88 | `result-track:7dd251e38281965747b084cee6ab2175c33ddf78646bb2a5d792cffea5bc390d` |
| 10 | `theorem` | [closed_factor_cutoff_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/closed-factor-cutoff-eq.md) | 96 | `result-track:4e5dfc069119fb2fa1be7006dfeb3179446db0e71b77497722aa8060994e637d` |
| 11 | `def` | [selbergPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selbergprefix.md) | 111 | `declaration-track:d34ddf62efe429549f6ef710b04f624ff951fc7ef32fc631c8770579278cc381` |
| 12 | `theorem` | [selberg_prefix_identity](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selberg-prefix-identity.md) | 116 | `result-track:8380c93b843fa243770ad46f400c1a561efce1cf6490087c76b598fbb0ae4f59` |
| 13 | `theorem` | [selbergPrefix_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selbergprefix-nonneg.md) | 137 | `result-track:d8f29341a5e87bf78a2522f114c46b1d9bd8b4c131c5e032aacebf00102a77d8` |
| 14 | `theorem` | [selbergPrefix_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selbergprefix-zero.md) | 142 | `result-track:b7dd59ba26c4a8163a8d1ed2802a171e31acf6e6e695fd58609df13ed0caa364` |
| 15 | `theorem` | [selbergPrefix_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selbergprefix-one.md) | 146 | `result-track:7e19cdf605c528ca703b7d3432ae99c4d7985dcc5a6d3970e402aa127d1e3a76` |
| 16 | `theorem` | [selberg_prefix_expanded](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/selberg-prefix-expanded.md) | 150 | `result-track:777ed640c974afbbe4ed65f893800c882154ce7ad66e33481befdc5b6650f7ad` |
| 17 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-8.md) | 171 | `declaration-track:844ea1e40591724fc024821178b01b6f876d026b3dc785402e398bb07d049fb5` |
| 18 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-16.md) | 176 | `declaration-track:ed426fe071d980778b3e9eee1c2699d5ca02d79b266777eafa83e5df48042bb8` |
| 19 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-13.md) | 180 | `declaration-track:a5c446cfc65e9f700a9e0fc8f27d361f6f0cfcea6793de1e0cfec436cdcc52d2` |
| 20 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example.md) | 186 | `declaration-track:221dabee9b4fe15b7079a713f8b84ef52f29d7cc59bce568c417c84dbd59feb1` |
| 21 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-9.md) | 190 | `declaration-track:8afcad128ba428d71e2bca7e34ee8e16f9ae85ff84228c3f3ad158b542549ca3` |
| 22 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-15.md) | 195 | `declaration-track:e7f94935fa2db5e3b733a0810e7560d176ebf49c080342fb83b86f2574e564ae` |
| 23 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-11.md) | 198 | `declaration-track:9be1235041e5fb4c364709124e551f796c070d2ac7562cc2555e9b860b107f61` |
| 24 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-5.md) | 201 | `declaration-track:74d8113337d189bd275d301cd46765fb63a4d573c9a6e1e12ca061f512f1893e` |
| 25 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-6.md) | 204 | `declaration-track:7f8b6dca68edbf7fa5252b37431b8d004c762cf1ecd94a28db38dc34aa5c8f23` |
| 26 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-7.md) | 209 | `declaration-track:803ffd83ce145cf584da7eacc8c7b391d868146127ab8ab2b351bacc883823e4` |
| 27 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-3.md) | 213 | `declaration-track:3ceadd940edf7af1c8b66cb17625cba91b0455353b0373165e38df276c66158c` |
| 28 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-10.md) | 217 | `declaration-track:93eea44e4048b29fcab9e37fd05386007323e74ef9c50f5988e11a0bc59c98e1` |
| 29 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-12.md) | 221 | `declaration-track:a27191e1813e6cd8fccb9b2807c46ce02c98dd749818113b1131c774e60a5794` |
| 30 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-2.md) | 224 | `declaration-track:24377b57e401ff6afe5e6f9a5760616c2ba292864358015cc955b3f02915bf82` |
| 31 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-14.md) | 227 | `declaration-track:ae5a4937f040c9bad6cc18f7ebcb437a58b3688a2ac525ea3bb620b95f101266` |
| 32 | `example` | [(anonymous)](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SelbergConvolutionStatements.lean/declarations/example-source-edition-4.md) | 230 | `declaration-track:4b73c9e4cb110abd369366b6635fe3cee3c5b93810253432c64c3d9972d5577d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65aaf8c8375dae3f7cfff77818c54aaf2a7980dee68f6aac5089712f5b3248bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant2e4b32b5b9f58b79d30ee525ebcb3532aabd85663048a1d52b5127608aaea719.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
