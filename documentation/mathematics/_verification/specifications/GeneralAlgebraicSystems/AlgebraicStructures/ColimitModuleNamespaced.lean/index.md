# Verification target: Colimit Module Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a272b0ed8900b36a21a0113398b09a9005ba83c8",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Module/Variante90875ba55c20888d9ee6e09d16a7fad926b9ef0dbe4586cd9b0f21ba597846c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a272b0ed8900b36a21a0113398b09a9005ba83c8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Module/Variante90875ba55c20888d9ee6e09d16a7fad926b9ef0dbe4586cd9b0f21ba597846c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Module/Variante90875ba55c20888d9ee6e09d16a7fad926b9ef0dbe4586cd9b0f21ba597846c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Colimit.DirectLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Order` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuppressCompilation` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [DirectLimit.Eqv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/directlimit-eqv.md) | 54 | `declaration-track:c014a3320365c335b5a8deb8653abcaf0ebffc804bfade4348ffff5d012430ee` |
| 2 | `def` | [DirectLimit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/directlimit.md) | 61 | `declaration-track:2f447caa9972101109a871d2caebae0e0f80c902464a5972c25a0749b7c3294d` |
| 3 | `instance` | [addCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/addcommmonoid.md) | 67 | `declaration-track:8a7077deb987795d805b0bffe2333e5513edcc120bdd0885d044316bcd9bdafe` |
| 4 | `instance` | [module](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/module.md) | 70 | `declaration-track:d877aeba2a1f354fa3a38410783f88094a8af1ead6df2841e10396a650cc7e91` |
| 5 | `instance` | [addCommGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/addcommgroup.md) | 81 | `declaration-track:79da816de6546188f88fa34cd2b04a9f62990eb8b4309c1db6304244f8aaa518` |
| 6 | `instance` | [inhabited](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/inhabited.md) | 85 | `declaration-track:eb18e67267bc532b07910890d1e365e41c3ae0fa3d26b3ed2a74f478842e8c45` |
| 7 | `instance` | [unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/unique.md) | 88 | `declaration-track:d23931cf43a7e2340d1cafcdb8ca77a7b4666d14e821a7dc2c98272111b04409` |
| 8 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/of-source-edition-2.md) | 94 | `declaration-track:c848f9eb4a2b235947bf6cc71cb1fefd30d4b47d62e86a3d0a19fb12ebad0a2c` |
| 9 | `theorem` | [quotMk_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/quotmk-of.md) | 99 | `result-track:208760a1a1e4081c0ebfe16354175fc6855c8bfda2b84a42cb1c58a0fa56c7f4` |
| 10 | `theorem` | [of_f](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/of-f-source-edition-2.md) | 102 | `result-track:a11daeea5e161dd23f4f950b8110e981e850e28a204ca21c342e5090e1c5e863` |
| 11 | `theorem` | [exists_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/exists-of.md) | 107 | `result-track:0efac59558e80f3e83a4f58c1dd082282d725f65ef7d249665e04f5f84ab1055` |
| 12 | `theorem` | [exists_of₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/exists-of-source-edition-2.md) | 118 | `result-track:d0e0e281783b5875f5d14078796344e20e009407d1f2125a6525848bea02fd29` |
| 13 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/induction-on.md) | 126 | `result-track:410061073f8fc1882867b2ff7e2359fe1af508ba3cda699fb16ebf8cb3b1d3d8` |
| 14 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/lift-source-edition-2.md) | 137 | `declaration-track:cff30daa3e982d3e667ec3b0940913a6a2bd044f4a8829e4865c8d86db029caa` |
| 15 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/lift-of.md) | 145 | `result-track:60066831d6411b22f71525f8c2e0dd7034d9440e86ddd4dd109d9861e61a8fdd` |
| 16 | `theorem` | [lift_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/lift-unique-source-edition-2.md) | 148 | `result-track:e4ff7ecf6bdfa281860a7c56b65f9be025bf24f44367a49946b82cf2fa4bdc62` |
| 17 | `lemma` | [lift_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/lift-injective.md) | 153 | `result-track:81208a03794dac8e8be6a156a5c2801afc283af263c4ded742e3e3bb9a3beb13` |
| 18 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/map.md) | 175 | `declaration-track:3a320316f003fd3dcd4e39b98ca25f041ea1202018d8d7a7dc5466bcc6bfe65d` |
| 19 | `lemma` | [map_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/map-apply-of.md) | 182 | `result-track:877310dafbac49b1734b45a4c082c35784595e5ac2f70f1f1aa361cdce2a0ae4` |
| 20 | `lemma` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/map-id.md) | 188 | `result-track:13ebc278409d00d6d92237142f469e976615a7c882144a453b7430b96b91ab74` |
| 21 | `lemma` | [map_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/map-comp.md) | 193 | `result-track:02aabade689a35b15f29e17ea20067f561a07f3279078659665205901b768153` |
| 22 | `def` | [congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/congr-source-edition-2.md) | 212 | `declaration-track:e2ff5793155ce243c4f9258bd970c1d1c20961b6724484c28532c96a9635b9bb` |
| 23 | `lemma` | [congr_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/congr-apply-of-source-edition-2.md) | 220 | `result-track:88970cd80a357d68dde1bda0f83a40f515829f9a41ec9dec4ad058a67c616700` |
| 24 | `lemma` | [congr_symm_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/congr-symm-apply-of.md) | 226 | `result-track:becdf30d68aeb3918b5027c12d49ed1416a062b0d7c13e20ab1a3a3e09cf01fc` |
| 25 | `def` | [linearEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/linearequiv.md) | 244 | `declaration-track:64f1a8386f715ccaec3e1cfc8a9ce5119c443a9eb5ff6e24a0c778fcb2b01093` |
| 26 | `theorem` | [linearEquiv_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/linearequiv-of.md) | 251 | `result-track:48a070d94d9e3a9b47d6b94d03985c538ce15ea3efcb15bacf6cfd0586182c84` |
| 27 | `theorem` | [linearEquiv_symm_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/linearequiv-symm-mk.md) | 254 | `result-track:4feab1a42f154de15be8684a98bfcc9e1c7ecc20ae11a17e4f6e1b35262a4b13` |
| 28 | `theorem` | [exists_eq_of_of_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/exists-eq-of-of-eq.md) | 260 | `result-track:aac29872d65cfb8cee51e46b8b27badb054b4eb8c506715727590c4825b2d519` |
| 29 | `theorem` | [of.zero_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/of-zero-exact-source-edition-2.md) | 270 | `result-track:ee2ac5413a65b24f07625aca5667c442afc0d8d20757bee69acca73c70a5ba9f` |
| 30 | `def` | [DirectLimit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/directlimit-source-edition-2.md) | 284 | `declaration-track:5753a59d42999b978bb0a0df77a007ced06ae79cc8b03e8f598300deaa3995e1` |
| 31 | `instance` | [directedSystem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/directedsystem.md) | 291 | `declaration-track:1420b00bbfb10f3abfcedaaf03736c23387b10f4ff0b97aacf8a94c853a5b555` |
| 32 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/instance-source-edition-2.md) | 297 | `declaration-track:9c10cf231233742ec924a460f095e68b77e34e72e9442f72369c3222078ab38a` |
| 33 | `instance` | [addCommGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/addcommgroup-source-edition-2.md) | 300 | `declaration-track:a0a4a4a2a713904087ba71091c8504898dc3f65b09f37fe9bdaeccfd5d21c70d` |
| 34 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/instance.md) | 304 | `declaration-track:5a8e75acaa3ecf6876591f0a63667c164197a8dd7d80a6183f587a24ff481f3b` |
| 35 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/instance-source-edition-3.md) | 307 | `declaration-track:ff1cbcd081ee3163b0360774c479094b7286799a436bc584fc3b9c881209a8aa` |
| 36 | `def` | [of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/of.md) | 310 | `declaration-track:8d7a022fae258ede8cd51af307e155fc2220ae53dde81b518cd730849942ac2d` |
| 37 | `theorem` | [of_f](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/of-f.md) | 316 | `result-track:51bc98918e4e2495a60ba8cdbfdfa00c128200502a36814c0d0a892c63cc42f7` |
| 38 | `theorem` | [induction_on](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/induction-on-source-edition-2.md) | 320 | `result-track:9e9b1c5ca80428fbac0d43ce6bd02a49e619c6da872caa8dd412633e088848d9` |
| 39 | `theorem` | [of.zero_exact](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/of-zero-exact.md) | 326 | `result-track:afceedfb07827c6daaacd0356193d854f56fc8f94698412b3e5b02d0abec98fa` |
| 40 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/lift.md) | 338 | `declaration-track:85d9eb180cbf7c7fae677549cd57693252a981ac783d683aa143b1e016f91beb` |
| 41 | `theorem` | [lift_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/lift-of-source-edition-2.md) | 345 | `result-track:62c77a1f235fd853258f8301f8dce55f370eb67bf0647fb640b32ae7c7f744a7` |
| 42 | `theorem` | [lift_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/lift-unique.md) | 353 | `result-track:bace097392ed0f37f7605228fbfc8ed3930b79cd508b3cdbaeb9b9caceeb3141` |
| 43 | `lemma` | [lift_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/lift-injective-source-edition-2.md) | 358 | `result-track:e8bc500be7e449f1301ba36bb5afb3bbf5242361c317d0b2362c141ad9e8eb8a` |
| 44 | `def` | [map](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/map-source-edition-2.md) | 375 | `declaration-track:5fa211efa64a51eccfac73391485353cb49a10a61703b806dfdedc68614292b1` |
| 45 | `lemma` | [map_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/map-apply-of-source-edition-2.md) | 383 | `result-track:b9975ff80e297525fa68b69cad11859dda947c58d151fd2084c55a79282a57e4` |
| 46 | `lemma` | [map_id](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/map-id-source-edition-2.md) | 389 | `result-track:aa5e95841029bdc96194f99fe10ab66bac838e0b68f3a5405a9ad2d62d8728b0` |
| 47 | `lemma` | [map_comp](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/map-comp-source-edition-2.md) | 394 | `result-track:6a7a2d21a9ade5a17039f1c68fe06caabe3c722f9dee19a5653c9b7d178aaf04` |
| 48 | `def` | [congr](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/congr.md) | 413 | `declaration-track:c3a9956e917f1d8826641a833dd6b41ca35159c50be6e62179415d73647ded5f` |
| 49 | `lemma` | [congr_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/congr-apply-of.md) | 424 | `result-track:4eb4cb9cdfb3a2683772643fd3138fc4d3116777a2791af42b5e9362322f0c7b` |
| 50 | `lemma` | [congr_symm_apply_of](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ColimitModuleNamespaced.lean/declarations/congr-symm-apply-of-source-edition-2.md) | 430 | `result-track:c5494907d4bd1868e4461931e5f7b43f3cd6068838396b70a956d869727cdee4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59025f0134d2302a71d7c2d1a2588ece3e594fd8b4f6ba0469ac8c86723626ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Module/Variante90875ba55c20888d9ee6e09d16a7fad926b9ef0dbe4586cd9b0f21ba597846c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Module/Variante90875ba55c20888d9ee6e09d16a7fad926b9ef0dbe4586cd9b0f21ba597846c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
