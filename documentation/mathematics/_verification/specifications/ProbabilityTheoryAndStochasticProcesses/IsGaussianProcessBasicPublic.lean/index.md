# Verification target: Is Gaussian Process Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c28af64482899b2b9d8c9f43cccbb5b169514ceb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variantc1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c28af64482899b2b9d8c9f43cccbb5b169514ceb`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variantc1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variantc1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/isprobabilitymeasure.md) | 46 | `result-track:4dbd32d9879b72f117b55371a4de6db7462b9eb128395577bb32aaaf790e8816` |
| 2 | `lemma` | [aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/aemeasurable.md) | 50 | `result-track:a9a21f02f58a2d2cdc1d06807f0efbee5c1549269721bbe022452b92b935518f` |
| 3 | `lemma` | [congr](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/congr.md) | 54 | `result-track:73f0e2f574680886f8c2cd25f236f7880ed7deb09cb273c5654a067829eb6617` |
| 4 | `lemma` | [hasGaussianLaw_eval](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/hasgaussianlaw-eval.md) | 70 | `result-track:159f8d30a27ad07d56fe14d62d7a9a7e5747a13cce494c806ee975e0e70f0710` |
| 5 | `lemma` | [hasGaussianLaw_prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/hasgaussianlaw-prodmk.md) | 76 | `result-track:7a68e9b5a25d7e244a0a5983eebefcdca94efd436b94311e47975cd0a6165b64` |
| 6 | `lemma` | [hasGaussianLaw_add](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/hasgaussianlaw-add.md) | 81 | `result-track:b968e564c9d0f9e40747f9af73c63ed4e75959fe44bfe1a7e07f5b3912d9fca5` |
| 7 | `lemma` | [hasGaussianLaw_fun_add](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/hasgaussianlaw-fun-add.md) | 84 | `result-track:c265d3816a8a5369ab726c4b72fe2a3cfebba39ad6471676add274ecfa2f9910` |
| 8 | `lemma` | [hasGaussianLaw_sub](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/hasgaussianlaw-sub.md) | 87 | `result-track:f739be9395384bff0a5ed0b9a90292fcffb2f5ab5dd5d360a01129e68690364a` |
| 9 | `lemma` | [hasGaussianLaw_fun_sub](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/hasgaussianlaw-fun-sub.md) | 90 | `result-track:87a153cf19e6a45dd2ccfd200399a3b36f92150e689aeb0e9aead3ba212e67c7` |
| 10 | `lemma` | [hasGaussianLaw_sum](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/hasgaussianlaw-sum.md) | 93 | `result-track:22814e24888bf49075fed232370b88eaab0a6777ceae0e99f46f01940bb59abd` |
| 11 | `lemma` | [hasGaussianLaw_fun_sum](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/hasgaussianlaw-fun-sum.md) | 98 | `result-track:8f852b109c2e9db4807d5222435b87e0a1f03ee7f1f59f0e1b2d556c029edd8b` |
| 12 | `lemma` | [hasGaussianLaw_increments](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/hasgaussianlaw-increments.md) | 104 | `result-track:565c24a527b08361700d61080ff710b14f7ce18bb2eb448e0a997761ddadf266` |
| 13 | `lemma` | [of_isGaussianProcess](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/of-isgaussianprocess.md) | 125 | `result-track:15c378375e0c0d9a8c42ddb121793967d2a01210937516cb03c812757f7931ff` |
| 14 | `lemma` | [comp_right](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/comp-right.md) | 140 | `result-track:1bd2628e41125a88a47cd20c980b164a4bf3bcf238bc286eb1255f462627e306` |
| 15 | `lemma` | [comp_left](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/comp-left.md) | 147 | `result-track:1e7c8023140b6e90b8ae6b68830ed3aaf610a8e9dc607d39aeb49579b30667a0` |
| 16 | `lemma` | [smul](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/smul.md) | 155 | `result-track:643767a0f040cd289176ef420e3da0efc8760646a31372e5a9d4719d946541bc` |
| 17 | `lemma` | [shift](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/shift.md) | 159 | `result-track:b5579c849fe4b82c6c540f744b6db5e2b2decc90908d72ad93e9b80f8f51ae56` |
| 18 | `lemma` | [restrict](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicPublic.lean/declarations/restrict.md) | 168 | `result-track:b8c3efc2d5268b6b5edb206c78b59ac5237ff780711f13f576e90340847599c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7159ff99ca6eadbb6a82cfd873a5921ebfcf43b018475c79a462e35f61854a59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variantc1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variantc1dae1e9d6c15521dd923ffc962948005a816a74dc356fcc024c281ea4a75307.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
