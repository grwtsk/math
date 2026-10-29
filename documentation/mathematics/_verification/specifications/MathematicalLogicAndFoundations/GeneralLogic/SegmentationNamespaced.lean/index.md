# Verification target: Segmentation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5045034b66395581bba7b4e4b1238e860c77f363",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant420039dff5c56111e776127a5b5f63356cba8654f64c35e698610db5986ed48c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentationNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5045034b66395581bba7b4e4b1238e860c77f363`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant420039dff5c56111e776127a5b5f63356cba8654f64c35e698610db5986ed48c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant420039dff5c56111e776127a5b5f63356cba8654f64c35e698610db5986ed48c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Boundary` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedBoundaryPair](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentationNamespaced.lean/declarations/certifiedboundarypair.md) | 17 | `declaration-track:bc65bbeeb8b1ae786c9c482b627fcd1eb751127e753000e1e468e3172c2c2dfe` |
| 2 | `structure` | [CertifiedSegmentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentationNamespaced.lean/declarations/certifiedsegmentation.md) | 23 | `declaration-track:03ba6f29edef39a4232a0f3e8ad8e8cb633173f5b91bd089ed0a6f283d142fa2` |
| 3 | `structure` | [SegmentationFamily](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentationNamespaced.lean/declarations/segmentationfamily.md) | 36 | `declaration-track:ef24fe86f76481992169d5967159e18b4c60259eb050f93f7cb71615490229c7` |
| 4 | `def` | [UniqueSegmentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentationNamespaced.lean/declarations/uniquesegmentation.md) | 41 | `declaration-track:b37ba2cbf7680915308bcbeb4fd5eb2b93d825a2e7448b11563467ef99f59a46` |
| 5 | `inductive` | [SegmentationStatus](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentationNamespaced.lean/declarations/segmentationstatus.md) | 48 | `declaration-track:d07c94f5fc9f060124913b53b26c39ffb13bb28c8bd93f172fdfab0a8a58ef93` |
| 6 | `theorem` | [ambiguity_preserves_family](../../../../../MathematicalLogicAndFoundations/GeneralLogic/SegmentationNamespaced.lean/declarations/ambiguity-preserves-family.md) | 59 | `result-track:efe38ea217fb6914ab3218b6b059c113dcc4ea63533a8757aa36fa03edc00e3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26f5d8a26920805d586b25b81884e5587155503a0f4ba98671d9bffd064ae567 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant420039dff5c56111e776127a5b5f63356cba8654f64c35e698610db5986ed48c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Segmentation/Variant420039dff5c56111e776127a5b5f63356cba8654f64c35e698610db5986ed48c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
