# Verification target: Riesz Lemma Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5994394feac314c6492b5ae8c95b2a8555529528",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/RieszLemma/Variante04338e85c296954c77612a3023c8486d09baff06407b14af76fcd4986d0da2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/RieszLemmaNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/RieszLemmaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5994394feac314c6492b5ae8c95b2a8555529528`.

Source path: `GRWTSK/Topology/MetricTopology/RieszLemma/Variante04338e85c296954c77612a3023c8486d09baff06407b14af76fcd4986d0da2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/RieszLemma/Variante04338e85c296954c77612a3023c8486d09baff06407b14af76fcd4986d0da2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Seminorm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.HausdorffDistance` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [riesz_lemma](../../../../FunctionalAnalysis/RieszLemmaNamespaced.lean/declarations/riesz-lemma.md) | 47 | `result-track:d131c37445f682585ec72e7123dd79cdcf7c1dc2308d82b13ab3ed76d3eb196b` |
| 2 | `theorem` | [riesz_lemma_of_norm_lt](../../../../FunctionalAnalysis/RieszLemmaNamespaced.lean/declarations/riesz-lemma-of-norm-lt.md) | 88 | `result-track:1d55e16e70405250249dac2cfeeff4c1deaaecf7c2b3ba8f2361206c29aeec28` |
| 3 | `theorem` | [Metric.closedBall_infDist_compl_subset_closure](../../../../FunctionalAnalysis/RieszLemmaNamespaced.lean/declarations/metric-closedball-infdist-compl-subset-closure.md) | 112 | `result-track:689aa67412f20f5b440463214f7d1d7065eb72f2500e747d2bd2605a434edfb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6414c0dfb8a67d04fbd7617b180601334295948ff71b4d8b98f1ebdc583c86a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/RieszLemma/Variante04338e85c296954c77612a3023c8486d09baff06407b14af76fcd4986d0da2f.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/RieszLemma/Variante04338e85c296954c77612a3023c8486d09baff06407b14af76fcd4986d0da2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
