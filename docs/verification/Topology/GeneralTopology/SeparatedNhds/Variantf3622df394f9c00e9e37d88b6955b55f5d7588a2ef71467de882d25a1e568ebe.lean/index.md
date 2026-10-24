# Verification target: GRWTSK.Topology.GeneralTopology.SeparatedNhds.Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe

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

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/source.md)

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

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SeparatedNhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/separatednhds--4827945725bfd4402f494240.md) | 48 | `declaration-track:4827945725bfd4402f4942408dcb11364e0a2636196732bafd157fd3629d1672` |
| 2 | `theorem` | [separatedNhds_iff_disjoint](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/separatednhds-iff-disjoint--e496ac5b52203e18046ae658.md) | 51 | `result-track:e496ac5b52203e18046ae658e3777bfbe0ceb714e1142621d5ed81fdc83450d1` |
| 3 | `def` | [HasSeparatingCover](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/hasseparatingcover--70a432eb7aaaed6ac969de7e.md) | 58 | `declaration-track:70a432eb7aaaed6ac969de7e32bba74839fec8ebc40b464c481c98b2d649f813` |
| 4 | `theorem` | [hasSeparatingCovers_iff_separatedNhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/hasseparatingcovers-iff-separatednhds--f23486d71bbba66f774f371b.md) | 63 | `result-track:f23486d71bbba66f774f371b6fd7ed2b0121840916805546a7ccc0a81975b66c` |
| 5 | `theorem` | [Set.hasSeparatingCover_empty_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/set-hasseparatingcover-empty-left--064ffbe57daf34eb01de629d.md) | 106 | `result-track:064ffbe57daf34eb01de629df8b269cfdde7f8bc645cdc10ea365287de59b6fb` |
| 6 | `theorem` | [Set.hasSeparatingCover_empty_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/set-hasseparatingcover-empty-right--d8c66559c5d093d880568637.md) | 110 | `result-track:d8c66559c5d093d880568637a0e0bd95e50778f61b432817c85e1010441bbd6d` |
| 7 | `theorem` | [HasSeparatingCover.mono](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/hasseparatingcover-mono--2920fc78b775ec2947dc3422.md) | 114 | `result-track:2920fc78b775ec2947dc34226de910e59db8e97a1f69ba71558edeb31cd09b8a` |
| 8 | `theorem` | [symm](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/symm--939610dd7e11f11443038604.md) | 129 | `result-track:939610dd7e11f11443038604f884a15d59198bdc51f8a0b5f077124e2b38a63a` |
| 9 | `theorem` | [comm](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/comm--474913fd8a82cb08e315bddb.md) | 132 | `result-track:474913fd8a82cb08e315bddb324faae377315236e9205baa7748422a8c3364c7` |
| 10 | `theorem` | [preimage](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/preimage--263d752dfb3a88ada31ed7cb.md) | 135 | `result-track:263d752dfb3a88ada31ed7cb6da7c11d2a3b63c4b4daf4bb95ae73444681fdad` |
| 11 | `theorem` | [disjoint](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/disjoint--9bf3dd98dc2428bfa71cf27f.md) | 141 | `result-track:9bf3dd98dc2428bfa71cf27f9e4684ba6193a2acb01ce3436837043cb49f4b1e` |
| 12 | `theorem` | [disjoint_closure_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/disjoint-closure-left--d7411d7001061e1f2387bdd9.md) | 144 | `result-track:d7411d7001061e1f2387bdd9b5624eae23221518b225d89207c24c416b97c646` |
| 13 | `theorem` | [disjoint_closure_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/disjoint-closure-right--3d45745f92b208b9bcc4b611.md) | 148 | `result-track:3d45745f92b208b9bcc4b611e95b02880cee1c183f54fa56e4a55ef4c5f1b3ae` |
| 14 | `theorem` | [empty_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/empty-right--b915d0db874dc527fab8de10.md) | 151 | `result-track:b915d0db874dc527fab8de10784206d434740f527c6fbe737c2620fc6bb31b14` |
| 15 | `theorem` | [empty_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/empty-left--09cb1f5113b2f0791d05c337.md) | 154 | `result-track:09cb1f5113b2f0791d05c337e9916d67c11f8431d38b713b9ed2abd3691f7e5c` |
| 16 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/mono--a7344b41c0aadbedd52faf15.md) | 157 | `result-track:a7344b41c0aadbedd52faf15c0ef551d11387e6251a0b7e4e418284a6bf1622a` |
| 17 | `theorem` | [union_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/union-left--2495660229b377920192fe4d.md) | 161 | `result-track:2495660229b377920192fe4d42899845b2dd65661a0f2ada25538bb12533764d` |
| 18 | `theorem` | [union_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/union-right--fe51c47e3530ff6eaef2aad5.md) | 164 | `result-track:fe51c47e3530ff6eaef2aad52c838fe4600a41a010edeacc1976e1579d3c6ac8` |
| 19 | `lemma` | [isOpen_left_of_isOpen_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/isopen-left-of-isopen-union--f82c6d9428f68e140cbd5c85.md) | 167 | `result-track:f82c6d9428f68e140cbd5c85166e3a1d2f82f27ec132b0fd512ec3d16106efbd` |
| 20 | `lemma` | [isOpen_right_of_isOpen_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/isopen-right-of-isopen-union--a0d0211514818b93b0b015b6.md) | 173 | `result-track:a0d0211514818b93b0b015b6d2ef1f48ca615a35732f23045f79ab9d3df3c015` |
| 21 | `lemma` | [isOpen_union_iff](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/isopen-union-iff--2286eb69ab16ed36ab4fc3db.md) | 176 | `result-track:2286eb69ab16ed36ab4fc3dbc4cfa0e2d5f9d9be6b652054885509024395e9f8` |
| 22 | `lemma` | [isClosed_left_of_isClosed_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/isclosed-left-of-isclosed-union--90ca378ae91dec1b2716bb51.md) | 180 | `result-track:90ca378ae91dec1b2716bb514cbbb41f7ea6b246ec311b5deb3be9d98e886260` |
| 23 | `lemma` | [isClosed_right_of_isClosed_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/isclosed-right-of-isclosed-union--1babfec55de59c329e628f65.md) | 189 | `result-track:1babfec55de59c329e628f65069eae44e2920d64dcf6978c9f392524ea865e3e` |
| 24 | `lemma` | [isClosed_union_iff](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variantf3622df394f9c00e9e37d88b6955b55f5d7588a2ef71467de882d25a1e568ebe.lean/declarations/isclosed-union-iff--daed8ff6a65b845e1d4d42e5.md) | 193 | `result-track:daed8ff6a65b845e1d4d42e5c0923e7b7ea8e5a23812134a67c194df8c213350` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
