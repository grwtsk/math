# Verification target: Digital Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18c02215d7166ba85994581aca5e9eeabf964e9d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DigitalEdition1.lean/index.md) · [Full source](../../../../Combinatorics/DigitalEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18c02215d7166ba85994581aca5e9eeabf964e9d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Digital/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Topology.RasterCubicalComplex` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RasterState](../../../../Combinatorics/DigitalEdition1.lean/declarations/rasterstate.md) | 22 | `declaration-track:076add5febb636510d91c6bed77d617c78145a0f07fa46922100c14a166f3127` |
| 2 | `structure` | [CutDatum](../../../../Combinatorics/DigitalEdition1.lean/declarations/cutdatum.md) | 26 | `declaration-track:21bea07d4aeb49efa7fd14f5830669e589997ddee2ff4568b10d39b34057f15a` |
| 3 | `def` | [exterior](../../../../Combinatorics/DigitalEdition1.lean/declarations/exterior.md) | 33 | `declaration-track:c1b1b7a7025442db2736b734f70c1709fe2858c50067669cd5be296fb3d64f9f` |
| 4 | `def` | [exposedInterface](../../../../Combinatorics/DigitalEdition1.lean/declarations/exposedinterface.md) | 41 | `declaration-track:03afb13d6cb7be11d6a5052e898005e417d68fc417e9f51e9f83b21da0cd6e94` |
| 5 | `theorem` | [exposedInterface_subset_exterior](../../../../Combinatorics/DigitalEdition1.lean/declarations/exposedinterface-subset-exterior.md) | 46 | `result-track:12a8bc9e7dcaab21ad72cd448558cdfc1593b772787128f9c3b9709f59fcb61a` |
| 6 | `theorem` | [exterior_disjoint_selected](../../../../Combinatorics/DigitalEdition1.lean/declarations/exterior-disjoint-selected.md) | 52 | `result-track:ede997649e24bfb3f6a0d9bbafb655b6ce804f34ff2a163e3a80403c6cb01d49` |
| 7 | `structure` | [Repair](../../../../Combinatorics/DigitalEdition1.lean/declarations/repair.md) | 62 | `declaration-track:bf914e8a92afee235e6e3390217310f1fb02d15926e00b761f4b481c657997bf` |
| 8 | `def` | [apply](../../../../Combinatorics/DigitalEdition1.lean/declarations/apply.md) | 68 | `declaration-track:850729458fab00e6b2a5b543bf6b37768a24fbd53c542cc11a7425f49f9c1c79` |
| 9 | `theorem` | [apply_inside](../../../../Combinatorics/DigitalEdition1.lean/declarations/apply-inside.md) | 75 | `result-track:602956b9169e04398c32424028d81a27c7d65d887961a6a147761b7a2d6d032b` |
| 10 | `theorem` | [apply_outside](../../../../Combinatorics/DigitalEdition1.lean/declarations/apply-outside.md) | 82 | `result-track:cbc8ec1823387f56c657a0a20a37fec5b0b73388126cb79c7ee847dcff8fbece` |
| 11 | `def` | [changeSupport](../../../../Combinatorics/DigitalEdition1.lean/declarations/changesupport.md) | 89 | `declaration-track:61e11c2cac6eed52c9cab65aa7715cf0bf7a9ee3a8b45007dcd82a64a09c552b` |
| 12 | `def` | [addedCells](../../../../Combinatorics/DigitalEdition1.lean/declarations/addedcells.md) | 94 | `declaration-track:19e7676c0b64a5844e98032406c727d3b5936130407dcef519e22c47233eb81d` |
| 13 | `def` | [deletedCells](../../../../Combinatorics/DigitalEdition1.lean/declarations/deletedcells.md) | 100 | `declaration-track:b14f1eaf09fede64da9354674d0e5dfc4d0ec75535e51517bec908c88a7a2251` |
| 14 | `theorem` | [changeSupport_subset_selected](../../../../Combinatorics/DigitalEdition1.lean/declarations/changesupport-subset-selected.md) | 106 | `result-track:0b311a55f8a2d5d06066b0eabf47f70d0ac39e707972865028daab644ed88a60` |
| 15 | `theorem` | [addedCells_subset_selected](../../../../Combinatorics/DigitalEdition1.lean/declarations/addedcells-subset-selected.md) | 115 | `result-track:3b83175cade0cdbc6dcce9873f5c022c3a3ba84f95185f34ab59b5adf0b091c8` |
| 16 | `theorem` | [deletedCells_subset_selected](../../../../Combinatorics/DigitalEdition1.lean/declarations/deletedcells-subset-selected.md) | 127 | `result-track:54a5b22e27bdeca657da50c0a5f413bcaf27c079a35c9940e6c5e5ec7b857d66` |
| 17 | `def` | [reconstruct](../../../../Combinatorics/DigitalEdition1.lean/declarations/reconstruct.md) | 140 | `declaration-track:6810a0fa4e8fff740a2ad293f554a7e1362b23c23197de004be9507421f94733` |
| 18 | `theorem` | [reconstruct_apply](../../../../Combinatorics/DigitalEdition1.lean/declarations/reconstruct-apply.md) | 144 | `result-track:63c174c5505271cad6783f76fc7aa96660d7cf2e119c8e21f67c14b43336fd35` |
| 19 | `theorem` | [overwrite](../../../../Combinatorics/DigitalEdition1.lean/declarations/overwrite.md) | 151 | `result-track:5734e3fd7a4e20a58cddda46a16da45f5cd505a4a768f45d31a68213d8593586` |
| 20 | `inductive` | [AdjacencyPolicy](../../../../Combinatorics/DigitalEdition1.lean/declarations/adjacencypolicy.md) | 162 | `declaration-track:87c0d1a6929b50060acf21b51f1ac4581581b4cb01a039471e91130b9b56dd9e` |
| 21 | `def` | [AdjacencyPolicy.Adjacent](../../../../Combinatorics/DigitalEdition1.lean/declarations/adjacencypolicy-adjacent.md) | 169 | `declaration-track:b26139c7da77cf9022edb791097ce21be14cc8ad9e7d3beddc571e48e57d937d` |
| 22 | `instance` | [adjacencyPolicyDecidable](../../../../Combinatorics/DigitalEdition1.lean/declarations/adjacencypolicydecidable.md) | 175 | `declaration-track:ececa1a7bbab500bf89463295c1ec6e0a351841ad2c3ab2ec4ecf725dab13f65` |
| 23 | `theorem` | [AdjacencyPolicy.adjacent_symmetric](../../../../Combinatorics/DigitalEdition1.lean/declarations/adjacencypolicy-adjacent-symmetric.md) | 180 | `result-track:8c2ebb38ab86e0379a8a78f99511eba18c9aa7bdc1d27262b4838bb81cdb1d6a` |
| 24 | `theorem` | [AdjacencyPolicy.not_adjacent_self](../../../../Combinatorics/DigitalEdition1.lean/declarations/adjacencypolicy-not-adjacent-self.md) | 187 | `result-track:53c728f4a227f0054f80f4e616a71d99ffb291a119a99d535230ae5f878ce25b` |
| 25 | `def` | [adjacencyInterface](../../../../Combinatorics/DigitalEdition1.lean/declarations/adjacencyinterface.md) | 197 | `declaration-track:186d86c5f70a21b6fcfbf9b05004b94f23160e885316623ec598118d8f7c9bef` |
| 26 | `theorem` | [adjacencyInterface_subset_exterior](../../../../Combinatorics/DigitalEdition1.lean/declarations/adjacencyinterface-subset-exterior.md) | 202 | `result-track:a578ab0b0f08e3bf1248d50ebb4348152140fc81f5ab060b278c3baa32c0c52a` |
| 27 | `theorem` | [adjacencyInterface_edge](../../../../Combinatorics/DigitalEdition1.lean/declarations/adjacencyinterface-edge.md) | 209 | `result-track:dc8fb85d2b1846411c6116d1d16722841015a739d91a249682e541e1abb810da` |
| 28 | `structure` | [DigitalTopologySemantics](../../../../Combinatorics/DigitalEdition1.lean/declarations/digitaltopologysemantics.md) | 226 | `declaration-track:e3eb0bcafea412b497674266ac12856a0204d406763b1d1c84d9833b85297e64` |
| 29 | `structure` | [ControlledDigitalSurgery](../../../../Combinatorics/DigitalEdition1.lean/declarations/controlleddigitalsurgery.md) | 253 | `declaration-track:a02945a9d31611c7677e92854b12e6fbd01a9b8f3810356e99104417ad57d530` |
| 30 | `theorem` | [changes_only_selected](../../../../Combinatorics/DigitalEdition1.lean/declarations/changes-only-selected.md) | 279 | `result-track:74cc1fccf25dc153740fbee9b8ccc2b64f695953f6cb07401d8b53a7e27fd1ff` |
| 31 | `theorem` | [added_only_selected](../../../../Combinatorics/DigitalEdition1.lean/declarations/added-only-selected.md) | 288 | `result-track:00866e725ed22ae23fbf4d1ff90cd8e23330883d40c34121104ec0f7822c4ffe` |
| 32 | `theorem` | [deleted_only_selected](../../../../Combinatorics/DigitalEdition1.lean/declarations/deleted-only-selected.md) | 297 | `result-track:fabc50a1e43715405317a34b29cdf7d1da2ca8de21e60c285973b960453cc180` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=02d6e8c7c291ce8bf8b7396f51abcc9dfb7c12a19835d73ac70c085d166b8e29 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Digital/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
