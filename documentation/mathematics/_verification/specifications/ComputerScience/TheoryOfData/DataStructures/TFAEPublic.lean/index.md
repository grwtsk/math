# Verification target: TFAEPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470fd55d0b16206d5c2f6f39824d0790c09784bf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470fd55d0b16206d5c2f6f39824d0790c09784bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d.lean.json)

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
| 1 | `def` | [TFAE](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/tfae.md) | 29 | `declaration-track:9e6911117cf73566fc204468b479adbce3771d3034431f9accc01a9e7ce7c1c9` |
| 2 | `theorem` | [tfae_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/tfae-nil.md) | 32 | `result-track:d00cfdaa01b577c1a0ef768fb6c7066a4d04c8f4d324828be84d29b91a5965d3` |
| 3 | `theorem` | [tfae_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/tfae-singleton.md) | 36 | `result-track:17ab599c5c71dadda99e54e13ae588e2ab53cc067736f6dc6437b9bd45ece6f9` |
| 4 | `theorem` | [TFAE.subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/tfae-subset.md) | 38 | `result-track:fc40d4e72cacb4d767d7c88b9a6986af973ec779904c00f84a4278a61b54e731` |
| 5 | `theorem` | [tfae_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/tfae-congr.md) | 41 | `result-track:c311ce7c62d6c1604535dd3cc4447cf4c83663d43b12ef6d4405cd12e2142590` |
| 6 | `theorem` | [Perm.tfae_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/perm-tfae-iff.md) | 44 | `result-track:6329f7656cdc5258d0b09495a8958634d53d67341c73d8bc3eda4ee890bc92d3` |
| 7 | `theorem` | [tfae_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/tfae-reverse.md) | 47 | `result-track:532971ca3a29653bbc27cc32baa937ec4fc23ed27c1d32e8d2d7b179b592146b` |
| 8 | `theorem` | [tfae_of_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/tfae-of-forall.md) | 49 | `result-track:4a3c6c2e39895d415a37d6f1d99c022cbb0c69eff69d14e92f37b86f0f5bb225` |
| 9 | `theorem` | [TFAE.out](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/tfae-out.md) | 55 | `result-track:e1fb1233d7d7f2cd06f4d0480a2b837caec2cd340149ffd7b731b0d842ba4c25` |
| 10 | `theorem` | [forall_tfae](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/forall-tfae.md) | 75 | `result-track:5089eb5bcfb215e03b84b1acdd38a62acae6f8160cec014ca27878649ee9084f` |
| 11 | `theorem` | [exists_tfae](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/exists-tfae.md) | 94 | `result-track:e9f1f3fd87ddf29fea252aac6beea8a8eb9842bf8b09dc6ab41922383cb83940` |
| 12 | `theorem` | [tfae_not_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/TFAEPublic.lean/declarations/tfae-not-iff.md) | 101 | `result-track:19961df870dbeb337ce314dfb67fa48017c52db83f6888a6b784b9829a73ba0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f77efbb1df6bd44fb5293dff1e142187ace52db7b0209ffd0e68cdf4b60a44e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TFAE/Variant4f4e2aa0798264c6dee17e59c20eb943fd8ee27733ffd4225bc47d1aa9ffc18d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
