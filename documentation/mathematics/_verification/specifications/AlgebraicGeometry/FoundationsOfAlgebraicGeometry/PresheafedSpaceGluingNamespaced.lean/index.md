# Verification target: Presheafed Space Gluing Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3073bc48c7f9bb8329cbd87b2290f3aa40e33f14",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3073bc48c7f9bb8329cbd87b2290f3aa40e33f14`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Gluing` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.OpenImmersion.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.LocallyRingedSpace.HasColimits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/gluedata-source-edition-3.md) | 104 | `declaration-track:aca762de05ae4501470651384f0b453e2a16772eb537b0d9afeec16f9f2988ae` |
| 2 | `abbrev` | [toTopGlueData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/totopgluedata.md) | 130 | `declaration-track:5a472b032e86cc20b69f56b59912647da504189484f1c7186f8636bc062c8bc7` |
| 3 | `theorem` | [ι_openEmbedding](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/openembedding.md) | 135 | `result-track:ab5e4531e7089a0f0c373ebb024766f65637158c4ed6f8b8e9b2699031a809ff` |
| 4 | `theorem` | [pullback_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/pullback-base.md) | 145 | `result-track:986c49141639a29bd477b8f758425e98025ef80e47cae4923f0092bd38887866` |
| 5 | `theorem` | [f_invApp_f_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/f-invapp-f-app.md) | 163 | `result-track:b60b419e63af32a3975585080184b501126d010883877102434a75cd7d56e990` |
| 6 | `theorem` | [snd_invApp_t_app'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/snd-invapp-t-app-source-edition-2.md) | 192 | `result-track:ec493302185eee8af9f6ecbc4a9fd9a275379a9815bd829e9d753e075530feeb` |
| 7 | `theorem` | [snd_invApp_t_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/snd-invapp-t-app.md) | 241 | `result-track:da7d877e418b66949611aa342103f6877e9d570ed209b32cc380de9dacde589d` |
| 8 | `theorem` | [ι_image_preimage_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/image-preimage-eq.md) | 254 | `result-track:95d99868c217aece6bf40ae9906fbf82794a18b1b7555d8febc71a8fbda97004` |
| 9 | `def` | [opensImagePreimageMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/opensimagepreimagemap.md) | 281 | `declaration-track:c7f8be1d068a7c41677cdd08536c89d5b44b899f59d20000f5140478344c1c90` |
| 10 | `theorem` | [opensImagePreimageMap_app'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/opensimagepreimagemap-app-source-edition-2.md) | 291 | `result-track:1ab24393e5f24c77b65433d5f7c818913c94f62043fe75ac9eacc57a0bcc1f52` |
| 11 | `theorem` | [opensImagePreimageMap_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/opensimagepreimagemap-app.md) | 310 | `result-track:01bdc90c83e229a55381efac73757a7580662c3a6ff61c00f25c86d57dc46ab4` |
| 12 | `theorem` | [opensImagePreimageMap_app_assoc](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/opensimagepreimagemap-app-assoc.md) | 319 | `result-track:13cba5822827fd59a19838068784e021bb0a6d3bda910bfd2c2095a3ef409470` |
| 13 | `abbrev` | [diagramOverOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/diagramoveropen.md) | 331 | `declaration-track:b32bab4fd8a0388dff7cf050dcfbe77261c690594d9b63cb30b3d4b73d134c65` |
| 14 | `abbrev` | [diagramOverOpenπ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/diagramoveropen-source-edition-2.md) | 339 | `declaration-track:fd166c27ddad56cb49db6f7814784f92bd8b3e7efe16eb6ee8f3cbd0eabf0873` |
| 15 | `def` | [ιInvAppπApp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/invapp-app.md) | 345 | `declaration-track:0632f81cc9ba3e282c5a0a346b5e3029549953c68d43bb07173d493d57495d0d` |
| 16 | `def` | [ιInvApp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/invapp.md) | 368 | `declaration-track:17b4a341940e1f05497828e41cf74c1ee482b54a2a3c157da63344aa51b7625d` |
| 17 | `theorem` | [ιInvApp_π](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/invapp-source-edition-2.md) | 421 | `result-track:df2eb498cd06158244f62dfe6ae16fe5fd03f388a9731b8cc1e9a96f280408e7` |
| 18 | `abbrev` | [ιInvAppπEqMap](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/invapp-eqmap.md) | 454 | `declaration-track:05528033a008cf0d7d893ff205992b1134fed45379ed18f3ce24f29838a2ce9d` |
| 19 | `theorem` | [π_ιInvApp_π](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/invapp-source-edition-3.md) | 459 | `result-track:fab1fe890c818c2932f52a3d39e61617aa3f830ee2067cee490246d8d749dfe3` |
| 20 | `theorem` | [π_ιInvApp_eq_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/invapp-eq-id.md) | 495 | `result-track:246feedee6d40d065a00bb2d2852a44681451182b544fa7b2db0c4d669dfb9a2` |
| 21 | `instance` | [componentwise_diagram_π_isIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/componentwise-diagram-isiso.md) | 511 | `declaration-track:46c8123258a2212ab28df37757b2c400143507b342cdb892c4af0e255e955df5` |
| 22 | `instance` | [ιIsOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/isopenimmersion-source-edition-3.md) | 520 | `declaration-track:23d9ff86700acb818942760c66e559e7bdf113b419024117fd2adce68cf8c7c6` |
| 23 | `def` | [vPullbackConeIsLimit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/vpullbackconeislimit-source-edition-2.md) | 532 | `declaration-track:caf8872aa56b48fe190fa8ce310b79c8cb8407e289c9adc5c93a83796ea37d70` |
| 24 | `theorem` | [ι_jointly_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/jointly-surjective-source-edition-2.md) | 558 | `result-track:50767869eb23598a54073c35f8727b39537fb3143ba65a5be3e1acbfa8136cfc` |
| 25 | `structure` | [GlueData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/gluedata.md) | 590 | `declaration-track:27be0842b9dbee79db65c1bd65b6dfcadb9c1e4a2ee8f9d65fa640d838b1380f` |
| 26 | `abbrev` | [toPresheafedSpaceGlueData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/topresheafedspacegluedata.md) | 604 | `declaration-track:26a01aaac8ce4e5c37b9568f0c5fce37dae442b70e28f777587a5249680bd3fb` |
| 27 | `abbrev` | [isoPresheafedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/isopresheafedspace.md) | 612 | `declaration-track:e95293a9d05de5b9f37f9c4fe4fe486fe85614b8e49c07f7b320130183929681` |
| 28 | `theorem` | [ι_isoPresheafedSpace_inv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/isopresheafedspace-inv.md) | 617 | `result-track:af61bbfcfd8a6df4d31a6b13a9d208b5e8417adb73591fee72bd7835f9f16bf8` |
| 29 | `instance` | [ιIsOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/isopenimmersion-source-edition-2.md) | 622 | `declaration-track:13310f4af02a9973213535b658fe774361e57acbfbd45ccf3156456e0b6d5e83` |
| 30 | `theorem` | [ι_jointly_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/jointly-surjective-source-edition-3.md) | 629 | `result-track:89c310b52231c109fe5fabfb45be89241ef1dafe15e21146dc18941dff39431d` |
| 31 | `def` | [vPullbackConeIsLimit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/vpullbackconeislimit.md) | 640 | `declaration-track:19d85dc3abfb23e9eed5cf556df8954c123cc4d7f4c335a90c47c9fbb6892f2a` |
| 32 | `structure` | [GlueData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/gluedata-source-edition-2.md) | 671 | `declaration-track:3ee6e91d3b0fab4a2faf8dc0afa9f6b0ffd81c3ae9d35365943e5408b4c60efc` |
| 33 | `abbrev` | [toSheafedSpaceGlueData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/tosheafedspacegluedata.md) | 684 | `declaration-track:959913bf2ced1cb1ce3d6d8dc3a7988300216b678914fec831bb5f934d57fd62` |
| 34 | `abbrev` | [isoSheafedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/isosheafedspace.md) | 690 | `declaration-track:d07bceb8969afa71fe4af582800f9a4c5abceed38ceb9775f8db2a0d698d32dd` |
| 35 | `theorem` | [ι_isoSheafedSpace_inv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/isosheafedspace-inv.md) | 694 | `result-track:40f1cfb2454b5ef9aa389698fff7b373e61f36ca77581cd2b9b255b2881b4c61` |
| 36 | `instance` | [ι_isOpenImmersion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/isopenimmersion.md) | 699 | `declaration-track:078afba40908fa5189d895158885e40497747f713b6ba1f0f3b550daa8a7e53b` |
| 37 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/instance.md) | 706 | `declaration-track:c14160a882752acd2056b3b114dc8a55c113f7795ea5f003c141c283af21326b` |
| 38 | `theorem` | [ι_jointly_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/jointly-surjective.md) | 709 | `result-track:4c129876b82453beb156f65a8ac2e39fe24984b9d01acffdcf6b275d2c1ebbf7` |
| 39 | `def` | [vPullbackConeIsLimit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/PresheafedSpaceGluingNamespaced.lean/declarations/vpullbackconeislimit-source-edition-3.md) | 722 | `declaration-track:f662a57607f374ad4465b7feca2424ac7ddb1c39735f9a1c53cef5b9288e6041` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb83a8c5e5f09ce0b204111152e9d04c78ad2d7695dd6cdac5252d281f2e4070 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Gluing/Variant848aa65e00b196b921eb81ccc72015902ddbb8a8d80c8727ac7c291bb8120b02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
