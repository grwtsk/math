# Verification target: Graded Object Monoidal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "742620d27a1a5af1709435f1926b364252d8b1d4",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `742620d27a1a5af1709435f1926b364252d8b1d4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GradedObject.Unitor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasTensor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/hastensor.md) | 38 | `declaration-track:ff30d22c3869f4039c8a8447b0e0e31fbf6f87103b56222da8c4cd5ebf64a37e` |
| 2 | `lemma` | [hasTensor_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/hastensor-of-iso.md) | 41 | `result-track:59f872779e3370bd9a264a4d5a52f90754fd929eff1b699fbe240954e227436d` |
| 3 | `abbrev` | [tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-source-edition-4.md) | 52 | `declaration-track:ba4439f771a64228e4baa694e874b8e56af683d9fea89c85abc210d504cfb4f7` |
| 4 | `def` | [ιTensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-source-edition-5.md) | 61 | `declaration-track:eefb2329f586859f84090b7679f1a4d2589280a2f67c9e7417ad3d8267f483f8` |
| 5 | `lemma` | [tensorObj_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-ext-source-edition-4.md) | 68 | `result-track:f3fc07ac814e87b7ccada4b88cab1d56913dd51534134b87d96aee4c96de3984` |
| 6 | `def` | [tensorObjDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobjdesc-source-edition-2.md) | 76 | `declaration-track:f81b702ce4bef616c1d4ab9b88cf89c146e358dcbe5d003ec69bc125cf47e418` |
| 7 | `lemma` | [ι_tensorObjDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobjdesc.md) | 81 | `result-track:aecc6074a9392822a85188defaddc25e817675a909d16f640df5d52117e67a67` |
| 8 | `def` | [tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorhom-source-edition-2.md) | 90 | `declaration-track:f32df8097346f5be18d9118992c6fd27432914338c6480f1a2d63657d1df3571` |
| 9 | `lemma` | [ι_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorhom.md) | 96 | `result-track:3be553f3410f74612f269eb49b72ce11a18232c89882bc11e819ec8895b647e9` |
| 10 | `abbrev` | [whiskerLeft](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/whiskerleft.md) | 105 | `declaration-track:ae45a582dcc1322f0fa501c0e583e49402b88b582ad7fd5d87d4e50565ca0cc9` |
| 11 | `abbrev` | [whiskerRight](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/whiskerright.md) | 111 | `declaration-track:d833d7ae1f4f29b25c5da1c234929e8ed7d3536a49fce51e414f2593217df7e4` |
| 12 | `lemma` | [tensor_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensor-id.md) | 116 | `result-track:2ae86b4497619f4c69581cff2a7e8d7a643b3ac870d25803613917fe7cd241d0` |
| 13 | `lemma` | [tensor_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensor-comp.md) | 123 | `result-track:cef5194f46cc8bac3124f06a14ba2752cd3b533b3163ade64d0bd4296fd9cea1` |
| 14 | `def` | [tensorIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensoriso.md) | 134 | `declaration-track:c90fd4eb799925a77d11a1a105b15714146031d8eb43cddd3855ebf05ee94495` |
| 15 | `lemma` | [tensorHom_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorhom-def.md) | 142 | `result-track:6a1b674c2ab0b456bf1fdd7b77ee09f7ac0fa6e3d16f29564b57c3b0588ade83` |
| 16 | `def` | [r₁₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/r.md) | 148 | `declaration-track:9d999bb9fafbbeeaa8219e0baa83d8fecda7c7180973e08c1bd8c9feb739c2b1` |
| 17 | `def` | [ρ₁₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/anonymous-source-edition-2.md) | 151 | `declaration-track:356c11c4bc9d751b808e98b34af7103306718895283a8651b22962753a1b4aa9` |
| 18 | `def` | [ρ₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/anonymous.md) | 158 | `declaration-track:0c79b5fe67c3da535468beb730a7c799bff3a0b2e439dd4deea8a37c37ceb300` |
| 19 | `def` | [triangleIndexData](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/triangleindexdata.md) | 167 | `declaration-track:6067a8c67b2be248c4a5d086171a074f6646f99fc2c2738ed615c4106e7e7f52` |
| 20 | `abbrev` | [_root_.CategoryTheory.GradedObject.HasGoodTensor₁₂Tensor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/root-categorytheory-gradedobject-hasgoodtensor-tensor.md) | 178 | `declaration-track:3a07e801eefd909022b228021beadb4e295dba1ad0a84399790fab33e9c6ec26` |
| 21 | `abbrev` | [_root_.CategoryTheory.GradedObject.HasGoodTensorTensor₂₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/root-categorytheory-gradedobject-hasgoodtensortensor.md) | 184 | `declaration-track:5652f9b9da0ccafe7e0bba9062cc6a7d0dcf558e7b97391d84df37bdd1ba6a14` |
| 22 | `def` | [ιTensorObj₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-source-edition-2.md) | 198 | `declaration-track:52adb93a5b9516c7f4fcd906c851809f24b13740ceae9e72dde5829ef4e660ea` |
| 23 | `lemma` | [ιTensorObj₃_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-eq.md) | 204 | `result-track:299a1f7a8d30bbfd8f8ad653e113889afc41450077d86d08f7c6e0d84cb450f6` |
| 24 | `lemma` | [ιTensorObj₃_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-tensorhom-source-edition-2.md) | 214 | `result-track:b0e3cecfb5d203febb4670eb698c0c398296a40c6ca906f3978472f97341e053` |
| 25 | `lemma` | [tensorObj₃_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-ext-source-edition-2.md) | 224 | `result-track:865e2b09e1856416ff7aedf7f1e8cadc52531370fb78e0404571cd21bb9d211e` |
| 26 | `def` | [ιTensorObj₃'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj.md) | 241 | `declaration-track:49ceabb6feda53469d24864a6698d22a8341856e8f3df322317ffabde263bef9` |
| 27 | `lemma` | [ιTensorObj₃'_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-eq-source-edition-2.md) | 247 | `result-track:b4e1c08a6ff9a3af138edffa8db4db2863a451d21c3a5680859c87ec8217163c` |
| 28 | `lemma` | [ιTensorObj₃'_tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-tensorhom.md) | 258 | `result-track:0b3023671242a6fbe8209f01f294aa4a4dc8c79c780cdcb2d6c165951ce66309` |
| 29 | `lemma` | [tensorObj₃'_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-ext-source-edition-3.md) | 268 | `result-track:9542aa4068eb8e78401f60a40f88f22feb947346e3fc1419f7c7393198b2e508` |
| 30 | `def` | [associator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/associator.md) | 284 | `declaration-track:d9e88f61c48856a3fbddbfe1f28022a9435cf39de3f5c8cec9f5ac26853160ca` |
| 31 | `lemma` | [ιTensorObj₃'_associator_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-associator-hom.md) | 289 | `result-track:0819cec2fa4880813c06736f207cfe55a99c92d602047625fd718ce9f13fe4b4` |
| 32 | `lemma` | [ιTensorObj₃_associator_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-associator-inv.md) | 298 | `result-track:8516d9a023c9207975491b244bcb0b0ac30c77bf3498c5663bf695e1d9bf2d5e` |
| 33 | `lemma` | [associator_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/associator-naturality.md) | 310 | `result-track:9a368b7e32882047d1d5dc03ab82a54f0cd1ce6971cb87100e4639ccf947dfdd` |
| 34 | `abbrev` | [_root_.CategoryTheory.GradedObject.HasLeftTensor₃ObjExt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/root-categorytheory-gradedobject-haslefttensor-objext.md) | 328 | `declaration-track:2a8196255eff22230efc211f01399e526209550ceb2ecb4014ee90b58d6b3292` |
| 35 | `lemma` | [left_tensor_tensorObj₃_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/left-tensor-tensorobj-ext.md) | 338 | `result-track:7a0a147adac53a87253cc857fc7aabdff9ff9ca7751907481f55fc61b78db0ad` |
| 36 | `def` | [ιTensorObj₄](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-source-edition-3.md) | 361 | `declaration-track:83dcdc5cb71f752ccc6e01d13460375f56291cf7ac0c204335a3ab5fae668382` |
| 37 | `lemma` | [ιTensorObj₄_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-eq-source-edition-3.md) | 367 | `result-track:f0a67f2d37dffeac1a56f0f8e3593558048fb33985cb239e813d76d90b66d53c` |
| 38 | `abbrev` | [_root_.CategoryTheory.GradedObject.HasTensor₄ObjExt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/root-categorytheory-gradedobject-hastensor-objext.md) | 379 | `declaration-track:464f586dad866cde60a9d540871029036043e89f9216abb54f5e3667d18e4dfc` |
| 39 | `lemma` | [tensorObj₄_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorobj-ext.md) | 385 | `result-track:613c9626307c1502bdabf141f29afe8a49e5ab3ef64af156de925e368e4ae754` |
| 40 | `lemma` | [pentagon_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/pentagon-inv.md) | 422 | `result-track:f2c7e327654e4980eb0ceccea3b9a3ae0dfa8632aff6ba5eb3291087c248b944` |
| 41 | `lemma` | [pentagon](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/pentagon.md) | 458 | `result-track:1b4a1905bb3e557c138be15b67476b07e274d6f0652917c95eca2c08eb03001f` |
| 42 | `def` | [tensorUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorunit.md) | 474 | `declaration-track:3c33623fd1668ef145aced7f8a77998f8ca54ea98305d31eddbaaf42858781bb` |
| 43 | `def` | [tensorUnit₀](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/tensorunit-source-edition-2.md) | 477 | `declaration-track:97f8575193f29cc8a5fa3bdd83e9cda1465c4026a168c75db5b1b7f505cdf425` |
| 44 | `def` | [isInitialTensorUnitApply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/isinitialtensorunitapply.md) | 481 | `declaration-track:ac0bc4a4c4e29776fdab563e848d13c40cedea07c74c1211c4d56a0720a375c6` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/instance-source-edition-2.md) | 493 | `declaration-track:0beb762ea214c727eb0bc0e094861437647e894a40d849050f8c42ceb92ea95f` |
| 46 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/instance-source-edition-5.md) | 496 | `declaration-track:8509fb16558638dae04e73a169c8f9b8555b2051ba038f467f418c7286b72d85` |
| 47 | `def` | [leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/leftunitor.md) | 501 | `declaration-track:58f7c1652b8fc6a38615d7f636cc73b03ec3f4b2a50718380e0d32d2d482dec9` |
| 48 | `lemma` | [leftUnitor_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/leftunitor-inv-apply.md) | 505 | `result-track:93712737ad0b30c011f840944eb4956daa504374a0ea87bb4416c6947552e5e4` |
| 49 | `lemma` | [leftUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/leftunitor-naturality.md) | 512 | `result-track:838bff1a565e7572f394dc22e4a925aa0464c1bcd52e27d6f50791df105c4901` |
| 50 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/instance-source-edition-3.md) | 525 | `declaration-track:2ebaba600ee8bfcc1bdd10c5bdbc23807376bfc7029678882a6dfbd6e3db9480` |
| 51 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/instance.md) | 529 | `declaration-track:0968f882fd7be51137e7bbe92eeaa410559da6fe2ba9fdc60df7aa7ff47f3183` |
| 52 | `def` | [rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/rightunitor.md) | 534 | `declaration-track:9c9ed5b51c15a8d96718c0b8748b22ec31080e3e9287682aab66920b358d2669` |
| 53 | `lemma` | [rightUnitor_inv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/rightunitor-inv-apply.md) | 538 | `result-track:7de3c6576b4a9b323df5cb9d7f7d63a43d085fef0b5f2f4dbbb3096bfe83e719` |
| 54 | `lemma` | [rightUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/rightunitor-naturality.md) | 545 | `result-track:378c09c45c207ffb75c18321c24ff6bcdae558aa6ff48f507ef75796d8041dd2` |
| 55 | `lemma` | [triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/triangle.md) | 562 | `result-track:53de0ba920688f246fa916f0340eace99bde1525e1e78dc8a60764781dd50c30` |
| 56 | `instance` | [monoidalCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/monoidalcategory.md) | 584 | `declaration-track:c0c5f47c304508d24a02c5600cb02d6ab5123ef54acc45f131a12604637bc5c2` |
| 57 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/instance-source-edition-6.md) | 605 | `declaration-track:f14508d4e556e922c24023a9f5f8d39ef665b33e35dd4584a10b17a71b62c31b` |
| 58 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GradedObjectMonoidal.lean/declarations/instance-source-edition-4.md) | 611 | `declaration-track:6f7cd46f90cf1eba4caa5c2287f8e3f540a4b772df08c01567ced05cb870f53d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d040a34dc29783e14b4ce037d8ef249b00a3a7bdce88b010a36b535a78e130a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta2b5f1cd0837ebc33423112f31b0854b6692afc9dedd03ea4c8537a75f022f14.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
