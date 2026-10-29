# Verification target: Partition Subbox Induction Subbox Induction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac9965aaeb4509d266447cd93dac052c997e84bc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac9965aaeb4509d266447cd93dac052c997e84bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Box.SubboxInduction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.BoxIntegral.Partition.Tagged` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitCenter](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/splitcenter.md) | 43 | `declaration-track:ce79db74fe3aa541a4cb2b9498fc25f9ba7d83e81d754342b769081287f8b56b` |
| 2 | `theorem` | [mem_splitCenter](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/mem-splitcenter.md) | 52 | `result-track:d5cc91e4065968b6745ea26ebda683e080e3f07f6168a9f17b347650a6a844d0` |
| 3 | `theorem` | [isPartition_splitCenter](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/ispartition-splitcenter.md) | 54 | `result-track:29d67e20484f5a27e04127d6d32354346c1b0e61b99e2425fd949f5ec21a54c6` |
| 4 | `theorem` | [upper_sub_lower_of_mem_splitCenter](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/upper-sub-lower-of-mem-splitcenter.md) | 57 | `result-track:aacd58364283b0518803be527c253795e66b052a15055b5580d429c2a6a6dc24` |
| 5 | `theorem` | [subbox_induction_on](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/subbox-induction-on.md) | 80 | `result-track:813ddaa952418ff6ac69ae86bbfcbb3c9a07979b7d09f3b4628e8ac4b755bd16` |
| 6 | `theorem` | [exists_taggedPartition_isHenstock_isSubordinate_homothetic](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/exists-taggedpartition-ishenstock-issubordinate-homothetic.md) | 99 | `result-track:0bf1ebc7c955beced761051d649b98f1d0dd2e4367c2472d3ace99d3c17000d3` |
| 7 | `theorem` | [exists_tagged_le_isHenstock_isSubordinate_iUnion_eq](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/exists-tagged-le-ishenstock-issubordinate-iunion-eq.md) | 144 | `result-track:dd758cbb623533532117a2ff629a5dd13e1667bce2c25d7be282cbf474387a90` |
| 8 | `def` | [toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/tosubordinate.md) | 164 | `declaration-track:62dc678b2edc0286ec907d0bae630da4bf8b899b6bd147e40685b5dce2cf3366` |
| 9 | `theorem` | [toSubordinate_toPrepartition_le](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/tosubordinate-toprepartition-le.md) | 167 | `result-track:52d8f787b220b9f37d2c0d89417b3c4aed10ccf972a0fa821d0f7e36b7e69b5f` |
| 10 | `theorem` | [isHenstock_toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/ishenstock-tosubordinate.md) | 171 | `result-track:c365d4159450bb644987259c74c597198f245d8f66fcd21080cc460f13b20ea2` |
| 11 | `theorem` | [isSubordinate_toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/issubordinate-tosubordinate.md) | 175 | `result-track:a3266d159b721cadd76e525cb03672021652951ec2bfb97e321c35be75964909` |
| 12 | `theorem` | [distortion_toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/distortion-tosubordinate.md) | 180 | `result-track:0dbd119a3dee4f059df526ec2a2ca2649de6c9924d468abc7e0d3a733a395497` |
| 13 | `theorem` | [iUnion_toSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/iunion-tosubordinate.md) | 185 | `result-track:ab042b24f89250dc64edf1eb633f9bc5a002353e10a3260a67e83bc5a39e849c` |
| 14 | `def` | [unionComplToSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/unioncompltosubordinate.md) | 204 | `declaration-track:86a785bb25c1d30d51c8b004b899c3f4d427356c66c26b3ad30072a0bb4a99f8` |
| 15 | `theorem` | [isPartition_unionComplToSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/ispartition-unioncompltosubordinate.md) | 209 | `result-track:624f7fbd5f15d2eecf4e19a6b578170ffcad8979d97b2df1a2084bbdffd13a5c` |
| 16 | `theorem` | [unionComplToSubordinate_boxes](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/unioncompltosubordinate-boxes.md) | 216 | `result-track:a907c690c4dbc9a7e5e031157d26e97919bcc2a29314e6fead30d121c22bac29` |
| 17 | `theorem` | [iUnion_unionComplToSubordinate_boxes](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/iunion-unioncompltosubordinate-boxes.md) | 221 | `result-track:5ff205bfa9c0fd9f8e03501bf218ff899b826af2037175bde133137e406aa291` |
| 18 | `theorem` | [distortion_unionComplToSubordinate](../../../../FunctionalAnalysis/PartitionSubboxInductionSubboxInduction.lean/declarations/distortion-unioncompltosubordinate.md) | 227 | `result-track:6673f34b9cab17bb7112925901d54062f2d3639684ffe7427e94fa89fcbe6e6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aafd1f5dd87bed86ef08029f129eba43961360b8e8ba5128e0051baa9640cd36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant7625be8017598282d2456fe1333285868982c990d4316a876cf46ff068eaddc4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
