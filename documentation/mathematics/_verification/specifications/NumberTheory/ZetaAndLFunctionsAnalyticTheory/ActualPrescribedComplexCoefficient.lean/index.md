# Verification target: Actual Prescribed Complex Coefficient

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e8821a745f2840beb67bfe9b0216a8524ba71e1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPrescribedComplexCoefficient/Variant8e266c451c81a486db929494846ca37ee1a54c89b9db0f2cf432750d180733d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrescribedComplexCoefficient.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrescribedComplexCoefficient.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e8821a745f2840beb67bfe9b0216a8524ba71e1`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPrescribedComplexCoefficient/Variant8e266c451c81a486db929494846ca37ee1a54c89b9db0f2cf432750d180733d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPrescribedComplexCoefficient/Variant8e266c451c81a486db929494846ca37ee1a54c89b9db0f2cf432750d180733d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualComplexEndpointCoefficient` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualPrescribedComplexMode](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrescribedComplexCoefficient.lean/declarations/actualprescribedcomplexmode.md) | 15 | `declaration-track:edd7fae0354adb1d769ad622f7cd6af82bb93cbd19e1eea80a2b34d36eceeb93` |
| 2 | `theorem` | [actualPrescribedComplexMode_re_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrescribedComplexCoefficient.lean/declarations/actualprescribedcomplexmode-re-pos.md) | 18 | `result-track:851351fcb94b0e24e1835543ae0760d22b14a1f783b7eaca493eac448ffd4aed` |
| 3 | `theorem` | [actualLeadingComplexCoefficient_at_prescribed_mode](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrescribedComplexCoefficient.lean/declarations/actualleadingcomplexcoefficient-at-prescribed-mode.md) | 22 | `result-track:12adc8f4021df396152d53a5cf42e72e238f358df95569c24bcc84ef43c1783f` |
| 4 | `theorem` | [actualLeadingComplexCoefficient_prescribed_square_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrescribedComplexCoefficient.lean/declarations/actualleadingcomplexcoefficient-prescribed-square-re.md) | 30 | `result-track:47db5e990171d621a6cbc7933fe93dd4c6b9cd2f48a9623e6a79dcc65550ff68` |
| 5 | `theorem` | [actualLeadingComplexCoefficient_prescribed_square_re_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ActualPrescribedComplexCoefficient.lean/declarations/actualleadingcomplexcoefficient-prescribed-square-re-neg.md) | 36 | `result-track:9927ec8e04c57a94704a03a12cfb528e618147f751e8afc805c73bb9d284bbe2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3237d18728ad621ad447caf717d4f72577e3f566dd23c54720df42416c9f4784 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPrescribedComplexCoefficient/Variant8e266c451c81a486db929494846ca37ee1a54c89b9db0f2cf432750d180733d2.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPrescribedComplexCoefficient/Variant8e266c451c81a486db929494846ca37ee1a54c89b9db0f2cf432750d180733d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
