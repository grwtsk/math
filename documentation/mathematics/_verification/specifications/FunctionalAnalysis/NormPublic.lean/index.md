# Verification target: Norm Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83ef443ee38947dbe086fbf63b0838f7fe65418a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Norm/Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83ef443ee38947dbe086fbf63b0838f7fe65418a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Norm/Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Norm/Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean.json)

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
| 1 | `def` | [supNorm](../../../../FunctionalAnalysis/NormPublic.lean/declarations/supnorm.md) | 53 | `declaration-track:fe68e4c5ab80a3efaeee62ecace13e500f4d10679dbea08767971156b1a2c2e9` |
| 2 | `lemma` | [supNorm_def'](../../../../FunctionalAnalysis/NormPublic.lean/declarations/supnorm-def.md) | 56 | `result-track:da4162be303fba9e676d2c4a6f851d1488d547a94a4348fe42256c35b81cc38a` |
| 3 | `lemma` | [supNorm_zero](../../../../FunctionalAnalysis/NormPublic.lean/declarations/supnorm-zero.md) | 64 | `result-track:44969a8430141f9d4983deb4090cf9f368c22bd9d232f495cbda0d09c2a5bf78` |
| 4 | `lemma` | [supNorm_nonneg](../../../../FunctionalAnalysis/NormPublic.lean/declarations/supnorm-nonneg.md) | 66 | `result-track:57ba5d52872a6449ee5fb5f6cf5f6b4cf2703b8aee13a0ed819bf91f0bb014f8` |
| 5 | `lemma` | [supNorm_C](../../../../FunctionalAnalysis/NormPublic.lean/declarations/supnorm-c.md) | 71 | `result-track:b6b822abdfb8e691602bdccfcaa157644ce5cee9d15e54eae3a68aaf607fe3c0` |
| 6 | `lemma` | [supNorm_monomial](../../../../FunctionalAnalysis/NormPublic.lean/declarations/supnorm-monomial.md) | 74 | `result-track:d4ec628db994815e1089eaa434c0f5a7ce97051084acb6471f5e39992aef8a26` |
| 7 | `lemma` | [supNorm_X](../../../../FunctionalAnalysis/NormPublic.lean/declarations/supnorm-x.md) | 80 | `result-track:e12c296a905b5c1dcf04c44e3f18b969f121cf38575ce21f9ebc1b37a8e79501` |
| 8 | `lemma` | [le_supNorm](../../../../FunctionalAnalysis/NormPublic.lean/declarations/le-supnorm.md) | 83 | `result-track:ba266eeae490344b55773e3ecfe44796ab85b15fb1eb304d3cdd98ce6c30f57f` |
| 9 | `lemma` | [exists_eq_supNorm](../../../../FunctionalAnalysis/NormPublic.lean/declarations/exists-eq-supnorm.md) | 86 | `result-track:9ca6a6e2aff6b1b076c5e7e0c2c8a2c671a589a0bc1c31501ea41a12dd4220fe` |
| 10 | `lemma` | [isGreatest_supNorm](../../../../FunctionalAnalysis/NormPublic.lean/declarations/isgreatest-supnorm.md) | 89 | `result-track:3de4d654c559d0879c802f5683274f68d9371f1e9cb8d8f77e835cde269eb63f` |
| 11 | `lemma` | [supNorm_eq_iSup](../../../../FunctionalAnalysis/NormPublic.lean/declarations/supnorm-eq-isup.md) | 94 | `result-track:246b9a75bbfaffb947628a5619479ad334f9416162c2c51f43b0fbbae5133795` |
| 12 | `lemma` | [supNorm_eq_zero_iff](../../../../FunctionalAnalysis/NormPublic.lean/declarations/supnorm-eq-zero-iff.md) | 105 | `result-track:f0836dd93c3521a507de6faff0a2b8b26464674c0dddcc802516e43d8eff7522` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bdba9458441bd27c7f377852567ce30694c7d16bc7238e965df84ab9c3cf393c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Norm/Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Norm/Variant2be306c668562ecd87221c2e60abac1e8a05349bd1b487c36313574dab444c0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
