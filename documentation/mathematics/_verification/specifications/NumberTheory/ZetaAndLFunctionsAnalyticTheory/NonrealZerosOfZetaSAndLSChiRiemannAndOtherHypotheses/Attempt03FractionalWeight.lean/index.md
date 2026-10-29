# Verification target: Attempt03 Fractional Weight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ad4bf4ea93788462f9cacb62725e12797a81933",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantbfbdd374e1b326fc62892679ae6492f016bc069662111f89bd65af0d71502085.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt03FractionalWeight.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt03FractionalWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ad4bf4ea93788462f9cacb62725e12797a81933`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantbfbdd374e1b326fc62892679ae6492f016bc069662111f89bd65af0d71502085.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt03/Variantbfbdd374e1b326fc62892679ae6492f016bc069662111f89bd65af0d71502085.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt03FractionalWeight.lean/declarations/fractionalweight.md) | 17 | `declaration-track:1e990d88fed78f1ae69fcc71ec13289a084bd41b23b96d65e9ed95b15cb29564` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt03FractionalWeight.lean/declarations/fractionalweight-integrable.md) | 19 | `result-track:ee051fcab87428d5d878027fb3ce3a621734fc63226d82b57969843d83ffe63e` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt03FractionalWeight.lean/declarations/fractionalweight-nonneg.md) | 28 | `result-track:50b6397d5ca84bbc2f66f5893e61e3e2e68d93eb973df4dd47b2ffadcbc2c0c3` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt03FractionalWeight.lean/declarations/real-centered-euler-integral.md) | 32 | `result-track:9106388ac2f89d42407656786ad6915cbc6df9d4c259f7d56f45730b640dafbd` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt03FractionalWeight.lean/declarations/riemannzeta-real-euler.md) | 47 | `result-track:4361b70134b34650019eee9f0853cd56d5e9885ad110281fd505b2eaa82ad7d6` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt03FractionalWeight.lean/declarations/riemannzeta-ofreal-neg.md) | 78 | `result-track:45808c4b40c4c51df16e8c7a241d3334a9040bd72293909523984bf7c6bed7f1` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt03FractionalWeight.lean/declarations/nontrivial-zero-im-ne-zero.md) | 88 | `result-track:6aa7a1874530bd2bc40ae717c04466b5fe6141b50d2a4ba178c27ad723382f76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0e314a41d23940f2bbcce1079175ece30be7c8ffefdd498b86b2624aaefaf17 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt03/Variantbfbdd374e1b326fc62892679ae6492f016bc069662111f89bd65af0d71502085.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt03/Variantbfbdd374e1b326fc62892679ae6492f016bc069662111f89bd65af0d71502085.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
