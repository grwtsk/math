# Verification target: Stability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f380ce56eb30221e1611877e13231a451e1ed8d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Stability.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Stability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f380ce56eb30221e1611877e13231a451e1ed8d`.

Source path: `GRWTSK/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Contracting` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.DiscreteFixedPoint` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLyapunovStable](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/islyapunovstable.md) | 22 | `declaration-track:57fb5a846ebce36b15d2221d85098dfcd5edde583cddcf1348c8d778e4c53ba1` |
| 2 | `def` | [IsLocallyAttractive](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/islocallyattractive.md) | 35 | `declaration-track:0e156fdba823e55d6b6f93229febb7645eb17377b2e87cd9043f79ab65344e10` |
| 3 | `def` | [IsLocallyAsymptoticallyStable](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/islocallyasymptoticallystable.md) | 48 | `declaration-track:8dd4ea296c8e20983d42458b271477dcd9e82f7ee0957287feab832c7d788b0a` |
| 4 | `def` | [IsExponentiallyStable](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/isexponentiallystable.md) | 56 | `declaration-track:d4e6051852fb83ce426b8248e59b81c0f7b289863154c400c9922c861683cc1c` |
| 5 | `def` | [fixedFamilyDistance](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/fixedfamilydistance.md) | 72 | `declaration-track:00cd3c9decd2c8d40ceeca08bd2ddb57f2dde81689a8b92fe04b19ecbdde746d` |
| 6 | `def` | [IsSetStable](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/issetstable.md) | 86 | `declaration-track:8e5913c30212562d8c529135bb09f14b7a07d6ce31fa5c87fcaee1227b595fe5` |
| 7 | `def` | [OperatorOrbitCompatible](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/operatororbitcompatible.md) | 100 | `declaration-track:83133099e199717503f0304cc170cba5d6e07cad4f9cc9a450aa1fced9c0617d` |
| 8 | `def` | [orbitDistance](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/orbitdistance.md) | 112 | `declaration-track:8a52396b33df5b31036680a2f651af4edd3e17c2be2043707bb88c2151a95f84` |
| 9 | `def` | [IsOrbitStable](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/isorbitstable.md) | 131 | `declaration-track:c9dc06a2fcda25cc73c2a111c54dc26902cedeae4d501a51167ff577a0dc7cbe` |
| 10 | `def` | [IsStructurallyStable](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/isstructurallystable.md) | 156 | `declaration-track:a2042a7a7f9c1579a15084521667473f1d5063ae94debc6322bf5501c890293d` |
| 11 | `def` | [inputTrajectory](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/inputtrajectory.md) | 175 | `declaration-track:f160b4a1b230bd406beb1de68c76913bd6a4fe4dcf4e4daf811de1c636ce98d2` |
| 12 | `def` | [IsInputToStateStable](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/isinputtostatestable.md) | 192 | `declaration-track:dfe2530d01d9223947dfea1b140e2ae494bcbb1e58427e10b226581a271cbeee` |
| 13 | `theorem` | [isLyapunovStable_of_iterate_nonexpansive](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/islyapunovstable-of-iterate-nonexpansive.md) | 218 | `result-track:03c4c5b09df1a02271bfb5e58e7f39f42825a76a55990e459ff032526bf181e6` |
| 14 | `theorem` | [isLyapunovStable_of_contraction](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/islyapunovstable-of-contraction.md) | 236 | `result-track:a9b350f8248130f989323a9ae92d9c7741772ee918e4bfebfb0270d0c8fc1df6` |
| 15 | `theorem` | [isLocallyAttractive_of_contraction](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/islocallyattractive-of-contraction.md) | 258 | `result-track:9d53296f85bec505c659d179bb9a5bf227c3851994d9bbc06da2e19d088cd5f0` |
| 16 | `theorem` | [isLocallyAsymptoticallyStable_of_contraction](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/islocallyasymptoticallystable-of-contraction.md) | 279 | `result-track:680c4260b29b484ca4e1d090418dda7e060fa8322dc9d4276e8ac81b1b76a98c` |
| 17 | `theorem` | [not_isLyapunovStable_of_escape](../../../../GroupTheoryAndGeneralizations/Stability.lean/declarations/not-islyapunovstable-of-escape.md) | 291 | `result-track:81c52f1a43756dc12fed35e8d285a6e388b7e6488dbc8027d980da78c4351929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8cba25eaa926b4eee80fd11f86035ecfafdda112d5d2b863e4342305bc340c5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean","GRWTSK/_verification/specifications/Topology/Stability/Variant618b3dddf41f01d10175dcc900d858699be8c9208d7bccb8a54c914322de1ea6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
