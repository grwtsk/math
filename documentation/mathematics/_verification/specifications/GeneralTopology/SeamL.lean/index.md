# Verification target: Seam L

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3ea63e64d7797979babbd0b3690aa95ded64f2b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeamL.lean/index.md) · [Full source](../../../../GeneralTopology/SeamL.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3ea63e64d7797979babbd0b3690aa95ded64f2b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Statement` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 29; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Nonvanishing` — import line 30; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.MulChar.Lemmas` — import line 31; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ReImTopology` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Connected` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Complex.FiniteDimensional` — import line 34; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ne_one_of_primitive](../../../../GeneralTopology/SeamL.lean/declarations/ne-one-of-primitive.md) | 49 | `result-track:6246b3df828a1c5073c41938cdc66b818df26067b00c9e5ed73da4ed192cd0b7` |
| 2 | `lemma` | [inv_ne_one](../../../../GeneralTopology/SeamL.lean/declarations/inv-ne-one.md) | 55 | `result-track:7c6acb767bc888fbb71ef0f64d7b3adf88f81d0448468e1b31408f4b8688236d` |
| 3 | `lemma` | [LFunction_two_ne_zero](../../../../GeneralTopology/SeamL.lean/declarations/lfunction-two-ne-zero.md) | 58 | `result-track:b677aa12fb649cd2c976e8921c0cb3c2e03a7010cb5a247d2a83dc397f3b587a` |
| 4 | `lemma` | [LFunction_analyticOnNhd](../../../../GeneralTopology/SeamL.lean/declarations/lfunction-analyticonnhd.md) | 61 | `result-track:088ccf7afc89ee8af877479cb02b963c1d1a9086e5e59fe5cd4233d15c72d8e2` |
| 5 | `lemma` | [LFunction_conj_of_one_lt_re](../../../../GeneralTopology/SeamL.lean/declarations/lfunction-conj-of-one-lt-re.md) | 66 | `result-track:4e22b955b5722117464263346cc08e9527fe91bd6eee458a9862ee9fb9c30094` |
| 6 | `theorem` | [LFunction_conj](../../../../GeneralTopology/SeamL.lean/declarations/lfunction-conj.md) | 95 | `result-track:5ea9f829f9d6600b2d6a1ccad923815ff75908f682f97dedbdc27218864a981b` |
| 7 | `theorem` | [analyticOrderAt_LFunction_conj](../../../../GeneralTopology/SeamL.lean/declarations/analyticorderat-lfunction-conj.md) | 118 | `result-track:f4c4933ab5c71b0aad509827c854881f241b157ba9dc6821da9374c0cb07d8f9` |
| 8 | `lemma` | [gammaFactor_analyticAt](../../../../GeneralTopology/SeamL.lean/declarations/gammafactor-analyticat.md) | 132 | `result-track:5d3eabd472e8f9f4f682eeb2ba15f272982877f10ea368aef5691bf851f07081` |
| 9 | `lemma` | [completed_eq_gamma_mul_L](../../../../GeneralTopology/SeamL.lean/declarations/completed-eq-gamma-mul-l.md) | 183 | `result-track:cf1c7400174e01208fb94e2714d2c53de17ae927a47e89307095305ffee59d8a` |
| 10 | `theorem` | [rootNumber_ne_zero](../../../../GeneralTopology/SeamL.lean/declarations/rootnumber-ne-zero.md) | 201 | `result-track:0c4ff7d9df5bf863a426246bd3c68c77c87b785dcd8672a32e60cf3901cea23f` |
| 11 | `theorem` | [analyticOrderAt_LFunction_one_sub](../../../../GeneralTopology/SeamL.lean/declarations/analyticorderat-lfunction-one-sub.md) | 224 | `result-track:1a9ba049467654315e6496c63e9093e6cf75c4e675f125f0ba8cfac18c5e9571` |
| 12 | `theorem` | [L_mult_reflect](../../../../GeneralTopology/SeamL.lean/declarations/l-mult-reflect.md) | 275 | `result-track:02c76359224ea260d48ce4b4f0a4fe908dd53a89466c7fbdab142f8c61c4086c` |
| 13 | `theorem` | [L_reflect_zero](../../../../GeneralTopology/SeamL.lean/declarations/l-reflect-zero.md) | 287 | `result-track:3cd08d3000a43e40a699de3935c9f0ef7f9ee147bc6b8adf76e218b8b17174c5` |
| 14 | `theorem` | [LSeam_one_le_mult](../../../../GeneralTopology/SeamL.lean/declarations/lseam-one-le-mult.md) | 322 | `result-track:fd15b2a77dd2defb0f37b42e836ed8b781f3e658c6ca9a1920d12e5c004e81e8` |
| 15 | `theorem` | [LSeam_finite_window](../../../../GeneralTopology/SeamL.lean/declarations/lseam-finite-window.md) | 341 | `result-track:3ecaddf9baa2f8e1d01d5012de6bd360339cb21e0d59e31927456b40c837035e` |
| 16 | `theorem` | [LSeam_of](../../../../GeneralTopology/SeamL.lean/declarations/lseam-of.md) | 367 | `result-track:34911b5b34e6fd88db5b9d4b762fcb789e47b2c66d7f2c05f6eff481b03df779` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c5c5ca729cdcd0f64149b846167deb05be43bdf555596512af7037bdf21bf0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant7ae031e5189cf51808c82913a3fb866e95458ee1be204131336665d3aee2df9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
