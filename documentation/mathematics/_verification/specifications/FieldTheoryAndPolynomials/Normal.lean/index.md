# Verification target: Normal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "975c3a1042f26579b615f68cc75c65736c9c4946",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/Normal.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/Normal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `975c3a1042f26579b615f68cc75c65736c9c4946`.

Source path: `GRWTSK/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Adjoin` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Tower` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Solvable` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Normal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal.md) | 38 | `declaration-track:114861e4cccbb940e7adde9a6166ed8319e50702d31a97b135828fedbc3f4868` |
| 2 | `theorem` | [Normal.isAlgebraic](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-isalgebraic.md) | 45 | `result-track:0288ca2d59df1fcb24b53f469993a75773cfa6295129efdfa8b757f913bc87e4` |
| 3 | `theorem` | [Normal.isIntegral](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-isintegral.md) | 49 | `result-track:2aefcdc7935a61e2c115ece80f6f19da9770b9a23417ded0b795af10c5cf631a` |
| 4 | `theorem` | [Normal.splits](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-splits.md) | 53 | `result-track:8653bf958e2d0089aae65aad71fc5644b0ad1546d67e76f17b4a29389f9bdcbd` |
| 5 | `theorem` | [normal_iff](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-iff.md) | 57 | `result-track:16e1efe9cddcd2cc917e8202a5235a3921610652de81a0a884cebace7309eb42` |
| 6 | `theorem` | [Normal.out](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-out.md) | 62 | `result-track:1cc241c848c4b7778c8803aa75539d4cd1ef083a603b21b8465bf608002f991b` |
| 7 | `instance` | [normal_self](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-self.md) | 68 | `declaration-track:bb89beba1e3a41907351199817dd3fcb699aa31b614ededc333da10e7617ff1e` |
| 8 | `theorem` | [Normal.exists_isSplittingField](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-exists-issplittingfield.md) | 77 | `result-track:12b35fb7f3bbd6cc6ecc962fbb65e5ccbef2a93500ecdb921c8153a881ca452c` |
| 9 | `theorem` | [Normal.tower_top_of_normal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-tower-top-of-normal.md) | 99 | `result-track:e31fde3633724555903321de855bf3a83e220ffdc5121542196added3e32418e` |
| 10 | `theorem` | [AlgHom.normal_bijective](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-normal-bijective.md) | 111 | `result-track:5371ee50c35c9aa98b9cde0a92c60036694f45c48428472e0108624c58d624bd` |
| 11 | `theorem` | [Normal.of_algEquiv](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-of-algequiv.md) | 133 | `result-track:f1f3b08cb37adfb04a1e6f7bd569cc0d47995e038ca1b263ca01ccd9647c7526` |
| 12 | `theorem` | [AlgEquiv.transfer_normal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/algequiv-transfer-normal.md) | 149 | `result-track:b6fdad85082863522fa83a082f35f175872b6d1eac2df52587ab444035f6c279` |
| 13 | `theorem` | [Normal.of_isSplittingField](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-of-issplittingfield.md) | 161 | `result-track:f77d1af4ddb3a0c9ec859ad5deb017582df87073856b791f7e48d68c04735b64` |
| 14 | `instance` | [normal_iSup](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-isup.md) | 247 | `declaration-track:9a2ffaa63e47e22a5bf736796b2da6424398ba137a8e73a1e0551ad38481adab` |
| 15 | `instance` | [normal_sup](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-sup.md) | 267 | `declaration-track:6b59c06d4e7450c1df7efb9550accb8a294de1909452586e83900e7550cc4fa6` |
| 16 | `theorem` | [restrictScalars_normal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/restrictscalars-normal.md) | 277 | `result-track:33b681aa214a697f21f571562cd790c33719f1c99fe6f3553fd0d31cab02c337` |
| 17 | `def` | [AlgHom.restrictNormalAux](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-restrictnormalaux.md) | 295 | `declaration-track:b8fb3991a015e4735ec8a9cede0f62dddb5beca5395fd7edd3499fb241bee59a` |
| 18 | `def` | [AlgHom.restrictNormal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-restrictnormal-source-edition-2.md) | 317 | `declaration-track:f1d105195684411037f41092640136935f52c562c4c0d93b6900360da6af1d6d` |
| 19 | `def` | [AlgHom.restrictNormal'](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-restrictnormal.md) | 324 | `declaration-track:cb18352934735e2ef0011f7ee370e717487aac73e195a7c8b127287b891ed56e` |
| 20 | `theorem` | [AlgHom.restrictNormal_commutes](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-restrictnormal-commutes.md) | 329 | `result-track:11cb9c768c828837bfb467ae5763cc4c4b8c264ef431bfb394fa3cf6096741a5` |
| 21 | `theorem` | [AlgHom.restrictNormal_comp](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-restrictnormal-comp.md) | 336 | `result-track:2ef52ea1848ab1501b8e3d1c26f148b0ad59f14b0c009a311b707ec083ebb2b6` |
| 22 | `theorem` | [AlgHom.fieldRange_of_normal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-fieldrange-of-normal.md) | 343 | `result-track:b72c214e28eabf16f75df58a57ce50a4ab638853301c68592c45a9533f5bb4a7` |
| 23 | `def` | [AlgEquiv.restrictNormal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/algequiv-restrictnormal.md) | 354 | `declaration-track:ba16ca6af18742317840f571af70cc2e903750162d14c013e937f0ad1324cf8e` |
| 24 | `theorem` | [AlgEquiv.restrictNormal_commutes](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/algequiv-restrictnormal-commutes.md) | 359 | `result-track:a25450720e6572cd32a2451df6342c50f236209fd94a321e07be62457b5bc397` |
| 25 | `theorem` | [AlgEquiv.restrictNormal_trans](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/algequiv-restrictnormal-trans.md) | 364 | `result-track:dd9b8b4bc8ac33c10be59307d61aaecbd82f25e360b461abb50fa95700c9b115` |
| 26 | `def` | [AlgEquiv.restrictNormalHom](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/algequiv-restrictnormalhom.md) | 372 | `declaration-track:d25e5de4a787ad53f6c1b4e8bdddc4aacda5ee73c50a3e3f72a942271fb67b47` |
| 27 | `def` | [Normal.algHomEquivAut](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/normal-alghomequivaut.md) | 381 | `declaration-track:40a4ace19e667b592d4091af5ba88df1fa6cbf1b3644fded4a246fe6b1d2a9e9` |
| 28 | `def` | [AlgHom.liftNormal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-liftnormal.md) | 404 | `declaration-track:44a7859f011d35c9fba609fd0c26b330538f581b4719fa3382d0031f8fab021b` |
| 29 | `theorem` | [AlgHom.liftNormal_commutes](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-liftnormal-commutes.md) | 420 | `result-track:cb86b15e4391d5083f16c0fffe3f53b34c4f846c7368b66bcfa7b7ee41d026f9` |
| 30 | `theorem` | [AlgHom.restrict_liftNormal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/alghom-restrict-liftnormal.md) | 428 | `result-track:1dff6694473d7efee744dd6aae8ed20758db7ad30d6571e2f70427486478dcb1` |
| 31 | `def` | [AlgEquiv.liftNormal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/algequiv-liftnormal.md) | 437 | `declaration-track:f009344f47dce4a48e9af18a716367110612aee217c9a7c8e7797353eefb693a` |
| 32 | `theorem` | [AlgEquiv.liftNormal_commutes](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/algequiv-liftnormal-commutes.md) | 442 | `result-track:df8eb9795805b048452ea07ef20cd1c9c92dc51ca0cc33753115ad931d2d9be9` |
| 33 | `theorem` | [AlgEquiv.restrict_liftNormal](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/algequiv-restrict-liftnormal.md) | 448 | `result-track:595800cf921a23ed317927bd7f9894992faee6d7f9959e18097f73e538049db9` |
| 34 | `theorem` | [AlgEquiv.restrictNormalHom_surjective](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/algequiv-restrictnormalhom-surjective.md) | 455 | `result-track:0c60d4f569a71eac47c4a998f591581ead5bed095a070dc8595a360949a2fafb` |
| 35 | `theorem` | [isSolvable_of_isScalarTower](../../../../FieldTheoryAndPolynomials/Normal.lean/declarations/issolvable-of-isscalartower.md) | 462 | `result-track:cb0ae5e47f73407bebad75fd1dcbd1b067ee797866847e054d627231eb0b5d26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57998b56752b11b7c5ace68ff03eb6b9db25e5b277746b89fa2b7fe8c5f6a848 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean","GRWTSK/_verification/specifications/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
