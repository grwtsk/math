# Verification target: Continuity Scratch

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6748a5667f213bf39b461bffe4ab62c011c1d6a3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ContinuityScratch.lean/index.md) · [Full source](../../../../GeneralTopology/ContinuityScratch.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6748a5667f213bf39b461bffe4ab62c011c1d6a3`.

Source path: `GRWTSK/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaKernel` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.FunctionSeries` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaPhiTerm_eq_gaussians](../../../../GeneralTopology/ContinuityScratch.lean/declarations/thetaphiterm-eq-gaussians.md) | 8 | `result-track:95df63f3e417ce4da12e964091033b22b6055d7ec1355256469ecfb064da3fa0` |
| 2 | `def` | [thetaPhiCompactBound](../../../../GeneralTopology/ContinuityScratch.lean/declarations/thetaphicompactbound.md) | 22 | `declaration-track:aa0127e4baf3fb74a68df94595a0a0e6d84f1448d3b3d587f67092c1afb7acd9` |
| 3 | `theorem` | [thetaPhiCompactBound_summable](../../../../GeneralTopology/ContinuityScratch.lean/declarations/thetaphicompactbound-summable.md) | 28 | `result-track:a1d0bca12812bf116c838d0b1cbdb50e07f3cb14b2add953bddb5de52ead5426` |
| 4 | `theorem` | [thetaPhiTerm_norm_le_compactBound](../../../../GeneralTopology/ContinuityScratch.lean/declarations/thetaphiterm-norm-le-compactbound.md) | 34 | `result-track:b8675bc3f0f826764d1beecdd3314f47c20da05b00d6c761a460658df0cd9894` |
| 5 | `theorem` | [continuous_thetaPhiTerm](../../../../GeneralTopology/ContinuityScratch.lean/declarations/continuous-thetaphiterm.md) | 58 | `result-track:38f553dab8d0506c8eb10c0357274817ecfd7b1dc9828918502f699c21415605` |
| 6 | `theorem` | [continuousOn_thetaPhi_Icc](../../../../GeneralTopology/ContinuityScratch.lean/declarations/continuouson-thetaphi-icc.md) | 62 | `result-track:6cdee4d9709c4c4c51c697bc111bc7281dfdc62f475420939b57d7265237a8d2` |
| 7 | `theorem` | [continuous_thetaPhi](../../../../GeneralTopology/ContinuityScratch.lean/declarations/continuous-thetaphi.md) | 66 | `result-track:564ee4776a9efd7a7f66721983f861f5257d0704ee902416bd7afbcfe9fc4a62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3140bd61b3ff50b527b811bb3014bba0eecf653899fc92c265268cc552688cda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2ContinuityScratc/Variant1f1f7e003286f2d768dc7ca477aea80cf90a0777004575ca76d27a37c18137c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
