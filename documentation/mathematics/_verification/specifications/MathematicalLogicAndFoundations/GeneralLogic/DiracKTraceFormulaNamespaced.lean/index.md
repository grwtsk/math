# Verification target: Dirac KTrace Formula Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f74838a12350fd0845537744a831871a75fb4096",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f74838a12350fd0845537744a831871a75fb4096`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.DerivedSheaf.SpectralKTheoryBridge` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.WittRealization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TraceTarget](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/tracetarget.md) | 33 | `declaration-track:edb865ef1c8bde6e4f55258718597cfa54f5ab87d447bb47c516f6510641bb00` |
| 2 | `structure` | [DiracSpectralTrace](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/diracspectraltrace.md) | 45 | `declaration-track:e9441663db00697bf4b49176cf4181545288d7daab948a5614eb402077c35402` |
| 3 | `theorem` | [dirac_spectral_trace_regularized](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/dirac-spectral-trace-regularized.md) | 55 | `result-track:114bf5e36154e5a037d027f0da8bf909b4b3066daf6756e6cc8da204878af78f` |
| 4 | `theorem` | [dirac_spectral_trace_respects_multiplicity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/dirac-spectral-trace-respects-multiplicity.md) | 61 | `result-track:51abe93afcdfaa7687b722152da4f9e963428029b617d5c170565e6f565b0988` |
| 5 | `structure` | [KIndexTrace](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/kindextrace.md) | 74 | `declaration-track:6d88a90308fdf3a1161ae1b832804ef59272daefa5cce7d6da474a69a75a46a1` |
| 6 | `theorem` | [k_index_trace_additive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/k-index-trace-additive.md) | 86 | `result-track:849157af7b2712d31cfc93bd55cd4398f1372a536bdd0192864111a1ff20016f` |
| 7 | `theorem` | [k_index_trace_compatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/k-index-trace-compatible.md) | 93 | `result-track:ec31da82ad072e26f8c555cf1c5cd384f4ca817a114fc315dda7fadbfb589195` |
| 8 | `structure` | [DiracKIndexTraceFormula](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/dirackindextraceformula.md) | 110 | `declaration-track:c90bf5ae52ad577761340a29838c3b0a700853e955136f1e1bd5c6b05257edef` |
| 9 | `theorem` | [dirac_k_index_trace_formula](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/dirac-k-index-trace-formula.md) | 125 | `result-track:1a85bed1f381382a1db651bbe4124dfa11a239437611e645f3ea154287578e98` |
| 10 | `theorem` | [spectral_trace_eq_k_index_trace](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/spectral-trace-eq-k-index-trace.md) | 138 | `result-track:58119f0bde119c5b0d89f2adb5291b6f88631e50814e979d2f565f769644857a` |
| 11 | `structure` | [DiracKIndexWittTraceFormula](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/dirackindexwitttraceformula.md) | 157 | `declaration-track:bd93c64cd92b0098fc4b940eda40ff001177a570f8d433f719b8e80a28ccabb4` |
| 12 | `theorem` | [dirac_k_index_witt_trace_formula](../../../../../MathematicalLogicAndFoundations/GeneralLogic/DiracKTraceFormulaNamespaced.lean/declarations/dirac-k-index-witt-trace-formula.md) | 177 | `result-track:40d4c9c430d0c41a407281842c1a2bf7a54bdad2e71cb9ee96a62770f8fbdec2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6b9cfcc80b20abd6fe6cb4024e7d9edf6da162020f742a435acb50da758268b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/DiracKTraceFormula/Variant660ebfbe58cf0925df421d7270c57fa366f0584b7cdb22d59e16ebdeb664c655.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
