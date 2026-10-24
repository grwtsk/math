# Verification target: GRWTSK.Topology.GeneralTopology.Restrict.Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b7af7c56c709043e529b02c23079784ba5f351b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b7af7c56c709043e529b02c23079784ba5f351b`.

Source path: `GRWTSK/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/homeomorph--d80fe03744b83323b93dce59.md) | 35 | `declaration-track:d80fe03744b83323b93dce59d9e98a8289baa06a8b086cc031850650326ebed4` |
| 2 | `lemma` | [compactSpace](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/compactspace--b82a27a7df0c027702d1cdb5.md) | 44 | `result-track:b82a27a7df0c027702d1cdb5bb1f3a7e22918b234a02f07a29649b48d6908d20` |
| 3 | `def` | [starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/staralghom--08d2de8b1b0ce5c2c2618d7b.md) | 57 | `declaration-track:08d2de8b1b0ce5c2c2618d7b82fcdd3c3c53c4ff45963885497628061f466bc6` |
| 4 | `lemma` | [starAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/staralghom-id--be4c0e5000940cdb89fc82b2.md) | 76 | `result-track:be4c0e5000940cdb89fc82b2c9bcabb610a2fed21f9450452ad5a955f9854d5d` |
| 5 | `lemma` | [starAlgHom_injective](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/staralghom-injective--7bf4ec52ab81053bd4e991ac.md) | 85 | `result-track:7bf4ec52ab81053bd4e991acb58da21ce102f072619591fe4bc6b2907f8ce569` |
| 6 | `lemma` | [continuous_starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/continuous-staralghom--9482e6327cde441fbba0c7eb.md) | 99 | `result-track:9482e6327cde441fbba0c7eb5553b5fb93346e586b984061f7c776483b8234ff` |
| 7 | `lemma` | [isClosedEmbedding_starAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/isclosedembedding-staralghom--9528c41a7954597075b5621e.md) | 105 | `result-track:9528c41a7954597075b5621e503ebf877b78d3ce211545af37ecfb1b71ecf43e` |
| 8 | `theorem` | [cfc](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/cfc--c4ffbb88418e0c7a03877466.md) | 118 | `result-track:c4ffbb88418e0c7a03877466d115c9ecd0861f87a257cdfd795d5452d3e0f54a` |
| 9 | `lemma` | [cfcHom_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/cfchom-eq-restrict--95fa6bbb5d165f28be907182.md) | 152 | `result-track:95fa6bbb5d165f28be90718236b13b3924ab0f6b8742658c45f524ad48e7bb15` |
| 10 | `lemma` | [cfc_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/cfc-eq-restrict--06d78f5a220658381ab8d506.md) | 159 | `result-track:06d78f5a220658381ab8d5064b8b9b0849cb99501a5a2a63a6dec4d9edd348eb` |
| 11 | `theorem` | [closedEmbeddingCFC](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/closedembeddingcfc--0a910e0a30466f279551ff19.md) | 185 | `result-track:0a910e0a30466f279551ff19c3a529d723c677439a838ad2c6b167e1b4afb7cf` |
| 12 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/homeomorph--dcd3209b304971ce66c305c6.md) | 205 | `declaration-track:dcd3209b304971ce66c305c6505fe4c93ec69a012839b71840fd3418516ff13c` |
| 13 | `def` | [nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/nonunitalstaralghom--72914bd917fac4cfb1e6bf2a.md) | 222 | `declaration-track:72914bd917fac4cfb1e6bf2a9aefce12021b9984db1809cd22053faa3fd760f8` |
| 14 | `lemma` | [nonUnitalStarAlgHom_id](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/nonunitalstaralghom-id--12df8813b4842e7a7dca600e.md) | 243 | `result-track:12df8813b4842e7a7dca600e832f73b509330291e2705584a54a83f0d7259b30` |
| 15 | `lemma` | [nonUnitalStarAlgHom_injective](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/nonunitalstaralghom-injective--6407711fdb3fd77c02caea93.md) | 252 | `result-track:6407711fdb3fd77c02caea93394ec02e0cbdc158d1b0db7f1f3f09ef4a16675e` |
| 16 | `lemma` | [continuous_nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/continuous-nonunitalstaralghom--d83b940146e7b2575861e951.md) | 268 | `result-track:d83b940146e7b2575861e95137dadc3902d8fe8755c862f6412c6980265df8ed` |
| 17 | `lemma` | [isClosedEmbedding_nonUnitalStarAlgHom](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/isclosedembedding-nonunitalstaralghom--91f57440d03f2dd2cb8dc282.md) | 274 | `result-track:91f57440d03f2dd2cb8dc282956d9143c1d2b74b5212538fa1aea68b3612507d` |
| 18 | `theorem` | [cfc](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/cfc--fc691a0cc166cad71f055479.md) | 290 | `result-track:fc691a0cc166cad71f055479ca0b2b7040aa20d73a6497060060262282fdcc40` |
| 19 | `lemma` | [cfcₙHom_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/cfc-hom-eq-restrict--449d07a5a35ecdda4eb8aa8c.md) | 322 | `result-track:449d07a5a35ecdda4eb8aa8c1957db753f668deb780147c6a90aee86a9a54cda` |
| 20 | `lemma` | [cfcₙ_eq_restrict](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/cfc-eq-restrict--eb804de08bcb62c46952f7df.md) | 330 | `result-track:eb804de08bcb62c46952f7df627c632a0f6e8a75d7eb5bf03f962898c44f4b83` |
| 21 | `theorem` | [nonUnitalClosedEmbeddingCFC](../../../../../mathematics/Topology/GeneralTopology/Restrict/Variant027369914d7fb943fb03a5b4357a6be7c052763dd24abfd21b0601d42ef1e61f.lean/declarations/nonunitalclosedembeddingcfc--ab758a432e0635180efc9ac8.md) | 362 | `result-track:ab758a432e0635180efc9ac8186e53552e87f8e08c6b1f38791b41ab6dda70ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
