# Verification target: Source Plancherel Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7eb7e241f15b4172dd6fe24b783fc169dde72c2",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant54ff892032eb95f7076cc6e2768de50ca9a05c8181fd59f0900b36fc12dd6cd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourcePlancherelEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourcePlancherelEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7eb7e241f15b4172dd6fe24b783fc169dde72c2`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant54ff892032eb95f7076cc6e2768de50ca9a05c8181fd59f0900b36fc12dd6cd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant54ff892032eb95f7076cc6e2768de50ca9a05c8181fd59f0900b36fc12dd6cd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Convolution` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fourier_reflected_real](../../../../MeasureAndIntegration/SourcePlancherelEdition1.lean/declarations/fourier-reflected-real.md) | 12 | `result-track:76b789cd628c3eab445383ad0541f4350474b465be644305ed1838bdf40c5b3c` |
| 2 | `lemma` | [correlation_complex_eq_convolution](../../../../MeasureAndIntegration/SourcePlancherelEdition1.lean/declarations/correlation-complex-eq-convolution.md) | 26 | `result-track:236245d03dff9953ad7e869ec6b9b179436cb2ee030c2db0005a0d68650b728d` |
| 3 | `lemma` | [fourier_correlation](../../../../MeasureAndIntegration/SourcePlancherelEdition1.lean/declarations/fourier-correlation.md) | 41 | `result-track:2cf48f6594aea2c67322eb7870c3cf5293bbe1718f2576f52ee8eb78bf8366bb` |
| 4 | `lemma` | [standardFourier_eq_sourceFourier](../../../../MeasureAndIntegration/SourcePlancherelEdition1.lean/declarations/standardfourier-eq-sourcefourier.md) | 51 | `result-track:2189f62c14bd9cc03f4fcc0fab3dc056ef0976544c7ea81f72f2a85deffcf2d4` |
| 5 | `lemma` | [standardFourier_square_integrable](../../../../MeasureAndIntegration/SourcePlancherelEdition1.lean/declarations/standardfourier-square-integrable.md) | 56 | `result-track:963cc19cc7ffc2ed56611aec9748b9150e14f2810b3bff6bcb3c2bc9700a5dca` |
| 6 | `lemma` | [actual_standard_fourier_mass](../../../../MeasureAndIntegration/SourcePlancherelEdition1.lean/declarations/actual-standard-fourier-mass.md) | 64 | `result-track:e94522f1f403f81746f84acccbd15d178ea542511b0ddd7a209ccd641b0824ea` |
| 7 | `lemma` | [actual_source_fourier_mass](../../../../MeasureAndIntegration/SourcePlancherelEdition1.lean/declarations/actual-source-fourier-mass.md) | 92 | `result-track:e9e79384141d3fbdda96914356b28c3b411b981ab18a5cbd176aa9e193de1aaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=912802cc7500287cc2d893b10e71105ab0010713008eba22610386052c01c995 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant54ff892032eb95f7076cc6e2768de50ca9a05c8181fd59f0900b36fc12dd6cd5.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant54ff892032eb95f7076cc6e2768de50ca9a05c8181fd59f0900b36fc12dd6cd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
