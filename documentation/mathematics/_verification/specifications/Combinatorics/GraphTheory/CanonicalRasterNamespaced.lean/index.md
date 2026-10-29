# Verification target: Canonical Raster Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb83f91122888da3479557868f860eba0e781508",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb83f91122888da3479557868f860eba0e781508`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Surgery.Digital` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Connectivity.Finite` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [incidenceFaces](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/incidencefaces.md) | 38 | `declaration-track:44fdb2cc9d815c6e36ee43ed50f9590ef991d31c547571e01c6498587ee05ad9` |
| 2 | `theorem` | [incidenceFaces_square_eq](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/incidencefaces-square-eq.md) | 55 | `result-track:4920f1fd76593cac425ddc63d6b6f92c14a5732e0b2a6df1902d1fd71875afb9` |
| 3 | `theorem` | [mem_incidenceFaces_square_iff](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/mem-incidencefaces-square-iff.md) | 66 | `result-track:03400760cf31f6d4ef29c3c64c39bf232fff309daf822abaed1b1c8a1bd4b00b` |
| 4 | `theorem` | [edgeAdjacent_iff_shared_incidence_face](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/edgeadjacent-iff-shared-incidence-face.md) | 79 | `result-track:eb9e6fa1f4f196373a0804f48c5787c8867b5eb8df23074a597ab6a0ac80a315` |
| 5 | `theorem` | [incidenceFaces_lowersDimension](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/incidencefaces-lowersdimension.md) | 92 | `result-track:b6d2dad46f56cca7dbdaa1e1390ef1410e850af70ee8a66204202a4196b47a39` |
| 6 | `abbrev` | [ForegroundCell](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/foregroundcell.md) | 110 | `declaration-track:0d1599017ae2975edf955f75aa44e1c1ab21a6d01b24211f97fb6e6aad01b2cd` |
| 7 | `def` | [foregroundGraph](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/foregroundgraph.md) | 114 | `declaration-track:d79f2dbffe845a523bfade61ef705cd59da3cc3a05d3f1660f5d918c3f4f94e8` |
| 8 | `instance` | [foregroundGraphAdjacencyDecidable](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/foregroundgraphadjacencydecidable.md) | 122 | `declaration-track:a3f7734cdfea01b809780d8aed722b4ebf93816aaccbd051ffff6f44b1a2e920` |
| 9 | `def` | [betaZero](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/betazero.md) | 128 | `declaration-track:dd11780f96ac6593ee72f958c501e2290365d49def18b13b4d3b6f716091ff7b` |
| 10 | `def` | [betaOne](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/betaone.md) | 133 | `declaration-track:033d72be9319f9801bf763de6f18311c11513dec3012d498bda871b87f1e74de` |
| 11 | `def` | [fullTwoByTwo](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/fulltwobytwo.md) | 139 | `declaration-track:5c80975b1a7bd44849f01c7a7fbd800eee259e0a28a33f1ccc2f2ed508498d9f` |
| 12 | `theorem` | [fullTwoByTwo_betaZero](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/fulltwobytwo-betazero.md) | 142 | `result-track:e6afd5b3ebd1b27dcfb1e24b87bc83eda1e70fa39d7e928219547bccee68b749` |
| 13 | `theorem` | [fullTwoByTwo_betaOne](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/fulltwobytwo-betaone.md) | 148 | `result-track:1114a9defe7d7b764c14b7c0ec5c95c4c3dd5f8b75d9242b79030d9f8534453a` |
| 14 | `def` | [graphBetti](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/graphbetti.md) | 153 | `declaration-track:f8f926cd93fb20b0d6fcf9b648b9839f6ff5d271973db6199ee4f9f3abb22a1f` |
| 15 | `def` | [CanonicalAdjacencyPair](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/canonicaladjacencypair.md) | 162 | `declaration-track:24694b892489ccb29d9b577a5fa381319341ae7b70963804e21912eff4ece7f6` |
| 16 | `instance` | [canonicalAdjacencyPairDecidable](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/canonicaladjacencypairdecidable.md) | 165 | `declaration-track:4100e6c20128829d60d56ff5a246bb2b2659ce541f02b822a5b2e18c2cc606e9` |
| 17 | `theorem` | [vertexAdjacent_iff_coordinate_bounds](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/vertexadjacent-iff-coordinate-bounds.md) | 173 | `result-track:d361f1d1daaffcf9018ea8e3d12514ae6f9cac6984f5b5578ff65d4a2bf93465` |
| 18 | `def` | [foregroundDegree](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/foregrounddegree.md) | 193 | `declaration-track:74e70f48efcf845575ed2110de4d01f1146719c4a9ffe6a7f2068845dfa1c25c` |
| 19 | `def` | [NonbranchingCubicalGraph](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/nonbranchingcubicalgraph.md) | 201 | `declaration-track:e6c338e006feddb698ce6867b02ee3d2599f7ee58643fb021e5829fe99058c67` |
| 20 | `instance` | [nonbranchingCubicalGraphDecidable](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/nonbranchingcubicalgraphdecidable.md) | 205 | `declaration-track:d3b85c093e1a79f5bcb47a232fb2911fb98c8a48408d81d2dd717ac183df5300` |
| 21 | `def` | [canonicalCubicalManifold](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/canonicalcubicalmanifold.md) | 213 | `declaration-track:970e26d40ff1c1a1d4b37e8619a7e22343a7921f4272d5ec259a295ca9b15dd6` |
| 22 | `def` | [canonicalExactCarrierCompatible](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/canonicalexactcarriercompatible.md) | 221 | `declaration-track:fed6cc0880feb4375d48ccef12ba161891c16dae08a88de7a1fa7332863960ac` |
| 23 | `def` | [foregroundLink](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/foregroundlink.md) | 230 | `declaration-track:740db3921400c06c202e6837bf40558dce000c79ea1517a3fd358c1a47b6dc22` |
| 24 | `theorem` | [foregroundLink_subset_exterior](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/foregroundlink-subset-exterior.md) | 238 | `result-track:d84b1f145507f0664f8c5c1834a89c161f374cb314cab5f3ac8406261974ab03` |
| 25 | `def` | [backgroundState](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/backgroundstate.md) | 246 | `declaration-track:fd73a9aa5d0ecb0713060b6039d6693e207de05bfa669d01f451688c7706b139` |
| 26 | `def` | [backgroundLink](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/backgroundlink.md) | 252 | `declaration-track:e016afe81f697607fbc0812e9df8b9bec0bab57f4f3be8cbcca218f7fd7a896d` |
| 27 | `def` | [backgroundBetaZero](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/backgroundbetazero.md) | 258 | `declaration-track:236d5085bcbc278e63ac13edcac198e140d856a13b23000658f01b364e98d2eb` |
| 28 | `def` | [canonicalLinkCondition](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/canonicallinkcondition.md) | 269 | `declaration-track:ca4acb93256422ffc76335c03d5703cd3539ac8c452e486fcebdded778d92ab0` |
| 29 | `def` | [semantics](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/semantics.md) | 287 | `declaration-track:414574f254368afeea4391530fd5553de7e596cd81e85fbd26e49b9a4db29808` |
| 30 | `def` | [leftCell](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/leftcell.md) | 299 | `declaration-track:81594cceed497e6958079e6fa62ab883e1c7eb4280a24240f0aff6c5f5225f4c` |
| 31 | `def` | [middleCell](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/middlecell.md) | 302 | `declaration-track:ba9b7da17f1cc1df9c3b7b0f1ec819d83c10109bc5d3299de6d8b52fb1a751ea` |
| 32 | `def` | [rightCell](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/rightcell.md) | 305 | `declaration-track:2e6e8fc16c0aac0a8b420fc25bd224e7f5a6f0627a12adc21a99bc8dd75e38ef` |
| 33 | `def` | [shiftBefore](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shiftbefore.md) | 308 | `declaration-track:a9a11553f4b0e2a0ceefcd51718eaff214ee44ece9f5688a2a3e762e8992971e` |
| 34 | `def` | [shiftCut](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shiftcut.md) | 311 | `declaration-track:c7a851eb37725fbf9ee1a4b12f1dce6e3e5be92b819e7e99468b8de4327bd71b` |
| 35 | `def` | [shiftRepair](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shiftrepair.md) | 317 | `declaration-track:e4c534807d5fef76ee652c6135763d08a23f9d5300be02877debc236a52b5723` |
| 36 | `def` | [shiftAfter](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shiftafter.md) | 321 | `declaration-track:47d4a096aa9e6bba6c0481821f58d27123505a70badd72116a90c8eeb2e23575` |
| 37 | `theorem` | [shiftRepair_changes_state](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shiftrepair-changes-state.md) | 323 | `result-track:3a6b6dd7258c55e267b67ae2d630e2412a96a4e7e917fdb99639fd1fb714b31e` |
| 38 | `theorem` | [shift_changeSupport](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shift-changesupport.md) | 329 | `result-track:1826afe3fc893cb65658f315c184b08b35fee980630b70989e4c9d72de530cee` |
| 39 | `theorem` | [shift_interface_nonempty](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shift-interface-nonempty.md) | 332 | `result-track:5586856f1d1b12e39e963fa58176757f261d62224b39c2f63e5f0ba1f020563b` |
| 40 | `theorem` | [shift_link_preserved](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shift-link-preserved.md) | 336 | `result-track:5cb5e9e49ae738726361c7513142b791640cf8a7f82ee8be855c9202504fa12b` |
| 41 | `theorem` | [shift_background_link_preserved](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shift-background-link-preserved.md) | 341 | `result-track:fe7da16017e1fbfae7aa00a3bdf6b7629905c95d3de22fd829c441fb2a55809f` |
| 42 | `theorem` | [shift_before_nonbranching](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shift-before-nonbranching.md) | 346 | `result-track:6ecc7ae643b7868ae4800465766a84cf81f071eb932fdc4bf03067c6a3394fd3` |
| 43 | `theorem` | [shift_after_nonbranching](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shift-after-nonbranching.md) | 350 | `result-track:d7f6c62461b22dc60c1eaac8491b77fffe7ccc626e8f83baed418efc82e5c44d` |
| 44 | `theorem` | [shift_betti_preserved](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shift-betti-preserved.md) | 354 | `result-track:9be52284a94264d0c781ece08326c126b4c5acb5248882a85f6dbc0c236f0b70` |
| 45 | `theorem` | [shift_background_components_preserved](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/shift-background-components-preserved.md) | 362 | `result-track:7c0d1b3ed08ceb19b04f54c29965cfd4c23889b4f363bee4d63cc093a041fdd9` |
| 46 | `def` | [controlledShift](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/controlledshift.md) | 370 | `declaration-track:3b5297fa100b03a754d08bee23b434a6f4aee68c0606546790e05b1988d973cf` |
| 47 | `inductive` | [AuditDatum](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/auditdatum.md) | 395 | `declaration-track:4d3fa6af557294dd700a30e375747b0d0785e33959144c9715e1728e0882fa0d` |
| 48 | `def` | [boundaryComponentCount](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/boundarycomponentcount.md) | 403 | `declaration-track:b5fb7aa5edafc3b1a8378581d2d955437bcf243c59d3faafe816e4fadfcfc919` |
| 49 | `structure` | [RasterTopologySnapshot](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/rastertopologysnapshot.md) | 412 | `declaration-track:3580bd72988312e6688f3cd82e4086bb48249596f5f746129748153e80958fae` |
| 50 | `def` | [topologySnapshot](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/topologysnapshot.md) | 432 | `declaration-track:93050f8a14a90d1d217c44deaeae60690aa40d26e9e8a2b5ebde508ef5e22261` |
| 51 | `structure` | [RasterSurgeryDatumSummary](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/rastersurgerydatumsummary.md) | 453 | `declaration-track:981533531f0be7e2888adde54fa7837f1d5cf3318267ac2232e8149c717d9295` |
| 52 | `def` | [surgeryDatumSummary](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/surgerydatumsummary.md) | 463 | `declaration-track:ef88cf7ea4c942c4b4049212346d30792dce1b4550046d5a57516277b03a510c` |
| 53 | `structure` | [SurgeryInvariantReport](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/surgeryinvariantreport.md) | 478 | `declaration-track:de39910de4b1c590e4370ac3ed1384a85e087d63a7bb7e94e78a186e50ce2623` |
| 54 | `def` | [controlledShiftReport](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/controlledshiftreport.md) | 499 | `declaration-track:d68e91712a54e3d4ad3f94885a9c0ab06d65e64a78b8df4188314cde3bbbb4c2` |
| 55 | `theorem` | [controlledShiftReport_bettiZero](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/controlledshiftreport-bettizero.md) | 512 | `result-track:48b4efc99edcaecca6b7248014f893af7d428fd2c310b8a6a80bbc16f976a22e` |
| 56 | `theorem` | [controlledShiftReport_bettiOne](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/controlledshiftreport-bettione.md) | 517 | `result-track:5ab36fea021caac0984007fe147bd3fd00348832a73934c001aed7f005f72910` |
| 57 | `theorem` | [controlledShiftReport_backgroundComponents](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/controlledshiftreport-backgroundcomponents.md) | 522 | `result-track:0091809ab12c2047ec59cbb4b16250b1b319ed6721ee542d4ac3ad919b02bcfe` |
| 58 | `theorem` | [controlledShiftReport_local_counts](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/controlledshiftreport-local-counts.md) | 527 | `result-track:27317d4bd04c0f5bcbdaf77314690ef10f83b383df6dc9733b871d0bc0e65766` |
| 59 | `theorem` | [controlledShiftReport_eulerCharacteristic](../../../../../Combinatorics/GraphTheory/CanonicalRasterNamespaced.lean/declarations/controlledshiftreport-eulercharacteristic.md) | 536 | `result-track:df25f111eed75b3fd10aec4cb8c82bc4616e8a113704ca21e53c9e80605b8e31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=553e66f86ee68a03ba78aea1fa33ce5d38de86aac6c79b09bfb064e460105bc8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/CanonicalRaster/Variant871e8892ff133c9652b316f8657a0a8cbe5342f7eec12ce7fa767f3e8dca5f8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
