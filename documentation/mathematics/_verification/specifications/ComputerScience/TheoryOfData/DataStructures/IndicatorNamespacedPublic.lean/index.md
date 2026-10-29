# Verification target: Indicator Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8e953374c6eb49c92bb96c94d2493bcebba5e14",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant88fddba29b0f3276ffb5607e09938d03101391692f9c7e9e6d25a07b7fee5025.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8e953374c6eb49c92bb96c94d2493bcebba5e14`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant88fddba29b0f3276ffb5607e09938d03101391692f9c7e9e6d25a07b7fee5025.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant88fddba29b0f3276ffb5607e09938d03101391692f9c7e9e6d25a07b7fee5025.lean.json)

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
| 1 | `def` | [indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/indicator.md) | 42 | `declaration-track:8e38ff6c4c1919dbf09c4211113298f1bb775009fd2fd754795342732c5ac12e` |
| 2 | `theorem` | [indicator_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/indicator-of-mem.md) | 45 | `result-track:05d746250be06b78549e4d2195b9ed0c3acf77c75671bd63512f499b8d87ce26` |
| 3 | `theorem` | [indicator_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/indicator-of-notmem.md) | 48 | `result-track:aba0920a458815fdadbe482462d0c5af171d587dbe8fd9a4c55e8f5848df1c46` |
| 4 | `theorem` | [indicator_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/indicator-apply.md) | 54 | `result-track:b76253e094776975d55ff3b53a6ee16ff4d1359a83dadc8d0e7d2e70adc780e7` |
| 5 | `theorem` | [indicator_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/indicator-injective.md) | 58 | `result-track:ac9c1c953ebf4977cdc71f2458ff29a2601c3f0b1a7da6a262dc1a74dedcec7c` |
| 6 | `theorem` | [support_indicator_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/support-indicator-subset.md) | 64 | `result-track:c911dc3e4995b990cb5ec8b1504737983cf8f56bf3c7c4abd217d3751909b677` |
| 7 | `lemma` | [indicator_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/indicator-singleton.md) | 66 | `result-track:9089ff342b66bb122f42e4e98f33b398e6c63d0a531369047622db1e8c62d999` |
| 8 | `lemma` | [single_eq_indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/single-eq-indicator.md) | 74 | `result-track:6d4350b3185a819d0e7404ccc94648d5872ed4a2cb71fe42dddc9299f0d3fc73` |
| 9 | `theorem` | [indicator_eq_set_indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/indicator-eq-set-indicator.md) | 77 | `result-track:cb6592abca55f59c938c39f0d33894c156bf56219059d9afc770ae1070a61bde` |
| 10 | `theorem` | [indicator_indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/indicator-indicator.md) | 83 | `result-track:11d1461b2cbf6768893066450945f0e7c70fced2eac75f91afa1d012fb9dee51` |
| 11 | `theorem` | [eq_indicator_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/eq-indicator-iff.md) | 88 | `result-track:420017fe4bf931bec8ea282a0afcdcd206b47b320e6a40016fb3702bfa1e26d5` |
| 12 | `theorem` | [eq_indicator_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/IndicatorNamespacedPublic.lean/declarations/eq-indicator-self-iff.md) | 100 | `result-track:fff82758dc7aba53a7fb9f2b04d8d265633eb663b41584c755ec547f93f8e9bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed5c0d5771f28fe6d906259973c213065240b796e0de97e26ea31928fb5bfbc4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant88fddba29b0f3276ffb5607e09938d03101391692f9c7e9e6d25a07b7fee5025.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indicator/Variant88fddba29b0f3276ffb5607e09938d03101391692f9c7e9e6d25a07b7fee5025.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
