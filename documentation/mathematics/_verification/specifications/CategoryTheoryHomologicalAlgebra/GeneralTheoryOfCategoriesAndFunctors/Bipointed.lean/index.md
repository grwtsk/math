# Verification target: Bipointed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81bff7c80315c0983eeb306e3605664ccca51769",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant82ad2bd092906b4e43956d7855e143f7400d6ab8b875f7dc287faaa56e88f881.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81bff7c80315c0983eeb306e3605664ccca51769`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant82ad2bd092906b4e43956d7855e143f7400d6ab8b875f7dc287faaa56e88f881.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant82ad2bd092906b4e43956d7855e143f7400d6ab8b875f7dc287faaa56e88f881.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Pointed` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Bipointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/bipointed.md) | 24 | `declaration-track:ec43e7dd7f613546eba78017ab3458d214a87ab57e15026fcb7fa88d37723b67` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/instance-source-edition-4.md) | 32 | `declaration-track:ee9a67065cfb15603db2f3beb1a2bd2e727ffecc08d1c1ed504454c08a984660` |
| 3 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/of.md) | 35 | `declaration-track:ce86302f9d7b712efbe0f3a1b1cba6b06685627607fa68cc1ef809511249cf90` |
| 4 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/coe-of.md) | 38 | `result-track:a448ef18d289b268e22e78d09ecc89ef7f8e092e09d7f6e4bd4a8b8a376e706f` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:6c5b947f1e686fb33e459f72ea207d82498de0f251ba1708f3e52a512f01df54` |
| 6 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/hom.md) | 48 | `declaration-track:eb5fd6389b32a7bb9764a19e3605bea32f92574601c1bf71403e15c41251af27` |
| 7 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/id.md) | 58 | `declaration-track:09c356900d3595022ac6ec41d69998245a4b2e2a56e679bca35fa898b9dd36de` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/instance.md) | 61 | `declaration-track:60bf514e5ebcfbdd69cbc08d6b99e8cd6a3ef220379fcd633e4907daf9fd8c32` |
| 9 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/comp.md) | 66 | `declaration-track:3b0385c74d7efc91f547cf74dd99a0e199fae882fcaf519ea7ee5728bf8c3fc2` |
| 10 | `instance` | [largeCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/largecategory.md) | 73 | `declaration-track:b090cca03f883b56258e6dbcaf20bfee951f29f630caefbabc988baf6dbb9a9b` |
| 11 | `abbrev` | [HomSubtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/homsubtype.md) | 79 | `declaration-track:503f6bac9a9c4532388c759af62c421f8b130daddcc1f7d2487490ca86daafce` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/instance-source-edition-3.md) | 82 | `declaration-track:ad4e3936f6b62fc05d937f8f15264d2b8caf2dc90ced4100adb91656f648cb72` |
| 13 | `instance` | [hasForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/hasforget.md) | 86 | `declaration-track:c136f39e27dd4d55b94be24ee65d5b973306252a2a5208ac675982555c74dba2` |
| 14 | `def` | [swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/swap.md) | 92 | `declaration-track:ead77a14c55d6fc28ae17dac31aa2a944ac78a40bfe30fe862c245ec565d2e17` |
| 15 | `def` | [swapEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/swapequiv.md) | 98 | `declaration-track:9610e8886fb1ee1cea7fb71f26fe495188198f090c864640969da696751e48be` |
| 16 | `theorem` | [swapEquiv_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/swapequiv-symm.md) | 105 | `result-track:a5589d5e730caf130911e142e3568262273c3b87aba9cee73cdef5bdc679ca64` |
| 17 | `def` | [bipointedToPointedFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/bipointedtopointedfst.md) | 111 | `declaration-track:9484972dc364705ebd35e270492b0c75e5e3b92f3f3671d60cf128691b9a8dc1` |
| 18 | `def` | [bipointedToPointedSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/bipointedtopointedsnd.md) | 116 | `declaration-track:4029536f5959e29b599a1f751ab3cfde071c886f25f67134a3ee9b557a56bbea` |
| 19 | `theorem` | [bipointedToPointedFst_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/bipointedtopointedfst-comp-forget.md) | 121 | `result-track:b222fe1048d38a5b8e5833081927d0edd41e76b9c5fc7186f5d18e97b0180df0` |
| 20 | `theorem` | [bipointedToPointedSnd_comp_forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/bipointedtopointedsnd-comp-forget.md) | 126 | `result-track:1f3e8a6da2e0e12b50aab5e0f6591daf221a6959b678ab73208439ff6c937981` |
| 21 | `theorem` | [swap_comp_bipointedToPointedFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/swap-comp-bipointedtopointedfst.md) | 131 | `result-track:2c6e3f45bbd6143389be60d24e9ef59e11d2d930a15f0f8fce8106beed5f3e0f` |
| 22 | `theorem` | [swap_comp_bipointedToPointedSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/swap-comp-bipointedtopointedsnd.md) | 136 | `result-track:b89998cd1cc1dce7ff530726a06b23803bc0f09a7ae799a39b98063d8de8e640` |
| 23 | `def` | [pointedToBipointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/pointedtobipointed.md) | 141 | `declaration-track:26400a2854780b9289a312d0b45f9b3d45c06f0a58609ba74af5085f5094f0c4` |
| 24 | `def` | [pointedToBipointedFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/pointedtobipointedfst.md) | 146 | `declaration-track:8c78a2eb59d59ac954153dca71642c0f450973bf4814d512cd254719eb04f8c1` |
| 25 | `def` | [pointedToBipointedSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/pointedtobipointedsnd.md) | 153 | `declaration-track:29f5c8ad1e9e6c324da3e320715ce5b15841fdada97684dcfce3f120c672e593` |
| 26 | `theorem` | [pointedToBipointedFst_comp_swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/pointedtobipointedfst-comp-swap.md) | 160 | `result-track:22dc14ca5cec403b38b6dce5472afb9555961861accf2df4ae9f9c71ef0e3d76` |
| 27 | `theorem` | [pointedToBipointedSnd_comp_swap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/pointedtobipointedsnd-comp-swap.md) | 165 | `result-track:a00499c2aa6d84d003026aec49977dbf86a979c357dc9207064031afab234251` |
| 28 | `def` | [pointedToBipointedCompBipointedToPointedFst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/pointedtobipointedcompbipointedtopointedfst.md) | 171 | `declaration-track:33df0257a5b9c9dcbe64c28b094032c1e3dc97f33c21539ad647b4a38ec38d3f` |
| 29 | `def` | [pointedToBipointedCompBipointedToPointedSnd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/pointedtobipointedcompbipointedtopointedsnd.md) | 179 | `declaration-track:19d79e20e5d73f94e4075a74c1cccf317242a2f656e4fd67cb2b21dbccee6bfe` |
| 30 | `def` | [pointedToBipointedFstBipointedToPointedFstAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/pointedtobipointedfstbipointedtopointedfstadjunction.md) | 187 | `declaration-track:41ad2b9a1ce958a6a449665589b0a2d1551d0045313a14757f42a27672a9db35` |
| 31 | `def` | [pointedToBipointedSndBipointedToPointedSndAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bipointed.lean/declarations/pointedtobipointedsndbipointedtopointedsndadjunction.md) | 207 | `declaration-track:0f5c35de4034ad596b517b3ce93605dacb09585721958418d328f5bd0f4ff000` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3092c672fa7d06093c781d039e8c91e5c58dfdece2480ee2044ab7c5c3dfc87c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant82ad2bd092906b4e43956d7855e143f7400d6ab8b875f7dc287faaa56e88f881.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Bipointed/Variant82ad2bd092906b4e43956d7855e143f7400d6ab8b875f7dc287faaa56e88f881.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
