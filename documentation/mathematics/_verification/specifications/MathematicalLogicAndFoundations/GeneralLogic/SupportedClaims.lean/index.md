# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Observation.SupportedClaims

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acd6a2790c1cec55a715e136068aab4b6c2183e7",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/SupportedClaims.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acd6a2790c1cec55a715e136068aab4b6c2183e7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/SupportedClaims.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/SupportedClaims.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Compatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/compatible.md) | 31 | `declaration-track:338b6d251f11c60b78394791537ec3669726d32905da7b3d98a68dd8ca99ccc1` |
| 2 | `def` | [NonemptyFiber](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/nonemptyfiber.md) | 36 | `declaration-track:3f5b7f5b5922a636d4934bc3166876ddf4028bf2acf661602b8913d48fd32681` |
| 3 | `def` | [Supports](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/supports.md) | 42 | `declaration-track:a5d67ee4c405636422b4299582364f5c8a6d7d6b9f14db2f8237c1687c0cb371` |
| 4 | `def` | [Refutes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/refutes.md) | 48 | `declaration-track:dc7f451fb48318b08f960a7414f203d3286745a26cf19950acdfd85f3ee2a46b` |
| 5 | `theorem` | [supports_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/supports-nonempty.md) | 52 | `result-track:a042afd101f1142b98eccc8b473d13c7f18cc8daaafe778bfc0dd64bc6f994d8` |
| 6 | `theorem` | [refutes_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/refutes-nonempty.md) | 58 | `result-track:d1870aa6334096259bf9d791558b7205e9668caad4df377d5d5e7162eb031ab3` |
| 7 | `theorem` | [supports_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/supports-sound.md) | 65 | `result-track:a40e8a948ab4cc254c6d47b75630eae49e6c8b5ec99a0079e42330cc8062269c` |
| 8 | `theorem` | [refutes_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/refutes-sound.md) | 72 | `result-track:2864844054c35cb60c941ffa7706b32e271990c667e7856d7b41114658020c61` |
| 9 | `theorem` | [not_supports_of_empty_fiber](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/not-supports-of-empty-fiber.md) | 79 | `result-track:e8b9ff07731d5971256aff0c775dfd1bbb721d7e6166868f13a94fba28ab36b7` |
| 10 | `theorem` | [not_refutes_of_empty_fiber](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/not-refutes-of-empty-fiber.md) | 85 | `result-track:3bdcb306fbdf367ca38c3238041ecbc42e8cae38c0d0314b01704e986c278899` |
| 11 | `theorem` | [ambiguity_of_opposite_compatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/ambiguity-of-opposite-compatible.md) | 93 | `result-track:0d47cfd8ae1e39af16a4e8829fd55a07bc0ca0ab933c46d063605b4363289ced` |
| 12 | `theorem` | [supports_refutes_inconsistent](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/supports-refutes-inconsistent.md) | 105 | `result-track:6c6fcce04f2bfe7738e728d360d703499f2f09efacec6cd69f0a8da5cb9ddc6a` |
| 13 | `theorem` | [compatible_coarsening](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/compatible-coarsening.md) | 114 | `result-track:633518bc60eb49a7cde5cb83f2a23d51ebbfe15529f88fb823ed369706170667` |
| 14 | `theorem` | [nonempty_fiber_coarsening](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/nonempty-fiber-coarsening.md) | 121 | `result-track:413736ee89b24d71adbc7cbc2a3280d81195ed2e60870c92c91e0c5ee9e467d4` |
| 15 | `theorem` | [supports_of_coarsened_support](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/supports-of-coarsened-support.md) | 132 | `result-track:c0a44c3a9b92c2e602502fbfcd0c4cbaf87235377f6c1533a709c25d44b3363b` |
| 16 | `theorem` | [refutes_of_coarsened_refutation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/refutes-of-coarsened-refutation.md) | 143 | `result-track:73a2958b571b313b26f758306b9bded7e76682ca54c16d2fb2a562e4557c7fc6` |
| 17 | `def` | [admitted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/admitted.md) | 156 | `declaration-track:cd2204827f068da12ecbbfa1a633710fd6ecfa4396063ae73e8a66fc2a41de04` |
| 18 | `def` | [lostReceipt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/lostreceipt.md) | 159 | `declaration-track:49fab5973528a010353b8032e010ab9e5614e7bfd1b06f5f74e943bd2cb035c3` |
| 19 | `def` | [occurred](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/occurred.md) | 162 | `declaration-track:aff492c33c312d90b961062806abfa1ad27a63f78e086cb9a67b67be35292842` |
| 20 | `theorem` | [lost_receipt_nonempty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/lost-receipt-nonempty.md) | 164 | `result-track:31d2d3f011de6c16edb07b4cd80f7ebd81e0b4f29366b6e1d0a72b7c6416611e` |
| 21 | `theorem` | [lost_receipt_ambiguous](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/lost-receipt-ambiguous.md) | 167 | `result-track:1e6bafad9fc5e628b0f40ce43a8a81defd34c5b97ed6aada086abfa940249935` |
| 22 | `theorem` | [impossible_observation_empty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/impossible-observation-empty.md) | 177 | `result-track:6d6754feed64255e0579a33d709c5b66b2f5ae0be904388b32df590e210fe138` |
| 23 | `theorem` | [impossible_observation_no_certainty](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/impossible-observation-no-certainty.md) | 185 | `result-track:cdeabe0c7773deed81735d561b41f0311bc59ce57f81e16c0c60a080989782d1` |
| 24 | `theorem` | [fine_observation_supports](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/fine-observation-supports.md) | 192 | `result-track:7bbd8d3789e50df46bb33b4cd3bac14974bec7f35007aed9958ceb80d99b3cf1` |
| 25 | `theorem` | [coarsening_can_lose_support](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/coarsening-can-lose-support.md) | 198 | `result-track:a48450c53a6b31b074dac480ad4013434690cfd83b89cad77a8f25f97a7bc53e` |
| 26 | `theorem` | [fine_witness_is_necessary](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SupportedClaims.lean/declarations/fine-witness-is-necessary.md) | 206 | `result-track:6b4e81d62cc7b7940e3634f4c498e96fcdf116c4dd91c8189c39b6fbb066e595` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2abc7af9b8578b4ab1706a8ea7cec44f4db07930c39d5abaaa3c3cbe741e9ec1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/SupportedClaims.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Observation/SupportedClaims.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
