# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFiniteOrthogonality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a82c9eaacd10878a14fb5c3eccf9247dce4b1aa3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a82c9eaacd10878a14fb5c3eccf9247dce4b1aa3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerMassOneReduction`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerMassOneReduction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Algebra.Field.GeomSum` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [periodFourXModeRatio](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/declarations/periodfourxmoderatio.md) | 14 | `declaration-track:68affdcde7d192095ef4e1499558ae3b92d24695350a59d4cc30a4d962cddd69` |
| 2 | `theorem` | [periodFourXModeRatio_pow_period](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/declarations/periodfourxmoderatio-pow-period.md) | 20 | `result-track:4fc25948ae937ca8835fd322ce313efa92eb37292377c58732aae952edaec6a6` |
| 3 | `theorem` | [periodFourXModeRatio_ne_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/declarations/periodfourxmoderatio-ne-one.md) | 37 | `result-track:446028652f2c3de0c2085d3035e56faf99b0f1b761b0a668d08ca13fa77e3c40` |
| 4 | `theorem` | [fourier_periodFourX_lattice_eq_pow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/declarations/fourier-periodfourx-lattice-eq-pow.md) | 62 | `result-track:50609ff7ed7808742b90703e68e4a7b79b5b6ffc6d633cb8a143da16364b4b81` |
| 5 | `theorem` | [intervalFrequency_nonzero_mod_octavePeriod](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/declarations/intervalfrequency-nonzero-mod-octaveperiod.md) | 83 | `result-track:419f0403efd0f09c492ad803a1db8d738bf0d63dbe83180c76d70de0831fb8e9` |
| 6 | `theorem` | [periodFourXFourierModeOrthogonality](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/declarations/periodfourxfouriermodeorthogonality.md) | 106 | `result-track:436bce8a585eaeebd2f141cbbf30c60d7015156e8936a15389ca7da9a8b000a1` |
| 7 | `theorem` | [periodFourXSampledKernelMassOne](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/declarations/periodfourxsampledkernelmassone.md) | 120 | `result-track:3ffbc38006bfdbecc2a53bc47f4134730320ae2838423428a1f9b799b6869e27` |
| 8 | `def` | [nonAliasingFejerDiscreteReproductionData](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/declarations/nonaliasingfejerdiscretereproductiondata.md) | 125 | `declaration-track:a2f073022a0c8f6929b33223a6ff41da5e37b11575f1888f67e84b25207e50c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e97109179c501dc80a47335a8dce1307cfbbbc5aae2168ed979ca6dc712a44b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
