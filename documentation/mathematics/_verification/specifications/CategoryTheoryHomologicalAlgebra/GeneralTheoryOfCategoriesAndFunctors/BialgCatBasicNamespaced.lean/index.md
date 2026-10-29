# Verification target: Bialg Cat Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ac3c38a63c7853bd1493b2c2571a39af2e73cb1",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae20655e26b9deae18a5bd9142daea8582c90e5d0202f70abb6aa8439d750356.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ac3c38a63c7853bd1493b2c2571a39af2e73cb1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae20655e26b9deae18a5bd9142daea8582c90e5d0202f70abb6aa8439d750356.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae20655e26b9deae18a5bd9142daea8582c90e5d0202f70abb6aa8439d750356.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.CoalgCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.AlgCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Bialgebra.Equiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BialgCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/bialgcat.md) | 35 | `declaration-track:fd5ee5a51a848e7a39ef8eb73dde9b0d40ad1e2886a79d28693a78872a6c123a` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/instance.md) | 49 | `declaration-track:1a2dd71adebde5aa8f4c4899383b65cdf76cceb0bd1624ccde099de5deb861c6` |
| 3 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/of.md) | 55 | `declaration-track:dce94bd33b13ec2ee775d3ef5e02244bad19bd3c7f7efcb504c552c63e82d7fa` |
| 4 | `lemma` | [of_comul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/of-comul.md) | 60 | `result-track:8faac441463e75ed468bffe1199adb18f212894200d00cf98bf02cdf118849a4` |
| 5 | `lemma` | [of_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/of-counit.md) | 64 | `result-track:c86c05f681dfee98143c3c349047fd99782a16e6b97c659d5016032489b2e393` |
| 6 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/hom.md) | 70 | `declaration-track:71e9d9e1ae31bea1dba1438bc92d699816b66126d03e60b989e36b9592697de9` |
| 7 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/category.md) | 74 | `declaration-track:550795c11273aea38964f5443a57d063282edfd6c60c24501fdfdde244925641` |
| 8 | `instance` | [concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/concretecategory.md) | 79 | `declaration-track:e317bf8618c6dcb9b117768b5a7258b3a2c0577643889ca5f0bb7faf553fafb4` |
| 9 | `abbrev` | [Hom.toBialgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/hom-tobialghom.md) | 84 | `declaration-track:7031806707bbdd30f0114e23d3c470f3637fbe26b0139ca34e74cb4f69e3f16a` |
| 10 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/ofhom.md) | 88 | `declaration-track:f5c52725029a7684ab6a770b2cdb1d6cb41239137865067505eebe917c324cf5` |
| 11 | `lemma` | [Hom.toBialgHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/hom-tobialghom-injective.md) | 93 | `result-track:5c68e7695cca194cb19f104bc12ce7f14106dfe43ccd793a811003c8393c3894` |
| 12 | `lemma` | [hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/hom-ext.md) | 99 | `result-track:b20ce0b31db1d30a0d462580e5f045eb48646118cd54e96f94e9d8d3d1646cb6` |
| 13 | `theorem` | [toBialgHom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialghom-comp.md) | 103 | `result-track:28f574a74f217b8122baf62ce7ee068cf1a0dfe98e013d3256534e2f77441b20` |
| 14 | `theorem` | [toBialgHom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialghom-id.md) | 107 | `result-track:fa251430167b319f2fd1188d900e114acb26feea2dec80a69751cf80d2527393` |
| 15 | `instance` | [hasForget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/hasforget.md) | 111 | `declaration-track:b6e9735b2cb1a0160eaec1dac3a613b0a9de11ab989db4e217866735c9299f26` |
| 16 | `instance` | [hasForgetToAlgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/hasforgettoalgebra.md) | 118 | `declaration-track:f0f34ad35c41de51d00a324b9a8912bd820c6694705f3145d6dbbb3de6724320` |
| 17 | `theorem` | [forget₂_algebra_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/forget-algebra-obj.md) | 124 | `result-track:dde610e63c4f112b969f23b7890190fa49b54e4bd4758138db44e67e5b96500b` |
| 18 | `theorem` | [forget₂_algebra_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/forget-algebra-map.md) | 129 | `result-track:b70d2bd633e15bba3b196c7a14a508537efe8af9328e9712de20127650ed0e8b` |
| 19 | `instance` | [hasForgetToCoalgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/hasforgettocoalgebra.md) | 133 | `declaration-track:62becbcf388651e88a5a57dd7662f20e7b96f7b74ace6b90ec7ce9a1f8975715` |
| 20 | `theorem` | [forget₂_coalgebra_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/forget-coalgebra-obj.md) | 139 | `result-track:3033b03498ffda5fde5ff280beaf2e73f3203cd87e35150af9a131c3a993e189` |
| 21 | `theorem` | [forget₂_coalgebra_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/forget-coalgebra-map.md) | 144 | `result-track:caa34a3cc59a9b2854d9b5bb0cea76bc6354dedcbea47cec469213b296beabc3` |
| 22 | `def` | [toBialgIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialgiso.md) | 161 | `declaration-track:b02b5f8850f417fc9e2169bc7af28114006919d7f6a1f237b99301a3558a80be` |
| 23 | `theorem` | [toBialgIso_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialgiso-refl.md) | 167 | `result-track:b4e33dbb0d325a23dd773d43ce81d53e8d5d9788582857798942b71d20673158` |
| 24 | `theorem` | [toBialgIso_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialgiso-symm.md) | 170 | `result-track:d45f07aa558831c8954e9d5fe9db5ef275494b2d7f9ff1e7bdaee29d5f9b6cf2` |
| 25 | `theorem` | [toBialgIso_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialgiso-trans.md) | 174 | `result-track:c55b052454cac57a320294081b0cc6852abef38808bf94b3ee4cadf069b12772` |
| 26 | `def` | [toBialgEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialgequiv.md) | 188 | `declaration-track:3cee9c7c058b1d85999f08dfb665ba2f4c534400c4ce5bac5dc3ef258f763f90` |
| 27 | `theorem` | [toBialgEquiv_toBialgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialgequiv-tobialghom.md) | 194 | `result-track:bbb8890eba88f2ce6464e60365f08df290eeb357f946893f6304cc67a1fb00eb` |
| 28 | `theorem` | [toBialgEquiv_refl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialgequiv-refl.md) | 197 | `result-track:eb367c2da95c14cf688f628e6642ffd0590dd981ba1d388b58e389af26cebe15` |
| 29 | `theorem` | [toBialgEquiv_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialgequiv-symm.md) | 200 | `result-track:a176d47e9c363eb70f54374d9ebb1b3749dd0294544d11977a52c6f9f301aa40` |
| 30 | `theorem` | [toBialgEquiv_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/tobialgequiv-trans.md) | 204 | `result-track:d5ab06d737f63537e86b9763f9a6577ef27112bf5d5aecb04c5e0e5064cb3e39` |
| 31 | `instance` | [BialgCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BialgCatBasicNamespaced.lean/declarations/bialgcat-forget-reflects-isos.md) | 210 | `declaration-track:01d094cc97b7c0ccb0bc3b3c83b81a73a3d67a50a5fa610d946affa38bae313a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96af069408b30f221730ca0613794f4100b6734b146c44b33c602af783772343 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae20655e26b9deae18a5bd9142daea8582c90e5d0202f70abb6aa8439d750356.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae20655e26b9deae18a5bd9142daea8582c90e5d0202f70abb6aa8439d750356.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
