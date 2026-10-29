# Verification target: Monotone Source Readout Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d412f8794494be78d7155563dc84ade26664108e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d412f8794494be78d7155563dc84ade26664108e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MonotoneMatchingMeasure` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourceMode](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcemode.md) | 29 | `declaration-track:3a90455632d1ffe350b7443db88bed0258aec2102458537bf4f8943107542019` |
| 2 | `def` | [sourceModeMoment](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcemodemoment.md) | 31 | `declaration-track:1604eb334a95ca0b78669c2fb7e9fb9cde045546a08afe9d236e9bc99bbadfed` |
| 3 | `def` | [headKernel](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headkernel.md) | 32 | `declaration-track:5371c2f3ceee88272a298d6aeef572791b501d872619fd260e6b73ca876ce2ad` |
| 4 | `def` | [headRemainder](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headremainder.md) | 34 | `declaration-track:804eb8e798ab93bbcb88b6beb02b31b2370be36f8d68d82c02d7895f32ce5d58` |
| 5 | `def` | [sourceReadout](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcereadout.md) | 35 | `declaration-track:77f235576ddc0189e152b554ba49648ac080148b2042763f7621b638f843bc9c` |
| 6 | `def` | [headEnvelope](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headenvelope.md) | 36 | `declaration-track:a660045d50ef5032998061638d35d4227f486eb37d7fcec3f8280961a39a1258` |
| 7 | `theorem` | [sourceMode_continuous](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcemode-continuous.md) | 38 | `result-track:41b23d0b31ea24dcb8beeeac72d5fecea341f24565601e5e11f1ae491fc1ae0c` |
| 8 | `theorem` | [headKernel_continuous](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headkernel-continuous.md) | 42 | `result-track:dfc3008a5f0c6991c9a19a26b60fe66513bab717b1e1421b397d213a534bea62` |
| 9 | `theorem` | [sourceMode_intervalIntegrable](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcemode-intervalintegrable.md) | 46 | `result-track:f674fca9357a0657771d33cb528542353c52b29e2079607d26e49182fa8a311d` |
| 10 | `theorem` | [source_product_integrable](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/source-product-integrable.md) | 50 | `result-track:bb28be968c1d25979a0a3bad39d818af86bab5f15a2f8503b616e7e7aebd84cb` |
| 11 | `theorem` | [sourceReadout_integrable](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcereadout-integrable.md) | 63 | `result-track:933d033835becc456674ec169781099cb92e876dc8eff54d8ec0f9b31d989d06` |
| 12 | `theorem` | [sourceReadout_density](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcereadout-density.md) | 70 | `result-track:0cb764d4323cdd6d4db4abf9753395d40a14346cbeabd79b1bb89ce3b5d72e0b` |
| 13 | `theorem` | [sourceReadout_tail](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcereadout-tail.md) | 77 | `result-track:2c684f8a6100bd6aeea0af69ea4c5a54b57526d678fbe6f7d53ca837c7a9da2b` |
| 14 | `theorem` | [source_test_whole_zero](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/source-test-whole-zero.md) | 104 | `result-track:c66280a8c88c3727f4d7455207d2eb9a7b613fdaaf8d521d389e505b9614a0a1` |
| 15 | `theorem` | [sourceReadout_exact](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcereadout-exact.md) | 129 | `result-track:545e39e8b5e5bb81ea48342dcbb627b2b11a61260b32a12026634fdc983d438d` |
| 16 | `theorem` | [headEnvelope_continuous](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headenvelope-continuous.md) | 145 | `result-track:4fb4ba38dfc1f1cecb9ef9930deec9820c2f355b5be1eded15605f82ab7d4223` |
| 17 | `theorem` | [headEnvelope_nonneg](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headenvelope-nonneg.md) | 149 | `result-track:14c6509e4b5f6b491d1f1467d7dc4c91ea4dd6600d8bd6aad7ee3139730cb4a7` |
| 18 | `theorem` | [headKernel_abs_le](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headkernel-abs-le.md) | 154 | `result-track:d6984c8ca71bbecb3b672e791c70e7a78bc6d4a7856ddaa1b0ef004757b43a85` |
| 19 | `theorem` | [headEnvelope_integral](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headenvelope-integral.md) | 161 | `result-track:b179e12e3ccfdeb2e896330b7c5406384ffd09c845d0c5ae03bb4e9653ca9c15` |
| 20 | `theorem` | [headRemainder_abs_le](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headremainder-abs-le.md) | 196 | `result-track:c0a832063cf81dce5b4093aabd4b142695467ea87445bc83cf66da131f0bde4d` |
| 21 | `theorem` | [headRemainder_abs_lt_three](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/headremainder-abs-lt-three.md) | 209 | `result-track:f058c41fe90ca8524c7a5acbc4ab58ae9e5e8a96164cfe3d07b8089c00af57ee` |
| 22 | `theorem` | [sourceReadout_window](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcereadout-window.md) | 221 | `result-track:a609a2b5819a0797c7f43b921082cb6aa0332640e4429a844d4a2b5827d7b8d6` |
| 23 | `theorem` | [sourceReadout_parts](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcereadout-parts.md) | 239 | `result-track:7475593c7804624d00efd5555aad737237bf56f247247c7d2aabf32eade27dd9` |
| 24 | `theorem` | [source_signed_work_integrable](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/source-signed-work-integrable.md) | 266 | `result-track:806ddfc029e42027b030dddc9d0562c10b64eb65d668fc8ab5eee183c6637fe3` |
| 25 | `theorem` | [source_signed_work_whole](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/source-signed-work-whole.md) | 273 | `result-track:2c3df992307db78d796e0d753a69b68e585c2a6f1fdca8f78f30bc1e02dcec5a` |
| 26 | `theorem` | [sourceReadout_eq_signed_work](../../../../MeasureAndIntegration/MonotoneSourceReadoutNamespaced.lean/declarations/sourcereadout-eq-signed-work.md) | 303 | `result-track:af0c005d0bde5d51de62a2bc1d4f31e94fd44dbf92225284a03e851e2abbb3c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=431106ca8a148dbc62887f7c43c451e902de430186a35b3e472d624e6affa88b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MonotoneSourceReadout/Varianta0d496e4739e797cd122c9ecb985c83b65dfa6778c2bcb4c5dc534161ea55735.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
