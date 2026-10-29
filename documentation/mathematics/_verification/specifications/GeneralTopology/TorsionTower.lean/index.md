# Verification target: Torsion Tower

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad1e74c982b07e6ea5d9a222882b60c11e3a4f3f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TorsionTower.lean/index.md) · [Full source](../../../../GeneralTopology/TorsionTower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad1e74c982b07e6ea5d9a222882b60c11e3a4f3f`.

Source path: `GRWTSK/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Discovery.OpenElement` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Prismatic.Prism` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Compact` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Constructions` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimePowerTorsionTower](../../../../GeneralTopology/TorsionTower.lean/declarations/primepowertorsiontower.md) | 22 | `declaration-track:9a9f8e2885970ceae2d926642ebc123738a9d9f8e7de924b1f5d1a398d6994f0` |
| 2 | `structure` | [TorsionInverseLimitPoint](../../../../GeneralTopology/TorsionTower.lean/declarations/torsioninverselimitpoint.md) | 37 | `declaration-track:db90edb031d620f43a393fe7a158eb991aab238a66b3b2846a4f0b73963517c1` |
| 3 | `abbrev` | [DiscreteTorsionLevels](../../../../GeneralTopology/TorsionTower.lean/declarations/discretetorsionlevels.md) | 50 | `declaration-track:ef8dd17c4872d4083d570802b7a69f1373f35aac5b9e9b9f713012e629f574f9` |
| 4 | `abbrev` | [TorsionInverseLimitCarrier](../../../../GeneralTopology/TorsionTower.lean/declarations/torsioninverselimitcarrier.md) | 60 | `declaration-track:1f5261c2e780bd18896c79d6bda78eebd2d2f8c4c6d5dc2a3a7eb15f1a75013f` |
| 5 | `def` | [compatibleFamilies](../../../../GeneralTopology/TorsionTower.lean/declarations/compatiblefamilies.md) | 77 | `declaration-track:7b61aa5c36b7d6577b0c2aca6efcc0398b793790e7f1abe6205fb18f9297f594` |
| 6 | `theorem` | [compatibleFamilies_isClosed](../../../../GeneralTopology/TorsionTower.lean/declarations/compatiblefamilies-isclosed.md) | 88 | `result-track:962fb2a7f10943a6be336355d709ef09d5f0db555f1871d1f3e42d0bf09ad610` |
| 7 | `abbrev` | [TopologicalInverseLimit](../../../../GeneralTopology/TorsionTower.lean/declarations/topologicalinverselimit.md) | 109 | `declaration-track:0650a52fe3f7b8354b87513c9347df2ab686e07d09ab9882ede278730981bdf8` |
| 8 | `theorem` | [topologicalInverseLimit_isCompact](../../../../GeneralTopology/TorsionTower.lean/declarations/topologicalinverselimit-iscompact.md) | 119 | `result-track:003c5719343eaa55ede11bc3e27c75829dab94f39326258fbfb09583a0ab3131` |
| 9 | `def` | [TorsionInverseLimitCompactStatement](../../../../GeneralTopology/TorsionTower.lean/declarations/torsioninverselimitcompactstatement.md) | 134 | `declaration-track:8dca10b25db85c2dd58af0aa60a10854fb3e38ffce2572f50749f13e59099c1b` |
| 10 | `def` | [torsionInverseLimitCompactOpenElement](../../../../GeneralTopology/TorsionTower.lean/declarations/torsioninverselimitcompactopenelement.md) | 147 | `declaration-track:d3f1026f7aa3635276749c9a2c787a930a2490cee2c07025da7f8f1580b612f0` |
| 11 | `theorem` | [torsionInverseLimitCompact](../../../../GeneralTopology/TorsionTower.lean/declarations/torsioninverselimitcompact.md) | 166 | `result-track:9dee8074584357f621bd89294947f343544b191694f5977a203adc0605e6b071` |
| 12 | `def` | [torsionInverseLimitCompactTheoremElement](../../../../GeneralTopology/TorsionTower.lean/declarations/torsioninverselimitcompacttheoremelement.md) | 172 | `declaration-track:7ae3d42ca66696979fb0a934202305e2006d419a9e05ff1a349f03452ed441c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f6ee97f1b67a902331abb136d35451f7ac0100de4d91bf6803349bfed59818b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TorsionTower/Variant33ba059447a85ef098893bdcaacaf6394482842e27b3c5a9865aa6a0a7985656.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
