# Verification target: One Hot Natural Source Codec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63eb4c042ca47c3c28f18671cb598709504829bb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/CanonicalSourceImageCodecs/Varianta287cf3ef48b8965/OneHotNaturalSourceCodec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OneHotNaturalSourceCodec.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OneHotNaturalSourceCodec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63eb4c042ca47c3c28f18671cb598709504829bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/CanonicalSourceImageCodecs/Varianta287cf3ef48b8965/OneHotNaturalSourceCodec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/CanonicalSourceImageCodecs/Varianta287cf3ef48b8965/OneHotNaturalSourceCodec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 19; external provider; requires a separately pinned dependency.
- [Natural List And Canonical Source Codes](../../../../../MathematicalLogicAndFoundations/GeneralLogic/NaturalListAndCanonicalSourceCodes.lean/index.md) — import line 21; pinned internal source present.
- [Two Law Source Codec And Image Equivalence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/TwoLawSourceCodecAndImageEquivalence.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oneHotSourceState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OneHotNaturalSourceCodec.lean/declarations/onehotsourcestate.md) | 46 | `declaration-track:ce1ca1cde4659564197edb62dd0d30a3b847c57dd1ce48f5c558db89152b3d1c` |
| 2 | `theorem` | [oneHotSourceState_injective](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OneHotNaturalSourceCodec.lean/declarations/onehotsourcestate-injective.md) | 51 | `result-track:133c9ea79d7e6b874849c051c60868a8a8b15db19cdb2236234042e44f54a4bc` |
| 3 | `def` | [decodeOneHotSourceState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OneHotNaturalSourceCodec.lean/declarations/decodeonehotsourcestate.md) | 64 | `declaration-track:25506a463536e4d9079d8e0bb38d32958c0913868364060a2d20f0451a224e07` |
| 4 | `def` | [oneHotSourceCodec](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OneHotNaturalSourceCodec.lean/declarations/onehotsourcecodec.md) | 74 | `declaration-track:acdd884c93c5c084c0fb4d34e2b2950d7b14337b6cda00e61a29a6ca2c704cc3` |
| 5 | `theorem` | [oneHotSourceCodec_decode_encode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/OneHotNaturalSourceCodec.lean/declarations/onehotsourcecodec-decode-encode.md) | 98 | `result-track:883aa96f08214c76c12268ccb7aa63c5128f4d560163bb75c31d08c4260787c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=845d5935926235b4fa06823a26edd768f71146b88c06481989de86f6d6c4ef66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/CanonicalSourceImageCodecs/Varianta287cf3ef48b8965/OneHotNaturalSourceCodec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/CanonicalSourceImageCodecs/Varianta287cf3ef48b8965/OneHotNaturalSourceCodec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
