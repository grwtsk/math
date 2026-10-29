# Verification target: Ordinary Hypergeometric Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1bf6b82005beedebd1d6b469133a65a3334cfcfb",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1bf6b82005beedebd1d6b469133a65a3334cfcfb`.

Source path: `GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ordinaryHypergeometricCoefficient](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometriccoefficient.md) | 74 | `declaration-track:a111af459a016b685763104009ddcfa317dad080bf00ca7ea2d62a1489cda0e3` |
| 2 | `def` | [ordinaryHypergeometricSeries](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometricseries.md) | 79 | `declaration-track:1cb08b75c03d662f0f175c7b2e7fbd34af46116be842867cc166f82525f5f884` |
| 3 | `def` | [ordinaryHypergeometric](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometric.md) | 89 | `declaration-track:9aff8cce82d25ddf5536cef7650e8307be3d0e505a2fec267b41ceeade3164c0` |
| 4 | `theorem` | [ordinaryHypergeometricSeries_apply_eq](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometricseries-apply-eq-source-edition-2.md) | 95 | `result-track:775f30eca1dc85321d5360334214c7bc0c86568366e4d88abd51432668ddb695` |
| 5 | `theorem` | [ordinaryHypergeometricSeries_apply_eq'](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometricseries-apply-eq.md) | 102 | `result-track:4bb5a9f6bf5ede2fcfe720ed6c81498e4a0726ed5cf72d9436e2d3d024bd866c` |
| 6 | `theorem` | [ordinaryHypergeometric_sum_eq](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometric-sum-eq.md) | 108 | `result-track:cc6c080dcb90be633406f758fdacd85391e2fee1f84a8ad344a98df444837cca` |
| 7 | `theorem` | [ordinaryHypergeometric_eq_tsum](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometric-eq-tsum.md) | 113 | `result-track:4855d7dd394ec3a8f7d878b7d0700eb32a8f6c0d16f7ba7ad91404ed0217a0f1` |
| 8 | `theorem` | [ordinaryHypergeometricSeries_apply_zero](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometricseries-apply-zero.md) | 118 | `result-track:157c829c571a4821f5b45475225b64b48df171590946851356676f74dcdb10cb` |
| 9 | `theorem` | [ordinaryHypergeometric_zero](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometric-zero.md) | 124 | `result-track:b962a39cf68e58ed12bfc76415a404ca51eead056f8fe41b4630b08803616779` |
| 10 | `theorem` | [ordinaryHypergeometricSeries_symm](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometricseries-symm.md) | 128 | `result-track:bb5a5e2e4f4baf5f794dcb8a75659de3b42da8d7b0f115f008eb639ff2f7b7ec` |
| 11 | `lemma` | [ordinaryHypergeometricSeries_eq_zero_of_neg_nat](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometricseries-eq-zero-of-neg-nat.md) | 138 | `result-track:e6c8db8c0efd65404dc285bd18d71e59b56c1326ac17440943d3c7ce1af848a4` |
| 12 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₁](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat-source-edition-2.md) | 157 | `result-track:2625536cb3fa931899636120223d7dd2c6f666277bbb09927e110d71acf463c5` |
| 13 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₂](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat.md) | 162 | `result-track:11f62a86034b2f522d32e7405084b6325bfb8632617cb84d7239bd8490ff5334` |
| 14 | `theorem` | [ordinaryHypergeometric_radius_top_of_neg_nat₃](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometric-radius-top-of-neg-nat-source-edition-3.md) | 168 | `result-track:ca64e9474cf99d53c9bfc5e58bc639c0a9071d23868bf671b9beacf269d1f17e` |
| 15 | `lemma` | [ordinaryHypergeometricSeries_eq_zero_iff](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometricseries-eq-zero-iff.md) | 174 | `result-track:b6793b3d339cfc54f7b8558afebcba288620d77ad3008ade0bfc084f13d09b98` |
| 16 | `theorem` | [ordinaryHypergeometricSeries_norm_div_succ_norm](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometricseries-norm-div-succ-norm.md) | 187 | `result-track:5561dc6f6dcd566b8c58ffefc8ec10a73c340764ce0431e1ee658028c6c63fa1` |
| 17 | `theorem` | [ordinaryHypergeometricSeries_radius_eq_one](../../../../SpecialFunctions/OrdinaryHypergeometricNamespacedPublic.lean/declarations/ordinaryhypergeometricseries-radius-eq-one.md) | 212 | `result-track:3ee19a4eb7b6f6e532ad0f93bf7c328e450066c14aacb59d7fa9498a5e1b7626` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e90472360349f5bb8430105df10eb82529aa37724e222f8532ae5d2fce4b3ce4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/OrdinaryHypergeometric/Variant2b34b90efcd9e05d3b95d14c26bf766b997b94ce96410fe9e3e165c2959d696e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
