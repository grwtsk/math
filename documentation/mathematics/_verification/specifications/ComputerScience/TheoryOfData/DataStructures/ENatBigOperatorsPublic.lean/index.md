# Verification target: ENat Big Operators Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5138b9a5b8b266f5c17cd52f0f1bc13d27d1d4ac",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantbedd108b4c3e3a789f34acfdde8db385cd1a02b5a1d673569613f53b64b46dab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5138b9a5b8b266f5c17cd52f0f1bc13d27d1d4ac`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantbedd108b4c3e3a789f34acfdde8db385cd1a02b5a1d673569613f53b64b46dab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantbedd108b4c3e3a789f34acfdde8db385cd1a02b5a1d673569613f53b64b46dab.lean.json)

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
| 1 | `theorem` | [toNat_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/tonat-prod.md) | 30 | `result-track:26e2a3b33eb497a8d1cdb16ca6cf94c87069a43c05d3a5e8a15b154ee2a07fc6` |
| 2 | `theorem` | [iInf_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/iinf-sum.md) | 34 | `result-track:83999cc33a5113e4f35d383d76cae090ee07f9c4f09a4f11745b4bed6d42fa32` |
| 3 | `lemma` | [prod_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/prod-ne-top.md) | 55 | `result-track:4da06591924917772df7a93fb5ccb1bd2d07b8d1d3a5b71244a0ce8a1d737739` |
| 4 | `lemma` | [prod_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/prod-lt-top.md) | 58 | `result-track:15e04324c7e09e40d80609739d9482db735df19c94199b3ee4cd9fe989a60bde` |
| 5 | `lemma` | [sum_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/sum-eq-top.md) | 61 | `result-track:0a89229343603aa7c949f87bff027059eda2fc05143cd910c962d6767c180d9f` |
| 6 | `lemma` | [sum_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/sum-ne-top.md) | 64 | `result-track:07d912e47c8adcdfa2f2cdee2f7d4b00ee98d0b6aba721c0087954eb99cf8cc3` |
| 7 | `lemma` | [sum_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/sum-lt-top.md) | 67 | `result-track:374be5b25cd8d35b5fa24c4d4a087f5d9073ed710e91d6486db0bc56bc63f919` |
| 8 | `theorem` | [lt_top_of_sum_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/lt-top-of-sum-ne-top.md) | 69 | `result-track:3ee694d506f8a76d105f995594867a301a6d6c8b5c1471c3038a7495b9e7a178` |
| 9 | `theorem` | [toNat_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/tonat-sum.md) | 75 | `result-track:c7b1e2c26d8d8e7246a4822670290e151f1eca656b7247c4e68c53e779f1c075` |
| 10 | `theorem` | [sum_lt_sum_of_nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/sum-lt-sum-of-nonempty.md) | 80 | `result-track:b3c2f0039631eb5755ad4f0bfe000c1e1b82b7aebec8a85f63c8f0a142347be9` |
| 11 | `theorem` | [exists_le_of_sum_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/exists-le-of-sum-le.md) | 88 | `result-track:e89320695d828e06f6d9abeb389ad0256cb91237ba949a3c6ceda4cae1d0f1b8` |
| 12 | `lemma` | [sum_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/sum-isup.md) | 95 | `result-track:806cf32584b159afb9dd873cbe2c09b7931f7ddee25c7b2b21525e4fedfc4544` |
| 13 | `lemma` | [sum_iSup_of_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsPublic.lean/declarations/sum-isup-of-monotone.md) | 106 | `result-track:9f7f6825e161df7220be8082707770e9e98e89cbd6d418c92673390a70840796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39a415af21ab8c7f00219967625582ae7b905ca12eac2fc23e46ecc8161026a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantbedd108b4c3e3a789f34acfdde8db385cd1a02b5a1d673569613f53b64b46dab.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variantbedd108b4c3e3a789f34acfdde8db385cd1a02b5a1d673569613f53b64b46dab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
