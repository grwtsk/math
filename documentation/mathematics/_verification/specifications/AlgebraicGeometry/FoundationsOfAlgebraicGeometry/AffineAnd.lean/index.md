# Verification target: Affine And

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d02f353760d42938ab9c1881c571d6c52e0cd42",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d02f353760d42938ab9c1881c571d6c52e0cd42`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Affine` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [affineAnd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/affineand.md) | 37 | `declaration-track:be821d33055bcf4ba26c8c4777735cd6c3e9f6fb7d6678dad93aaa7ce67fac54` |
| 2 | `lemma` | [affineAnd_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/affineand-apply.md) | 41 | `result-track:65f6ef31d095443759b2c007398f9e7ae5f386a1c9bb90010358c065986308d0` |
| 3 | `lemma` | [affineAnd_respectsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/affineand-respectsiso.md) | 50 | `result-track:5d47d98efb9efc73c013227dd0b00f1977b651068adaa0bb90d948aad84b2539` |
| 4 | `lemma` | [affineAnd_isLocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/affineand-islocal.md) | 59 | `result-track:bd79a9682f2f0aabd407abaa7c3b88542d09cfe3692e77d2538f0511dc5525c4` |
| 5 | `lemma` | [affineAnd_isLocal_of_propertyIsLocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/affineand-islocal-of-propertyislocal.md) | 99 | `result-track:7433fbb50a7966ab0fecbd88c768101927b1a5aa37ed38ebcd09d040d93719c1` |
| 6 | `lemma` | [affineAnd_isStableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/affineand-isstableunderbasechange.md) | 104 | `result-track:2539dfbe4aeb92500f119ba788e6da0756e42642bdad07fedac58700b9ef3895` |
| 7 | `lemma` | [targetAffineLocally_affineAnd_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/targetaffinelocally-affineand-iff.md) | 112 | `result-track:0687fe6cd66c36df34166b2df43831af92e58365da77307bf8726a11b39dee06` |
| 8 | `lemma` | [targetAffineLocally_affineAnd_iff'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/targetaffinelocally-affineand-iff-source-edition-2.md) | 129 | `result-track:72dd8299ce6e94f50776dbe28493cfbfd8943ebc935104c4cdc03420682312f2` |
| 9 | `lemma` | [targetAffineLocally_affineAnd_iff_affineLocally](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/targetaffinelocally-affineand-iff-affinelocally.md) | 136 | `result-track:f7f87b5b07c90d1575b838343a8f6c4d74e7068a021cda63dfd4d4d8abbb4c11` |
| 10 | `lemma` | [targetAffineLocally_affineAnd_eq_affineLocally](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/targetaffinelocally-affineand-eq-affinelocally.md) | 164 | `result-track:efcb4d3e96587b0bd01c78783bf5a469e3686ad518400c18321a52dde1735bb9` |
| 11 | `lemma` | [targetAffineLocally_affineAnd_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/targetaffinelocally-affineand-le.md) | 172 | `result-track:281e23aa319a539e0c4a32078b314ab6f0f32d9433cad824468337a2419e5e27` |
| 12 | `lemma` | [HasAffineProperty.affineAnd_isStableUnderComposition](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/hasaffineproperty-affineand-isstableundercomposition.md) | 186 | `result-track:a3e7c954ac428e7379abcfbc9acb8e90610101c23e63ad004395e999d1e3e721` |
| 13 | `lemma` | [HasAffineProperty.affineAnd_isStableUnderBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/hasaffineproperty-affineand-isstableunderbasechange.md) | 205 | `result-track:2bfdd9a3e09dff5271419a5c27a6802e98c1b33e636e28eb9de1bb66b78ad436` |
| 14 | `lemma` | [HasAffineProperty.affineAnd_containsIdentities](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/hasaffineproperty-affineand-containsidentities.md) | 214 | `result-track:f0872ba7b629109621507af52dfcb289d1c8078ca94302d7f7a934e4278c4f70` |
| 15 | `lemma` | [HasAffineProperty.affineAnd_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/hasaffineproperty-affineand-iff.md) | 225 | `result-track:85cc84c7e1fa7d68ad92a011cab132ef01ad3ccc50a68ef93465b800bd409f87` |
| 16 | `lemma` | [HasAffineProperty.affineAnd_le_isAffineHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/hasaffineproperty-affineand-le-isaffinehom.md) | 239 | `result-track:637d8341a023bbc8950e3f9a298f522f812eeda04f5fe78f9564420d009f5136` |
| 17 | `lemma` | [HasAffineProperty.affineAnd_eq_of_propertyIsLocal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/hasaffineproperty-affineand-eq-of-propertyislocal.md) | 250 | `result-track:a041f66638ae38ec8d6b60dd2502082608da8197c32b849e94575c3b55e24e33` |
| 18 | `lemma` | [HasAffineProperty.affineAnd_le_affineAnd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/AffineAnd.lean/declarations/hasaffineproperty-affineand-le-affineand.md) | 260 | `result-track:4ec9d2cd2915e5006a4c5d6f576be72a73c18005dea0d7bb04e95b9b559682e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6ee33c80cddb3cb1615c5cfdaf48b4549c6b8a40dc4c081cdf89a72607d6c4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/AffineAnd/Variant5696e10c573868995b7e9cbf963f5df50efe149df2c80c467ff9644fb3858657.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
