# Verification target: Perturbation04 Perturbation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60536416ef3f7b8cc1a09de4c997a04db559cab2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Perturbation04Perturbation.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Perturbation04Perturbation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60536416ef3f7b8cc1a09de4c997a04db559cab2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_add_seven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Perturbation04Perturbation.lean/declarations/abs-add-seven.md) | 6 | `result-track:89244c1c43f79d5f5e321a57eb11398933b67fa3dde9561c9d8f2d49e8b3c8da` |
| 2 | `theorem` | [abs_sub_two](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Perturbation04Perturbation.lean/declarations/abs-sub-two.md) | 11 | `result-track:6fbfe3b9b088282a40ffea359f68902312f31c8502fb52ef8850c981db29e725` |
| 3 | `theorem` | [triple_perturbation_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Perturbation04Perturbation.lean/declarations/triple-perturbation-bound.md) | 14 | `result-track:c02cf4a40e23870fa613831a46b2bd8e7d4cd8ed46c98ee3bfef472a0343f07d` |
| 4 | `def` | [thetaPhiJetDetMajorant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Perturbation04Perturbation.lean/declarations/thetaphijetdetmajorant.md) | 35 | `declaration-track:0794610cd4c4013b6abad7de45cef5d52c5144c6abfbe6cd1050a2975be4e4f6` |
| 5 | `theorem` | [thetaPhiJetDet_perturbation_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Perturbation04Perturbation.lean/declarations/thetaphijetdet-perturbation-bound.md) | 40 | `result-track:7be739ac078e8fd1e5e4f61f943da2f94ec482fb05ffcbb07c62fae25867c3ab` |
| 6 | `theorem` | [thetaPhiJetDet_gaussian_error_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/Perturbation04Perturbation.lean/declarations/thetaphijetdet-gaussian-error-bound.md) | 69 | `result-track:83b2c1a4bb9836e4f76b03437a6dfd8480d526f581b6ffe9911b57deae85baeb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38907c346e589f78d774ce23d03298ee4740868357543e51555661654b024d44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801Perturbation04/Variante161aad14c7192ecb719fc9a7340a667d6c421d1d3f29d0ea67252ce4d62e801.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
