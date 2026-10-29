# Verification target: Zero Side At VTau Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df7fe234ca4ee0815795e5b1e3a8e278742112a3",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df7fe234ca4ee0815795e5b1e3a8e278742112a3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.QuarticWindow.Quartic` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Assembly` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.ZeroSide` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.Tail` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses.GzGp` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [atV_tau_eq](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/atv-tau-eq.md) | 31 | `result-track:bc2f7b9c0d82c157a43e24143b89a8c07033a8176b80acaf8a62bf98f6192ffd` |
| 2 | `theorem` | [poissonSqV_of](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/poissonsqv-of.md) | 45 | `result-track:13af71c60d89a1e79322268c1546e75e4e86d7684d982bd6cfa9cdddc66bd7fd` |
| 3 | `theorem` | [blockInputsV_of'](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/blockinputsv-of-source-edition-2.md) | 53 | `result-track:525ef77e90983720d0ad49c3dfaa1e8b8e153917226ff4d10451e7ce4c95d052` |
| 4 | `theorem` | [GzGpV_of'](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/gzgpv-of-source-edition-2.md) | 61 | `result-track:e47eb8cfeb6810ab0a461867f67ebf2616e2d2a63901f4939c2d48e9d34d88ce` |
| 5 | `lemma` | [C1Vv_nonneg](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/c1vv-nonneg.md) | 72 | `result-track:2f1be600647aa8abe918b33c0c3759ae3088cfa83a65dfb594ced95904d21264` |
| 6 | `lemma` | [C1Vv_le](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/c1vv-le.md) | 76 | `result-track:ed4cd86f7aa37bd5250f52cf531310f09462bac5618343b1cc7273efc52c70a0` |
| 7 | `theorem` | [hdecayV_of](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/hdecayv-of.md) | 79 | `result-track:104d2dbf21dbc707dd005c00e8f9380ffd173bfbd0882774c26059bd281d44c8` |
| 8 | `theorem` | [eventually_tailPackageV_of](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/eventually-tailpackagev-of.md) | 91 | `result-track:03025dd9e1a1bf690e8fa5ba35892f34491c5bce05e0753b4e5ac2c5d6c40441` |
| 9 | `theorem` | [windowZeroSide_atV_of](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/windowzeroside-atv-of.md) | 110 | `result-track:ee16f35713a1d64a5a3b6544bbce41adeba9754cbd42f8b280505d837c4441b3` |
| 10 | `theorem` | [atVQ_a_eq_av](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/atvq-a-eq-av.md) | 121 | `result-track:9f669a6af6c8df5db1c952536020f9d5ab544f361cecc02c1be8290d9346dfa9` |
| 11 | `theorem` | [atVQ_phiHat](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/atvq-phihat.md) | 125 | `result-track:d02d602667ef6d32a1c566383e464d36d4f4d3f49195ddbd5a4b3da352be9289` |
| 12 | `theorem` | [atVQ_phiHatR](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/atvq-phihatr.md) | 129 | `result-track:5c06050c14590f07c973680366b48e424540d84586865039069156bab90694e1` |
| 13 | `lemma` | [phiV_quartic_sq_ge](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/phiv-quartic-sq-ge.md) | 136 | `result-track:33ada28deae0dbb64cb8e9e423bfa688d74859ba38b11cf1edeb5ff0eb526326` |
| 14 | `theorem` | [aV_range_of](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/av-range-of.md) | 149 | `result-track:b14e982b296f64b8d5c8d8e026a5ad35b7a437381f6654a97f72c8594b283bcb` |
| 15 | `theorem` | [eventually_aV_range](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/eventually-av-range.md) | 177 | `result-track:ab04c837a82b8a51d01644f4af9390670151ad8c0a4c910d81985a77b5a97216` |
| 16 | `theorem` | [poissonSqV](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/poissonsqv.md) | 184 | `result-track:a21fab5656599e946971449075326d2cf16730cc3c73e0a36937b555faa7886a` |
| 17 | `theorem` | [blockInputsV_of](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/blockinputsv-of.md) | 187 | `result-track:34b2d7ef6aecda9398953f5358ba51fb19e77d3afcc90c555b1b04ba834bde42` |
| 18 | `theorem` | [eventually_blockInputsV](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/eventually-blockinputsv.md) | 191 | `result-track:3f22c249c83c28fddfdbc251f2cbb27b74a86d63ef98be6aacc44f4263c60afc` |
| 19 | `theorem` | [GzGpV_of](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/gzgpv-of.md) | 196 | `result-track:cb08fad7c9d88a71c54c2028d13e0f9c3fff11352085e0bfaae5b06300bc9597` |
| 20 | `theorem` | [eventually_GzGpV](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/eventually-gzgpv.md) | 200 | `result-track:1e651995e8b85e92e9d93390409b30191bf96a1bd41463afd86ace2738c7ea4a` |
| 21 | `theorem` | [eventually_tailPackageV](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/eventually-tailpackagev.md) | 205 | `result-track:2f7fa57bba2fe5b85a93762907beb5fb295dafb46f2cefea91ffb1799dcdd834` |
| 22 | `theorem` | [windowZeroSide_atV](../../../../MeasureAndIntegration/ZeroSideAtVTauEq.lean/declarations/windowzeroside-atv.md) | 213 | `result-track:4e71cc35f47321d4a74a9bde26ad4139fced4b9d7e03f4889654d1662c21faa3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46d5ad475aaa1e77963b35fef0e637ad527566f91976447a04b53a3df4ca2a06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ZeroSide/Varianta6e487afa66147f5c1a724dafec609a550ea4ae20ffde5bf3c286b95858c1b91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
