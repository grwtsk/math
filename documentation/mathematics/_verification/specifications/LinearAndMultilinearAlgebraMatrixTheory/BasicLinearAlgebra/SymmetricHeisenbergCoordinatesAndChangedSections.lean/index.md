# Verification target: Symmetric Heisenberg Coordinates And Changed Sections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4460df2cb670482d37735e59964a41e9dbd8ed7",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variante73962e35df03dbfcdd0afdbc676668c330a12a78283d237fac7b3f0196a8d45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4460df2cb670482d37735e59964a41e9dbd8ed7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variante73962e35df03dbfcdd0afdbc676668c330a12a78283d237fac7b3f0196a8d45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variante73962e35df03dbfcdd0afdbc676668c330a12a78283d237fac7b3f0196a8d45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ModularBoundary.Heisenberg` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TransferInstance` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Vector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/vector.md) | 20 | `declaration-track:a35c54d986c29242842177eb9ca0084ec118b41d5c01ae3e1aff0f3868bfb421` |
| 2 | `def` | [determinant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/determinant.md) | 22 | `declaration-track:014cd597fdeece3cd61372a82bf56c5861b8a2b883fae2821f12cf8bb2c60d80` |
| 3 | `def` | [beta](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/beta.md) | 24 | `declaration-track:dfc5c28aec22804ccf1270433e67adfb5df31e40844192e8235712b903215ada` |
| 4 | `theorem` | [beta_cocycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/beta-cocycle.md) | 26 | `result-track:128e2db1aaec42282378a9d7ca52fce35715a223f92aed062cc906861613143e` |
| 5 | `theorem` | [beta_antisymmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/beta-antisymmetric.md) | 31 | `result-track:637db4326e7f52369167e6f571842eb6e8768120c3720c7a1ed4f23d5ce3d247` |
| 6 | `structure` | [Element](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/element.md) | 36 | `declaration-track:6220c3d0f27bd5462b4c3d95d4893f6e7dd2b4563a05757c14d3ea2848de3a06` |
| 7 | `def` | [multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/multiply.md) | 42 | `declaration-track:55f93e0d65826efeada0b8406a43d6f3a89833e2b1adb900f72cc3c6b0768c08` |
| 8 | `def` | [identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/identity.md) | 45 | `declaration-track:b9ee4637b1a04752a9e341dce216563b98f837147e6081f771602601d3aafae7` |
| 9 | `def` | [inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/inverse.md) | 47 | `declaration-track:8af29c07fa84fa07e3296d7b0d4ed2995a3a913562eca6108ad5dc37c62f0797` |
| 10 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/instance.md) | 49 | `declaration-track:9954785b64fb2c4e1eb717063e61865652cde4faa61a397da2f72507e3d60b39` |
| 11 | `theorem` | [mul_base](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/mul-base.md) | 81 | `result-track:3c8c9fd64aa3dc0c1c62790bd6e8023efb088bf75e1c0c069f7187dfa86883b0` |
| 12 | `theorem` | [mul_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/mul-center.md) | 82 | `result-track:3b7c7bbb47905d398555cbf3c6244e297b72417cf0dec47a6c71a1e7d6ed802c` |
| 13 | `theorem` | [inv_base](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/inv-base.md) | 84 | `result-track:1fa979179e466f0726437172e190c80a079c2ee33602d2020c7be3c2f5798913` |
| 14 | `theorem` | [inv_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/inv-center.md) | 85 | `result-track:e533a0a045e21bc5acef5424ad23fd048d5248752ae64f55d35c53c4951c9bd9` |
| 15 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrix.md) | 90 | `declaration-track:5787045f37778bcc6b6f025e6cb958c17c4b7a5e714348476bda73f9d9d615f2` |
| 16 | `theorem` | [matrix_multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrix-multiply.md) | 95 | `result-track:5b946e6af887e39af404ae5685ab435a17cebdcf24f2afb24a18672e5a866789` |
| 17 | `theorem` | [matrix_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrix-injective.md) | 102 | `result-track:fc0e7d6145a2c78cfcf5e09aeebc09a7da9467d16893b77b53e90e2bf880e286` |
| 18 | `theorem` | [matrix_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrix-one.md) | 116 | `result-track:1f39076ce42f84ad8bf4623fa09bfaf92ea4a0e05f7f78a09d28488563327e4b` |
| 19 | `def` | [matrixUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrixunit.md) | 122 | `declaration-track:8a8c434b171342cb6eba451170dd38b7006f0293694277802e3be69660f642ec` |
| 20 | `def` | [matrixHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrixhom.md) | 128 | `declaration-track:ce91d5e16dab933a2ce167a4f5c9ca67b3cf52fe6e5483976933128e4b75ce88` |
| 21 | `def` | [central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/central.md) | 133 | `declaration-track:ca5b34d72fd0509d2f040b4440dd9c0bbfe490ddaed69cb7a710e072098f3259` |
| 22 | `def` | [firstAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/firstaxis.md) | 135 | `declaration-track:44bfc76c7340acd6def2278555ef141ea3510229bba34e990ce8b1c642f51337` |
| 23 | `def` | [secondAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/secondaxis.md) | 137 | `declaration-track:17a8f6922ff0a6999f9cca3909218595a8e4eb7f32bc8c585224eccf2e3cd209` |
| 24 | `theorem` | [matrixHom_firstAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrixhom-firstaxis.md) | 140 | `result-track:51c2c1e63db100e39b4f04ed6fa173aaec4aee1af6d4b1226d2c55ab9710f90c` |
| 25 | `theorem` | [matrixHom_secondAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrixhom-secondaxis.md) | 148 | `result-track:06f4555575e76e6ffa13e06692f5753cc853ff4c70394474a52170e07a95496f` |
| 26 | `theorem` | [matrix_central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrix-central.md) | 155 | `result-track:af828c9a44656fbd0d9dfd0245caa3d071bf0e8b2c3d2b30ca6535bb5fe1b662` |
| 27 | `theorem` | [commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/commutator.md) | 160 | `result-track:4c660c947fc82437214a8e30f5abb640089dadcbfbb8d2cc9d27b09ef4f5dcda` |
| 28 | `theorem` | [matrix_commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/matrix-commutator.md) | 166 | `result-track:658d13cbb2b85da3b8ea3162980dab4e4c815a8a1f6177319caa56dd34b8e281` |
| 29 | `def` | [betaChanged](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/betachanged.md) | 174 | `declaration-track:a11bd1a0e47677699133eff7698cdb029c951e51a9ffe5faa9f2036bed3df7f1` |
| 30 | `theorem` | [betaChanged_cocycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/betachanged-cocycle.md) | 177 | `result-track:20aa4d25789b0499d3cef9b72bce5df9ecf7a73839bcb8d57e8b6b5b8e480755` |
| 31 | `theorem` | [betaChanged_commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/betachanged-commutator.md) | 184 | `result-track:f8010bce313d209665b650f4566a6f54e8ae30b36306d5fc393a55c9ec9f14f1` |
| 32 | `def` | [changedMultiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedmultiply.md) | 190 | `declaration-track:bbe09f3762f18a228189abbfb09ccd53dfc65949b9fb94117580b4a4788ceb59` |
| 33 | `def` | [changedInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedinverse.md) | 193 | `declaration-track:95cfbfbff3453ce4c602bb4887ec2de870dd7d751c1a2e1c2e56ef2e328a1763` |
| 34 | `theorem` | [changedMultiply_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedmultiply-assoc.md) | 196 | `result-track:209d6a39617cb0ee68dfa48e7bc8d8735750ac0a36a4084900899628bbae210e` |
| 35 | `def` | [sectionEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/sectionequiv.md) | 208 | `declaration-track:058b08297fa9c0f639e6c02f6fda699b62a8d55f1094eb634d8b8479398c3219` |
| 36 | `theorem` | [sectionEquiv_multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/sectionequiv-multiply.md) | 214 | `result-track:c976f5736f439b97ab21fc7f47f358a83fe6e1bec829d23ab62d2970ad98377d` |
| 37 | `theorem` | [sectionEquiv_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/sectionequiv-identity.md) | 220 | `result-track:56e4ac8a2bbbc203d78287d8e1465161c33ca267ec25a51eeadd54ddbe85593b` |
| 38 | `theorem` | [sectionEquiv_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/sectionequiv-inverse.md) | 225 | `result-track:398b677a65ea1ad764a06215627f795969829abf37a4d1c5795c70bb78ec00ca` |
| 39 | `def` | [changedGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedgroup.md) | 232 | `declaration-track:52a72021130993c199efbf643e884722302951a3f759d2f8a87fa16571df0a39` |
| 40 | `theorem` | [changedGroup_multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedgroup-multiply.md) | 235 | `result-track:1da751602a1072e00c408e04f42e21d2ccd26c75dd0a1a2c28c7aa762ae929c2` |
| 41 | `theorem` | [changedGroup_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedgroup-identity.md) | 241 | `result-track:dd86342ec401b306efaddc9217e4fa4b3f0062795d97c34230e80eee7fc3bb37` |
| 42 | `theorem` | [changedGroup_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedgroup-inverse.md) | 248 | `result-track:e0804e2883ea0bafb4bd1c0290008810499ba58c3573be40874c7a72b42fc215` |
| 43 | `def` | [sectionMulEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/sectionmulequiv.md) | 256 | `declaration-track:b7a3e113e5525498442d7df125b2ec150a575f77b9f4be66a10522fb72444816` |
| 44 | `theorem` | [sectionEquiv_central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/sectionequiv-central.md) | 261 | `result-track:4e446fbbe67154005e828c6fc4956eb8bd76ffadd6763c443327f97f8e47e4f5` |
| 45 | `def` | [changedCommutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedcommutator.md) | 265 | `declaration-track:3f3dba10a72bc46e71df9066746bd0b737be89f26133280bdeb6e8027fead7f4` |
| 46 | `theorem` | [changedCommutator_eq_central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedcommutator-eq-central.md) | 271 | `result-track:e3e3d3b49f634be2a2dcc203967a6f1e6827ca62f4a10c417f1e4bf0f1ca5b5a` |
| 47 | `def` | [changedMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedmatrix.md) | 280 | `declaration-track:b393f5c88e40320db02c341f529374b48f7185def4e46b1913248473e9261932` |
| 48 | `theorem` | [changedMatrix_multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedmatrix-multiply.md) | 283 | `result-track:4b319c072e1bca0b604e43bc707add4212f3f6e5753c44bb6dfee4af4bb9079c` |
| 49 | `theorem` | [changedMatrix_commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changedmatrix-commutator.md) | 288 | `result-track:a49c031cd8b6845db793740d68808b405d29ed30bdf78041275d2ec81efcb601` |
| 50 | `theorem` | [centralCharacter_section](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/centralcharacter-section.md) | 296 | `result-track:ef90accdc4c693bda679bfbf437799b3d103b5b7d7929571248a2aceb5665ff4` |
| 51 | `theorem` | [changed_tally_commutator_phase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SymmetricHeisenbergCoordinatesAndChangedSections.lean/declarations/changed-tally-commutator-phase.md) | 306 | `result-track:8fca2fcfa45427e87a5e97e30292ff9fd20a64da858ffabb9f11f6d105bf9d91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=53b86490528df31551785639dc0ac9c5c634bc2fb34f93410d8854eb63be3c81 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variante73962e35df03dbfcdd0afdbc676668c330a12a78283d237fac7b3f0196a8d45.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variante73962e35df03dbfcdd0afdbc676668c330a12a78283d237fac7b3f0196a8d45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
