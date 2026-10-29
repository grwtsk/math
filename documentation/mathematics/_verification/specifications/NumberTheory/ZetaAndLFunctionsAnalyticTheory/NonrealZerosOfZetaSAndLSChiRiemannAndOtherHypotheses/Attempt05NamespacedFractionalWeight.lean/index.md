# Verification target: Attempt05 Namespaced Fractional Weight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f912c8baf11c6b2a94a1409e5a5b54d58852641a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variante2bfc35d068eb7b7a89ada37306acaa21a3cdf9037cb1edec6ff64fb687d5192.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f912c8baf11c6b2a94a1409e5a5b54d58852641a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variante2bfc35d068eb7b7a89ada37306acaa21a3cdf9037cb1edec6ff64fb687d5192.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt05/Variante2bfc35d068eb7b7a89ada37306acaa21a3cdf9037cb1edec6ff64fb687d5192.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/fractionalweight.md) | 25 | `declaration-track:ba656d542d25456009a11a2796e50498d0fcae5b2c211bf42d468c4a915c5817` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/fractionalweight-integrable.md) | 27 | `result-track:b0800f88ac6d9fd9a4fa6c335ff6138b7796c201cec7e1ad28a9a1d8fc7b75d1` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/fractionalweight-nonneg.md) | 36 | `result-track:cae440b68fff7c01944f863cc053f5dbe49a0b1b81df5ad2fdcbcfaad1af7b8d` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/real-centered-euler-integral.md) | 40 | `result-track:cc5cc998e03ca9aad8e99aaa3647e7730882e0fa806be5de99c07f92948125bb` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/riemannzeta-real-euler.md) | 55 | `result-track:f6b0035b0bcb646cef67c401fea679280ee1a230eaa6fbe27ecaf73a0ef7020a` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/riemannzeta-ofreal-neg.md) | 86 | `result-track:ced0386b713e500d8452ded448b94463deb1031a2a6f06fdfc8feb532a4347ef` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/nontrivial-zero-im-ne-zero.md) | 96 | `result-track:318fac34bd4b94c6eaec2b7b6106ca27cea8dd9eb66723d07a0ac681b3279db9` |
| 8 | `def` | [realGammaR](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/realgammar.md) | 104 | `declaration-track:cbe826700e3f07b4be3fae2e619535bd322f4be68137a93aa589f2dea05a32cf` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/gammar-ofreal.md) | 106 | `result-track:0e71337a7b2bdd89a032350dfc390da89b2c1b8c056d82d64745da37106d5b48` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/realgammar-pos.md) | 113 | `result-track:273ea6f9637351cd79583bc8d2becee5755d25a5a3ba784beb733780ad9dccfb` |
| 11 | `theorem` | [xi_real_euler](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/xi-real-euler.md) | 116 | `result-track:b63fa2fee0dba4221ed50928353917e7c8c467293cb4bc30ea98caac98e94259` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/xi-ofreal-re-pos.md) | 130 | `result-track:69aad6420a035cb12721b949967b58e56b94b60b7fdad8aa426374f2a1eaa432` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/coefficient-zero-exact.md) | 141 | `result-track:aaff40f5dc96f7647acac999629feceae4e5c1e1c96a6633fc5f54357e6497bc` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05NamespacedFractionalWeight.lean/declarations/coefficient-zero-pos.md) | 152 | `result-track:e883a15a0eaa03043fdcc70b27cfc4dd8dcc4f801a525cf4002cf4ac1d91893a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdbcbefbe69cb41b314e627ef124d3b1918c0d58b35aeda89a3fca48a3d5073e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt05/Variante2bfc35d068eb7b7a89ada37306acaa21a3cdf9037cb1edec6ff64fb687d5192.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt05/Variante2bfc35d068eb7b7a89ada37306acaa21a3cdf9037cb1edec6ff64fb687d5192.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
