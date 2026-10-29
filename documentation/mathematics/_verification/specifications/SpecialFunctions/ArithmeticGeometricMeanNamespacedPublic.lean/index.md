# Verification target: Arithmetic Geometric Mean Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8a163119ef039c04c2a0321c1330ee2df20063d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8a163119ef039c04c2a0321c1330ee2df20063d`.

Source path: `GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean.json)

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
| 1 | `lemma` | [sqrt_mul_le_half_add](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/sqrt-mul-le-half-add.md) | 39 | `result-track:925092241cb9e21698a15c609a6aaab4efad2ef4ef55318a51eedd2e60528296` |
| 2 | `lemma` | [sqrt_mul_lt_half_add_of_ne](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/sqrt-mul-lt-half-add-of-ne.md) | 45 | `result-track:351b8c38260f4f99561a344891ca4fee58d5b8b374288dba1209b7f18e254a33` |
| 3 | `def` | [agmSequences](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences.md) | 63 | `declaration-track:8b7beaa1f77284f8846c19be5ba5bbc4c6ff8a534d151c1d1fc9906f16276154` |
| 4 | `lemma` | [agmSequences_zero](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-zero.md) | 69 | `result-track:4063ac0503caeb3bcf6bc8624b7bb00a10a65db249ea06b47341ddad7f0ebbe5` |
| 5 | `lemma` | [agmSequences_succ](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-succ.md) | 71 | `result-track:335932796892ebb69f33f321ae953780224966d2705d2f572650c2acedfd4605` |
| 6 | `lemma` | [agmSequences_succ'](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-succ-source-edition-2.md) | 74 | `result-track:761381ff3c4b65442b1007943872c9a4d6b411c352cc84bee8200bdfb84b7b96` |
| 7 | `lemma` | [agmSequences_comm](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-comm.md) | 80 | `result-track:8f7ae688a0f207727018e7bed19e92733b1444042fa9cc59d662587655268801` |
| 8 | `lemma` | [le_gm_and_am_le](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/le-gm-and-am-le.md) | 86 | `result-track:9fff8344975c45ec960907edbacd6e9db705f126a3691ab130d64393840332b9` |
| 9 | `lemma` | [dist_gm_am_le](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/dist-gm-am-le.md) | 94 | `result-track:273e5149a6213a57f7a971252db03d7540490c127f258777e418068eb4b100b6` |
| 10 | `lemma` | [agmSequences_monotone_and_antitone](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-monotone-and-antitone.md) | 108 | `result-track:f6409daa6638ec34c967bfbd906d5004531d16751afd3ce43a2944eeb5c3805b` |
| 11 | `lemma` | [agmSequences_fst_monotone](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-fst-monotone.md) | 118 | `result-track:886aa297e4c147b07c2f75df1627c1716e5fee804acd02f3b8e173ecf632c572` |
| 12 | `lemma` | [agmSequences_snd_antitone](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-snd-antitone.md) | 121 | `result-track:fcc16f6a9f5569cbfbc0a2b3e7b963edfbbde16615732a3d526d1100f9a945e8` |
| 13 | `lemma` | [agmSequences_fst_le_snd](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-fst-le-snd.md) | 124 | `result-track:1c40e64c7187917a4b3db45c3c21dce878092ae7614e187027519e9f979a9ce4` |
| 14 | `lemma` | [agmSequences_fst_lt_snd_of_ne](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-fst-lt-snd-of-ne.md) | 134 | `result-track:f79708338181562e3ae085afec749f0215953abdb32aa08f532730671bdb93e4` |
| 15 | `lemma` | [agmSequences_min_max](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-min-max.md) | 147 | `result-track:ad06b0c350265aca8390e7bdede23b8bf4ae0ba60ec4814cd6efb739a51cca59` |
| 16 | `lemma` | [dist_agmSequences_fst_snd](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/dist-agmsequences-fst-snd.md) | 152 | `result-track:f2ba8556bf14e4d8be84117324e0d701e31762a7e058dcbd5f0fd0efb5651f3a` |
| 17 | `lemma` | [tendsto_dist_agmSequences_atTop_zero](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/tendsto-dist-agmsequences-attop-zero.md) | 162 | `result-track:0aeb15c306dd29f064e217e8eed6668a554c92ad733134fb4844598420173d22` |
| 18 | `def` | [agm](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm.md) | 172 | `declaration-track:0b3463bbe5d4364ab7469e30952a31e0fa6974d4e700062322acf3f4a6211e18` |
| 19 | `lemma` | [agm_comm](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-comm.md) | 175 | `result-track:7f4186a0404594110f6d026434bb99e0be6a9b10eeb7985636a5ed53b2090a30` |
| 20 | `lemma` | [agm_eq_ciInf](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-eq-ciinf.md) | 181 | `result-track:4332dc64facbfe84a77c9ac06ceff481a7a0878ba11da8df7e8115105596d338` |
| 21 | `lemma` | [tendsto_agmSequences_snd_agm](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/tendsto-agmsequences-snd-agm.md) | 183 | `result-track:35558caf9b6fbae8afa67fc51be00ff74feba9351c3218481a69a381458195da` |
| 22 | `lemma` | [agm_le_agmSequences_snd](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-le-agmsequences-snd.md) | 186 | `result-track:f8c3c7ad5e0cc28b1a076da935749a8389c09e5c92af6a3259b219ef4c1beb1f` |
| 23 | `lemma` | [agm_le_max](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-le-max.md) | 188 | `result-track:c30f2fc05b81db00476dee7633f25d4a7a424e36c8ce8dfd6d453e7bec38230f` |
| 24 | `lemma` | [bddAbove_range_agmSequences_fst](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/bddabove-range-agmsequences-fst.md) | 196 | `result-track:b830b21ad73afbe87067d1a808583e39b533046f71acc29b9ea4f558f0e441e4` |
| 25 | `lemma` | [agm_eq_ciSup](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-eq-cisup.md) | 203 | `result-track:b455bf028f8b498242f9175b97f8db22e91701a80fd3f0fbde9d39066a0b1754` |
| 26 | `lemma` | [tendsto_agmSequences_fst_agm](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/tendsto-agmsequences-fst-agm.md) | 211 | `result-track:17007c3b4b2d34bfe20ae18ad0abdd6b0e091a06a2daec631a9c851e78bc8371` |
| 27 | `lemma` | [agmSequences_fst_le_agm](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-fst-le-agm.md) | 216 | `result-track:29f96fe7090edd2edde57eee33b922e7eb17243ef2b5d80d4c544a7a65384a4d` |
| 28 | `lemma` | [min_le_agm](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/min-le-agm.md) | 220 | `result-track:4ed193cd077beb43c361ce05b4a1c3af6a20830701269b27a9b15a85e7a96a99` |
| 29 | `lemma` | [agm_self](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-self.md) | 229 | `result-track:c9f02aedc8fa7a057707f8e810d56b3aad96488c128fd6185d468b86d6dcc647` |
| 30 | `lemma` | [agm_zero_left](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-zero-left.md) | 237 | `result-track:27b3b9cc42d94cae793d1327c2ceb991fe3a72e13e5f822cec5c144ee0e641d7` |
| 31 | `lemma` | [agm_zero_right](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-zero-right.md) | 246 | `result-track:c8fba4646b76b64dc7b6796614640e2c7a48c4d07877205164ad776648f9785c` |
| 32 | `lemma` | [agm_pos](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-pos.md) | 249 | `result-track:a887e2b745b8132afcc074b87011f546b32a1318ef2a8efccbff743c5328854b` |
| 33 | `lemma` | [agm_eq_agm_agmSequences_fst_agmSequences_snd](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-eq-agm-agmsequences-fst-agmsequences-snd.md) | 251 | `result-track:31ffe8d12ae8c29682abc138b1d5f52c5bbbccf465406a68808001765342fb85` |
| 34 | `lemma` | [agm_eq_agm_gm_am](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-eq-agm-gm-am.md) | 258 | `result-track:dcb2539af4dfc0101517a83345619fe20d075ec8ce6c4805971a65e8479af90b` |
| 35 | `lemma` | [agmSequences_fst_lt_agm_of_pos_of_ne](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agmsequences-fst-lt-agm-of-pos-of-ne.md) | 261 | `result-track:0087c11e01855a638c870122f3076ce76d5ffa07c6cd56ad746f7e129ab1d9c9` |
| 36 | `lemma` | [agm_lt_agmSequences_snd_of_ne](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-lt-agmsequences-snd-of-ne.md) | 273 | `result-track:e2ececf3b0837005c57bc6f06bd31e65a019fa0fedd189da1278de2311ca7e84` |
| 37 | `lemma` | [min_lt_agm_of_pos_of_ne](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/min-lt-agm-of-pos-of-ne.md) | 283 | `result-track:c136a6457338b832f57f38f4cb7c5c428aff1db10649e00065c70788bc283eb6` |
| 38 | `lemma` | [agm_lt_max_of_ne](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-lt-max-of-ne.md) | 291 | `result-track:d8061b6b476e28dc94a917cbc39e75456dca1669527005abe2f851f8edb7321f` |
| 39 | `lemma` | [agm_mul_distrib](../../../../SpecialFunctions/ArithmeticGeometricMeanNamespacedPublic.lean/declarations/agm-mul-distrib.md) | 300 | `result-track:be8c45eef3851a3eafcae6e724108b08841995a9d97437f5b2b6c28f97a85856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18b32b5451901f437fe3eb6442f6fa9ab59e20c7a430cad691806de4db1bb6e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ArithmeticGeometricMean/Variant4936546be0f6e051cb89badd5b5c39a7688d5071d926f461337152098e5b8eb8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
