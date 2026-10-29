# Verification target: Frobenius Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbb828e90c7076f21c26441116d3d5c3c839eeb6",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Frobenius/Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbb828e90c7076f21c26441116d3d5c3c839eeb6`.

Source path: `GRWTSK/Algebra/GroupTheory/Frobenius/Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Frobenius/Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [frobenius_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/frobenius-def.md) | 36 | `result-track:e78c6df4c34ccdd8d0be5dc4e6302e094505ec251bfb102b805b731ab9b87033` |
| 2 | `lemma` | [iterateFrobenius_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iteratefrobenius-def.md) | 38 | `result-track:d649f2639450f33a3f078e2b2ae36b66a620648f4ea49a5fda285d7062eb3532` |
| 3 | `lemma` | [iterate_frobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iterate-frobenius.md) | 40 | `result-track:ec3a2a983b1d3273d8d7ce470e4b5330e05d5871ca817897b958b40501b25b18` |
| 4 | `lemma` | [iterateFrobenius_eq_pow](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iteratefrobenius-eq-pow.md) | 44 | `result-track:62f4aca53d4f4aff34feb75c77bdc5eb05b78ab8d2c7c0344d3ad763a35165d7` |
| 5 | `lemma` | [coe_iterateFrobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/coe-iteratefrobenius.md) | 47 | `result-track:4f0d699af2218f5c8f5b8fe76ab9a812d93f0f5cf6b2333bf0c22615ad60b3c9` |
| 6 | `lemma` | [iterateFrobenius_one_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iteratefrobenius-one-apply.md) | 50 | `result-track:d0ad80dbaa10ad089ef7a757439be5b845c710eac2b26f24e8dd0c6f1fbb20f2` |
| 7 | `lemma` | [iterateFrobenius_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iteratefrobenius-one.md) | 54 | `result-track:cea4f2e59e335b462c8a71ea2482aa25a04db8ddc53951dd20ffe0a8756d6425` |
| 8 | `lemma` | [iterateFrobenius_zero_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iteratefrobenius-zero-apply.md) | 57 | `result-track:19e8f5ab384dea8d9f9015df8a49e0c51b6be0f5adda28c1a1c26ef71fbb7b07` |
| 9 | `lemma` | [iterateFrobenius_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iteratefrobenius-zero.md) | 61 | `result-track:9fc8c7fdcf0a7e8def0f245b7057d5bbef52199b4c09dc23804f19e9a2084844` |
| 10 | `lemma` | [iterateFrobenius_add_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iteratefrobenius-add-apply.md) | 64 | `result-track:83c1c76d4e8e97684e6e93464f6cf5a56596c5229e987494ba23be04b184d635` |
| 11 | `lemma` | [iterateFrobenius_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iteratefrobenius-add.md) | 68 | `result-track:9cf3fbc6a65a042a76cfb04046aae4b4979320d2c98a078f480fcff01fb23716` |
| 12 | `lemma` | [iterateFrobenius_mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/iteratefrobenius-mul-apply.md) | 72 | `result-track:847d33927153d3c74a32b27c07fac6f9911240f7e1b0dbf378ff4aaa43f7ce13` |
| 13 | `lemma` | [coe_iterateFrobenius_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/coe-iteratefrobenius-mul.md) | 76 | `result-track:97346a97448942ef7677361538787e5a573ffcd6a2de2a58cd4299861e14e095` |
| 14 | `lemma` | [frobenius_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/frobenius-mul.md) | 81 | `result-track:b815aee03e52047109463871caaf1ece5e3ce0a6fd7f5dbceb92138bc9f968fd` |
| 15 | `lemma` | [frobenius_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/frobenius-one.md) | 84 | `result-track:faff283771aedd84cfbcdffbbcc6f02478653b58caf3307b5d004bdd49d55e7b` |
| 16 | `lemma` | [MonoidHom.map_frobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/monoidhom-map-frobenius.md) | 86 | `result-track:a834d611ca552e35c73961a2fa3ca55f9cdfc4a44d7d2892c11d8fb14ac75bac` |
| 17 | `lemma` | [RingHom.map_frobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/ringhom-map-frobenius.md) | 87 | `result-track:6c169d174f1fa5ef973517638d760582ec5d2e375b90d04a9721210cdd2cb55a` |
| 18 | `lemma` | [MonoidHom.map_iterate_frobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/monoidhom-map-iterate-frobenius.md) | 89 | `result-track:7559f5736d0342c278a65000b78f2592014273f98df1bb860bb91f78ed990a0f` |
| 19 | `lemma` | [MonoidHom.map_iterateFrobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/monoidhom-map-iteratefrobenius.md) | 93 | `result-track:54c287a19dd597ad98208e0216bd921bfa1d87b0c844d7af8f1e4eb65f121e02` |
| 20 | `lemma` | [RingHom.map_iterate_frobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/ringhom-map-iterate-frobenius.md) | 97 | `result-track:bd556dd69f4836ac3e06e258a3ca093d976e8959f13c359a29408c0124b4dd95` |
| 21 | `lemma` | [RingHom.map_iterateFrobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/ringhom-map-iteratefrobenius.md) | 101 | `result-track:529179b675d0c6fd449dfb4ce2450572677a186c26b1e108e6d531a8590bd6a9` |
| 22 | `lemma` | [MonoidHom.iterate_map_frobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/monoidhom-iterate-map-frobenius.md) | 105 | `result-track:1ed6d797a5c336875b0870145ed91327b69fa178e63e3e75e9eca0388c89dced` |
| 23 | `lemma` | [RingHom.iterate_map_frobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/ringhom-iterate-map-frobenius.md) | 109 | `result-track:c38e4354343df41b2898540a4b08af6f2ea345d68832a0310fa3f42815519b23` |
| 24 | `lemma` | [RingHom.frobenius_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/ringhom-frobenius-comm.md) | 113 | `result-track:a59a38f81d2394fdf60399a9c05dddc7d9b63164760b2b9b1044547a67c9bcc5` |
| 25 | `lemma` | [RingHom.iterateFrobenius_comm](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/ringhom-iteratefrobenius-comm.md) | 117 | `result-track:1977acdc3fa17a4b854141b0ca6dfe2e99260badad3e475e18a5497be3987093` |
| 26 | `def` | [LinearMap.frobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/linearmap-frobenius.md) | 124 | `declaration-track:b1338caa1ca805dfeb5a8f1846b4ddbd9978f6f389718304deac267050f88322` |
| 27 | `def` | [LinearMap.iterateFrobenius](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/linearmap-iteratefrobenius.md) | 130 | `declaration-track:9c0b7c4eb21ed8a6b5dbaa72cbe1e0393cd7bacc5bcf64f79b3ff98677544f49` |
| 28 | `theorem` | [LinearMap.frobenius_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/linearmap-frobenius-def.md) | 135 | `result-track:6cef7b7aedd5a979dcc9db6d439d406b634130ecc55472ebaf7478837bb1934c` |
| 29 | `theorem` | [LinearMap.iterateFrobenius_def](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/linearmap-iteratefrobenius-def.md) | 137 | `result-track:bb07c35d107bda01d8d436c7bb632119c987de5c38d4d328a1672556d44525ef` |
| 30 | `theorem` | [frobenius_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/frobenius-zero.md) | 140 | `result-track:7bfeb3ddc6231ef1df124632b72b9804568bbbaee4303ce8cadc90589ba59cba` |
| 31 | `theorem` | [frobenius_add](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/frobenius-add.md) | 143 | `result-track:518129915a2c5e6cea247e634223260e68f56ca6bb7e123f64cc2353ed3d23e1` |
| 32 | `theorem` | [frobenius_natCast](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/frobenius-natcast.md) | 146 | `result-track:c80363e49ea4c2e613f7ab1274e1d6b6b57fce274dcedc8f5c33fa198e9239cb` |
| 33 | `lemma` | [frobenius_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/frobenius-neg.md) | 155 | `result-track:098d4f3a65c31548c7c1311fc963f1eb1e3f834054000209b6d1cc1bff48ef8b` |
| 34 | `lemma` | [frobenius_sub](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FrobeniusNamespaced.lean/declarations/frobenius-sub.md) | 157 | `result-track:de43ef1d05fd65a2ff1f0dbb1a7dfc0ec525a162c83b3801aa9c9e76f1ec6710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=055a71739e1d53a00ef922d131998759f45cdc37e59bbede229b2f968c47b447 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Frobenius/Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Frobenius/Variant4a70341a15075705664079be419a5b1f36256027a0b8a2ec8e0cc7b3dc2d940b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
