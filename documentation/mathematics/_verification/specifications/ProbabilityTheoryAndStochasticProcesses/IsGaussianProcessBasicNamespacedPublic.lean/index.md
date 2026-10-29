# Verification target: Is Gaussian Process Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fc6c726e551ac8f833c18e4b7856bd85efd64e6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant98588990f4657342d34bfda2c05151035453b94cccffa203db6c5d93a2f9d9ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fc6c726e551ac8f833c18e4b7856bd85efd64e6`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant98588990f4657342d34bfda2c05151035453b94cccffa203db6c5d93a2f9d9ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant98588990f4657342d34bfda2c05151035453b94cccffa203db6c5d93a2f9d9ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Distributions.Gaussian.HasGaussianLaw.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/isprobabilitymeasure.md) | 54 | `result-track:17586e1dc14ef7ae09167201f4fddf57149fa7b4345cf24f0804d57aa7af7d59` |
| 2 | `lemma` | [aemeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/aemeasurable.md) | 58 | `result-track:90da1cb2dce39b735b8af31a6961c2bd9250c8b918e2602bb08546481408854d` |
| 3 | `lemma` | [congr](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/congr.md) | 62 | `result-track:fed6005e06e9f0f3a05533f0fa7cc8f3dff0b309d5a604d0bfbad7a595ce3aec` |
| 4 | `lemma` | [hasGaussianLaw_eval](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/hasgaussianlaw-eval.md) | 78 | `result-track:8c8c0d589615f41611f23316151f1d30929acc8ab9a0bc5e33247dbf4fcaf75e` |
| 5 | `lemma` | [hasGaussianLaw_prodMk](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/hasgaussianlaw-prodmk.md) | 84 | `result-track:8e899aefd5a55d630ea0946d857d3cc2d6369c9d50d0b57c9bbcffca1f5723e2` |
| 6 | `lemma` | [hasGaussianLaw_add](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/hasgaussianlaw-add.md) | 89 | `result-track:5c0878f25c8614a1cc03a388c6d8d1736d1261abb45b833d2ab57c622a8a6a0f` |
| 7 | `lemma` | [hasGaussianLaw_fun_add](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/hasgaussianlaw-fun-add.md) | 92 | `result-track:7882b10568621759b93db66425431f531f8e9c386fa8702ffe2422eb8631449b` |
| 8 | `lemma` | [hasGaussianLaw_sub](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/hasgaussianlaw-sub.md) | 95 | `result-track:c23f86ef478028c06f50088a684098dd1050ace535a8239cc39df863cfd83c2b` |
| 9 | `lemma` | [hasGaussianLaw_fun_sub](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/hasgaussianlaw-fun-sub.md) | 98 | `result-track:36b5e79f0a9ccacc5b3294a44114641e3e1aa2c6961f63efaca81f82adc4de48` |
| 10 | `lemma` | [hasGaussianLaw_sum](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/hasgaussianlaw-sum.md) | 101 | `result-track:72d4077b1c4a7efe57df9a6798ebf2869555a26c1d40ca74492863a7410d72eb` |
| 11 | `lemma` | [hasGaussianLaw_fun_sum](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/hasgaussianlaw-fun-sum.md) | 106 | `result-track:5a9fe4e483be1ff8e7622eb877d2f318bd564e8b0d578284f061cf14199857d9` |
| 12 | `lemma` | [hasGaussianLaw_increments](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/hasgaussianlaw-increments.md) | 112 | `result-track:ee6f2ef7390fe3ba2195d9cb2269a08f7229630523cc189e5c76b1d690f70c46` |
| 13 | `lemma` | [of_isGaussianProcess](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/of-isgaussianprocess.md) | 133 | `result-track:827c6bf4602f2bd9fb3bdbb56566facfcf924e87d7aa3a0e0a5f0cd4e102f128` |
| 14 | `lemma` | [comp_right](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/comp-right.md) | 148 | `result-track:09674005b81c49cbc3c5a45f39c98437196eb9368d2d2772cdffb74c898708d9` |
| 15 | `lemma` | [comp_left](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/comp-left.md) | 155 | `result-track:17735651097370b0d32ecd54c6266525a06eef5a82e75232e301fdc61bb55ce5` |
| 16 | `lemma` | [smul](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/smul.md) | 163 | `result-track:768d4a66e698fec38bdb77126625c40bcc832ca4fb2ca811cb1a479c355db4b5` |
| 17 | `lemma` | [shift](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/shift.md) | 167 | `result-track:ef7c9d15268f8f242fc5ed5e1a46e00e765403fc4b95e78c8125c07c3b625bd4` |
| 18 | `lemma` | [restrict](../../../../ProbabilityTheoryAndStochasticProcesses/IsGaussianProcessBasicNamespacedPublic.lean/declarations/restrict.md) | 176 | `result-track:bbc4f0b9839b23e75f6dd399d0c2a89f15caf37d860584a6172482e0b9fcbf99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab4816243c9dda0165f83cabad665b0a28594c4fd5cc2175efc232f8751bcf82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant98588990f4657342d34bfda2c05151035453b94cccffa203db6c5d93a2f9d9ed.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Basic/Variant98588990f4657342d34bfda2c05151035453b94cccffa203db6c5d93a2f9d9ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
