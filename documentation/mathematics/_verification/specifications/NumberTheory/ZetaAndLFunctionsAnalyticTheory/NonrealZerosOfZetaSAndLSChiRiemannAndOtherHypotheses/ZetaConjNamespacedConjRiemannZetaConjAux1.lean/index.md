# Verification target: Zeta Conj Namespaced Conj Riemann Zeta Conj Aux1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cf0dc9a7c8bd92c9bd8a7a8920b342d621c0bb8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cf0dc9a7c8bd92c9bd8a7a8920b342d621c0bb8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Star` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_conj_conj'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/declarations/deriv-conj-conj.md) | 32 | `result-track:2b5b9938d86159958ece055a1fa5409591871e014922f82e8b56eb7d299b4232` |
| 2 | `lemma` | [conj_riemannZeta_conj_aux1](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/declarations/conj-riemannzeta-conj-aux1.md) | 48 | `result-track:8f53eff8b15e79f6190c3b47b108d1cc22bcfeafe3a729a3534ebb37d5a85be2` |
| 3 | `theorem` | [conj_riemannZeta_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/declarations/conj-riemannzeta-conj.md) | 77 | `result-track:c62b0de47eea08d0a9a0e426be3eb96c33ac7b3c59143e6dfc9a006d7a996c5b` |
| 4 | `theorem` | [riemannZeta_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/declarations/riemannzeta-conj.md) | 123 | `result-track:8df3971ac72c8277e1be0aaaa1dc0a61ddcf3d49a4fe2b78f1a456a9d0803180` |
| 5 | `theorem` | [deriv_riemannZeta_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/declarations/deriv-riemannzeta-conj.md) | 136 | `result-track:6c61a96f18b26beb6fd578fcdd0fbb435da37cb5aedcc0a611f0aea59288d440` |
| 6 | `theorem` | [logDerivZeta_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/declarations/logderivzeta-conj.md) | 140 | `result-track:2c4ce5e0d6fe9b755c65fc0b8cd5432a8f4f999e365d9006a4e6eb2b9d7b3dff` |
| 7 | `theorem` | [logDerivZeta_conj'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/declarations/logderivzeta-conj-source-edition-2.md) | 144 | `result-track:90496766cbd73b6ed4cf10efb60858d44585b9a3f1eceebcdbcb7f526168350a` |
| 8 | `theorem` | [intervalIntegral_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZetaConjNamespacedConjRiemannZetaConjAux1.lean/declarations/intervalintegral-conj.md) | 162 | `result-track:6ddbce09f7bad4b4b4ad37990db67317c2db13b2a86c41ff660b669c023bb0bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1a08fc60095f8c3fcbb3f9e9505675c708527640116c1905ce9eccb1184395c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ZetaConj/Variante123daa04e436efe356b630c03a454d381fe23ad7c7a9ac9a6992845e83a54fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
