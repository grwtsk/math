# Verification target: Tight Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "896e7fa8d0719152e950aef4bd6d21eba46451f7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `896e7fa8d0719152e950aef4bd6d21eba46451f7`.

Source path: `GRWTSK/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.RegularityCompacts` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTightMeasureSet](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/istightmeasureset.md) | 55 | `declaration-track:dd79ba63a7af4c073d48b04bfc0b14739e2d625ee2ce5b99516188e51bee2042` |
| 2 | `lemma` | [isTightMeasureSet_iff_exists_isCompact_measure_compl_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/istightmeasureset-iff-exists-iscompact-measure-compl-le.md) | 60 | `result-track:d65d6c548b3c2b2d8a0e609b8693cfa4914141d3e04c5bbced228748b20875cd` |
| 3 | `theorem` | [isTightMeasureSet_singleton_of_innerRegularWRT](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/istightmeasureset-singleton-of-innerregularwrt.md) | 72 | `result-track:31595521d487b345fb4b960f2970bd32129ad30ee6dbce29a48e16dc34921a4f` |
| 4 | `lemma` | [isTightMeasureSet_singleton_of_innerRegular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/istightmeasureset-singleton-of-innerregular.md) | 90 | `result-track:88f7e5c335bdc7fee27d6243ab81fe07cde38bac9e77d8095a95786cdd8ffb46` |
| 5 | `theorem` | [isTightMeasureSet_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/istightmeasureset-singleton.md) | 99 | `result-track:62d009891f2b8cdd1f6a059dc94ebf7319e99531e1f794df1be120559e81ab54` |
| 6 | `lemma` | [of_compactSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/of-compactspace.md) | 109 | `result-track:d3ea5d48848db4927cc0adbd3c0f46de81f0bcc84303cb32d5a3d8b282d991e5` |
| 7 | `lemma` | [subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/subset.md) | 114 | `result-track:73b9fd29e71bc9c9360c1d5f8522db5fca5ace15121963c187f142129a1123b8` |
| 8 | `lemma` | [union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/union.md) | 119 | `result-track:5de869a8b27768f6bbd6e6191860e7672bc1ed52b0a0768f1b88b15975bd667e` |
| 9 | `lemma` | [inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/inter.md) | 125 | `result-track:8dc91e3b6f6de5521124081f9add0638036b46e01fa23f90ef06c06d09a680f2` |
| 10 | `lemma` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/map.md) | 129 | `result-track:6686ba4d1c4d2eefc205cdb801d14300682a5a76de03180307bf26537f4dfdcd` |
| 11 | `lemma` | [prodMk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/TightPublic.lean/declarations/prodmk.md) | 143 | `result-track:f4ee28b661ccba6d0a0f69835ef6e39473181a1e2a6d8a45ffc64e87d9bd400d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40385cb77b1580909feecbe4075a6aa489a7f23d78343447b6b993357bd4c66f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
