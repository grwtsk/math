# Verification target: TProd Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b4d660aaca03c12426c36b09861f5dd2634cd4d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variantccc23c7a91dd63b5bad5a8ed859b634b7b298ef353fe38d213554b1a7c7dd1cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b4d660aaca03c12426c36b09861f5dd2634cd4d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variantccc23c7a91dd63b5bad5a8ed859b634b7b298ef353fe38d213554b1a7c7dd1cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variantccc23c7a91dd63b5bad5a8ed859b634b7b298ef353fe38d213554b1a7c7dd1cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/tprod.md) | 55 | `declaration-track:38a6ec90648723f15aba6f4fe91150ad007e8f48dc807c1fd6f9b571bedc779a` |
| 2 | `def` | [mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/mk.md) | 66 | `declaration-track:279ab75a50769d16b6404aee168df05e6d56efed666499035447d6920f079420` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/instance.md) | 71 | `declaration-track:01678b0daa3efe510ca845be9009089dac0dabb520cbd63f29ca34617dbbd93c` |
| 4 | `theorem` | [fst_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/fst-mk.md) | 75 | `result-track:3f295f6d7e6b33a9553b1eba824e214aa4aef6d59980f8c92f8821af69efdccb` |
| 5 | `theorem` | [snd_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/snd-mk.md) | 80 | `result-track:78be0e39c6120a0376660dbe3baec99b99e083ce9544b33797c3566e93df34c4` |
| 6 | `def` | [elim](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/elim.md) | 89 | `declaration-track:56e31fa270d8fabd96167f21eb432c13982262aa4702e15c309156a0952c9587` |
| 7 | `theorem` | [elim_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/elim-self.md) | 98 | `result-track:e585559a218840bf127309d289c8cd4bc502d9fed0bd2cff5d2a2a16cc286677` |
| 8 | `theorem` | [elim_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/elim-of-ne.md) | 102 | `result-track:651728e64b99fd836498073c0a17850f6debb281e18032c2ad3556d6d54c8c44` |
| 9 | `theorem` | [elim_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/elim-of-mem.md) | 107 | `result-track:81b11e49a8ea4786c5705cfe0aefd71e1f6b741b3058938dc70580a8c80b378c` |
| 10 | `theorem` | [elim_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/elim-mk.md) | 114 | `result-track:4de40e914c9de286bafb5c175b24e6d3e7f59e49f60d7457d37bdc65aeda4fa4` |
| 11 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/ext.md) | 124 | `result-track:de230fcbab7a904cdb9d0eb083adec348fa54beb078af07de51c1342823f67d5` |
| 12 | `def` | [elim'](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/elim-source-edition-2.md) | 137 | `declaration-track:864d72e7fb454fa6369f08718e71f54ce9142491ffb73e5bf855fb36182d55a3` |
| 13 | `theorem` | [mk_elim](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/mk-elim.md) | 141 | `result-track:75d3d7ecd46cd3eca319fc1afa9691e7576826ea5791fa68638d4eec77e6cb16` |
| 14 | `def` | [piEquivTProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/piequivtprod.md) | 146 | `declaration-track:de863f448dd4fe4ade1dd0d358c70661826c465b927f02efd2e73e1b0b4ef536` |
| 15 | `def` | [tprod](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/tprod-source-edition-2.md) | 160 | `declaration-track:4acd2dfbe9284c1b4d9e8668ba6fce19c44469f500440f9624a89d626834977a` |
| 16 | `theorem` | [mk_preimage_tprod](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/mk-preimage-tprod.md) | 165 | `result-track:992250276bacb562203145236db74c552924458e399ebcd5811affa02be88a14` |
| 17 | `theorem` | [elim_preimage_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/TProdNamespacedAligned.lean/declarations/elim-preimage-pi.md) | 181 | `result-track:e1296ab80321f2405f15d8ee625127e15ca6988b5febc876bc266cc2a3eea70f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f44de51833a53d6886f9790a9aee755e9369dba7a7a302bac4fc08dc2db8001d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variantccc23c7a91dd63b5bad5a8ed859b634b7b298ef353fe38d213554b1a7c7dd1cf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TProd/Variantccc23c7a91dd63b5bad5a8ed859b634b7b298ef353fe38d213554b1a7c7dd1cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
