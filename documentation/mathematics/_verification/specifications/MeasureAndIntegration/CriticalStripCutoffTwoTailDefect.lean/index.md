# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoTailDefect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbbc590fca211c6b2b543b5ee06ce0a6f640eb54",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbbc590fca211c6b2b543b5ee06ce0a6f640eb54`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticTangentDefect`](../../../../MeasureAndIntegration/CriticalStripSexticTangentDefect.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoSource`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCutoffTwoSource.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [node](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/node.md) | 25 | `declaration-track:d29acfff1bdaaf423f7fb2a453d442bc8220ae6bf8d68882f17ec2632871612c` |
| 2 | `def` | [center](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/center.md) | 27 | `declaration-track:b062bd513fa0fc2aed6c560d0ab289199ce36010fa2b3d5ec5e2a5c7e4caf72d` |
| 3 | `lemma` | [node_order](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/node-order.md) | 29 | `result-track:2f8cd7f24e26593b85d3c9244b935cbdf33e63b7b5191b8b531848b62ffe558a` |
| 4 | `lemma` | [source_on_second_cell](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/source-on-second-cell.md) | 36 | `result-track:a2279a94658d0ceed9f4902414981098caca2dad5ab57c48995001431da02f8a` |
| 5 | `lemma` | [density_bound](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/density-bound.md) | 50 | `result-track:368cd3795722fe0afbb8c892bbfa5425ab866b6026eb209f32debc25ae6fef45` |
| 6 | `def` | [lower](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/lower.md) | 65 | `declaration-track:2cc566822c67f2c2b7175ff79fe26fce74a92d1624f8582059eca03c27689211` |
| 7 | `def` | [mass](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/mass.md) | 68 | `declaration-track:a446a29dbe173e52e548136b33a5325686b8f949a16aef6c6f7882f75f630f5d` |
| 8 | `lemma` | [lower_integral](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/lower-integral.md) | 73 | `result-track:e0ffb11d55713c060bdb82d5f3285963f2a18affa95e734f59dfb79b44564395` |
| 9 | `theorem` | [total_mass](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/total-mass.md) | 101 | `result-track:50b8b63d5eb0eaaf0259c76005abfa4989bffeaa5e7afd7d4e9f11e5b697a5ee` |
| 10 | `lemma` | [weight_lower](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/weight-lower.md) | 105 | `result-track:a72b8b6fe8353f08d226e951098ad5179a7d1a2cd0ca9af8ffc9c65354107181` |
| 11 | `lemma` | [defect_lower](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/defect-lower.md) | 113 | `result-track:8c58aad7fa35265cd4f8822515161d369c1966e4f9b68e5a2dd44accf03dc33a` |
| 12 | `lemma` | [subcell_integral](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/subcell-integral.md) | 133 | `result-track:6d2196c82bb8c969eaa401cab1972cab907b9f0b29bc71a211513461e023b2f3` |
| 13 | `lemma` | [cell_defect_lower](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/cell-defect-lower.md) | 153 | `result-track:052ef1c200dfc040c196ac323262a05e4614a9f2daba608e193938d68e868093` |
| 14 | `lemma` | [full_defect_lower](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/full-defect-lower.md) | 171 | `result-track:22b884c114fd0a07d5b74c05729e2c82b04c99c50adbd4a0c89c12fec70e26fc` |
| 15 | `lemma` | [weight_shift](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/weight-shift.md) | 199 | `result-track:57399fd42c5a925a34817fc3bb5ff74118a484063b41fd546600af20d4066312` |
| 16 | `theorem` | [tail_improved](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/tail-improved.md) | 205 | `result-track:918d83fc5faef101d6e5eb03975ba22b6ad1869dea853d87ef8c2a4406c6081f` |
| 17 | `theorem` | [source_error_improved](../../../../MeasureAndIntegration/CriticalStripCutoffTwoTailDefect.lean/declarations/source-error-improved.md) | 236 | `result-track:8a76edafe3c21cfbf4c5b8c7ab071aacdd1e8522b3b81cba729d61bdcc10f7f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdc3b4df39440ebe6d507e494eee7ba156da4d827f3fec8b60d5fa58d160aa23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
