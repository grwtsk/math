# Verification target: Von Neumann Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "385c2ed4d4426281af33a1078f28ffbe7ad17384",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `385c2ed4d4426281af33a1078f28ffbe7ad17384`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean.json)

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
| 1 | `def` | [vonNeumann](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann.md) | 46 | `declaration-track:b832aca0afe64df3e99c5c5d54bdc1ead7472865cbe1f1e532393e022b704ca5` |
| 2 | `lemma` | [mem_vonNeumann'](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/mem-vonneumann.md) | 56 | `result-track:57612b84ccd9ca236fe36f9214bf6a9b4454fa4bc08a7c7f96d3314c673184d3` |
| 3 | `theorem` | [isTransitive_vonNeumann](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/istransitive-vonneumann.md) | 58 | `result-track:61988c4b03dbc4bfc475290b0db439afa7ab7835089e9d9fd688e531b8f23f18` |
| 4 | `theorem` | [vonNeumann_mem_of_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-mem-of-lt.md) | 63 | `result-track:a9e1c7e15c9bc07099d9410ae22e84145260488f33c6b2d08d8be78dc1df348e` |
| 5 | `theorem` | [vonNeumann_subset_of_le](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-subset-of-le.md) | 66 | `result-track:82628a2ced4b0d1b689cfeec0bd09fe888d6b68a910a9fbc844c52eaaf615010` |
| 6 | `theorem` | [subset_vonNeumann](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/subset-vonneumann.md) | 69 | `result-track:95861664d92dc39d7ed238caeafe16241190927a21c816523a0683194ffd58fb` |
| 7 | `theorem` | [subset_vonNeumann_self](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/subset-vonneumann-self.md) | 81 | `result-track:6336b8392c640a32f70fdb01ff7fd9aa38e8fec8006652f8d17b216fdc7d9129` |
| 8 | `theorem` | [mem_vonNeumann](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/mem-vonneumann-source-edition-2.md) | 84 | `result-track:ff6702cfb930fc65800ce9b207f39ff5618a89a12ccb1f2f1082ace94d14a38b` |
| 9 | `theorem` | [mem_vonNeumann_succ](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/mem-vonneumann-succ.md) | 88 | `result-track:c415e7b03d4e8a62907d514fbeabb91e3d875fdf12c82c0f59c8a72a1c1229a0` |
| 10 | `theorem` | [exists_mem_vonNeumann](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/exists-mem-vonneumann.md) | 92 | `result-track:884209be8525391962c8903a9b5710cecae5317a64f9665fb68a2b9a47b706a4` |
| 11 | `theorem` | [rank_vonNeumann](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/rank-vonneumann.md) | 96 | `result-track:3d23aa8e22c41b5612d4b9441d38effbe0aacf408e9ad88a68556b9e3fcdad81` |
| 12 | `theorem` | [vonNeumann_mem_vonNeumann_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-mem-vonneumann-iff.md) | 102 | `result-track:5f289c9afc71dd0b86ed5534dd57dd0648600e32e41e665e29fb6d89186ba498` |
| 13 | `theorem` | [vonNeumann_subset_vonNeumann_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-subset-vonneumann-iff.md) | 106 | `result-track:9d3bffa2a80902e312c7076ea7a2c2a4a69c0e25d181ac60b423af9ea22e095f` |
| 14 | `theorem` | [mem_vonNeumann_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/mem-vonneumann-of-subset.md) | 109 | `result-track:cc8e274e29992e7cd92293a70c41fc59d9a7483e6c3015df450252b1754c4ce8` |
| 15 | `theorem` | [vonNeumann_strictMono](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-strictmono.md) | 113 | `result-track:7006372c33b702938d50dde1b254415bbea43c02ea272bb4a97056f599741095` |
| 16 | `theorem` | [vonNeumann_injective](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-injective.md) | 116 | `result-track:7216e0d9743661f67e0017a5d7cbdff70af8488f0eff73bbd96742511c94a60b` |
| 17 | `theorem` | [vonNeumann_inj](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-inj.md) | 120 | `result-track:34e23782b7d6e4ccd5a00b3824b0b42f26eca88b4997884a992f4e89c3891845` |
| 18 | `theorem` | [vonNeumann_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-zero.md) | 124 | `result-track:76ced18b2c8e844146903ee0bbccd44dfef88bbfd767ff6815876eba3cea61d6` |
| 19 | `theorem` | [vonNeumann_add_one](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-add-one.md) | 128 | `result-track:0604cb9a89cae0a91f14cd1ffeb97afff6ebc25863dff9e46d84d5a7c9a5733f` |
| 20 | `theorem` | [vonNeumann_succ](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-succ.md) | 132 | `result-track:ae6b29678adcf978298289068ce1fbcaa81182059c086026c23a26b9ba229670` |
| 21 | `theorem` | [vonNeumann_of_isSuccPrelimit](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/vonneumann-of-issuccprelimit.md) | 135 | `result-track:bd988154bc6c64c08ddf236076fdc1a45bc2bb4c2b7701c0ed13100223e31de9` |
| 22 | `theorem` | [iUnion_vonNeumann](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/iunion-vonneumann.md) | 139 | `result-track:3422708547246303e9526065ae2240767b4f4e0c0bfbb40dfd677773e2e8b110` |
| 23 | `theorem` | [Von Neumann Namespaced Public](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/tozfset-subset-vonneumann.md) | 142 | `result-track:b51f3a035f7fb4bda15cdc7a3f26eadfa933990e0d8f4076ee76bc8610fcc858` |
| 24 | `lemma` | [Von Neumann Namespaced Public](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/card-le-card-vonneumann.md) | 145 | `result-track:1af5bce7571c33168fd4bcbced18ce424d7117fd163596b412efe1bf348d3c3b` |
| 25 | `theorem` | [card_vonNeumann](../../../../../MathematicalLogicAndFoundations/SetTheory/VonNeumannNamespacedPublic.lean/declarations/card-vonneumann.md) | 149 | `result-track:20307f70528ba0bed4c2d459b5f9a6c3a4c72107af98d6a90f3f80fe26668bd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f51a1c1c23734f521101be6accbd8651c7440f07bd62b31ed4d91107b0af0c09 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/VonNeumann/Variant1220b893fb16b975e132c5df76871e92beba00ab22272297fd926c9797526b7f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
