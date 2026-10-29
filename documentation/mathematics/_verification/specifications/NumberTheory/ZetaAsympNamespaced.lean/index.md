# Verification target: Zeta Asymp Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b456c48485cd8f735dcbcc8ff1141530d916945",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZetaAsympNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/ZetaAsympNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b456c48485cd8f735dcbcc8ff1141530d916945`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.RiemannZeta` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.GammaDeriv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term.md) | 52 | `declaration-track:e98c6ce1c90f1d5673ec8398784ced86cdf5705c3cb4308800a57e5070ec882e` |
| 2 | `def` | [term_sum](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-sum.md) | 55 | `declaration-track:cd1bfb702679807f10936ac9125c81d32528bdfeeb54a18b9de70b78b3e79f49` |
| 3 | `def` | [term_tsum](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-tsum.md) | 58 | `declaration-track:fef6930ee353ac9168c797547b3710cc542f3d0b38223d98dde8e17746e8b624` |
| 4 | `lemma` | [term_nonneg](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-nonneg.md) | 60 | `result-track:6cda761066edd2351100685a5b935f4215393dadf7da8512f231b8d86c2d3f99` |
| 5 | `lemma` | [term_welldef](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-welldef.md) | 66 | `result-track:b31ab8444014d0f8f484ad545d248ff90d3214ba5475cb2f2ea50d5452af2862` |
| 6 | `lemma` | [term_one](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-one.md) | 80 | `result-track:7891b18d38f9ebda535431e93e2acd4ef6954782fe7580b2fa81818b25498ad8` |
| 7 | `lemma` | [term_sum_one](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-sum-one.md) | 119 | `result-track:f9ab5c67a399deb4cd73e6017272e960a47f3f9cb8041a39e1da23c94e79a97a` |
| 8 | `lemma` | [term_tsum_one](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-tsum-one.md) | 134 | `result-track:2f1a63374e16b42173c3bb32aabbfd731a9e05aa1251f94d293c9c8e36e531d1` |
| 9 | `lemma` | [term_of_lt](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-of-lt.md) | 153 | `result-track:9b082c8f22dd722011497ebde852ed227a0e51dec9029d42f494537486db424f` |
| 10 | `lemma` | [term_sum_of_lt](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-sum-of-lt.md) | 183 | `result-track:705d5ebff4775e90b84093ef90ffa720468b2bb83f1950361756c477970e9d0f` |
| 11 | `lemma` | [term_tsum_of_lt](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/term-tsum-of-lt.md) | 207 | `result-track:893e8b78d0df8eff3421c241c46502e27f03aa8c3fa4c1c3e02adbe10529e074` |
| 12 | `lemma` | [zeta_limit_aux1](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/zeta-limit-aux1.md) | 241 | `result-track:d833122122ca2de1d3f987842de17cb13fa135f4d114250831f3f7aa18f040e2` |
| 13 | `lemma` | [continuousOn_term](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/continuouson-term.md) | 256 | `result-track:4fae1b7a1826fe8a7705b779bafac368a6f3bdf2771580b523dd88a2bffce55a` |
| 14 | `lemma` | [continuousOn_term_tsum](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/continuouson-term-tsum.md) | 280 | `result-track:5507c6a5b32bd582adf63b40b95346a03c87e12260ed957fff3e09dd398fd1c5` |
| 15 | `lemma` | [tendsto_riemannZeta_sub_one_div_nhds_right](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/tendsto-riemannzeta-sub-one-div-nhds-right.md) | 300 | `result-track:2ebca3dbcff1c5f13292815b370d195774e2703142a4e3aefff6c8efe2c58860` |
| 16 | `theorem` | [Zeta Asymp Namespaced](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/tendsto-riemannzeta-sub-one-div.md) | 326 | `result-track:9e56e2c98534d0604548ff31c848f8b82449cb1e107ca02688ddecfa2a3fd298` |
| 17 | `lemma` | [Zeta Asymp Namespaced](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/isbigo-riemannzeta-sub-one-div.md) | 359 | `result-track:175625d7c3b93abd16e038ce1b9acfb173dbbfb1723d5685ccb0493633988cde` |
| 18 | `lemma` | [tendsto_Gamma_term_aux](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/tendsto-gamma-term-aux.md) | 370 | `result-track:685e786a4cf732b72bd0ca8a891c19d68ca412f2ded677e5722bc522cd273de9` |
| 19 | `lemma` | [tendsto_riemannZeta_sub_one_div_Gammaℝ](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/tendsto-riemannzeta-sub-one-div-gamma.md) | 385 | `result-track:a0a3dff4e7e49358b2f6fcd7faea1e83abbf5719ae9e8636e9844725c26bbda2` |
| 20 | `lemma` | [Zeta Asymp Namespaced](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/riemannzeta-one.md) | 395 | `result-track:5bcbee15d905b3af7111ab1d23b16efe6f9f8148da9b8d56f687cff1707257f8` |
| 21 | `lemma` | [Zeta Asymp Namespaced](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/completedriemannzeta-one-source-line-403-occurrence-2.md) | 403 | `result-track:affb951993bb3cf2aa88d91d3b7ae185f13c9e375aafe270f6b31c408edc563b` |
| 22 | `lemma` | [Zeta Asymp Namespaced](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/completedriemannzeta-one.md) | 413 | `result-track:402b0ef45f9355101fa0b32d0645956323f318a3a3628dde085d0d1ecca5acb6` |
| 23 | `lemma` | [Zeta Asymp Namespaced](../../../../NumberTheory/ZetaAsympNamespaced.lean/declarations/riemannzeta-one-ne-zero.md) | 420 | `result-track:9bdd276e4e5be738fbf06e8330e3cc026a9cb940817c1d01685a5d326d9c8adc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d89dce861ec42469f56d4fd8b427b0508975ed3573b61bdba85a1f92432396d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ZetaAsymp/Variant410d04f1a567a76f6cf025c7c7de5d17bfaf44dd22d1ffd47e5cabde809e59b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
