# Verification target: Normal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d04a469364b8ad152f56d6f0a411df3dad30eda1",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d04a469364b8ad152f56d6f0a411df3dad30eda1`.

Source path: `GRWTSK/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Adjoin` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Tower` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Solvable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Normal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal.md) | 46 | `declaration-track:d2ec0940d52b63f9a6dcc4954ebf5c3f7946a0b82739d83881e6c051c849345a` |
| 2 | `theorem` | [Normal.isAlgebraic](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-isalgebraic.md) | 53 | `result-track:4941ea7e2889f03014af6b5ce897dd4c1fe3f472dbcefdbf2f4f903a7f6e61ef` |
| 3 | `theorem` | [Normal.isIntegral](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-isintegral.md) | 57 | `result-track:dc689a1c98a18886c0d479175d9690df53cc2ffcd0d62d2320a0f9c0d7cbd780` |
| 4 | `theorem` | [Normal.splits](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-splits.md) | 61 | `result-track:4f88fc2c952097f4bc5d87a18e0a5cd7871bb31f3abd823b09b1eebaae6595f6` |
| 5 | `theorem` | [normal_iff](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-iff.md) | 65 | `result-track:6111d098000eefcf6389c96077047990c2d3612ec1611f536fc23fc3d07be457` |
| 6 | `theorem` | [Normal.out](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-out.md) | 70 | `result-track:e13858c674888df4aeac9eff8f0698190db1125b770855438aecb7e800b38dfb` |
| 7 | `instance` | [normal_self](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-self.md) | 76 | `declaration-track:ea8cd5e07ed120bd37eb5a483ff4b18fbe6002ef0027f6cac49d30f5cfd2f30f` |
| 8 | `theorem` | [Normal.exists_isSplittingField](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-exists-issplittingfield.md) | 85 | `result-track:0d204e8c5290082048142ed29e3ea72dfb1594fe0f4610efd292a739a9a4d672` |
| 9 | `theorem` | [Normal.tower_top_of_normal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-tower-top-of-normal.md) | 107 | `result-track:9e83a07262b7f34c4cbbfb5ddc5d301a5c43fb01339635dc448f221507cb6155` |
| 10 | `theorem` | [AlgHom.normal_bijective](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-normal-bijective.md) | 119 | `result-track:4ed751d26a93b350aeb04297093e6d7b88ecdaab537ede021352e5ac2ec29cd5` |
| 11 | `theorem` | [Normal.of_algEquiv](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-of-algequiv.md) | 141 | `result-track:d5f009637079faa55436f79f914f8a8e3143a76f4cc63f5b9ba11300b520f17c` |
| 12 | `theorem` | [AlgEquiv.transfer_normal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/algequiv-transfer-normal.md) | 157 | `result-track:9900eb0a98abc1cc8403f356c2c74db977b8a058d89516ccd7ca2911f0429d62` |
| 13 | `theorem` | [Normal.of_isSplittingField](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-of-issplittingfield.md) | 169 | `result-track:53959e5e99652ab9bbe068fcab30dc709e3a87fc79f7dbfe1109b1d631689f90` |
| 14 | `instance` | [normal_iSup](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-isup.md) | 255 | `declaration-track:595ec2ec03d851116357235693609b298d791c2aad6ad61e1d2ca951b4b0733b` |
| 15 | `instance` | [normal_sup](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-sup.md) | 275 | `declaration-track:e2b0fbbf2590fbacf53bdb007fb5c522fca15c61d29a977940eda8b54b754eb8` |
| 16 | `theorem` | [restrictScalars_normal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/restrictscalars-normal.md) | 285 | `result-track:dae459477d2d95eeadfac9418611d51b119f059b3cb26e66ecf4652760f8fb55` |
| 17 | `def` | [AlgHom.restrictNormalAux](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-restrictnormalaux.md) | 303 | `declaration-track:2a8ff4529ee03383ae1c8075846163aaf5b67e17e376d152ec1e502e9b21edf3` |
| 18 | `def` | [AlgHom.restrictNormal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-restrictnormal-source-edition-2.md) | 325 | `declaration-track:14a2ea8a513f602a2b297cf7f5717deacddb7886be50810642c1e6da466f90ab` |
| 19 | `def` | [AlgHom.restrictNormal'](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-restrictnormal.md) | 332 | `declaration-track:118d0a66e59690f89b4d1da92b1d75edbf995474bb5cfa19b19bf5ee296c754b` |
| 20 | `theorem` | [AlgHom.restrictNormal_commutes](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-restrictnormal-commutes.md) | 337 | `result-track:f06adeebb78d98966496a90a915c4fc91e067a34db27188d39b6b088bf4625d3` |
| 21 | `theorem` | [AlgHom.restrictNormal_comp](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-restrictnormal-comp.md) | 344 | `result-track:582e9fece13aac1d3c49b089c4ac0b68046f75027baaf8b2dfde4bc516615efb` |
| 22 | `theorem` | [AlgHom.fieldRange_of_normal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-fieldrange-of-normal.md) | 351 | `result-track:8fae455b41bcceb0bfa4ef9484ac383ce47c3d601bbb7cefed43433f957cff43` |
| 23 | `def` | [AlgEquiv.restrictNormal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/algequiv-restrictnormal.md) | 362 | `declaration-track:840f5728692c3c18729474b9ca7265d5723b5d0154b5f68f593b38cdf13c9872` |
| 24 | `theorem` | [AlgEquiv.restrictNormal_commutes](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/algequiv-restrictnormal-commutes.md) | 367 | `result-track:12fe8f8c5ccd55cf8790dde204222f64ed2bdb5c94df9e1ad93c6e11896eadc4` |
| 25 | `theorem` | [AlgEquiv.restrictNormal_trans](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/algequiv-restrictnormal-trans.md) | 372 | `result-track:66ba4d5934c363213466658e4b3fabdc875b9e9df4d0a4be852dd3a3caa79c70` |
| 26 | `def` | [AlgEquiv.restrictNormalHom](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/algequiv-restrictnormalhom.md) | 380 | `declaration-track:8ba3dc7f3b0bdf802448a9c96a91abd1e2bff5d4b0bd9da1682b1c4290d8963e` |
| 27 | `def` | [Normal.algHomEquivAut](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/normal-alghomequivaut.md) | 389 | `declaration-track:281061757cd40a80572e507c55bcd16fa5694a22a1f99061316b28ab249cfddb` |
| 28 | `def` | [AlgHom.liftNormal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-liftnormal.md) | 412 | `declaration-track:ee954581654338f7594ae1f31f1cf45f7afbc64729311b1fefefd266a5d27f30` |
| 29 | `theorem` | [AlgHom.liftNormal_commutes](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-liftnormal-commutes.md) | 428 | `result-track:75459579fda5a49fe9c9a103dbf4dadb8e3ff75aa2154d2c3547f181a46ae4c1` |
| 30 | `theorem` | [AlgHom.restrict_liftNormal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/alghom-restrict-liftnormal.md) | 436 | `result-track:a088ecc3eea9c9d7bc61f586d9aa105bec6a67e6fc3ad9064281d8c5daeeecf8` |
| 31 | `def` | [AlgEquiv.liftNormal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/algequiv-liftnormal.md) | 445 | `declaration-track:d0b9a81234f0bfd464541ab00bc1619522fa6e5ff4af3d0bd6268358a2a61b56` |
| 32 | `theorem` | [AlgEquiv.liftNormal_commutes](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/algequiv-liftnormal-commutes.md) | 450 | `result-track:598bb94586f7b1764dd700bc83358f4b84ac6e204ea5b742ead46d51b72ca596` |
| 33 | `theorem` | [AlgEquiv.restrict_liftNormal](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/algequiv-restrict-liftnormal.md) | 456 | `result-track:14cc5d199f60ff3ec061dbf969cdc3a9de3d0ab1c7b603cfd582b74857210709` |
| 34 | `theorem` | [AlgEquiv.restrictNormalHom_surjective](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/algequiv-restrictnormalhom-surjective.md) | 463 | `result-track:002988d70bdf567683e977a9e212e1f5b39c6e39d1098e86687cf43162073107` |
| 35 | `theorem` | [isSolvable_of_isScalarTower](../../../../FieldTheoryAndPolynomials/NormalNamespaced.lean/declarations/issolvable-of-isscalartower.md) | 470 | `result-track:0790b43686bfff87d67bd733ff6e47106bef9ca23a407de08a5addee48756934` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=088dadf946dd6944727c548463827dfbbf1affabc7883f99eed222198226c288 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean","GRWTSK/_verification/specifications/Algebra/Normal/Variant598de2733025094ec2692c1c8b0431b2a655784d73638cbe678a8de01f1b793b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
