# Verification target: Jet Perturbation Module

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f440504bbbca7d741c112f44dcbc3d80ce44ff2",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f440504bbbca7d741c112f44dcbc3d80ce44ff2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiWronskianModeBounds` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_add_seven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/declarations/abs-add-seven.md) | 15 | `result-track:5c1d3e5a6bd848b9f90ca3820ad08082b2b5aa79cb166914ef0bd3e53c4299be` |
| 2 | `theorem` | [abs_sub_two](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/declarations/abs-sub-two.md) | 20 | `result-track:56eefa7836a37cc14c66eb81ee4ff25101cdb0f51558b60a2e3dcd12161d45ad` |
| 3 | `theorem` | [triple_perturbation_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/declarations/triple-perturbation-bound.md) | 23 | `result-track:254adec85195bd264f963a9ff294b8c59b1f4ea8825aff3dde4d575b5f719aa2` |
| 4 | `def` | [thetaPhiJetDetMajorant](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/declarations/thetaphijetdetmajorant.md) | 44 | `declaration-track:708e255f226b91c18799e7c785ef0a99dacc4c891f9b954aea63d38c40a00ce9` |
| 5 | `theorem` | [thetaPhiJetDet_perturbation_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/declarations/thetaphijetdet-perturbation-bound.md) | 49 | `result-track:13d4b847b11199e51dbe68cf89336cd2ae98068374ec048d2634450f5e09c7ea` |
| 6 | `theorem` | [thetaPhiJetDet_gaussian_error_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/declarations/thetaphijetdet-gaussian-error-bound.md) | 78 | `result-track:b3ce068b7b305fec146beacd46f16cb05b197dc03f09b9e4d1769fc2f92b89a1` |
| 7 | `theorem` | [exp_neg_three_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/declarations/exp-neg-three-le.md) | 92 | `result-track:1aaab4dc82228063b9c59eea8aeef926985f05109f67eeabacd1f770e7865bae` |
| 8 | `theorem` | [thetaPhiJet_two_modes_abs_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/declarations/thetaphijet-two-modes-abs-le.md) | 106 | `result-track:40786779ae33ec6cf8b167f04ffea6df41459f5ee3887c2071566ba597e39f3f` |
| 9 | `theorem` | [thetaPhiJet_gaussian_error_lt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/JetPerturbationModule.lean/declarations/thetaphijet-gaussian-error-lt.md) | 134 | `result-track:d48f97785614a837725e7fe48074c17333562a0796d2da8d178c501f80b26dba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1edd7dc28446aa334baa5caacdb15bd0466a54459388465df70c3427aed3a8ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77JetPerturbationM/Variant3e8994c0b519ce0ae0d1819f8bb8df8232720f78c1fbf671da9f3d9e3e545f77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
