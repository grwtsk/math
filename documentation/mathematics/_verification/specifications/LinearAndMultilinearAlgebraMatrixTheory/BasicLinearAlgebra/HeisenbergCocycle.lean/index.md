# Verification target: Heisenberg Cocycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31342111b6ab5d6376be16c6dde2f9fe4a371121",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31342111b6ab5d6376be16c6dde2f9fe4a371121`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ModularBoundary.Heisenberg` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TransferInstance` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Vector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/vector.md) | 28 | `declaration-track:61c296694f78cc8a92c448677d9ec4ca66618c1baa6de4a5d98881ac6c94e321` |
| 2 | `def` | [determinant](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/determinant.md) | 30 | `declaration-track:12d74d6361b4e99e649f1cb8a5d6643404e2613c9fd1fe33aeef1e5622bcc1fe` |
| 3 | `def` | [beta](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/beta.md) | 32 | `declaration-track:0f82b6e055e232d3773f8e88da6fe32a04961d67603d5c6d3e16159051183eb7` |
| 4 | `theorem` | [beta_cocycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/beta-cocycle.md) | 34 | `result-track:4dad96ee17c17d91611a112f8b15e0bc1e07603d03700bdb673cff2ac06a6fb9` |
| 5 | `theorem` | [beta_antisymmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/beta-antisymmetric.md) | 39 | `result-track:47320fe22bd5d03058029a17f4f21dd622454bdb60814de0cd25cd6f498e511f` |
| 6 | `structure` | [Element](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/element.md) | 44 | `declaration-track:135f23e819e97e347c662bbc8952297266cf9005f54c72b6338c418d7ecf7f5f` |
| 7 | `def` | [multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/multiply.md) | 50 | `declaration-track:929add6b9e449c3da5e1f01b93f6e088a68cc869135b95a7fae50a13258124a5` |
| 8 | `def` | [identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/identity.md) | 53 | `declaration-track:529b34dbe9bb8beab2523a0ea349f3490170df929655305e6758fbf15adcf81b` |
| 9 | `def` | [inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/inverse.md) | 55 | `declaration-track:cc9124e5a965b15082a760c98b8841d05c46412363fcd9b5c357b77e0b6ae6ec` |
| 10 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/instance.md) | 57 | `declaration-track:b3bdcb3e9c822775cc4fa3ea3ea4590396d9876dfa3ca494c931b02de3586836` |
| 11 | `theorem` | [mul_base](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/mul-base.md) | 89 | `result-track:7c35a0ed732fd3ab3832cff4552fc374871c728e27e971bcc02d57d1dd0870f5` |
| 12 | `theorem` | [mul_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/mul-center.md) | 90 | `result-track:01a06bedce82c6626768e20ae9345d701be6e096be8aec12bf4d1361b7f09a7e` |
| 13 | `theorem` | [inv_base](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/inv-base.md) | 92 | `result-track:e0f186189866df3faa9288cc84c8f25c480b50362a55a5e872a95a082fcfe0d6` |
| 14 | `theorem` | [inv_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/inv-center.md) | 93 | `result-track:3ee053e6fb8dd19b93af887ff0e731d57a34a8d2282f0b1f50dfbdaf13a461a0` |
| 15 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrix.md) | 98 | `declaration-track:2b202ec3e7788386a4de92b602628adf89c942eed35850ff0c80d699a8081f79` |
| 16 | `theorem` | [matrix_multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrix-multiply.md) | 103 | `result-track:d5dbfdf2c7f39ada3b68d4e95c33121e4f99b14433016d0dabb8bf95ef8eedfb` |
| 17 | `theorem` | [matrix_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrix-injective.md) | 110 | `result-track:68df1efd2ebcec017256afe4a41442c9c5180c1ff5e9544b78babd8bcdcab963` |
| 18 | `theorem` | [matrix_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrix-one.md) | 124 | `result-track:ba05e30287c9c05450faf57b063e76c072e15cfb0a5796adfc0851fc0a586f05` |
| 19 | `def` | [matrixUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrixunit.md) | 130 | `declaration-track:3176317fa8108df66607dfbafecd7b498b81f0341b639677ed51f77d52563be5` |
| 20 | `def` | [matrixHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrixhom.md) | 136 | `declaration-track:f5f9c7eec72130bcc5d536a2e52bbb0affaca03d76c7f3d8a36bcd605d2d8e27` |
| 21 | `def` | [central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/central.md) | 141 | `declaration-track:3855b26b0e5098b113028a69a05dde9d8674c4acc62f577aef8186601865a47d` |
| 22 | `def` | [firstAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/firstaxis.md) | 143 | `declaration-track:6947b5f0246345d917e79bab59d5995b9a6de8a067b2b07a0c252f9d4e95a551` |
| 23 | `def` | [secondAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/secondaxis.md) | 145 | `declaration-track:b699d5168b3cbee3ef8fd756c95101f137b6d775bf5f05fc43f7d25340719489` |
| 24 | `theorem` | [matrixHom_firstAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrixhom-firstaxis.md) | 148 | `result-track:b6dd1b29c9afea451501ac00e313a6423ef4cb336d589364cbe01e568a4635f1` |
| 25 | `theorem` | [matrixHom_secondAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrixhom-secondaxis.md) | 156 | `result-track:33eeeb308cfdd5b83d27e05520c231e449eb4ea2c18f9ea9e1b947dd90c03279` |
| 26 | `theorem` | [matrix_central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrix-central.md) | 163 | `result-track:c8442fa7aa25a4da1c7c8109cfe822ba76506a97553bae4936ff238df3bd4489` |
| 27 | `theorem` | [commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/commutator.md) | 168 | `result-track:06ce5a0fbd302321bbe25157339573defb81ea047b6cc82fc447b1a73b4254ec` |
| 28 | `theorem` | [matrix_commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/matrix-commutator.md) | 174 | `result-track:b79a83f71359f29659aa30af65d79f439bd0f19e254041d3bae2faea65aeb7c5` |
| 29 | `def` | [betaChanged](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/betachanged.md) | 182 | `declaration-track:660f319bfdf01b04ea8262e2ba0f41f5b7f08bef3b02dad37e0a6375ccdc9c62` |
| 30 | `theorem` | [betaChanged_cocycle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/betachanged-cocycle.md) | 185 | `result-track:f6b37199632dc1705293fbf764c6a715f3df5e4be74e7a74028d6ff2a537178f` |
| 31 | `theorem` | [betaChanged_commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/betachanged-commutator.md) | 192 | `result-track:98b8b98bd01a9ec8df54ecadf6abfffb02cdbde3e1b3567faeb51e06d75b6d3a` |
| 32 | `def` | [changedMultiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedmultiply.md) | 198 | `declaration-track:51f7f56db2ed28f3b9c436fa086bd7e27bd1847daafa375761289eee2059cb9f` |
| 33 | `def` | [changedInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedinverse.md) | 201 | `declaration-track:a05dbfb135c67dbbb0402f083f90a0ec5cd0d64a2bca1850acc29d7cc49c657d` |
| 34 | `theorem` | [changedMultiply_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedmultiply-assoc.md) | 204 | `result-track:32e59ff3e94dead98d3f9bcbc291fa2f24b171a87031afce1530f75c2a9bd4b2` |
| 35 | `def` | [sectionEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/sectionequiv.md) | 216 | `declaration-track:01870dd91dbdfe345e615719981ebd1d995080ddbbc6dd2447c9ab8c06f64721` |
| 36 | `theorem` | [sectionEquiv_multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/sectionequiv-multiply.md) | 222 | `result-track:500105670e208ff88edfde1bd317c743b3744ab0153882544c0abf23c024cf3d` |
| 37 | `theorem` | [sectionEquiv_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/sectionequiv-identity.md) | 228 | `result-track:6e6eefdbf06691eaf293adc122c7814f3f1bf6bdd527c00347128869c25118b9` |
| 38 | `theorem` | [sectionEquiv_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/sectionequiv-inverse.md) | 233 | `result-track:e168c080dd952ffb1ce76f525b24d92c0dd3e0c98d061b71448b6111a8d6a2da` |
| 39 | `def` | [changedGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedgroup.md) | 240 | `declaration-track:2ec22f90c25d2ebedd50682886d466aa6519a441d9d4ac9bb70dda2e9f6f8adc` |
| 40 | `theorem` | [changedGroup_multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedgroup-multiply.md) | 243 | `result-track:01120a8562f384d258c0fe1212308f62b134acd3e5e29252f85d9cdcd31c38b7` |
| 41 | `theorem` | [changedGroup_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedgroup-identity.md) | 249 | `result-track:d9aaf5665bcff5b22d26425f6f20c6c684d53c28cbf5dbec0b026eb9e4a16510` |
| 42 | `theorem` | [changedGroup_inverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedgroup-inverse.md) | 256 | `result-track:bdcfcedc3fde5f9c47f80797a74e918990f522df271653daf1a4957b4158a871` |
| 43 | `def` | [sectionMulEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/sectionmulequiv.md) | 264 | `declaration-track:9bb5105307f56e4a701ed287ff5af8ac8626404c050d46295e33bf56ed38719c` |
| 44 | `theorem` | [sectionEquiv_central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/sectionequiv-central.md) | 269 | `result-track:8297fbdb53fa8a719f4c81218fced7bc59b2aa5e332be13db953afd61ecab8f9` |
| 45 | `def` | [changedCommutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedcommutator.md) | 273 | `declaration-track:1b696d864d2cc5357526201d71a7bbdf52f1cf0ad26a280dce26644038a5aee2` |
| 46 | `theorem` | [changedCommutator_eq_central](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedcommutator-eq-central.md) | 279 | `result-track:96a84d6767f13cacc34913c2d32fb43b2787039f8eab61eb79f393b46c9f6535` |
| 47 | `def` | [changedMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedmatrix.md) | 288 | `declaration-track:99d93edbcb639ceeffcca61b1bb50abc5c3b6ecc09ca63c6e8722c26baa406de` |
| 48 | `theorem` | [changedMatrix_multiply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedmatrix-multiply.md) | 291 | `result-track:8cc3272bdb92048fa7f7645abbfe38bd39f8528793807bf9eff2fcbbb3ab92d7` |
| 49 | `theorem` | [changedMatrix_commutator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changedmatrix-commutator.md) | 296 | `result-track:c3ac801b2231ad8ace40adfba20a530458954a89d3fe2feed5fd414ba2a74118` |
| 50 | `theorem` | [centralCharacter_section](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/centralcharacter-section.md) | 304 | `result-track:9d654b9851c659c47590d7f591b5809f452580af36d5e9188767732ba14e2b07` |
| 51 | `theorem` | [changed_tally_commutator_phase](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HeisenbergCocycle.lean/declarations/changed-tally-commutator-phase.md) | 314 | `result-track:e165a25c032ec9c1c3a75428a19e14b92bd7fdf76ab947d64720afde3bf0f1a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df6082ba3045216d88d16bb5ce04743f5c419783207c9deb63c328837bd845ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/HeisenbergCocycle/Variantfb6054bf8e0b812ea4fbc73a25340e27011eaca651b6fba07ce4c52ec57102be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
