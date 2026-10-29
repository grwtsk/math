# Verification target: Main Term Chi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6140043765504284b68ec21dfd2c5dd00c05a4ae",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6140043765504284b68ec21dfd2c5dd00c05a4ae`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.LGrowth` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.Statement` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.Hypotheses` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.LocalCountChi` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GammaSideChi` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.CountByIntegralChi` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.FoldChi` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.RvMChiDefs` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.Assembly` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.ReZeroCountChi` — import line 31; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GammaFactsChiProof` — import line 32; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zerosInL_subset_of_le](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/zerosinl-subset-of-le.md) | 48 | `result-track:c85ac03ed6c515b9c5b42d0bf8957a24a2c02d658bfc06c7f75364c3c285cb67` |
| 2 | `lemma` | [NcountL_le_of_subset](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/ncountl-le-of-subset.md) | 53 | `result-track:2b04c7ef7de4990ced02acb6b17d00e6c09343ec31f3cda61293422f8db800e1` |
| 3 | `lemma` | [NcountL_add](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/ncountl-add.md) | 66 | `result-track:86673133851cb721538d071ac38f3af3aea340830ba16e0f785fc7e122f155ce` |
| 4 | `lemma` | [exists_goodHeightL](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/exists-goodheightl.md) | 73 | `result-track:9329ce1724b8d808718dc475b9b848b2c17bd7db6ae249e267108c220d1393df` |
| 5 | `lemma` | [LFunction_ne_zero_on_segment'](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/lfunction-ne-zero-on-segment.md) | 93 | `result-track:c0a9c44bf3090b81ec4cb8393472ccda538b739a0fa11280c6bf6e50767e440e` |
| 6 | `lemma` | [continuousOn_logDeriv_LFunction](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/continuouson-logderiv-lfunction.md) | 102 | `result-track:5de613a00f11c7d1daed25039e5f9b179ba08be246df5cd358d20e4e3847ff56` |
| 7 | `lemma` | [halfContourChi_split](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/halfcontourchi-split.md) | 114 | `result-track:5b03fdbd00d7ce7401a5bd0b1d8b7ad3af5b4265cfd1d52b489ec415e886559e` |
| 8 | `theorem` | [muq_le_log_uniform](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/muq-le-log-uniform.md) | 196 | `result-track:30a0dfe6f0a0f35fc64415514c06bc10753d1fec7d7ba763bc198a4371634225` |
| 9 | `theorem` | [mainChi_uniform_aux](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/mainchi-uniform-aux.md) | 268 | `result-track:40644e36a9f0feac3c3d4bb2417c6ae7e0fb8c8906fd4728b5e03870e4796183` |
| 10 | `theorem` | [mainChi](../../../../MeasureAndIntegration/MainTermChiNamespaced.lean/declarations/mainchi.md) | 522 | `result-track:37e0cbfd437ac9254c9009788a9f4505b546e9619674e72419b2157694adcdb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cea0f457948948128844793d037d35c810d02226816a0236125d85e6f405a6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainTermChi/Variantbde71c6106e3be3a4e4d856d00beb34ec0ba761dfc30685f2f4c43667a6937c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
