# Verification target: Reduced Filter Inverse Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "074c85ba77c38b1d12238ec978ebb8ba7d48246d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `074c85ba77c38b1d12238ec978ebb8ba7d48246d`.

Source path: `GRWTSK/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrectedControllerAnalytic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Bounded` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourcePolynomial_leading_error](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/declarations/sourcepolynomial-leading-error.md) | 22 | `result-track:b428e30c0beb8ffb73225bf8f07afb181435f1ba3b40acd02ca098bfcaf06a8c` |
| 2 | `theorem` | [sourceTailGap_pos](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/declarations/sourcetailgap-pos.md) | 44 | `result-track:58e1100e71b6032cbb791beb0454e0877c90856a5b77830a84f4742d75b2cd43` |
| 3 | `theorem` | [sourceEndpoint_tail_lower](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/declarations/sourceendpoint-tail-lower.md) | 49 | `result-track:78ccc98abd69a8add0b089a40a636aa723e176d7550ec532d50cc3d76b6dcbe0` |
| 4 | `theorem` | [reducedW_closedFormula](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/declarations/reducedw-closedformula.md) | 97 | `result-track:273697ad09d7b740ed1d474891e0df075283b673fdec4e06780fa4e2e5e1c23f` |
| 5 | `theorem` | [norm_add_half_ge](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/declarations/norm-add-half-ge.md) | 117 | `result-track:71ecbe384fc791c074de26ec1d6d47ba0625d734e11b004951a4b925dea89073` |
| 6 | `theorem` | [reducedW_tail_lower](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/declarations/reducedw-tail-lower.md) | 127 | `result-track:ca36b1a68413f8688b3a5ade2c473b3989282a6ba21251f0e70be744b74dc398` |
| 7 | `theorem` | [reducedW_inverse_tail_bound](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/declarations/reducedw-inverse-tail-bound.md) | 165 | `result-track:9162aa570012eb926e203f2371414aba51dd02e03ea591073c562fdcaf939ece` |
| 8 | `theorem` | [reducedW_inverse_uniform_bound](../../../../GeneralTopology/ReducedFilterInverseNamespaced.lean/declarations/reducedw-inverse-uniform-bound.md) | 182 | `result-track:f83c03079b37d9dcd5fb05b0ea4c044239b019a741e75e3e7c47dcd100fbd936` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88bdba5995a7056850ac06720e16f18fbc44cb2405a511c8d702101e6f0dd4a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ReducedFilterInverse/Variant362081e109dca18386be1878e59097ae1a161f633425a02eb8ff654c28e5e840.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
