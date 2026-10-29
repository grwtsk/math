# Verification target: Full Line Plancherel Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f3ae3ceb13fb051d15c81d5b3b3997b27067588",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLinePlancherel/Variantd505395924a180bcdd93cbf6a6e37f387804a259ea8377fa8e601c505c695dfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FullLinePlancherelNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FullLinePlancherelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f3ae3ceb13fb051d15c81d5b3b3997b27067588`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullLinePlancherel/Variantd505395924a180bcdd93cbf6a6e37f387804a259ea8377fa8e601c505c695dfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullLinePlancherel/Variantd505395924a180bcdd93cbf6a6e37f387804a259ea8377fa8e601c505c695dfb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FourierL1L2Forward` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_sq_toLp](../../../../MeasureAndIntegration/FullLinePlancherelNamespaced.lean/declarations/norm-sq-tolp.md) | 22 | `result-track:6e6022cb202bd174cf4588faf702520261ae9fce6ed7a63f105d8826467bb6e3` |
| 2 | `theorem` | [fourier_integral_norm_sq](../../../../MeasureAndIntegration/FullLinePlancherelNamespaced.lean/declarations/fourier-integral-norm-sq.md) | 33 | `result-track:9ea9ef285d3f42deaa4dc01180074d478df0f3afdcf7935771e2a80492b520c3` |
| 3 | `theorem` | [angular_plancherel](../../../../MeasureAndIntegration/FullLinePlancherelNamespaced.lean/declarations/angular-plancherel.md) | 41 | `result-track:f157affbe50dbb2b30baf1ead307d3c2b0752415bcf92a071ac980eb7f5ea5c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fbea6daa89150c8039e893d2a5d1ebfd5c2016cce2a14affa8c618ed00f05b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/FullLinePlancherel/Variantd505395924a180bcdd93cbf6a6e37f387804a259ea8377fa8e601c505c695dfb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/FullLinePlancherel/Variantd505395924a180bcdd93cbf6a6e37f387804a259ea8377fa8e601c505c695dfb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
