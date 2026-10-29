# Verification target: Finite Log Affine First Derivative Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c5528f65bf8cd50253abf7bcfcef64e53d2ca25",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c5528f65bf8cd50253abf7bcfcef64e53d2ca25`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FiniteLogAffineCovariance` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Constructions` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Linear` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Add` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Linear` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Mul` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/weightderivative.md) | 44 | `declaration-track:0e0b00e7743b00621fb7ee85a9a04af50ee0997260ee72323d804685cc07e11c` |
| 2 | `theorem` | [weightDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/weightderivative-apply.md) | 48 | `result-track:738d40b5aacf70cd37c14d518152d1cc695215ed99f58a3323a5a877fbe729a1` |
| 3 | `theorem` | [analyticAt_unnormalizedWeight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/analyticat-unnormalizedweight.md) | 55 | `result-track:59b344795b7f689ad8cf7900794fab291e3ef5c6a4a9921428af8c718ab30202` |
| 4 | `theorem` | [hasFDerivAt_unnormalizedWeight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/hasfderivat-unnormalizedweight.md) | 64 | `result-track:300ab0c94ea2b0fa81692bfe9857756b90d2e51d5d4968864a78885e57469a6a` |
| 5 | `def` | [partitionDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/partitionderivative.md) | 75 | `declaration-track:28afdb155f0d6398e01771346019f0b7b6152cb95660c6c180778b5f1ca35c95` |
| 6 | `theorem` | [partitionDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/partitionderivative-apply.md) | 79 | `result-track:7974a7d9353e4361274e7a03a0859b44b1b05d8c8c26e77113852a6e961a0aa6` |
| 7 | `theorem` | [analyticAt_partition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/analyticat-partition.md) | 88 | `result-track:fb40f2a6dc3fc42831920998e39b8f3df7c6e764249548afda7bbe54c2fd26f2` |
| 8 | `theorem` | [hasFDerivAt_partition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/hasfderivat-partition.md) | 98 | `result-track:9942a1123c3c1be11647a56753924ef4051b1e9def007dd325e8005225b383a9` |
| 9 | `theorem` | [partition_mul_probability](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/partition-mul-probability.md) | 111 | `result-track:713a508604e48f312f40b77fff09dcd6ae66db82d5c6de609e5a30dc85c85d8e` |
| 10 | `theorem` | [partitionDerivative_eq_partition_smul_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/partitionderivative-eq-partition-smul-centroid.md) | 119 | `result-track:1d2692534a88163e9094f1ddaa6ff8c61b8ff523087a13d21fbb509a777cbfc8` |
| 11 | `theorem` | [inv_smul_partitionDerivative_eq_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/inv-smul-partitionderivative-eq-centroid.md) | 131 | `result-track:8de814fd2e22869d39dd8807fe64c466c7ecc83be03a56f70061c339398bc133` |
| 12 | `theorem` | [analyticAt_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/analyticat-logpartition.md) | 141 | `result-track:49a3568fb6b6f0c38cf270a993eebce980ed3385bc51f7c67f12571015adc9d0` |
| 13 | `theorem` | [hasFDerivAt_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/hasfderivat-logpartition.md) | 147 | `result-track:4d7e6ae517d8d27f3cf562753ca9dc9575f11012014f69233668a69226bda79b` |
| 14 | `theorem` | [fderiv_logPartition_eq_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/fderiv-logpartition-eq-centroid.md) | 158 | `result-track:9c79ffd6100ad3e565dc8f712183471f48755f9513e9baea11e255e04dc18481` |
| 15 | `theorem` | [analyticAt_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/analyticat-centroid.md) | 165 | `result-track:901de5502aabf8a4cc6631956604ca12c9ba63fd01c7a0e8dfc4fd732f41f0b3` |
| 16 | `theorem` | [directional_derivative_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition1.lean/declarations/directional-derivative-logpartition.md) | 178 | `result-track:47d80688a8d7527df3905461599547a03f29ea9822de6d49f98f1b4e20fe05cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c9a47c6e9ac2ec432ec2fac1ed0d837eebea0e2eeb946bf5381ab82fd7ef752 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variant1e4eb1d88194854e1d34eb55a3b987ae1cad3d734cfd54a5205c2d6d49c836ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
