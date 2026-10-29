# Verification target: Finite Log Affine First Derivative Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3cc8304320d6e201904f150a40b83cae2f400c3",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3cc8304320d6e201904f150a40b83cae2f400c3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean.json)

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
| 1 | `def` | [weightDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/weightderivative.md) | 44 | `declaration-track:d4e91c4fd610e401527b896dda24affd02d7d980919e66819ff320f08cc492d9` |
| 2 | `theorem` | [weightDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/weightderivative-apply.md) | 48 | `result-track:337656a5cda3cfb92c27b5a9bc145fcb6de1502babc7d9255dcd70d2041a7a7e` |
| 3 | `theorem` | [analyticAt_unnormalizedWeight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/analyticat-unnormalizedweight.md) | 55 | `result-track:f01e2bba44ed3dad3f1ea8e04be8d396a88f82254e1aba5aad5fff92b1a0f99b` |
| 4 | `theorem` | [hasFDerivAt_unnormalizedWeight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/hasfderivat-unnormalizedweight.md) | 65 | `result-track:153fcf218d8d6b38c60cfb7a10598541cef7c601375049fed580b6f8efd2d652` |
| 5 | `def` | [partitionDerivative](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/partitionderivative.md) | 76 | `declaration-track:a60f8796af080d85a3e053f3d2ce4a423e93313c6df4819d25dcd5dcaeca1546` |
| 6 | `theorem` | [partitionDerivative_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/partitionderivative-apply.md) | 80 | `result-track:94c43a14c1e15603825323f540454a0a5fcfe854c6eeae695b01c182b84564ca` |
| 7 | `theorem` | [analyticAt_partition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/analyticat-partition.md) | 89 | `result-track:97d919e6569745d0f40c182ea66d17a117c8eacb7db249b013cbdcdda3e79451` |
| 8 | `theorem` | [hasFDerivAt_partition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/hasfderivat-partition.md) | 99 | `result-track:a6b54622da72e3bfc2984ea4f1975c020f5fb1e24ee4508c9bb750859a064a1e` |
| 9 | `theorem` | [partition_mul_probability](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/partition-mul-probability.md) | 112 | `result-track:666f2fdcbbd5d1669e6a7196fdb4a26ce0dc142ab7318e011b73327f87af3803` |
| 10 | `theorem` | [partitionDerivative_eq_partition_smul_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/partitionderivative-eq-partition-smul-centroid.md) | 120 | `result-track:302ff1a935c67bf7263b860b8891bf672b9a42bd3d9ee92a716031ae9a24a08e` |
| 11 | `theorem` | [inv_smul_partitionDerivative_eq_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/inv-smul-partitionderivative-eq-centroid.md) | 132 | `result-track:f95b4155c08277743b686b8f6e35253294586dd80f6b40b2475a7290fc0df4c7` |
| 12 | `theorem` | [analyticAt_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/analyticat-logpartition.md) | 142 | `result-track:187fd381bb64b56af725ce6345679bd95f6b8f98ffcabe07f753c86df09816c6` |
| 13 | `theorem` | [hasFDerivAt_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/hasfderivat-logpartition.md) | 149 | `result-track:57359e87c05e42a92d6012a1962ad860bab708222f405706d95306e9af9da336` |
| 14 | `theorem` | [fderiv_logPartition_eq_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/fderiv-logpartition-eq-centroid.md) | 160 | `result-track:bcc3e639ccca825373ec5e2327d2482b535e13775a8c56ab55904f8d96397668` |
| 15 | `theorem` | [analyticAt_centroid](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/analyticat-centroid.md) | 167 | `result-track:2edd298db206c49d289f2219b1dfe8afdb58beb09e47244b68797cc79aaaa550` |
| 16 | `theorem` | [directional_derivative_logPartition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteLogAffineFirstDerivativeEdition2.lean/declarations/directional-derivative-logpartition.md) | 180 | `result-track:d6f78e3a806376676ca920e362fcb1f2ae32aaac2dbd62a2d891a7c54e88bcff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b1adde5f75c17dac60fd738c567495e0e3a0d2fa8f092078c97d2997841baa2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/FiniteLogAffineFirstDerivative/Variantb128966239cd1080afcb935f4b4578643c3a989df4fec465cd0caefdc768907e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
