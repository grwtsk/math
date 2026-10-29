# Verification target: Hurwitz Zeta Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95f4daf1a029b54c880665a3d4d56efd3573a93c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant3f368e6f7e98407e72f89bd546ad6bf55c84234e78f712de3c35cb7a6343c8ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95f4daf1a029b54c880665a3d4d56efd3573a93c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant3f368e6f7e98407e72f89bd546ad6bf55c84234e78f712de3c35cb7a6343c8ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant3f368e6f7e98407e72f89bd546ad6bf55c84234e78f712de3c35cb7a6343c8ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.HurwitzZetaEven` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.HurwitzZetaOdd` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hurwitzZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/hurwitzzeta.md) | 57 | `declaration-track:d5b3f6f9541d9948cd09b8852c30ddabba36ee305b6b071b237af82a0f6e69aa` |
| 2 | `lemma` | [hurwitzZetaEven_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/hurwitzzetaeven-eq.md) | 60 | `result-track:b4394b2fae33ced050ea8204ca69d4612ac13949e03aa54ac136cabc655405ed` |
| 3 | `lemma` | [hurwitzZetaOdd_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/hurwitzzetaodd-eq.md) | 65 | `result-track:5e5b1aa6fc46525f2aa73c4744db397c015ee8ae9d548399e2a2d3aee72259aa` |
| 4 | `lemma` | [differentiableAt_hurwitzZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/differentiableat-hurwitzzeta.md) | 71 | `result-track:379ab5185089e88b65e4651deb4bfb5601b892e805cd3dd05633d73412488d68` |
| 5 | `lemma` | [hasSum_hurwitzZeta_of_one_lt_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/hassum-hurwitzzeta-of-one-lt-re.md) | 77 | `result-track:d9f4a53bfa086efc55b8c2b9ea5c1b06725aabacfb38b1c755c8df3c56755f0a` |
| 6 | `lemma` | [hurwitzZeta_residue_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/hurwitzzeta-residue-one.md) | 86 | `result-track:e401aba82ce1b28784d03a0248c6bbed3b2f5cab18f3c0a00c13517617cff024` |
| 7 | `lemma` | [differentiableAt_hurwitzZeta_sub_one_div](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/differentiableat-hurwitzzeta-sub-one-div.md) | 92 | `result-track:33b1a5704496614b314f215ad8422f7966ae261f898d4897f170f5eed3609ccd` |
| 8 | `lemma` | [tendsto_hurwitzZeta_sub_one_div_nhds_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/tendsto-hurwitzzeta-sub-one-div-nhds-one.md) | 100 | `result-track:c072e07eab253735d28cb3d5476e2303bc512734d340eedc15ab4998c3de933b` |
| 9 | `lemma` | [differentiable_hurwitzZeta_sub_hurwitzZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/differentiable-hurwitzzeta-sub-hurwitzzeta.md) | 107 | `result-track:f032a041908c8c00cea4063eb370a91b84144f61a378437186111c20a0deb27b` |
| 10 | `def` | [expZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/expzeta.md) | 119 | `declaration-track:ebbb1fe2dfc98361769f5c1a5cd85c0eea2fa99dd321d96e86f96eeabe2d95f7` |
| 11 | `lemma` | [cosZeta_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/coszeta-eq.md) | 122 | `result-track:bac4192f0355077be807021924138e361a3d71794bed781c54c429f170090604` |
| 12 | `lemma` | [sinZeta_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/sinzeta-eq.md) | 127 | `result-track:25aa124f5c83c8520ad08643a4483bdcbb115baf30e26f086ee47e63e3d37324` |
| 13 | `lemma` | [hasSum_expZeta_of_one_lt_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/hassum-expzeta-of-one-lt-re.md) | 133 | `result-track:c3832428b62be656266dd64420a14746ea640f00f1daf0f401f10109c866caeb` |
| 14 | `lemma` | [differentiableAt_expZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/differentiableat-expzeta.md) | 140 | `result-track:6ccf88fcb0c0d22740a9f93eaeaee4c7e27e1e92f3981d3546892be6a4567fca` |
| 15 | `lemma` | [differentiable_expZeta_of_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/differentiable-expzeta-of-ne-zero.md) | 147 | `result-track:3369d847e0acbe80970df236491001f50d69a4ea29d0f99d9b2e80171abb9918` |
| 16 | `lemma` | [LSeriesHasSum_exp](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/lserieshassum-exp.md) | 152 | `result-track:22ae1e71753b2a015d42b8ad1c897f9b625b2eadb43c5ce3732665ad7acd7b2b` |
| 17 | `lemma` | [hurwitzZeta_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/hurwitzzeta-one-sub.md) | 161 | `result-track:6bdd215819b7cc4cfb827b1c134c81aa3b0f73b894d46788624bab9970cc67b1` |
| 18 | `lemma` | [expZeta_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaNamespaced.lean/declarations/expzeta-one-sub.md) | 177 | `result-track:5c75e41d65ac09bed6ca88589d36906eb3624b229959bcf2e56d5dad034bec4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cdb6c892b97cd6de5e58ded98e3940cc4656335e5de99d33811749a14dd37683 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant3f368e6f7e98407e72f89bd546ad6bf55c84234e78f712de3c35cb7a6343c8ce.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZeta/Variant3f368e6f7e98407e72f89bd546ad6bf55c84234e78f712de3c35cb7a6343c8ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
