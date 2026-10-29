# Verification target: Actual Prime Intercept

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ee96ff12e1f8bb1ea3c3bbba9c8aa1c85292b5d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant2cc5c18ddb3e974fc42989eced2bf81fc36d36b8630aa889960aea99db770e8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualPrimeIntercept.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualPrimeIntercept.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ee96ff12e1f8bb1ea3c3bbba9c8aa1c85292b5d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant2cc5c18ddb3e974fc42989eced2bf81fc36d36b8630aa889960aea99db770e8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant2cc5c18ddb3e974fc42989eced2bf81fc36d36b8630aa889960aea99db770e8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualArithmeticIntercept` — import line 1; external provider; requires a separately pinned dependency.
- `ProperPowerAssembly` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPrimeRemainder](../../../../MeasureAndIntegration/ActualPrimeIntercept.lean/declarations/actualprimeremainder.md) | 20 | `declaration-track:4e7f4c717b8da1fbd7bb8230191343c89e02f41bcf9121a008a7d473dd2681b3` |
| 2 | `def` | [actualPrimeIntercept](../../../../MeasureAndIntegration/ActualPrimeIntercept.lean/declarations/actualprimeintercept.md) | 24 | `declaration-track:373ae9a8a6b4f2d71ed5afb4cdfe33117d0ada52c5635f439167186f041f6486` |
| 3 | `theorem` | [actual_prime_remainder_eq_full_plus_tail](../../../../MeasureAndIntegration/ActualPrimeIntercept.lean/declarations/actual-prime-remainder-eq-full-plus-tail.md) | 26 | `result-track:992ae87d5cb30ad7eeb5800a2f002951b13853856f4f8822c7ab9bac437d730d` |
| 4 | `theorem` | [actual_prime_remainder_integrable](../../../../MeasureAndIntegration/ActualPrimeIntercept.lean/declarations/actual-prime-remainder-integrable.md) | 32 | `result-track:3cee29713b3315f56d00e7d3fdea0161306db87c50b98e225271e754733a8548` |
| 5 | `theorem` | [actual_prime_remainder_integral](../../../../MeasureAndIntegration/ActualPrimeIntercept.lean/declarations/actual-prime-remainder-integral.md) | 40 | `result-track:c5ed6dd7beab98a0afdfe7f7cf44235cc7a7d7563a5374267cb4da339e89bd68` |
| 6 | `theorem` | [actual_prime_intercept_eq](../../../../MeasureAndIntegration/ActualPrimeIntercept.lean/declarations/actual-prime-intercept-eq.md) | 48 | `result-track:35beb28582f095490487e4b071b0e11f38ff17237774c38cbcd57626b3540513` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d08cedbec129d9e177717c24eec14b126359f9839b10cf5a0e3d70dbbbd276f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant2cc5c18ddb3e974fc42989eced2bf81fc36d36b8630aa889960aea99db770e8e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualPrimeIntercept/Variant2cc5c18ddb3e974fc42989eced2bf81fc36d36b8630aa889960aea99db770e8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
