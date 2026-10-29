# Verification target: GRWTSK.Analysis.ErrorBounds.RationalPowerValue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10053d4c8ed63d6f12162002f3d29075473c3b62",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ErrorBounds/RationalPowerValue.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/index.md) · [Full source](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10053d4c8ed63d6f12162002f3d29075473c3b62`.

Source path: `GRWTSK/Analysis/ErrorBounds/RationalPowerValue.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ErrorBounds/RationalPowerValue.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.RationalAtanhPower`](../../../../../Analysis/ErrorBounds/RationalAtanhPower.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.ErrorBounds.RationalRoundedExp`](../../../../../Analysis/ErrorBounds/RationalRoundedExp.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Resolution](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/resolution--de6e924a55590e76ef4377ac.md) | 23 | `declaration-track:de6e924a55590e76ef4377ac7d0064124e90bcb889140c1153232a6939d1ac25` |
| 2 | `def` | [logBall](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/logball--752b482b12aba6aed1a8f95b.md) | 32 | `declaration-track:752b482b12aba6aed1a8f95be950ce568e6d2bf6a8d2d62b559bf83db74cb102` |
| 3 | `def` | [exponent](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/exponent--2f73f4c2b93a58fcfb320c59.md) | 35 | `declaration-track:2f73f4c2b93a58fcfb320c5994d0b6bdac30a2af941c285f9b5c4d73899c50fc` |
| 4 | `def` | [trace](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/trace--4d9ca85c03cb8af4ead0e1cc.md) | 38 | `declaration-track:4d9ca85c03cb8af4ead0e1cc8fa6f7b32320b87c37e021cb4b8a7c1229c2d925` |
| 5 | `def` | [valueBall](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/valueball--2247e63f6e240aa1fff0d4ba.md) | 41 | `declaration-track:2247e63f6e240aa1fff0d4baa26352fe8badad97134eafeac631a8dacf889c63` |
| 6 | `def` | [Valid](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/valid--faca4fb073741f99dea78708.md) | 46 | `declaration-track:faca4fb073741f99dea78708dcae9eb952f9b0dd5061a03c35def516df74ac02` |
| 7 | `instance` | [validDecidable](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/validdecidable--2cf4215e549b7a106aafa0d7.md) | 51 | `declaration-track:2cf4215e549b7a106aafa0d7f530386019c9ab3cd078349a35cac9beed50b94a` |
| 8 | `def` | [check](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/check--f3b046cb88cfce4064964e10.md) | 54 | `declaration-track:f3b046cb88cfce4064964e10c3b9f4af2c19a0550422b9c72911d058bf5a9940` |
| 9 | `theorem` | [check_iff_valid](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/check-iff-valid--979d15d73f2f47c57d7a1604.md) | 56 | `result-track:979d15d73f2f47c57d7a16048bf8729d4b4cc8504310ee1c6726a74a39ac156f` |
| 10 | `theorem` | [exponent_re_nonpos](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/exponent-re-nonpos--f43868b66e435c2f59ec7a35.md) | 60 | `result-track:f43868b66e435c2f59ec7a3508443ef598a1d6cf0960c3e30be4b6b30c295ef0` |
| 11 | `theorem` | [trace_checked](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/trace-checked--2d9e847007387ca5e3691eeb.md) | 70 | `result-track:2d9e847007387ca5e3691eebee02c0fd62e432dcbe9039358b90a920e2a3b4a4` |
| 12 | `theorem` | [logBall_sound](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/logball-sound--edc04be76d5a2f5cfcf9e852.md) | 77 | `result-track:edc04be76d5a2f5cfcf9e852feb0ef8906a159e56617997cd0b625ec20738f6f` |
| 13 | `theorem` | [valueBall_sound](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/valueball-sound--defe8e12c4df6fc692b51cd1.md) | 83 | `result-track:defe8e12c4df6fc692b51cd1f23e1b612727abd3e591b6a942bb12a5541093e1` |
| 14 | `def` | [evaluate](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/evaluate--a1d6b7c9bf20a83be2903be9.md) | 88 | `declaration-track:a1d6b7c9bf20a83be2903be95a508d3fa9c8e3b2311c8b6dd0029658bc896ec4` |
| 15 | `theorem` | [evaluate_eq_some_iff](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/evaluate-eq-some-iff--5d7617e64926da067007d6c3.md) | 91 | `result-track:5d7617e64926da067007d6c361a652722e5e8d248eef2f0fd0bd471082bccc0b` |
| 16 | `theorem` | [evaluate_sound](../../../../../Analysis/ErrorBounds/RationalPowerValue.lean/declarations/evaluate-sound--cc788ca558fc3d15014d9253.md) | 95 | `result-track:cc788ca558fc3d15014d9253b02c9b90ee8244924199ad33317ccefed7f45cb6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d39954730834758eb7db3e0e2e1449109410fc8bb3c61f3bbd9b6e210b4ca00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ErrorBounds/RationalPowerValue.lean","GRWTSK/_verification/specifications/Analysis/ErrorBounds/RationalPowerValue.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
