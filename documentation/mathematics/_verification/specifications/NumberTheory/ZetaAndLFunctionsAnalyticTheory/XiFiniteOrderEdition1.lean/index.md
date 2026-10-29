# Verification target: Xi Finite Order Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9836be91fa32ceb0cd87c01e106d4809d1cb5c4d",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9836be91fa32ceb0cd87c01e106d4809d1cb5c4d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Grassmannian.SectorProducts` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FiniteHeightRH](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/finiteheightrh.md) | 30 | `declaration-track:a6c0a35cc66780551b80c92720bbe07d05ece74804bdc88bde104c40593f2744` |
| 2 | `theorem` | [offline_above_height](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/offline-above-height.md) | 34 | `result-track:1f0220c9a0d4e88990a18957c279628a2887af5eaab02e0ed8a26559be5a9b38` |
| 3 | `theorem` | [transverse_strip](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/transverse-strip.md) | 40 | `result-track:ec320ce1427cccd1353ef86ac6c12d9cdbe9b6837efe15469d9f1357e45087ec` |
| 4 | `inductive` | [RootFactor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/rootfactor.md) | 48 | `declaration-track:a64ab91a57d3f5a27300ab9864cf970f6cbaff3e18190567c49a7223ce7380a8` |
| 5 | `def` | [pairScale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/pairscale.md) | 55 | `declaration-track:279f7bc308b7d01ecf17312ddeb3dfd4a84d6f3a220e5f394d8074f9fd55f6ae` |
| 6 | `def` | [RootFactor.toFactor](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/rootfactor-tofactor.md) | 58 | `declaration-track:4be1dca36ccb8e7e59de297823d82107ef3881cc69a313068343679fb7a82255` |
| 7 | `theorem` | [cos_twice_arctan](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/cos-twice-arctan.md) | 64 | `result-track:9180c9adf9ea6810c670afa104ec76c39acedf128656f84f64b63ebf831b5a5f` |
| 8 | `theorem` | [pair_parameters](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/pair-parameters.md) | 71 | `result-track:bba4239a14881dda17f2d5f59a74da6d364841892eb5e4f215d5d400f0d11cd4` |
| 9 | `theorem` | [cleared_root_pair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/cleared-root-pair.md) | 89 | `result-track:5015a00132b8ca5fb121202a0a31b41131d72f00390566d9ecdeb8a7d17b0f16` |
| 10 | `theorem` | [RootFactor.admissible](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/rootfactor-admissible.md) | 99 | `result-track:f2c9b4361ca3517d8b2e22adc7b448b29a6e0045b0c6e8bf35e4085d37f8645b` |
| 11 | `def` | [ActualPairedProduct](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/actualpairedproduct.md) | 123 | `declaration-track:afe36e83db09085dbd37287835131650f35cf8444c24d4b5ad17b1024b6e101e` |
| 12 | `theorem` | [xi_pfOrder_of_height](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/xi-pforder-of-height.md) | 131 | `result-track:fdb3d3fb65c59a264ea5787bf079ca4e819a102260d02e75c55f2545ff70a645` |
| 13 | `def` | [publishedHeight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/publishedheight.md) | 143 | `declaration-track:14eb6c4485edc72164e534c846d0c3ba9114e9c204e640ea1c9a3e5158122f7f` |
| 14 | `def` | [publishedOrder](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/publishedorder.md) | 146 | `declaration-track:4c456473cccc2a4b9d087f30ced20669ebb80cb68cd8e1b06355c052e91426b8` |
| 15 | `theorem` | [published_order_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/published-order-bound.md) | 149 | `result-track:8e8292e0bac69440f810b2155a71a30fd1bed5b0d82a310f1736c3c40133003e` |
| 16 | `def` | [PublishedHeightInput](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/publishedheightinput.md) | 157 | `declaration-track:e19e0f3bf5a7cb74419aa759ba86665eccc583159a663299a6d28fec82596346` |
| 17 | `theorem` | [xi_published_order](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/xi-published-order.md) | 160 | `result-track:6f93367d2a39e25685a5c333f4e457fc5892347ec5c026848ae1f18265e280d0` |
| 18 | `theorem` | [actual_block_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/actual-block-nonnegative.md) | 166 | `result-track:f4c44977d7ee9b251dd104143a67692d699710b2187e92e5b8ba074d900c4177` |
| 19 | `theorem` | [actual_frame_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/actual-frame-nonnegative.md) | 173 | `result-track:3681d1a8bcc26f2972c6adeb12152e3d24177f19abd31ccee73b08ae2f21cb31` |
| 20 | `theorem` | [actual_plane_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/actual-plane-nonnegative.md) | 181 | `result-track:72782948d086024583d83e56cc390d39a14255ec4675d3f1143847771404b7fb` |
| 21 | `theorem` | [actual_coordinate_nonnegative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiFiniteOrderEdition1.lean/declarations/actual-coordinate-nonnegative.md) | 190 | `result-track:040013058c9d43b3ef55ebcb48d6c080dbd8d531a37c6717d02ad8047ccf98cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0646951e273322619e755cb0409f24f29771390d1830ed06232ce01cb499ccf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiFiniteOrder/Variant09287be062b1847e42a31406e40910afb8d075b7f74cebc2c5f10f31950234eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
