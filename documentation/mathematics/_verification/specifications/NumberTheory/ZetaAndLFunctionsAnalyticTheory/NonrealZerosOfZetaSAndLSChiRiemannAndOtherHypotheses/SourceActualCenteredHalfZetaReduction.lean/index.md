# Verification target: Source Actual Centered Half Zeta Reduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca06da31ba9da09e2244501643f8cb1e9a3869f3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualCenteredHalfZetaReduction.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualCenteredHalfZetaReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca06da31ba9da09e2244501643f8cb1e9a3869f3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualHalfHarmonicZeta` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualVaughanMeanBound` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCenteredHalfZetaMain](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualCenteredHalfZetaReduction.lean/declarations/actualcenteredhalfzetamain.md) | 23 | `declaration-track:6edb74dd59b7e73dace66aabcc34c52fab093670c1de54f3ca58f32601abe542` |
| 2 | `def` | [halfHarmonicQuotientDefect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualCenteredHalfZetaReduction.lean/declarations/halfharmonicquotientdefect.md) | 28 | `declaration-track:464e1cf64df85349f643db7d4cd1e5470ca352a39728efc65aab6d723e53a7b5` |
| 3 | `theorem` | [halfHarmonicQuotientDefect_abs_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualCenteredHalfZetaReduction.lean/declarations/halfharmonicquotientdefect-abs-le.md) | 34 | `result-track:d468c869a5a7e18025375d7cb5a8ba91a2e54cda0b1614a96f10010c0ba438fc` |
| 4 | `theorem` | [closedCenteredHalfInventory_sub_zetaMain_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualCenteredHalfZetaReduction.lean/declarations/closedcenteredhalfinventory-sub-zetamain-eq.md) | 106 | `result-track:80b35a053233c28e7fdffc647eb5172e8543ea9c4e37ccc92af9ad5ee5d96aad` |
| 5 | `theorem` | [closedCenteredHalfInventory_sub_zetaMain_abs_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualCenteredHalfZetaReduction.lean/declarations/closedcenteredhalfinventory-sub-zetamain-abs-le.md) | 131 | `result-track:a3570fde05cbaeee385920bc42b7cf1c294b9d27433cf25c4d5718c8916f4b3b` |
| 6 | `theorem` | [actualCenteredColumnHalfInventory_sub_zetaMain_abs_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualCenteredHalfZetaReduction.lean/declarations/actualcenteredcolumnhalfinventory-sub-zetamain-abs-le.md) | 169 | `result-track:e19166288c3957006d18cc1f62b187d4ec44e103f7e4ae0d0712a0d9454a6e5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5037d2eb70b34cead650bd042f8cfc1159b188e5700ce55f63c1122ccb80ae1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualCenteredHalfZetaReduction/Variant9e2564ce9786156305ea84de838797c641acb90ea6cb1fb2c5e71263e6f4056e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
