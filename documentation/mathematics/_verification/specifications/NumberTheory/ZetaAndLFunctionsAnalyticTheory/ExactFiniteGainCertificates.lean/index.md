# Verification target: Exact Finite Gain Certificates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58f58e3c627c81bf3ca3b653338c6c9f2fa82092",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainCertificates/Variantd1488c69be3369933d29c43e3ac7d4e16dcdd3925f63cb66a26eb57d4b923ae6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58f58e3c627c81bf3ca3b653338c6c9f2fa82092`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainCertificates/Variantd1488c69be3369933d29c43e3ac7d4e16dcdd3925f63cb66a26eb57d4b923ae6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainCertificates/Variantd1488c69be3369933d29c43e3ac7d4e16dcdd3925f63cb66a26eb57d4b923ae6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CertifiedAction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/certifiedaction.md) | 24 | `declaration-track:f5af78f48be968d3a32a6f90ae8b960a3834e469b7f0cb6bd6c36daf0f8047b1` |
| 2 | `def` | [CertifiedPolicy](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/certifiedpolicy.md) | 29 | `declaration-track:cfe8beb4d7479402a07cf7fddceba3727d2e161731cedd658089fa38a94354aa` |
| 3 | `theorem` | [edge_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/edge-lower.md) | 34 | `result-track:7bdf8d9caa0db37242d385b974ea640c0391d117e8c3393252f711ceaa9cb1c1` |
| 4 | `theorem` | [telescope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/telescope.md) | 39 | `result-track:28542ca549e21069dd4940f3edb6d537adc1ef854231e5eaebd946e298158ed2` |
| 5 | `theorem` | [policy_telescope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/policy-telescope.md) | 54 | `result-track:870100331a2cd8282b296ad1961411f07872caeee89bba39d027c3b5b02652bb` |
| 6 | `theorem` | [terminal_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/terminal-lower.md) | 65 | `result-track:16fa281ba46553fc2c78c67116d2039a4c04d92c7c90aaa004f9fb1bd787846e` |
| 7 | `theorem` | [prefix_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/prefix-lower.md) | 75 | `result-track:ef05081c4d66e15363a5abeeb29654d6acdee28b93a57816ae18c05cd7962cd8` |
| 8 | `theorem` | [closed_walk_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/closed-walk-nonneg.md) | 85 | `result-track:98211257e4dcbfaf804713ead20e7acb58b6c222a96cb427abc65e928200d833` |
| 9 | `theorem` | [reset_negative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/reset-negative.md) | 93 | `result-track:df283a6c6228d2b46077ed194f7a205e4b8ba611a33d0a8d67f0a94f399240fc` |
| 10 | `theorem` | [negative_walk_exceeds_credit](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/negative-walk-exceeds-credit.md) | 98 | `result-track:bc7d641805aac8b09f91ba760aaf4358bae9303f0b5b40cc3357f2e7eb2c8ce4` |
| 11 | `theorem` | [nonnegative_storage_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactFiniteGainCertificates.lean/declarations/nonnegative-storage-budget.md) | 106 | `result-track:4bb90152c5126598bd461229f7f6e96d127a22bb7074622ef7312e6ed556ea25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9c06b37b5a603d47b2f3e0c5d5f9d30430d9f7a8881a6aa38f55139ba1db401 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainCertificates/Variantd1488c69be3369933d29c43e3ac7d4e16dcdd3925f63cb66a26eb57d4b923ae6.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FiniteGainCertificates/Variantd1488c69be3369933d29c43e3ac7d4e16dcdd3925f63cb66a26eb57d4b923ae6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
