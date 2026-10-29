# Verification target: Kadiri Re Eq Of Entire Agree On Halfplane

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09c661c61a357717b95f812192cb59f97c078d54",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variant589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09c661c61a357717b95f812192cb59f97c078d54`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variant589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Kadiri/Variant589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.Defs` — import line 2; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.ZetaDefinitions` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Digamma` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [laplaceTransform](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/laplacetransform.md) | 37 | `declaration-track:c8ea96fe3399ad8bab3d8815accb56bb8c0cea34a940b1568e57e4db3b581fe8` |
| 2 | `lemma` | [f_log_support_finite](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/f-log-support-finite.md) | 42 | `result-track:0351aec015f40d9d0ca95aff41cb2eeac6d18c9a5a49b250fc1457d49a094882` |
| 3 | `lemma` | [summable_f_log](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/summable-f-log.md) | 55 | `result-track:9bcacf0bff45bca07bfa8911c0a6443b904ac8e3402a5e8e4655fb5cf69573c4` |
| 4 | `def` | [hadamardB](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/hadamardb.md) | 85 | `declaration-track:4ec48b028e514b00fc08519e9482716dd28c957038a4bc3c33b0d010f29a2a8c` |
| 5 | `theorem` | [hadamard_identity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/hadamard-identity.md) | 103 | `result-track:eabfb3e70a1fb6d7da1e86370de98776cc37542b8f65bae14082187472b90418` |
| 6 | `theorem` | [identity_16](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/identity-16.md) | 135 | `result-track:bc0e651604fa02452948525c7297362cfb1759fc09704f35784553406bee5df8` |
| 7 | `theorem` | [re_eq_of_entire_agree_on_halfplane](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/re-eq-of-entire-agree-on-halfplane.md) | 174 | `result-track:457c6edfffc3d75dfd4b6b8f2a992f2219ec40bb4fc6c85892bf203332f4e14b` |
| 8 | `theorem` | [re_hadamardB_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/re-hadamardb-eq.md) | 201 | `result-track:a174da03dbfe695db10bc5fac614b3a31948a792ec8e456021e09a6fa261ffcc` |
| 9 | `theorem` | [summable_lap_re_at_zeros](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/summable-lap-re-at-zeros.md) | 219 | `result-track:73b1cd3a35eb69abb90ae219d45662b2bc3bdf7a6745eb9f708e66159de9219c` |
| 10 | `theorem` | [re_inner_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/re-inner-eq.md) | 252 | `result-track:a776d56c5a89df95ad105f54321f105e024891a998ce5baa3e893dac5021f41d` |
| 11 | `theorem` | [prop_2_1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/prop-2-1.md) | 288 | `result-track:d4203c1badb90ea7115ec7f964bb2029d40a196a28cf4b1e83fdf7b40dad7f5b` |
| 12 | `def` | [T1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/t1.md) | 325 | `declaration-track:2f6a7266e9c9607e736401b0f71c591eca91aaddb7edc23114603d0cdb076be5` |
| 13 | `def` | [T2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/t2.md) | 330 | `declaration-track:9f1f5d07c4556d9459a2659e354cad129c81ff65585e6b234bc2aa95f8a90748` |
| 14 | `def` | [D](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/d.md) | 340 | `declaration-track:f9da64d6953e915c41db730e30493cbbbd2d876f78b9f878e1059c441001db98` |
| 15 | `def` | [Δ1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/1.md) | 344 | `declaration-track:6da808b91df3f73d7fdc3d75cc630174fe2630fc0f4e4678fca6f7d863442e88` |
| 16 | `def` | [Δ2](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/2.md) | 348 | `declaration-track:f0ff5ef2b85ca56260efa44d2276c36a72163a525a2b189d07319e2cb160077e` |
| 17 | `theorem` | [eq_5](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/KadiriReEqOfEntireAgreeOnHalfplane.lean/declarations/eq-5.md) | 371 | `result-track:01333dd4e20400cf49f821b295e9645a49ec780421447e4c5ec6e68aa9b54efd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=64f24167765877210baa0af1e4457b4108aea92f8420b831b663bdfbd2b1f457 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Kadiri/Variant589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Kadiri/Variant589e7b0ff5b92f1ea6f1795a6dd02bab898002416437202b5c86acdb61b5fedd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
