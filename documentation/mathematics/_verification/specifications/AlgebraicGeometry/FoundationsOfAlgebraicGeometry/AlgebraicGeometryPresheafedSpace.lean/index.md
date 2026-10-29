# Verification target: Algebraic Geometry Presheafed Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "633efd4b83e70dbcb968d6e1351f17be36986f1b",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `633efd4b83e70dbcb968d6e1351f17be36986f1b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Presheaf` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafedSpace](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/presheafedspace.md) | 48 | `declaration-track:510491798a6f395da16c82bd517a092d4d72d52543da35d74cae615205dcbb28` |
| 2 | `instance` | [coeCarrier](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/coecarrier.md) | 59 | `declaration-track:dc9d1e5e754e214d9fb314ae369cfc16afe9e4606dee00f564c6b2df020fdf44` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:4faa319966761f57841b17ba6845d430ca250ccbc5a833b403d07ed6be4cac7a` |
| 4 | `theorem` | [mk_coe](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/mk-coe.md) | 78 | `result-track:eda90f261ca0122f76443a4b7a2bb414b2c027e2e89235bdf8defc626d7d6126` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/instance.md) | 85 | `declaration-track:0331e64286fb9b7f141398ccd3240495b54d4e3b48f4884aee627f6ca69d6530` |
| 6 | `def` | [const](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/const.md) | 89 | `declaration-track:befb63dc49ac0bdf8204cda3d9f41846eb026e65fcd31284af5d2d11049e7421` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/instance-source-edition-4.md) | 95 | `declaration-track:e19b302c52f109150d0d23c8656cc9b34d269522b26d53cbc619815ae78f99ec` |
| 8 | `structure` | [Hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/hom.md) | 101 | `declaration-track:fd591dc1107116d662198b7394413bfe3a1b915ba0909000f9adeec66b46b7ba` |
| 9 | `theorem` | [Hom.ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/hom-ext.md) | 112 | `result-track:da6e279be7506912730eafceec9e9d2d0ae4a2c4051b84d44affc7c408403acc` |
| 10 | `theorem` | [hext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/hext.md) | 126 | `result-track:958cc457467c7b33ee28187c1f8c11dde00c8fe640c412e297c0f34d6f15a671` |
| 11 | `def` | [id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/id.md) | 136 | `declaration-track:0f0425b92e4d4f19dfcb829e63ee55ef2d56364bcc376b415d17a2f94db935a6` |
| 12 | `instance` | [homInhabited](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/hominhabited.md) | 142 | `declaration-track:237dc3990b4ffac044ef391accbf2b7bcd2ec99959e3131f892dbba722c31c6a` |
| 13 | `def` | [comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/comp.md) | 148 | `declaration-track:9a98f9eb2b2f88428b9b04a2a9054dd78297078c9455f07bc42c3e16266b8d56` |
| 14 | `theorem` | [comp_c](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/comp-c.md) | 154 | `result-track:ed10a6ff4e61c34df5c3757967ee727ab4ea194db1535867d57f1e03126a4ee7` |
| 15 | `instance` | [categoryOfPresheafedSpaces](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/categoryofpresheafedspaces.md) | 171 | `declaration-track:38c0b65358e986e7803b4ce49524f62e3f436eef1c3a92f034d0d230f8ee93d6` |
| 16 | `theorem` | [ext](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/ext.md) | 191 | `result-track:1d63b330f074d112ac1fce580f13a7451e203caccb3bab74bc08df4c73e16ba9` |
| 17 | `theorem` | [id_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/id-base.md) | 202 | `result-track:2a8e62a3afa6075a57461d198b5b5f1e65b83ca9981c891220052bfa7bd3e405` |
| 18 | `theorem` | [id_c](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/id-c.md) | 208 | `result-track:72cbd0f129c45a9c752d6575c91c2d10ab2e80be7a1f5f7d5d14c22213c71371` |
| 19 | `theorem` | [id_c_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/id-c-app.md) | 215 | `result-track:683ee82d30ac27a5ca284d8ac3e3e9479ebfa839d1ca115e5ad9183a06842fa7` |
| 20 | `theorem` | [comp_base](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/comp-base.md) | 223 | `result-track:c00eca3f614623546e2d64b635d82f13d4c8d9070bee5b77e81d39715c3b745f` |
| 21 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/instance-source-edition-3.md) | 229 | `declaration-track:7dd0795858e3b8846d9887e5a9d0da50b8f284133bfe5ce22e7061d3ffdcd47c` |
| 22 | `theorem` | [comp_c_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/comp-c-app.md) | 245 | `result-track:e427ebfbfa5499f875b0aa946c1903d9911039fe069eaa0c4ead6901c8b5ddab` |
| 23 | `theorem` | [congr_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/congr-app.md) | 251 | `result-track:29ba352ab3292db74a854d2708e8fe76f0247d99066822b70e3e6d622d0167b0` |
| 24 | `def` | [forget](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/forget.md) | 264 | `declaration-track:aab1c2fd61b2503be504c7fd2a5c4d88650840a41cea1a6c37ef42f9036f6dd7` |
| 25 | `def` | [isoOfComponents](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/isoofcomponents.md) | 280 | `declaration-track:acaa97f82e04c91988073652df3d291a61c212fb9a869ec67da3fcec3a47977e` |
| 26 | `def` | [sheafIsoOfIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/sheafisoofiso.md) | 312 | `declaration-track:4ed81aeffccb936bead897c4c04fcb7f68bfd12f1ad68ecd7dd78e6e13025c3e` |
| 27 | `instance` | [base_isIso_of_iso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/base-isiso-of-iso.md) | 336 | `declaration-track:00f841b791110ee63676638148a5cc299994d7105796494f50c01914c7d32901` |
| 28 | `instance` | [c_isIso_of_iso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/c-isiso-of-iso.md) | 341 | `declaration-track:d93611e9107b75a03593402781d658856aa30ab3ae7fba91f551aadef84b86ff` |
| 29 | `theorem` | [isIso_of_components](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/isiso-of-components.md) | 347 | `result-track:9e6ff2b54a4716b05009134c7a3ee4cbe7543a5b8c625f0ab0fcef76f32aeffc` |
| 30 | `def` | [restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/restrict.md) | 359 | `declaration-track:9cec2c8f8ab480838809d464a4f10daa6b81cc8c1dd07ae140d2b54c61b79c8b` |
| 31 | `def` | [ofRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/ofrestrict.md) | 369 | `declaration-track:b6653a53dd597f278f37565b40ab9173585c33844b52515ef26b321dc7644eb4` |
| 32 | `instance` | [ofRestrict_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/ofrestrict-mono.md) | 381 | `declaration-track:d0420b52b7ed3cc501d4630c38f07f5404759cbd5f7871e85e0742d666d04382` |
| 33 | `theorem` | [restrict_top_presheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/restrict-top-presheaf.md) | 414 | `result-track:3b39103d0ff3e9f44e517f22d1ed11d0c34806f31f4026d79fcf52aaea312945` |
| 34 | `theorem` | [ofRestrict_top_c](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/ofrestrict-top-c.md) | 423 | `result-track:ea1ec39f79c6bfc7eaf38a61e3cde81b8c0c63270e5f3f7d21d63e291c409e22` |
| 35 | `def` | [toRestrictTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/torestricttop.md) | 444 | `declaration-track:8b821fa805e3a6cf51a1cc09783ea0c31809edada86b66dd1e48cc28b32dda78` |
| 36 | `def` | [restrictTopIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/restricttopiso.md) | 453 | `declaration-track:006d01694446cedef3334a836285505ad8059c7b0e3b75f4bdf528280dc37ddc` |
| 37 | `def` | [Γ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/anonymous.md) | 478 | `declaration-track:c8ce4ad621bf18b79862e7c1cf1da431fa014c189eea2031cf4a58d07b05487c` |
| 38 | `theorem` | [Γ_obj_op](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/obj-op.md) | 484 | `result-track:4cb1a521b712895695d2e448bf6a8ae2d6f88ce5fa8dafdbae7e992cf4a06425` |
| 39 | `theorem` | [Γ_map_op](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/map-op.md) | 489 | `result-track:c8888b72f0e0fd2a1975132640cdf7187a6384a4db4c726456f3d837340620ff` |
| 40 | `def` | [mapPresheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/mappresheaf.md) | 512 | `declaration-track:b934af470dd71f4d2442ace6e2e39a2d4a10549ce66f228df5b98a6ed462b598` |
| 41 | `theorem` | [mapPresheaf_obj_X](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/mappresheaf-obj-x.md) | 531 | `result-track:e3c83460c573950abbde072da75f8a60edf2138bd1f69852e66eeb26d86f7836` |
| 42 | `theorem` | [mapPresheaf_obj_presheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/mappresheaf-obj-presheaf.md) | 538 | `result-track:8a5b35129f42da14cfc89d7c93415eec00f379a8a6f7372eabded1d0add24a4f` |
| 43 | `theorem` | [mapPresheaf_map_f](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/mappresheaf-map-f.md) | 544 | `result-track:4af971ba8b87e7cdd822e849a186e825c6db31943f867b15c21125384a7cbd02` |
| 44 | `theorem` | [mapPresheaf_map_c](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/mappresheaf-map-c.md) | 550 | `result-track:141d2656b8f1e80cc3a71097d263e07572dc37d33dfd12ebac501edf98af69ef` |
| 45 | `def` | [onPresheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AlgebraicGeometryPresheafedSpace.lean/declarations/onpresheaf.md) | 561 | `declaration-track:7cecd3303025b8ce07248d22e1e37e239798c6408797bd30bfa9c8107f426d19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd28816768db72d7b15b196aaf01cdae56c6bd148ef2a1db97a99c4d0ee1af31 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PresheafedSpace/Variant932e581e4aa11b4d1074a770e2aaec768c95e46660abc7cf04802b468984411b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
