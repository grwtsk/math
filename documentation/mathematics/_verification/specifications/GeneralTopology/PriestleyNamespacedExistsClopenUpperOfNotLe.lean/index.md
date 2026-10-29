# Verification target: Priestley Namespaced Exists Clopen Upper Of Not Le

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37793a3abcb56a207fbba0af1eaea1db1581bb91",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/PriestleyNamespacedExistsClopenUpperOfNotLe.lean/index.md) · [Full source](../../../../GeneralTopology/PriestleyNamespacedExistsClopenUpperOfNotLe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37793a3abcb56a207fbba0af1eaea1db1581bb91`.

Source path: `GRWTSK/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.UpperLower.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PriestleySpace](../../../../GeneralTopology/PriestleyNamespacedExistsClopenUpperOfNotLe.lean/declarations/priestleyspace.md) | 48 | `declaration-track:d8b15eb71e6dc9230ad34131b0040a3fd7fd27a42b159de204f676d324ba4732` |
| 2 | `theorem` | [exists_clopen_upper_of_not_le](../../../../GeneralTopology/PriestleyNamespacedExistsClopenUpperOfNotLe.lean/declarations/exists-clopen-upper-of-not-le.md) | 58 | `result-track:99a7eebc5f48fc347da6f82c9af2492951c47425ff5e2656efec014c7388c467` |
| 3 | `theorem` | [exists_clopen_lower_of_not_le](../../../../GeneralTopology/PriestleyNamespacedExistsClopenUpperOfNotLe.lean/declarations/exists-clopen-lower-of-not-le.md) | 63 | `result-track:321dd229ceb572e5443559ed8bd903bc4cd05c703e76ecddd37c59e0dcb9e0fd` |
| 4 | `theorem` | [exists_clopen_upper_or_lower_of_ne](../../../../GeneralTopology/PriestleyNamespacedExistsClopenUpperOfNotLe.lean/declarations/exists-clopen-upper-or-lower-of-ne.md) | 75 | `result-track:eef497d93f7c54f19ae6c6b5c3da1ed49860606c155f7e2a310e2573c6f28dae` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/PriestleyNamespacedExistsClopenUpperOfNotLe.lean/declarations/instance.md) | 84 | `declaration-track:142910a5a7aeca0238de020de5f905784801c6fdc3e134596ace8eb0e78a6164` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a969737a1bd19f5455af1697bd589953e1b6b884beb27365473b223b1d667887 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Priestley/Variantaa940e04f8589e20108acc00f2b44e3006db5b4a8d666e5cb04382399b23f829.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
