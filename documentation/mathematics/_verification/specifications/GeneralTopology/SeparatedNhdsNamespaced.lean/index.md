# Verification target: Separated Nhds Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d130acafb048af1825bddc730a97386590c62ec3",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d130acafb048af1825bddc730a97386590c62ec3`.

Source path: `GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Continuous` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NhdsSet` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SeparatedNhds](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/separatednhds.md) | 48 | `declaration-track:4827945725bfd4402f4942408dcb11364e0a2636196732bafd157fd3629d1672` |
| 2 | `theorem` | [separatedNhds_iff_disjoint](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/separatednhds-iff-disjoint.md) | 51 | `result-track:e496ac5b52203e18046ae658e3777bfbe0ceb714e1142621d5ed81fdc83450d1` |
| 3 | `def` | [HasSeparatingCover](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/hasseparatingcover.md) | 58 | `declaration-track:70a432eb7aaaed6ac969de7e32bba74839fec8ebc40b464c481c98b2d649f813` |
| 4 | `theorem` | [hasSeparatingCovers_iff_separatedNhds](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/hasseparatingcovers-iff-separatednhds.md) | 63 | `result-track:f23486d71bbba66f774f371b6fd7ed2b0121840916805546a7ccc0a81975b66c` |
| 5 | `theorem` | [Set.hasSeparatingCover_empty_left](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/set-hasseparatingcover-empty-left.md) | 106 | `result-track:064ffbe57daf34eb01de629df8b269cfdde7f8bc645cdc10ea365287de59b6fb` |
| 6 | `theorem` | [Set.hasSeparatingCover_empty_right](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/set-hasseparatingcover-empty-right.md) | 110 | `result-track:d8c66559c5d093d880568637a0e0bd95e50778f61b432817c85e1010441bbd6d` |
| 7 | `theorem` | [HasSeparatingCover.mono](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/hasseparatingcover-mono.md) | 114 | `result-track:2920fc78b775ec2947dc34226de910e59db8e97a1f69ba71558edeb31cd09b8a` |
| 8 | `theorem` | [symm](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/symm.md) | 129 | `result-track:939610dd7e11f11443038604f884a15d59198bdc51f8a0b5f077124e2b38a63a` |
| 9 | `theorem` | [comm](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/comm.md) | 132 | `result-track:474913fd8a82cb08e315bddb324faae377315236e9205baa7748422a8c3364c7` |
| 10 | `theorem` | [preimage](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/preimage.md) | 135 | `result-track:263d752dfb3a88ada31ed7cb6da7c11d2a3b63c4b4daf4bb95ae73444681fdad` |
| 11 | `theorem` | [disjoint](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/disjoint.md) | 141 | `result-track:9bf3dd98dc2428bfa71cf27f9e4684ba6193a2acb01ce3436837043cb49f4b1e` |
| 12 | `theorem` | [disjoint_closure_left](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/disjoint-closure-left.md) | 144 | `result-track:d7411d7001061e1f2387bdd9b5624eae23221518b225d89207c24c416b97c646` |
| 13 | `theorem` | [disjoint_closure_right](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/disjoint-closure-right.md) | 148 | `result-track:3d45745f92b208b9bcc4b611e95b02880cee1c183f54fa56e4a55ef4c5f1b3ae` |
| 14 | `theorem` | [empty_right](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/empty-right.md) | 151 | `result-track:b915d0db874dc527fab8de10784206d434740f527c6fbe737c2620fc6bb31b14` |
| 15 | `theorem` | [empty_left](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/empty-left.md) | 154 | `result-track:09cb1f5113b2f0791d05c337e9916d67c11f8431d38b713b9ed2abd3691f7e5c` |
| 16 | `theorem` | [mono](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/mono.md) | 157 | `result-track:a7344b41c0aadbedd52faf15c0ef551d11387e6251a0b7e4e418284a6bf1622a` |
| 17 | `theorem` | [union_left](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/union-left.md) | 161 | `result-track:2495660229b377920192fe4d42899845b2dd65661a0f2ada25538bb12533764d` |
| 18 | `theorem` | [union_right](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/union-right.md) | 164 | `result-track:fe51c47e3530ff6eaef2aad52c838fe4600a41a010edeacc1976e1579d3c6ac8` |
| 19 | `lemma` | [isOpen_left_of_isOpen_union](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/isopen-left-of-isopen-union.md) | 167 | `result-track:f82c6d9428f68e140cbd5c85166e3a1d2f82f27ec132b0fd512ec3d16106efbd` |
| 20 | `lemma` | [isOpen_right_of_isOpen_union](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/isopen-right-of-isopen-union.md) | 173 | `result-track:a0d0211514818b93b0b015b6d2ef1f48ca615a35732f23045f79ab9d3df3c015` |
| 21 | `lemma` | [isOpen_union_iff](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/isopen-union-iff.md) | 176 | `result-track:2286eb69ab16ed36ab4fc3dbc4cfa0e2d5f9d9be6b652054885509024395e9f8` |
| 22 | `lemma` | [isClosed_left_of_isClosed_union](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/isclosed-left-of-isclosed-union.md) | 180 | `result-track:90ca378ae91dec1b2716bb514cbbb41f7ea6b246ec311b5deb3be9d98e886260` |
| 23 | `lemma` | [isClosed_right_of_isClosed_union](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/isclosed-right-of-isclosed-union.md) | 189 | `result-track:1babfec55de59c329e628f65069eae44e2920d64dcf6978c9f392524ea865e3e` |
| 24 | `lemma` | [isClosed_union_iff](../../../../GeneralTopology/SeparatedNhdsNamespaced.lean/declarations/isclosed-union-iff.md) | 193 | `result-track:daed8ff6a65b845e1d4d42e5c0923e7b7ea8e5a23812134a67c194df8c213350` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e77ec43e1d72f1d8575f39f3b6f4bcd3895e3506268d53bf03a83acd3c03aeef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
