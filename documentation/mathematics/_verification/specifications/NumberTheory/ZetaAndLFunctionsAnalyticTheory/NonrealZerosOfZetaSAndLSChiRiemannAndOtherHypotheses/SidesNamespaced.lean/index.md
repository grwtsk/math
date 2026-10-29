# Verification target: Sides Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06759d8f9d559acee3bc52992d42d2435e60fc6f",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06759d8f9d559acee3bc52992d42d2435e60fc6f`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ZeroCount.Landau` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.ArgBound` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount.Contour` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Backlund` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [horizontal_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/horizontal-bound.md) | 41 | `result-track:06996fe00ffb10ec3793fa6e817ab61102d1049b76e4a121bd4b449257510013` |
| 2 | `def` | [Pneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/pneg.md) | 51 | `declaration-track:d741893207629fe9658d51f17ceb901a5bd555114cedc222345d2e2602963208` |
| 3 | `def` | [Gfn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/gfn.md) | 54 | `declaration-track:d4882a8204f6545e06af81b0ac57f2535e9d1b77e38af408528015f2fce91eb2` |
| 4 | `lemma` | [re_Pneg_two](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/re-pneg-two.md) | 56 | `result-track:3b8a421da3d58954284daed9533662a6742d5bd128d175f5a64e5bc93475526b` |
| 5 | `lemma` | [Pneg_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/pneg-analyticat.md) | 60 | `result-track:4ca5c38d02e1ae026199d48f1a983d807a0349b6083bd37fb62b6b20b7b91211` |
| 6 | `lemma` | [Lfn_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/lfn-analyticat.md) | 65 | `result-track:8ee0c44d0ac4594b29d9f93400441d0e43e4dcde4854ec0ec6ff47ecdb13d805` |
| 7 | `lemma` | [logDeriv_zeta_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/logderiv-zeta-analyticat.md) | 76 | `result-track:ba7b8a91de8437a99da4687dc378e4e38160feae5603346ee00ca490a4585071` |
| 8 | `lemma` | [Gfn_analyticAt_two](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/gfn-analyticat-two.md) | 82 | `result-track:d316c268e9e7fc7953f61564997860ebb591297903956b9fc2c96c1568f95264` |
| 9 | `lemma` | [logDeriv_Yfn_two](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/logderiv-yfn-two.md) | 88 | `result-track:4605592da70503c67aea403fc18776f0133fc952c18f9eda6a65f88eb70d4c85` |
| 10 | `lemma` | [intervalIntegrable_logDeriv_two](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/intervalintegrable-logderiv-two.md) | 123 | `result-track:c0e0f29845ae1f8bce2c417e9b9f6011e93c34e20a4fd3554d2a8a8532cd6994` |
| 11 | `theorem` | [vertical_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SidesNamespaced.lean/declarations/vertical-bound.md) | 134 | `result-track:8444f0522ea135608976228553a2742214dac00c84a18db1d5a74a6fd98809b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=626d3bc1e599fa09c4a82efb04e77a9d231156499e413cff358e298133d1ef0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Sides/Variantc406a11898ff301e09ff09e042aeea3637bcdf3dbfef9ba7c9fc750d4a800869.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
