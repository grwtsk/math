# Verification target: Analysis Matrix Hermitian Functional Calculus Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "268eb6b84c1e1997b596cf56ec46b06709f20f5f",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant0dec3c8a11f12a6c7bd55c56db1f1467f222983102cd802ae7638cdd279bfc62.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `268eb6b84c1e1997b596cf56ec46b06709f20f5f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant0dec3c8a11f12a6c7bd55c56db1f1467f222983102cd802ae7638cdd279bfc62.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant0dec3c8a11f12a6c7bd55c56db1f1467f222983102cd802ae7638cdd279bfc62.lean.json)

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
| 1 | `def` | [cfcAux](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/declarations/cfcaux.md) | 50 | `declaration-track:507278105a6f48c200d3a13f503a510cfb3c32032fa7836b3c2d76b0d1e24ad3` |
| 2 | `lemma` | [isClosedEmbedding_cfcAux](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/declarations/isclosedembedding-cfcaux.md) | 71 | `result-track:c8a57811dd37208b8a14960c682bd7609a6779da443d1ad9975b13eb90acc80e` |
| 3 | `lemma` | [cfcAux_id](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/declarations/cfcaux-id.md) | 91 | `result-track:74516e833ad15c938f7a9fb3ec4978631036020dde05febeb909ec16c2d75832` |
| 4 | `instance` | [instContinuousFunctionalCalculus](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/declarations/instcontinuousfunctionalcalculus.md) | 97 | `declaration-track:cd36c2692b93dcb9f068e342bad79ab4d3abc04a1414d2d5e8b8cb52238c079c` |
| 5 | `def` | [cfc](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/declarations/cfc.md) | 132 | `declaration-track:2e2b81e04a96e7b7e7bdf0fef8a7d59ff94ca5e54ac5d4175fea1694f2ceae1a` |
| 6 | `lemma` | [cfcHom_eq_cfcAux](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/declarations/cfchom-eq-cfcaux.md) | 135 | `result-track:e10e46ddf1b2d5d51a6c28f3e92f0688b3123e8ba7f7d9b0dee8a07493b7f3c6` |
| 7 | `instance` | [instContinuousFunctionalCalculusIsClosedEmbedding](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/declarations/instcontinuousfunctionalcalculusisclosedembedding.md) | 139 | `declaration-track:1b5009bbbd3db387d50270d6a4e131e264c99d06e7ab747e9876f7b908a26a2a` |
| 8 | `lemma` | [cfc_eq](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/declarations/cfc-eq.md) | 143 | `result-track:7fc6ab88168f19b4460b1aa0bfeca01d6c10bcd30a4becf968ffa3ea36078d12` |
| 9 | `lemma` | [charpoly_cfc_eq](../../../../FunctionalAnalysis/AnalysisMatrixHermitianFunctionalCalculusPublic.lean/declarations/charpoly-cfc-eq.md) | 152 | `result-track:98488ad378b0c8222caf2385a3239c6cf6e542ae40df6108f0875a91b0aff85d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=046918029cfe8ce831beed2f35218b45664818756283be711813b81485495103 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant0dec3c8a11f12a6c7bd55c56db1f1467f222983102cd802ae7638cdd279bfc62.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/HermitianFunctionalCalculus/Variant0dec3c8a11f12a6c7bd55c56db1f1467f222983102cd802ae7638cdd279bfc62.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
