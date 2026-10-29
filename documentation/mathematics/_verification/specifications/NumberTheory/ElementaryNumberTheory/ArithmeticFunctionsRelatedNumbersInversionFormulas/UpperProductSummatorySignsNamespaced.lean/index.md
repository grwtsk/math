# Verification target: Upper Product Summatory Signs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "faf6a8dbcdb7378f106952b56518d7c99cb41c86",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variant0b4e2f34971f2e8041952bc6ca25382b16d14787537b5a4d70c53dbbca76d3ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperProductSummatorySignsNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperProductSummatorySignsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `faf6a8dbcdb7378f106952b56518d7c99cb41c86`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variant0b4e2f34971f2e8041952bc6ca25382b16d14787537b5a4d70c53dbbca76d3ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variant0b4e2f34971f2e8041952bc6ca25382b16d14787537b5a4d70c53dbbca76d3ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProductFiberSigns` — import line 6; external provider; requires a separately pinned dependency.
- `UpperProductFiniteSigns` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.UpperBoundaryAbel` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [upperProductCoefficient_sign](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperProductSummatorySignsNamespaced.lean/declarations/upperproductcoefficient-sign.md) | 21 | `result-track:6f6d1e6b95ea9ee59c41376875baaa4d9d3311af91b613c98c7011a5ef5992ed` |
| 2 | `theorem` | [upperProductSummatory_10_36](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperProductSummatorySignsNamespaced.lean/declarations/upperproductsummatory-10-36.md) | 29 | `result-track:cb9d3de60897b502159f111cd214af091cd0daef25827769d677a62182e19ae4` |
| 3 | `theorem` | [upperProductSummatory_10_42](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperProductSummatorySignsNamespaced.lean/declarations/upperproductsummatory-10-42.md) | 37 | `result-track:062ab44eec2d5d88e824eb6dd2dee28b1d309e5851a55a53c2cd6d1d354edff9` |
| 4 | `theorem` | [not_upperProductSummatory_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperProductSummatorySignsNamespaced.lean/declarations/not-upperproductsummatory-nonneg.md) | 45 | `result-track:c2a0510999bced4e3fac7e93db4be0fd5839b62677f49abf0a40517965c217e8` |
| 5 | `theorem` | [actual_signed_cumulative_negative_in_two_channel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/UpperProductSummatorySignsNamespaced.lean/declarations/actual-signed-cumulative-negative-in-two-channel.md) | 53 | `result-track:a65618c9f3cecb73eba2956325e17ca0be31d10dfa6454814a810a151dbcbd98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e038d1d7e472513b1d966534ba17637d4ab82c5b3ce386ea4cb951f3060ef95f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variant0b4e2f34971f2e8041952bc6ca25382b16d14787537b5a4d70c53dbbca76d3ac.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/UpperProductSummatorySigns/Variant0b4e2f34971f2e8041952bc6ca25382b16d14787537b5a4d70c53dbbca76d3ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
