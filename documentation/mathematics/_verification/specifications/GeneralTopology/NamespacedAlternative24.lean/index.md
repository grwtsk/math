# Verification target: Namespaced Alternative24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a399f827ddeaea1f78cf69cbe01735cff2a07fe",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta9b8a5a551f8a5031a0f38ee02f23c2b2e268e56e699c81594115e9b7847619c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/NamespacedAlternative24.lean/index.md) · [Full source](../../../../GeneralTopology/NamespacedAlternative24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a399f827ddeaea1f78cf69cbe01735cff2a07fe`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta9b8a5a551f8a5031a0f38ee02f23c2b2e268e56e699c81594115e9b7847619c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta9b8a5a551f8a5031a0f38ee02f23c2b2e268e56e699c81594115e9b7847619c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiRankFiveFiniteBounds` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiRankFiveExpBounds` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiRankFiveTailBounds` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiSignedMomentParityCriterion` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [thetaRankFive_piBox_contains](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/thetarankfive-pibox-contains.md) | 29 | `result-track:cca4bace690f139d40aedafc9ef859f355402fe8b8666ceacfdceeba9352370d` |
| 2 | `theorem` | [thetaRankFive_expBox_contains](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/thetarankfive-expbox-contains.md) | 33 | `result-track:a1be7f0d5477f1c52471cd2bdd2c8f3a7f91fff36128c55a22faf5bc110441e0` |
| 3 | `theorem` | [thetaRankFive_finite_source_contains](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/thetarankfive-finite-source-contains.md) | 39 | `result-track:f645f456f3c8c7d9e8d850fff59c7a7924ee6066cc118d03fc5c20059efcafaa` |
| 4 | `theorem` | [thetaRankFive_full_source_tail](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/thetarankfive-full-source-tail.md) | 50 | `result-track:163353315f8e0ccc425e74c4a1b7f0f7daa0a0190ea851989d972bcb4bba4fb4` |
| 5 | `theorem` | [thetaPhiRankFiveJetEnclosure_holds](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/thetaphirankfivejetenclosure-holds.md) | 61 | `result-track:c0d0d5aebd07bf9c2282885d700fca72693bc515f35f5873ed5070ee624f15bc` |
| 6 | `theorem` | [thetaPhi_signedJetDet_five_zero_neg](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/thetaphi-signedjetdet-five-zero-neg.md) | 68 | `result-track:b956418085efc2e9ab9d37b8210cd73de4f87480c01e3e984fa312e80355b1a6` |
| 7 | `theorem` | [thetaPhi_signedJetDet_five_zero_bounds](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/thetaphi-signedjetdet-five-zero-bounds.md) | 73 | `result-track:38cc5fa80da2b7594fd4444a96f56540a1318e196b7880524b44d010af7e392f` |
| 8 | `theorem` | [continuous_thetaPhi_signedJetDet](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/continuous-thetaphi-signedjetdet.md) | 82 | `result-track:d2900cd9c583406d21306fe2781c4cdf3df1565dbc1a4c25b842f600b680cbf6` |
| 9 | `theorem` | [thetaPhi_signedJetDet_five_negative_near_zero](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/thetaphi-signedjetdet-five-negative-near-zero.md) | 93 | `result-track:dd9f5d2d5309061ad1ac28df27b769bc54cdf74f870c65ff25f29fb96825dca0` |
| 10 | `theorem` | [not_thetaPhiAllRankSignedJetCriterion](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/not-thetaphiallranksignedjetcriterion.md) | 104 | `result-track:49c92e55a662ce35305363c0c2693a2d35173ae8a3837d29f5c920e6a05af8c8` |
| 11 | `theorem` | [not_thetaPhiSignedMomentParityCriterion](../../../../GeneralTopology/NamespacedAlternative24.lean/declarations/not-thetaphisignedmomentparitycriterion.md) | 109 | `result-track:791953414b1d716c903214362b694fb319d760a61db74911277b5fa54276c5ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d018193396dc976ceaedadd10cdec64a7af9f395e51ce182eba30241fc2f1b45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta9b8a5a551f8a5031a0f38ee02f23c2b2e268e56e699c81594115e9b7847619c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Varianta9b8a5a551f8a5031a0f38ee02f23c2b2e268e56e699c81594115e9b7847619c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
