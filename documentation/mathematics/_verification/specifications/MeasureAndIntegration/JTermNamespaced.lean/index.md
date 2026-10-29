# Verification target: JTerm Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21e329e89807b9f3ed7a828eb75c1643d540cedf",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/JTermNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/JTermNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21e329e89807b9f3ed7a828eb75c1643d540cedf`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.ExplicitFormula.LitCorr` — import line 22; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.EntryError` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DfroG](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/dfrog.md) | 41 | `declaration-track:ce3741c29459dd929de0cbf240bd9c5d2c1c6f33fe3fb795c51eb5ba26cacc3f` |
| 2 | `theorem` | [conj_lineC](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/conj-linec.md) | 43 | `result-track:d2466d6deef61a1921b9336ede051628dd3677f0a60a02fe566877d67e87f22c` |
| 3 | `theorem` | [DfroG_conj_neg](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/dfrog-conj-neg.md) | 46 | `result-track:ad067e831d5930ba499749bfbe19ce3a440e53bcc7e0ed060d28ecc9153d1a7b` |
| 4 | `theorem` | [continuous_DfroG_of](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/continuous-dfrog-of.md) | 51 | `result-track:281d13beb0b1ddc3d2a8470c5dcd2febaf7bc2439c91ba8a5896191c6fb3363a` |
| 5 | `def` | [JcorrG](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/jcorrg.md) | 59 | `declaration-track:a7661cb61cd07132a97fa2909790c557c5dcd9fdb0fb8a0e8e8aa739460a46ac` |
| 6 | `theorem` | [JcorrG_estimate](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/jcorrg-estimate.md) | 64 | `result-track:6337866cd6572a0b3198c8a1b58b7531cb02228df85ba0fc4018f7edb9e9c339` |
| 7 | `def` | [Dfro](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/dfro.md) | 237 | `declaration-track:4fe5b6117eee70e72b2c9b0b50fc0bc526ed9c8599940c917f6707f9762dfdd5` |
| 8 | `theorem` | [Dfro_eq_DfroG](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/dfro-eq-dfrog.md) | 240 | `result-track:43e67d62a4067f034c7955a034fcfe427e51520efc805bc47d456f9a80f1a103` |
| 9 | `theorem` | [dEE_conj_neg](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/dee-conj-neg.md) | 242 | `result-track:92a50cd477144067c379c7dff32f709a35a68e4a9d108ef2e4fc7c8bca214a3d` |
| 10 | `theorem` | [Jcorr_estimate](../../../../MeasureAndIntegration/JTermNamespaced.lean/declarations/jcorr-estimate.md) | 248 | `result-track:a010b33e3426e28b26d7ce82aa562a0e98abaa4688dff38eb76ba06b31d6b707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=920370cd38c649c8fd271963aa8500fc972007464fe1b440c9ffdff43c2e5c8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
