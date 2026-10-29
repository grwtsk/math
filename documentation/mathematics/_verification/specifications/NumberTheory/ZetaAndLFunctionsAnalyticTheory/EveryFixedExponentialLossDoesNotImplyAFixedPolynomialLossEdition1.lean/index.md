# Verification target: Every Fixed Exponential Loss Does Not Imply AFixed Polynomial Loss Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e361b4749eaa25c64fbed20e88737d649dd43a5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e361b4749eaa25c64fbed20e88737d649dd43a5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PolynomialMertensReduction` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comparisonProfile](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition1.lean/declarations/comparisonprofile.md) | 27 | `declaration-track:500e85a9dbcfc7b1f48bd598131d590fbc219f20aa2a740412a564f75b0c1352` |
| 2 | `theorem` | [explicit_exponential_loss](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition1.lean/declarations/explicit-exponential-loss.md) | 29 | `result-track:f496e9a2f1f6bc9fdb1853824c34aaaf61c4ca36b0b028af79a4088859ace9e7` |
| 3 | `theorem` | [powered_profile_epsilon_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition1.lean/declarations/powered-profile-epsilon-bound.md) | 41 | `result-track:6a9fd64b7413c1b2b5e942eb233cfe8b88e746a3995de5ca3d92ba0414748eba` |
| 4 | `theorem` | [every_fixed_exponential_loss](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition1.lean/declarations/every-fixed-exponential-loss.md) | 56 | `result-track:56d202bf1392cf0d8f087354381b6bdd24cba6c90eda87d26a53e23469310444` |
| 5 | `theorem` | [exceeds_every_polynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition1.lean/declarations/exceeds-every-polynomial.md) | 75 | `result-track:da597ea41de265accfd8fdfb6700a5f97b8af164e3a2c32fcfe435c7255981b9` |
| 6 | `theorem` | [no_eventual_polynomial_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition1.lean/declarations/no-eventual-polynomial-upper.md) | 94 | `result-track:4cd39ea60f34f5425a29a9c5976a2bb47c8eeeb0554771212a2d0c478c35afa8` |
| 7 | `theorem` | [exceeds_every_real_power](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/EveryFixedExponentialLossDoesNotImplyAFixedPolynomialLossEdition1.lean/declarations/exceeds-every-real-power.md) | 99 | `result-track:38a403b5af218f2a04a87e312ba3563ca127520ead2b84cdd699b65a2cb048e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad51fc715ae13dca77f70d4fa4aa3569822c8fff9d99656b861af395d5ec2f19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
