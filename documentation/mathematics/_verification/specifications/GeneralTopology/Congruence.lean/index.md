# Verification target: Congruence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa01a3b591b737686a929bb0a5952cefa84a146e",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Congruence.lean/index.md) · [Full source](../../../../GeneralTopology/Congruence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa01a3b591b737686a929bb0a5952cefa84a146e`.

Source path: `GRWTSK/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Congruent](../../../../GeneralTopology/Congruence.lean/declarations/congruent.md) | 37 | `declaration-track:6b94cee8147e1c06beb4647c565530d19527feaeaed7b8d1512d127af2899e20` |
| 2 | `lemma` | [congruent_iff_edist_eq](../../../../GeneralTopology/Congruence.lean/declarations/congruent-iff-edist-eq.md) | 44 | `result-track:ce4ade40ee13bb2d079003507b6adb14198c79ad9b16186e789bfd05e1aa54af` |
| 3 | `lemma` | [congruent_iff_pairwise_edist_eq](../../../../GeneralTopology/Congruence.lean/declarations/congruent-iff-pairwise-edist-eq.md) | 50 | `result-track:926c1a021f89bc436d133670689343bcf744b223e9015f547fe4a763583d40f6` |
| 4 | `lemma` | [refl](../../../../GeneralTopology/Congruence.lean/declarations/refl.md) | 74 | `result-track:60decf9fa8b3625e0e6828cdce7ff360cb5a9ba8320bc4e71c5d141ffbc5c6af` |
| 5 | `lemma` | [symm](../../../../GeneralTopology/Congruence.lean/declarations/symm.md) | 76 | `result-track:08a4308c01ef7184bed0efea87e98a1a2d151b22df849a595a502aa8e53be32d` |
| 6 | `lemma` | [_root_.congruent_comm](../../../../GeneralTopology/Congruence.lean/declarations/root-congruent-comm.md) | 78 | `result-track:b0dc227f1b952b44115236c9f88cf1122cf241c8bb3cdfe4cb579e821be263b2` |
| 7 | `lemma` | [trans](../../../../GeneralTopology/Congruence.lean/declarations/trans.md) | 81 | `result-track:3660c618020d5973a6c25008799e0b2534d41d9d67a5bf306171ba92f01731d0` |
| 8 | `lemma` | [index_map](../../../../GeneralTopology/Congruence.lean/declarations/index-map.md) | 85 | `result-track:0958baa5b159d381b95abdfa1670578523711e0f563322504d5f9a864373d319` |
| 9 | `lemma` | [index_equiv](../../../../GeneralTopology/Congruence.lean/declarations/index-equiv.md) | 89 | `result-track:8329534e3240241a079f1884afa8055fef6ae3d838ce629c53e3cb3f109ca9c0` |
| 10 | `lemma` | [congruent_iff_nndist_eq](../../../../GeneralTopology/Congruence.lean/declarations/congruent-iff-nndist-eq.md) | 104 | `result-track:a3ce068e4ace1d8ddac25d049063c3cb9fff62e60496abc637114893e02f5da2` |
| 11 | `lemma` | [congruent_iff_pairwise_nndist_eq](../../../../GeneralTopology/Congruence.lean/declarations/congruent-iff-pairwise-nndist-eq.md) | 110 | `result-track:6765e74d46a699c4a7fe8c66a2e3df919d5261303585704b902c677c79544124` |
| 12 | `lemma` | [congruent_iff_dist_eq](../../../../GeneralTopology/Congruence.lean/declarations/congruent-iff-dist-eq.md) | 116 | `result-track:63fecc04c818302da35d7d8fbedc394227fc6842691162572edf5d68c1a2190d` |
| 13 | `lemma` | [congruent_iff_pairwise_dist_eq](../../../../GeneralTopology/Congruence.lean/declarations/congruent-iff-pairwise-dist-eq.md) | 123 | `result-track:d7a5c0b937a5e5bbb6283ca74c7414c59a9d5e794b415b4099524404dc1b9523` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7d91742aef364d409f7a9c88b40397a1f2f7d74cfc946a6ae6a0e0b4ee6ed18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Congruence/Variant5a6793f9b379d025deb71ce489fc5b2e1917726b840ab2df2618a13315d3d36a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
