# Verification target: EFMain

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "269b3177e0c20517884d2f537ea9802e25e06d96",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variant8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `269b3177e0c20517884d2f537ea9802e25e06d96`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variant8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variant8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.EFJTermW` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.EFWeights` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.GramBridge` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.PrimeTermJ` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.FamilyFacts` — import line 23; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.XiEFAssembly` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LineFactsW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/linefactsw.md) | 40 | `declaration-track:d8aba75bc110869fbea397257482d2dea24c17dc0e4cfacf821d93a6de282ca9` |
| 2 | `def` | [ContourFactsW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/contourfactsw.md) | 46 | `declaration-track:3768bab42d75a357769fc4ee25415f4b8bf01cd454f2be4ddc0dc4a96671ca1e` |
| 3 | `def` | [CoeffFactsC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/coefffactsc.md) | 54 | `declaration-track:b215b222db7771f857c921e6b7ae271093cdf071691aea97f1151a0a8923cc0a` |
| 4 | `lemma` | [hardyW_analyticAt_leftStrip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/hardyw-analyticat-leftstrip.md) | 64 | `result-track:95381f8125d3c822014a5cf842f029549ca48eaa3893d2bc217fe1fbc1de24d3` |
| 5 | `theorem` | [hardyW_eq_neg_chiFE_mul_goodStrip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/hardyw-eq-neg-chife-mul-goodstrip.md) | 103 | `result-track:2959de5b08a359a152d3ad6d300e454250e881358e261c8911b0f37b7650bac8` |
| 6 | `theorem` | [hardyW_ne_zero_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/hardyw-ne-zero-reflect.md) | 141 | `result-track:f7e8e3881bdd4c8bde0be88705a3081340f2c772e41262875c657b0119d56c15` |
| 7 | `theorem` | [Hfn_eq_paperFT'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/hfn-eq-paperft.md) | 152 | `result-track:82eef5549dfcec4d94d3e9b80350e6c81911e59c8d97c13a5d654583f42f40e0` |
| 8 | `theorem` | [arg_re_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/arg-re-im.md) | 154 | `result-track:67990bf1d0e7b34680fd3cb2f160caa12ba6e055b5c3a82e589935c862d5dfd0` |
| 9 | `theorem` | [line_arg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/line-arg.md) | 158 | `result-track:0ee96f5e0223925410bf05f5e5ee7e2fdb4f788feb961dd61920904623fe3bb1` |
| 10 | `theorem` | [mirror_arg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/mirror-arg.md) | 161 | `result-track:dc55d3f31b16488d60eb41803921c5b0eb6cd0689d946b82e3e13a869edab6d7` |
| 11 | `theorem` | [cauchyK_neg_arg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/cauchyk-neg-arg.md) | 164 | `result-track:e8907ebc8f304b00969020b4eeccc16924c793613fbf2197c440bbd7419c8f69` |
| 12 | `theorem` | [wEF_of](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMain.lean/declarations/wef-of.md) | 169 | `result-track:02d8b3fc9b68bf527d84f17ef87fb2fa76b9e9c19ef1535f748fca48f3785431` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7f9e45d459b4d9614645356ed98710b70e4c6917b65239971acf715fdc4895e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variant8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variant8a9fbe952a7b8d23c3121e02f4e92b8d5c237710661e8666ad37e6b8ab0cf879.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
