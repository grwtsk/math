# Verification target: Reflective Reflector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0438f47effee11c3b2f4a52eb194af2abef0f4f4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0438f47effee11c3b2f4a52eb194af2abef0f4f4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Reflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/reflective.md) | 34 | `declaration-track:e7888059ae2800c3ebdfd82bfbfc916cdc3e0a8de170310e2993ef7245f7f8da` |
| 2 | `def` | [reflector](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/reflector.md) | 43 | `declaration-track:d1eeadc1d43d533ad046b7289e50a4e8274afe38fa9cb1cd88148b3a87b16b0b` |
| 3 | `def` | [reflectorAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/reflectoradjunction.md) | 46 | `declaration-track:754724456166e7ce7393e02d7431d53d590c2fe505f5de72fdc3174118666801` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/instance-source-edition-3.md) | 48 | `declaration-track:429c06b6fb397852731939b84f83781530334e6b2f4a34809cba5d07605e68d5` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/instance-source-edition-2.md) | 50 | `declaration-track:421e8879b09931c7fa43fbaf5bf2b2182428a615c4a4953fbac1b06dfb2578dc` |
| 6 | `def` | [Functor.fullyFaithfulOfReflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/functor-fullyfaithfulofreflective.md) | 53 | `declaration-track:d3dde6df54550570990812f95e76fdaf0a9e3e7894e3eba0ab3b07b1501db3db` |
| 7 | `theorem` | [unit_obj_eq_map_unit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/unit-obj-eq-map-unit.md) | 59 | `result-track:7574c19b3cfe0838aec4296449b778d918fc6f765ca4657b2fad9b21aa0a6cc5` |
| 8 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/example-source-edition-2.md) | 72 | `declaration-track:deaad855203a9d9538a1e835fa3095df62cad25581fed8e0e5e2b1b790c75252` |
| 9 | `theorem` | [Functor.essImage.unit_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/functor-essimage-unit-isiso.md) | 83 | `result-track:7efc6c4ea31dfbe7fca1cd78cc3be5d33af78436757efdf15c59110bf368f482` |
| 10 | `theorem` | [mem_essImage_of_unit_isSplitMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/mem-essimage-of-unit-issplitmono.md) | 88 | `result-track:fe1296e710091647793c4183b6af515a68f7f8163174438c0acf0e8faabfd5bd` |
| 11 | `instance` | [Reflective.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/reflective-comp.md) | 101 | `declaration-track:cce16dd969dfc732d1365ea71513ad0b5a9f7fdf5654f18e261207fe26c7e1fe` |
| 12 | `def` | [unitCompPartialBijectiveAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/unitcomppartialbijectiveaux.md) | 107 | `declaration-track:b62a359159793958c0c0c5f4da65f761f97b88eceb8860fc7feae396506b8df8` |
| 13 | `theorem` | [unitCompPartialBijectiveAux_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/unitcomppartialbijectiveaux-symm-apply.md) | 113 | `result-track:e8c395139b8609e5ea46e36f098f853554d8894fad13a386e002cb69096c5354` |
| 14 | `def` | [unitCompPartialBijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/unitcomppartialbijective.md) | 129 | `declaration-track:6aa67ada9db1716d9fc49a3a773195a19deb8188d6aa8c4ab4b39d2a912ec249` |
| 15 | `theorem` | [unitCompPartialBijective_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/unitcomppartialbijective-symm-apply.md) | 138 | `result-track:0eec03749f792784c5c58f570adf2813ea2d8669aee305f6d5ca870fa22d9ddf` |
| 16 | `theorem` | [unitCompPartialBijective_symm_natural](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/unitcomppartialbijective-symm-natural.md) | 142 | `result-track:5ab59df155031cf5056a4cd36c5e45bccea48162ab61e9961e005be45873f513` |
| 17 | `theorem` | [unitCompPartialBijective_natural](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/unitcomppartialbijective-natural.md) | 147 | `result-track:aa65d907e74c60d0973a5d000d03248006acf951f8d0f6270056f7491ef7800c` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/instance.md) | 152 | `declaration-track:2c5857386f6e19518b001541c1948057d56328294b2fe46e725fa2859acb96d9` |
| 19 | `def` | [equivEssImageOfReflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/equivessimageofreflective.md) | 164 | `declaration-track:eef02c8248a3e6a1233d1a68978db84c80fc0612fa5a35ad888f4362797c022f` |
| 20 | `class` | [Coreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/coreflective.md) | 175 | `declaration-track:00bc09bacc306321d17251543b6378b3031d24d4ab2032f51b8b91318cf23410` |
| 21 | `def` | [coreflector](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/coreflector.md) | 184 | `declaration-track:9cad056754780b9af01a94e36900e731b8072bb20da89164e29b95e73bba301f` |
| 22 | `def` | [coreflectorAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/coreflectoradjunction.md) | 187 | `declaration-track:26675d820074c287db796828a42bf1e9cedc9f56e4028d000a4086f78cf36f97` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/instance-source-edition-4.md) | 189 | `declaration-track:b1a525921cec0ad51cdc8265061dca8018ce64f22ecfd1fdbc634007678ff735` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/instance-source-edition-5.md) | 191 | `declaration-track:d9ae13e47935ad1cf908b196fd0574adeb5419f258cde8abb404532494aa8c07` |
| 25 | `def` | [Functor.fullyFaithfulOfCoreflective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/functor-fullyfaithfulofcoreflective.md) | 194 | `declaration-track:1f7535065603bf9fd24506910a3bde71c3b42c7f6b663a9e9d36aa8dd80ceaf0` |
| 26 | `lemma` | [counit_obj_eq_map_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/counit-obj-eq-map-counit.md) | 197 | `result-track:49c8427582091ed9e6f9858f55b04792244e55bb96421a977d9e9b043a0c89e0` |
| 27 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/example.md) | 204 | `declaration-track:00d0cc9f4adfdfc8a659e96d9f30ca9f69a1250db7cce8b995e4f97e5f47f40b` |
| 28 | `lemma` | [Functor.essImage.counit_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/functor-essimage-counit-isiso.md) | 209 | `result-track:b1e0f3e154e94713c4282fc4cecab8feeb30fd62df635f884fe5cc05dbf5cb7e` |
| 29 | `lemma` | [mem_essImage_of_counit_isSplitEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/mem-essimage-of-counit-issplitepi.md) | 213 | `result-track:b83a9024a53642d279f76c3817d1caa9d4d92645851e288c4576701d22aa1373` |
| 30 | `instance` | [Coreflective.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflectiveReflector.lean/declarations/coreflective-comp.md) | 225 | `declaration-track:e321a86ab79bb7d0f3e3c872a77c74d917510cd401a80a7500d9a418a460b33c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=022599652363c87ce7f2261ac6af47f1cb6c552d91bf6ede283f9309cca588e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variant606a1fd4a8c902f4e8abe909d93fce9c1540e33fee371281844f205d0a2ddf5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
