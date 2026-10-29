# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShellPrimeEndpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4e58418191a8a48e4694bced730a0514fbd2a3a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellPrimeEndpoint.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4e58418191a8a48e4694bced730a0514fbd2a3a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellPrimeEndpoint.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaShellPrimeEndpoint.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaShellCancellation`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/QuadraticThetaShellCancellation.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicPrimeOnlyLiteralFormulas`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DyadicPrimeOnlyLiteralFormulas.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaShellError_natCast_eq_primeOnlyEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/declarations/thetashellerror-natcast-eq-primeonlyendpoint.md) | 45 | `result-track:ee6b8c4d674c5811c69069755143ffb44906dec3fe83ca6cdf64add3f139989f` |
| 2 | `def` | [QuadraticThetaShellAnchorCancellationAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/declarations/quadraticthetashellanchorcancellationat.md) | 61 | `declaration-track:ad73a56f7f8ae2250a3aacf2dd3670ee8b346fcc85467fa5a4ca6c2fa7f2c651` |
| 3 | `theorem` | [quadraticThetaShellCancellation_to_anchor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/declarations/quadraticthetashellcancellation-to-anchor.md) | 79 | `result-track:87807e1c5ad9110a84dd1824f56ab0c966050682d1685653ad17b468b30dadb5` |
| 4 | `def` | [QuadraticPrimeEndpointCancellationAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/declarations/quadraticprimeendpointcancellationat.md) | 100 | `declaration-track:86a8ac3ac585281ee61229a00d2077523c06618237e76587d27c6c7ca1aec1db` |
| 5 | `theorem` | [quadraticThetaShellAnchorCancellation_iff_primeEndpoint](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/declarations/quadraticthetashellanchorcancellation-iff-primeendpoint.md) | 120 | `result-track:7c3162627df3676416d53c967ee12887d2d93f0d5ddfd6cb933dd53f45b251d9` |
| 6 | `def` | [ThetaShellAnchorUniformizationAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/declarations/thetashellanchoruniformizationat.md) | 146 | `declaration-track:a61641efdd36878fa3a6b25987ce69bef2a9ac57dca729b3c5daaf1bd332ef98` |
| 7 | `theorem` | [primeEndpointCancellation_uniformization_to_recurrence](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/declarations/primeendpointcancellation-uniformization-to-recurrence.md) | 152 | `result-track:17ccfcefcb5405d4fb7e8470577013ec97d09581c6eaae7385c507ef0c0edddd` |
| 8 | `theorem` | [sevenEighths_primeEndpoint_uniformization_to_recurrence](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/QuadraticThetaShellPrimeEndpoint.lean/declarations/seveneighths-primeendpoint-uniformization-to-recurrence.md) | 165 | `result-track:4b133cf2cd9e7832832261f7008525a08f2841aa9c362e0353b77742a1bb89ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=644aa7d32b134500a76341d590a4ef5dccbc9838f98075359676ab6159669f9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaShellPrimeEndpoint.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/QuadraticThetaShellPrimeEndpoint.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
