# Verification target: GRWTSK.Analysis.Fourier.FiniteGeodesicWordCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06f01824740e0443e75a125e76e755c34dd610ea",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06f01824740e0443e75a125e76e755c34dd610ea`.

Source path: `GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/FiniteGeodesicWordCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.FiniteTracePrimitiveCoverage`](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteTracePrimitiveCoverage.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Data.Finset.Option` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sigma` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BoundedWord](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/boundedword.md) | 47 | `declaration-track:1d349f63f924c54e7aed4c0313323b856eb57b7eb863ef67fc31aadc94af8c97` |
| 2 | `def` | [wordLength](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/wordlength.md) | 51 | `declaration-track:96dc05d474c856552b3ee13310b5d8e96ccee29cf0be731d8f65d727dbf142a4` |
| 3 | `theorem` | [wordLength_le_bound](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/wordlength-le-bound.md) | 54 | `result-track:8a8b53c10eb4b8977f76f65c55020a7066bee614f4c6cb7956629991bbdc291e` |
| 4 | `def` | [emptyWord](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/emptyword.md) | 61 | `declaration-track:71304cb1ee033944bd689274774f2a72486daa6ed1245d6e403dc7c791445b94` |
| 5 | `theorem` | [emptyWord_length](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/emptyword-length.md) | 64 | `result-track:ac76bf0e636182e0cad640d9d25b5626ab9d150d91fb167e3d8c833cb1114df1` |
| 6 | `def` | [letters](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/letters.md) | 68 | `declaration-track:59e679fcbc9d4864844757d566d04f06157c04366caad48060313dc6e8992e91` |
| 7 | `theorem` | [letters_length](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/letters-length.md) | 71 | `result-track:6430f2021782c7a0df9bf9e4b6507822e198d4cde17e59bd575fa50f35679158` |
| 8 | `theorem` | [card_boundedWord](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/card-boundedword.md) | 77 | `result-track:fbc349507b0fb6db8d75750aeea65fdc598b33c75bfecda76ef7504364f32fe8` |
| 9 | `structure` | [BoundedWordGeometricGate](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/boundedwordgeometricgate.md) | 90 | `declaration-track:edb32ff0a22ecccd95bcad307f3cc8858440ca85b919416d260c889369054348` |
| 10 | `def` | [decodedCandidates](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/decodedcandidates.md) | 103 | `declaration-track:e7851d858288f94a3ce73804631b6c30de79cae09ed77ee8e88e3d2be56cb485` |
| 11 | `theorem` | [mem_decodedCandidates_iff](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/mem-decodedcandidates-iff.md) | 110 | `result-track:30c58fab0a78230f1d585118c3198b5d24b93ba6ca7866aa84c9e556e4c3fd13` |
| 12 | `theorem` | [decodedCandidates_subset](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/decodedcandidates-subset.md) | 120 | `result-track:95f71b77660b5d31ff337baaa14504c76a0af0be552700be5e90624b687f1efd` |
| 13 | `theorem` | [decodedCandidates_card_le_codes](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/decodedcandidates-card-le-codes.md) | 130 | `result-track:3e4ab831b60c31e7823e6cc5bd56a6bc877aa8dc72f2fa9f199b2ad150fe90c7` |
| 14 | `theorem` | [decodedCandidates_card_le_word_sum](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/decodedcandidates-card-le-word-sum.md) | 146 | `result-track:3f7dab8bcf64104200ba4c736a98a4cb19963d060b2164c23177639be8dad899` |
| 15 | `def` | [selectedInput](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/selectedinput.md) | 156 | `declaration-track:c263f5e5b75e6ceacb81553e59e3d01eb4de8dcddf0a6a181ae5ed469f778347` |
| 16 | `def` | [originalUniverse](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/originaluniverse.md) | 171 | `declaration-track:85516976ad4d1437d96cbb4c5e8f8a85c854dc91d0af9e371d26c418804e17f7` |
| 17 | `theorem` | [decodedCandidates_cover_short_sources](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/decodedcandidates-cover-short-sources.md) | 183 | `result-track:9794fe5391a964be6f7e6eb7ae9cb764fe56f0c4db4dc3e81e415ff9dc50ca0c` |
| 18 | `theorem` | [bounded_word_trace_error_le_alias](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/bounded-word-trace-error-le-alias.md) | 197 | `result-track:b1aedb7a1867780b90eed3d970badd10b91c049d4ea916381bf30631a3ed8c60` |
| 19 | `theorem` | [always_reject_incompatible_with_short_source](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/always-reject-incompatible-with-short-source.md) | 219 | `result-track:7915cf2a92e88d55364e79b9baadd8467b9dd98edd9409025fb70d11db99a8e3` |
| 20 | `def` | [toyWordGate](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/toywordgate.md) | 241 | `declaration-track:26155aee93a36132a273946cde29e9f1704bd4f612cca2b201fc8df5b83b1d43` |
| 21 | `def` | [toyOneLetter](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/toyoneletter.md) | 256 | `declaration-track:3cfbbb0a133329d66b12ac8d8e57008e349ccc2ddacbb56047597052ba0c4b16` |
| 22 | `theorem` | [toy_distinct_codes_same_output](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/toy-distinct-codes-same-output.md) | 261 | `result-track:059fcc61b35c8ea007548df8ca66d8de3d90fc6dbd43115629967f7ea5a3ca90` |
| 23 | `theorem` | [toy_decodedCandidates_eq_univ](../../../../HarmonicAnalysisOnEuclideanSpaces/FiniteGeodesicWordCover.lean/declarations/toy-decodedcandidates-eq-univ.md) | 272 | `result-track:6c64ecef0ca8864595f4ee24481265a4d5aa297c27d6acfbcacae3387419e779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4dfc9c4c39d7c820ac5b4bed539a491321ba378f09c192ac5dec2a8d1c726c99 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Fourier/FiniteGeodesicWordCover.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/FiniteGeodesicWordCover.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
