# Verification target: Cyclic Representation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "287f8bc0df446c46dd459d6c0412390bcc4ef4e0",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `287f8bc0df446c46dd459d6c0412390bcc4ef4e0`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.DivisorRepresentation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Card` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicSubgroup](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cyclicsubgroup.md) | 27 | `declaration-track:d4d3404118c09896d54cc5c0b0eb4483ee7f95a0210cfb08ceb33eb3973cb108` |
| 2 | `theorem` | [mem_cyclicSubgroup](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/mem-cyclicsubgroup.md) | 34 | `result-track:6fee2090f5f68640c63da503c213d1b48b89e67cd1262cf9285e016458aeab87` |
| 3 | `theorem` | [generator_order](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/generator-order.md) | 39 | `result-track:9b8529692b77d9c81b9bf3dc860f9025caf00f9f3f47c538a3378fb17d796221` |
| 4 | `theorem` | [cyclicSubgroup_eq_zmultiples](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cyclicsubgroup-eq-zmultiples.md) | 46 | `result-track:a929ef7d909af640d0f2c1f5a988ad7de8f8a5d30e93ac221796277471898f52` |
| 5 | `theorem` | [cyclicSubgroup_card](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cyclicsubgroup-card.md) | 59 | `result-track:6e8d71104ea345ecf20d28110b6d58b7250de627d9770eeba5fca57fffd1b7ea` |
| 6 | `theorem` | [cyclicSubgroup_le_iff](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cyclicsubgroup-le-iff.md) | 63 | `result-track:36518b27f71f46e8e0c0ba1e88a908c3333cbc8f138b212fbebe597f6dbc1249` |
| 7 | `theorem` | [cyclicSubgroup_surjective](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cyclicsubgroup-surjective.md) | 74 | `result-track:9f470fda76df129ea45b5b8faf484110fc84bf0a8b708f71cc25bccaad00943d` |
| 8 | `def` | [cyclicSubgroupOrderIso](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cyclicsubgrouporderiso.md) | 90 | `declaration-track:aeb1c5e8a0ea12ba1df973c5cc80fe84a8cee312df9535e9556268667464510b` |
| 9 | `theorem` | [cyclicSubgroup_gcd](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cyclicsubgroup-gcd.md) | 97 | `result-track:9436a768c7c1144c3cd0a247ee22ddc1a0a0f0118debcf3142ce89cd837a207e` |
| 10 | `theorem` | [cyclicSubgroup_lcm](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cyclicsubgroup-lcm.md) | 101 | `result-track:f189c9681a14807eba7f9f011ff0cc7fde8f3d0cfd46e0e179d910581a95ac09` |
| 11 | `def` | [cyclicColor](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cycliccolor.md) | 106 | `declaration-track:1e74ed293c085c584188aece5ed37a6ade1bcf0c6ed77fc83be05aabda259a7f` |
| 12 | `theorem` | [cyclicColor_threshold](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cycliccolor-threshold.md) | 110 | `result-track:1497d9bc3f2af73285fb6afcc1c1deb18158935f46b62196772e5416215773b3` |
| 13 | `theorem` | [cyclicColor_representative](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cycliccolor-representative.md) | 115 | `result-track:b2022e7ae7e9a8ca0fa0fa2aaf810a2764bfca9c6461ea43a9872fa6ef1588d8` |
| 14 | `theorem` | [cyclicColor_representative_independent](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cycliccolor-representative-independent.md) | 122 | `result-track:4d4ee8501f7c4eb844bddd825e5c9668cbb347b3e1eb13eb3a7c3c058611107c` |
| 15 | `theorem` | [cyclicColor_val](../../../../GroupTheoryAndGeneralizations/CyclicRepresentation.lean/declarations/cycliccolor-val.md) | 128 | `result-track:4463124240c409e5f9019d4b1bc8d4e73778091533929e797ca931ab6b208330` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=615341be7e9045c68b8f7eda560d2b916bd05d690fdce18c2b141e99869ad079 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
