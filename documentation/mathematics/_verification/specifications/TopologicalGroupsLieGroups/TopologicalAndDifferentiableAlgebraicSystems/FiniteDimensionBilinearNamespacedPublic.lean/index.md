# Verification target: Finite Dimension Bilinear Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fb33573a2607b6736d8defbeff1348ebf629fd5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variantc239012fdf3295cd0f3df0f50a38d81ddf991938e52a047b1b63aa8b60847b6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimensionBilinearNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimensionBilinearNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fb33573a2607b6736d8defbeff1348ebf629fd5`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variantc239012fdf3295cd0f3df0f50a38d81ddf991938e52a047b1b63aa8b60847b6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variantc239012fdf3295cd0f3df0f50a38d81ddf991938e52a047b1b63aa8b60847b6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LinearMap.toContinuousBilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimensionBilinearNamespacedPublic.lean/declarations/linearmap-tocontinuousbilinearmap.md) | 46 | `declaration-track:fcb00a28dc385fd2fcf1a517f50144fcbfbc3bff73d8e0c516042f51d05ea7eb` |
| 2 | `lemma` | [LinearMap.toContinuousBilinearMap_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimensionBilinearNamespacedPublic.lean/declarations/linearmap-tocontinuousbilinearmap-apply.md) | 51 | `result-track:3c7300a999518b39db38f569de72f3f9119841c2bb5d8d9091187b8a43e08ec7` |
| 3 | `def` | [IsBilinearMap.toContinuousBilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimensionBilinearNamespacedPublic.lean/declarations/isbilinearmap-tocontinuousbilinearmap.md) | 56 | `declaration-track:ed34d48bbddd8014d68a1d1b616a11543ec3d041efd0e5e8751685258f713028` |
| 4 | `lemma` | [IsBilinearMap.toContinuousBilinearMap_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimensionBilinearNamespacedPublic.lean/declarations/isbilinearmap-tocontinuousbilinearmap-apply.md) | 61 | `result-track:c12d95eb7574b4281a7e82aca9acd1adccec55c235d984b1c45aff1ddd2bb961` |
| 5 | `def` | [ContinuousLinearMap.evalL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimensionBilinearNamespacedPublic.lean/declarations/continuouslinearmap-evall.md) | 73 | `declaration-track:4cc1c0c7e4c9bd00ca2702b852d3d716d2978c280d7a62bcdd36eb137f2c5a5b` |
| 6 | `lemma` | [ContinuousLinearMap.evalL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FiniteDimensionBilinearNamespacedPublic.lean/declarations/continuouslinearmap-evall-apply.md) | 77 | `result-track:015f888c7b7fd467f7dd4e228d327256e6784e9fc65aee69db7b5b8131373717` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=522bcf8bac09beabd56b25d8a0e8e5c91a3b2669ab3cc480197fbd4954ad0319 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variantc239012fdf3295cd0f3df0f50a38d81ddf991938e52a047b1b63aa8b60847b6b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FiniteDimensionBilinear/Variantc239012fdf3295cd0f3df0f50a38d81ddf991938e52a047b1b63aa8b60847b6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
