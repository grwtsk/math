# Verification target: Indicator Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a52665fcd79fb621f17496ba45c52978c979283",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant9aa2add1d3de0c38d6ce9c61d30106df099375da7634f02490f650f77d570436.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a52665fcd79fb621f17496ba45c52978c979283`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant9aa2add1d3de0c38d6ce9c61d30106df099375da7634f02490f650f77d570436.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant9aa2add1d3de0c38d6ce9c61d30106df099375da7634f02490f650f77d570436.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/indicator.md) | 34 | `declaration-track:5ae86cfde9b0ece360f9421ab039c1e325c9d7641cf248d773cac80ea4e6b8f4` |
| 2 | `theorem` | [indicator_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/indicator-of-mem.md) | 37 | `result-track:04b3ed81d1f0eff90aa838def9b9a37e4af4f394192dba3b0d78218a490c4911` |
| 3 | `theorem` | [indicator_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/indicator-of-notmem.md) | 40 | `result-track:d01adead045988903cd8b726b6663f70e33029c4a5c110fca8164b4c3cad5730` |
| 4 | `theorem` | [indicator_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/indicator-apply.md) | 46 | `result-track:6e24b20c772489ddf627e2fcac266dc8868e2539012654ebac0f8251bb6f3469` |
| 5 | `theorem` | [indicator_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/indicator-injective.md) | 50 | `result-track:6259ddc7019b67a190451ffd0741dd7fcbbe9b9f21ea220fea9f3e15d6e0039e` |
| 6 | `theorem` | [support_indicator_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/support-indicator-subset.md) | 56 | `result-track:293852672365a310ca41fd4af0bd83af8db93a00547c5dddb7d5c46cbf0f1271` |
| 7 | `lemma` | [indicator_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/indicator-singleton.md) | 58 | `result-track:93f1306175928159fe6971ca365f30074ea3ac619fed045fe99b50881835c6fc` |
| 8 | `lemma` | [single_eq_indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/single-eq-indicator.md) | 66 | `result-track:5b4ef8cf42cf226b1595223a24abc3b97e25c6089f430d461a1435a84372304a` |
| 9 | `theorem` | [indicator_eq_set_indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/indicator-eq-set-indicator.md) | 69 | `result-track:adb061ad91c60f3ff1a9e28b9c622f61cf37e017d4d8ef10c457bfd56aa7f4ef` |
| 10 | `theorem` | [indicator_indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/indicator-indicator.md) | 75 | `result-track:f77e135d4a89745cf491deb3a2ca7246f238201a5fa2baa7bf346cf1b3da2baf` |
| 11 | `theorem` | [eq_indicator_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/eq-indicator-iff.md) | 80 | `result-track:6184588858fbc711a20d93a075bf6eb6be137d6ffb948c4f2dbbbd29dcd6b36d` |
| 12 | `theorem` | [eq_indicator_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorPublic.lean/declarations/eq-indicator-self-iff.md) | 92 | `result-track:ce00073ac841b2123ee3cccc87485d1a0f513c504b8b949fac3cf34022f4a163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85dc334963bdf33e81fc40b2c13fced66b40e5b7b996115f0ade3647a8c834eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant9aa2add1d3de0c38d6ce9c61d30106df099375da7634f02490f650f77d570436.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant9aa2add1d3de0c38d6ce9c61d30106df099375da7634f02490f650f77d570436.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
