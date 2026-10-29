# Verification target: Multiplicative Phase Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc3835d00fadbe9b80ec0b64dabc4455ef54bb0e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variant7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc3835d00fadbe9b80ec0b64dabc4455ef54bb0e`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variant7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variant7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chi](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi.md) | 20 | `declaration-track:c43bb5bd476b6c620f77ea2e0f763ad4754fc717c75474bf0a711a4558ef2c89` |
| 2 | `theorem` | [chi_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-one.md) | 23 | `result-track:ff3365fb28e8a66682ce85db32e9a74042d56a691ed9794ad3f797bd8e852831` |
| 3 | `theorem` | [chi_mul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-mul.md) | 26 | `result-track:5f4151730957ba246494cdc3f79273c786232a62cae22beff2dc05ae20ac5ed7` |
| 4 | `theorem` | [chi_pow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-pow.md) | 32 | `result-track:5929ab7acdb04ace3f78b992646c6dd36e5ede76bc86df330f804d94d2d94b59` |
| 5 | `theorem` | [chi_prime_pow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-prime-pow.md) | 40 | `result-track:7c300fb98f7907bd5dea604c1ea08249d1c3768040a5e7cbe560aea7b28da755` |
| 6 | `theorem` | [chi_exp](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-exp.md) | 47 | `result-track:901790994636995c528a681cc8f057495883a1ba482083bc78c350766ea76ca3` |
| 7 | `theorem` | [chi_inv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-inv.md) | 51 | `result-track:0ca4adda71f227795dcf80a4262a1167c48d4c3a9a366ca101c1e56de11c5778` |
| 8 | `theorem` | [chi_eq_exp_angle](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-eq-exp-angle.md) | 57 | `result-track:9b08f9275b1033d2416d3257ae8ce5e26c33e0f94b8c7e3b85f092bb6487d519` |
| 9 | `theorem` | [chi_norm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-norm.md) | 64 | `result-track:c909a877760b3503b96fa20fb66ff985fe1f7f5588748dea323148d02b494a2d` |
| 10 | `theorem` | [chi_normSq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-normsq.md) | 68 | `result-track:b590f1e7d86f617af4780acaa59fd3afacb73ef637328971836f46fe2a3e8f42` |
| 11 | `theorem` | [chi_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/chi-re.md) | 72 | `result-track:57a0cc9d0c69c0e6595cf66f8bed33308c7d7c58994015a2e912e536d1351620` |
| 12 | `theorem` | [normSq_one_sub_chi](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/normsq-one-sub-chi.md) | 76 | `result-track:8f665c104401c6eddc871723089c71de12aa119767aeef24cd6ace2c34763f65` |
| 13 | `theorem` | [phase_defect_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/MultiplicativePhaseResults.lean/declarations/phase-defect-nonneg.md) | 82 | `result-track:b0f54eafbfcad9679dfbbb442946b3e3d0aaa3136c09321f41771a0b3c81287d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ac40a995f424aa0234419883485d7fc08bf08f12383345bd0261ee8ed8d2c8b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variant7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MultiplicativePhase/Variant7d71c62da8bdab50069d02d31e85b78a839ea7ab7b97669007b969b95139a60e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
