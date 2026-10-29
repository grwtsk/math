# Verification target: Barrelled Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc47dfa79bd3f756ec35ecdc57eb0eccdc2aa4a0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Barrelled/Variant058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BarrelledEdition1.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BarrelledEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc47dfa79bd3f756ec35ecdc57eb0eccdc2aa4a0`.

Source path: `GRWTSK/Topology/GeneralTopology/Barrelled/Variant058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Barrelled/Variant058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Semicontinuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Baire` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [BarrelledSpace](../../../../FunctionalAnalysis/BarrelledEdition1.lean/declarations/barrelledspace.md) | 83 | `declaration-track:b805306f85ff659ad477ddf69eeb9b8da7edac4682bf144f5c69e1319d147486` |
| 2 | `theorem` | [Seminorm.continuous_of_lowerSemicontinuous](../../../../FunctionalAnalysis/BarrelledEdition1.lean/declarations/seminorm-continuous-of-lowersemicontinuous.md) | 88 | `result-track:966b46ad9056b68390106f8c683c5566d8814a919a6fc23b5ad917f2bf521b2e` |
| 3 | `theorem` | [Seminorm.continuous_iSup](../../../../FunctionalAnalysis/BarrelledEdition1.lean/declarations/seminorm-continuous-isup.md) | 93 | `result-track:ff8cfcc8ce7c4983f12b419b065ebc8fe5501da5e510fd8feeacbb3e17db26a5` |
| 4 | `instance` | [BaireSpace.instBarrelledSpace](../../../../FunctionalAnalysis/BarrelledEdition1.lean/declarations/bairespace-instbarrelledspace.md) | 114 | `declaration-track:e035da34ecf09c44e98756c632308698d1f7e424356c830d38909b9bca86bab2` |
| 5 | `theorem` | [banach_steinhaus](../../../../FunctionalAnalysis/BarrelledEdition1.lean/declarations/banach-steinhaus.md) | 155 | `result-track:ddd574ca1081638e8a92eec544bcb790213ceadfcdea23bac5a26d6bc8bdb0ff` |
| 6 | `def` | [continuousLinearMapOfTendsto](../../../../FunctionalAnalysis/BarrelledEdition1.lean/declarations/continuouslinearmapoftendsto.md) | 178 | `declaration-track:0b801770b663bd17118f7c7bd950b02ac48f13113211b881c43198c3592a3d14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95d257d22263a33f6a64ac53bc5feb8bd926cc7610980ccf09d2e787ee08b60c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Barrelled/Variant058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Barrelled/Variant058a5ee40726e9ed133e011c41746afd94fe95f878b49951ab355d64e1cb631c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
