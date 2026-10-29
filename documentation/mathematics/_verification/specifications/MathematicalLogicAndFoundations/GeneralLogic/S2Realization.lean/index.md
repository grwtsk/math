# Verification target: S2 Realization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ae2309ff79e80d30295b02c0b01e6d376ae6a0b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/S2Realization.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/S2Realization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ae2309ff79e80d30295b02c0b01e6d376ae6a0b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledSpherical.VertexPlacement` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InjectiveS2Realization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/S2Realization.lean/declarations/injectives2realization.md) | 13 | `declaration-track:5a2e56b2301b532d22af1345cfa4906229cde6f547cb362c1d5f11f9e8a49268` |
| 2 | `def` | [HasInjectiveS2RealizationWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/S2Realization.lean/declarations/hasinjectives2realizationwitness.md) | 20 | `declaration-track:4a06ae5088adfab0f7c538a1e10f3a4dfac4e667ec665ba1a3282ecfdeee46d0` |
| 3 | `structure` | [VertexCompatibleS2Realization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/S2Realization.lean/declarations/vertexcompatibles2realization.md) | 32 | `declaration-track:2366162f515f402a7b8859036894cfe8f163f0dca89ab852e43c057b83e2cd94` |
| 4 | `def` | [HasVertexCompatibleS2RealizationWitness](../../../../../MathematicalLogicAndFoundations/GeneralLogic/S2Realization.lean/declarations/hasvertexcompatibles2realizationwitness.md) | 46 | `declaration-track:a1f5bc36584a07ce29da1f3401c277176345216dc2d36098bdad757f28ab5d4b` |
| 5 | `theorem` | [hasInjectiveS2RealizationWitness_of_vertexCompatible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/S2Realization.lean/declarations/hasinjectives2realizationwitness-of-vertexcompatible.md) | 58 | `result-track:f60ed9e940824aac841c4f3baec6c336c7d08d46e6c4655131febcb2c5a1f163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1a49380c0bf8307b455ca64ce3c67bd04711d8ec85264addbdcd7126e0dbe1c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/S2Realization/Variantd06b4c79e053aaf23b8e166e15915e49da1f27ff0c6e237960a47c345b1ed7ec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
