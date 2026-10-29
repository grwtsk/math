# Verification target: Hurwitz Zeta

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db0a47feb7759c3c8a2a1f811f4968cbae0878fd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db0a47feb7759c3c8a2a1f811f4968cbae0878fd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.HurwitzZetaEven` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.HurwitzZetaOdd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hurwitzZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/hurwitzzeta.md) | 49 | `declaration-track:a4afca22c2aa15142d5e4641916a89b2e93cf1f3ca861f77f26e407765088fd7` |
| 2 | `lemma` | [hurwitzZetaEven_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/hurwitzzetaeven-eq.md) | 52 | `result-track:1966877f10f2ae252ab93521864edc08def21e8d49a3f7c0286bd654fbd0aea1` |
| 3 | `lemma` | [hurwitzZetaOdd_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/hurwitzzetaodd-eq.md) | 57 | `result-track:7b4e86c7761510c5521513441280b22e2d0fc77c5ef7ae55649de708393b2bf9` |
| 4 | `lemma` | [differentiableAt_hurwitzZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/differentiableat-hurwitzzeta.md) | 63 | `result-track:3c026ca4cec6038a367f63e514e691b28a700dcc0c3214c070de70bab5684fb2` |
| 5 | `lemma` | [hasSum_hurwitzZeta_of_one_lt_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/hassum-hurwitzzeta-of-one-lt-re.md) | 69 | `result-track:f3c64c2494454704758d0417fc54eeb88d72a692d1e75f3b15c5d53b4dd14604` |
| 6 | `lemma` | [hurwitzZeta_residue_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/hurwitzzeta-residue-one.md) | 78 | `result-track:7d52546837fa25de3d2cf1015e07d92e0ee3b8f7fb4bb81d2a5fd940125eb5b8` |
| 7 | `lemma` | [differentiableAt_hurwitzZeta_sub_one_div](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/differentiableat-hurwitzzeta-sub-one-div.md) | 84 | `result-track:1de7dbf25ad2f4837a4429f128f6c17c6b10d5bdfdd77f117673da15a3990499` |
| 8 | `lemma` | [tendsto_hurwitzZeta_sub_one_div_nhds_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/tendsto-hurwitzzeta-sub-one-div-nhds-one.md) | 92 | `result-track:f39b0efbc877df60e49978ed3b07b707df1df1339ab8987afa1be919d5ebb807` |
| 9 | `lemma` | [differentiable_hurwitzZeta_sub_hurwitzZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/differentiable-hurwitzzeta-sub-hurwitzzeta.md) | 99 | `result-track:4d6fd9842349bfb8d10067e7100ba943db75ace63f21086e452a4472df73fef2` |
| 10 | `def` | [expZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/expzeta.md) | 111 | `declaration-track:98ab01593646232ead908147ec6f9d71a3d13d9c00793290ca9a91cf69ccb822` |
| 11 | `lemma` | [cosZeta_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/coszeta-eq.md) | 114 | `result-track:20142180283dc9b8478b91557e3f925373b5ad0cf5f362c6aaeb19af81f4f88f` |
| 12 | `lemma` | [sinZeta_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/sinzeta-eq.md) | 119 | `result-track:fc558f70575555e5d3cd58244ce244f468e359fffe38da85ff2940ba84361cad` |
| 13 | `lemma` | [hasSum_expZeta_of_one_lt_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/hassum-expzeta-of-one-lt-re.md) | 125 | `result-track:954cbd18d605772847d84e5132b9ab2feceb9db4b1377ef3a19ce0868b771c0b` |
| 14 | `lemma` | [differentiableAt_expZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/differentiableat-expzeta.md) | 132 | `result-track:7b7a82aed2daec68a9ef1c288c6ac518da7735397396334994f4a20e397501f7` |
| 15 | `lemma` | [differentiable_expZeta_of_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/differentiable-expzeta-of-ne-zero.md) | 139 | `result-track:c474e81ce20e62d6a8b07379452e7a4f19d2b1b0d3cb23ba8f42b18e719a81f1` |
| 16 | `lemma` | [LSeriesHasSum_exp](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/lserieshassum-exp.md) | 144 | `result-track:1128cc02be56be054f27dfce7bc05872d700e668de8d1490306532282dffc9b7` |
| 17 | `lemma` | [hurwitzZeta_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/hurwitzzeta-one-sub.md) | 153 | `result-track:4a1925bb9af78a495f72aa96999b4c336c0033579d19a352142b068c866c014c` |
| 18 | `lemma` | [expZeta_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZeta.lean/declarations/expzeta-one-sub.md) | 169 | `result-track:0e309fc53935027ba27f7bf009bfe5107da201bce86065078f155e7a6f04dc8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3433b835ac5deedf7234382b5d8a4dde358e318caccc2a2d641fc28d213c6a9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant592b1e9d073806eb79a550c429d0e567f40e0982ab6c3aa502a25c71207a88f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
