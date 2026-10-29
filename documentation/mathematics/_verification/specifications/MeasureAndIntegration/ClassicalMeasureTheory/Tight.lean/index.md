# Verification target: Tight

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "699ebc1ef257a0411d2c50868bcd3291eb12d874",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tight/Variantcc0cd129a4a5f57e3f28f508b0bc6d7fb45f5d229d4a73d69e39411cc9296d78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `699ebc1ef257a0411d2c50868bcd3291eb12d874`.

Source path: `GRWTSK/Topology/GeneralTopology/Tight/Variantcc0cd129a4a5f57e3f28f508b0bc6d7fb45f5d229d4a73d69e39411cc9296d78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tight/Variantcc0cd129a4a5f57e3f28f508b0bc6d7fb45f5d229d4a73d69e39411cc9296d78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.RegularityCompacts` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTightMeasureSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/istightmeasureset.md) | 42 | `declaration-track:0ddc6723097fb6941e0e4cd407561b85c719e27d3c55225f7128f03f1f55d03f` |
| 2 | `lemma` | [IsTightMeasureSet_iff_exists_isCompact_measure_compl_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/istightmeasureset-iff-exists-iscompact-measure-compl-le.md) | 47 | `result-track:e3949f0105320359f75538c0e4c1eaf11d012e1654a067c2cedcf45e3207ca15` |
| 3 | `theorem` | [isTightMeasureSet_singleton_of_innerRegularWRT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/istightmeasureset-singleton-of-innerregularwrt.md) | 59 | `result-track:4873bda1578e89bd52ac8e4c5a7019bc99b4cd08bf283ae6d3ce820162b1a440` |
| 4 | `lemma` | [isTightMeasureSet_singleton_of_innerRegular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/istightmeasureset-singleton-of-innerregular.md) | 78 | `result-track:ed7c1e4268db480a6219470a80617d04280b91ac54276f32bac4f49c6ce78f22` |
| 5 | `theorem` | [isTightMeasureSet_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/istightmeasureset-singleton.md) | 87 | `result-track:dbd15d3389e037af1c6cab11aeecc26ef746d5adb19c134a31d17e889ff925e9` |
| 6 | `lemma` | [of_compactSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/of-compactspace.md) | 97 | `result-track:d85f4344a3ed430582fdd05cbb36a0fabf24c703b89cc92a1a83f9a0ea709023` |
| 7 | `lemma` | [subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/subset.md) | 102 | `result-track:64b777f7a949fba335a25ba43dbd6e255c7d7b478b0388c4f4dddc5b98d9e113` |
| 8 | `lemma` | [union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/union.md) | 107 | `result-track:509d3fad65811ee0aacfd14d97635de0f79d3ad5bdbe65069d56ccb11deaccd3` |
| 9 | `lemma` | [inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/inter.md) | 113 | `result-track:f3ce9621cf03c3d2976aaeabf333747a2a7d620cdce728d6f8b33374fa44f287` |
| 10 | `lemma` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Tight.lean/declarations/map.md) | 117 | `result-track:88e9179ab7e4e0234c29602197407a25659480756cbd2c52954fddaf72bf12eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12ee9de059ba1d7c75d7397a5c96be6fd0ccf2a56d59b7e12f7a2e35c88e0fec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Tight/Variantcc0cd129a4a5f57e3f28f508b0bc6d7fb45f5d229d4a73d69e39411cc9296d78.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Tight/Variantcc0cd129a4a5f57e3f28f508b0bc6d7fb45f5d229d4a73d69e39411cc9296d78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
