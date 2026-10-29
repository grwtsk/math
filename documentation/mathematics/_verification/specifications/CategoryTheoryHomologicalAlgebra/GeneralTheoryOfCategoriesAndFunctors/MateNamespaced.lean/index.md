# Verification target: Mate Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f86f5a3beec8a3a1454b7b12f7b8fc5f3951bf3",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f86f5a3beec8a3a1454b7b12f7b8fc5f3951bf3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mateEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/mateequiv.md) | 77 | `declaration-track:63d43b631b2a064abe2b2c1ab653304a65446d7a454145adec25707c569cc111` |
| 2 | `def` | [leftAdjointSquare.vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/leftadjointsquare-vcomp.md) | 138 | `declaration-track:0a2bb38556ee48dccf7dad7c12547c69f20a4499a1d3b7cd36243a105ddfb175` |
| 3 | `def` | [rightAdjointSquare.vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/rightadjointsquare-vcomp.md) | 143 | `declaration-track:8f30b87cd314194b8c1be4aaed82e0a65c64314d9daa1466264d3f8958571725` |
| 4 | `theorem` | [mateEquiv_vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/mateequiv-vcomp.md) | 148 | `result-track:b402b36a8693e614d52b59370ac905fac6b162f04f87a5d1bcfadba1e64f07c1` |
| 5 | `def` | [leftAdjointSquare.hcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/leftadjointsquare-hcomp.md) | 195 | `declaration-track:c12a576a76f11a4cd0e0c66a2329266cc3f7e1dad3b87f2328d95f3908aadbbf` |
| 6 | `def` | [rightAdjointSquare.hcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/rightadjointsquare-hcomp.md) | 200 | `declaration-track:2554dd1d3056fd6ca2746f5121ab01f389acd419afe160024b45d0d7adf82b5c` |
| 7 | `theorem` | [mateEquiv_hcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/mateequiv-hcomp.md) | 205 | `result-track:08bc1263f843dac5e3140ee4ed8c54c1c61d3a0ab8a820cd9d54c2adaf4054e5` |
| 8 | `def` | [leftAdjointSquare.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/leftadjointsquare-comp.md) | 243 | `declaration-track:ba928ee209e1564d228846a4dd7016df26d243113d9ef0716139b474d10979fe` |
| 9 | `theorem` | [leftAdjointSquare.comp_vhcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/leftadjointsquare-comp-vhcomp.md) | 247 | `result-track:19a7f609889e5cd224b88e8cfa014f665b37e3ea03acc81bc5dec95799ce523b` |
| 10 | `theorem` | [leftAdjointSquare.comp_hvcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/leftadjointsquare-comp-hvcomp.md) | 250 | `result-track:d6a7f9f82d05b2c76d073d71938dfe03947bbef944a6a2b89ccf2a60188b33ae` |
| 11 | `def` | [rightAdjointSquare.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/rightadjointsquare-comp.md) | 270 | `declaration-track:fc217409702b1b1778f2c049f161be5231141ba5e0fca4fd98123199cb02397b` |
| 12 | `theorem` | [rightAdjointSquare.comp_vhcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/rightadjointsquare-comp-vhcomp.md) | 274 | `result-track:8b2023110bf3955b55f7ee43980c5801c308f10ff6c6644d47a5de345cef5106` |
| 13 | `theorem` | [rightAdjointSquare.comp_hvcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/rightadjointsquare-comp-hvcomp.md) | 277 | `result-track:ced4dad4fdc9191ea5614bc3167ed37e712abc1224c9e05584f2acc507153131` |
| 14 | `theorem` | [mateEquiv_square](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/mateequiv-square.md) | 292 | `result-track:c9df2752ffda4d18bb0a58a2357a9b0751adabdac6334506ec39807d078839ee` |
| 15 | `def` | [conjugateEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv.md) | 324 | `declaration-track:1a02a5bd99e1732cdcc46c71d68d0b69b322e1b56a1881667e6925859b1b60d2` |
| 16 | `theorem` | [conjugateEquiv_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-apply-source-edition-2.md) | 330 | `result-track:ae50046bca6a69c1a8bd56f54f997a7d89bc86693b301a7c60b10c96ae181adf` |
| 17 | `theorem` | [conjugateEquiv_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-apply.md) | 335 | `result-track:67732442230ad8a2781ddbf6ddbfe374c2f9ac4b8674be00ea42c1f28f669986` |
| 18 | `theorem` | [conjugateEquiv_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-symm-apply.md) | 342 | `result-track:20c483be564510563c065d37322fd0b03502e7c796456068d45105176023e904` |
| 19 | `theorem` | [conjugateEquiv_symm_apply'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-symm-apply-source-edition-2.md) | 347 | `result-track:b948bd293fbfe70974622d38a91d7427b1b8e8e1c839bcfc7aee94d754581d08` |
| 20 | `theorem` | [conjugateEquiv_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-id.md) | 355 | `result-track:98f63cae31c8d96d542250b3e77e7eed7197171c1ca53f0876edb0872582aaf8` |
| 21 | `theorem` | [conjugateEquiv_symm_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-symm-id.md) | 365 | `result-track:f1947b1f66c887c4bf95c4f5e8847c0dd2bfdc5795dc3f764d7722f738f8d026` |
| 22 | `theorem` | [conjugateEquiv_adjunction_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-adjunction-id.md) | 368 | `result-track:3ca661c3bd2638da9714408c4e398936bbb7e5747b1755ee94ca129c1df605ef` |
| 23 | `theorem` | [conjugateEquiv_adjunction_id_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-adjunction-id-symm.md) | 373 | `result-track:4b7473a95ae2de922d7ec7d8e93c3e30b44eeb4370f8be6e1d17ed2dab9d7c06` |
| 24 | `theorem` | [conjugateEquiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-comp.md) | 386 | `result-track:99b316f8e55fbb811b024bc1d5e9ec30d349dd359e2437a78a559ba255f18544` |
| 25 | `theorem` | [conjugateEquiv_symm_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-symm-comp.md) | 403 | `result-track:41e6e9ea3d7d55c595c96de89911c5b1d31bb7fb6287bbf0c050a38843a343d6` |
| 26 | `theorem` | [conjugateEquiv_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-comm.md) | 409 | `result-track:7be0ce970965873f38a70b5a99845bab58af4be313c3909988c21369bd0a07d5` |
| 27 | `theorem` | [conjugateEquiv_symm_comm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-symm-comm.md) | 413 | `result-track:a402141d9f785a4b01ac635848cfdfd33f71dd4bfc442409f463ab9e48f64c8d` |
| 28 | `instance` | [conjugateEquiv_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-iso.md) | 428 | `declaration-track:c9d63b82f4df0e6dbbc3683819f14b457cadb100a317a4808df453f2171a3bd9` |
| 29 | `instance` | [conjugateEquiv_symm_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-symm-iso.md) | 436 | `declaration-track:7c663cfb4b6a933ea3ec0496122b6e6164a64d3138c95b2a5d4ca2b8298dfe8b` |
| 30 | `theorem` | [conjugateEquiv_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-of-iso.md) | 444 | `result-track:929f87a7eed586ce1f5244bf8646fcc02308db4b4682179fa7133e13715c09d6` |
| 31 | `theorem` | [conjugateEquiv_symm_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-symm-of-iso.md) | 454 | `result-track:93bebfc1e8a9bf200dbe3b91d4df74e65d48996b84c550cadc8bedc9ce5da265` |
| 32 | `def` | [conjugateIsoEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateisoequiv.md) | 462 | `declaration-track:864d99c934f2c7e2adf455df7a98280d5f0292f3623f023b0266a66fb10ff414` |
| 33 | `theorem` | [iterated_mateEquiv_conjugateEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/iterated-mateequiv-conjugateequiv.md) | 502 | `result-track:c04aad8f19a25605beaca638d6d4aecfbb79f776628ad161c93c9f1c20bdb142` |
| 34 | `theorem` | [iterated_mateEquiv_conjugateEquiv_symm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/iterated-mateequiv-conjugateequiv-symm.md) | 508 | `result-track:6e4774f82236484b072c1e72519aa3145ab5edab8f54cc48c6cb5397b5eb19d4` |
| 35 | `def` | [leftAdjointSquareConjugate.vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/leftadjointsquareconjugate-vcomp.md) | 524 | `declaration-track:ea6c848ffc2832fe4bad19609cc16511de223949f6c732b581bc06da85f08317` |
| 36 | `def` | [rightAdjointSquareConjugate.vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/rightadjointsquareconjugate-vcomp.md) | 529 | `declaration-track:8404ebe9c86479fe267bc96aaf8a4b3e32c1e86e1d1e8acf2655c7b0c2fee86c` |
| 37 | `theorem` | [mateEquiv_conjugateEquiv_vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/mateequiv-conjugateequiv-vcomp.md) | 534 | `result-track:02395d28411a57a52c0ad0436477322ec3796e84d67f246a7c97f65ac380148e` |
| 38 | `def` | [leftAdjointConjugateSquare.vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/leftadjointconjugatesquare-vcomp.md) | 562 | `declaration-track:2cc186e2ed82c966233f624200ed9e86e568eb57edb0cd7a0904bded77be663c` |
| 39 | `def` | [rightAdjointConjugateSquare.vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/rightadjointconjugatesquare-vcomp.md) | 567 | `declaration-track:ebf8ea782545e0a5110434b816b8f7b9a91e4a97d41e2fb13e1be2ba05570ca1` |
| 40 | `theorem` | [conjugateEquiv_mateEquiv_vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MateNamespaced.lean/declarations/conjugateequiv-mateequiv-vcomp.md) | 572 | `result-track:043085d68403ed0caafc83017335db0469edbbec5e5076a12726f91152ec04e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d9cec984253d9efebe551ffed7adbf209c3e020e9ae2e3da26fe6f02fe17261 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Mate/Variant77194c0bc617ca9fb7ff4af15123e56f1fcd39912c3e3438df6323e5ada469f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
