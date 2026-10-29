# Verification target: Append Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87f7c6ffa5e9e887915ddb94ef0bf62b75126dee",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Variant8fc743114829d9d4a8b9553b449f730bab6b68dd6a71cb516d6f0ed3f84af1e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/AppendNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/AppendNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87f7c6ffa5e9e887915ddb94ef0bf62b75126dee`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Variant8fc743114829d9d4a8b9553b449f730bab6b68dd6a71cb516d6f0ed3f84af1e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Variant8fc743114829d9d4a8b9553b449f730bab6b68dd6a71cb516d6f0ed3f84af1e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Monadic.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.ToArray` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IterM.step_append](../../../../../ComputerScience/AlgorithmsInComputerScience/AppendNamespacedPublic.lean/declarations/iterm-step-append.md) | 31 | `result-track:95c62e5db36c5fdcfffe52f7549d02758f63d194f173721cace3baebdb37c0cb` |
| 2 | `theorem` | [IterM.Intermediate.step_appendSnd](../../../../../ComputerScience/AlgorithmsInComputerScience/AppendNamespacedPublic.lean/declarations/iterm-intermediate-step-appendsnd.md) | 45 | `result-track:6b0c28120008c2c430367b925d7fed97ba908f2db74ce71a8e6d8aa8fa1ba894` |
| 3 | `theorem` | [IterM.toList_appendSnd](../../../../../ComputerScience/AlgorithmsInComputerScience/AppendNamespacedPublic.lean/declarations/iterm-tolist-appendsnd.md) | 60 | `result-track:9c27d718507e606427c12dad8ae40227af627d5aa5be856ad89a2c7601a3461d` |
| 4 | `theorem` | [IterM.toList_append](../../../../../ComputerScience/AlgorithmsInComputerScience/AppendNamespacedPublic.lean/declarations/iterm-tolist-append.md) | 75 | `result-track:a716e72b1f7518f324bd38d722834f1e6ddfe7f8925183f9635f323f14f79bc3` |
| 5 | `theorem` | [IterM.toListRev_append](../../../../../ComputerScience/AlgorithmsInComputerScience/AppendNamespacedPublic.lean/declarations/iterm-tolistrev-append.md) | 92 | `result-track:8b785f795d1297fa12762814bc5fa37d10d203aff22f685ef68f1a0950b51e6b` |
| 6 | `theorem` | [IterM.toArray_append](../../../../../ComputerScience/AlgorithmsInComputerScience/AppendNamespacedPublic.lean/declarations/iterm-toarray-append.md) | 104 | `result-track:f2fa71eeab899be1a16dccd204ee034101fdb7efb1e9d32d92dd8bde0dc858e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0067a1acc0826ca70cdef2a81fa1256d147fef7f115f8455f3822f146a1fe43d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Variant8fc743114829d9d4a8b9553b449f730bab6b68dd6a71cb516d6f0ed3f84af1e5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Append/Variant8fc743114829d9d4a8b9553b449f730bab6b68dd6a71cb516d6f0ed3f84af1e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
