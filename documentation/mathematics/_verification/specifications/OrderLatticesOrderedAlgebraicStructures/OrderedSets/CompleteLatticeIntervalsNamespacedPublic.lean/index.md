# Verification target: Complete Lattice Intervals Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c9a57baa333e8d4a23f7c0c1a3823086584ad82",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant15bb63f8cb313ad9a93e98b512690cd9c060edd1dc51366d8909f4b72e950675.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c9a57baa333e8d4a23f7c0c1a3823086584ad82`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant15bb63f8cb313ad9a93e98b512690cd9c060edd1dc51366d8909f4b72e950675.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant15bb63f8cb313ad9a93e98b512690cd9c060edd1dc51366d8909f4b72e950675.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subsetSupSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subsetsupset.md) | 50 | `declaration-track:175b4189386f47d52842491c24a6adfc25553e89fb6bbbcfe76b5625b8a83f1b` |
| 2 | `theorem` | [subset_sSup_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subset-ssup-def.md) | 60 | `result-track:105ae0d725ea2047350ab39dc5886e1f452ad5779dfe93ddd8056e542298fd09` |
| 3 | `theorem` | [subset_sSup_of_within](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subset-ssup-of-within.md) | 67 | `result-track:7cee160c716a2c7bc4f995508500a220a901f3ed259b74680b1a41162d860549` |
| 4 | `theorem` | [subset_sSup_emptyset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subset-ssup-emptyset.md) | 71 | `result-track:ee681a05b7a548ec18bec231e55cbbd6c40e1f9dfb5acbcce2af1c64834221c4` |
| 5 | `theorem` | [subset_sSup_of_not_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subset-ssup-of-not-bddabove.md) | 75 | `result-track:1e9a20bf74e39ac4ed5c832b23d84439915015abd85d79171f31ee0c6329a7df` |
| 6 | `def` | [subsetInfSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subsetinfset.md) | 90 | `declaration-track:4d78ff20a8c6a00773d41ac3691c9c7aaeda7f2f21f3be89405159a8b0f55584` |
| 7 | `theorem` | [subset_sInf_def](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subset-sinf-def.md) | 100 | `result-track:9e68754c7726ed7b0074c8441f1f1f3de5ff6e5824be46e8f148d579524cb0f9` |
| 8 | `theorem` | [subset_sInf_of_within](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subset-sinf-of-within.md) | 107 | `result-track:d6d339d2a323c4f3509d097ee60169bb5d6abab4a99162b6caa89fd5e6863e48` |
| 9 | `theorem` | [subset_sInf_emptyset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subset-sinf-emptyset.md) | 111 | `result-track:123485a5a9667a24b556334d341bd3f222eca85ca4f4e476f6c9515392225227` |
| 10 | `theorem` | [subset_sInf_of_not_bddBelow](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subset-sinf-of-not-bddbelow.md) | 115 | `result-track:24453bcb98d4488d58a0c2441b79cb52dbf095e3a9bf14d0a24de1042877c0f0` |
| 11 | `abbrev` | [subsetConditionallyCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/subsetconditionallycompletelinearorder.md) | 133 | `declaration-track:1f32097f2400c5dce375445ce3237277d7fa1365231868451c784ec9559538a4` |
| 12 | `theorem` | [sSup_within_of_ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/ssup-within-of-ordconnected.md) | 149 | `result-track:c57502a12348e349c49e6a7d500f4653ba5e74b69f4468977a1c78382aa1d724` |
| 13 | `theorem` | [sInf_within_of_ordConnected](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/sinf-within-of-ordconnected.md) | 159 | `result-track:241a7cc19bdbc26139ee74d0450ffeeb8051b1a7887edd3373ff154a408a402c` |
| 14 | `instance` | [ordConnectedSubsetConditionallyCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/ordconnectedsubsetconditionallycompletelinearorder.md) | 169 | `declaration-track:11e4b2c49ba9e11dcc3cc298ff5f2f72c4b60d73ca9d5c6c6c435dd58f396671` |
| 15 | `instance` | [Set.Icc.completeLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/set-icc-completelattice.md) | 180 | `declaration-track:3f4cf9afb58970da87cd39b405f667c961ca2659410e7f23c98a5a4c0afc5bc1` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/instance.md) | 205 | `declaration-track:f4fb3502d23f850b2c3acdd0c227bb5936ab9ed43362dd2081a14f9b104cda1c` |
| 17 | `lemma` | [Set.Icc.coe_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/set-icc-coe-ssup.md) | 209 | `result-track:6886084aa7ba946810083f1c8136777ea50acd8b5731a056fdd5daf7538a28e8` |
| 18 | `lemma` | [Set.Icc.coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/set-icc-coe-sinf.md) | 214 | `result-track:6de74b941bb6591d5cacf275f2124e93e30d7d2eda033cefff0b6c19f91265d7` |
| 19 | `lemma` | [Set.Icc.coe_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/set-icc-coe-isup.md) | 219 | `result-track:a6662ce7caf296da11648dd20577660d51202745b0b3fc789993b5264366bfcf` |
| 20 | `lemma` | [Set.Icc.coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/set-icc-coe-iinf.md) | 224 | `result-track:738f001a59aabb7ac3f8aaf92dca3ad9defcbfe1191aa2fdc246a4b77790f536` |
| 21 | `instance` | [instCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/instcompletelattice.md) | 235 | `declaration-track:05297bc014de1fdff1797dc5271689557bf0bf393c6db13169d3d8019d7f94fa` |
| 22 | `theorem` | [coe_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/coe-ssup.md) | 247 | `result-track:550e1d1cff187ecdb749383d0cc5f41fa82e26803bd94b481a1e008a98552717` |
| 23 | `theorem` | [coe_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/coe-isup.md) | 249 | `result-track:4b6584bb9382786c516e79552da70f865da7daa3063f832a06eb755ba5423ce0` |
| 24 | `theorem` | [coe_biSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/coe-bisup.md) | 252 | `result-track:eacc5295d1cddeb38f52d06f0b22ef66eb48f48ccd26e5338799dbcb49700aad` |
| 25 | `theorem` | [coe_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/coe-sinf.md) | 254 | `result-track:564e4fc4f83669a54c63bf1eed7dd685b500c3062b4b7bac33a4c95322bff1ba` |
| 26 | `theorem` | [coe_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/coe-iinf.md) | 256 | `result-track:d548de77915f978da7afb99963de91184d83140bbc21fcb7aaaa6bc031979d20` |
| 27 | `theorem` | [coe_biInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeIntervalsNamespacedPublic.lean/declarations/coe-biinf.md) | 259 | `result-track:729b8e1cf1120171acd3d4fa2a64966d3d7d4382c0c7bb59f20762ee2f210adf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b351268f03080071e4500d98596a6f23dc5659b54633c0246991dec6a33b275 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant15bb63f8cb313ad9a93e98b512690cd9c060edd1dc51366d8909f4b72e950675.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant15bb63f8cb313ad9a93e98b512690cd9c060edd1dc51366d8909f4b72e950675.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
