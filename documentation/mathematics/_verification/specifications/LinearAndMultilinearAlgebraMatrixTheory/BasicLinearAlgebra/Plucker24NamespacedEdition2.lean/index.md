# Verification target: Plucker24 Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f084a63d7d104b969e1917d5581751063d5cffe1",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant998b6b1f5e09abe17f5c8a9eedb87bdd20ccc572f7e676a54ea3ccfb0766c909.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f084a63d7d104b969e1917d5581751063d5cffe1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant998b6b1f5e09abe17f5c8a9eedb87bdd20ccc572f7e676a54ea3ccfb0766c909.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant998b6b1f5e09abe17f5c8a9eedb87bdd20ccc572f7e676a54ea3ccfb0766c909.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [minor₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/minor.md) | 32 | `declaration-track:d4529651f7d5d70123225feee6fa52101ab91169bf38bbfc2e5e2ddfedd0e687` |
| 2 | `theorem` | [minor₂_eq_columnMinor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/minor-eq-columnminor.md) | 36 | `result-track:8cfec036eb86ca4301062affacf801a57f89fe6920a453cc101b88483188a9aa` |
| 3 | `theorem` | [orderedMinor_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/orderedminor-two.md) | 41 | `result-track:ad1e60372e1d38df7d1c88460d4334586b07d1e7ca3e41c10f6aaa42579e0431` |
| 4 | `theorem` | [minor₂_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/minor-swap.md) | 47 | `result-track:0fc4c638377b8ae23b8bb3952602780010c0ae4919d62f462e6b44da99a52018` |
| 5 | `theorem` | [minor₂_plucker](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/minor-plucker.md) | 53 | `result-track:6715af373c38aa845d07639e4b084e05c4d9ec948e65e22329d8e8bd65c95389` |
| 6 | `structure` | [PluckerCoordinates24](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/pluckercoordinates24.md) | 61 | `declaration-track:2a8bf4153d652e8a705ed05fab46f7dae1bfd4e7b4da87788c7a8d9ece9e7832` |
| 7 | `def` | [Compatible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/compatible.md) | 78 | `declaration-track:ac472e6ae680e3bf77ab2f85bac6a453f67f98843a352f7df403b1fa81973d43` |
| 8 | `def` | [StrictlyPositive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/strictlypositive.md) | 82 | `declaration-track:e5610b990f3e10ff84c0b5cc5c92c611771a67b9e752bedceba2d38745003ee5` |
| 9 | `def` | [Nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/nonnegative.md) | 86 | `declaration-track:114c0369b41fa975d86b3eff77f8d254b627dc0cbffe8474f796c056eb27c17d` |
| 10 | `def` | [ofMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/ofmatrix.md) | 90 | `declaration-track:468df03faa3becc673d0afb508ee21466634840ac4bebebd57c3ba94fceb2922` |
| 11 | `theorem` | [ofMatrix_compatible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/ofmatrix-compatible.md) | 95 | `result-track:1bafb402202cbc9bbeef5f2ea07b27ae44eaed30ac209e797f6b55385585d8fd` |
| 12 | `theorem` | [allOrderedMinorsPos_of_strictlyPositive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/allorderedminorspos-of-strictlypositive.md) | 100 | `result-track:b3b6351e4cf17b3b4d089ec8223c118a3ec1815917500a0d979a86b485449652` |
| 13 | `theorem` | [allOrderedMinorsNonneg_of_nonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/allorderedminorsnonneg-of-nonnegative.md) | 112 | `result-track:cededea152cc46d9226a37aff8fa9ca01cec350887f55e81ffc380676d0fb868` |
| 14 | `structure` | [Chart24](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/chart24.md) | 127 | `declaration-track:fd67220a93362a510a7a4563644db7a86cb9ca908eb040e4a53b36f60c6a4b01` |
| 15 | `def` | [matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/matrix.md) | 140 | `declaration-track:6517a742748edb111be98718ea0778a3ca19fda019d53b932e2a77501b8239e9` |
| 16 | `def` | [coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/coordinates.md) | 144 | `declaration-track:001683c0e37a716ad491a3f8c068b369ab46eff7ee980985e86069181e4ba2b4` |
| 17 | `theorem` | [coordinates_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/coordinates-eq.md) | 148 | `result-track:4dfbefaf137ae83aef705a297945ba612d6967d9a4b855fd22f0381f5a0bed72` |
| 18 | `theorem` | [pivot_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/pivot-eq-one.md) | 155 | `result-track:ccfacbdcdb97bbb1ab031326922100cd43e9bfa2f1e7ba4840671f206d62b3a8` |
| 19 | `def` | [Positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/positive.md) | 160 | `declaration-track:ff6684b39fcf54cac62cc680c93c899388130220454a074da6fe069f75d8e135` |
| 20 | `theorem` | [coordinates_strictlyPositive_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/coordinates-strictlypositive-iff.md) | 164 | `result-track:03a848c7774ecb702359927cef0a38d320b26a0b49b70ac3e2eae8c801950b52` |
| 21 | `theorem` | [coordinates_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/coordinates-injective.md) | 170 | `result-track:edbe057ad005d834c59983834750bc15f92eb7796c0b44ea12f7681d2f5b7db6` |
| 22 | `def` | [fromCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/fromcoordinates.md) | 180 | `declaration-track:b55e4acf5e335096dda00e5342c22393a05fa19673397f119e70779b409b5232` |
| 23 | `theorem` | [coordinates_fromCoordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/coordinates-fromcoordinates.md) | 184 | `result-track:94b08c7e19a7d96c84021a94217c84f98f062e6079537ca3c67ce429e34b2035` |
| 24 | `theorem` | [fromCoordinates_coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/fromcoordinates-coordinates.md) | 200 | `result-track:eed3dc30c8b822f93ec30e1dbf5d791a51ff92199b9687bdc445891d38181e52` |
| 25 | `theorem` | [normalized_recognition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/normalized-recognition.md) | 207 | `result-track:c74cf38458a6461867190b747072b0d548af7dc01d7522c104080b0ad8a6a724` |
| 26 | `theorem` | [positive_normalized_recognition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Plucker24NamespacedEdition2.lean/declarations/positive-normalized-recognition.md) | 220 | `result-track:aca438572239c667ad0288f01b1c2276265422cba3ae89d138031081c6717c3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=476163d44335e07fbad84664902e1e39acc94c9bec6f7f145e62f5cfefddc7bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant998b6b1f5e09abe17f5c8a9eedb87bdd20ccc572f7e676a54ea3ccfb0766c909.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Plucker24/Variant998b6b1f5e09abe17f5c8a9eedb87bdd20ccc572f7e676a54ea3ccfb0766c909.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
