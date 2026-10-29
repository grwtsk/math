# Verification target: GRWTSK.Analysis.Fourier.FiniteTracePrimitiveCoverage

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5a4c670beb8dce56684d1af6473e2b68a71c495",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5a4c670beb8dce56684d1af6473e2b68a71c495`.

Source path: `GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteTraceFourierSupport`](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTraceFourierSupport.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FinitePrimitiveUniverse](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/finiteprimitiveuniverse.md) | 53 | `declaration-track:74427489d0f33a030fabf14ff4d01c7b234b186fbdae8400efdca14f3893233f` |
| 2 | `def` | [fullInput](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/fullinput.md) | 60 | `declaration-track:ecbc47635bd8c0571fea54aaf980168c0115055bf62ab8b1ba9023f39aff37bc` |
| 3 | `theorem` | [fullInput_iterateHomology](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/fullinput-iteratehomology.md) | 70 | `result-track:df394a4ef16bb5dd3942998d551d38d68be694f01f9791e816cc48d9c1aa7930` |
| 4 | `theorem` | [fullInput_traceShapeWeight](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/fullinput-traceshapeweight.md) | 77 | `result-track:cd79d85718ab91ab2775c7a2fbad974985ad220695b6f11d966b3cad0f6b711a` |
| 5 | `theorem` | [selectedSources_subset](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/selectedsources-subset.md) | 84 | `result-track:eeed95caaac41aac8c6605293514fafe93c086b867d4e4e52e7854a5657c3cea` |
| 6 | `def` | [primitiveMissingSources](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/primitivemissingsources.md) | 96 | `declaration-track:5ef0d9ecb1e1073db15b1007a5dfc127d1e64a22dac80caf4afbf0bd240fe5ba` |
| 7 | `theorem` | [mem_primitiveMissingSources_iff](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/mem-primitivemissingsources-iff.md) | 103 | `result-track:c2f6c20cadafbfe85a54fb55288b2b0c8b71e2dcc910ba99fab0761f5d1c728a` |
| 8 | `def` | [primitiveMissingSelected](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/primitivemissingselected.md) | 133 | `declaration-track:5430d69e24ee089bbb086cae26abd8e800d71b3f1eec76b063dba66935cf9e65` |
| 9 | `def` | [primitiveMissingMass](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/primitivemissingmass.md) | 140 | `declaration-track:bf4d2ab7b4f40069c3a93899a0eff7d59621e9514f77cf5f04ca7ba3de5180b9` |
| 10 | `theorem` | [integralProjection_full_eq_selected_add_missing](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/integralprojection-full-eq-selected-add-missing.md) | 148 | `result-track:3ee4adc8457807dd6fa54f2b34c6920a99888539f077955d3aae0f38982b3878` |
| 11 | `theorem` | [primitiveMissingSelected_norm_le](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/primitivemissingselected-norm-le.md) | 166 | `result-track:ce1295158ec0e29336ca2155852dbb1ed9afbff54a5edd89e88ae9c714541a79` |
| 12 | `theorem` | [finite_three_error_bound](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/finite-three-error-bound.md) | 186 | `result-track:38e625effa607f81db980068e7b1cca23e3a86dd9749e275998efe2a5a604a6e` |
| 13 | `def` | [CoversContributingCandidates](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/coverscontributingcandidates.md) | 211 | `declaration-track:4318ccce571733e4fd38469ddbe98a56eef3c5f308434cd815fff7ed2ea41e35` |
| 14 | `theorem` | [primitiveMissing_fourier_zero_of_coverage](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/primitivemissing-fourier-zero-of-coverage.md) | 219 | `result-track:2d9fc4ead52b8eda101dd88a6255a691b69211b9851adc2b6c18e5d55a298988` |
| 15 | `theorem` | [primitiveMissingMass_zero_of_coverage](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/primitivemissingmass-zero-of-coverage.md) | 244 | `result-track:48de11d7435bb0ab56de6ca4f25196601c2111845735d20fe553efc3a1acfb17` |
| 16 | `theorem` | [finite_full_universe_error_le_alias_of_support](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/finite-full-universe-error-le-alias-of-support.md) | 261 | `result-track:a75347df0d78bcf454e67a931a73a67a8567a14b908a00319f2818f19c5116e4` |
| 17 | `theorem` | [finite_full_universe_exact_of_noAlias](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/finite-full-universe-exact-of-noalias.md) | 277 | `result-track:d5925c210b50bd94ab6d6c2cea4a63536fa093ada55342d23872756a1eac3851` |
| 18 | `def` | [toySelected](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/toyselected.md) | 310 | `declaration-track:92f3a6eb1d58a11672f50089c8b5310a06b3c5e1f5e07b81c7bbcdce69049c8a` |
| 19 | `def` | [toyUniverse](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/toyuniverse.md) | 323 | `declaration-track:95e05da95af7f51c1b106fd31d53cae1ff90dc72ae3f4f31eba426ff6f6892f7` |
| 20 | `def` | [toyCertificate](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/toycertificate.md) | 333 | `declaration-track:3af56db0ac7f8c7487cc0613753a90d123114af7517a305373cf1c96ae10465a` |
| 21 | `theorem` | [toy_far_candidate_covered](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/toy-far-candidate-covered.md) | 350 | `result-track:25fadc1f09063b90e9b4f3eea2117f3d1bcbab9c62cb0da2004567c99e0adc48` |
| 22 | `theorem` | [toy_near_candidate_not_covered](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/toy-near-candidate-not-covered.md) | 358 | `result-track:e6da411535c99add974db76a7d7d4c8fead87587123ecc44386f4ecd966f41ce` |
| 23 | `theorem` | [toy_near_primitive_omitted](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/toy-near-primitive-omitted.md) | 367 | `result-track:0e1b1efb3b9c89bd7483359cc3fcefbef10b6306c64898bdf5fbc648778b554a` |
| 24 | `theorem` | [toy_near_missing_fourier_nonzero](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/declarations/toy-near-missing-fourier-nonzero.md) | 376 | `result-track:038bee0e135b42919d635102acd83b4200663739997378fe327b6e8a4d9fca25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=460d117071a571173fd28cd98ed810d10f412a8eefd6b3a9bc3a3d4b1608cfd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/FiniteTracePrimitiveCoverage.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteTracePrimitiveCoverage.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
