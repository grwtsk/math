# Verification target: Global Fourier Metric Positivity Boundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3208c8bc11c49d26daa691aabba714cc0fd9ff24",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3208c8bc11c49d26daa691aabba714cc0fd9ff24`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Arithmetic.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ClaimStatus](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/claimstatus.md) | 18 | `declaration-track:44c1902345d18f860ed20b6c7f8edfec6c715402db5595b0b03de6f03bd940a6` |
| 2 | `inductive` | [RefusalReason](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/refusalreason.md) | 24 | `declaration-track:669171e1017a623174dfe1264a4b6f4277ac964e88094932a23fe012b84d53f9` |
| 3 | `structure` | [RefusalMetadata](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/refusalmetadata.md) | 33 | `declaration-track:11fb779a7dd9442247df3809af7be3dfba74de56fed3bb6f4d3cd613acd332a7` |
| 4 | `def` | [refusedAsTheoremLanguageMetadata](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/refusedastheoremlanguagemetadata.md) | 44 | `declaration-track:c4ee15dc289d3fb547aa7523835ac38b2b82fbf4778fb2bc1307ecd1da5a21be` |
| 5 | `structure` | [GlobalFourierMetricPositivityBoundary](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/globalfouriermetricpositivityboundary.md) | 53 | `declaration-track:cdc49d18fe12e1546109c89413ddf62cabc38ee1d245473a3f24d058c3bcba90` |
| 6 | `def` | [defaultGlobalFourierMetricPositivityBoundary](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/defaultglobalfouriermetricpositivityboundary.md) | 87 | `declaration-track:9aa40ccbe937e4a4cde1ca290a4e87923d6a388ffa78621aa66cec163ac5441e` |
| 7 | `def` | [completedMetricGateBoundary](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/completedmetricgateboundary.md) | 112 | `declaration-track:5919d1745e6e186cf19ead3f814438423da6c97d40c72696930f4ac1e3bcada9` |
| 8 | `theorem` | [strict_positivity_requires_metric_and_orthogonal_projection](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/strict-positivity-requires-metric-and-orthogonal-projection.md) | 135 | `result-track:f0ce4f9f008297401f4d008efef804dd966e61a3e34665314e51ca1a582ad4e4` |
| 9 | `theorem` | [fourier_duality_does_not_manufacture_strict_positivity](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/fourier-duality-does-not-manufacture-strict-positivity.md) | 151 | `result-track:d24621c29c300cae2347c77e8aad49780eb593963c6a0dd0deb78f2a9929c01e` |
| 10 | `theorem` | [default_boundary_retains_metric_first_obligations](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/default-boundary-retains-metric-first-obligations.md) | 158 | `result-track:8085b8c655504ae59c6217bc820fec9f99468ea5f2fd9c5ca00be884c4a0da7c` |
| 11 | `theorem` | [completed_gate_opens_strict_positive_exact_metric](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/completed-gate-opens-strict-positive-exact-metric.md) | 169 | `result-track:8e399ae1f80edbc172284ba690da8185809899c8b070c0ff4a5c0babf9f738a4` |
| 12 | `theorem` | [completed_gate_does_not_claim_unconditional_hilbert_polya](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/completed-gate-does-not-claim-unconditional-hilbert-polya.md) | 176 | `result-track:10d63f07047a8e5ca098afd2b14514aec4376050b67ee469efaa9681135b5564` |
| 13 | `theorem` | [premature_fourier_mobius_positivity_claim_refused](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/premature-fourier-mobius-positivity-claim-refused.md) | 182 | `result-track:7deba7a98508086bf035f6f6d905747851b89614bd2f80aa51b1c38684047d01` |
| 14 | `theorem` | [premature_claim_has_no_theorem_authority](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/premature-claim-has-no-theorem-authority.md) | 195 | `result-track:86aed224cf3a4a1817fe6ae4eebf30d4e5a00a1134fa8e595601fe68282e7d32` |
| 15 | `theorem` | [completed_gate_contains_full_positive_metric_chain](../../../../HarmonicAnalysisOnEuclideanSpaces/GlobalFourierMetricPositivityBoundary.lean/declarations/completed-gate-contains-full-positive-metric-chain.md) | 203 | `result-track:9a32f4a6838bd3b9d552a863dda0fb6de7600f283867a613f4c026d8a1764b94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a49d2f464dc752bb02e149d5e6ed1516da50e9ee51a2de1f2d8be8817a5c6e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/GlobalFourierMetricPositivityBoundary/Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
