# Verification target: Section

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e682c44a8f40002a7c863451019e600baa02dadb",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Section/Variantbb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e682c44a8f40002a7c863451019e600baa02dadb`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Section/Variantbb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Section/Variantbb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Projective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.OpenQuotient` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_out_continuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/exists-out-continuouslinearmap.md) | 31 | `result-track:5e5b209c8367c4cf042c4a386c5c1a54b02c290d9b9504117e7ba07949ba6188` |
| 2 | `def` | [outCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/outclm.md) | 40 | `declaration-track:d9e362978571acb2573737746180c487d76fb5879a04880a3b9463f3b0c6d903` |
| 3 | `theorem` | [mkCLM_comp_outCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/mkclm-comp-outclm.md) | 44 | `result-track:8224004d980b60a184d5aced7b95b49799f42a44d4b9a1fc6106f46a1d9dd0dd` |
| 4 | `theorem` | [mk_outCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/mk-outclm.md) | 49 | `result-track:e2a63547297af6669074466eddae2d50a76353670584e983787dabe6244b0c13` |
| 5 | `theorem` | [mk_comp_outCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/mk-comp-outclm.md) | 53 | `result-track:d7acb64b422330ae4f55fbd73ea8be02d5a0f219f4f14c38669cc2b1b911d68b` |
| 6 | `theorem` | [postcomp_mkCLM_surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/postcomp-mkclm-surjective.md) | 56 | `result-track:78bf26fedebd49eb9b2d6d384b441327e572ec8dd162079a898c034a520a8c34` |
| 7 | `theorem` | [isEmbedding_outCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/isembedding-outclm.md) | 64 | `result-track:2dede333acc210678829ab3f8866c7931ffb9010d8dfbdeb743933f2d7ef18f8` |
| 8 | `theorem` | [outCLM_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/outclm-injective.md) | 70 | `result-track:f171e5b64913eb8fd5c64923710c82905987a4e6c2f7a0f2b3b5d3369148aaba` |
| 9 | `theorem` | [outCLM_isUniformInducing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/outclm-isuniforminducing.md) | 80 | `result-track:62aaa6156884df9170d96bc3c83bde7ee6442f37d991c128715f7397d1431fc6` |
| 10 | `theorem` | [outCLM_isUniformEmbedding](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/outclm-isuniformembedding.md) | 84 | `result-track:34ca1434b76196791220b30dcd9b694c7909770022feb4fc71e05ce65fede036` |
| 11 | `theorem` | [outCLM_uniformContinuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/Section.lean/declarations/outclm-uniformcontinuous.md) | 88 | `result-track:047382935eaabf81f69e9db570dbce9bfcf0d2e24aab91ac17dfc2223fc6f7f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=394444e453f0a1966498ed95224e0d6ea60a5bc055f169df38f37f7e39cdfcb9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Section/Variantbb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Section/Variantbb0ba5e9ddfb0f3e43f98a700c5bf06bf3c70c99d8be09147889ed86a8c38e07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
