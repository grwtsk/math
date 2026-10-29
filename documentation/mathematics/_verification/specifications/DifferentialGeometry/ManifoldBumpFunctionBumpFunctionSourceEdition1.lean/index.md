# Verification target: Manifold Bump Function Bump Function Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c31391ff58cd610ed096478e8f872800f040b8d",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/index.md) · [Full source](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c31391ff58cd610ed096478e8f872800f040b8d`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/BumpFunction/Variant37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.BumpFunction.FiniteDimension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiff.Atlas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.ContMDiff.NormedSpace` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SmoothBumpFunction](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/smoothbumpfunction.md) | 62 | `declaration-track:a2e18df773af530238c4d3155a17f245d9b2a3ba8f2a4a601dfc36a8f296a402` |
| 2 | `def` | [toFun](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/tofun.md) | 75 | `declaration-track:e1e73292788009133b8904fd161537eaada7c8d276870b8b5a8579ad8db5d980` |
| 3 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:e850743cc1bc74b3537652bfa7515892384796ef94ee56f2e7690ad9fae83d69` |
| 4 | `theorem` | [coe_def](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/coe-def.md) | 81 | `result-track:5d7ac82dc7fbf471cc1e512ec6a1a674f9472452d23eb92a9003291a8797aa0e` |
| 5 | `theorem` | [rOut_pos](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/rout-pos.md) | 88 | `result-track:083ff8e880ba71b9e0f7c6a1928b8a9233478d0f219ef491b3391da2b5fe35e5` |
| 6 | `theorem` | [ball_subset](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/ball-subset.md) | 91 | `result-track:487b58b3c02003ae126cef9b60e4a6d4ba2a840dedcd8090327123c8fa79b486` |
| 7 | `theorem` | [ball_inter_range_eq_ball_inter_target](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/ball-inter-range-eq-ball-inter-target.md) | 94 | `result-track:81d375f53156c8bdb51ef26ec7a48693408641f1bb56b0ee83e96a258a826371` |
| 8 | `theorem` | [eqOn_source](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/eqon-source.md) | 104 | `result-track:dc718d9490ea8b989fe20e59a48dcc6ada3166048bd8b8be8a6dca7a466c6971` |
| 9 | `theorem` | [eventuallyEq_of_mem_source](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/eventuallyeq-of-mem-source.md) | 107 | `result-track:36c65d2772ed511b8c6f333ead05df540c9ad1ca229484dbf1872f7f30c38721` |
| 10 | `theorem` | [one_of_dist_le](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/one-of-dist-le.md) | 111 | `result-track:e18a6eb1876c26ef2d7d54c78d73ace9eda0abf7d3a54bb59712f47f353e5d1a` |
| 11 | `theorem` | [support_eq_inter_preimage](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/support-eq-inter-preimage.md) | 115 | `result-track:78346544897a75206b51b4abcfddfa50aba9c62ed3d7ebb4aef83a995fd2056b` |
| 12 | `theorem` | [isOpen_support](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/isopen-support.md) | 121 | `result-track:7b67bd8b8ef2ef981d1345c75a8f4b0546c38c5e2bc692388fcbb223bef90fd6` |
| 13 | `theorem` | [support_eq_symm_image](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/support-eq-symm-image.md) | 125 | `result-track:d0be54f6cf98506b73f16e989a776c3933ec2fe85f0621395c57f5a8ffa58e31` |
| 14 | `theorem` | [support_subset_source](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/support-subset-source.md) | 131 | `result-track:20c480340da676c2869f9ae18e2e95740a86bd815e88accb8e0e669744c059cf` |
| 15 | `theorem` | [image_eq_inter_preimage_of_subset_support](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/image-eq-inter-preimage-of-subset-support.md) | 134 | `result-track:88507f2f39b7257590587fd0344deba065951ec54ce5fcd89d53c890e7afa952` |
| 16 | `theorem` | [mem_Icc](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/mem-icc.md) | 147 | `result-track:75c5b291f0535221c7c77504c5dbc97171d4399fd7a7b268dfe40288b7e28d1f` |
| 17 | `theorem` | [nonneg](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/nonneg.md) | 152 | `result-track:17c4a64b9b826fc27972e9d7950396fa4b8cc65951a991f78c3b7dcd4c7bbddd` |
| 18 | `theorem` | [le_one](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/le-one.md) | 155 | `result-track:7a81d8695a458a41e9d78df529c1c1ab4051dfc13669fe0c6708e0a8a03f605b` |
| 19 | `theorem` | [eventuallyEq_one_of_dist_lt](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/eventuallyeq-one-of-dist-lt.md) | 158 | `result-track:feddd3e7b59dfd5de51169b6fe6ac17c2b8e0fdd293827455d74f4998b42bb54` |
| 20 | `theorem` | [eventuallyEq_one](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/eventuallyeq-one.md) | 164 | `result-track:d5e86db4352efd3a61983ef1a0f0dd62897ea1709f4cf73ae9cffe0ed8f08a8c` |
| 21 | `theorem` | [eq_one](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/eq-one.md) | 168 | `result-track:d840abfa99c82fd7fca45472641fcebe4ba45d307934e3a3e0deb097c2ca0577` |
| 22 | `theorem` | [support_mem_nhds](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/support-mem-nhds.md) | 171 | `result-track:53cda61d3fd8ebbe3acdd9fabde25b143c2e918d256bba70a2e998a5332a6349` |
| 23 | `theorem` | [tsupport_mem_nhds](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/tsupport-mem-nhds.md) | 174 | `result-track:139fb31214ecbc6fc0378e8fd2149d0089b97a7ddec408bca80f044509966612` |
| 24 | `theorem` | [c_mem_support](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/c-mem-support.md) | 177 | `result-track:47b84ec506ce86e4a61830094478e741de8e92f80e8f069fe3f6fa13667b12cc` |
| 25 | `theorem` | [nonempty_support](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/nonempty-support.md) | 180 | `result-track:d37cd700d9a31d4fc552fbe880835ebca54d0e687cd0528aaacdb0fd8d496f5d` |
| 26 | `theorem` | [isCompact_symm_image_closedBall](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/iscompact-symm-image-closedball.md) | 183 | `result-track:5b72c8c0d3367d8c710ad1ad03c2a3b7a290ba495cf76b606f70242368c72651` |
| 27 | `theorem` | [nhdsWithin_range_basis](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/nhdswithin-range-basis.md) | 193 | `result-track:a62ad7872a1bba2e475aea2dbe57fa54fd4af4493054f2b70753db0f001e0dc1` |
| 28 | `theorem` | [isClosed_image_of_isClosed](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/isclosed-image-of-isclosed.md) | 205 | `result-track:488a38888c651e04287504c8c6a1835527a4800210e5dd09506fde4d016f8387` |
| 29 | `theorem` | [exists_r_pos_lt_subset_ball](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/exists-r-pos-lt-subset-ball.md) | 215 | `result-track:8be56b946fcf5c4f04b7a2d60d080960f9e41decd5e7711e4c451c17e965f656` |
| 30 | `def` | [updateRIn](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/updaterin.md) | 226 | `declaration-track:0e26861e6de457e96c62699b95e3cedc26656aa0301cadaf2eb3c8f48a342f8e` |
| 31 | `theorem` | [support_updateRIn](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/support-updaterin.md) | 230 | `result-track:47ff71941ef1009d07029b9433f0c117719394e89c7968e62b43a212ce5f61b1` |
| 32 | `instance` | [(anonymous)](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/instance.md) | 235 | `declaration-track:82f063cabd86d8a4712d463071139a7040e3edfa21962c1ba91cf89e9e957801` |
| 33 | `theorem` | [isClosed_symm_image_closedBall](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/isclosed-symm-image-closedball.md) | 239 | `result-track:0e695479ee39f3b7a9f43e7f0ec05a57ef7b65e5d2959671d5db259d723d16ac` |
| 34 | `theorem` | [tsupport_subset_symm_image_closedBall](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/tsupport-subset-symm-image-closedball.md) | 243 | `result-track:1f53b5a036b905bf794e889a076548e207cfa6c0a5df7f80012aa73f0747539e` |
| 35 | `theorem` | [tsupport_subset_extChartAt_source](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/tsupport-subset-extchartat-source.md) | 249 | `result-track:4264b6061e77729b6fc54090d1ba89220c28cb976b671cc14c9d8f219aaf1e92` |
| 36 | `theorem` | [tsupport_subset_chartAt_source](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/tsupport-subset-chartat-source.md) | 256 | `result-track:6555b908f4afab05d65368016281e4d45c804f55dad1ada51afedf530c885156` |
| 37 | `theorem` | [hasCompactSupport](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/hascompactsupport.md) | 259 | `result-track:5a5ce2b1ad62eae25396dd67add4353726598d4195adda42a80814c0f290d3e2` |
| 38 | `theorem` | [nhds_basis_tsupport](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/nhds-basis-tsupport.md) | 267 | `result-track:de1031f26abfd0e3d266908fd1c9f5d2081eb9d44d1c2d5db8d0bee511daf5f3` |
| 39 | `theorem` | [nhds_basis_support](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/nhds-basis-support.md) | 281 | `result-track:f81f1595c1c6fd05b2129f02095348e364b3b3de3b17320b67aa89314d0722c5` |
| 40 | `theorem` | [contMDiff](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/contmdiff.md) | 289 | `result-track:ba66fdb78b03f7269260eb300845dc80ab5e2f7faf4c92ca3303fbcc1a0d3247` |
| 41 | `theorem` | [contMDiffAt](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/contmdiffat.md) | 298 | `result-track:66b8c8639eb059a521ecbd39840d1a2a666f162d73e70c07288434e0218b93a9` |
| 42 | `theorem` | [continuous](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/continuous.md) | 303 | `result-track:ec62faebd28314ca2a77033e8e72d76e2906b41f0b9ab1c34e941777cb166829` |
| 43 | `theorem` | [contMDiff_smul](../../../../DifferentialGeometry/ManifoldBumpFunctionBumpFunctionSourceEdition1.lean/declarations/contmdiff-smul.md) | 308 | `result-track:b649031fbc5154ac646374ddc9854a628c0c9721c6bb645ea8c23088617f0900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7a717748d036919c678be6ed191e79bcbc6e6e3c0cd59d444d92171c13e8f49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/BumpFunction/Variant37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/BumpFunction/Variant37f886245055edc4e3281a3e70253faa95da7fd6c15e1484f55a475d83580fcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
