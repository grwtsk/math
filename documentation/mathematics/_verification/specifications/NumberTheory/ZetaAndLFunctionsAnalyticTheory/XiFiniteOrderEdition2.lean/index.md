# Verification target: Xi Finite Order Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c464edff51dcee7df81e4d52677265294ad2362",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant9db19777a10a92acb9397919d2bddade0a83f20c8ab643a66f36703af4b90f52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c464edff51dcee7df81e4d52677265294ad2362`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant9db19777a10a92acb9397919d2bddade0a83f20c8ab643a66f36703af4b90f52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant9db19777a10a92acb9397919d2bddade0a83f20c8ab643a66f36703af4b90f52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.SectorProducts` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteHeightRH](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/finiteheightrh.md) | 31 | `declaration-track:91832170166ac4b39b6df8aac367b5b0e62a2a08c31aada23426370e33aa5384` |
| 2 | `theorem` | [offline_above_height](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/offline-above-height.md) | 35 | `result-track:0f36292802eeb490e782b5523d274f44016d3327bff15e4ac65f83529dcfff93` |
| 3 | `theorem` | [transverse_strip](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/transverse-strip.md) | 41 | `result-track:f2363e2bdfa2ac9b66c696c54a592b57213cca0db42ea3dfab1eb80d81c2200c` |
| 4 | `inductive` | [RootFactor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/rootfactor.md) | 49 | `declaration-track:6b886f62fc8431dca9ead147ec33f1655ad5329815b9ae9a9f22cf919f9784b3` |
| 5 | `def` | [pairScale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/pairscale.md) | 56 | `declaration-track:5e1472ee5ebbe8f2672b609d740783f142ad02b8e7e6644cd59998a09d11d18b` |
| 6 | `def` | [RootFactor.toFactor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/rootfactor-tofactor.md) | 59 | `declaration-track:d0959a60df233399f78ef3a495bd0992ae139c43cdaaea9f3e09ab2ea8601e02` |
| 7 | `theorem` | [cos_twice_arctan](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/cos-twice-arctan.md) | 65 | `result-track:957e6247355b4df79a67248cf7335c22d80191e8ad54fb209150b1e70964de7d` |
| 8 | `theorem` | [pair_parameters](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/pair-parameters.md) | 73 | `result-track:670665e079cc53695ae0a4484656f7df581b69443a45a58e8632592273adac94` |
| 9 | `theorem` | [cleared_root_pair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/cleared-root-pair.md) | 92 | `result-track:533569fb11a0805bc54624d60133ae14fd84d96824abf32aaa9719a9e0a8bbe5` |
| 10 | `theorem` | [RootFactor.admissible](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/rootfactor-admissible.md) | 102 | `result-track:2b793980eb2d582402d9f4dfbef731a02e348ab495e4bb5a4f9ad7b508a4921d` |
| 11 | `def` | [ActualPairedProduct](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/actualpairedproduct.md) | 126 | `declaration-track:5f11b3d2314182a1660590ec7b91a1d916ab7f8494f5178ebd58c4757a835cf5` |
| 12 | `theorem` | [xi_pfOrder_of_height](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/xi-pforder-of-height.md) | 134 | `result-track:69210b9062326c12da37f3121694810ee24ca76dbcd89eadb83c6ac62c51f609` |
| 13 | `def` | [publishedHeight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/publishedheight.md) | 146 | `declaration-track:ca37dbc49b165df1678747a5ceaa95ccad536b03649561d39cfcf462f6ca7c66` |
| 14 | `def` | [publishedOrder](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/publishedorder.md) | 149 | `declaration-track:f0e862f9f3e4c9658445a35bdb7f040091342b6f131e047101fc5d1559e25d49` |
| 15 | `theorem` | [published_order_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/published-order-bound.md) | 152 | `result-track:e268672490554e621407757d65b2c9e7d44b5969c2165864cb91be91ffaf9aba` |
| 16 | `def` | [PublishedHeightInput](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/publishedheightinput.md) | 160 | `declaration-track:5082d689dd803057ffc42166d8549b0834c08df6429798cbc2f64c6aa69687f0` |
| 17 | `theorem` | [xi_published_order](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/xi-published-order.md) | 163 | `result-track:6b3c8f523dbe0c040f8da99da221269a5da8a0d05c7ec9afac2e4a6f812444d4` |
| 18 | `theorem` | [actual_block_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/actual-block-nonnegative.md) | 169 | `result-track:300da0686b55a1ccb18168f726e5e14660506ee6343c79603da3fa94e6306af8` |
| 19 | `theorem` | [actual_frame_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/actual-frame-nonnegative.md) | 176 | `result-track:594c6c900d0c91d414f3bb0726d305ebca583c62427f359f0e28738be6040ba8` |
| 20 | `theorem` | [actual_plane_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/actual-plane-nonnegative.md) | 184 | `result-track:82710862520072d7df5937fe3875bbc9e2cf1da52af05a045776db4899107238` |
| 21 | `theorem` | [actual_coordinate_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition2.lean/declarations/actual-coordinate-nonnegative.md) | 193 | `result-track:d11967f99e60065b1f25e40084185bcdb57982e8fa75705840ff992ded1cec9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21f80eb1e74f7a5322da556c958d1c0ea9b8460b842d22546339759c4f9a2fd9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant9db19777a10a92acb9397919d2bddade0a83f20c8ab643a66f36703af4b90f52.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant9db19777a10a92acb9397919d2bddade0a83f20c8ab643a66f36703af4b90f52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
