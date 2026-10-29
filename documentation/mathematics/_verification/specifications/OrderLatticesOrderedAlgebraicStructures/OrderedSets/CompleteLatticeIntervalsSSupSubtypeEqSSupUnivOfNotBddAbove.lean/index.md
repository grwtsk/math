# Verification target: Complete Lattice Intervals SSup Subtype Eq SSup Univ Of Not Bdd Above

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b97dba736af3c15a99c39fff736b1891f30c4f9",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b97dba736af3c15a99c39fff736b1891f30c4f9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.OrdConnected` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subsetSupSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/subsetsupset.md) | 38 | `declaration-track:ef231c56411903fce4169c807326cc25365f72400648ca87ebff76d0c60bd29d` |
| 2 | `theorem` | [subset_sSup_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/subset-ssup-def.md) | 48 | `result-track:5d98628492e26e9cdd9807fc63f37d40a91f1d25bf7a42b3f35cc928dc678d44` |
| 3 | `theorem` | [subset_sSup_of_within](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/subset-ssup-of-within.md) | 56 | `result-track:46681501e567cd77d924bfc93aec2be8ba27758f0308f76b0fd9fd10996513d1` |
| 4 | `def` | [subsetInfSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/subsetinfset.md) | 69 | `declaration-track:a960de20cca9fb22ac9ae85cf71ad85a8a2b286a537545e569e4691fec74e468` |
| 5 | `theorem` | [subset_sInf_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/subset-sinf-def.md) | 79 | `result-track:92e3f36bde10e08af1dadb54dd1604a7c011a1249cbe466c3fb0224817411548` |
| 6 | `theorem` | [subset_sInf_of_within](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/subset-sinf-of-within.md) | 87 | `result-track:482fa93c11baba048039947d693e2907fa3327e32db4c27ea3be9b7328cffcda` |
| 7 | `lemma` | [sSup_subtype_eq_sSup_univ_of_not_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/ssup-subtype-eq-ssup-univ-of-not-bddabove.md) | 99 | `result-track:c33191d2504af3289f88ac232594d379725c52ff6738be865b1a53e04ff316d2` |
| 8 | `def` | [subsetConditionallyCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/subsetconditionallycompletelinearorder.md) | 138 | `declaration-track:12395abbf5ff3cda87b222e118e1b998ab0c3fe68574bb1f22072a04ae54ed36` |
| 9 | `theorem` | [sSup_within_of_ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/ssup-within-of-ordconnected.md) | 170 | `result-track:25832f8f3411d9d17b5333e2e6289b6554298a1b86ee5c1c7d167457eb2edfe6` |
| 10 | `theorem` | [sInf_within_of_ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/sinf-within-of-ordconnected.md) | 181 | `result-track:17cc01f49d133ef5bd46644b4e200a68aecdf0dd36b9b99eec7f36709d816f13` |
| 11 | `instance` | [ordConnectedSubsetConditionallyCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsSSupSubtypeEqSSupUnivOfNotBddAbove.lean/declarations/ordconnectedsubsetconditionallycompletelinearorder.md) | 192 | `declaration-track:7d76c95c8499c2c5b4ae710c0ef659c9c1bf6456694a828eeaa883f33b77a616` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17b2f8f5a5063fe0d04e003455ed861f7728f9ced40d83889b667542401643d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant64a115af69a0fc809286b8b1edb545530d60c968c9ddbd24761143419792e494.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
