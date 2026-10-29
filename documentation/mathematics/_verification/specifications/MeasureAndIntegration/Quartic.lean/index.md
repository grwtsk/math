# Verification target: Quartic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "282effa9c3758192cbef75f8323437363b039b6d",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Quartic.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Quartic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `282effa9c3758192cbef75f8323437363b039b6d`.

Source path: `GRWTSK/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Window` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow.Moments` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow.Params` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_cRatio_quartic_of](../../../../MeasureAndIntegration/Quartic.lean/declarations/tendsto-cratio-quartic-of.md) | 32 | `result-track:62e083c0e7f0e47721efdf4e035f2bf60a661193862515d35d9d03c72cab7ed3` |
| 2 | `theorem` | [cWin_vQuartic_pos](../../../../MeasureAndIntegration/Quartic.lean/declarations/cwin-vquartic-pos.md) | 53 | `result-track:44e1361137c4b0bd312b715cb8da56df0649895442532364f65fef3faa0325b7` |
| 3 | `lemma` | [atVQ_g](../../../../MeasureAndIntegration/Quartic.lean/declarations/atvq-g.md) | 63 | `result-track:f1270d1496c5d1a9c345105bb26fdf929e11d9162fc62076fa3db0a438549b16` |
| 4 | `theorem` | [tendsto_cRatio_quartic](../../../../MeasureAndIntegration/Quartic.lean/declarations/tendsto-cratio-quartic.md) | 69 | `result-track:32fd75985f3650b8f7212c6a940ab900100b39826e5eed01ae827274d7793491` |
| 5 | `theorem` | [tendsto_cRatio_quartic_D1](../../../../MeasureAndIntegration/Quartic.lean/declarations/tendsto-cratio-quartic-d1.md) | 91 | `result-track:afbb424ec87443c5904542849d9601033d86d21705e8d2b553b276f074fa02af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=653be56aeb6408ea7c0baf5c3341359035e4d9816824a8c90745a36dd8d07140 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Quartic/Variantaf353d6c43b7d4409268c1767de1beb85dcb55e6a52be85cbac72dc6e02de44d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
