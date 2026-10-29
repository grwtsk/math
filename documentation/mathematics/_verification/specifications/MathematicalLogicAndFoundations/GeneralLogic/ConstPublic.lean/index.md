# Verification target: Const Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4344a37e8dcdae4fc01e7bf31deddce615cd7811",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variant0e4c8050cfe31102f0200adb22e2fa49e7c9975a063e418938730174f3048401.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4344a37e8dcdae4fc01e7bf31deddce615cd7811`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variant0e4c8050cfe31102f0200adb22e2fa49e7c9975a063e418938730174f3048401.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variant0e4c8050cfe31102f0200adb22e2fa49e7c9975a063e418938730174f3048401.lean.json)

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
| 1 | `def` | [IsConst](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst.md) | 37 | `declaration-track:05081721ed9455898f0d1264604576c7b074498e8555d302610ef2f572de8a1c` |
| 2 | `theorem` | [isConst_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-iff.md) | 40 | `result-track:e7036735ef602fe1ea0c54f605d34abc97ad63a6d629eb5e10895fada7e08600` |
| 3 | `theorem` | [IsConst.eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-eq.md) | 44 | `result-track:4dce0ddf146626aadebd00ef4641c03f759b43c3f4f469edfbe89b15400e5cbd` |
| 4 | `theorem` | [IsConst.const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-const.md) | 49 | `result-track:4541b49b215a3fc2e3418eb951b413b7cffe553055efe40d0428247caa939406` |
| 5 | `theorem` | [IsConst.of_subsingleton_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-of-subsingleton-domain.md) | 54 | `result-track:6caa84eab92e58cc3ea63284ab3b69611f84052761103218644db53beb342be0` |
| 6 | `theorem` | [IsConst.of_subsingleton_codomain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-of-subsingleton-codomain.md) | 59 | `result-track:e8d93a065e45d65361bc231cc24d3489d44889e5a1ccc5f896b04ab64f94f4a4` |
| 7 | `theorem` | [IsConst.of_forall_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-of-forall-eq.md) | 62 | `result-track:2920feaa95415118ab287f474d887f71b1ea693b67c06ba827865e9aaa1c8a40` |
| 8 | `theorem` | [isConst_iff_exists_forall_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-iff-exists-forall-eq.md) | 67 | `result-track:3e1baad87d343a0750ca0fad88094d8bdac4aa9b56191ec13cd9ae3595027de7` |
| 9 | `theorem` | [isConst_iff_exists_forall_eq_of_nonempty_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-iff-exists-forall-eq-of-nonempty-domain.md) | 76 | `result-track:52d243434e53d42b148043f3458622a423c38658ccb99ad5748e7a6afc486400` |
| 10 | `theorem` | [isConst_iff_exists_eq_const](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-iff-exists-eq-const.md) | 82 | `result-track:12cfc49348672aa840453685669dbfbb192f82bd6aeca8b8a3d65b19a0b6e37a` |
| 11 | `theorem` | [isConst_iff_exists_eq_const_of_nonempty_domain](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-iff-exists-eq-const-of-nonempty-domain.md) | 88 | `result-track:19bce28f0b960889fa5c761c2df21da5d45f6f0069c15b91be2066eace1e5a34` |
| 12 | `theorem` | [IsConst.comp_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-comp-left.md) | 93 | `result-track:98091acb1d9323a9e4ec86bc3dab1c80d5b2d603006d5e6321c4b015b151d74d` |
| 13 | `theorem` | [IsConst.comp_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-comp-right.md) | 98 | `result-track:23fced53723b4056007e836c2e975f6e0d80f4696a71b2119dbfe4c58ca8ea72` |
| 14 | `theorem` | [not_isConst_of_apply_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/not-isconst-of-apply-ne.md) | 102 | `result-track:4a9bda996e535df7f07b5b07b62f62c157a45c0d99e9824552a69edcba3c28de` |
| 15 | `theorem` | [not_isConst_iff_exists_apply_ne](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/not-isconst-iff-exists-apply-ne.md) | 105 | `result-track:9ab076efecd25c2a0afb42ff7603cf5fb899526acfa3068b8ff08c4747fd1e19` |
| 16 | `theorem` | [isConst_id_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-id-iff.md) | 111 | `result-track:905f039b8bfd46d7e7ba966a75dbe6c2f20bd52477883712d66da493bbb49a09` |
| 17 | `theorem` | [_root_.Setoid.ker_eq_top](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/root-setoid-ker-eq-top.md) | 115 | `result-track:e5209ffd397eb9d92193f7d5f449c49c319a81d56602d86ec00708918337c479` |
| 18 | `theorem` | [_root_.Set.subsingleton_range_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/root-set-subsingleton-range-iff.md) | 120 | `result-track:160b8a611caef2c63b95238318d9c6919449365bd71ccd852e26d8741013613c` |
| 19 | `theorem` | [isConst_and_injective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-and-injective-iff.md) | 124 | `result-track:348d965949ead1c5e1af13f36d0ad05748017fe4b195f280a6e2328a2d590730` |
| 20 | `theorem` | [IsConst.injective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-injective-iff.md) | 128 | `result-track:2148eaa0dd7a1eeb46e3b7c82c249303770c3e749874cff4af7ef84e2c7c3768` |
| 21 | `theorem` | [Injective.isConst_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/injective-isconst-iff.md) | 131 | `result-track:32ec72890702ed0b9890536b0ce4e5333dafae8a14ec8108d95f3083bff95473` |
| 22 | `theorem` | [isConst_and_surjective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-and-surjective-iff.md) | 134 | `result-track:319a80d8b6c0392e6503af6b6e065efe252d00cc0150366f8101b4cf617c1eab` |
| 23 | `theorem` | [isConst_and_surjective_iff_of_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-and-surjective-iff-of-nonempty.md) | 141 | `result-track:9bf407d8e506cf7b9d28437a688b90235aca1f12790537956eb9339df25b3d03` |
| 24 | `theorem` | [IsConst.surjective_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/isconst-surjective-iff.md) | 145 | `result-track:641332cadbc607eb2d7c26816dbd443779482dfb7f4b6afdee3a43fe62bd6d59` |
| 25 | `theorem` | [Surjective.isConst_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/ConstPublic.lean/declarations/surjective-isconst-iff.md) | 149 | `result-track:8f445e2b1278912d2853bca6a59bc901ff6376bd30c3feca821b516d670c424a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba79253b88befe97fbcd8d006c94bb2d28bf332466bc0a94a3a5f429840d2de0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variant0e4c8050cfe31102f0200adb22e2fa49e7c9975a063e418938730174f3048401.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Const/Variant0e4c8050cfe31102f0200adb22e2fa49e7c9975a063e418938730174f3048401.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
