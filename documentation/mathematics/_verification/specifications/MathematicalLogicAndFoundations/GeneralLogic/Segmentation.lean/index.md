# Verification target: Segmentation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a086040ae5882b07885fc0984e704887ee0be74e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Segmentation.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Segmentation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a086040ae5882b07885fc0984e704887ee0be74e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Boundary` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedBoundaryPair](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Segmentation.lean/declarations/certifiedboundarypair.md) | 9 | `declaration-track:444a36cd70f0e617ef2c5011f12c4ab2cfc5f4600f5abe5801c99943cf43e46b` |
| 2 | `structure` | [CertifiedSegmentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Segmentation.lean/declarations/certifiedsegmentation.md) | 15 | `declaration-track:dda4ad3097326ae6b088df6acb92c16a6bbc16a5b3a33b2d8b743f07da887dad` |
| 3 | `structure` | [SegmentationFamily](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Segmentation.lean/declarations/segmentationfamily.md) | 28 | `declaration-track:3af4a5cfa18617ae77e620a68422edc770ef6c5a344a3b6622980ecaf5cae6f8` |
| 4 | `def` | [UniqueSegmentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Segmentation.lean/declarations/uniquesegmentation.md) | 33 | `declaration-track:58222e1783c15027e86ecd750d623f5440bae00b882f6e9e07a93f2f55e9a38f` |
| 5 | `inductive` | [SegmentationStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Segmentation.lean/declarations/segmentationstatus.md) | 40 | `declaration-track:a29d5558c83d0fda633b2f98392d8cffb849f17d237e229f2f20f4a95b8e4eb4` |
| 6 | `theorem` | [ambiguity_preserves_family](../../../../../MathematicalLogicAndFoundations/GeneralLogic/Segmentation.lean/declarations/ambiguity-preserves-family.md) | 51 | `result-track:b23c4c8b4f7e3aeb27bbd86e1bee2ebde08b574359a375824abb8e916b45d2b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bf585b78b7a1a62dff7dad65ab2ff2ca375f89561ea4f568eee1ceb047ab916 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant6597f69d3deb582cc469071b2af3b82bbe2867bd489ec7198ef74ea260f1e1a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
