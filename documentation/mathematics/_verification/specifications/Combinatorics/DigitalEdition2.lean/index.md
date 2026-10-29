# Verification target: Digital Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1310d937e46ae77bd686c04e730bf8be7ee59c3d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/DigitalEdition2.lean/index.md) · [Full source](../../../../Combinatorics/DigitalEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1310d937e46ae77bd686c04e730bf8be7ee59c3d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean.json)

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
| 1 | `abbrev` | [RasterState](../../../../Combinatorics/DigitalEdition2.lean/declarations/rasterstate.md) | 22 | `declaration-track:9fbdf812b82d622e97dc2b9b3f764c93a5a8426fc083e78914f88d77c2ca540c` |
| 2 | `structure` | [CutDatum](../../../../Combinatorics/DigitalEdition2.lean/declarations/cutdatum.md) | 26 | `declaration-track:2978abd9b96ff632c413549c2cb3ec29e94c6fe062c228bb136699921157f885` |
| 3 | `def` | [exterior](../../../../Combinatorics/DigitalEdition2.lean/declarations/exterior.md) | 33 | `declaration-track:458117c77c5bc991926b988fcf8574acac3de9b5fe4beaed8c110fff9262ab8b` |
| 4 | `def` | [exposedInterface](../../../../Combinatorics/DigitalEdition2.lean/declarations/exposedinterface.md) | 41 | `declaration-track:173b35ebae33c65161b63934b447d5d308db16a5156dd9544f1ce18ca183adcc` |
| 5 | `theorem` | [exposedInterface_subset_exterior](../../../../Combinatorics/DigitalEdition2.lean/declarations/exposedinterface-subset-exterior.md) | 46 | `result-track:718c8557dc9b02da422e8173cbcdae5260c6113e7b085eed2c22d27cf1668930` |
| 6 | `theorem` | [exterior_disjoint_selected](../../../../Combinatorics/DigitalEdition2.lean/declarations/exterior-disjoint-selected.md) | 52 | `result-track:d4cc510f72002d3aca4b9eef0d1b5f23d169996772e5d78723d43bf1f150b4b5` |
| 7 | `structure` | [Repair](../../../../Combinatorics/DigitalEdition2.lean/declarations/repair.md) | 62 | `declaration-track:d466a7b195734320545aab4f5ba4ac7715b8143b2407b3a8ca34acf95a4c8ab8` |
| 8 | `def` | [apply](../../../../Combinatorics/DigitalEdition2.lean/declarations/apply.md) | 68 | `declaration-track:fa0ba0b658f7b130be0a769a36084ba58c70060e182df8a548941541afc78698` |
| 9 | `theorem` | [apply_inside](../../../../Combinatorics/DigitalEdition2.lean/declarations/apply-inside.md) | 75 | `result-track:6e2d599cd7cbfd69b07891e45b800f0db539fcf662587ee3027f71172d3f8b69` |
| 10 | `theorem` | [apply_outside](../../../../Combinatorics/DigitalEdition2.lean/declarations/apply-outside.md) | 82 | `result-track:b651a5c22669dc0371f7c4d07c0c47a234d3b8c01d641bf6871510fca1142d8a` |
| 11 | `def` | [changeSupport](../../../../Combinatorics/DigitalEdition2.lean/declarations/changesupport.md) | 89 | `declaration-track:baee122a1b22d32bc6e6831f4dda84cc876c18e25defea8c6d63991f0ec9af31` |
| 12 | `def` | [addedCells](../../../../Combinatorics/DigitalEdition2.lean/declarations/addedcells.md) | 94 | `declaration-track:a3c13960151a4738f5ff7d8ae40beea29cf1ec42dce3c9494b56b552c843f4e4` |
| 13 | `def` | [deletedCells](../../../../Combinatorics/DigitalEdition2.lean/declarations/deletedcells.md) | 100 | `declaration-track:997404b5a6afccf6b4b0d2f23e36609ce153c0af4aca5a286382c7e9f093def7` |
| 14 | `theorem` | [changeSupport_subset_selected](../../../../Combinatorics/DigitalEdition2.lean/declarations/changesupport-subset-selected.md) | 106 | `result-track:ac6d3d55679b7b98bddd7bae44957bcbbe300c70ee08de07ac975839a71622b2` |
| 15 | `theorem` | [addedCells_subset_selected](../../../../Combinatorics/DigitalEdition2.lean/declarations/addedcells-subset-selected.md) | 115 | `result-track:ee0098fed70469fc887f189db476a0f7c074a57031c3115785c75874a7200158` |
| 16 | `theorem` | [deletedCells_subset_selected](../../../../Combinatorics/DigitalEdition2.lean/declarations/deletedcells-subset-selected.md) | 127 | `result-track:658b4100d7e5eef5b95d9c6d01bf70184a3386deb22675406413a32b65879e36` |
| 17 | `def` | [reconstruct](../../../../Combinatorics/DigitalEdition2.lean/declarations/reconstruct.md) | 140 | `declaration-track:76134c59ef449262299d8a8981d39dcbe996996d83361aacf4676c0b167afcec` |
| 18 | `theorem` | [reconstruct_apply](../../../../Combinatorics/DigitalEdition2.lean/declarations/reconstruct-apply.md) | 144 | `result-track:227fd71a369cc118149ed57d4578d87c7c80cb55c01300ebacfaeca72f412244` |
| 19 | `theorem` | [overwrite](../../../../Combinatorics/DigitalEdition2.lean/declarations/overwrite.md) | 151 | `result-track:22940920425047c8d8ef616324029b9d4b9ba836822be6c0b9809041a94d50cf` |
| 20 | `inductive` | [AdjacencyPolicy](../../../../Combinatorics/DigitalEdition2.lean/declarations/adjacencypolicy.md) | 162 | `declaration-track:f448d91ed751b263ab3258dedabf2d6d74bd4bd0c15884f32bb95419499ba736` |
| 21 | `def` | [AdjacencyPolicy.Adjacent](../../../../Combinatorics/DigitalEdition2.lean/declarations/adjacencypolicy-adjacent.md) | 169 | `declaration-track:15cf318b646d9fa757367102d9c2b00d55f1e4a83d5fd2d113c841346eeec95e` |
| 22 | `instance` | [adjacencyPolicyDecidable](../../../../Combinatorics/DigitalEdition2.lean/declarations/adjacencypolicydecidable.md) | 175 | `declaration-track:95f9a3add39fb559e7734cb8d67d7e9cbdf1216cc21f79d34770dd9c75df8e4e` |
| 23 | `theorem` | [AdjacencyPolicy.adjacent_symmetric](../../../../Combinatorics/DigitalEdition2.lean/declarations/adjacencypolicy-adjacent-symmetric.md) | 180 | `result-track:52409bf41bdbb0cbdfff6deefadb6d142ef36eff010bb6e2da6d891a5f279c7f` |
| 24 | `theorem` | [AdjacencyPolicy.not_adjacent_self](../../../../Combinatorics/DigitalEdition2.lean/declarations/adjacencypolicy-not-adjacent-self.md) | 187 | `result-track:7c161badf54fc286df3532a2dc5d8c45c50d5245be1a2d3216bf4c3a3cab9661` |
| 25 | `def` | [adjacencyInterface](../../../../Combinatorics/DigitalEdition2.lean/declarations/adjacencyinterface.md) | 197 | `declaration-track:64f11074ea6e90eb914d3e32224a6d2cfce878496db369db1ebdc7b75bfc890d` |
| 26 | `theorem` | [adjacencyInterface_subset_exterior](../../../../Combinatorics/DigitalEdition2.lean/declarations/adjacencyinterface-subset-exterior.md) | 202 | `result-track:72d8cd09a335da28f54d9832d6d69c5a79bccda330ea53eefe938b2a4ee13078` |
| 27 | `theorem` | [adjacencyInterface_edge](../../../../Combinatorics/DigitalEdition2.lean/declarations/adjacencyinterface-edge.md) | 209 | `result-track:024bfbdd5c3d3c922d79a15a24ed7701b6de5c82a04887bfbbdb2df0eaa97032` |
| 28 | `structure` | [DigitalTopologySemantics](../../../../Combinatorics/DigitalEdition2.lean/declarations/digitaltopologysemantics.md) | 226 | `declaration-track:2bfd29d90e33eb7caf20faa9dd24ec6232ed15276f659b10dda163525db54565` |
| 29 | `structure` | [ControlledDigitalSurgery](../../../../Combinatorics/DigitalEdition2.lean/declarations/controlleddigitalsurgery.md) | 253 | `declaration-track:0548ebbe27261c3defdc16a7cc26af49b1685e1a31d4b59a086b50cde531990c` |
| 30 | `theorem` | [changes_only_selected](../../../../Combinatorics/DigitalEdition2.lean/declarations/changes-only-selected.md) | 279 | `result-track:3a62357055a0c64261c39b66eb6e66b01ba841bae93b665b7c26ad8712279615` |
| 31 | `theorem` | [added_only_selected](../../../../Combinatorics/DigitalEdition2.lean/declarations/added-only-selected.md) | 288 | `result-track:55b2303c522560d93e42a53b1eb53a67624e6392299d4dad0ba609199026c105` |
| 32 | `theorem` | [deleted_only_selected](../../../../Combinatorics/DigitalEdition2.lean/declarations/deleted-only-selected.md) | 297 | `result-track:ad75601b5e852729937e8ecf3156c57d1fdc2b8d88deb75791d9fefcc1e964fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2acc8a90a9bc9a62e1c98ad0ee4635fa5e881d8b35af2dcdbda3caf1c02c37fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Digital/Variantd682b033bfb58079f87071b8d5c04e3103f7ad3006c564126d5382a3d7cc8361.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
