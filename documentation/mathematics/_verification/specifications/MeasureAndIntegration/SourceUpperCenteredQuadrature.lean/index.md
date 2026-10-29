# Verification target: Source Upper Centered Quadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "401fa767dd75e73aa853915ac1e24e0a8841c97f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `401fa767dd75e73aa853915ac1e24e0a8841c97f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCubicCenteredRows` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceFractionalQuadrature` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [centered_deriv_intervalIntegrable](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/declarations/centered-deriv-intervalintegrable.md) | 29 | `result-track:7ffb7fac296a7ccbfadbceff4a9e3bb7e29a63ff4ce715c35b7113e9184ce709` |
| 2 | `theorem` | [finite_upper_centered_quadrature](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/declarations/finite-upper-centered-quadrature.md) | 41 | `result-track:033ffa4e2badfd7e8e91274502f73e9626495e2027288189e140c91d54febaae` |
| 3 | `theorem` | [centered_deriv_upper_integrable](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/declarations/centered-deriv-upper-integrable.md) | 74 | `result-track:dea852ddfa8bb6dd1390975995748d6d47af287250ab9ef6bfab7d8a26debe68` |
| 4 | `theorem` | [upper_centered_quadrature](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/declarations/upper-centered-quadrature.md) | 84 | `result-track:4178fc97dbf33bb4543a1ac751c198dfae2b4ccf6a087573a754e67b22a7ba39` |
| 5 | `theorem` | [actual_logProfile_upper_centered_quadrature](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/declarations/actual-logprofile-upper-centered-quadrature.md) | 111 | `result-track:b30170c2d9882af0963608c893c8a5abac19b73c2057fe8c235bc749334b1abf` |
| 6 | `def` | [cubicSignedUpperModelRow](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/declarations/cubicsigneduppermodelrow.md) | 124 | `declaration-track:e65e35fc8f5e64de71d07b2780386287538d7a8fe8e038b930f0524f8cf1f1de` |
| 7 | `theorem` | [cubic_signed_upper_model_row_integrable](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/declarations/cubic-signed-upper-model-row-integrable.md) | 128 | `result-track:b30c2c710da830d9f97552f7893f7a3eb646e05ee6e96fa5d33a430ac08d152b` |
| 8 | `theorem` | [actual_logProfile_upper_cubic_sampling](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/declarations/actual-logprofile-upper-cubic-sampling.md) | 144 | `result-track:20c6483ee6fc575ddf0deac8469a4a60495f11d4b493a245621f99984d2ce840` |
| 9 | `theorem` | [actual_short_divisor_upper_cubic_sampling](../../../../MeasureAndIntegration/SourceUpperCenteredQuadrature.lean/declarations/actual-short-divisor-upper-cubic-sampling.md) | 162 | `result-track:79fce79b127cdcf3815352542d88e90579bcbf4d3442d9a7be4661f938138e20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc1445ce9ab801f85d079e06e2e7ec8698204f7677ad455d219b0941b6abb5c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
