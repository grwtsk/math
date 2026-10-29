# Verification target: CStar Algebra Continuous Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c7b57a1328db35cb45a901910bdfb36328dea4d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousMap/Variant68e6090214ae5d78c3e7188c92932f587bf4818053b89df465eb49870de98b2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c7b57a1328db35cb45a901910bdfb36328dea4d`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousMap/Variant68e6090214ae5d78c3e7188c92932f587bf4818053b89df465eb49870de98b2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousMap/Variant68e6090214ae5d78c3e7188c92932f587bf4818053b89df465eb49870de98b2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.Classes` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ZeroAtInfty` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance.md) | 32 | `declaration-track:075f8ba6d001c243d5811de4741e8c1224f2fd294f567fdd531bebabfc305936` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance-source-edition-2.md) | 35 | `declaration-track:139136e445013955a9ec9a93f0b9cfaac5c04720519cf37b08ed0806e227aadf` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance-source-edition-8.md) | 39 | `declaration-track:ca8eae011ab30b460669aca9c024dd8da42435a848b598db67d289ecc88f0e83` |
| 4 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance-source-edition-7.md) | 42 | `declaration-track:ba225376a15b7749218e3f7a033e81cc35423ab8d4ceb2e0db6e70800dd1a7df` |
| 5 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance-source-edition-10.md) | 52 | `declaration-track:efb798b8fc7fde539b8cbf85666c5e52711d272a88526ee07742f98fa17d624e` |
| 6 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance-source-edition-9.md) | 55 | `declaration-track:e5f872bca44bbad7979294e15f036aae1605ff7654f3ca5576c6c338e29fcc06` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance-source-edition-4.md) | 59 | `declaration-track:6eab0e2f29b11e2ec81ef82eaf8b0145080a086042465bafaaad7ec5793f6895` |
| 8 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance-source-edition-5.md) | 62 | `declaration-track:96d36e318056ef611693a5ce8a14857164055387465993788b154d45a5ca54f1` |
| 9 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance-source-edition-3.md) | 72 | `declaration-track:25b4b13811080dfe89987dd1cb0f1c46aba336e6f30899692954a5ef6923daed` |
| 10 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarAlgebraContinuousMapNamespaced.lean/declarations/instance-source-edition-6.md) | 75 | `declaration-track:b1999e907af31ba9d6426664d3781c59cd9b18f38376004269070d39ccdccb43` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fa9bd0c65fa0e9a6dd49df05b6cd358d991e832caa8c9b2306d8b039ba041e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousMap/Variant68e6090214ae5d78c3e7188c92932f587bf4818053b89df465eb49870de98b2b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContinuousMap/Variant68e6090214ae5d78c3e7188c92932f587bf4818053b89df465eb49870de98b2b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
