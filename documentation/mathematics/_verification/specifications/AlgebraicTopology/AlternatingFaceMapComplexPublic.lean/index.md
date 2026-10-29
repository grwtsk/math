# Verification target: Alternating Face Map Complex Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57359217877e99c0af2ed281c2e6b376d9dafdc6",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant2860ecce868c008adc67c447f14af3c631bbc2b17da5fb683de9a479caad0ee3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57359217877e99c0af2ed281c2e6b376d9dafdc6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant2860ecce868c008adc67c447f14af3c631bbc2b17da5fb683de9a479caad0ee3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant2860ecce868c008adc67c447f14af3c631bbc2b17da5fb683de9a479caad0ee3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [objD](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/objd.md) | 67 | `declaration-track:b77d58723e5ca5cbf44d1787749b2938b0d8059028c78097f788e9b48b51285e` |
| 2 | `theorem` | [d_squared](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/d-squared.md) | 74 | `result-track:24753ecc4d1e7a5d9b811cbe15ec297b04c5d6afb70db73fd57cc952416dcdf1` |
| 3 | `def` | [obj](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/obj-source-edition-2.md) | 124 | `declaration-track:de79405a123c0d13241fc2409b3082309c7e009d33d63f20724a288de19850ff` |
| 4 | `theorem` | [obj_X](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/obj-x.md) | 128 | `result-track:f4e27ca10971eb575f4a598355020fb800272cf5b34367e0817f775a48ef006f` |
| 5 | `theorem` | [obj_d_eq](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/obj-d-eq.md) | 132 | `result-track:a3008b17ae66f49282486754340e954e93a124ecd490a4a7d464fa9b491279b8` |
| 6 | `def` | [map](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/map-source-edition-2.md) | 140 | `declaration-track:69de30bcbdde8eca2834fb3e27a04b85b7c165060f9e1c0f08cf934a43b2ba4c` |
| 7 | `theorem` | [map_f](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/map-f.md) | 151 | `result-track:7c623a91b6d2e9baeb6d0192ca7e8408ef4e309c31fd0b2d62a3bd55e1f74942` |
| 8 | `def` | [alternatingFaceMapComplex](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/alternatingfacemapcomplex.md) | 160 | `declaration-track:da1e22bbd5038a3abdb3aec3297c8608f8045ed217e6bb037d7f05509a66e059` |
| 9 | `theorem` | [alternatingFaceMapComplex_obj_X](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/alternatingfacemapcomplex-obj-x.md) | 167 | `result-track:a8b5a89978b231fee80c21df3512206552fda0e9922fbebc36200ddb040617be` |
| 10 | `theorem` | [alternatingFaceMapComplex_obj_d](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/alternatingfacemapcomplex-obj-d.md) | 172 | `result-track:e8e224baa459ca6713f68c9645647e922d91b756024890692307ff3030ee3fb2` |
| 11 | `theorem` | [alternatingFaceMapComplex_map_f](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/alternatingfacemapcomplex-map-f.md) | 177 | `result-track:a762e7063b75c89fd09c64007e7ecf446dd46e0f9c3c937a546c99deb5798d9a` |
| 12 | `def` | [alternatingFaceMapComplexCompMapHomologicalComplexIso](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/alternatingfacemapcomplexcompmaphomologicalcomplexiso.md) | 185 | `declaration-track:21886bca6324c133bc8241ec4c48142df4007ae0d4de1f41afbff07dc8431131` |
| 13 | `theorem` | [map_alternatingFaceMapComplex](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/map-alternatingfacemapcomplex.md) | 193 | `result-track:ea740ab5da56aa8be40a6ba85f9953182355b00e1cda47ee7f4f3b8add055070` |
| 14 | `instance` | [(anonymous)](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/instance-source-edition-2.md) | 201 | `declaration-track:4f581fdbf84a7f168cb59ed2618a8f4795d1635997cfca23588dbbffe967863e` |
| 15 | `instance` | [(anonymous)](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/instance.md) | 203 | `declaration-track:01d2ab9c39b72db0114b96d5d984c9654cc7bb005d452a6bc15a4e32289a619a` |
| 16 | `theorem` | [karoubi_alternatingFaceMapComplex_d](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/karoubi-alternatingfacemapcomplex-d.md) | 206 | `result-track:5463a7faf90e254527b3750711828eb142dd6f04ee28977d9e4871f903bd7f7d` |
| 17 | `def` | [ε](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/anonymous.md) | 219 | `declaration-track:e00f9c3dd11abe599e9f5ac0b8a6a6c2b0c52bf7190d4e61440d29991761bfd8` |
| 18 | `lemma` | [ε_app_f_zero](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/app-f-zero.md) | 246 | `result-track:11946cc0d2e8ad6da69e75be8b3773653fe9cd4d91f2c254a9aebabc6a0eaba7` |
| 19 | `lemma` | [ε_app_f_succ](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/app-f-succ.md) | 251 | `result-track:efcb120863f5b035e3bb44bbb0822027a3564135153c21f2e10b313dbd7ca53f` |
| 20 | `def` | [inclusionOfMooreComplexMap](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/inclusionofmoorecomplexmap.md) | 264 | `declaration-track:c1ea3febb9c147a77e146d082906b4a68062d1d74df414817ff56e39ec5611ba` |
| 21 | `theorem` | [inclusionOfMooreComplexMap_f](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/inclusionofmoorecomplexmap-f.md) | 285 | `result-track:5ed826a83db6f352bf4959136fc4a4d761d8290be144d4daebc27b01fae87b4e` |
| 22 | `def` | [inclusionOfMooreComplex](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/inclusionofmoorecomplex.md) | 296 | `declaration-track:af871252c0b0f9fd4cde427673855ee562929f9777b9b70e775f1165234bd561` |
| 23 | `def` | [objD](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/objd-source-edition-2.md) | 306 | `declaration-track:cbf183fdc5d5028aee5f9f1437a298ac62af6854ab6082b89789e6a349e34e46` |
| 24 | `theorem` | [d_eq_unop_d](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/d-eq-unop-d.md) | 309 | `result-track:97c2984c4a4caa6712588f04600b420c4280db7576e6f5054288e5662724de30` |
| 25 | `theorem` | [d_squared](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/d-squared-source-edition-2.md) | 317 | `result-track:bdd2007e1541620073f4141c02a682e98eaa06c815f101e3f7e9edf261c77611` |
| 26 | `def` | [obj](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/obj.md) | 321 | `declaration-track:10fb70a5b0593d10d8b737e04d3e4577fe3a27393aee20d89f95429493421267` |
| 27 | `def` | [map](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/map.md) | 328 | `declaration-track:5222e7967f3cb76be7df1be8a5d2e4fb77cc8a4ba8d0ac7b380d0f9d36c367d1` |
| 28 | `def` | [alternatingCofaceMapComplex](../../../../AlgebraicTopology/AlternatingFaceMapComplexPublic.lean/declarations/alternatingcofacemapcomplex.md) | 344 | `declaration-track:77bcbb38e79b820627f4df09924e8ba088f56803b071b731646bbd6236dea517` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=974054cb466ffa66f3d4e92e78668982aa15aeda60882d9377f6dbb5d087a367 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant2860ecce868c008adc67c447f14af3c631bbc2b17da5fb683de9a479caad0ee3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant2860ecce868c008adc67c447f14af3c631bbc2b17da5fb683de9a479caad0ee3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
