# Verification target: Source Mangoldt Ledger Bridge Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc0c02b22029aafb60be38bcc197e012922d1614",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc0c02b22029aafb60be38bcc197e012922d1614`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 6; external provider; requires a separately pinned dependency.
- `SourceDivisorGramRefinement` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [joint_add_work_exact](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/joint-add-work-exact.md) | 35 | `result-track:f0ae0aeb12a093a53e26936f07a0e5d709f478d86db4b3f10971b032a3ffd24a` |
| 2 | `theorem` | [arithmeticReadout_add_work_exact](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/arithmeticreadout-add-work-exact.md) | 44 | `result-track:6fb884f197b2e0f455bc89468784528645a1f032c562e5b530fefe5765ef783e` |
| 3 | `theorem` | [classifiedReadout_add_work_exact](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/classifiedreadout-add-work-exact.md) | 51 | `result-track:8bcd96ba1d4354c860e20a7f2878180611f41b7a89602fd41c55d83974a5a522` |
| 4 | `theorem` | [divisor_remainders_add_work_exact](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/divisor-remainders-add-work-exact.md) | 58 | `result-track:b3a02d8a399075de2251a8e19368c7682887a1180dba1f703e7e3c45407e7953` |
| 5 | `theorem` | [energy_surplus_add_work_exact](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/energy-surplus-add-work-exact.md) | 69 | `result-track:c19ba839ea1ef47a58dd74fe0a718edbbe84a2aa2bd53e83092c6d5effbe4599` |
| 6 | `theorem` | [joint_add_work_abs_le](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/joint-add-work-abs-le.md) | 77 | `result-track:fe86a123e9c1c18a7367b01eaa2c3724197b55585b2c268e626678753606cd6f` |
| 7 | `theorem` | [actual_joint_add_work_uniform_error](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/actual-joint-add-work-uniform-error.md) | 89 | `result-track:cb4e2f9f0df0cb5705f1cb54ddaf9807f4dd373679d3a2167f6702dfdda23f17` |
| 8 | `theorem` | [actual_classified_add_work_uniform_error](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/actual-classified-add-work-uniform-error.md) | 99 | `result-track:74482516ee32f8e3e514a54fab3d588f6a77948d2c3d05896041cbe46e712443` |
| 9 | `theorem` | [joint_upper_of_work_lower](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/joint-upper-of-work-lower.md) | 109 | `result-track:1a6b60463157eca3925198231dc8623961a03aaa43c54ad4d16002289e988199` |
| 10 | `theorem` | [work_lower_of_joint_upper](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/work-lower-of-joint-upper.md) | 118 | `result-track:e5152f2876b60ca09a5b412d6a4af53b0fae74bce9c651dbe9a92b8e66e16db6` |
| 11 | `theorem` | [joint_tail_iff_mangoldt_work](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/joint-tail-iff-mangoldt-work.md) | 126 | `result-track:067f40db1717b941a63bcb40792d506896217c708e8bcf768854ab89dbbbb5e1` |
| 12 | `theorem` | [arithmeticReadout_tail_iff_mangoldt_work](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/arithmeticreadout-tail-iff-mangoldt-work.md) | 133 | `result-track:e3785de3f1d137c394b901a3cffccee2fcba152d062cc509f88430545918d60b` |
| 13 | `theorem` | [energy_surplus_tail_iff_mangoldt_work](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/energy-surplus-tail-iff-mangoldt-work.md) | 138 | `result-track:36e954cfeea099bb66ee95979132c35b0f822b636f4065a8b6a219992e06b5a2` |
| 14 | `theorem` | [divisorRemainder_tail_iff_mangoldt_work](../../../../../NumberTheory/MultiplicativeNumberTheory/SourceMangoldtLedgerBridgeNamespaced.lean/declarations/divisorremainder-tail-iff-mangoldt-work.md) | 143 | `result-track:98f1d08a4e5481cfe932626897e9ae641c3f2475476b64d50ad3e55c675cceb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a05ea25ce7650b4d1b545b68f7e04ef9940aad5f026b2fa4623b465b70917c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/SourceMangoldtLedgerBridge/Variant47f13d6fd4276e7288c81dcd01e421f116af162772921c614158aa6446e2fcea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
