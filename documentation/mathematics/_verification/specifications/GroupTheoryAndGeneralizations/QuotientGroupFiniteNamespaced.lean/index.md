# Verification target: Quotient Group Finite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d76d86ecb0e0722c70df7224aac435bf93a74c5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Finite/Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/QuotientGroupFiniteNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/QuotientGroupFiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d76d86ecb0e0722c70df7224aac435bf93a74c5`.

Source path: `GRWTSK/Algebra/GroupTheory/Finite/Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Finite/Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeOfKerLeRange](../../../../GroupTheoryAndGeneralizations/QuotientGroupFiniteNamespaced.lean/declarations/fintypeofkerlerange.md) | 39 | `declaration-track:e2e76eed2af98c4819b5022e825787739acd48b1e50ee0c1c51145c7c31db8df` |
| 2 | `def` | [fintypeOfKerEqRange](../../../../GroupTheoryAndGeneralizations/QuotientGroupFiniteNamespaced.lean/declarations/fintypeofkereqrange.md) | 47 | `declaration-track:6d27d4b4c9e062853e6a81a609a37d1b6ddb10d48b042a9c5036183a56e4fae8` |
| 3 | `def` | [fintypeOfKerOfCodom](../../../../GroupTheoryAndGeneralizations/QuotientGroupFiniteNamespaced.lean/declarations/fintypeofkerofcodom.md) | 52 | `declaration-track:ec07349364978990a0b3e27e980f77ec85a26c7f15473a7a2dd28ca7c992287f` |
| 4 | `def` | [fintypeOfDomOfCoker](../../../../GroupTheoryAndGeneralizations/QuotientGroupFiniteNamespaced.lean/declarations/fintypeofdomofcoker.md) | 58 | `declaration-track:6c6c16326cdef388d17681446cbf86685e54ec3a1d786c8c8f6418bd2e39bcde` |
| 5 | `lemma` | [Quotient Group Finite Namespaced](../../../../GroupTheoryAndGeneralizations/QuotientGroupFiniteNamespaced.lean/declarations/of-finite-quot-finite-subgroup.md) | 62 | `result-track:b4faa36cf79f231db4431cf6e6d4eb440faf8272903ea2dca827e38566f09190` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ade795b49fb60cedcb651f837ae2650f020789e8450023fed081f6ab01f2825c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Finite/Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Finite/Variant6bdcadcd56a7bb8e99f8306d71336ca5632493cc95c618e9a3c1a930bd1cb58c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
