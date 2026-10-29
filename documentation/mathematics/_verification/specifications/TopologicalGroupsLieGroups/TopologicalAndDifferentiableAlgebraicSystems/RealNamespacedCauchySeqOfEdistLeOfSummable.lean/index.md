# Verification target: Real Namespaced Cauchy Seq Of Edist Le Of Summable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2809b2a7167ae98b9320b0f75cbed6acd9d68534",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RealNamespacedCauchySeqOfEdistLeOfSummable.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RealNamespacedCauchySeqOfEdistLeOfSummable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2809b2a7167ae98b9320b0f75cbed6acd9d68534`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_of_edist_le_of_summable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RealNamespacedCauchySeqOfEdistLeOfSummable.lean/declarations/cauchyseq-of-edist-le-of-summable.md) | 32 | `result-track:eb7bf432bb977e583e8674743cfa4241b4ed148c3a3d65cc26bed2fef4f539fc` |
| 2 | `theorem` | [cauchySeq_of_dist_le_of_summable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RealNamespacedCauchySeqOfEdistLeOfSummable.lean/declarations/cauchyseq-of-dist-le-of-summable.md) | 55 | `result-track:bb25c3b240861b3dcbf0e2bb2afee40067f8278765244c21702de0e8e705825e` |
| 3 | `theorem` | [cauchySeq_of_summable_dist](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RealNamespacedCauchySeqOfEdistLeOfSummable.lean/declarations/cauchyseq-of-summable-dist.md) | 76 | `result-track:0962eb8c7c7524ce73e564edded016aafdea72593810fe52e70b5f8647677e9a` |
| 4 | `theorem` | [dist_le_tsum_of_dist_le_of_tendsto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RealNamespacedCauchySeqOfEdistLeOfSummable.lean/declarations/dist-le-tsum-of-dist-le-of-tendsto.md) | 80 | `result-track:0fcd36c22aeda030907eb1f110f133ad3c1f09283c282aed2b1adcd11af6848c` |
| 5 | `theorem` | [dist_le_tsum_of_dist_le_of_tendsto₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RealNamespacedCauchySeqOfEdistLeOfSummable.lean/declarations/dist-le-tsum-of-dist-le-of-tendsto-source-edition-2.md) | 90 | `result-track:394d2d2ce634dda3b60be80cfa6512c4c843e9a1e125f41226008bd9a2bb6689` |
| 6 | `theorem` | [dist_le_tsum_dist_of_tendsto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RealNamespacedCauchySeqOfEdistLeOfSummable.lean/declarations/dist-le-tsum-dist-of-tendsto.md) | 95 | `result-track:374ac9dc5940126a096b8f812e89db6ed13cde41b47ac8918145b8477788f863` |
| 7 | `theorem` | [dist_le_tsum_dist_of_tendsto₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RealNamespacedCauchySeqOfEdistLeOfSummable.lean/declarations/dist-le-tsum-dist-of-tendsto-source-edition-2.md) | 101 | `result-track:d442c656b5e5d9de6a930e08265d64030f0e0ee81510bc13a0d6d9e4a1251b81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49a0fbdc823e97bfa79ca454c2e138f3f69675ce29d2daaa7e4ffe7ad4cef750 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Real/Variantcc0c2b677f264e100442eb21ec62874ddd5e2b0173308e0cd830ac2c82afdc27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
