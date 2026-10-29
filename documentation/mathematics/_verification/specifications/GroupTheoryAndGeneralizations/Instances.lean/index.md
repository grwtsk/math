# Verification target: Instances

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f674bd0902a2c57789b9076f71b2eaebf607aa8",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Instances/Variant35e6c1fff9bf1f7442424d8d16c3dd0b31916f0589cdf9f9bb751aaeb92bb8ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Instances.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Instances.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f674bd0902a2c57789b9076f71b2eaebf607aa8`.

Source path: `GRWTSK/Algebra/GroupTheory/Instances/Variant35e6c1fff9bf1f7442424d8d16c3dd0b31916f0589cdf9f9bb751aaeb92bb8ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Instances/Variant35e6c1fff9bf1f7442424d8d16c3dd0b31916f0589cdf9f9bb751aaeb92bb8ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [MonoidHom.instCommMonoid](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/monoidhom-instcommmonoid.md) | 30 | `declaration-track:0e4f916adffebb7375ee6527073dd81ed2a91a03b00e1c32087820876938a2a7` |
| 2 | `instance` | [MonoidHom.instCommGroup](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/monoidhom-instcommgroup.md) | 50 | `declaration-track:fa94ec57a1d6e7795acfb1bda78b138217f3f4c4905263443a3861c1c99d96ef` |
| 3 | `instance` | [AddMonoid.End.instAddCommMonoid](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/addmonoid-end-instaddcommmonoid.md) | 73 | `declaration-track:a3283f0303d28bb20558c2a3848e632f8551f7288619f83b0be094ffc040c305` |
| 4 | `theorem` | [AddMonoid.End.zero_apply](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/addmonoid-end-zero-apply.md) | 77 | `result-track:8b9615bd1196b82685e3b259da97e7895de34e889ff8b1615e9687da7dcf0c6e` |
| 5 | `theorem` | [AddMonoid.End.one_apply](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/addmonoid-end-one-apply.md) | 81 | `result-track:29e150c45840ca1f4bb8a0602bbdc8d0f0ca218404da17a2f31b8fa07c220c1d` |
| 6 | `instance` | [AddMonoid.End.instAddCommGroup](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/addmonoid-end-instaddcommgroup.md) | 84 | `declaration-track:a35247dd6a3d623840e1c720e49f7708f2774eb5c06283fbdb5dc2f004b22912` |
| 7 | `instance` | [AddMonoid.End.instIntCast](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/addmonoid-end-instintcast.md) | 87 | `declaration-track:148bd0c845e5b55e18b52fb9eba64d3be91e2d4d004ffb104026909cbdc92d3c` |
| 8 | `theorem` | [AddMonoid.End.intCast_apply](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/addmonoid-end-intcast-apply.md) | 92 | `result-track:1cf35288fc09610c20b20ec1c3a77c9437fb6da65f8d73e98ada6f2214f483cf` |
| 9 | `lemma` | [MonoidHom.pow_apply](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/monoidhom-pow-apply.md) | 96 | `result-track:099e797179e7a53f5320d51c3ef2214a053c0f90ad00f4897cd7106f035466a9` |
| 10 | `theorem` | [ext_iff₂](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/ext-iff.md) | 112 | `result-track:cdd2296e5d2885f0cf76a209e88e4b231e041f715ab38b8ce76bca6a045a7648` |
| 11 | `def` | [flip](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/flip.md) | 118 | `declaration-track:a452e68958fc6ba1e842b6d0551b564a0059f2a5b527e1f5e7370f32e8ca0904` |
| 12 | `theorem` | [flip_apply](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/flip-apply.md) | 128 | `result-track:fe2df8f35728eb6e8393e5e2db24093d7bc886c7ec92f5380fdf541575645288` |
| 13 | `theorem` | [map_one₂](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/map-one.md) | 133 | `result-track:b7ca86b398e0ad803ee0ea28a72c794e4fb5e2fe75908942bae4203af762eb0a` |
| 14 | `theorem` | [map_mul₂](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/map-mul.md) | 138 | `result-track:836982f55dcd5f69402a687e74e532f688c8dc50ad4e024ded4da286a0ddaddd` |
| 15 | `theorem` | [map_inv₂](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/map-inv.md) | 143 | `result-track:185657525e9d669f2d3e4337a1cc47f59ec28459a78b035c2313b8b223ff303d` |
| 16 | `theorem` | [map_div₂](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/map-div.md) | 148 | `result-track:c053a1936dc59388c233071a8d799d5bf13fa55bf55dd5a775df6fb80911b64f` |
| 17 | `def` | [eval](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/eval.md) | 157 | `declaration-track:aae9279ff1bd9471ec8bcc2767d94a7b04d9ee817ee338851be6c8d518e63b14` |
| 18 | `def` | [compHom'](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/comphom.md) | 167 | `declaration-track:a265445bdb37255880adc37e26114c95875c7af80e0e4ec2b4611a08bab718fd` |
| 19 | `def` | [compHom](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/comphom-source-edition-2.md) | 180 | `declaration-track:bcbe700137b7ce361be8aee496c37d0c90edc1e7de80ecb0b76e6f80b9d89fff` |
| 20 | `def` | [flipHom](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/fliphom.md) | 194 | `declaration-track:df31af678d9753ae2608e7b4c6360b467f602f6f756d4a8e1dfe954de446f022` |
| 21 | `def` | [compl₂](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/compl.md) | 209 | `declaration-track:0d55341f6cb5aaf0cabf9f0c2455fa2e416bc17e3bd910fee3b3333543fd2d1c` |
| 22 | `theorem` | [compl₂_apply](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/compl-apply.md) | 214 | `result-track:2baa9ddbfef2561aab86deba08ff31ff320408d3ce44b6a1391fe2d23f0eb35f` |
| 23 | `def` | [compr₂](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/compr.md) | 223 | `declaration-track:53958ecc2f48e0b51dad6a83d293e93fe3037d41c08649e6c10b315b2463b6d4` |
| 24 | `theorem` | [compr₂_apply](../../../../GroupTheoryAndGeneralizations/Instances.lean/declarations/compr-apply.md) | 228 | `result-track:1d5e21157e057d9833db7c029268b9e1cce8be941200318048fbb9c1fe59e280` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83d9cee28ad04eaf2f006a46cf21c8a6f8cbcd507c9f1e6434f1485a17aa040a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Instances/Variant35e6c1fff9bf1f7442424d8d16c3dd0b31916f0589cdf9f9bb751aaeb92bb8ca.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Instances/Variant35e6c1fff9bf1f7442424d8d16c3dd0b31916f0589cdf9f9bb751aaeb92bb8ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
