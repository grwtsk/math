# Verification target: Source Actual Complex Endpoint Asymptotic Actual Leading Complex Coefficient Integrable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "026d5c67ae801c1c7089eeecc662aad6a508c2c8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `026d5c67ae801c1c7089eeecc662aad6a508c2c8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEdgeLeadingLimit` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualEndpointExtension](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualendpointextension.md) | 24 | `declaration-track:d77b9da3f1d89d563c9555863867e32de51baf4da647a7ee7a64a5c2441bd548` |
| 2 | `def` | [actualComplexEndpointIntegrand](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualcomplexendpointintegrand.md) | 28 | `declaration-track:dfd78f571c1f9da661c931d3ee7892d87e29a4e05ba26e72c4d8315fb7d3d691` |
| 3 | `def` | [actualLeadingComplexCoefficient](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualleadingcomplexcoefficient.md) | 32 | `declaration-track:9400fd15bb838bf787c8d257d5f7eaedf79e98ed1fa00f93b0625127a19ffc93` |
| 4 | `theorem` | [actualEndpointMajorant_integrable](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualendpointmajorant-integrable.md) | 37 | `result-track:3bced2569647fc1bcee04120ad05090cfe1ef3eb7a08aa7c26bd1e12b0efb5db` |
| 5 | `theorem` | [actualComplexEndpointIntegrand_norm_le](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualcomplexendpointintegrand-norm-le.md) | 55 | `result-track:4132c56b73a4d27e3097a5b35e8862601766ed90e18ca139cf3d805d75a6eb71` |
| 6 | `theorem` | [actualComplexEndpointIntegrand_aestronglyMeasurable](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualcomplexendpointintegrand-aestronglymeasurable.md) | 70 | `result-track:85988f579c7ae610d5f74217ce342a12db2539331e93bdcd68e7e57a7f3cb6fb` |
| 7 | `theorem` | [actualComplexEndpointIntegrand_integrable](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualcomplexendpointintegrand-integrable.md) | 84 | `result-track:a243598639578e505990db3e6e7cf8cbac2b8c7fc683953e4b5f7608909a09a9` |
| 8 | `theorem` | [actualComplexEndpointIntegrand_tendsto](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualcomplexendpointintegrand-tendsto.md) | 92 | `result-track:d05ad9a05452f1f66a97a5b3bd4c9f54a9cab0823b28e867d19088488e52e0c3` |
| 9 | `theorem` | [actualLeadingComplexCoefficient_integrable](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualleadingcomplexcoefficient-integrable.md) | 104 | `result-track:2672dcec2fab6864280adeb8ef861a88d56a22b06a734bd8780c04e6d34ee7ce` |
| 10 | `theorem` | [actualComplexEndpoint_integral_tendsto](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualcomplexendpoint-integral-tendsto.md) | 121 | `result-track:ce853b0e0d262cec2d0f3003720497db4092b37e485b067612e06fc86b29309c` |
| 11 | `def` | [actualSourceComplexTransform](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualsourcecomplextransform.md) | 142 | `declaration-track:92f597cbb327779ef23faad92787e4fc41def3c041b01433d8be7669274156b0` |
| 12 | `theorem` | [actualSourceComplexTransform_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualsourcecomplextransform-intervalintegrable.md) | 147 | `result-track:cb51de9354813449c519f7f1d28a0d7dbc9c436d00b15d540310a805c128e11e` |
| 13 | `theorem` | [actualComplexEndpoint_integral_eq_interval](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualcomplexendpoint-integral-eq-interval.md) | 155 | `result-track:ac1b32f308d22a972248906535b0cf77a86d416e837970b2818746fbe19965cf` |
| 14 | `theorem` | [actualSourceComplexTransform_normalized_eq_endpoint](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualsourcecomplextransform-normalized-eq-endpoint.md) | 176 | `result-track:6203ef7c90d793f9ebd83f567404559dd953b51b3a44fd5831c8b1836eee2d45` |
| 15 | `theorem` | [actualSourceComplexTransform_normalized_tendsto](../../../../MeasureAndIntegration/SourceActualComplexEndpointAsymptoticActualLeadingComplexCoefficientIntegrable.lean/declarations/actualsourcecomplextransform-normalized-tendsto.md) | 217 | `result-track:b66ce883be9fceab73bc832c36d983fa24ab34147a05886e114b29a85aca60c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b92afa4ea3779e8f6ccf4ce5ca168bbc492ea15b9102a4ef00a9a789f1e8c20b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variantb728fcdeedf7198ab30540ac19bd5c6e006cf3f0a50814926b61a68fa6c5a99b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
