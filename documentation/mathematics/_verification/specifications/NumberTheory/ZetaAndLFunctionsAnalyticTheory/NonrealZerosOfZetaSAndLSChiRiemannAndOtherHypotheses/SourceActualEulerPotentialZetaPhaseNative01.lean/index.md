# Verification target: Source Actual Euler Potential Zeta Phase Native01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5391ff3c91e706f99dc381289d18afeb0837ab8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Variantd538f38cd669ec923ae51da78e939abdf3c6ddab3d7299537038bfd38d01112e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5391ff3c91e706f99dc381289d18afeb0837ab8`.

Source path: `GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Variantd538f38cd669ec923ae51da78e939abdf3c6ddab3d7299537038bfd38d01112e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Variantd538f38cd669ec923ae51da78e939abdf3c6ddab3d7299537038bfd38d01112e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEulerPotentialPhase` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EulerProduct.DirichletLSeries` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coeff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/declarations/coeff.md) | 16 | `declaration-track:b59ac771303ab948ff7e254af55151182d845b9d381a3a1b2728d5e62765e3e4` |
| 2 | `theorem` | [coeff_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/declarations/coeff-norm-le.md) | 19 | `result-track:2ad327df59a2590dbe955a4563b0e96a591b5d1cf854dfc8d30adf9275aa9e25` |
| 3 | `def` | [actualFullPrimeLogPotential](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/declarations/actualfullprimelogpotential.md) | 31 | `declaration-track:38ef9a91f3828971033868990dcc1b84792d65cac08d88563f0ac02de47a131f` |
| 4 | `theorem` | [actualFullPrimeLogPotential_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/declarations/actualfullprimelogpotential-summable.md) | 34 | `result-track:961af609a2be83a2fea4ee91980ee48a1c517f1be5149e33670aed5b1a646dff` |
| 5 | `theorem` | [actualFullPrimeLogPotential_exp_eq_zeta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/declarations/actualfullprimelogpotential-exp-eq-zeta.md) | 39 | `result-track:3ce4a6e7ab92eeb23a6f8a31e4676ec4e37f6b625585bb02b51a55ab3fe8368a` |
| 6 | `theorem` | [term_eq_exp](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/declarations/term-eq-exp.md) | 49 | `result-track:1c83a252eb76b6f52123fd8d90c4ede979065759ada5f5de165c12171e6646cf` |
| 7 | `theorem` | [actualClosedPrimeLogPotential_tendsto_full](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/declarations/actualclosedprimelogpotential-tendsto-full.md) | 63 | `result-track:e5fbd594a3a436140a39ca06e9f4c9eff33870e975c328d43d8b81f79444c428` |
| 8 | `theorem` | [actualFullPrimeLogPotential_re_negative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/declarations/actualfullprimelogpotential-re-negative.md) | 77 | `result-track:70b24e8afdcc073b8acfaac4bb75fd33ad8a475e19f9c74cc48687ec172f5633` |
| 9 | `theorem` | [actualZeta_norm_at_prime_two_phase_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualEulerPotentialZetaPhaseNative01.lean/declarations/actualzeta-norm-at-prime-two-phase-le.md) | 87 | `result-track:96066fbcc236b5726f4fc1776836f1eb2886e73fbc1a490c07935e654fd1f9f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea6bd62d593d613d4802360d2cfdade3e8d2cca3af8afc648cca82121a50b6de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Variantd538f38cd669ec923ae51da78e939abdf3c6ddab3d7299537038bfd38d01112e.lean","GRWTSK/_verification/specifications/NumberTheory/SourceActualEulerPotentialZetaPhaseNative01/Variantd538f38cd669ec923ae51da78e939abdf3c6ddab3d7299537038bfd38d01112e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
