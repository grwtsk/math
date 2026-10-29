# Verification target: Arithmetic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5af4a3755f9309b656a3e2d2e8c98faa2ff17798",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5af4a3755f9309b656a3e2d2e8c98faa2ff17798`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Defs` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [primeTwo](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/primetwo.md) | 17 | `result-track:91a617d995e8e4ffa6facc82cc9bbd4a8f8bb9e13988d64f207ab7f858b7987d` |
| 2 | `theorem` | [primeLowerBound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/primelowerbound.md) | 19 | `result-track:abfb03803d7e2354c59a2dfb477b98a4c7e38d792c0ba7926b8f389547d272eb` |
| 3 | `theorem` | [factorization](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/factorization.md) | 21 | `result-track:da41eb0766b564e858df2ebc75b0603e7672bfb248e0d4ba0525e626d80d0626` |
| 4 | `theorem` | [logPower](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/logpower.md) | 24 | `result-track:7c69e4d24ac80e2f905adcf90d1b6a16afb32690b24af3cfe136886ade6189e8` |
| 5 | `theorem` | [logPrimePositive](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/logprimepositive.md) | 27 | `result-track:964f0faddaa93ef9f0e7f694e20bc358005a80e7cd2430a7c109d119d36b1cbd` |
| 6 | `theorem` | [primePowerNotPrime](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/primepowernotprime.md) | 30 | `result-track:5168342a9fbe65c1b91b92f14fdbb92acbbdfab897656137910272e1688d8465` |
| 7 | `theorem` | [lambdaPrimePower](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/lambdaprimepower.md) | 33 | `result-track:73b9151ab12f14c1ab2f16790b87681ada6bb9a790ea903f4817dbb3373dbe9f` |
| 8 | `theorem` | [lambdaZero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/lambdazero.md) | 38 | `result-track:44a8672090fb2b707df93e5d64fd035b0ce76cc838a146afb652a256b9e521ac` |
| 9 | `theorem` | [lambdaDivisorSum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/lambdadivisorsum.md) | 41 | `result-track:4159325a04e7f088922c00843a72e40d29c7001da8efac9ed14ce8f3d6e262cb` |
| 10 | `theorem` | [zetaSeries](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/zetaseries.md) | 44 | `result-track:8947737ed2ab3bb81b93195be66f144a5ba2cc0e049ba1cc6772118748ac9da6` |
| 11 | `theorem` | [eulerProduct](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/eulerproduct.md) | 48 | `result-track:bbb9f1d027b703f7eed9ffdf1f7ab6c7b817ffe9de99028c688bcc605794f0ed` |
| 12 | `theorem` | [eulerProductLimit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/eulerproductlimit.md) | 52 | `result-track:f4bed1b1a6f85dc6b61bdc7084abc9107b4cc2263af3db935ca349a09c7c58d2` |
| 13 | `theorem` | [zetaExpLambdaSeries](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/zetaexplambdaseries.md) | 58 | `result-track:13dfa7482fac99275b9c57ba7c6ff6e4fbbc3f3900b19e9670323cd11120445a` |
| 14 | `theorem` | [lambdaSummable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/lambdasummable.md) | 62 | `result-track:47a72dd3933b6e030be67c6e4c5e8de8bd648c06e6e5d9f7354ff383286fc1be` |
| 15 | `theorem` | [zetaNonvanishing](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/zetanonvanishing.md) | 65 | `result-track:ec3300a053ea9e5e280fcb230928f403ea3fddcac6497304fcd7f0ab38911588` |
| 16 | `theorem` | [lambdaLogDerivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Arithmetic.lean/declarations/lambdalogderivative.md) | 68 | `result-track:77a24541f502b2f6a803120462dc7685b3cc9b1577c5c47629ae1aac773f5bd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b5d8d6066274c7eb0eda6ba81ac4f48e85f616d5184e5235459ba9701aed9d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Arithmetic/Variant73ed8a8c5b54a19b4e8fbf904f6c7fd3a4fd34923448297bc5644aabcbeeee6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
