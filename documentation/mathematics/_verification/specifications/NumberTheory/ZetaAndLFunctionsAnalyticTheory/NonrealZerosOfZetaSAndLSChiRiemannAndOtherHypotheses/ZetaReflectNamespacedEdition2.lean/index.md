# Verification target: Zeta Reflect Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b2ff5bed2cb89e99da271185359e85e5cf5f021",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variante6d7d20b6d12cca3875853ff456b21339fd677ff6a1b4597493e80806927b86e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b2ff5bed2cb89e99da271185359e85e5cf5f021`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variante6d7d20b6d12cca3875853ff456b21339fd677ff6a1b4597493e80806927b86e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/ZetaReflect/Variante6d7d20b6d12cca3875853ff456b21339fd677ff6a1b4597493e80806927b86e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Statement` — import line 28; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Analytic` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 36; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [zeta_conj_of_one_lt_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/zeta-conj-of-one-lt-re.md) | 48 | `result-track:f1e42a3c369cc1f25c9f9a61e1ba0d3a3cab0f4e9993677ee01ab2723ceca045` |
| 2 | `theorem` | [riemannZeta_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/riemannzeta-conj.md) | 70 | `result-track:247b2cfa80d2c09bc598985f44054064f8f476c5b865024a4b23eb10f99cf90f` |
| 3 | `lemma` | [tendsto_conj_nhds](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/tendsto-conj-nhds.md) | 110 | `result-track:86ecfd2c2143276ff00c4318e32d8fa9955b009667a1404ca88e7dae628d021d` |
| 4 | `lemma` | [analyticAt_conj_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/analyticat-conj-conj.md) | 115 | `result-track:db793df68c2808492b8c7bd65bc38ada793f28904ab9490b0f9d1655672d1a4c` |
| 5 | `theorem` | [analyticOrderAt_conj_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/analyticorderat-conj-conj.md) | 124 | `result-track:3c8f44337e85c682635709200f34d2fa4cd6c3050af2972e8be2c2cd12e21a17` |
| 6 | `theorem` | [analyticOrderAt_zeta_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/analyticorderat-zeta-conj.md) | 152 | `result-track:b7c426ab335ed20fb824ba7629683adaede6636bacc33214e20bae7b1e01ec38` |
| 7 | `def` | [Efac](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/efac.md) | 171 | `declaration-track:6455c371a95d5d2ad1c3e2434ec59dc22113eeaea96f90725666965e52de8bf0` |
| 8 | `lemma` | [two_pi_ne_zero'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/two-pi-ne-zero.md) | 174 | `result-track:13d7bd43807fe5789b77673309effb03edef8da22f34e7a9906f998f574437fa` |
| 9 | `lemma` | [Efac_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/efac-ne-zero.md) | 178 | `result-track:5c977adbeb7593c35bf5afc23f5a30e0bf95d2ab2f0df189ce47a663b37c90de` |
| 10 | `lemma` | [analyticAt_Efac](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/analyticat-efac.md) | 207 | `result-track:a598b9b25051b3b043efb6468a9852e3ee28ba21865e1bfe02c0e7cef7befba8` |
| 11 | `theorem` | [analyticOrderAt_zeta_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/analyticorderat-zeta-one-sub.md) | 232 | `result-track:1f15089945365851c98f3de519b4e6496759854f36cce1b83d5b5776a4635725` |
| 12 | `theorem` | [zeta_reflect_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/zeta-reflect-zero.md) | 286 | `result-track:f0648f59d011248952605ee45652d3fdf1fb07fab912b7ee0fc20815a944cd67` |
| 13 | `theorem` | [zeta_mult_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaReflectNamespacedEdition2.lean/declarations/zeta-mult-reflect.md) | 322 | `result-track:af09757a6668fd60892a58c767cc731ab6ba44d1ca0263ab0fb349c6aea72f63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2e7c19240d70e1188a3ed9f0e8d557e324a3540e13b76fee1533a283c0d79d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/ZetaReflect/Variante6d7d20b6d12cca3875853ff456b21339fd677ff6a1b4597493e80806927b86e.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/ZetaReflect/Variante6d7d20b6d12cca3875853ff456b21339fd677ff6a1b4597493e80806927b86e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
