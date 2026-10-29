# Verification target: Local Property Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8d10cf5e7f5c5c4996591869b3e1bcfa8740f86",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8d10cf5e7f5c5c4996591869b3e1bcfa8740f86`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsPreLocalizingSequence](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isprelocalizingsequence.md) | 56 | `declaration-track:02ffd41a79e5f154824b032b0e9deb5f609787891bb72e75a20c5ffc106d3258` |
| 2 | `structure` | [IsLocalizingSequence](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/islocalizingsequence.md) | 64 | `declaration-track:9d5db75e758eabbf8e35393a3a4e930eddf29381784f660cc42a217909ba95c2` |
| 3 | `lemma` | [isLocalizingSequence_const_top](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/islocalizingsequence-const-top.md) | 69 | `result-track:d8d53eac1670e959f254d80ebe874acc52aa18a6d73120cdf76d0c5708476462` |
| 4 | `lemma` | [IsLocalizingSequence.min](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/islocalizingsequence-min.md) | 79 | `result-track:fbf7a7355a09d0dda3af79c6fe28da185f85674d669b54a345d7858686aeec23` |
| 5 | `def` | [Locally](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/locally.md) | 93 | `declaration-track:8926956ad0a9af27b51375b145bd2ca8a674e539f95f85b8cbc2f79b06e5b83f` |
| 6 | `def` | [localSeq](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/localseq.md) | 105 | `declaration-track:c5555d79817f35cce2c75bcf4878e495096268e9be8107082b7dec8adcea4151` |
| 7 | `lemma` | [isLocalizingSequence_localSeq](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/islocalizingsequence-localseq.md) | 109 | `result-track:8104b2f1281976548cb31706d86dc2ac9ccbf9f6ed8e2a54d20dd2d34b97d5ec` |
| 8 | `lemma` | [stoppedProcess_localSeq](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/stoppedprocess-localseq.md) | 113 | `result-track:e119127773dbbc4a9857c394635eb3bec5c474d7e07dc95fcbddbdc55b7c0aba` |
| 9 | `lemma` | [of_prop](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/of-prop.md) | 117 | `result-track:f87d2d5a6addda77d3f0714606ef2b126c27f3a9c024d564c818cdc46ca31d5b` |
| 10 | `lemma` | [mono](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/mono.md) | 120 | `result-track:7c5406480021d03129500e64c7f38654745c28bc93ebce362ccdcfcfdac95bba` |
| 11 | `lemma` | [of_and](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/of-and.md) | 124 | `result-track:87ed4ec1e3a9eebc90d17a844ec657039b1f3e8b121ca3265438d771474a8773` |
| 12 | `lemma` | [left](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/left.md) | 128 | `result-track:77a131941d4cea2e9f0751818e97f5f34b32d278aa73b4ba3acc193c8f9de1e6` |
| 13 | `lemma` | [right](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/right.md) | 132 | `result-track:adc4eee73519915a07331be7beddbd050b8281e1e22402313dba53e068a52da9` |
| 14 | `def` | [IsStable](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isstable.md) | 142 | `declaration-track:5e2495ac0a76b290f21473ff71c4d49b81c94cf8d4f57b23fb709d1a51134e34` |
| 15 | `lemma` | [IsStable.and](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isstable-and.md) | 147 | `result-track:94c623db50d50f8bc8598e05b4a57143878a549384a72870aa2e190132ae96fa` |
| 16 | `lemma` | [IsStable.locally](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isstable-locally.md) | 153 | `result-track:4e5c5c48004bd2bb53aea02e80ec892c7f57eac8aa415a1671e835d55372dd47` |
| 17 | `lemma` | [IsStable.locally_and_iff](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isstable-locally-and-iff.md) | 161 | `result-track:59f2589786ef16a805f33cb2e2788d488d0be3eb85953abc074f57dff99d8783` |
| 18 | `lemma` | [IsPreLocalizingSequence.isLocalizingSequence_biInf](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isprelocalizingsequence-islocalizingsequence-biinf.md) | 190 | `result-track:632fa51a03a15bf3536e9346c8f8b1d3c9287d0b41e4cf4c0899106c95943fe1` |
| 19 | `lemma` | [IsStable.locally_of_isPreLocalizingSequence](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isstable-locally-of-isprelocalizingsequence.md) | 209 | `result-track:b82b87996aed1b117d68b300db4481ecdead4a043a2912fc8062c808dcb12b38` |
| 20 | `lemma` | [isPreLocalizingSequence_of_isLocalizingSequence_aux'](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isprelocalizingsequence-of-islocalizingsequence-aux.md) | 229 | `result-track:5adc4e5ba2d16e0d79c6cbf900b7ee5805a6c2bd41b387f97a18847045521e98` |
| 21 | `def` | [mkStrictMonoAux](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/mkstrictmonoaux.md) | 262 | `declaration-track:a7fa4c3aa887fe9aeb7ca0b8119799c55d2bd6c6295ccf43e461590bf7516ff2` |
| 22 | `lemma` | [mkStrictMonoAux_strictMono](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/mkstrictmonoaux-strictmono.md) | 266 | `result-track:4fa0de9a8338df9e470e8e6005efbba305c32d4d34ac938ab8da777a7c37a1ab` |
| 23 | `lemma` | [le_mkStrictMonoAux](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/le-mkstrictmonoaux.md) | 269 | `result-track:601ff18b9ccc51c5cbc81400817ca6c212f58764626b35762d7ed189c41597e2` |
| 24 | `lemma` | [isPreLocalizingSequence_of_isLocalizingSequence_aux](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isprelocalizingsequence-of-islocalizingsequence-aux-source-edition-2.md) | 273 | `result-track:d176e55cb3fc01831c142bf6c787d4c3d7471ef04d4ee1376e53fd7485015c4f` |
| 25 | `lemma` | [IsLocalizingSequence.isPrelocalizingSequence_inf_extraction](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/islocalizingsequence-isprelocalizingsequence-inf-extraction.md) | 287 | `result-track:c38d192a2387cff6028a763b3215cae60f1c3be17fde8624d4919faee2f1ca40` |
| 26 | `lemma` | [IsStable.locally_locally_iff](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isstable-locally-locally-iff.md) | 305 | `result-track:73232a03c80ad49374d48ce9fddc872387c15241ab2bf424f6d153648f09feec` |
| 27 | `lemma` | [IsStable.locally_induction](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isstable-locally-induction.md) | 325 | `result-track:898f74ff2e55dea2972766ad2deb213e6a6125a5d718bff4cbaa9bf4a6d62104` |
| 28 | `lemma` | [IsStable.locally_induction₂](../../../../ProbabilityTheoryAndStochasticProcesses/LocalPropertyPublic.lean/declarations/isstable-locally-induction-source-edition-2.md) | 332 | `result-track:f4dc26dec910d5e1c109e08aabcf31cbd9a2f327ad609b6dc67d788801719976` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be735c4d9c264a4a4ae3a52ef730c2510f673dffde12093018a7908cacc03d64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocalProperty/Variant7ee70c0ea678e4a4c9057ade30ec097aa220cd6171200057ee29dbf33420b03b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
