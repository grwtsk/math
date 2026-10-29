# Verification target: Statement Is Nontrivial Zero L

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1aaec6accad36bad8fb204a4b974a58524d3bc98",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1aaec6accad36bad8fb204a4b974a58524d3bc98`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Hypotheses` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Counting` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.DirichletContinuation` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Order` — import line 32; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsNontrivialZeroL](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/isnontrivialzerol.md) | 48 | `declaration-track:9bf6b595f8032574ecfca0559ba72b378ef9101bcee4b63ac1df826195b545b0` |
| 2 | `def` | [zeroMultL](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/zeromultl.md) | 52 | `declaration-track:6379e077933ee36e33774d036a3933598b8c8757ccbc0dbcc0f0f64543dfcd2f` |
| 3 | `def` | [zerosInL](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/zerosinl.md) | 55 | `declaration-track:63a5f0bc5bfa4ba7cc4b9287af55adbc4b27d6d8a855f2db01c4318ed851d4b0` |
| 4 | `def` | [NcountL](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/ncountl.md) | 58 | `declaration-track:08703ad9e1b380d36c4a1b924e7b8fa85792e10c5c7ae535d7ebbb3098a4c9e0` |
| 5 | `def` | [NdistL](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/ndistl.md) | 60 | `declaration-track:558948418e5fe19f9275e125a3c1d7f3cdb93aa1881b4143042589fef5b4a2d2` |
| 6 | `def` | [N0L](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/n0l.md) | 62 | `declaration-track:2efb277ccc3dbc31cd24d0490d1cf0e0cb961e58a38dbd0eeca342ee80709455` |
| 7 | `def` | [N0starL](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/n0starl.md) | 64 | `declaration-track:9d92cdf878f9f1da779e747095e02f71a4589d3249c0c3c394a97e24df8aabbc` |
| 8 | `def` | [N0simpleL](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/n0simplel.md) | 66 | `declaration-track:68816daf19a12ca0481a0a0c7938d9c4ccd709c4aa770b27bc829ab63821abef` |
| 9 | `def` | [NsimpleL](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/nsimplel.md) | 69 | `declaration-track:875e6d7b44575bf762e147d3c4780fd9dc67836994f1cb88a635e5d5db31ff87` |
| 10 | `structure` | [LSeam](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lseam.md) | 79 | `declaration-track:6416e5db317606dd6231dacae3aa6113acb1de3fd0b2781a792b09952ea6fd41` |
| 11 | `def` | [LZeros](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lzeros.md) | 90 | `declaration-track:5880c1eff0ba05f295599142021c6b5fc33e9edb5aeff9233af7d0ab05a03082` |
| 12 | `lemma` | [LZeros_carrier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lzeros-carrier.md) | 102 | `result-track:f067c7d70f02476f403c8f2ec8eb873e4e2c31e568b0a13d512b3c92a11b57db` |
| 13 | `lemma` | [LZeros_mult](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lzeros-mult.md) | 103 | `result-track:2cde774844b5c980a8185ef979280149750b24ba5d1bc94aad002560ed354da0` |
| 14 | `lemma` | [LZeros_simple](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lzeros-simple.md) | 104 | `result-track:742e2143e5be7f2dc1c0e54d8cb4cfdd641a122106226a5956949a621a22a9a1` |
| 15 | `lemma` | [LZeros_window](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lzeros-window.md) | 106 | `result-track:25e2e423c850e42787a2cdd85cab58863bdf80c8178bb4327cb0a9e97390b6e1` |
| 16 | `lemma` | [LZeros_N](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lzeros-n.md) | 109 | `result-track:302684be083699dd71c8e2070e956024000287a8fd208722d526f8cde0950b4f` |
| 17 | `lemma` | [LZeros_Nd](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lzeros-nd.md) | 111 | `result-track:81e3f1d18d30dd33e7ebe452eb4b5d43d0850c2ba20cd6e3060ca51833aa9aa7` |
| 18 | `lemma` | [LZeros_N0star](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lzeros-n0star.md) | 113 | `result-track:e7dd05d97b02d220c1960ab069d195e4872afabadd52e314bdfb7831a1ca8326` |
| 19 | `lemma` | [LZeros_N0s](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/lzeros-n0s.md) | 115 | `result-track:e9c1c6d1472cd15394f2cd3d18a140cb357d07918c7dad3359b103284e1e7cec` |
| 20 | `theorem` | [trivial_chainL](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/trivial-chainl.md) | 119 | `result-track:5341726ea9c90c1400a5bfd4aeea6f4a9bff2fab9b2bd9c8b7545b6ad32b5f3c` |
| 21 | `def` | [parity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/parity.md) | 140 | `declaration-track:a227b08a06f265fdf54bc4ba8ec174f7df1bea59517c0778b2a638c78d88a319` |
| 22 | `def` | [coeff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/StatementIsNontrivialZeroL.lean/declarations/coeff.md) | 143 | `declaration-track:8905d98367662e071c4cae6acd1745e22e04616b989e2c22fbb6a0d8f36cabdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e9297f14f392881a7fa2f06303e13b8f51534daa5826da012d38f6174eec94c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Statement/Variant2501cf165507ebf8c4a3b06e7e7ca274050fe05dcd3ec068ebf5999bbe2c5368.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
