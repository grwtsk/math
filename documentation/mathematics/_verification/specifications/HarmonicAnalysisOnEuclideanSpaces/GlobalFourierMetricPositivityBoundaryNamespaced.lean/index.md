# Verification target: Global Fourier Metric Positivity Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a892db3ab6b4657532110c6045b20dd07cdbc85a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variantf5f932e6d68c134fbacefe499a2d015b3db1a3f95c64bb3e05c9e7b3bcd73326.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a892db3ab6b4657532110c6045b20dd07cdbc85a`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variantf5f932e6d68c134fbacefe499a2d015b3db1a3f95c64bb3e05c9e7b3bcd73326.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variantf5f932e6d68c134fbacefe499a2d015b3db1a3f95c64bb3e05c9e7b3bcd73326.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ClaimStatus](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/claimstatus.md) | 26 | `declaration-track:5ed866f451e75dae63099d399614821d9dc992ac90c00e81362435518034f12c` |
| 2 | `inductive` | [RefusalReason](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/refusalreason.md) | 32 | `declaration-track:42e4c4ff96c25c06b02dd842c85f59f107c0141853859c8854d977f9345f3f5b` |
| 3 | `structure` | [RefusalMetadata](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/refusalmetadata.md) | 41 | `declaration-track:a3234367fb234037c8d45bd2b80d9481f4116a2ef1984291c04b900a2996ef16` |
| 4 | `def` | [refusedAsTheoremLanguageMetadata](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/refusedastheoremlanguagemetadata.md) | 52 | `declaration-track:cf7852425bd473ae61145d52bf188059acf42c86de014b6a4377eb5659cb0df1` |
| 5 | `structure` | [GlobalFourierMetricPositivityBoundary](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/globalfouriermetricpositivityboundary.md) | 61 | `declaration-track:f76a842098366bfe5bf59dc40bc5f11149b2b820158ab6af6f824f8a92b6f1f4` |
| 6 | `def` | [defaultGlobalFourierMetricPositivityBoundary](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/defaultglobalfouriermetricpositivityboundary.md) | 95 | `declaration-track:a2bca62d18e09e7632d5174085f8a617b844b093bc5f17492324786109220210` |
| 7 | `def` | [completedMetricGateBoundary](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/completedmetricgateboundary.md) | 120 | `declaration-track:c27c21c0a19d021b5cc371ab2743dcaa31ea32c323f480b27e75a351bfa91b25` |
| 8 | `theorem` | [strict_positivity_requires_metric_and_orthogonal_projection](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/strict-positivity-requires-metric-and-orthogonal-projection.md) | 143 | `result-track:97717d17d36faf909f81f9fe20022ca9efb3109742847b50399f4dc6097f8945` |
| 9 | `theorem` | [fourier_duality_does_not_manufacture_strict_positivity](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/fourier-duality-does-not-manufacture-strict-positivity.md) | 159 | `result-track:047302e6a00ae263d381b2f56efbd0392f3be9ed45415c2f3bf7cdb2ef0778df` |
| 10 | `theorem` | [default_boundary_retains_metric_first_obligations](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/default-boundary-retains-metric-first-obligations.md) | 166 | `result-track:17b9fd2b3cac640c2f0fdedd54f5da86f846f6772254838b699147822359e8a2` |
| 11 | `theorem` | [completed_gate_opens_strict_positive_exact_metric](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/completed-gate-opens-strict-positive-exact-metric.md) | 177 | `result-track:08a2c6c1fc4155d0acbe22c71466a48ef1f27e3e1a3e1885da22eeafea08639f` |
| 12 | `theorem` | [completed_gate_does_not_claim_unconditional_hilbert_polya](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/completed-gate-does-not-claim-unconditional-hilbert-polya.md) | 184 | `result-track:eaec91ca58ee126f41446506a12d1113645dbed671e14b8d63a3849c6a8bac4f` |
| 13 | `theorem` | [premature_fourier_mobius_positivity_claim_refused](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/premature-fourier-mobius-positivity-claim-refused.md) | 190 | `result-track:1b7758b16a4d76f0ee3ae8c43cd1e80828d3893fe256e1dc36236494d44fe990` |
| 14 | `theorem` | [premature_claim_has_no_theorem_authority](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/premature-claim-has-no-theorem-authority.md) | 203 | `result-track:f027f1fb7131a6ee423ee3024358ae2ee1102bcaa25ab135edecff708fad0701` |
| 15 | `theorem` | [completed_gate_contains_full_positive_metric_chain](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundaryNamespaced.lean/declarations/completed-gate-contains-full-positive-metric-chain.md) | 211 | `result-track:893c52a8daa069435567a3ff604827e87985d75551ac122d98aab76b0c97ba98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e04e03036a578bfb54f6e4daa64a4d42593de75eaadc8f6270630a3f71e0fc7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variantf5f932e6d68c134fbacefe499a2d015b3db1a3f95c64bb3e05c9e7b3bcd73326.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variantf5f932e6d68c134fbacefe499a2d015b3db1a3f95c64bb3e05c9e7b3bcd73326.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
