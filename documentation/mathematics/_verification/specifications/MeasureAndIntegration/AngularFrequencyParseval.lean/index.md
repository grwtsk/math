# Verification target: GRWTSK.Analysis.Fourier.AngularFrequencyParseval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "839c4f378e6f0d713b26006e0239b587ff0eebdb",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/index.md) · [Full source](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `839c4f378e6f0d713b26006e0239b587ff0eebdb`.

Source path: `GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/AngularFrequencyParseval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Fourier.LpSpace` — import line 1; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.Fourier.PrimePhaseMultiplierBounds`](../../../../MeasureAndIntegration/PrimePhaseMultiplierBounds.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PrimeTranslationBoundContracts`](../../../../MeasureAndIntegration/PrimeTranslationBoundContracts.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Function.Lp.CausalRestrictionBounds`](../../../../MeasureAndIntegration/CausalRestrictionBounds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [test_pairing](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/test-pairing.md) | 17 | `result-track:818e79cf5c015c71db2f87ceee74fc41ffe7f1ecf958a5c81f9909ca1c85f058` |
| 2 | `theorem` | [integralFourier_eq_l2_ae](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/integralfourier-eq-l2-ae.md) | 35 | `result-track:bc6c6646c52bd01809fb6d7d32ca61e10de60e77aaf68923bdd607a352e0fe8d` |
| 3 | `theorem` | [integral_norm_sq_eq_l2](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/integral-norm-sq-eq-l2.md) | 70 | `result-track:18e46deb18e8b4294f01cc03c8ecb838656faf663b93e63d7334fe7246caf49a` |
| 4 | `theorem` | [integralFourier_memLp](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/integralfourier-memlp.md) | 78 | `result-track:1d924d17cec985fed113ddf40a7ca2a801d5997589984e6d9d9ccbb314558e7a` |
| 5 | `theorem` | [integralFourier_parseval](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/integralfourier-parseval.md) | 83 | `result-track:eeca876f3685e9d7663f4075f5c07c6a6259de59cba7dbeba2383a9c67ad0950` |
| 6 | `theorem` | [rawFourier_eq_fourier](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/rawfourier-eq-fourier.md) | 96 | `result-track:242030efb82ce79e1af575a51c118c726ea77baeb5b06d2dcbad06a57f837d82` |
| 7 | `theorem` | [rawFourier_square_integrable](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/rawfourier-square-integrable.md) | 103 | `result-track:0f3b647b494edb0e4e93a7d6adbe5a45383a677ffb32cb7ad17da5faa007d7ca` |
| 8 | `theorem` | [rawFourier_parseval](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/rawfourier-parseval.md) | 114 | `result-track:388555a4ca5731aebd58bc9d3084c63011ad68d383ac175fbfd4b169eb0b0a4b` |
| 9 | `theorem` | [windowedSource_memLp](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/windowedsource-memlp.md) | 128 | `result-track:3be72d23272bb0dbedf4ae73647bd91a7d39b90ee4342f8c9054e25075e85acb` |
| 10 | `theorem` | [windowedSource_integrable](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/windowedsource-integrable.md) | 132 | `result-track:83baa9c9816848dcbd909462182636993c456a0d5d379c301712823bfd8d9ad1` |
| 11 | `theorem` | [windowedSource_energy](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/windowedsource-energy.md) | 135 | `result-track:9138ae66179b749c09eebb6744251678e2e0eec6e2986ecf56486fda9ba19835` |
| 12 | `def` | [blockWindow](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/blockwindow.md) | 140 | `declaration-track:9f18522d887f807a97d2b8c992aced2d4784831b3e6f01343dab12b49aaee385` |
| 13 | `theorem` | [blockWindow_memLp](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/blockwindow-memlp.md) | 143 | `result-track:73bd2e283e799d6bc14b9eb9f03a8a515df7aeab6382a99607cedb8a296ffd2b` |
| 14 | `theorem` | [blockWindow_integrable](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/blockwindow-integrable.md) | 148 | `result-track:4851a48cd0de713c58ef20dd58d71154811b3821df406ececd170c2c6542aac7` |
| 15 | `theorem` | [blockWindow_rawFourier](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/blockwindow-rawfourier.md) | 161 | `result-track:9cb244850ddd1d33d96989b3b5bbea3e42c36b12f895b829a16f418e1b415a93` |
| 16 | `theorem` | [blockDensity_eq](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/blockdensity-eq.md) | 167 | `result-track:11b8ecdf4cbc397f9ab28a9379cb63c6618f68a9c4df55aa35c21fd248e9b2ad` |
| 17 | `theorem` | [actualFourierReduction](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/actualfourierreduction.md) | 175 | `result-track:6e948750d842257d1c638e55965fd74679a97c83a8e33e46958e63e225d1c0fe` |
| 18 | `theorem` | [actualFourierReductionObligation](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/actualfourierreductionobligation.md) | 195 | `result-track:738a4d07d5c4405844d5a53bdc40430bbdf1b6abb0282ea4930388d17fd67024` |
| 19 | `theorem` | [actual_broad_narrow_bound](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/actual-broad-narrow-bound.md) | 206 | `result-track:525f8bef6b3a9544a40440bc1c0889d47695e97e5afdc070d9313e38ef7993cc` |
| 20 | `theorem` | [actual_narrow_return](../../../../MeasureAndIntegration/AngularFrequencyParseval.lean/declarations/actual-narrow-return.md) | 214 | `result-track:806c5eb558a7e9433f85176de186b1cba12b9ea63dc8a9db41f372b7f96ef6c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edea206fcca9754360752529530453be61d62d3c1779ec0dd5082b3f278e25b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/AngularFrequencyParseval.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/AngularFrequencyParseval.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
