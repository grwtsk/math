# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFiniteMellinAgreement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23139b75f6982252cb48fa424a4dbd60b6c5c649",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23139b75f6982252cb48fa424a4dbd60b6c5c649`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripFinitePowerPatch`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFinitePowerPatch.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMellinEnclosure`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripMellinEnclosure.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [derivative_bounds_agree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/declarations/derivative-bounds-agree.md) | 25 | `result-track:107a133c7251a8f394f8e2ef9c1dc539b05f373574d78f6114d88e93cba16800` |
| 2 | `theorem` | [finitePower_prefix_residual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/declarations/finitepower-prefix-residual.md) | 29 | `result-track:85ab241171887df5a3fc2310874a75a693def24d62a211a1363a9ccf1af976c9` |
| 3 | `theorem` | [finitePower_prefix_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/declarations/finitepower-prefix-error.md) | 38 | `result-track:6cbe946cc1b2ae8910cebdf74449c18f2afd93549c62315a54cf9adebf3d589d` |
| 4 | `theorem` | [sample_agreement_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/declarations/sample-agreement-le.md) | 49 | `result-track:e6900f6199ebcecdaa91881e23432a9507e83cfde34ca999d35ed46c2be34894` |
| 5 | `theorem` | [exact_margin_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/declarations/exact-margin-iff.md) | 68 | `result-track:fd4341ff164be6d35fc4766faea184b06b1911e194f7e04bff9e99a4be14e346` |
| 6 | `theorem` | [no_strict_finitePower_margin_at_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/declarations/no-strict-finitepower-margin-at-zero.md) | 76 | `result-track:b74f2b72d4b7b161da2f4deb2eceeb696627cb0aa5a4e70eb4c7bd18e96c7802` |
| 7 | `theorem` | [nonzero_iff_exists_finitePower_margin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/declarations/nonzero-iff-exists-finitepower-margin.md) | 86 | `result-track:22f14488320c5a5b890b9d175351325f62784f4bea5ffd5732ebabcf6db78aff` |
| 8 | `theorem` | [nonzero_of_power_sample](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/declarations/nonzero-of-power-sample.md) | 102 | `result-track:149f5d1b04402294e44de4b315adf1e71e2979868ac949a00bd511824ae8ea7b` |
| 9 | `theorem` | [pole_values_agree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripFiniteMellinAgreement.lean/declarations/pole-values-agree.md) | 112 | `result-track:18a68e63f3a5b88e6b0e1abfa30b6a8cefab3c733f1ed3cdf611ea442a57ccff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc19f9f35e6039aecc6996ff5d8d04d828d819aac0a814b76195007f9abc4a5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripFiniteMellinAgreement.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
