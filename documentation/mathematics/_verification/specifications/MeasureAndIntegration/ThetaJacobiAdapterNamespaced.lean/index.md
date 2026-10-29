# Verification target: Theta Jacobi Adapter Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78881aebde5859e97593df4d91859943e502f018",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78881aebde5859e97593df4d91859943e502f018`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.PositiveFourSector` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.CatalanJacobi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicMoment](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/cyclicmoment.md) | 46 | `declaration-track:5d46871b2dcb9e86e5469947d23dc87fb2f878117a4034c817795c36859faa13` |
| 2 | `theorem` | [intertwiner_power_apply](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/intertwiner-power-apply.md) | 51 | `result-track:179d802d1f98c982f6d194071fc87cfa7e57342aed8da513c6fe8f35bd2006e1` |
| 3 | `theorem` | [cyclicMoment_transport](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/cyclicmoment-transport.md) | 62 | `result-track:8bfc1340399866d66d85db94324f41768e8d69830e84dfbc396a097e3545534d` |
| 4 | `theorem` | [first_moment_obstructs_transport](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/first-moment-obstructs-transport.md) | 72 | `result-track:08dd608e0679c4c368b05ebc6d3a5eddd4216a511a4cc7b9e116694045f089a2` |
| 5 | `def` | [atomicMagnitudeMoment](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/atomicmagnitudemoment.md) | 85 | `declaration-track:c6aa7724bc70b87ae755d543ae1b3aebddf59a0ecf59dd90c5276c28a86ea309` |
| 6 | `theorem` | [positive_atomic_first_moment](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/positive-atomic-first-moment.md) | 90 | `result-track:4da98baf60766a810c1187bab3f2dba2d4137b51d7edfa620721630109ebf1a5` |
| 7 | `theorem` | [positive_atomic_moments_not_free](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/positive-atomic-moments-not-free.md) | 103 | `result-track:a3988638b2b47f1d4ed5af14aee0687e9baa2f23a764a71ac923f8226decd40a` |
| 8 | `theorem` | [positive_atomic_moments_not_canonical_free](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/positive-atomic-moments-not-canonical-free.md) | 113 | `result-track:0b029ce6b09b0313df1c5bd158d203c8055d088263e31b8b175174434b1af6f4` |
| 9 | `def` | [measureMagnitudeMoment](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/measuremagnitudemoment.md) | 128 | `declaration-track:372b48309eb7ec90d1d9d4f85cd88807a653b73a8b67ff657513108d3b3e1823` |
| 10 | `theorem` | [measure_first_moment_positive_iff](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/measure-first-moment-positive-iff.md) | 133 | `result-track:5cc50e859de986452483391475deb4e119698f929033874cec13456a3dc30961` |
| 11 | `theorem` | [measure_first_moment_positive_of_positive_support](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/measure-first-moment-positive-of-positive-support.md) | 141 | `result-track:f07bf2991c202eb50144d1b6efd7530bac2baae36420a6a17ca80ba36a5d77c0` |
| 12 | `theorem` | [measure_moments_not_canonical_free](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/measure-moments-not-canonical-free.md) | 152 | `result-track:719a6df6a4d6acdc904f99766fa59f36ef6614354fad65f863805fbe659c4415` |
| 13 | `theorem` | [involution_form_eq_sector_difference](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/involution-form-eq-sector-difference.md) | 168 | `result-track:3cabcac072103cf59cb37170077dc57f92bde3e2f7c94136f2e7a3b1aa41b307` |
| 14 | `theorem` | [negative_sector_form_negative](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/negative-sector-form-negative.md) | 185 | `result-track:7e0d75398646c2ba889a801315366f17797d418d8e32ef8b0ae6515274c6f799` |
| 15 | `theorem` | [negative_sector_prevents_magnitude_identification](../../../../MeasureAndIntegration/ThetaJacobiAdapterNamespaced.lean/declarations/negative-sector-prevents-magnitude-identification.md) | 196 | `result-track:5aa72b1272be315c3a7695cb57a0cd552dcb9d212cf00726e65b786b9ec495a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c409bd79d6afec8c9c59a031f045e6cecec7c2ecffc70abb21e60344ec0bee6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaJacobiAdapter/Variant960797cce49a0e3a1b719104bbadd3697dcb904f9a9ed4c0c0d18fa66b8dd52e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
