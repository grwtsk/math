# Verification target: Source Actual Riesz Initial Laplace Native03 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f62dbd16ba49afad2ca876950dd5da5fa10d2d0",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f62dbd16ba49afad2ca876950dd5da5fa10d2d0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszCenteredReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realRampAntiderivative](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/realrampantiderivative.md) | 28 | `declaration-track:49811ee104a647c5764c930465c12902bace5601dd29f34f1a1a3030722dc494` |
| 2 | `theorem` | [realRampAntiderivative_hasDerivAt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/realrampantiderivative-hasderivat.md) | 31 | `result-track:abdb505d0f66bdf8f1c5542d5ffb6befe8ec29689f4c4f902333c52a32202461` |
| 3 | `theorem` | [realRampAntiderivative_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/realrampantiderivative-tendsto.md) | 41 | `result-track:e03e7502b842d12da03b9011614d37977eb86c60b712262bcbadfd3c264e9561` |
| 4 | `theorem` | [realRamp_tail_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/realramp-tail-integrable.md) | 55 | `result-track:73833a9ec79f77bc3eeb6809f1ffefe7e0223232bd14cc0b700f9d5b1823d69d` |
| 5 | `theorem` | [realRamp_tail_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/realramp-tail-integral.md) | 63 | `result-track:4307d1eaf64efe8360c5e4d49761365694cd11601ddf26c99da4b78a13203f8a` |
| 6 | `theorem` | [zeroOn_lower_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/zeroon-lower-integrable.md) | 70 | `result-track:6a35f26e510779ab4d1fd6cc4f3a44471c99ceb6b0a56797400a92098e7c5cb5` |
| 7 | `theorem` | [realRamp_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/realramp-integrable.md) | 76 | `result-track:d70cc59f99435d5b27b04a79c188b9e2adfd0394f7f8265ed5bc30bffb7ce273` |
| 8 | `theorem` | [realRamp_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/realramp-integral.md) | 86 | `result-track:901acaa98170073614077fbfb54a70459dcd01c64752f1737ed2ce5e1117d65b` |
| 9 | `theorem` | [complexRamp_norm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/complexramp-norm.md) | 104 | `result-track:b935d0c9524d25de2cc9683d279590270e3085432714f115e246b49261bb4d8b` |
| 10 | `theorem` | [actualSingleRieszRamp_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/actualsinglerieszramp-integrable.md) | 113 | `result-track:9f83e5404196429e72c2177c5295050a2164e9e450cdebd8684101bb6ca92992` |
| 11 | `theorem` | [actualSingleRieszRamp_integral_norm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/actualsinglerieszramp-integral-norm.md) | 123 | `result-track:23135258cd333c496b87c210c8b8d213d597b52d565763334ce4a3fdf6338b58` |
| 12 | `def` | [complexRampAntiderivative](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/complexrampantiderivative.md) | 129 | `declaration-track:966562e7d117d814c314678732df49cbc026047caa533d5af8355efc3d265603` |
| 13 | `theorem` | [complexRampAntiderivative_hasDerivAt](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/complexrampantiderivative-hasderivat.md) | 132 | `result-track:c3773e053e17aa8c23c5956d20baaee685764ede6f10ce43e804e831cd16fd69` |
| 14 | `theorem` | [complex_exp_monomial_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/complex-exp-monomial-zero.md) | 143 | `result-track:a38e155286124990971bf320e9ab2310bdca6c4951501b4b94dfaa01575a58ba` |
| 15 | `theorem` | [complexRampAntiderivative_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/complexrampantiderivative-tendsto.md) | 157 | `result-track:b4ea23b4822a9438addb2a01af8063cf493d03e13be4220d206b2223842c6a01` |
| 16 | `theorem` | [actualSingleRieszRamp_integral](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/actualsinglerieszramp-integral.md) | 171 | `result-track:8b0b2a3ae8e69d3e9e2b4aa87a94a8fd70a93ff50a430840257d74feaca319cf` |
| 17 | `def` | [actualRieszLaplaceAtom](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/actualrieszlaplaceatom.md) | 204 | `declaration-track:d3a258a011bbac07e7c80409d4ce14a0a4e47e194e03645d4ead1b70b121450b` |
| 18 | `def` | [actualMangoldtRieszLaplace](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/actualmangoldtrieszlaplace.md) | 209 | `declaration-track:5e5c87483d0803f15ed8293ffb0c0f958bdc4c60394860bc105a35f3f21c8c30` |
| 19 | `theorem` | [atom_factor](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/atom-factor.md) | 213 | `result-track:234b9ae49cfe50ba14592c1002cc6c8d225319f91503c33896ebd502e3cc7777` |
| 20 | `theorem` | [actualRieszLaplaceAtom_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/actualrieszlaplaceatom-integrable.md) | 222 | `result-track:eeb477f8a038473edc732d3524e0d39c0d9ecf253b14c0589532cb8f7af874ec` |
| 21 | `theorem` | [actualRieszLaplaceAtom_integral_norm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/actualrieszlaplaceatom-integral-norm.md) | 232 | `result-track:539334f1237fdcf9ba7263d946151951c3c8f928a6507a5c1557af2f44cb2abc` |
| 22 | `theorem` | [actualRieszLaplaceAtoms_summable_integral_norm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/actualrieszlaplaceatoms-summable-integral-norm.md) | 262 | `result-track:b3b04a2e3e91fa3ba04638f89617b6280e8ab77dc93b63813aa2ac0b4784d83d` |
| 23 | `theorem` | [actualRieszLaplaceAtoms_tsum](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualRieszInitialLaplaceNative03Namespaced.lean/declarations/actualrieszlaplaceatoms-tsum.md) | 272 | `result-track:ea64264d27a89b0070c393541baddf26c18f9fa9e1aedb296385838313203e10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8397b237ac154d70ff93c929625f6eb36ea72fc44bcb6a3486e50745636172f2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative03/Variantaed642991a32b0975affa7e860c4336a828dc211cf1a7b5c35d249f2bf6759b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
