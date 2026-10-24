# Verification target: GRWTSK.Topology.GeneralTopology.SigmaComparison.Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f06e8b1100c678a63a6f9aa3594b069f319b077",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f06e8b1100c678a63a6f9aa3594b069f319b077`.

Source path: `GRWTSK/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.CompHausLike.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/declarations/instance--a6b8be8aeee49d0cc5b5a7d6.md) | 40 | `declaration-track:a6b8be8aeee49d0cc5b5a7d659a7dc63c0e89686856d58f96d15157256a2bb92` |
| 2 | `def` | [sigmaComparison](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/declarations/sigmacomparison--9e69804254fa82526d7eb71d.md) | 46 | `declaration-track:9e69804254fa82526d7eb71d74ba68f855c12c51097cc61b1a43232aa2dbe78c` |
| 3 | `theorem` | [sigmaComparison_eq_comp_isos](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/declarations/sigmacomparison-eq-comp-isos--961c849fc7b873a65d68eed4.md) | 49 | `result-track:961c849fc7b873a65d68eed4a9f1b036fe4810bd9dc9b4be7296b87d0ba1f003` |
| 4 | `instance` | [isIsoSigmaComparison](../../../../../mathematics/Topology/GeneralTopology/SigmaComparison/Variant03a951205c45d2b2c87ca6ebaada4772fa5ceef1b0c084202205c50dd9acb3b5.lean/declarations/isisosigmacomparison--68e338773fc17387c7186a6a.md) | 70 | `declaration-track:68e338773fc17387c7186a6a0f8ba2569ab3ef02f476b99d4c1d6866a48c0479` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
