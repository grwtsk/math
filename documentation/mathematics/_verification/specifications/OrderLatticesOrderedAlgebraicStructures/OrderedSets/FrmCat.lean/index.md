# Verification target: Frm Cat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0411fc6040a7d70c5e666e93f7aea7a7bf828ab",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FrmCat/Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0411fc6040a7d70c5e666e93f7aea7a7bf828ab`.

Source path: `GRWTSK/Topology/GeneralTopology/FrmCat/Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FrmCat/Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Category.LatCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.CompleteLattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FrmCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/frmcat.md) | 31 | `declaration-track:46002c59d5335f23bc46b534a8e1184c2c586f7b86adb67ab3c4d6636de65e18` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/instance-source-edition-3.md) | 37 | `declaration-track:a2f946de139360b7429a93053eb2a0e06455fcc89b2a7e82e9072633af7cf1ec` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/instance-source-edition-2.md) | 40 | `declaration-track:288cedafaadda4c71a9bb20fb9d9a139d46a73bee824fa1806f3c3224bc094e1` |
| 4 | `def` | [of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/of.md) | 44 | `declaration-track:f30b03f27186bb3cf13605ec8ae91174a9d6e6020f0dbde4cb5746e134c5934b` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/coe-of.md) | 49 | `result-track:f91a7174fc407016b9eb6619071b55a05d2742f819c48c7339ccc84a09b4d503` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/instance.md) | 52 | `declaration-track:1cb82694e012a834133d37c58acc0d7a8a08080196400210d3cada022937d68d` |
| 7 | `abbrev` | [Hom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/hom.md) | 57 | `declaration-track:165458b055e340a9e84beb0455e242f6e340a82f814903a5b94489ce2493f4d6` |
| 8 | `instance` | [bundledHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/bundledhom.md) | 61 | `declaration-track:9de8a633dd5df7e3d054a0eb5664bc795bb93347276410a501c9aa9ea6f8c412` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/instance-source-edition-4.md) | 72 | `declaration-track:e861464925b081958e39940a4be9636a4f5e7cab3db710fec7e977549e9a8ca8` |
| 10 | `instance` | [hasForgetToLat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/hasforgettolat.md) | 76 | `declaration-track:160116a861fce6fc352e303cb4aa2734cdcee272bf3c9de92aac51accfce9a4f` |
| 11 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/iso-mk.md) | 84 | `declaration-track:c9540a5ff9974dca24566c1585b8ee6a41184146d36d81e5951671a0f25d4479` |
| 12 | `def` | [topCatOpToFrameCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/topcatoptoframecat.md) | 99 | `declaration-track:022d85fa019543984018ca2338b42790b45c02f02335a0c1d1df8c40105ec781` |
| 13 | `instance` | [CompHausOpToFrame.faithful](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/FrmCat.lean/declarations/comphausoptoframe-faithful.md) | 106 | `declaration-track:ec23453f1d10f8df23ee456a282516896815da7b0b80a526746b2edf94f02adc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b85e4cd39b9d90c7692171917cf93a81684e393ce65f473075e4489945b1830 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FrmCat/Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/FrmCat/Variant63d0d49e27d1c8d453f925846dfcc75c0199beb3908bcf86374fc07b7b0c0ed6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
