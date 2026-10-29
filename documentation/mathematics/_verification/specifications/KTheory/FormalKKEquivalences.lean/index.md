# Verification target: GRWTSK.Algebra.KTheory.FormalKKEquivalences

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32da59672cf044de37c06a724035625ce5536b21",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KTheory/FormalKKEquivalences.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../KTheory/FormalKKEquivalences.lean/index.md) · [Full source](../../../../KTheory/FormalKKEquivalences.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32da59672cf044de37c06a724035625ce5536b21`.

Source path: `GRWTSK/Algebra/KTheory/FormalKKEquivalences.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KTheory/FormalKKEquivalences.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.KTheory.FormalKK`](../../../../KTheory/FormalKK.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../KTheory/FormalKKEquivalences.lean/declarations/ext.md) | 15 | `result-track:5666eb2448edafc71677720c5ca6136109d37c2e267fc1317ed772121c97e366` |
| 2 | `def` | [refl](../../../../KTheory/FormalKKEquivalences.lean/declarations/refl.md) | 25 | `declaration-track:eecfbe85c41ae017ff61591fbbb584a586cdaa11249409e88718b9c96508281e` |
| 3 | `def` | [symm](../../../../KTheory/FormalKKEquivalences.lean/declarations/symm.md) | 32 | `declaration-track:146598654a478117abc8ea30fdb9d31307e85aca174e7801bee11ebeb5282390` |
| 4 | `def` | [trans](../../../../KTheory/FormalKKEquivalences.lean/declarations/trans.md) | 39 | `declaration-track:90d2ff962115a6bf9b66e017e74c4b6b3678951882bce7f8b7922b5ada48e46b` |
| 5 | `theorem` | [actionEquiv_trans_apply](../../../../KTheory/FormalKKEquivalences.lean/declarations/actionequiv-trans-apply.md) | 82 | `result-track:a3e20248a711817783962c49be89975c385148f2d54da88ea68007c41808949f` |
| 6 | `def` | [act](../../../../KTheory/FormalKKEquivalences.lean/declarations/act.md) | 97 | `declaration-track:813d9f26a93ccc1ad1fdc81fe4c48c15fb9b4709425e96c476ee5081de282813` |
| 7 | `theorem` | [act_append](../../../../KTheory/FormalKKEquivalences.lean/declarations/act-append.md) | 102 | `result-track:bc295bbd5114a53cb8bac3dc336795e482152f4b33b5dfa591dde9996a7be064` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd1feefd0284c65fa2fc7a5f6e1304f7b568753c1630dcabe38a44a23d811ce7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KTheory/FormalKKEquivalences.lean","GRWTSK/_verification/specifications/Algebra/KTheory/FormalKKEquivalences.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
