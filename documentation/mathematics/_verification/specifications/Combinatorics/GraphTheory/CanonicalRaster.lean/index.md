# Verification target: Canonical Raster

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c9f0e195c4ff103a9fd0e84e7fcdb7e0c8982d7",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c9f0e195c4ff103a9fd0e84e7fcdb7e0c8982d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Surgery.Digital` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity.Finite` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incidenceFaces](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/incidencefaces.md) | 30 | `declaration-track:3f11d4f5165f9ab66531a21e6762eeb0a41c642e43e12f71924c7372adda422a` |
| 2 | `theorem` | [incidenceFaces_square_eq](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/incidencefaces-square-eq.md) | 47 | `result-track:e1f582bb320c3e15408b53e43b674b2ca78a16f35f48d988394699ebe39e22d9` |
| 3 | `theorem` | [mem_incidenceFaces_square_iff](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/mem-incidencefaces-square-iff.md) | 58 | `result-track:12f3c680236468a3907e9b5d3be47cacf1c44295f3cdab1abb60f9659d35a6ac` |
| 4 | `theorem` | [edgeAdjacent_iff_shared_incidence_face](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/edgeadjacent-iff-shared-incidence-face.md) | 71 | `result-track:8d4bf136570c7396ed64f9934d789fdf4853488e5b288beca6fb1a9a0b950549` |
| 5 | `theorem` | [incidenceFaces_lowersDimension](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/incidencefaces-lowersdimension.md) | 84 | `result-track:5d68f7e773f07eabf771c5c959b46defb65109b229464137fbff8f9ecf08076d` |
| 6 | `abbrev` | [ForegroundCell](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/foregroundcell.md) | 102 | `declaration-track:18331f7a06782c6b92d9da265c4fafffa3c7285e197a223c85e7c969f2689d8f` |
| 7 | `def` | [foregroundGraph](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/foregroundgraph.md) | 106 | `declaration-track:7bb5ccdbedb6011d64eb849124f9cd22f4590042a5711d83282e28e7e80d93c3` |
| 8 | `instance` | [foregroundGraphAdjacencyDecidable](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/foregroundgraphadjacencydecidable.md) | 114 | `declaration-track:460bf40cde708b78a865e4d2d6e7dce686bad91e2a2bab46a7f143ae70203f6e` |
| 9 | `def` | [betaZero](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/betazero.md) | 120 | `declaration-track:ee3935dbdffbaed9ea5a0052008f81d0657813c8ee959d7d925e3908bfb1ec27` |
| 10 | `def` | [betaOne](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/betaone.md) | 125 | `declaration-track:bb3ddfc9760894b61443b427184e56b2c94742dfc16127a3aa540d1054e7d545` |
| 11 | `def` | [fullTwoByTwo](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/fulltwobytwo.md) | 131 | `declaration-track:02085546b6577f20dad45de4427adce8206a530466e4228dc60614284e2d12a2` |
| 12 | `theorem` | [fullTwoByTwo_betaZero](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/fulltwobytwo-betazero.md) | 134 | `result-track:b28c5b5f4b3fe006dfba0af996ec4fd53d4b6a7b2f36b496a2a477d412a33af9` |
| 13 | `theorem` | [fullTwoByTwo_betaOne](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/fulltwobytwo-betaone.md) | 140 | `result-track:6e1055bff6f695e6e7f9977b30d673e0a6992f109bc16a695530530fd4a140ee` |
| 14 | `def` | [graphBetti](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/graphbetti.md) | 145 | `declaration-track:3a9a6f0e2f221d8fd300e5516d0840f76605c93ac3dc76064521f2d3c854bfce` |
| 15 | `def` | [CanonicalAdjacencyPair](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/canonicaladjacencypair.md) | 154 | `declaration-track:8b3793bc094d2dd7ca2833361836984c97586ef8aeea042ea9cb7b78edb99574` |
| 16 | `instance` | [canonicalAdjacencyPairDecidable](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/canonicaladjacencypairdecidable.md) | 157 | `declaration-track:de83f1acc8dbecba70db091d78a43012957df9613f22192aba373bc4fccf636c` |
| 17 | `theorem` | [vertexAdjacent_iff_coordinate_bounds](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/vertexadjacent-iff-coordinate-bounds.md) | 165 | `result-track:9015940994628e5df24221959022917aaeeef1fe6874018a56c0b0bba2d234c7` |
| 18 | `def` | [foregroundDegree](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/foregrounddegree.md) | 185 | `declaration-track:3ee26786d2941d8729e5f258cb7fca66f733b105ebe75f83a8371d2629667994` |
| 19 | `def` | [NonbranchingCubicalGraph](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/nonbranchingcubicalgraph.md) | 193 | `declaration-track:392f9097ea50b8e0e70c151001f44f207d69eca4d096742d25c976f4394e30fd` |
| 20 | `instance` | [nonbranchingCubicalGraphDecidable](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/nonbranchingcubicalgraphdecidable.md) | 197 | `declaration-track:3656b267a1e090ea62fdce2083b186888f50da51cdf88ddbf3415e3882659b4d` |
| 21 | `def` | [canonicalCubicalManifold](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/canonicalcubicalmanifold.md) | 205 | `declaration-track:8f67ad7fb1a323fe32193554b3f44fd28ce70f53dd0f8a88963a277ee534d592` |
| 22 | `def` | [canonicalExactCarrierCompatible](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/canonicalexactcarriercompatible.md) | 213 | `declaration-track:ccd6481c28df6bcffa652f6ae72d33a1caf4c87ca081ce3aa64ad345e89982d0` |
| 23 | `def` | [foregroundLink](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/foregroundlink.md) | 222 | `declaration-track:e7d4abb16f9ae3a542c722e9610ca14481e77da6d832b4d6b03e202d8586da76` |
| 24 | `theorem` | [foregroundLink_subset_exterior](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/foregroundlink-subset-exterior.md) | 230 | `result-track:a0d218012f40fd2acaf46804c6725658e682ff52e6860a915cb204efc94b4a61` |
| 25 | `def` | [backgroundState](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/backgroundstate.md) | 238 | `declaration-track:515b2cd3f3e7b5fc4d0d9bd2cd39c67398644a61f7b78d674954dd28c6bb070f` |
| 26 | `def` | [backgroundLink](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/backgroundlink.md) | 244 | `declaration-track:8c03eb8d5c7f1836c720adeb3716c1800eab1b07e379125343a064b9e51d1aeb` |
| 27 | `def` | [backgroundBetaZero](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/backgroundbetazero.md) | 250 | `declaration-track:340d209d727bc5a5847f804218e08454593d776eff9dd49c35861e27bc57d5c5` |
| 28 | `def` | [canonicalLinkCondition](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/canonicallinkcondition.md) | 261 | `declaration-track:72f89b0e575676aef258025bb83bf8ff7980149faad8bf3071130aa91a46cb8c` |
| 29 | `def` | [semantics](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/semantics.md) | 279 | `declaration-track:634dcf5f52c1258856e18b7c1e501d4deb002dcbd60299a5d0e8f95fa68edbfd` |
| 30 | `def` | [leftCell](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/leftcell.md) | 291 | `declaration-track:12c8cc0e8d9cc33269d6763223c4cb84c1abb42eaf7218c43c782295efe81da6` |
| 31 | `def` | [middleCell](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/middlecell.md) | 294 | `declaration-track:a69654ed890c49bc57b183b1920c44a004b5acac940689ca821a5baf6c64572b` |
| 32 | `def` | [rightCell](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/rightcell.md) | 297 | `declaration-track:54c212338dd5cf2ec851462bcf192ea2f7a3aa6e652f258936568c5c4f16b92a` |
| 33 | `def` | [shiftBefore](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shiftbefore.md) | 300 | `declaration-track:75f6e6aa428eb1e559e1babf930b7b63edfe45f4898acc37bff7a8280ba4235a` |
| 34 | `def` | [shiftCut](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shiftcut.md) | 303 | `declaration-track:91dc55dcf643cfd39fe992ba754f50033222bdb237f0e655baca842145572d1a` |
| 35 | `def` | [shiftRepair](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shiftrepair.md) | 309 | `declaration-track:9f9c6edbfa45226b3564f2f67a79d453839c70c24e51414e193bc55ca6494ff1` |
| 36 | `def` | [shiftAfter](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shiftafter.md) | 313 | `declaration-track:551bd0f1536655809ea8664b47525ac7513efcffa0ff15a3f5e5e768f6b36597` |
| 37 | `theorem` | [shiftRepair_changes_state](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shiftrepair-changes-state.md) | 315 | `result-track:e51727f7eefda9ce2796ebf033a5483eb8d554a311ff8b16c9efb8386e43f3c3` |
| 38 | `theorem` | [shift_changeSupport](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shift-changesupport.md) | 321 | `result-track:2e68f9ea32a5a6091170cdcb41127e3be5507beab71703567a52976977851655` |
| 39 | `theorem` | [shift_interface_nonempty](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shift-interface-nonempty.md) | 324 | `result-track:7bea1d1ea8c8c7f6569aa30ae2e424b70893586c57d9491173e413673900d966` |
| 40 | `theorem` | [shift_link_preserved](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shift-link-preserved.md) | 328 | `result-track:1125cb688a3af990de6eb412db381cbddac52475641092c95bd729c66a669407` |
| 41 | `theorem` | [shift_background_link_preserved](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shift-background-link-preserved.md) | 333 | `result-track:219aaceca9f1ba0669b65c3ec3a4b14c6e983d11177a1c88fa4bec96e2f32c20` |
| 42 | `theorem` | [shift_before_nonbranching](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shift-before-nonbranching.md) | 338 | `result-track:77e395f36094757fe1150da65d67defd68d58fa687cbd566649d9c91f643defa` |
| 43 | `theorem` | [shift_after_nonbranching](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shift-after-nonbranching.md) | 342 | `result-track:59436ff0f21e4126a583ec3c101d8254805c6a95e972e63184d4d677d587eb2e` |
| 44 | `theorem` | [shift_betti_preserved](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shift-betti-preserved.md) | 346 | `result-track:e0324e973111f074afa139de0da3678c12fcfe0cfc28d8b749a920b3ee3b3daa` |
| 45 | `theorem` | [shift_background_components_preserved](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/shift-background-components-preserved.md) | 354 | `result-track:597f7a0f173f3a672e3f532a11733be2a39817ddf7bfdfdb31766900dfe87f34` |
| 46 | `def` | [controlledShift](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/controlledshift.md) | 362 | `declaration-track:e12d1063a335b9c8b4913643a2d4196060721e5454e3dbe8484765f5e6803a32` |
| 47 | `inductive` | [AuditDatum](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/auditdatum.md) | 387 | `declaration-track:ea509607b4a7fd97fce606b3d6d4ae9b08597728ad90368e54c514262fbe87dd` |
| 48 | `def` | [boundaryComponentCount](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/boundarycomponentcount.md) | 395 | `declaration-track:0ef756e3a16f281f0c1717cb88b7f91e45bc2581bb2af799a0f48d3c652ff8d0` |
| 49 | `structure` | [RasterTopologySnapshot](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/rastertopologysnapshot.md) | 404 | `declaration-track:1ec6f636a46963824da24d031f04d920e3d68ea8fa037ad8aa167a23b576d26e` |
| 50 | `def` | [topologySnapshot](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/topologysnapshot.md) | 424 | `declaration-track:3395523f61bdd57fca5746c9fa28b732dd77464412db759490647be9411747cb` |
| 51 | `structure` | [RasterSurgeryDatumSummary](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/rastersurgerydatumsummary.md) | 445 | `declaration-track:1c7dcf02a7cce8a7fd35c9404c9783530df16eb59df475fa9ac97b76c338ee1d` |
| 52 | `def` | [surgeryDatumSummary](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/surgerydatumsummary.md) | 455 | `declaration-track:bcc1e46ab0b54775a443a75683f562db03ce0ae587aefa875088f853b35b27c8` |
| 53 | `structure` | [SurgeryInvariantReport](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/surgeryinvariantreport.md) | 470 | `declaration-track:dfbe5047162a874b17bd49756ca221df81601f9fb3a898c15f9097805f4a7e89` |
| 54 | `def` | [controlledShiftReport](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/controlledshiftreport.md) | 491 | `declaration-track:d3e66ad6fb40c0089ba2a60263d26e9f1aab67259bc2e0f30707554a9694afdf` |
| 55 | `theorem` | [controlledShiftReport_bettiZero](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/controlledshiftreport-bettizero.md) | 504 | `result-track:dbfbfc45b3614524d1d798009f7b86ab0644768597d285882f406ddd8fd84c73` |
| 56 | `theorem` | [controlledShiftReport_bettiOne](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/controlledshiftreport-bettione.md) | 509 | `result-track:af34c9a2c72b1b09220fa205d441a4705218dc82ceb355e54beee885153a1402` |
| 57 | `theorem` | [controlledShiftReport_backgroundComponents](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/controlledshiftreport-backgroundcomponents.md) | 514 | `result-track:f28a0f895f550f61912199b72716a51eecfc2f54124ab99f45c2126bb1ba2852` |
| 58 | `theorem` | [controlledShiftReport_local_counts](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/controlledshiftreport-local-counts.md) | 519 | `result-track:922dd13cbaa2286016c5f26ca0fb21dc0e1b21efbdd85e50e7ea5464a75c7556` |
| 59 | `theorem` | [controlledShiftReport_eulerCharacteristic](../../../../../Combinatorics/GraphTheory/CanonicalRaster.lean/declarations/controlledshiftreport-eulercharacteristic.md) | 528 | `result-track:157a96703286d68707bfd520797295cd545acef4e80bff558b71c32a24e60766` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dbaef3ac931ecccdc1716c864e637f780d925eb6a6e040fa5f89fc8d67a3f133 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant9d8d6b4b14ac34b928414013268f4e05a39218dfb8cac89820e7c1d0068cba05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
