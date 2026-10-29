# Verification target: Endomorphism Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b91f7da59da8316a6951fc8d48261136e17f9090",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b91f7da59da8316a6951fc8d48261136e17f9090`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Equiv.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [End](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/end.md) | 37 | `declaration-track:4d9e8cb8821a50debcf40685ff911524db74ea564e15225aee7c8f7cc7b0afd2` |
| 2 | `instance` | [one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/one.md) | 46 | `declaration-track:fa8f04015ccf6db96a197e38472669eef6adb7501ab86c02738551eda55dd753` |
| 3 | `instance` | [inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/inhabited-source-edition-2.md) | 49 | `declaration-track:8282c0b91ce261dbe8d2a89b00e6fb350fb9dfef72487d29f6228d2f4737640d` |
| 4 | `instance` | [mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/mul.md) | 54 | `declaration-track:6fb812bc4f153c6d6ad38dd9fc1cd5ef45c3d73317235e353d33a273b2b864f7` |
| 5 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/of.md) | 60 | `declaration-track:1d74e90d5a1620ca49fdc9f762b1f8bbb9b1073ab9eb8ba12815c2bf57816652` |
| 6 | `def` | [asHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/ashom.md) | 65 | `declaration-track:36fb9956411c06f219dda24be1aa79ed842646fcfccf49d4588a4e0797af3d38` |
| 7 | `theorem` | [one_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/one-def.md) | 69 | `result-track:34c8d4d7332b8c33747262b328cc1c02bada9ede533bb543396d2372f03d685d` |
| 8 | `theorem` | [mul_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/mul-def.md) | 73 | `result-track:dee7a69064d565bc07851ce179dd4020f936bb18fe9cf2819af9b93b8504590a` |
| 9 | `instance` | [monoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/monoid.md) | 79 | `declaration-track:2df9073afca26a1634dca6d2bcf3bd6acfe618262ae888cdf98ab88af59f6a9b` |
| 10 | `instance` | [mulActionRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/mulactionright.md) | 91 | `declaration-track:09e9c41e37a5ede689d1b21a8f96b534631adedeb68dac743b42d2f123bd0e0d` |
| 11 | `instance` | [mulActionLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/mulactionleft.md) | 97 | `declaration-track:e253efc789dea67b03f839c5296d0c46fd81ddb8d2d00a996d2985073eefe260` |
| 12 | `theorem` | [smul_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/smul-right.md) | 103 | `result-track:468f417cb178a995c075eb8891ded97b2b55ee654a18261b979f18ac6207a054` |
| 13 | `theorem` | [smul_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/smul-left.md) | 107 | `result-track:9b18e3cf7d00a6934bfd0014a623cf22051b603e3b8f6e061e120c74a7ba5eea` |
| 14 | `instance` | [group](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/group.md) | 114 | `declaration-track:82367477481cdba9fa84f15ee813ff7a2dd0525cfb87ebe0e19001f813212670` |
| 15 | `theorem` | [isUnit_iff_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/isunit-iff-isiso.md) | 121 | `result-track:fa1d038c1d306d67b345118dbb43536ef5f2814f794c601566e6b9cffb34e2aa` |
| 16 | `def` | [Aut](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/aut.md) | 134 | `declaration-track:e7007f1100a1be24a6832ccb8c24b8fdf43940139b2dc6a2f40302af95e51d2f` |
| 17 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/ext.md) | 142 | `result-track:a561e26ae1846cf480f4cc353731c43f243ea5e71627c84a4401c23aab55f12e` |
| 18 | `instance` | [inhabited](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/inhabited.md) | 145 | `declaration-track:6bfa378535e19c63c9b6d40d04b0e6c3847143015d97bfd2c3df802a8f99dc44` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/instance.md) | 149 | `declaration-track:a3b63f7dfd03379c240e565afd6fa571b724af320880502238ccc12a3a334458` |
| 20 | `theorem` | [Aut_mul_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/aut-mul-def.md) | 158 | `result-track:08d2226538b62d18f70e1b61ef776bb4e71047e7895e0c37ea242d0e030d9b48` |
| 21 | `theorem` | [Aut_inv_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/aut-inv-def.md) | 162 | `result-track:715368eef690c6c3269a7eb274ca9c08f91132ef8edd9bf2629e50266b2d91f6` |
| 22 | `def` | [unitsEndEquivAut](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/unitsendequivaut.md) | 169 | `declaration-track:34b12567e20e3bead03a65a6b6aea03509db99507a68f7331f9bed307f19175c` |
| 23 | `def` | [autMulEquivOfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/autmulequivofiso.md) | 179 | `declaration-track:1fa3f7415f73bd736525728c08257c7a1f1ab44e38cb1d4cf6d3b214919be17c` |
| 24 | `def` | [mapEnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/mapend.md) | 196 | `declaration-track:cf6b93a91e073663c84b291b23e666f8d8110df080701f2c482b8852a317e36b` |
| 25 | `def` | [mapAut](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/EndomorphismNamespaced.lean/declarations/mapaut.md) | 203 | `declaration-track:1a34b9d4a24724b1146868e0081d6a54cda99b4fde3fbf60a838694b6fd06430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c66b4d63c4d144f1c1d5b52b74347fae7ff9d96597e6a826c89d1435ec30fa93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Endomorphism/Variant869dfa9c2c5e89bc1f04a6f85bc065b50df09a58195ff762a6676226f6c1ec75.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
