# Verification target: Analytic Complexity Boundary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13e55f7e4887f70dad7abbe62d853f4c7c1ef045",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variantcd8313c129e5a5b37306d0a558763cb0153ccf34d784ef6ad898f85132201410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13e55f7e4887f70dad7abbe62d853f4c7c1ef045`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variantcd8313c129e5a5b37306d0a558763cb0153ccf34d784ef6ad898f85132201410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variantcd8313c129e5a5b37306d0a558763cb0153ccf34d784ef6ad898f85132201410.lean.json)

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
| 1 | `structure` | [AnalyticClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/analyticclaim.md) | 20 | `declaration-track:9082f58e9d0fed57833d56354725fe964efb8d08dc2b7233a5eec2bb64b09702` |
| 2 | `structure` | [ComplexityClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/complexityclaim.md) | 23 | `declaration-track:5d51b09b980095dc4a8ff2221f85ea5e224b2ed91acc8b724c851269a82e6716` |
| 3 | `structure` | [AnalyticCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/analyticcertificate.md) | 27 | `declaration-track:76f3b63d508966edda77e34622f85c114a948077256b2d49aa0e190771e453a4` |
| 4 | `structure` | [ComplexityCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/complexitycertificate.md) | 43 | `declaration-track:fa4d602bac72a25aea9cbf2935ea3956817a966d71b7316ad8a8a83eb2a46731` |
| 5 | `structure` | [ArithmeticSecurityBridgeCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/arithmeticsecuritybridgecertificate.md) | 57 | `declaration-track:9a42c3ddaba60a8715a79bd8f58119ff0ba69022f1e3abd3be72c9243fd00895` |
| 6 | `def` | [ArithmeticSecurityBridgeCertificate.complexityConclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/arithmeticsecuritybridgecertificate-complexityconclusion.md) | 69 | `declaration-track:8dbc7d7428b237929b5d133c6ed05575dbd31d71d52d087e5a86d30c8f274f1d` |
| 7 | `inductive` | [DirectAnalyticToComplexity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/directanalytictocomplexity.md) | 79 | `declaration-track:98310587ac26e94fe5e98944f830b19e5e32f872be26df5a70f56f58a8c2baf6` |
| 8 | `theorem` | [no_direct_analytic_to_complexity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/no-direct-analytic-to-complexity.md) | 85 | `result-track:b0df629fc95b9b35685c7a787880abfee4730e1e554faf01d19b023401c4b6c6` |
| 9 | `inductive` | [AnalyticToComplexityAuthorization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/analytictocomplexityauthorization.md) | 95 | `declaration-track:ff2b28b496d6e71118f168ab9462c0c3518e9147dccc2c7a15bde63e42b602fc` |
| 10 | `inductive` | [AuthorityChannel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/authoritychannel.md) | 103 | `declaration-track:2a4f7011b807045d826355839a8d6bd8f8aa3482836add10218d51168c859051` |
| 11 | `inductive` | [AuthorityChannelTransition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/authoritychanneltransition.md) | 110 | `declaration-track:29124f26f151011ac75142ea5b5e589d563d8708351b687267432d13e2a80a27` |
| 12 | `theorem` | [no_direct_analytic_channel_transition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/no-direct-analytic-channel-transition.md) | 121 | `result-track:3404d721746df8600ca19283d71e5ed8a0e47acd071e6306cc256c7b53ddef8a` |
| 13 | `inductive` | [ProhibitedAnalyticInference](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/prohibitedanalyticinference.md) | 127 | `declaration-track:aba62bf6cf190c51d2fe9ba5da7ebcab62715c25d654d70ab3a2022c5b70b527` |
| 14 | `def` | [ProhibitedAnalyticInference.admissible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/prohibitedanalyticinference-admissible.md) | 135 | `declaration-track:ee4c467a75e106c488a383ae02250d8a6a5e31880188bbfb22636ab631e64fe8` |
| 15 | `theorem` | [prohibitedAnalyticInference_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundaryNamespaced.lean/declarations/prohibitedanalyticinference-rejected.md) | 139 | `result-track:3720231498acb3109b996270661cb78dcc70dfe649079d2aa0858e6daa4e41f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48687ff2eda8f5bfabbb42fa81dec5ce4113d1c92eaa0b28a47be311f00b40f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variantcd8313c129e5a5b37306d0a558763cb0153ccf34d784ef6ad898f85132201410.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variantcd8313c129e5a5b37306d0a558763cb0153ccf34d784ef6ad898f85132201410.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
