# Verification target: ENat Big Operators Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66f830593398163b2460d4f77d1c113b13fb9241",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant8c44f19b713b40d44252b354491f592250dafdbecb87c80734cb241bbcbdb4e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66f830593398163b2460d4f77d1c113b13fb9241`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant8c44f19b713b40d44252b354491f592250dafdbecb87c80734cb241bbcbdb4e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant8c44f19b713b40d44252b354491f592250dafdbecb87c80734cb241bbcbdb4e1.lean.json)

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
| 1 | `theorem` | [toNat_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/tonat-prod.md) | 38 | `result-track:42712f44ef281046fb83f16b8f68c7328c9b9ce3931ecbcb92b8e8eb6c2774d2` |
| 2 | `theorem` | [iInf_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/iinf-sum.md) | 42 | `result-track:42d7029160182bd51df710f18a5621ab06f3c216af98d86fbf7cd6f3b9895494` |
| 3 | `lemma` | [prod_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/prod-ne-top.md) | 63 | `result-track:3dc09168b3e9c563532c5b2f189a18183cef0e9733a89b70ce6f5b3b34c68dd1` |
| 4 | `lemma` | [prod_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/prod-lt-top.md) | 66 | `result-track:52891ce1d2435714057993b6f2d9cc4dcfd1242f62f00ce6b4d84905076f583d` |
| 5 | `lemma` | [sum_eq_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/sum-eq-top.md) | 69 | `result-track:395615ce84f45cb7a22a104b651ec4aa4e4b9f3251c74dc9943465a6f7db7a75` |
| 6 | `lemma` | [sum_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/sum-ne-top.md) | 72 | `result-track:5a13f31712522342dd968e307eeb8d850d3bded1c47dda4549d1700c73bc4222` |
| 7 | `lemma` | [sum_lt_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/sum-lt-top.md) | 75 | `result-track:6b98bf5b029ef85548c888f72e0db6549727ee0fb30fe91512f7f39c68250bc7` |
| 8 | `theorem` | [lt_top_of_sum_ne_top](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/lt-top-of-sum-ne-top.md) | 77 | `result-track:025befdace2026f553a69a640e91ce33f2beae6f8878185bb44248c08daba940` |
| 9 | `theorem` | [toNat_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/tonat-sum.md) | 83 | `result-track:43936733d060627f491e84754fa1dff1b3b19ec41597329c6a56e80f070ade82` |
| 10 | `theorem` | [sum_lt_sum_of_nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/sum-lt-sum-of-nonempty.md) | 88 | `result-track:8562b8aad85d44abfbf49f35254c5d884a3347aea3cbe9ce0e32afd8914bb08b` |
| 11 | `theorem` | [exists_le_of_sum_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/exists-le-of-sum-le.md) | 96 | `result-track:9ca0dddfef291ee3efebbf3cb10fedc67810c8b591a2f2e0bf4dc3d968e84f47` |
| 12 | `lemma` | [sum_iSup](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/sum-isup.md) | 103 | `result-track:d7e3e59ec99307401b22957a26bc030a5de7b8bb8c8ab99c8a44aedc6620ddb9` |
| 13 | `lemma` | [sum_iSup_of_monotone](../../../../../../ComputerScience/TheoryOfData/DataStructures/ENatBigOperatorsNamespacedPublic.lean/declarations/sum-isup-of-monotone.md) | 114 | `result-track:9cc1bc5355daf86e8aedf026048ff99f6c0856de1ea8a89c419fa83f766a5deb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=725bcaa3f1566bd7828abd7326d877036ed70b81cc33aab062ea8e3b292fe9f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant8c44f19b713b40d44252b354491f592250dafdbecb87c80734cb241bbcbdb4e1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BigOperators/Variant8c44f19b713b40d44252b354491f592250dafdbecb87c80734cb241bbcbdb4e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
