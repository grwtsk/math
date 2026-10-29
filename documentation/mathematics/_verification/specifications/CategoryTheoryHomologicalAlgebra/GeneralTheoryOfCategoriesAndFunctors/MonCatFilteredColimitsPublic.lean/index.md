# Verification target: Mon Cat Filtered Colimits Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e3526dbce57d167b44a1ad046628b5289f3b08c",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e3526dbce57d167b44a1ad046628b5289f3b08c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [M](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/m.md) | 51 | `declaration-track:1f749158a521728def4ea7e94efa7d10070d9efbdc7d498689152fac73ef3105` |
| 2 | `abbrev` | [M.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/m-mk.md) | 55 | `declaration-track:74a679a7ea603afa12ce5470421f404b312ce4730e9c31d9edb33d90fed80472` |
| 3 | `lemma` | [M.mk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/m-mk-surjective.md) | 59 | `result-track:36d671fccf54150a5eeb7c09d2e9f304b0ce4406c24e8d4b1d6c1a3091b3c2ea` |
| 4 | `theorem` | [M.mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/m-mk-eq.md) | 64 | `result-track:3510b3bd3658aac2199108984279ccb7ebd3e2c0dd512eb0924a470fcf77fad7` |
| 5 | `lemma` | [M.map_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/m-map-mk.md) | 70 | `result-track:566601bb01591ee2f95df49a218a1a3f02d5943cd970b2f1ba6be80757b8adb4` |
| 6 | `instance` | [colimitOne](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitone.md) | 82 | `declaration-track:b67a3002ff159a1dae2a52e195eb35818b15504bd36bb71122c3dd36f92ba991` |
| 7 | `theorem` | [colimit_one_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimit-one-eq.md) | 93 | `result-track:f3a2a092cd10a2930f0e53e62576f6cb630c798576956141ddc3def2edc72035` |
| 8 | `def` | [colimitMulAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitmulaux.md) | 106 | `declaration-track:4a5343510fc8bce6e61c5701b5d673230e2a25cd6bf63f2db4f135cd9983c0a7` |
| 9 | `theorem` | [colimitMulAux_eq_of_rel_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitmulaux-eq-of-rel-left.md) | 112 | `result-track:7e7856fcbbbd058fc27740f0f439dfae7da358b2f75c52af7401178909e1d23e` |
| 10 | `theorem` | [colimitMulAux_eq_of_rel_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitmulaux-eq-of-rel-right.md) | 129 | `result-track:89c4fd15564793881c2a5b69f919ff7fe5ed366db0e28a043751ce706fddad0c` |
| 11 | `instance` | [colimitMul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitmul.md) | 146 | `declaration-track:995b27e01a041f6023b5d2ad6b14f162126e39456009ab557b5aeba0fff31b20` |
| 12 | `theorem` | [colimit_mul_mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimit-mul-mk-eq-source-edition-2.md) | 166 | `result-track:ddd92738a8c386f9313eff8f4a4d9b247dd01117a1c93fd19219e76449504bd3` |
| 13 | `lemma` | [colimit_mul_mk_eq'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimit-mul-mk-eq.md) | 177 | `result-track:58e3c797c2c916fa52692a76f9450d8c92fb7f426f46a9b886e8a690b5729af9` |
| 14 | `instance` | [colimitMulOneClass](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitmuloneclass.md) | 182 | `declaration-track:93a6dfef4bf92c88fdeb2a458bc55b2101a251e5809248596d687059c49b7270` |
| 15 | `instance` | [colimitMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitmonoid.md) | 193 | `declaration-track:2e55bb6bdd9330da256e4e795cf154f538a920a4e2f1973d4db5e5c3a826e3c1` |
| 16 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimit.md) | 211 | `declaration-track:864699c6cc3a991308b466e9a16a8a12fb152237816417bd408bebad30a13271` |
| 17 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/coconemorphism.md) | 218 | `declaration-track:4f018b3d95464918ab840b7f429d2c99455d4a7c6e38075a4e0e16fd4958bdd7` |
| 18 | `theorem` | [cocone_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/cocone-naturality.md) | 225 | `result-track:4b2649a193ace545782e5d58a37bd694050c404cb23355de2668d943098e60c8` |
| 19 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitcocone-source-edition-2.md) | 233 | `declaration-track:9b34533a45f3371080d921813e77f2c84f79df08acbafa906b2cc6a8cc394c34` |
| 20 | `def` | [colimitDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitdesc.md) | 247 | `declaration-track:42b59689cb0bff1973ac6ff28bf13e79613416c1d24260cfabae8347fce94885` |
| 21 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitcoconeiscolimit-source-edition-2.md) | 264 | `declaration-track:f8ed1819a9418f3528c90660f222a35f3eab14e250bc34d644ec57dd66cc831b` |
| 22 | `instance` | [forget_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/forget-preservesfilteredcolimits.md) | 272 | `declaration-track:52d921330720a326440a3ac2c85b780c9a7852eca4f87b260f6afd68499a2877` |
| 23 | `abbrev` | [M](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/m-source-edition-2.md) | 297 | `declaration-track:3ee2fe03bd65e48076fb68aa119191a63e6185d8d642d04eb440dd1bdb360d3b` |
| 24 | `instance` | [colimitCommMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitcommmonoid.md) | 303 | `declaration-track:d40be9c307c7650dd0790a7dbe2feb18d9a13b27f9e193ac25c87cb3ed3b505a` |
| 25 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimit-source-edition-2.md) | 319 | `declaration-track:90266b8facb494638668e873c080847484b52770fcbb95b92da987a93c1d557c` |
| 26 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitcocone.md) | 324 | `declaration-track:6a1b117728d9f0e2a32458d108431c332e7a2de4a56713ddb69b9b18b32dc3bc` |
| 27 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/colimitcoconeiscolimit.md) | 334 | `declaration-track:93223b6610f51a8bf0a591444d0448331530ebec9f8429035da1ed419d8420f6` |
| 28 | `instance` | [forget₂Mon_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/forget-mon-preservesfilteredcolimits.md) | 339 | `declaration-track:5f70dbee270f8226f7c12f0210c2b3062ad6ad931ae8f0a7f6f0708caacf3910` |
| 29 | `instance` | [forget_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonCatFilteredColimitsPublic.lean/declarations/forget-preservesfilteredcolimits-source-edition-2.md) | 346 | `declaration-track:c3e14478e47cb40ecb9685b9ed7171d1ecb7d876a63fb42948d3b0d2ecaa3db1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3eb755ef8f8cadd0044414c3f4700675e7d9c27fa4145bd95bd0e111d15b2834 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variant7b352fd66ab5f8b7add39bc56dfa879f54fac9d2c96e1c6f5d395b54ead3d723.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
