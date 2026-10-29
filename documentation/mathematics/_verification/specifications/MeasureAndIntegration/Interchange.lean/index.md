# Verification target: Interchange

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1b508165e39f9b6fb569624b85843445eee3bf8",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Interchange.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Interchange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1b508165e39f9b6fb569624b85843445eee3bf8`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Interchange/Variantae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceDomain` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [occurrenceIntegrand](../../../../MeasureAndIntegration/Interchange.lean/declarations/occurrenceintegrand.md) | 14 | `declaration-track:18c888611ab630fab5326400c174fef181fae6838677eb2c97fe4313ac9ce8e0` |
| 2 | `def` | [scaleMajorant](../../../../MeasureAndIntegration/Interchange.lean/declarations/scalemajorant.md) | 17 | `declaration-track:bfba2ec2da0563f240c190c74b67128b685df72b6d78bab461e973454d2f00fb` |
| 3 | `lemma` | [occurrenceIntegrand_integrable](../../../../MeasureAndIntegration/Interchange.lean/declarations/occurrenceintegrand-integrable.md) | 20 | `result-track:709699cb2af3d9f62fa60369031baf6e546b3acad74713d535f1717cf8e7c9e1` |
| 4 | `lemma` | [integral_occurrenceIntegrand](../../../../MeasureAndIntegration/Interchange.lean/declarations/integral-occurrenceintegrand.md) | 24 | `result-track:50420935d0a2206347e112794f614d2615475160a0e6e349890e9ca6f99640bf` |
| 5 | `lemma` | [scaleMajorant_integrable](../../../../MeasureAndIntegration/Interchange.lean/declarations/scalemajorant-integrable.md) | 28 | `result-track:b0489754087ccca04de734a18c483d035225f9be1377283da7d5e63f6b349258` |
| 6 | `lemma` | [occurrenceIntegrand_norm_le](../../../../MeasureAndIntegration/Interchange.lean/declarations/occurrenceintegrand-norm-le.md) | 39 | `result-track:205a4accbe46e417388a06efb508c32ffc4c0249ab7292086895c85302a83339` |
| 7 | `lemma` | [integral_norm_le](../../../../MeasureAndIntegration/Interchange.lean/declarations/integral-norm-le.md) | 64 | `result-track:4c0b9600a23734e03a4c878358c5a867099b58bc888406a7803642be7a5e3e31` |
| 8 | `lemma` | [integral_norms_summable](../../../../MeasureAndIntegration/Interchange.lean/declarations/integral-norms-summable.md) | 73 | `result-track:2ef1345283ab2540bae71f5202ffa37d1948ee5e62f4cff0eabe1537399856f3` |
| 9 | `lemma` | [integrals_enorm_ne_top](../../../../MeasureAndIntegration/Interchange.lean/declarations/integrals-enorm-ne-top.md) | 82 | `result-track:d92503f2fa09908aec75f17751903edaf452d766ecee7f0d00466aacef99f688` |
| 10 | `lemma` | [summedIntegrand_integrable](../../../../MeasureAndIntegration/Interchange.lean/declarations/summedintegrand-integrable.md) | 90 | `result-track:c63c3f7d042e458e895922608cd9e38fe9cc9d783897a90ec71bcc01d3f75729` |
| 11 | `lemma` | [integral_tsum_occurrences](../../../../MeasureAndIntegration/Interchange.lean/declarations/integral-tsum-occurrences.md) | 101 | `result-track:d48f65660d2dcdfd03e24f4fc74d7d8ae9e77fb42644c29058c4965ec141185d` |
| 12 | `lemma` | [sourceKernel_norms_summable](../../../../MeasureAndIntegration/Interchange.lean/declarations/sourcekernel-norms-summable.md) | 108 | `result-track:5243542755b794ab3c0f0c790f81a3f2831628de81bddd13c191db4a371e308f` |
| 13 | `lemma` | [occurrenceIntegrand_norms_summable](../../../../MeasureAndIntegration/Interchange.lean/declarations/occurrenceintegrand-norms-summable.md) | 114 | `result-track:67e86063bb85de890fcb8df7006422833efd79411e51a527ebbef531e5fbb526` |
| 14 | `lemma` | [occurrenceIntegrand_summable](../../../../MeasureAndIntegration/Interchange.lean/declarations/occurrenceintegrand-summable.md) | 120 | `result-track:7b47040faa1f73f45c4e90ba3d01a1db87cdfaee8ecfea5ed9be588a8b12f761` |
| 15 | `lemma` | [summedIntegrand_eq](../../../../MeasureAndIntegration/Interchange.lean/declarations/summedintegrand-eq.md) | 124 | `result-track:da108ee818c82de588008db2e1d58f89a5cc669d8c57a684e35cafd33e3e6c9e` |
| 16 | `lemma` | [source_series_laplace_transform](../../../../MeasureAndIntegration/Interchange.lean/declarations/source-series-laplace-transform.md) | 132 | `result-track:28b30ae7cab7ea18dac264da0f90aa8198b485a659491a68ad8277b56e727c27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=db31fb22875eedf254ecf403575d7b4bafb087cb1b54b88fd642a351715c3450 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Interchange/Variantae94f4033493ac0898c5c12e15c7e2da61507eca9c95939848486171aa7c5111.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
