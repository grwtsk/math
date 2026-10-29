# Verification target: Digital Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e8719571e064558551316fd60615e2bd214fbb1",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variant51a1ec04fac35de807159317fd8d984b2f1f61a9f9ad46489c42fef284201ae1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DigitalNamespacedEdition2.lean/index.md) · [Full source](../../../../Combinatorics/DigitalNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e8719571e064558551316fd60615e2bd214fbb1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variant51a1ec04fac35de807159317fd8d984b2f1f61a9f9ad46489c42fef284201ae1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Digital/Variant51a1ec04fac35de807159317fd8d984b2f1f61a9f9ad46489c42fef284201ae1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Topology.RasterCubicalComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RasterState](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/rasterstate.md) | 30 | `declaration-track:3ec50fa9437f9b94bb09c22da2440a9d3bf854f6bba9907b675025b18a6c49a5` |
| 2 | `structure` | [CutDatum](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/cutdatum.md) | 34 | `declaration-track:6db39b6b7459e88e612d63681a2c70066247d93f7267b3e98863ab16d5e790a8` |
| 3 | `def` | [exterior](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/exterior.md) | 41 | `declaration-track:2fec2d6c0f0c45182873c423aa79edef4ec7cce2fd4d465fe6bb7bd517f51b45` |
| 4 | `def` | [exposedInterface](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/exposedinterface.md) | 49 | `declaration-track:d97850cde6c7cf1d51538282aac8df07acfa64abb565c71754c97af32d2a9f25` |
| 5 | `theorem` | [exposedInterface_subset_exterior](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/exposedinterface-subset-exterior.md) | 54 | `result-track:f316c44d578bf1a4e8f17fc850972932ed2260aa6d29e54b6c1e38faa83ae9b6` |
| 6 | `theorem` | [exterior_disjoint_selected](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/exterior-disjoint-selected.md) | 60 | `result-track:bc7f27acbd17b4b707649228bbe7bb4d58f3737bbd2e1f9528f252cb5a0cad56` |
| 7 | `structure` | [Repair](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/repair.md) | 70 | `declaration-track:d0b75a84a069eb687d08773e6c08d7ccd3a080ad9e7f184da019407f9b3dcfb2` |
| 8 | `def` | [apply](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/apply.md) | 76 | `declaration-track:5b22ac22101d9592067c0cfc3972280cc881a879f738f77d8c831bc5aa41c6f7` |
| 9 | `theorem` | [apply_inside](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/apply-inside.md) | 83 | `result-track:dd5798ceb6268ae2159b90978720cb3695d60033ecea50d17d151e37d478f876` |
| 10 | `theorem` | [apply_outside](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/apply-outside.md) | 90 | `result-track:5f0d18a865fe831f4dcadf8afff99c82cf2c16907b8b275517b43edbbb1bdcaa` |
| 11 | `def` | [changeSupport](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/changesupport.md) | 97 | `declaration-track:888f8b4d51a635d31e4a5dfb0648501385fcf9fda1a88b3770451a5f8fbd5988` |
| 12 | `def` | [addedCells](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/addedcells.md) | 102 | `declaration-track:ca56bfaa07c5bcb46a876186601fec73d4b13967e1527474607b4812a90b0b34` |
| 13 | `def` | [deletedCells](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/deletedcells.md) | 108 | `declaration-track:ceb4b6d3e2a8efcf724d8cef9a5f4606ce488390a757e15f2de19da21e023d8f` |
| 14 | `theorem` | [changeSupport_subset_selected](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/changesupport-subset-selected.md) | 114 | `result-track:67d9075a8eb2f71e0a32290f9f7cdf58f1b2d0401abdd88943ff5ad2d4577e51` |
| 15 | `theorem` | [addedCells_subset_selected](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/addedcells-subset-selected.md) | 123 | `result-track:cc10f36ee325fb79a632eaa77f04acd67b9a99dbd6cb02d3ddacb404c1ca276c` |
| 16 | `theorem` | [deletedCells_subset_selected](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/deletedcells-subset-selected.md) | 135 | `result-track:c05efad6f236f43e2739a2e153ffd5467a2ff61aafb96c7a05a8a8c333394eeb` |
| 17 | `def` | [reconstruct](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/reconstruct.md) | 148 | `declaration-track:1977d4c84f3fbcfd4a334c41d42077d6e248c9a2a33ee9fbab0ba5cfc4017af3` |
| 18 | `theorem` | [reconstruct_apply](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/reconstruct-apply.md) | 152 | `result-track:14327f480966a2da20f6abb338ce8bc228bbaf4852eca1603c476c3df8dd565e` |
| 19 | `theorem` | [overwrite](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/overwrite.md) | 159 | `result-track:983e97af565ba5623414d4ba37c1de855e0599ea23a71f3fbe14f2124a4e0ec2` |
| 20 | `inductive` | [AdjacencyPolicy](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/adjacencypolicy.md) | 170 | `declaration-track:a2a4c0361ea2d01c19069f3ae8105935f7fb51892027ba4f0c20b99dd177d2ab` |
| 21 | `def` | [AdjacencyPolicy.Adjacent](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/adjacencypolicy-adjacent.md) | 177 | `declaration-track:4f0b095d7120ea30f16679f4f9fbe70b27409bc22b639a4d89c9d313a7cf7fd3` |
| 22 | `instance` | [adjacencyPolicyDecidable](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/adjacencypolicydecidable.md) | 183 | `declaration-track:29af68c0dc64511d216b3ba76d8b2ebc6cf70a86f6b763cf06a2d705991ca8c2` |
| 23 | `theorem` | [AdjacencyPolicy.adjacent_symmetric](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/adjacencypolicy-adjacent-symmetric.md) | 188 | `result-track:8c4c833639dfefdf73763c5c879c467b2450ba66b09a53af8c779b9c9f319d43` |
| 24 | `theorem` | [AdjacencyPolicy.not_adjacent_self](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/adjacencypolicy-not-adjacent-self.md) | 195 | `result-track:c888858d282b3c4895ecdbfd8581db2c8c34a2f9644c3819070f7b193b54407b` |
| 25 | `def` | [adjacencyInterface](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/adjacencyinterface.md) | 205 | `declaration-track:2f9b0cb6e6975dd9233dbdcf74bc6c5fab2873779ffbef45a3a9db9ea321336f` |
| 26 | `theorem` | [adjacencyInterface_subset_exterior](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/adjacencyinterface-subset-exterior.md) | 210 | `result-track:4a85f8053a1ec588d90a8f451689870e621b58963bfb8e91ae211200fe97e47d` |
| 27 | `theorem` | [adjacencyInterface_edge](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/adjacencyinterface-edge.md) | 217 | `result-track:d926e2aaff4db4ab7f0c3c05ec39feb1168bb9c623b1334105e4ba83d89cff89` |
| 28 | `structure` | [DigitalTopologySemantics](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/digitaltopologysemantics.md) | 234 | `declaration-track:00278a5d5dd473a63861e2362a256572bd6c585f5deb47a9fe3bfa3b612ca191` |
| 29 | `structure` | [ControlledDigitalSurgery](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/controlleddigitalsurgery.md) | 261 | `declaration-track:90fadf97348699eb1d37d9e11d4c3bc8ec6839d65ef3b1e071e4618c7a047ed5` |
| 30 | `theorem` | [changes_only_selected](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/changes-only-selected.md) | 287 | `result-track:47ac84ffcf1821163c538b61271987808ca09cfea45aba72a74d373141cbb278` |
| 31 | `theorem` | [added_only_selected](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/added-only-selected.md) | 296 | `result-track:3fac89f47823b0f02385e9d063dae46a567a83f620723c12256c1ae808d2620e` |
| 32 | `theorem` | [deleted_only_selected](../../../../Combinatorics/DigitalNamespacedEdition2.lean/declarations/deleted-only-selected.md) | 305 | `result-track:286cca2cf953c3857a922ddece8e7ea5fc92ba24c47df00e22728dce612e7e1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8951911f9de1dfdaacef2a8e46f9c946bfe632ea613e9ffbb6627d30681d48a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variant51a1ec04fac35de807159317fd8d984b2f1f61a9f9ad46489c42fef284201ae1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Digital/Variant51a1ec04fac35de807159317fd8d984b2f1f61a9f9ad46489c42fef284201ae1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
