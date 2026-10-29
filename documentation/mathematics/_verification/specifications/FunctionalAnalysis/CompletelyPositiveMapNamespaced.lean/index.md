# Verification target: Completely Positive Map Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4876e1c310265e5d5193b5527e7bffc822da6036",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4876e1c310265e5d5193b5527e7bffc822da6036`.

Source path: `GRWTSK/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.PositiveLinearMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.CStarMatrix` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CompletelyPositiveMap](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/completelypositivemap.md) | 55 | `declaration-track:38cf3b00dd9ec4a15db08ef16c7eec30f162089bc4c9e3d9bafbcc6eb9040552` |
| 2 | `class` | [CompletelyPositiveMapClass](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/completelypositivemapclass.md) | 70 | `declaration-track:b0e1606fa2edb61c4e61c20f236e8208f41044d0864b1c5cdc1468b93bc96d26` |
| 3 | `def` | [toCompletelyPositiveLinearMap](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/tocompletelypositivelinearmap.md) | 88 | `declaration-track:85e189eed0c1ba69e00e2234c19607b217476f252a1ce670aa816cfaa811a7d1` |
| 4 | `instance` | [instCoeToCompletelyPositiveMap](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/instcoetocompletelypositivemap.md) | 94 | `declaration-track:2d27c7c8c111d9d5d86b45361433617ff68f3aef9e12b110dd9259d5b4e63147` |
| 5 | `lemma` | [Completely Positive Map Namespaced](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/of-map-cstarmatrix-nonneg.md) | 100 | `result-track:43591ba995c3bd2960ebe7d442b3fedacded62242fdaa4b5ab11991a9da90684` |
| 6 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/instance.md) | 111 | `declaration-track:2f2d897e89b314dfeb617358ba1759c15e3189d924213e737be65e28355ebda8` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/instance-source-edition-4.md) | 122 | `declaration-track:f545aa449bca04cdb123f42738e6d5756caf91c1003f5d36e5600f26a1a47c8d` |
| 8 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/instance-source-edition-3.md) | 131 | `declaration-track:d481c6875a05bde8f65b9bc12441973b48401436774aedaa14be08ef321bc418` |
| 9 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/instance-source-edition-2.md) | 135 | `declaration-track:584d09a765df90292d9d6a6027065caec65aaa8edeb7376bceb23a2aea0d9fe4` |
| 10 | `lemma` | [map_cstarMatrix_nonneg](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/map-cstarmatrix-nonneg.md) | 139 | `result-track:68126c7384511cc02a8bc23dacc4d11104dd0ff4d43b95783ea20a482a8b74e2` |
| 11 | `instance` | [instCompletelyPositiveMapClass](../../../../FunctionalAnalysis/CompletelyPositiveMapNamespaced.lean/declarations/instcompletelypositivemapclass.md) | 163 | `declaration-track:fed87ff8d89868af5be9c6891301bb3e0077299b985d64f1e1a38a2537a873e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1638189b7585b9349d3e665ecd9ce585b5bf2395289c0d2063b83af871fb807 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean","GRWTSK/_verification/specifications/Analysis/CompletelyPositiveMap/Variantc97eca4a5b7f7651828e8a92b987fcbd6a1d3f8faf2e8b7a4f52f7ded7ffe331.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
