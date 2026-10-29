# Verification target: The One Sided Source Rate Reaches AFull Zero Strip Through Exact Symmetry Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d65c067392d2783c95fa1f275a1710f0d2dabad",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RightBoundaryConsumer/Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TheOneSidedSourceRateReachesAFullZeroStripThroughExactSymmetryEdition1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TheOneSidedSourceRateReachesAFullZeroStripThroughExactSymmetryEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d65c067392d2783c95fa1f275a1710f0d2dabad`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RightBoundaryConsumer/Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RightBoundaryConsumer/Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.PolynomialRHConsumer` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RightBoundary](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TheOneSidedSourceRateReachesAFullZeroStripThroughExactSymmetryEdition1.lean/declarations/rightboundary.md) | 28 | `declaration-track:0732cdc9c73773916f51be64663206f053eef24799d1b6d66401cacad7c94f18` |
| 2 | `theorem` | [rightBoundary_iff_zeroStrip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TheOneSidedSourceRateReachesAFullZeroStripThroughExactSymmetryEdition1.lean/declarations/rightboundary-iff-zerostrip.md) | 31 | `result-track:bfb80866b2a72a00efb3fbbbe252e5f7b545ff3d86b47d9ecba62bc78cdbec6e` |
| 3 | `def` | [ExactSourceRightRateReturn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TheOneSidedSourceRateReachesAFullZeroStripThroughExactSymmetryEdition1.lean/declarations/exactsourcerightratereturn.md) | 43 | `declaration-track:2b70406d9181e3ebc1918b0443057ecd615b681136f7da7d6f193839bb530bfd` |
| 4 | `theorem` | [exactRightReturn_implies_stripSupplier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TheOneSidedSourceRateReachesAFullZeroStripThroughExactSymmetryEdition1.lean/declarations/exactrightreturn-implies-stripsupplier.md) | 49 | `result-track:332cb7c2cf665ebdd0c029f84d9dfda13ef5aa63b495be08e361eefd8227a4b3` |
| 5 | `theorem` | [rh_of_problemP_and_exactRightReturn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TheOneSidedSourceRateReachesAFullZeroStripThroughExactSymmetryEdition1.lean/declarations/rh-of-problemp-and-exactrightreturn.md) | 54 | `result-track:01c87908a6d50dc9783d003d8c42e37c5dc95b4f8d5c2a04819f379521903342` |
| 6 | `theorem` | [arbitrarily_small_right_bounds_imply_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/TheOneSidedSourceRateReachesAFullZeroStripThroughExactSymmetryEdition1.lean/declarations/arbitrarily-small-right-bounds-imply-rh.md) | 58 | `result-track:81c2414e8b109929ab86624c0ccdf1100bc87b0ceabcfb4c29a32d712d8333d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9954ed4a191903a4519f59d4fd92fa0b883076adce727d83f98bb4efde80c1ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RightBoundaryConsumer/Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RightBoundaryConsumer/Variant616ed6a71250376dab580be2639f4d6bda7fa73d351b34a0d3e304c3d0c2efeb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
