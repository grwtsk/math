# Verification target: Cover Morphism Property Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6747f40d82e02f9e85d0bf84aae3009259a7d2e1",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6747f40d82e02f9e85d0bf84aae3009259a7d2e1`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean.json)

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
| 1 | `class` | [JointlySurjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/jointlysurjective.md) | 45 | `declaration-track:3ee05ad8711c39cb6d6fa195d881fbbd159e4a7f97c564a5804baf887fca539c` |
| 2 | `abbrev` | [Cover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover.md) | 50 | `declaration-track:410eb148110a55a52efc20e05b4cef487b40f0c3657f3bf1427c015b29dd0777` |
| 3 | `lemma` | [Cover.exists_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-exists-eq.md) | 57 | `result-track:f55eaf239f5b94deb90a014a135084e670749569d849f388f663446b7c7166a9` |
| 4 | `def` | [Cover.idx](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-idx.md) | 63 | `declaration-track:45e1ef659d93d3ec781c01032acd469c2868dc279fd29eb90a6c1bb0766e33d8` |
| 5 | `lemma` | [Cover.covers](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-covers.md) | 66 | `result-track:46723b740d2d52ddb996e838746f9a0314dc673008e8c5a22d14036dfbab4742` |
| 6 | `theorem` | [Cover.iUnion_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-iunion-range.md) | 70 | `result-track:c226d190ebd9ffac5de27b09e0215aae937c12b7c46fb6ca8709808b01964738` |
| 7 | `instance` | [Cover.nonempty_of_nonempty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-nonempty-of-nonempty.md) | 77 | `declaration-track:6570fe016008b445d6f09964573f07c2dc383cb319c0d0408a4bf513f4df2a50` |
| 8 | `lemma` | [presieve₀_mem_precoverage_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/presieve-mem-precoverage-iff.md) | 86 | `result-track:42b5120ff2c20036e32a3513773bd798566d091f7fe98f3a5f2d7fca65532d57` |
| 9 | `lemma` | [Cover.map_prop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-map-prop.md) | 91 | `result-track:e077a53b16a14a330239ab48a83f723ec9554307394b01bd56e5622245302f7b` |
| 10 | `def` | [Cover.mkOfCovers](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-mkofcovers.md) | 97 | `declaration-track:26ddf07c6eb0b14db9d448d27617703a413ad6094070862df174e32a9f7e05ac` |
| 11 | `def` | [coverOfIsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/coverofisiso.md) | 109 | `declaration-track:777da757562083be321e3a0780913abde88361edc62f0f4948127ce298eff0b4` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/instance-source-edition-2.md) | 116 | `declaration-track:8879b260aff22cfea1d243666275ef8d588c0f3203bd0759f10c97a1f096dd7f` |
| 13 | `def` | [Cover.changeProp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-changeprop.md) | 124 | `declaration-track:9389ad87278585949a15aad5838e1eaf59af7cfbf22732212377241655133a56` |
| 14 | `def` | [Cover.copy](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-copy.md) | 136 | `declaration-track:2bb07da36562dbb6bc504887643ea4ea630453728fdb37696d232ab09d937ca9` |
| 15 | `def` | [Cover.pushforwardIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-pushforwardiso.md) | 160 | `declaration-track:3f891e968476cfd31c4e806fdb697351f7eaa7b2f28f349b8cc56df649c88abb` |
| 16 | `def` | [Cover.add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-add.md) | 169 | `declaration-track:caab7001c829fcd3cc86fd4c5bcc8a7f4456006caec33e09a0b85af31df0df56` |
| 17 | `def` | [Cover.pullbackHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-pullbackhom.md) | 178 | `declaration-track:7c30e8e6a9d56235a7f042b76632560382781e978049473560db2f0d7a724fa9` |
| 18 | `lemma` | [Cover.pullbackHom_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-pullbackhom-map.md) | 184 | `result-track:4a0bb0f9d6e89f314e4fd1ef4c54222f68bee0fe315e25288af5bcd662662ba5` |
| 19 | `structure` | [AffineCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/affinecover.md) | 196 | `declaration-track:dced9f250e92649e184be0368af99ef4be2fe82fc55047a59c8482a7f2491954` |
| 20 | `def` | [AffineCover.cover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/affinecover-cover.md) | 212 | `declaration-track:fdc9aa20e16a7468535d663b7d45076cc743571cf13fd66a623b8dca989f2866` |
| 21 | `def` | [Cover.ulift](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-ulift.md) | 225 | `declaration-track:3f215c5c661e971eb9de3c41f49999dc66a751c03b1c3ea88f1fc1be6d76c06d` |
| 22 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/instance.md) | 234 | `declaration-track:2ed0198a039da1ee997c6034be6e1bac98635ca168fbeee15b9a92510c040000` |
| 23 | `abbrev` | [Cover.Hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyPublic.lean/declarations/cover-hom.md) | 245 | `declaration-track:d531bcf98347e2ae8b9c3fc14c9832eb6efe0b27ce40cae4f385db6b522dd896` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be428a5a623bee1fcad92de94d951efd0e65010e011a61b3786a9f0ab7c1b94a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/MorphismProperty/Variantce6bfcee79a6d2422facd3e771126f8d7f4f3e74521227d490514d511d991c11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
