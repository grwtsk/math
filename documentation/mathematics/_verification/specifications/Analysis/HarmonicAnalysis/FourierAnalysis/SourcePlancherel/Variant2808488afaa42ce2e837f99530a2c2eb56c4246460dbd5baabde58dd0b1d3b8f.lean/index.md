# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourcePlancherel.Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf97d4ce0a5c6ce8346417344f4749c7c19b4e55",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/index.md) · [Full source](../../../../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf97d4ce0a5c6ce8346417344f4749c7c19b4e55`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Convolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.Inversion` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [fourier_reflected_real](../../../../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/declarations/fourier-reflected-real--34ba89f3503b1035a7b40a23.md) | 34 | `result-track:34ba89f3503b1035a7b40a230be3e2c47120798bf1e98a9bb15190b98c784d72` |
| 2 | `lemma` | [correlation_complex_eq_convolution](../../../../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/declarations/correlation-complex-eq-convolution--9cf1e08c9d08b259715b2ea8.md) | 49 | `result-track:9cf1e08c9d08b259715b2ea85c0c9a432dedee7d4f6010e269444cbea182c0f1` |
| 3 | `lemma` | [fourier_correlation](../../../../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/declarations/fourier-correlation--729280cf89663f6d1ab5542b.md) | 65 | `result-track:729280cf89663f6d1ab5542be16d5944e4b2df1e89c93e826ea67507f2429a1a` |
| 4 | `lemma` | [standardFourier_eq_sourceFourier](../../../../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/declarations/standardfourier-eq-sourcefourier--fe28ad316ecb11cfca2aaf48.md) | 76 | `result-track:fe28ad316ecb11cfca2aaf48c20e1a62602c8fc2bb7b99fc904b8b9878343701` |
| 5 | `lemma` | [standardFourier_square_integrable](../../../../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/declarations/standardfourier-square-integrable--c85cbb9f85c9c9d77763a3e4.md) | 82 | `result-track:c85cbb9f85c9c9d77763a3e474342b471158c1f833d5a519bb3c69a1c954377f` |
| 6 | `lemma` | [actual_standard_fourier_mass](../../../../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/declarations/actual-standard-fourier-mass--eabdeebd9dc14722a1514b6a.md) | 91 | `result-track:eabdeebd9dc14722a1514b6a5d07bd0ac72e87a2aaed2bac107293c279970246` |
| 7 | `lemma` | [actual_source_fourier_mass](../../../../../../../Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean/declarations/actual-source-fourier-mass--2ae0f6777e63f9834356ecef.md) | 120 | `result-track:2ae0f6777e63f9834356ecefa172f1fbc333497b006c12eff106a1fc448adea8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be5818b9be9415a44190f209fe482d09f5b5b4eb8ccf3af6bd6fa87b318729d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/SourcePlancherel/Variant2808488afaa42ce2e837f99530a2c2eb56c4246460dbd5baabde58dd0b1d3b8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
