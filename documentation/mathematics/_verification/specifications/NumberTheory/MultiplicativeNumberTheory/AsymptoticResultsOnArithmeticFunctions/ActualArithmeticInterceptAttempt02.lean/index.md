# Verification target: Actual Arithmetic Intercept Attempt02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d0635e3a6a4cac3d838f6e5e735b933a50aff24",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variant9c8bb6cf18839f98feffc9bf8a3b132142c76c4bf74704a48fa9dc97f00c7535.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptAttempt02.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptAttempt02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d0635e3a6a4cac3d838f6e5e735b933a50aff24`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variant9c8bb6cf18839f98feffc9bf8a3b132142c76c4bf74704a48fa9dc97f00c7535.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variant9c8bb6cf18839f98feffc9bf8a3b132142c76c4bf74704a48fa9dc97f00c7535.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualMangoldtLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `ArithmeticLaurent` — import line 2; external provider; requires a separately pinned dependency.
- `MangoldtLaplaceIntegrability` — import line 3; external provider; requires a separately pinned dependency.
- `SourceRemainderLaplace` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exponential_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptAttempt02.lean/declarations/exponential-integral.md) | 21 | `result-track:2708f6f414130de29f9379df9c5bca8cc985dfd2143a8909cdad02ec11203f9c` |
| 2 | `theorem` | [linear_exponential_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptAttempt02.lean/declarations/linear-exponential-integral.md) | 25 | `result-track:583bc2a2708849435c244eb383d644c02f1f410fec6e75ed20e1beb5f4905168` |
| 3 | `theorem` | [actual_laplace_compensation](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptAttempt02.lean/declarations/actual-laplace-compensation.md) | 31 | `result-track:6a20e20529a9d26c81bb670d7c8bb17d93f2fd0ea51214b774180145467cafb6` |
| 4 | `theorem` | [actual_laplace_eq_LSeries_quotient](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptAttempt02.lean/declarations/actual-laplace-eq-lseries-quotient.md) | 49 | `result-track:142452c2ee0f6da3d269b69ffb37174a69ed93d3493a5b60f2ab2e2cf308bc0c` |
| 5 | `theorem` | [real_right_tendsto_complex_positive](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptAttempt02.lean/declarations/real-right-tendsto-complex-positive.md) | 62 | `result-track:93974404f888249592e551075da36626125b6c88c9b49b5d1ed60765352558e3` |
| 6 | `theorem` | [actual_laplace_tendsto_coefficient](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptAttempt02.lean/declarations/actual-laplace-tendsto-coefficient.md) | 71 | `result-track:7a6c50e72bad079b077178b75ba9b2652b12ea238e35a933002f564d72742b18` |
| 7 | `theorem` | [actual_remainder_integral_eq_coefficient](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/ActualArithmeticInterceptAttempt02.lean/declarations/actual-remainder-integral-eq-coefficient.md) | 84 | `result-track:314d43933a7e2c5ec4e07c1a07b5fc7f58e052c699c120ee2b92ccf58c528fea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8294c637c2655715935cf8d31340404e7a13152129e437e9da65b90fd6beb69f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variant9c8bb6cf18839f98feffc9bf8a3b132142c76c4bf74704a48fa9dc97f00c7535.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualArithmeticInterceptAttempt02/Variant9c8bb6cf18839f98feffc9bf8a3b132142c76c4bf74704a48fa9dc97f00c7535.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
