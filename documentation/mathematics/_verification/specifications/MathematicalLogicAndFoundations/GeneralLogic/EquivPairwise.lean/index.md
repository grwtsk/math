# Verification target: Equiv Pairwise

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ebf8a8f6c48539338568c8cdfd8843fceed994b8",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivPairwise.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivPairwise.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ebf8a8f6c48539338568c8cdfd8843fceed994b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.FunLike.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [EmbeddingLike.pairwise_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivPairwise.lean/declarations/embeddinglike-pairwise-comp.md) | 15 | `result-track:3b3c8b992c21b5f3ffc8bee4c8479f4c0df47aa8ae32b3d5d7706ecfdb06893f` |
| 2 | `lemma` | [EquivLike.pairwise_comp_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/EquivPairwise.lean/declarations/equivlike-pairwise-comp-iff.md) | 19 | `result-track:9971a551b351935a47ec8aaad5b6d36114545741f6775276547e2ccdda958ee3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a9ec531e996331c72f52c3fbcd6cdb7d93213cfc5b8244dcb96b91d305e08b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Pairwise/Variant0bd13c4c2101b7166bd965cceba81a82cf0565be93285ea4af8fd6807217f817.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
