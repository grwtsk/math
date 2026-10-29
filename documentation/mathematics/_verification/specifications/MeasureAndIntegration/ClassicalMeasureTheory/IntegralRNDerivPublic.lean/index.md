# Verification target: Integral RNDeriv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "191f557131e14fa91865a816718c73e9ef8d1fa5",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralRNDerivPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralRNDerivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `191f557131e14fa91865a816718c73e9ef8d1fa5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Approximation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.IntegralCompProd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.RadonNikodym` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Measure.integrable_toReal_rnDeriv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralRNDerivPublic.lean/declarations/measure-integrable-toreal-rnderiv.md) | 40 | `result-track:5c056420de81d054c3001799c0e56d3db83e5579e68927000d860dfdbd6a3ea8` |
| 2 | `lemma` | [le_integral_rnDeriv_of_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralRNDerivPublic.lean/declarations/le-integral-rnderiv-of-ac.md) | 48 | `result-track:2de4247b8bac91e33fa85c78bae5dbef6f6623b16746c46b946f7c3bc9fc585e` |
| 3 | `lemma` | [mul_le_integral_rnDeriv_of_ac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralRNDerivPublic.lean/declarations/mul-le-integral-rnderiv-of-ac.md) | 63 | `result-track:7cd40863821c2bffef3ea897029da0d9480c95ea0a26d87a1c7cbdd9c686c33f` |
| 4 | `lemma` | [lintegral_rnDeriv_compProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralRNDerivPublic.lean/declarations/lintegral-rnderiv-compprod.md) | 114 | `result-track:535fcdda8418496e63f4abd566211d83111b1a7be042a34de0db36437e2310a7` |
| 5 | `lemma` | [_root_.ConvexOn.apply_rnDeriv_ae_le_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralRNDerivPublic.lean/declarations/root-convexon-apply-rnderiv-ae-le-integral.md) | 129 | `result-track:245b755966ab66d22a72880dfddb73bfd0a4e381acb4ff0893f7f0367e304e5f` |
| 6 | `lemma` | [_root_.ConvexOn.integrable_apply_rnDeriv_of_integrable_compProd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/IntegralRNDerivPublic.lean/declarations/root-convexon-integrable-apply-rnderiv-of-integrable-compprod.md) | 176 | `result-track:1da8132708b2acaf2a8043ad8f203447c781ed4770bf9c823186743111a37a5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83987e72be68d5cdfa37d70c2f26c0e79799ec62e94f42e1a21b19b8485e21ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/IntegralRNDeriv/Variant15ddd59666715b0436ffc293a7de4dacafc5c562ee1e2fecc4c10445c49f3e65.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
