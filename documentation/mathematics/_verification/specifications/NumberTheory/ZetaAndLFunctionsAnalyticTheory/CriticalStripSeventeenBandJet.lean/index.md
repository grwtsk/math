# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSeventeenBandJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ab50acdb550c186aabacf0aea3ecd4032280111",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ab50acdb550c186aabacf0aea3ecd4032280111`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffEightSourceEnclosure`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCutoffEightSourceEnclosure.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/center.md) | 23 | `declaration-track:e0fc8d3a622744cc0d39cae89695dc6e29a2308ab0ef1ced01f8d9406a1a166d` |
| 2 | `abbrev` | [logRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/logradius.md) | 25 | `declaration-track:c5886a488f9089a123e1e48c624d492438676c976b83e0e6825267dcf4a7ac82` |
| 3 | `abbrev` | [sampleRadius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/sampleradius.md) | 26 | `declaration-track:b2c48ee190f411450189c5b1d3d168387191bbcc87cab9feea81f382df948b03` |
| 4 | `abbrev` | [logCenter](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/logcenter.md) | 27 | `declaration-track:893e77a9fae47d4fdc7a10f06b057ccfbac0616d9918297280ae52a36cbf96df` |
| 5 | `def` | [sample](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/sample.md) | 29 | `declaration-track:3e3f86546152a150e5f908283645acfe1714f951e4bfec49a0668901dde9d6f1` |
| 6 | `def` | [powerJet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/powerjet.md) | 31 | `declaration-track:3e10e20229645b7c68e841053fc5f1b6b06c82d05cf514b401eef358da2a08ec` |
| 7 | `def` | [powerError](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/powererror.md) | 34 | `declaration-track:976555c441b1e7e75c14908a7039dd8dd0ba1a142d09d348332515236f88dd19` |
| 8 | `lemma` | [center_norm_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/center-norm-le.md) | 38 | `result-track:6e8bf093f7895c5de9a8f61c3eff71a90645fb811d06c9230c2d947a81cf0c4d` |
| 9 | `lemma` | [log_enclosed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/log-enclosed.md) | 43 | `result-track:8cbe67a447cb29573ee58b601c7c2a69cec6af85d07888c5d6543c7867a1f90f` |
| 10 | `lemma` | [center_power_helper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/center-power-helper.md) | 47 | `result-track:532a6f22a16db0c079842923662669923aa36da82df97a2bd254e68aed02c09f` |
| 11 | `lemma` | [sample_enclosed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/sample-enclosed.md) | 71 | `result-track:3af8ed84a8ba17361d38a5ab61b5726996b330e2ffa661ed320c3416d6f70c59` |
| 12 | `lemma` | [powerError_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/powererror-nonneg.md) | 81 | `result-track:6f2441b0badf539482ac8b25112725ee789dfc6beb1b52869704ae8f9db702bd` |
| 13 | `lemma` | [powerJet_enclosed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/powerjet-enclosed.md) | 84 | `result-track:4d6c9f661135269b2e1a1f0a5706b4c3980b4e6d94f628f1e6c1a65e19452c00` |
| 14 | `abbrev` | [weight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/weight.md) | 102 | `declaration-track:81daadc8298fbb3608fbe36fcf828939558c091ec7a8cd7c67f76dc3ed71f488` |
| 15 | `def` | [sourcePolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/sourcepolynomial.md) | 104 | `declaration-track:e56e58018c87eecb3149496ac2e5c47546d16939307c92b4120884355a460de8` |
| 16 | `def` | [weightCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/weightcoefficient.md) | 108 | `declaration-track:1213be8e3ea59a0c2be4c67a4471f19da9ef5fc17ca67e1633daab93774e2803` |
| 17 | `lemma` | [weight_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/weight-identity.md) | 110 | `result-track:3e3864762db03e65253f2431358846ad40a95e70b609ea9f7cf8d3d61c5e0bb7` |
| 18 | `def` | [expCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/expcoefficient.md) | 116 | `declaration-track:adb6ba5f828314a94635dea845d64b63a01c709d6ce212d3c854aebdd9f68964` |
| 19 | `def` | [exactCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/exactcoefficient.md) | 119 | `declaration-track:6fd332609dcfd7c2e3b3e00bb9fd91aadfe06f58996ee98845e165651d419169` |
| 20 | `def` | [coefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/coefficient.md) | 126 | `declaration-track:24431f7cb13df2eabbe52223867b67a6e1328eb74167bdd429b4bf8b0d2b5b08` |
| 21 | `def` | [polynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/polynomial.md) | 128 | `declaration-track:c97b25cd121109985102d0f5e9bb8f4af849be28c9434482ca2639dc4a0259b5` |
| 22 | `lemma` | [sourcePolynomial_coefficients](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/sourcepolynomial-coefficients.md) | 130 | `result-track:edf22af9064df33bd41967f4aadf25b684e2f134fb04e031629311798172c2de` |
| 23 | `lemma` | [coefficient_rounding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/coefficient-rounding.md) | 140 | `result-track:2a29eb5984f38b8594088a670ad2b5f73b26f055a144cbed57c023aa26424dd3` |
| 24 | `lemma` | [polynomial_rounding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/polynomial-rounding.md) | 148 | `result-track:64e3b3f5c8ff59e13ae7a89d6e2f96bf1e433c3a65a0d2a7ad3620fa4bff8d8d` |
| 25 | `lemma` | [finite_error_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripSeventeenBandJet.lean/declarations/finite-error-budget.md) | 163 | `result-track:007a8b53bad587f501b7741449bffbe2a482a02b993517957b35dd84314680a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1e44fc7ee6646bde86d8a6edc376761288f8f486ee2ea1ffcf0e98c43a692bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripSeventeenBandJet.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
