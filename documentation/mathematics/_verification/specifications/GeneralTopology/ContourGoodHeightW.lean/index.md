# Verification target: Contour Good Height W

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a887d946c92892bd16d61d6efc4d295ace8245ae",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContourGoodHeightW.lean/index.md) · [Full source](../../../../GeneralTopology/ContourGoodHeightW.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a887d946c92892bd16d61d6efc4d295ace8245ae`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.Omega` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.GenericRvM` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GoodHeightW](../../../../GeneralTopology/ContourGoodHeightW.lean/declarations/goodheightw.md) | 28 | `declaration-track:e57245901af6b6a81cf7114a65cb9479ef91ebbf3c232b546500404147884e68` |
| 2 | `theorem` | [exists_goodHeightW](../../../../GeneralTopology/ContourGoodHeightW.lean/declarations/exists-goodheightw.md) | 31 | `result-track:05856698eb97ed8e4ef8458755fca5ab4f6af6d5b77adc92a5852011d0434a23` |
| 3 | `theorem` | [goodHeightW_ne_zero](../../../../GeneralTopology/ContourGoodHeightW.lean/declarations/goodheightw-ne-zero.md) | 45 | `result-track:a94947fd5314c0f769a1e47a0488dfa2e8d7519664be10ea442e7bc32a3be853` |
| 4 | `theorem` | [goodHeightW_omegaW_ne_zero](../../../../GeneralTopology/ContourGoodHeightW.lean/declarations/goodheightw-omegaw-ne-zero.md) | 48 | `result-track:fe50fcfb399cc852af152f2802a5e9341178bd8995f1b2f9847e6b8703da0952` |
| 5 | `theorem` | [rectangleIntegral'_logDeriv_omegaW_eq_NcountW](../../../../GeneralTopology/ContourGoodHeightW.lean/declarations/rectangleintegral-logderiv-omegaw-eq-ncountw.md) | 53 | `result-track:867bed895321d8a83497d911682e2f31e20f87384a845683545be50ca18fe16d` |
| 6 | `lemma` | [continuous_logDeriv_omegaW_horizontal](../../../../GeneralTopology/ContourGoodHeightW.lean/declarations/continuous-logderiv-omegaw-horizontal.md) | 124 | `result-track:ca32ed0129b39d617f3dfefb6a44c32d18d7de52a3b153bda15476dd6329fb73` |
| 7 | `theorem` | [rectangleIntegral_logDeriv_omegaW_eq_halfContour](../../../../GeneralTopology/ContourGoodHeightW.lean/declarations/rectangleintegral-logderiv-omegaw-eq-halfcontour.md) | 136 | `result-track:024900ba4d00aebf50201f381a4829e953c144e3e31d88b90ca664337c1a9cb4` |
| 8 | `theorem` | [NcountW_eq_im_halfContour](../../../../GeneralTopology/ContourGoodHeightW.lean/declarations/ncountw-eq-im-halfcontour.md) | 150 | `result-track:2995a9ca3001b19ae47dbd1f943b926c7ad0790842a6fec6a86fad0e3a879f16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7980303fcc40636eb5785948a125302026f4528ecdf41a1921436bf9259beab0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Contour/Variant1739ea08e393d96c18d8689fc176ea9778d85bb87f518b78d96e80a524065c37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
