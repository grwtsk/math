# Verification target: Conjugate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44ad738fec68a823b3d7ab561c3aeb4f4cd6fe8d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Variant75634045f7e4c0027423a027b4e5f94e11f7f76f50b1353de5019bc64f158d5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44ad738fec68a823b3d7ab561c3aeb4f4cd6fe8d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Variant75634045f7e4c0027423a027b4e5f94e11f7f76f50b1353de5019bc64f158d5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Variant75634045f7e4c0027423a027b4e5f94e11f7f76f50b1353de5019bc64f158d5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Relation.Rfl` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Semiconj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/semiconj-source-edition-2.md) | 32 | `declaration-track:4438138d322c86dd606ae071643756e2245c8faf8a2e4328f873e2de96bac297` |
| 2 | `theorem` | [comp_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/comp-eq.md) | 40 | `result-track:5ce5b35d9b6562e184f7e7dc7c5f514b2189adfcba0d60d7b7604a2a34f6b4b9` |
| 3 | `theorem` | [eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/eq.md) | 44 | `result-track:a49a33175b3bb5ce274e941ed1a7c80701fb6a6eeec15c747530b09d29c68e01` |
| 4 | `theorem` | [comp_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/comp-right.md) | 48 | `result-track:2163775046c5e5b6b54548b4684b557a54edb40faaad26680eb04c3b63a92807` |
| 5 | `theorem` | [comp_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/comp-left-source-edition-2.md) | 53 | `result-track:f53343f88b352b352577b4744d71f370852802ae3eb9a0a834367fa4d8097a7c` |
| 6 | `theorem` | [id_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/id-right-source-edition-2.md) | 58 | `result-track:dee8c0f9b96944c3f211832679f5bd1db32a96e82c2eca9b77f636f26e1c5be0` |
| 7 | `theorem` | [id_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/id-left-source-edition-3.md) | 62 | `result-track:ac5866c5fd2bb69878b6476878756e9be188c23a2d585460cbf400ba55ce2b54` |
| 8 | `theorem` | [inverses_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/inverses-right.md) | 66 | `result-track:883a01d78c6da200280452ae15f42944b3c91f6411374726407e3f6c73818f80` |
| 9 | `theorem` | [option_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/option-map-source-edition-2.md) | 71 | `result-track:c99ff51d2db9b28e6a0be2917207912cd84641494a93fe3ac7772aa3d1cdb9af` |
| 10 | `def` | [Commute](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/commute.md) | 84 | `declaration-track:acff390cdd5aed587831571c03e7a1245b0e51876b5bf2a18395f4dff5ee462c` |
| 11 | `theorem` | [Semiconj.commute](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/semiconj-commute.md) | 92 | `result-track:24fcdfac5ede587301d61d4782df69cf31e06ead02b195b68073b9c6e09e3dd9` |
| 12 | `theorem` | [semiconj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/semiconj.md) | 101 | `result-track:0169b7c137b51da3487da06f78143fbe073df45270a97f8ef9b0500dfee64d44` |
| 13 | `theorem` | [refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/refl.md) | 104 | `result-track:62795e77dbea9ef208cf4bcf67e92f2623bddbe1b9d0205521fc7a2604e0ebd5` |
| 14 | `theorem` | [symm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/symm.md) | 109 | `result-track:a9870cd2ca6f001a8037457196a383ba6fa28b4ba1f0dd4086491085c5b3748b` |
| 15 | `theorem` | [comp_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/comp-right-source-edition-2.md) | 113 | `result-track:2b444e1e4303b2a12a5f00f22d2cf50b9254fc119ac02ca9a007ec5a742404e5` |
| 16 | `theorem` | [comp_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/comp-left.md) | 117 | `result-track:441cf20d926001884c79ace400e6c47c4c37bffc0daf7922055e34c7b305e629` |
| 17 | `theorem` | [id_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/id-right.md) | 121 | `result-track:accae87807bc77780f1019319b72581679ea2e95f655535003cad52c3d6b19f2` |
| 18 | `theorem` | [id_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/id-left-source-edition-2.md) | 125 | `result-track:5f61ebe51b0e2ba160b48cd258be0a783a92d04be6d3bc1b2bcb0d65ce3fdd36` |
| 19 | `theorem` | [option_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/option-map.md) | 129 | `result-track:5b66c24e559bbd2be9d28e9f0c74bc11e2ecec87498ca7c90906ff35dee3362c` |
| 20 | `def` | [Semiconj₂](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/semiconj-source-edition-3.md) | 140 | `declaration-track:b39234d6f73ace4d40d3b53f9044990af28ae593c26d5c2b2dfe1662b4e005f4` |
| 21 | `theorem` | [eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/eq-source-edition-2.md) | 148 | `result-track:ee97593923b97ff14855209de71a28ac6409d56041f6448ee8c57230c2c619ed` |
| 22 | `theorem` | [comp_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/comp-eq-source-edition-2.md) | 152 | `result-track:7710fdbae5dfd2b08ecabc76d2e6c92c0b062731057a0abbb8146e8f658ccc31` |
| 23 | `theorem` | [id_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/id-left.md) | 156 | `result-track:4ab5eaa723ea4e21a76a98eb340dd997fc51dbaed6e23f83dcc44aefcea96296` |
| 24 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/comp.md) | 159 | `result-track:ed1c53206562b78d73d37a0ade9a3a634b8c741d76f267a3c32b1f93eec35d2b` |
| 25 | `theorem` | [isAssociative_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/isassociative-right.md) | 163 | `result-track:33cbe031777c8c9c154ad14f124cae3ea5a9c3da707002a1e8c8453caf79d93e` |
| 26 | `theorem` | [isAssociative_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/isassociative-left.md) | 168 | `result-track:6320793fe3bfc2f88d1cec9a1c75e65183a9f2f9ab3a3b85775038aee83d3d7b` |
| 27 | `theorem` | [isIdempotent_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/isidempotent-right.md) | 173 | `result-track:46ef7d1a99591541924f6b8e9e93da33a6a29033f4d507995d2352d54580dec5` |
| 28 | `theorem` | [isIdempotent_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Conjugate.lean/declarations/isidempotent-left.md) | 178 | `result-track:03e15a9c2861ebb5d63691696a1610991e85b352ec8226d411ef22291532b6dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e250c9cb0c4d66d2cde31782d396df70fb054534d91391d9e1113722ee463d75 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Variant75634045f7e4c0027423a027b4e5f94e11f7f76f50b1353de5019bc64f158d5a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Conjugate/Variant75634045f7e4c0027423a027b4e5f94e11f7f76f50b1353de5019bc64f158d5a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
