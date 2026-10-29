# Verification target: Heat Deficits On The Actual Multiplicity Bearing Zeta Zeros

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "345cc43ea67a5458e8f45431c621f7d9f6b42c04",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `345cc43ea67a5458e8f45431c621f7d9f6b42c04`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceHeatDeficit` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Constructions` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualDelta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualdelta.md) | 33 | `declaration-track:881b3534d48b5509b340ba8f401d557cb0659957e57d0fd70b60f5f60bdd0f4b` |
| 2 | `def` | [actualGamma](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualgamma.md) | 36 | `declaration-track:9f25c49b49c12629c1ff3c5f93d51901a82e4c3ce8dd904a04b75160d1ac491d` |
| 3 | `theorem` | [actualDelta_abs_le_half](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualdelta-abs-le-half.md) | 39 | `result-track:6f7798ef14879ca440c5e0662c26dab0048c8c7a37153f9d0d7a80dc825c4415` |
| 4 | `theorem` | [shiftedValue_norm_sq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/shiftedvalue-norm-sq.md) | 45 | `result-track:0444904537cdaa456705d3df5e0e442eb43f2fc22735f2d960f51f19f6633a3f` |
| 5 | `theorem` | [gaussian_polynomial_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/gaussian-polynomial-bound.md) | 54 | `result-track:5f61ed07765d22f242fd6fcf538f7fb5dc83b79e27be7171e51d979fbb384796` |
| 6 | `theorem` | [actualGaussian_le_source_weight](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualgaussian-le-source-weight.md) | 81 | `result-track:683d34637d011db6cd670e5589405d9a6920a583bf45d6a24bfb6da3b91b5799` |
| 7 | `theorem` | [actualGaussian_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualgaussian-summable.md) | 112 | `result-track:4bb261a38f41fc4260581e6d9d2575f4a6da53e9100a98b99cb276650050d674` |
| 8 | `theorem` | [actualDeficit_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualdeficit-summable.md) | 122 | `result-track:94522edcc3c83f19b2a9cbed762312f0bc940f2e5aca900adf620e5d7f704333` |
| 9 | `def` | [actualGaussianMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualgaussianmass.md) | 129 | `declaration-track:0fa44b995061567d5cd87b64ed1c6202ca2efcffe9765a9567487d9064e1cb3f` |
| 10 | `def` | [actualHeatDeficit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualheatdeficit.md) | 133 | `declaration-track:59545c9adda7e7a4d824ad0cc3bc6469a3271db253193072bae4c820d7a63ec3` |
| 11 | `theorem` | [actualGaussianMass_eq_multiplicity_sum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualgaussianmass-eq-multiplicity-sum.md) | 137 | `result-track:6fcf43043532a3eded9b902b7cd0ea3977f4726b369d847ac476f14255410f24` |
| 12 | `theorem` | [actualHeatDeficit_eq_multiplicity_sum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualheatdeficit-eq-multiplicity-sum.md) | 148 | `result-track:92db4c0b9a281442cade7c9f9dbe713ce221c492e52c5b13bcfa35c891eab63d` |
| 13 | `theorem` | [actualHeatDeficit_bounds](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actualheatdeficit-bounds.md) | 164 | `result-track:ea9a850dc85315c19b4951d825fcce647803ed0f989ea5b29cc1e991d0207752` |
| 14 | `theorem` | [actual_excludes_closed_region](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actual-excludes-closed-region.md) | 171 | `result-track:c01ba8347ffad70dabfff2b2866ea2d37750a575c1e41a7853d5dd92dfdf0f6a` |
| 15 | `theorem` | [actual_displacements_zero_of_exhausting_certificates](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/actual-displacements-zero-of-exhausting-certificates.md) | 180 | `result-track:c8a5a631d8badd67976422074be3d4e9d317291be4f0e19b4d3f19fb6fbb62e6` |
| 16 | `theorem` | [riemannHypothesis_of_exhausting_actual_certificates](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/HeatDeficitsOnTheActualMultiplicityBearingZetaZeros.lean/declarations/riemannhypothesis-of-exhausting-actual-certificates.md) | 194 | `result-track:6b636379d99adaebf5c673821c115e7f6f48bd1c55210f434d9469788162cd82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfe5497084219885ef0d6b70ea7147d7b2941a954dabaa74ae0b592cfad143f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/SourceActualHeatDeficit/Variantfa63d1c6fe31a8eec50606d259092f9916013fbc5ace61a477b5502eb4047e4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
