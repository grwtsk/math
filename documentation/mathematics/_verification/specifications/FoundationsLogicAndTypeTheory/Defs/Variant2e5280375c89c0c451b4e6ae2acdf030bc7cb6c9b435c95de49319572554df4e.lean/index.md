# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Defs.Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76c80036ddf1e525550a3a76f431eec74bd5afa9",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean/index.md) · [Full source](../../../../../FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76c80036ddf1e525550a3a76f431eec74bd5afa9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Cast.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Int.castDef](../../../../../FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean/declarations/int-castdef--d455c66fbd832b54bb8303a4.md) | 28 | `declaration-track:d455c66fbd832b54bb8303a4646acd7df2e05f3aaf766d612b25564d3dbc11b0` |
| 2 | `class` | [AddGroupWithOne](../../../../../FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean/declarations/addgroupwithone--c5593d8d64dfc83ee57491d3.md) | 36 | `declaration-track:c5593d8d64dfc83ee57491d3c975d5972ef34b9e1580d3db972ad0955a6ea513` |
| 3 | `class` | [AddCommGroupWithOne](../../../../../FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean/declarations/addcommgroupwithone--b2789f8fc4ae4fd286b2363d.md) | 46 | `declaration-track:b2789f8fc4ae4fd286b2363d31460043e565fa38bbd3846c164cc03cc94f4060` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6c6bea16b4578a3ebe35a62c2132730fd7627238f709a2e6f2f6e815cf07924 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Defs/Variant2e5280375c89c0c451b4e6ae2acdf030bc7cb6c9b435c95de49319572554df4e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
