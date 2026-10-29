# Verification target: Family Hyps VNamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c77408fe6586397e3c57ff94be7d415317d1d7b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c77408fe6586397e3c57ff94be7d415317d1d7b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.FamilyHyps` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow.Params` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow.ModWindow` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.InnerProduct` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Thickening` — import line 34; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_margin](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/exists-margin.md) | 50 | `result-track:199b141036944bb555b627df4476b9c51c4280190c924b3ff74fde34283ede69` |
| 2 | `lemma` | [exists_smooth_sqrt](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/exists-smooth-sqrt.md) | 86 | `result-track:657f51efcb160026c20701386a49df6faa4f172dc86585d03c37cb7cb6fda60c` |
| 3 | `def` | [gfac](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/gfac.md) | 172 | `declaration-track:998b0423854ad5e5f3acfabc560d86f3a206e6ca12501d6d2ce01971a20a0a56` |
| 4 | `lemma` | [gfac_contDiff](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/gfac-contdiff.md) | 174 | `result-track:eef0caf704b547dc2bde6d089a54690d3965ad4eda26261804d177206c3fa315` |
| 5 | `lemma` | [iteratedDeriv_gfac](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/iteratedderiv-gfac.md) | 177 | `result-track:811108a731b7ceef9ad9cf3c391ca5f057180223fb68d9922a8ff04cc1adf62d` |
| 6 | `lemma` | [abs_iteratedDeriv_gfac_le](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/abs-iteratedderiv-gfac-le.md) | 182 | `result-track:d4d837e26c2d4d07ec85e63197006997720455744a07c737c1ec60f70740d8dc` |
| 7 | `lemma` | [phiV_eq_mul](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/phiv-eq-mul.md) | 190 | `result-track:5522fcc4366e4433ff4e5b42e9e35715d52801d19f0b3cdeebdc5be5e8e7d52d` |
| 8 | `theorem` | [integral_abs_iteratedDeriv_mul_le](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/integral-abs-iteratedderiv-mul-le.md) | 204 | `result-track:cd6767034204676dbc5c6e8364e1c56d3444b59201930cd47233eb4a582f889a` |
| 9 | `theorem` | [Family Hyps VNamespaced](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-riemannz-source-edition-2.md) | 302 | `result-track:757395592a3947d5d677a202298b3d418b5dff2c8708c5d2fa9ecb5487fce413` |
| 10 | `theorem` | [Family Hyps VNamespaced](../../../../MeasureAndIntegration/FamilyHypsVNamespaced.lean/declarations/root-grwtsk-numbertheory-analyticnumbertheory-zetaandlfunctions-riemannz.md) | 342 | `result-track:4e7cfe7a820a50aa7bd70a37bcb6261312c0770ba71b583c5024213e35492ebf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d0ba0fc04cb2f89505c4fa2fae956da51881e7759381b7ce32dffd652bf5fd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FamilyHypsV/Variant26dad586a2797fe0498823694e21ceab6aa355e3898b0b1abe425cf333a66e4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
