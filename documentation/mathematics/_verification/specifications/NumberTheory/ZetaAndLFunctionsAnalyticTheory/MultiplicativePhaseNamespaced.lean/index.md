# Verification target: Multiplicative Phase Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e78077d88f8d7be29bfa5e8742a09d2ad6322be",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variantcaec13a0149ca92698ba45574a3bfc8d4b7c3ed11a93ca69ef1a3c7f67c999b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e78077d88f8d7be29bfa5e8742a09d2ad6322be`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variantcaec13a0149ca92698ba45574a3bfc8d4b7c3ed11a93ca69ef1a3c7f67c999b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variantcaec13a0149ca92698ba45574a3bfc8d4b7c3ed11a93ca69ef1a3c7f67c999b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chi](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi.md) | 28 | `declaration-track:25998a8bb66fcfd5b4eb2e12e7ad55cf3c799a70b4d245db29ffc49504835064` |
| 2 | `theorem` | [chi_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-one.md) | 31 | `result-track:4c197c98f8e4530520be4e78b77684ed1bc164a3d3bbedc60c1379159ba4b259` |
| 3 | `theorem` | [chi_mul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-mul.md) | 34 | `result-track:2e0ec1a49cb8d05a648038235379df8de1bf74884273e7c1d5f9a9259093d730` |
| 4 | `theorem` | [chi_pow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-pow.md) | 40 | `result-track:8850e08a8f6b84cb5a9440b4f381f10f5a3dc66de7dc9f2f596e75a1bc579aa0` |
| 5 | `theorem` | [chi_prime_pow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-prime-pow.md) | 48 | `result-track:e15c3e98962a69bb4dbd20454cfc7b2d7e046fc2e49f2eda0cf30a92d1b9ab93` |
| 6 | `theorem` | [chi_exp](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-exp.md) | 55 | `result-track:c8d9eb119db26306b70f155965f07ba7258eabc45ebebd48f19b38672c0663a1` |
| 7 | `theorem` | [chi_inv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-inv.md) | 59 | `result-track:dbcaa65ee283146cdba6f6d370d4592accf0374d0e15b44c76ed2e902f76e1c9` |
| 8 | `theorem` | [chi_eq_exp_angle](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-eq-exp-angle.md) | 65 | `result-track:652962aaafd00dfac4b0ce72f24d9bfa794d0f441cf746e436c1bfd55f0560aa` |
| 9 | `theorem` | [chi_norm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-norm.md) | 72 | `result-track:41c65a037c7e7f9a57b2ed9d95926565ac21d616c443b833b45a8329e9865cf8` |
| 10 | `theorem` | [chi_normSq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-normsq.md) | 76 | `result-track:2ec70ab3f2d026bbe372201a8c43b545883dfdd4d6d362cec1b087e695bd2b3a` |
| 11 | `theorem` | [chi_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/chi-re.md) | 80 | `result-track:098d11177b48e9b2b5f16bd94757df63f8c2829241f41c83e7cea3cda95fa5ba` |
| 12 | `theorem` | [normSq_one_sub_chi](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/normsq-one-sub-chi.md) | 84 | `result-track:3f2d9e1733242ab62f01182d05881ddaf0f8b23155c2c7269e166b5f884d6248` |
| 13 | `theorem` | [phase_defect_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseNamespaced.lean/declarations/phase-defect-nonneg.md) | 90 | `result-track:840306afb6cb260df39e4c823579d5ef3dd5f57f02c6f718ae3489c5e5cc5427` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f373182d909567bcf99e030649705af79aff3b041690757b51b4d63123d1451 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variantcaec13a0149ca92698ba45574a3bfc8d4b7c3ed11a93ca69ef1a3c7f67c999b0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variantcaec13a0149ca92698ba45574a3bfc8d4b7c3ed11a93ca69ef1a3c7f67c999b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
