# Verification target: Re Zero Count

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c603bf0886048e1f6fa4431aeb1e4d24af16658",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Variant7e37c415190d1dc2a30ed85d23ede62243aaaa164cb3930cb9c11632bc33bb05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c603bf0886048e1f6fa4431aeb1e4d24af16658`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Variant7e37c415190d1dc2a30ed85d23ede62243aaaa164cb3930cb9c11632bc33bb05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Variant7e37c415190d1dc2a30ed85d23ede62243aaaa164cb3930cb9c11632bc33bb05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.RvM.BacklundDefs` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.ZetaGrowth` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.LocalCount` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [finite_zeros_closedBall](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/declarations/finite-zeros-closedball.md) | 27 | `result-track:1002a3c493d374b26d757df9ce0c21b8b4c7b2c2795ae0995bf1a2a464a5592a` |
| 2 | `def` | [symZeta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/declarations/symzeta.md) | 53 | `declaration-track:2baa7f703bcbff88e5b5fdafaf75b936dbb05e7835f8f616b3e0a34707edea20` |
| 3 | `lemma` | [ne_one_of_im_large](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/declarations/ne-one-of-im-large.md) | 55 | `result-track:c47c43accf2cfc619aa10564f4f144c8c2fc0502f9e163ae621d9beb9384a8a1` |
| 4 | `lemma` | [symZeta_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/declarations/symzeta-analyticat.md) | 71 | `result-track:9ab7ff29deb47f3da80b9f6e2d33b6e9b0d72b6de0e7d83b14fb843a3053a474` |
| 5 | `lemma` | [symZeta_ofReal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/declarations/symzeta-ofreal.md) | 85 | `result-track:53ec9f60ca93df217fc245cc792c92fd5d580b862fb64797e166c5e02759a809` |
| 6 | `theorem` | [reZeroSet_card_le_of_growth](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/declarations/rezeroset-card-le-of-growth.md) | 101 | `result-track:153c3f73154fdc869d1c93559b7e417f90b11f4e9575db5cea77636717f94c5c` |
| 7 | `theorem` | [reZeroSet_card_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/declarations/rezeroset-card-le.md) | 351 | `result-track:caf8d137b48d91b9fbcd7b071ebcef41884ceb8c99098b338f80f6537df0408c` |
| 8 | `theorem` | [reZeroSet_card_le_at](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ReZeroCount.lean/declarations/rezeroset-card-le-at.md) | 358 | `result-track:fffd4b7b52d8e8aa43246e3f32d64d7a26775327ba64119699bdafe97afd8a3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f5d91450015548f764be32e8e0577096ceaf4a60a21f4cdfbaed0a0d5d3c979f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Variant7e37c415190d1dc2a30ed85d23ede62243aaaa164cb3930cb9c11632bc33bb05.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCount/Variant7e37c415190d1dc2a30ed85d23ede62243aaaa164cb3930cb9c11632bc33bb05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
