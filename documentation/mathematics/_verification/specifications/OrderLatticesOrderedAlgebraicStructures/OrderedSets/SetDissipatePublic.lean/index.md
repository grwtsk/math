# Verification target: Set Dissipate Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3f4f233110ad0a32ce723b31c566e8046544949",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetDissipate/Variantc624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3f4f233110ad0a32ce723b31c566e8046544949`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetDissipate/Variantc624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetDissipate/Variantc624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dissipate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/dissipate.md) | 26 | `declaration-track:73bb24626840023d7f44ed42c98497a9a0df3d825be7313374741ddd633029b9` |
| 2 | `theorem` | [dissipate_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/dissipate-def.md) | 29 | `result-track:265cbf59d1aed95d53e120cba16eacdf2cb0ed5afb0d9ec343731ef296d797bb` |
| 3 | `theorem` | [dissipate_eq_biInter_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/dissipate-eq-biinter-lt.md) | 31 | `result-track:7e793befd771d44b5e55f337d6b8485f98f5a8c5f97ee5b57b0a05483dc22cc0` |
| 4 | `theorem` | [mem_dissipate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/mem-dissipate.md) | 35 | `result-track:ab1e600e29ddb3ce22ce985c2c4ce72553851c88b7cd483e1f3f3a2e6df0a4e4` |
| 5 | `theorem` | [dissipate_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/dissipate-subset.md) | 38 | `result-track:fd700a8b5eccb48c6c0443b0c7d1f2ef2dced6ab9564f62f0c2cb5cb114e60df` |
| 6 | `theorem` | [iInter_subset_dissipate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/iinter-subset-dissipate.md) | 41 | `result-track:8e70d0c7af36a87e02eef6d5b207fb7e6882e1de18a18c0b8f5c430d27fa718b` |
| 7 | `theorem` | [antitone_dissipate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/antitone-dissipate.md) | 45 | `result-track:636e4f35d74c3d7cc5a69be678e96fe92647edab2f499d936b8c1a0774c304fb` |
| 8 | `theorem` | [dissipate_subset_dissipate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/dissipate-subset-dissipate.md) | 49 | `result-track:6fdca68d6527d6f09bb1089ec8d3675911b3ce586343981918923a1bdb912f96` |
| 9 | `theorem` | [biInter_dissipate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/biinter-dissipate.md) | 54 | `result-track:fe319da9147588afaa15fe71ead6d24220e858c89fe2709bb2ce2ddce1234875` |
| 10 | `theorem` | [iInter_dissipate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/iinter-dissipate.md) | 64 | `result-track:cd75066821a8d00b508e0bf05d7c88fc375859669e5f6ef4d5c1e3aeca6e94f8` |
| 11 | `lemma` | [dissipate_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/dissipate-bot.md) | 70 | `result-track:1aff066a80a1c144221fe363e2aa386b0549a6ad78a88fbffd33184eec4cbfe0` |
| 12 | `lemma` | [dissipate_zero_nat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/dissipate-zero-nat.md) | 74 | `result-track:1fa0815d2a0a227f75c3a8598ee500c8fcc47fa369a23d2cf7aa841b1f5da8b4` |
| 13 | `theorem` | [dissipate_succ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/dissipate-succ.md) | 78 | `result-track:e9db4947d1adc5d2d5b758d4087e7909c4d0c14b03863852fe398369c29d742c` |
| 14 | `lemma` | [exists_subset_dissipate_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/exists-subset-dissipate-of-directed.md) | 86 | `result-track:328aa2e2b0e7d4ffc1cc87590f1ac0fc4f20a390bd1356c9a89aa8d42fd565cc` |
| 15 | `lemma` | [directed_dissipate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/directed-dissipate.md) | 95 | `result-track:a13bec9646a845c7ae53f9f607647aefbc01f781bc9ea46e21573fec6f77ca37` |
| 16 | `lemma` | [exists_dissipate_eq_empty_iff_of_directed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetDissipatePublic.lean/declarations/exists-dissipate-eq-empty-iff-of-directed.md) | 98 | `result-track:a202dcca49d73cd1af5a1cded12b828ee11d95264d1fc5409a93fc2eceab1100` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c459082557db01d3e53bfa6ec86d534f288d4212b073b29ffddca58e83bcc41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetDissipate/Variantc624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SetDissipate/Variantc624af82714a88e917e62ba006c78c26ed8e480ee39dfb65e266f98242017233.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
