# Verification target: Complex Circle Circle Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f60c56b7b8cdd1794096c6dd148613e39ebb458a",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Circle/Variant4f0a9016a93c00eb453ee67ba6e1b4dc4f1faa731097f5d9411f6b0a6cd5c297.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/index.md) · [Full source](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f60c56b7b8cdd1794096c6dd148613e39ebb458a`.

Source path: `GRWTSK/Analysis/Circle/Variant4f0a9016a93c00eb453ee67ba6e1b4dc4f1faa731097f5d9411f6b0a6cd5c297.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Circle/Variant4f0a9016a93c00eb453ee67ba6e1b4dc4f1faa731097f5d9411f6b0a6cd5c297.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Circle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Log` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [injective_arg](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/injective-arg.md) | 24 | `result-track:35d0a24375699e64ea14247968ff46dfcc2b02f17aed4ab9015b46ca88a5e868` |
| 2 | `theorem` | [arg_eq_arg](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/arg-eq-arg.md) | 28 | `result-track:1fc9f4dcd5cfb41a5cb88e9a0a9f399c538c2f476924dd5fb834d9a58002ce19` |
| 3 | `theorem` | [arg_exp](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/arg-exp.md) | 31 | `result-track:07cc593cfcc23b34d4d9d1cd739002171a2a3b9bb4872f7fd0ae6375059b839a` |
| 4 | `theorem` | [exp_arg](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/exp-arg.md) | 35 | `result-track:4f859b0d07d9dccc42f9b3110b1ac726b08b0968122b80df31a15288ab293e37` |
| 5 | `def` | [argPartialEquiv](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/argpartialequiv.md) | 41 | `declaration-track:5838e90c286900ac64cca4f5b20018938dda8f5276fea05ddde6970559dce5a1` |
| 6 | `def` | [argEquiv](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/argequiv.md) | 53 | `declaration-track:11534cb89a2bfc1097801b811cdfcc1c41f33c1f0cf673d03c313e416a522673` |
| 7 | `lemma` | [leftInverse_exp_arg](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/leftinverse-exp-arg.md) | 59 | `result-track:38bf2f27b9d2dc2f88718dc090064cf151643ec05c04d20c31a9e70fb5ae9936` |
| 8 | `lemma` | [invOn_arg_exp](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/invon-arg-exp.md) | 60 | `result-track:fd62a32a2e2bbaf548229e865cbfaa06be9de56871666b165bce1f3387c42af4` |
| 9 | `lemma` | [surjOn_exp_neg_pi_pi](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/surjon-exp-neg-pi-pi.md) | 61 | `result-track:727d35b1a75597ddb19cfea3790bbb95eacf90a6f968d7b7dbdc09c19c5490bd` |
| 10 | `lemma` | [exp_eq_exp](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/exp-eq-exp.md) | 63 | `result-track:617f9cffbe5c10069569acddb9d87c7376ddbb951fb5f1a7a29e6de44e14c125` |
| 11 | `lemma` | [periodic_exp](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/periodic-exp.md) | 69 | `result-track:cf647eed4152b373bb23f43c3651f975eb8d9a5ac6a3ffd9998ecee629215a0a` |
| 12 | `lemma` | [exp_two_pi](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/exp-two-pi.md) | 71 | `result-track:cfde515991845c25d020b5d5e1360a1abb4c6825f0ffb09e1f24e4c8dd1b70b8` |
| 13 | `lemma` | [exp_int_mul_two_pi](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/exp-int-mul-two-pi.md) | 73 | `result-track:e60056f6bc61078c537f5b5b5344b74cfbf730a17ea8a974767abd03382d2845` |
| 14 | `lemma` | [exp_two_pi_mul_int](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/exp-two-pi-mul-int.md) | 76 | `result-track:e08bbe0b69eb9e36cb2471fdc63f59e549009ffca538f1b3656549f0b7cae5ab` |
| 15 | `lemma` | [exp_eq_one](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/exp-eq-one.md) | 79 | `result-track:d41d6b59a93aa4f4b5302c3d045dff9d76eedbe973a79e3aa1e5e092f7a5f2b5` |
| 16 | `lemma` | [exp_inj](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/exp-inj.md) | 83 | `result-track:5eea4c9fec9f48c36d591923c98e142559e3c73a55c18781d71dbbc79de636ad` |
| 17 | `lemma` | [exp_sub_two_pi](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/exp-sub-two-pi.md) | 86 | `result-track:a688a0370f330189866d4664919328d281c7c2e57d5dc6c793705a003eb75288` |
| 18 | `lemma` | [exp_add_two_pi](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/exp-add-two-pi.md) | 87 | `result-track:5c679ef38cf8df756f7d832b421cca9d1d51e03a921cb2362c0777dc0d8564ce` |
| 19 | `def` | [toCircle](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/tocircle-source-edition-2.md) | 94 | `declaration-track:e99858db378d1ad27a3ea6bcb30b748e8ad0a4fa7f10e1501316b8cdf67b71b2` |
| 20 | `lemma` | [toCircle_coe](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/tocircle-coe.md) | 96 | `result-track:d6b5093fcc8779231dbd45d0364efc03495d9bb08c4b82126759eece20685a8f` |
| 21 | `lemma` | [coe_toCircle](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/coe-tocircle.md) | 98 | `result-track:523e8ef5f0f25b3e78ba8bf443e23cb9d59273e8b428d5bef8643960d5c28a69` |
| 22 | `lemma` | [toCircle_zero](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/tocircle-zero.md) | 102 | `result-track:1ddde3d5067cf3fe211e28771d45198811950afaba356dfd1748be0f08ab6ba1` |
| 23 | `lemma` | [toCircle_neg](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/tocircle-neg.md) | 104 | `result-track:2929addad37c877c208f2094b1e1ab977d3b4f9066a27fb81630a99fa725fe92` |
| 24 | `lemma` | [toCircle_add](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/tocircle-add.md) | 108 | `result-track:0ce09c75b1835b1ca416ec8fc7353b7eaaa8272913477f8831ca11f7e253dcad` |
| 25 | `lemma` | [arg_toCircle](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/arg-tocircle.md) | 113 | `result-track:5d1edb6aeabc22a3cecd30adadc69059d00edc0b32986d5d5683fbdd02996c06` |
| 26 | `theorem` | [scaled_exp_map_periodic](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/scaled-exp-map-periodic.md) | 126 | `result-track:6815190c9ccf97efc60e0f76ed2b4904418307acd26382c28ed0fc2276617225` |
| 27 | `def` | [toCircle](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/tocircle.md) | 134 | `declaration-track:ac45a709a539d145e48f562e204c0fe4d3f4659b39b5c2d3d1c31e35a7564ba7` |
| 28 | `theorem` | [toCircle_apply_mk](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/tocircle-apply-mk.md) | 137 | `result-track:020935371ca149d4adb5c59ef9a744d4ead3aab753c3aa7c07ae008a4fb7e20f` |
| 29 | `theorem` | [toCircle_add](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/tocircle-add-source-edition-2.md) | 140 | `result-track:5036d1193b6bd4e8f779cba7b107a404760cd4916f82c1bad4b5bee82ac28ddb` |
| 30 | `lemma` | [toCircle_zero](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/tocircle-zero-source-edition-2.md) | 146 | `result-track:2a546ebd638494d86d02ee8de43bf468d4bcab37a79e5087b2c971bc6400dd59` |
| 31 | `theorem` | [continuous_toCircle](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/continuous-tocircle.md) | 149 | `result-track:78b50afef4a89d03afe92264596024cf0b360e69bf774b5d0758ddff20d5ab21` |
| 32 | `theorem` | [injective_toCircle](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/injective-tocircle.md) | 152 | `result-track:5beef078aa1338d150cd452cb3a2ddb1af370ee0f2711c5fab35ea73caa368ac` |
| 33 | `def` | [homeomorphCircle'](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/homeomorphcircle-source-edition-2.md) | 165 | `declaration-track:cdfaea5e465ddb03996991c1319854896f80ca00a265c042aa2f36be6187b9af` |
| 34 | `theorem` | [homeomorphCircle'_apply_mk](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/homeomorphcircle-apply-mk.md) | 176 | `result-track:5fc922ace6235042dc51f55a9ecf644c3a419bc8fc0dfc7b1d182861e73bcda8` |
| 35 | `def` | [homeomorphCircle](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/homeomorphcircle.md) | 179 | `declaration-track:8d4bb2faf6304aff2c6a394f433f19d2a9eda214edcd4e2f0ac3589dbc09338d` |
| 36 | `theorem` | [homeomorphCircle_apply](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/homeomorphcircle-apply.md) | 182 | `result-track:1bec54e17e860366ac65d10ecc3d8a324b68634b4c57074c0bc38ea2fb8fe477` |
| 37 | `lemma` | [isLocalHomeomorph_circleExp](../../../../SpecialFunctions/ComplexCircleCircleSourceEdition1.lean/declarations/islocalhomeomorph-circleexp.md) | 194 | `result-track:bc2f4a6993a46b5eec6f94aba28541251ab40305072597f94b0cdfd1fbfccaa5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b818b3271a8a3d30999c9dbb462ccc1da5add868a37c69ad5c2b7285062f7e11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Circle/Variant4f0a9016a93c00eb453ee67ba6e1b4dc4f1faa731097f5d9411f6b0a6cd5c297.lean","GRWTSK/_verification/specifications/Analysis/Circle/Variant4f0a9016a93c00eb453ee67ba6e1b4dc4f1faa731097f5d9411f6b0a6cd5c297.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
