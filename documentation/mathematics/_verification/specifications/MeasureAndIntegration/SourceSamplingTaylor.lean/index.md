# Verification target: Source Sampling Taylor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b74de77967da4e16e5e324cb89f06fba8c14c3e7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b74de77967da4e16e5e324cb89f06fba8c14c3e7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePlainSamplingTerm](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/sourceplainsamplingterm.md) | 28 | `declaration-track:0780a22a8aa0b8e34d0922d718798229747852147d519374ab89e7a45675fc00` |
| 2 | `def` | [sourceLogSamplingTerm](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/sourcelogsamplingterm.md) | 33 | `declaration-track:61838bc3e92b6d387f0fb038be03c9b4e1f5a12a8f716b236c6f627e15b5e959` |
| 3 | `theorem` | [sourcePlainSamplingTerm_eq_source_weight](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/sourceplainsamplingterm-eq-source-weight.md) | 37 | `result-track:aa8f5d0f0387710d97ecbd6844ebe16bbb1079c673ca46f7c1d78f4169be5738` |
| 4 | `theorem` | [sourceLogSamplingTerm_eq_source_weight](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/sourcelogsamplingterm-eq-source-weight.md) | 47 | `result-track:ed12b1ab2deb067c57ced3e14b25e1692ae3c5c3fa4b95c68f20fc59f7d81634` |
| 5 | `theorem` | [integral_comp_exp_univ](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/integral-comp-exp-univ.md) | 57 | `result-track:2cbc4ff7d93707851ccec0f91282b17caca1f26fcb83ae5c7d91e13cfcc79cdd` |
| 6 | `theorem` | [shifted_zero_moment](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/shifted-zero-moment.md) | 65 | `result-track:d245c03e0dad6513b52effa2c31f93302feedd853e661e773e1149cb5252cf93` |
| 7 | `theorem` | [sourcePlainSampling_integrableOn](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/sourceplainsampling-integrableon.md) | 77 | `result-track:62fe9e352a758f162b18fed1f3e06ba37ded314d6da3cfd18598ff8676f406af` |
| 8 | `theorem` | [sourceLogSampling_integrableOn](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/sourcelogsampling-integrableon.md) | 104 | `result-track:45f8c5b64bc797d38345efce81f3da4d6d4a16d286cf1e2eae1027a40ba464c8` |
| 9 | `theorem` | [sourcePlainSampling_integral_zero](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/sourceplainsampling-integral-zero.md) | 133 | `result-track:c6a98b4579b4c0f8953d80972a05be0cbf7b82002e7dfed8eaf784061f948f85` |
| 10 | `theorem` | [sourceLogSampling_integral_zero](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/sourcelogsampling-integral-zero.md) | 148 | `result-track:f10b3b16d6e18c2191c30355576da028653e538c9d7419ee6bfbb95730ebba30` |
| 11 | `def` | [correlationTaylorRemainder](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/correlationtaylorremainder.md) | 170 | `declaration-track:4316e3bd11dd2b2e7ceded6c75a7a1fe9a4b4511c534ba8898f19fc66cb9bc7e` |
| 12 | `theorem` | [correlationTaylorRemainder_hasDerivAt](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/correlationtaylorremainder-hasderivat.md) | 176 | `result-track:43567e176bf0203e44e840cea3e422346c24fc3c5ddca4091a0bf26141151630` |
| 13 | `theorem` | [correlationTaylorRemainder_abs_le](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/correlationtaylorremainder-abs-le.md) | 186 | `result-track:876a2b513d95a27e12aba13e8ae8de073b34200870ea4f7ad524ada9c67e9a98` |
| 14 | `theorem` | [correlationTaylorRemainder_deriv_abs_le](../../../../MeasureAndIntegration/SourceSamplingTaylor.lean/declarations/correlationtaylorremainder-deriv-abs-le.md) | 191 | `result-track:7602824ba749bc554352a4bf8a82e1785cd016225461c5acc53b97c6d60ddf99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a45f2554407bb6b9e8a1fdf20ff662cbf7e46de221f4982d16fe2a55f010154 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceSamplingTaylor/Variant84b21a2093d3a4a938df1e5d136e7c175df73a5a49da30bc55e6145eee519636.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
