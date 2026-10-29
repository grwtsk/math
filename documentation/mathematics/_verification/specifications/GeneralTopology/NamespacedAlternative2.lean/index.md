# Verification target: Namespaced Alternative2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0803a9bc5216c40af828df7e9aa162992c9adb6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/NamespacedAlternative2.lean/index.md) · [Full source](../../../../GeneralTopology/NamespacedAlternative2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0803a9bc5216c40af828df7e9aa162992c9adb6`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPositiveLift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhi_summable](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphi-summable.md) | 27 | `result-track:a982f70c3ff8dd3cc2afe2b42708d74a08507cfda5e80b5da27e5ca283a9e69b` |
| 2 | `theorem` | [thetaPhiTerm_positive](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphiterm-positive.md) | 38 | `result-track:1d20b230253e82d62e8be6f0884fa41b46ed039997fe665da937b62e1d22ae24` |
| 3 | `theorem` | [thetaPhi_positive](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphi-positive.md) | 51 | `result-track:af712031fafcbb382cbe235b53fbe306de2c563614cb53b3c7ace932e31d3bf0` |
| 4 | `theorem` | [thetaPhiTerm_eq_gaussians](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphiterm-eq-gaussians.md) | 58 | `result-track:24befec5f19defec16dc78f3b682a36b5ae518107629030c6d684ba3467388e4` |
| 5 | `def` | [thetaPhiCompactBound](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphicompactbound.md) | 72 | `declaration-track:34122dc7f3ef94725b092c55b6bfffd5c295a292bb0d54cfe060f5e832586685` |
| 6 | `theorem` | [thetaPhiCompactBound_summable](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphicompactbound-summable.md) | 79 | `result-track:0a2ac2fd656f13631182ca4c18844cc632d4504db5fee251627d4bc33547ee85` |
| 7 | `theorem` | [thetaPhiTerm_norm_le_compactBound](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphiterm-norm-le-compactbound.md) | 86 | `result-track:dc48377292f202cd7087a2ecd9f36a1adec65ebae7fff73022a9f1cc8281951f` |
| 8 | `theorem` | [continuous_thetaPhiTerm](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/continuous-thetaphiterm.md) | 111 | `result-track:3118b8f6df6dfb37fd8055114425c06f2adf7df0b1992f38fd85d5f6f12ed67e` |
| 9 | `theorem` | [continuousOn_thetaPhi_Icc](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/continuouson-thetaphi-icc.md) | 116 | `result-track:e7373f90d74f37e4180e3c3f2ef7e9cbe2943a84eb9794130373ce706a43990b` |
| 10 | `theorem` | [continuous_thetaPhi](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/continuous-thetaphi.md) | 121 | `result-track:de7477a8783b4e9ee6c493a654fb1bb146bb10fe33014812b3711d24e6dc300d` |
| 11 | `def` | [thetaPhiDecayConstant](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphidecayconstant.md) | 130 | `declaration-track:b180dae1aed2da9d0460af39aec5816dbaef4223b3eb1155e382cfe856afdfdb` |
| 12 | `theorem` | [thetaPhiDecayConstant_positive](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphidecayconstant-positive.md) | 134 | `result-track:2adeaceefd812a0c9b5aa6b3401fcfa526ccbe9efeeef6d2fbf392d86757863d` |
| 13 | `theorem` | [thetaPhi_le_superexp](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphi-le-superexp.md) | 143 | `result-track:65b76f28a1d3e8509a03a6a11723fa8894b9771032eb41d5a757ce67c5cbf0e3` |
| 14 | `theorem` | [thirteen_mul_le_half_pi_exp](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thirteen-mul-le-half-pi-exp.md) | 180 | `result-track:34a78383201ae97233e24eac710c72c4d0d8a08b327f07d0554fef24567b640b` |
| 15 | `theorem` | [thetaPhi_le_exp_neg_four_mul](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphi-le-exp-neg-four-mul.md) | 188 | `result-track:be45bdd74e03a4436206db10948967aa192fc92bc842d4bcfd28790819ff9cc6` |
| 16 | `theorem` | [thetaPhi_le_exp_neg_two_mul](../../../../GeneralTopology/NamespacedAlternative2.lean/declarations/thetaphi-le-exp-neg-two-mul.md) | 196 | `result-track:6c7705510589d2d6f2d1b2b0221d4c881d1bbabcc4268d1df20b3816e6d385b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c3d2e2b2b1ea156ca086286fb244df79685efc2150826bf1fa328f8ff0661b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant2ae90626f7bbff124faade6a2cd46117245fc6a658abc4a04eaa62236c7af071.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
